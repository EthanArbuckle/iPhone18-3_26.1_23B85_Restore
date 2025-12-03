@interface VMUClassPatternMatcher
- (BOOL)_matchesClassInfo:(id)info;
- (BOOL)_parseMallocSizePattern:(id)pattern error:(id *)error;
- (BOOL)_regex:(id *)_regex matchesName:(id)name;
- (BOOL)matchesNodeDetails:(id)details orNodeDescription:(id)description;
- (VMUClassPatternMatcher)initWithPattern:(id)pattern forArgument:(id)argument error:(id *)error;
- (void)dealloc;
- (void)setMatchingKindOfClass:(BOOL)class;
@end

@implementation VMUClassPatternMatcher

- (void)setMatchingKindOfClass:(BOOL)class
{
  if (self->_matchingKindOfClass != class)
  {
    self->_matchingKindOfClass = class;
    memoizedRegexResult = self->_memoizedRegexResult;
    if (memoizedRegexResult)
    {
      CFDictionaryRemoveAllValues(memoizedRegexResult);
    }
  }
}

- (VMUClassPatternMatcher)initWithPattern:(id)pattern forArgument:(id)argument error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  patternCopy = pattern;
  argumentCopy = argument;
  if (patternCopy)
  {
    v50.receiver = self;
    v50.super_class = VMUClassPatternMatcher;
    self = [(VMUClassPatternMatcher *)&v50 init];
    if (self)
    {
      if (!argumentCopy)
      {
        argumentCopy = &stru_1F461F9C8;
      }

      letterCharacterSet = [MEMORY[0x1E696AD48] letterCharacterSet];
      objc_msgSend(letterCharacterSet, "addCharactersInString:", @"_.([@");
      if ([(__CFString *)patternCopy rangeOfCharacterFromSet:letterCharacterSet])
      {
        if (!error)
        {
LABEL_9:

          selfCopy = 0;
LABEL_24:

          goto LABEL_25;
        }

        VMUOptionParserError(-1, @"error in %@ <classes> pattern '%@' - cannot match the start of a class name", v11, v12, v13, v14, v15, v16, argumentCopy);
        *error = LABEL_8:;
        goto LABEL_9;
      }

      if ([(__CFString *)patternCopy hasSuffix:@"]"])
      {
        v18 = [(__CFString *)patternCopy rangeOfString:@"[" options:4];
        if (!v25)
        {
          if (!error)
          {
            goto LABEL_9;
          }

          VMUOptionParserError(-1, @"error in %@ <classes> pattern '%@' - no starting bracket [: %s", v19, v20, v21, v22, v23, v24, argumentCopy);
          goto LABEL_8;
        }

        v26 = v18;
        v27 = [(__CFString *)patternCopy substringFromIndex:v18];
        v28 = [(__CFString *)patternCopy substringToIndex:v26];

        v29 = [(VMUClassPatternMatcher *)self _parseMallocSizePattern:v27 error:error];
        v30 = v29;
        if (!v26 && v29)
        {

          v28 = @".*";
        }

        patternCopy = v28;
        if (!v30)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v28 = patternCopy;
      }

      if (([(__CFString *)v28 isEqualToString:@"malloc"]& 1) != 0 || [(__CFString *)v28 isEqualToString:@"non-object"])
      {
        self->_patternMatchesNonObjects = 1;
      }

      else
      {
        v33 = malloc_type_malloc(0x20uLL, 0x10700404B019E81uLL);
        self->_classesRegex = v33;
        v34 = regcomp(v33, [(__CFString *)v28 UTF8String], 1);
        if (v34)
        {
          if (error)
          {
            regerror(v34, self->_classesRegex, v51, 0x800uLL);
            *error = VMUOptionParserError(-1, @"error in %@ <classes> pattern '%@': %s", v38, v39, v40, v41, v42, v43, argumentCopy);
          }

          patternCopy = v28;
          goto LABEL_9;
        }

        self->_vmRegionsRegex = malloc_type_malloc(0x20uLL, 0x10700404B019E81uLL);
        patternCopy = v28;
        patternCopy = patternCopy;
        if (([(__CFString *)patternCopy hasPrefix:@"VM:"]& 1) == 0)
        {
          patternCopy = patternCopy;
          if (([(__CFString *)patternCopy hasPrefix:@"Region"]& 1) == 0)
          {
            patternCopy = patternCopy;
            if (([(__CFString *)patternCopy hasPrefix:@"Thread"]& 1) == 0)
            {
              patternCopy = patternCopy;
              if (([(__CFString *)patternCopy hasPrefix:@".*"]& 1) == 0)
              {
                patternCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@".*%@", patternCopy];
              }
            }
          }
        }

        if (([patternCopy hasSuffix:@".*"] & 1) == 0)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.*", patternCopy];

          patternCopy = v36;
        }

        v37 = regcomp(self->_vmRegionsRegex, [patternCopy UTF8String], 1);
        if (v37)
        {
          if (error)
          {
            regerror(v37, self->_vmRegionsRegex, v51, 0x800uLL);
            *error = VMUOptionParserError(-1, @"error in % <region-description> pattern '%@': %s", v44, v45, v46, v47, v48, v49, argumentCopy);
          }

          goto LABEL_9;
        }

        self->_memoizedRegexResult = CFDictionaryCreateMutable(0, 0, 0, 0);
      }

      patternCopy = v28;
    }

    selfCopy = self;
    goto LABEL_24;
  }

  selfCopy = 0;
LABEL_25:

  v31 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)dealloc
{
  classesRegex = self->_classesRegex;
  if (classesRegex)
  {
    MEMORY[0x1C695F520](classesRegex, a2);
  }

  vmRegionsRegex = self->_vmRegionsRegex;
  if (vmRegionsRegex)
  {
    MEMORY[0x1C695F520](vmRegionsRegex, a2);
  }

  memoizedRegexResult = self->_memoizedRegexResult;
  if (memoizedRegexResult)
  {
    CFRelease(memoizedRegexResult);
  }

  v6.receiver = self;
  v6.super_class = VMUClassPatternMatcher;
  [(VMUClassPatternMatcher *)&v6 dealloc];
}

- (BOOL)_parseMallocSizePattern:(id)pattern error:(id *)error
{
  patternCopy = pattern;
  v13 = VMUOptionParserError(-1, @"malloc size pattern '%@' was not of expected format '[size]' or '[lowerSizeBound-upperSizeBound]'", v7, v8, v9, v10, v11, v12, patternCopy);
  uTF8String = [patternCopy UTF8String];
  __endptr = uTF8String;
  if (*uTF8String != 91)
  {
    v25 = v13;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_20;
  }

  v23 = uTF8String[1];
  v21 = uTF8String + 1;
  LOBYTE(v22) = v23;
  __endptr = v21;
  v24 = (v23 - 48) < 0xA;
  if ((v23 - 48) > 9)
  {
    v22 = v22;
  }

  else
  {
    self->_allocationSizeLowerBound = _parseAllocationSizeBound(&__endptr);
    v21 = __endptr;
    v22 = *__endptr;
  }

  if (v22 == 45)
  {
    v28 = v21[1];
    __endptr = v21 + 1;
    if ((v28 - 48) > 9)
    {
      v27 = 0;
      v25 = 0;
      self->_allocationSizeUpperBound = -1;
      goto LABEL_14;
    }

    v29 = _parseAllocationSizeBound(&__endptr);
    self->_allocationSizeUpperBound = v29;
    if (v29 > 0xF)
    {
      if (v29 >= self->_allocationSizeLowerBound)
      {
        v25 = 0;
        goto LABEL_19;
      }

      allocationSizeLowerBound = self->_allocationSizeLowerBound;
      VMUOptionParserError(-1, @"error in malloc size pattern '%@': lower bound of size (%llu) should be <= upper bound of size (%llu)", v15, v16, v17, v18, v19, v20, patternCopy);
    }

    else
    {
      VMUOptionParserError(-1, @"error in malloc size pattern '%@':  if upper bound of size is given, it must be %llu or more", v15, v16, v17, v18, v19, v20, patternCopy);
    }
    v25 = ;
LABEL_19:
    v26 = 1;
    v27 = 1;
    goto LABEL_20;
  }

  if (v22 == 43)
  {
    v27 = 0;
    v25 = 0;
    self->_allocationSizeUpperBound = -1;
    __endptr = v21 + 1;
LABEL_14:
    v26 = 1;
    goto LABEL_20;
  }

  v26 = 0;
  v27 = 0;
  v25 = 0;
  self->_allocationSizeUpperBound = self->_allocationSizeLowerBound;
LABEL_20:
  if (*__endptr != 93 || __endptr[1])
  {
    v30 = v13;

    v25 = v30;
  }

  if (((v24 | v27) & 1) == 0)
  {
    v32 = v13;
LABEL_31:
    v33 = v32;

    v25 = v33;
    goto LABEL_32;
  }

  if ((v26 & 1) == 0)
  {
    v31 = self->_allocationSizeLowerBound;
    if (v31 <= 0xF)
    {
      VMUOptionParserError(-1, @"error in malloc size pattern '%@':  size must be %llu or more", v15, v16, v17, v18, v19, v20, patternCopy);
      v32 = LABEL_30:;
      goto LABEL_31;
    }

    if ((v31 & 0xF) != 0)
    {
      VMUOptionParserError(-1, @"error in malloc size pattern '%@':  size must be a multiple of %llu, or a range like '[lowerSizeBound-upperSizeBound]'", v15, v16, v17, v18, v19, v20, patternCopy);
      goto LABEL_30;
    }
  }

LABEL_32:
  if (error && v25)
  {
    v34 = v25;
    *error = v25;
  }

  return v25 == 0;
}

- (BOOL)_regex:(id *)_regex matchesName:(id)name
{
  if (!_regex)
  {
    return 0;
  }

  v9.rm_so = 0;
  v9.rm_eo = 0;
  uTF8String = [name UTF8String];
  v6 = regexec(_regex, uTF8String, 1uLL, &v9, 0);
  v7 = v6;
  if (v6 >= 2)
  {
    [VMUClassPatternMatcher _regex:v6 matchesName:_regex];
    return 0;
  }

  else
  {
    result = 0;
    if (!v7 && !v9.rm_so)
    {
      return v9.rm_eo == strlen(uTF8String);
    }
  }

  return result;
}

- (BOOL)_matchesClassInfo:(id)info
{
  infoCopy = info;
  if (infoCopy && (memoizedRegexResult = self->_memoizedRegexResult) != 0)
  {
    value = 0;
    if (!CFDictionaryGetValueIfPresent(memoizedRegexResult, infoCopy, &value))
    {
      classesRegex = self->_classesRegex;
      className = [infoCopy className];
      LOBYTE(classesRegex) = [(VMUClassPatternMatcher *)self _regex:classesRegex matchesName:className];

      if (classesRegex)
      {
        goto LABEL_5;
      }

      className2 = [infoCopy className];
      displayName = [infoCopy displayName];
      v12 = [className2 isEqualToString:displayName];

      if ((v12 & 1) == 0)
      {
        v13 = self->_classesRegex;
        displayName2 = [infoCopy displayName];
        LOBYTE(v13) = [(VMUClassPatternMatcher *)self _regex:v13 matchesName:displayName2];

        if (v13)
        {
          goto LABEL_5;
        }
      }

      if (self->_matchingKindOfClass && ([infoCopy superclassInfo], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[VMUClassPatternMatcher _matchesClassInfo:](self, "_matchesClassInfo:", v15), v15, v16))
      {
LABEL_5:
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      value = v8;
      CFDictionarySetValue(self->_memoizedRegexResult, infoCopy, v8);
    }

    v9 = value != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)matchesNodeDetails:(id)details orNodeDescription:(id)description
{
  descriptionCopy = description;
  if (matchesNodeDetails_orNodeDescription__onceToken != -1)
  {
    [VMUClassPatternMatcher matchesNodeDetails:orNodeDescription:];
  }

  if (*(details.var0 + 8) >> 60 == 1)
  {
    v7 = *(details.var0 + 16);
    if (v7)
    {
      goto LABEL_7;
    }

    if (!self->_patternMatchesNonObjects)
    {
      v7 = matchesNodeDetails_orNodeDescription__mallocClassInfo;
LABEL_7:
      if (![(VMUClassPatternMatcher *)self _matchesClassInfo:v7])
      {
        goto LABEL_15;
      }
    }
  }

  else if (!descriptionCopy || ![(VMUClassPatternMatcher *)self _regex:self->_vmRegionsRegex matchesName:descriptionCopy])
  {
    goto LABEL_15;
  }

  allocationSizeLowerBound = self->_allocationSizeLowerBound;
  if (!allocationSizeLowerBound && !self->_allocationSizeUpperBound || (v9 = *(details.var0 + 8) & 0xFFFFFFFFFFFFFFFLL, allocationSizeLowerBound <= v9) && v9 <= self->_allocationSizeUpperBound)
  {
    v10 = 1;
    goto LABEL_16;
  }

LABEL_15:
  v10 = 0;
LABEL_16:

  return v10;
}

void __63__VMUClassPatternMatcher_matchesNodeDetails_orNodeDescription___block_invoke()
{
  v0 = [VMUClassInfo classInfoWithClassName:@"malloc" binaryPath:&stru_1F461F9C8 type:16];
  v1 = matchesNodeDetails_orNodeDescription__mallocClassInfo;
  matchesNodeDetails_orNodeDescription__mallocClassInfo = v0;
}

- (void)_regex:(int)a1 matchesName:(const regex_t *)a2 .cold.1(int a1, const regex_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  regerror(a1, a2, v3, 0x800uLL);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v5 = v3;
    _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s\n", buf, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end