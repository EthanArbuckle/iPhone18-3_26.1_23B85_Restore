@interface VMUClassPatternMatcher
- (BOOL)_matchesClassInfo:(id)a3;
- (BOOL)_parseMallocSizePattern:(id)a3 error:(id *)a4;
- (BOOL)_regex:(id *)a3 matchesName:(id)a4;
- (BOOL)matchesNodeDetails:(id)a3 orNodeDescription:(id)a4;
- (VMUClassPatternMatcher)initWithPattern:(id)a3 forArgument:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)setMatchingKindOfClass:(BOOL)a3;
@end

@implementation VMUClassPatternMatcher

- (void)setMatchingKindOfClass:(BOOL)a3
{
  if (self->_matchingKindOfClass != a3)
  {
    self->_matchingKindOfClass = a3;
    memoizedRegexResult = self->_memoizedRegexResult;
    if (memoizedRegexResult)
    {
      CFDictionaryRemoveAllValues(memoizedRegexResult);
    }
  }
}

- (VMUClassPatternMatcher)initWithPattern:(id)a3 forArgument:(id)a4 error:(id *)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v50.receiver = self;
    v50.super_class = VMUClassPatternMatcher;
    self = [(VMUClassPatternMatcher *)&v50 init];
    if (self)
    {
      if (!v9)
      {
        v9 = &stru_1F461F9C8;
      }

      v10 = [MEMORY[0x1E696AD48] letterCharacterSet];
      objc_msgSend(v10, "addCharactersInString:", @"_.([@");
      if ([(__CFString *)v8 rangeOfCharacterFromSet:v10])
      {
        if (!a5)
        {
LABEL_9:

          v17 = 0;
LABEL_24:

          goto LABEL_25;
        }

        VMUOptionParserError(-1, @"error in %@ <classes> pattern '%@' - cannot match the start of a class name", v11, v12, v13, v14, v15, v16, v9);
        *a5 = LABEL_8:;
        goto LABEL_9;
      }

      if ([(__CFString *)v8 hasSuffix:@"]"])
      {
        v18 = [(__CFString *)v8 rangeOfString:@"[" options:4];
        if (!v25)
        {
          if (!a5)
          {
            goto LABEL_9;
          }

          VMUOptionParserError(-1, @"error in %@ <classes> pattern '%@' - no starting bracket [: %s", v19, v20, v21, v22, v23, v24, v9);
          goto LABEL_8;
        }

        v26 = v18;
        v27 = [(__CFString *)v8 substringFromIndex:v18];
        v28 = [(__CFString *)v8 substringToIndex:v26];

        v29 = [(VMUClassPatternMatcher *)self _parseMallocSizePattern:v27 error:a5];
        v30 = v29;
        if (!v26 && v29)
        {

          v28 = @".*";
        }

        v8 = v28;
        if (!v30)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v28 = v8;
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
          if (a5)
          {
            regerror(v34, self->_classesRegex, v51, 0x800uLL);
            *a5 = VMUOptionParserError(-1, @"error in %@ <classes> pattern '%@': %s", v38, v39, v40, v41, v42, v43, v9);
          }

          v8 = v28;
          goto LABEL_9;
        }

        self->_vmRegionsRegex = malloc_type_malloc(0x20uLL, 0x10700404B019E81uLL);
        v8 = v28;
        v35 = v8;
        if (([(__CFString *)v8 hasPrefix:@"VM:"]& 1) == 0)
        {
          v35 = v8;
          if (([(__CFString *)v8 hasPrefix:@"Region"]& 1) == 0)
          {
            v35 = v8;
            if (([(__CFString *)v8 hasPrefix:@"Thread"]& 1) == 0)
            {
              v35 = v8;
              if (([(__CFString *)v8 hasPrefix:@".*"]& 1) == 0)
              {
                v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@".*%@", v8];
              }
            }
          }
        }

        if (([v35 hasSuffix:@".*"] & 1) == 0)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.*", v35];

          v35 = v36;
        }

        v37 = regcomp(self->_vmRegionsRegex, [v35 UTF8String], 1);
        if (v37)
        {
          if (a5)
          {
            regerror(v37, self->_vmRegionsRegex, v51, 0x800uLL);
            *a5 = VMUOptionParserError(-1, @"error in % <region-description> pattern '%@': %s", v44, v45, v46, v47, v48, v49, v9);
          }

          goto LABEL_9;
        }

        self->_memoizedRegexResult = CFDictionaryCreateMutable(0, 0, 0, 0);
      }

      v8 = v28;
    }

    v17 = self;
    goto LABEL_24;
  }

  v17 = 0;
LABEL_25:

  v31 = *MEMORY[0x1E69E9840];
  return v17;
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

- (BOOL)_parseMallocSizePattern:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = VMUOptionParserError(-1, @"malloc size pattern '%@' was not of expected format '[size]' or '[lowerSizeBound-upperSizeBound]'", v7, v8, v9, v10, v11, v12, v6);
  v14 = [v6 UTF8String];
  __endptr = v14;
  if (*v14 != 91)
  {
    v25 = v13;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_20;
  }

  v23 = v14[1];
  v21 = v14 + 1;
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
      VMUOptionParserError(-1, @"error in malloc size pattern '%@': lower bound of size (%llu) should be <= upper bound of size (%llu)", v15, v16, v17, v18, v19, v20, v6);
    }

    else
    {
      VMUOptionParserError(-1, @"error in malloc size pattern '%@':  if upper bound of size is given, it must be %llu or more", v15, v16, v17, v18, v19, v20, v6);
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
      VMUOptionParserError(-1, @"error in malloc size pattern '%@':  size must be %llu or more", v15, v16, v17, v18, v19, v20, v6);
      v32 = LABEL_30:;
      goto LABEL_31;
    }

    if ((v31 & 0xF) != 0)
    {
      VMUOptionParserError(-1, @"error in malloc size pattern '%@':  size must be a multiple of %llu, or a range like '[lowerSizeBound-upperSizeBound]'", v15, v16, v17, v18, v19, v20, v6);
      goto LABEL_30;
    }
  }

LABEL_32:
  if (a4 && v25)
  {
    v34 = v25;
    *a4 = v25;
  }

  return v25 == 0;
}

- (BOOL)_regex:(id *)a3 matchesName:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v9.rm_so = 0;
  v9.rm_eo = 0;
  v5 = [a4 UTF8String];
  v6 = regexec(a3, v5, 1uLL, &v9, 0);
  v7 = v6;
  if (v6 >= 2)
  {
    [VMUClassPatternMatcher _regex:v6 matchesName:a3];
    return 0;
  }

  else
  {
    result = 0;
    if (!v7 && !v9.rm_so)
    {
      return v9.rm_eo == strlen(v5);
    }
  }

  return result;
}

- (BOOL)_matchesClassInfo:(id)a3
{
  v4 = a3;
  if (v4 && (memoizedRegexResult = self->_memoizedRegexResult) != 0)
  {
    value = 0;
    if (!CFDictionaryGetValueIfPresent(memoizedRegexResult, v4, &value))
    {
      classesRegex = self->_classesRegex;
      v7 = [v4 className];
      LOBYTE(classesRegex) = [(VMUClassPatternMatcher *)self _regex:classesRegex matchesName:v7];

      if (classesRegex)
      {
        goto LABEL_5;
      }

      v10 = [v4 className];
      v11 = [v4 displayName];
      v12 = [v10 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        v13 = self->_classesRegex;
        v14 = [v4 displayName];
        LOBYTE(v13) = [(VMUClassPatternMatcher *)self _regex:v13 matchesName:v14];

        if (v13)
        {
          goto LABEL_5;
        }
      }

      if (self->_matchingKindOfClass && ([v4 superclassInfo], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[VMUClassPatternMatcher _matchesClassInfo:](self, "_matchesClassInfo:", v15), v15, v16))
      {
LABEL_5:
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      value = v8;
      CFDictionarySetValue(self->_memoizedRegexResult, v4, v8);
    }

    v9 = value != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)matchesNodeDetails:(id)a3 orNodeDescription:(id)a4
{
  v6 = a4;
  if (matchesNodeDetails_orNodeDescription__onceToken != -1)
  {
    [VMUClassPatternMatcher matchesNodeDetails:orNodeDescription:];
  }

  if (*(a3.var0 + 8) >> 60 == 1)
  {
    v7 = *(a3.var0 + 16);
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

  else if (!v6 || ![(VMUClassPatternMatcher *)self _regex:self->_vmRegionsRegex matchesName:v6])
  {
    goto LABEL_15;
  }

  allocationSizeLowerBound = self->_allocationSizeLowerBound;
  if (!allocationSizeLowerBound && !self->_allocationSizeUpperBound || (v9 = *(a3.var0 + 8) & 0xFFFFFFFFFFFFFFFLL, allocationSizeLowerBound <= v9) && v9 <= self->_allocationSizeUpperBound)
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