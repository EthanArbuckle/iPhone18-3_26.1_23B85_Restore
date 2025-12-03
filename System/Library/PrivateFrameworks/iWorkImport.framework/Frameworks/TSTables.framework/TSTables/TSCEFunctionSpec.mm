@interface TSCEFunctionSpec
+ (BOOL)functionIndexUsesThunks:(unsigned __int16)thunks;
+ (BOOL)hasAnyDateArgumentsToFunction:(unsigned __int16)function;
+ (BOOL)isModeEnabled:(unsigned __int16)enabled functionIndex:(unsigned __int16)index;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs functionOperator:(int64_t)operator fanoutOptions:(unsigned int)options shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)self0 functionIndex:(unsigned __int16)self1;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size fanoutOptions:(unsigned int)options shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size nonRepeatingArgsAtEnd:(unsigned __int16)end fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)self0 arguments:(const void *)self1 functionIndex:(unsigned __int16)self2;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index;
+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index;
+ (id)englishFunctionNameFromFunctionIndex:(unsigned __int16)index;
+ (id)functionSpecForFunctionIndex:(unsigned __int16)index;
+ (id)functionSpecForFunctionName:(id)name;
+ (id)functionSpecForOperator:(int64_t)operator arguments:(int)arguments;
+ (id)unsupportedFunctionNameForLocale:(id)locale;
+ (void)loadSpecDictionary;
- (BOOL)acceptsFunctorAtIndex:(unint64_t)index numArgs:(unint64_t)args;
- (TSCEFunctionSpec)initWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size nonRepeatingArgsAtEnd:(unsigned __int16)end functionOperator:(int64_t)operator fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)self0 shipVersion:(int)self1 arguments:(const void *)self2 functionIndex:(unsigned __int16)self3;
- (char)preferredTypeForArgumentIndex:(unint64_t)index;
- (id).cxx_construct;
- (id)argumentSpecForIndex:(unint64_t)index;
- (id)argumentSpecForIndex:(unint64_t)index numArgs:(unint64_t)args;
- (id)displayStringForLocale:(id)locale;
- (id)localizedFunctionNameForLocale:(id)locale;
- (id)localizedToolTipStringForLocale:(id)locale;
- (id)nativeSyntaxStringForArgument:(int)argument;
- (int)accessorModeForArgumentIndex:(unint64_t)index;
- (int64_t)modeNumberForLocalizedString:(id)string argumentSpecIndex:(unint64_t)index attributeMax:(int64_t)max locale:(id)locale;
- (void)loadRepeatingArguments;
@end

@implementation TSCEFunctionSpec

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs functionOperator:(int64_t)operator fanoutOptions:(unsigned int)options shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0
{
  nameCopy = name;
  v16 = [TSCEFunctionSpec alloc];
  versionCopy = version;
  BYTE4(v20) = 0;
  LODWORD(v20) = options;
  HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex = objc_msgSend_initWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_functionOperator_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(v16, v17, nameCopy, args, maxArgs, 0, 0, operator, v20, versionCopy, arguments, index);

  return HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index
{
  v11 = 0;
  v9 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, size, 0, 0, v11, arguments, index);

  return v9;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index
{
  v10 = 0;
  v8 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, 0, 0, 0, v10, arguments, index);

  return v8;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)index
{
  v9 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, 0, 0, 0, intersection, arguments, index);

  return v9;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0
{
  v10 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, 0, 0, *&options, intersection, arguments, index);

  return v10;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size fanoutOptions:(unsigned int)options shipVersion:(int)version arguments:(const void *)arguments functionIndex:(unsigned __int16)self0
{
  v12 = 0;
  v10 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, size, 0, *&options, v12, arguments, index);

  return v10;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)version arguments:(const void *)self0 functionIndex:(unsigned __int16)self1
{
  v11 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(self, a2, name, args, maxArgs, size, 0, *&options, intersection, arguments, index);

  return v11;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size nonRepeatingArgsAtEnd:(unsigned __int16)end fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)intersection shipVersion:(int)self0 arguments:(const void *)self1 functionIndex:(unsigned __int16)self2
{
  endCopy = end;
  sizeCopy = size;
  nameCopy = name;
  v18 = [TSCEFunctionSpec alloc];
  BYTE4(v22) = intersection;
  LODWORD(v22) = options;
  HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex = objc_msgSend_initWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_functionOperator_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(v18, v19, nameCopy, args, maxArgs, sizeCopy, endCopy, 0, v22, version, arguments, index);

  return HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex;
}

+ (void)loadSpecDictionary
{
  if (qword_27CFB5628 != -1)
  {
    sub_2216F7C70();
  }
}

+ (id)functionSpecForFunctionIndex:(unsigned __int16)index
{
  if (index)
  {
    indexCopy = index;
    objc_msgSend_loadSpecDictionary(self, a2, index, v3, v4);
    if (indexCopy >= ((*(qword_27CFB5630 + 8) - *qword_27CFB5630) >> 3))
    {
      v7 = 0;
    }

    else
    {
      v7 = *(*qword_27CFB5630 + 8 * indexCopy);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)englishFunctionNameFromFunctionIndex:(unsigned __int16)index
{
  v5 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, a2, index, v3, v4);
  v10 = objc_msgSend_functionName(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)functionSpecForFunctionName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    objc_msgSend_loadSpecDictionary(self, v4, v5, v6, v7);
    v16 = objc_msgSend_objectForKeyedSubscript_(qword_27CFB5610, v9, nameCopy, v10, v11);
    if (!v16)
    {
      v17 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v12, v13, v14, v15);
      v21 = objc_msgSend_functionNameForLocalizedString_(v17, v18, nameCopy, v19, v20);
      v16 = objc_msgSend_objectForKeyedSubscript_(qword_27CFB5610, v22, v21, v23, v24);
      if (v16)
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSCEFunctionSpec functionSpecForFunctionName:]", v26, v27);
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v31, v32);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 307, 0, "functionSpecForFunctionName: expects US function names, but %@ (US is %@) was passed in.", nameCopy, v21);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)functionSpecForOperator:(int64_t)operator arguments:(int)arguments
{
  if (!operator)
  {
    goto LABEL_5;
  }

  objc_msgSend_loadSpecDictionary(self, a2, operator, *&arguments, v4);
  if (arguments == 2)
  {
    v17 = qword_27CFB5620;
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, operator, v8, v9);
    v15 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v11, v19, v20);
    goto LABEL_7;
  }

  if (arguments != 1)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_8;
  }

  v10 = qword_27CFB5618;
  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, operator, v8, v9);
  v15 = objc_msgSend_objectForKeyedSubscript_(v10, v12, v11, v13, v14);
LABEL_7:
  v16 = v15;

LABEL_8:

  return v16;
}

+ (BOOL)isModeEnabled:(unsigned __int16)enabled functionIndex:(unsigned __int16)index
{
  v4 = (enabled - 11) != 65534 && (enabled - 11) != 0xFFFF;
  v5 = index != 300 || v4;
  if (index == 298)
  {
    return ((enabled - 13) & 0xFFFA) != 0;
  }

  else
  {
    return v5;
  }
}

- (TSCEFunctionSpec)initWithFunctionName:(id)name minArgs:(unint64_t)args maxArgs:(unint64_t)maxArgs repeatingGroupSize:(signed __int16)size nonRepeatingArgsAtEnd:(unsigned __int16)end functionOperator:(int64_t)operator fanoutOptions:(unsigned int)options mayHaveBeenImplicitIntersection:(BOOL)self0 shipVersion:(int)self1 arguments:(const void *)self2 functionIndex:(unsigned __int16)self3
{
  nameCopy = name;
  v47.receiver = self;
  v47.super_class = TSCEFunctionSpec;
  v21 = [(TSCEFunctionSpec *)&v47 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_functionName, name);
    v22->_minArguments = args;
    v22->_maxArguments = maxArgs;
    v22->_repeatingGroupSize = size;
    v22->_nonRepeatingArgsAtEnd = end;
    v22->_functionOperator = operator;
    p_arguments = &v22->_arguments;
    if (&v22->_arguments != arguments)
    {
      sub_22116CF34(&v22->_arguments, *arguments, *(arguments + 1), (*(arguments + 1) - *arguments) >> 3);
    }

    v22->_shipVersion = version;
    v22->_fanoutOptions = options;
    v22->_mayHaveBeenImplicitIntersection = intersection;
    v28 = *p_arguments;
    var0 = v22->_arguments.var0;
    if (*p_arguments != var0)
    {
      v30 = 0;
      do
      {
        v31 = *v28;
        objc_msgSend_setIndex_(v31, v32, v30, v33, v34);
        objc_msgSend_setFunctionSpec_(v31, v35, v22, v36, v37);
        objc_msgSend_setupArgAccessor(v31, v38, v39, v40, v41);
        ++v30;

        ++v28;
      }

      while (v28 != var0);
    }

    v22->_functionIndex = index;
    objc_msgSend_loadRepeatingArguments(v22, v23, v24, v25, v26);
    objc_msgSend_markAsPermanent(v22, v42, v43, v44, v45);
  }

  return v22;
}

+ (BOOL)functionIndexUsesThunks:(unsigned __int16)thunks
{
  result = 0;
  if (thunks <= 312)
  {
    if (thunks != 19 && thunks != 62)
    {
      return result;
    }

    return 1;
  }

  if (thunks == 336 || thunks == 313)
  {
    return 1;
  }

  return result;
}

- (id)localizedFunctionNameForLocale:(id)locale
{
  v5 = objc_msgSend_localizedNameForFunction_(locale, a2, self->_functionName, v3, v4);

  return v5;
}

+ (id)unsupportedFunctionNameForLocale:(id)locale
{
  localeCopy = locale;
  if (!localeCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSCEFunctionSpec unsupportedFunctionNameForLocale:]", v4, v5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 490, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = objc_msgSend_localizedStringForKey_value_table_(localeCopy, v3, @"Unsupported", &stru_2834BADA0, @"TSCalculationEngine");

  return v18;
}

- (id)localizedToolTipStringForLocale:(id)locale
{
  v5 = objc_msgSend_localizedToolTipForFunction_(locale, a2, self->_functionName, v3, v4);

  return v5;
}

- (id)displayStringForLocale:(id)locale
{
  v9 = objc_msgSend_localizedFunctionNameForLocale_(self, a2, locale, v3, v4);
  if (!v9)
  {
    v9 = self->_functionName;
  }

  if (objc_msgSend_isEqualToString_(v9, v6, @"/", v7, v8))
  {
    v13 = TSUOperatorStringDivision();
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v9, v10, @"*", v11, v12))
    {
      goto LABEL_8;
    }

    v13 = TSUOperatorStringMultiplication();
  }

  v14 = v13;

  v9 = v14;
LABEL_8:

  return v9;
}

- (void)loadRepeatingArguments
{
  v4 = 40;
  if (self->_repeatingGroupSize >= 1 && self->_repeatingArguments.__begin_ == self->_repeatingArguments.var0)
  {
    p_repeatingArguments = &self->_repeatingArguments;
    repeatingGroupSize = self->_repeatingGroupSize;
    p_arguments = &self->_arguments;
    begin = self->_arguments.__begin_;
    var0 = self->_arguments.var0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v10 = 0x277CCA000uLL;
    if (repeatingGroupSize >= 9)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFunctionSpec loadRepeatingArguments]", v2, v3);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v14, v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 533, 0, "I don't think we ever use higher than 2, actually, certainly not repeatingGroupSize: %hd", self->_repeatingGroupSize);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
      LOWORD(repeatingGroupSize) = self->_repeatingGroupSize;
    }

    sub_22146688C(&v78, repeatingGroupSize);
    v25 = var0 - begin;
    v26 = self->_repeatingGroupSize;
    if (v26 >= 1)
    {
      v27 = 0;
      v28 = v25 - (self->_nonRepeatingArgsAtEnd + v26);
      do
      {
        if (v28 >= v25)
        {
          v29 = MEMORY[0x277D81150];
          v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEFunctionSpec loadRepeatingArguments]", v23, v24);
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v32, v33);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v34, 542, 0, "origArgIndex out of bounds: %lu", v28);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
          v10 = 0x277CCA000uLL;
        }

        if (v28 >= self->_arguments.var0 - self->_arguments.__begin_)
        {
          sub_2211E631C();
        }

        v40 = p_arguments->__begin_[v28];
        v81 = objc_msgSend_copy(v40, v41, v42, v43, v44);
        objc_msgSend_setIndex_(v81, v45, (v26 + v28), v46, v47);
        objc_msgSend_setupArgAccessor(v81, v48, v49, v50, v51);
        sub_22146691C(&v78, &v81);

        ++v27;
        LOWORD(v26) = self->_repeatingGroupSize;
        ++v28;
      }

      while (v27 < v26);
    }

    nonRepeatingArgsAtEnd = self->_nonRepeatingArgsAtEnd;
    if (self->_nonRepeatingArgsAtEnd)
    {
      v53 = 0;
      do
      {
        v54 = v4;
        v55 = v25 + v53 - nonRepeatingArgsAtEnd;
        if (v55 >= v25)
        {
          v56 = MEMORY[0x277D81150];
          v57 = objc_msgSend_stringWithUTF8String_(*(v10 + 3240), v22, "[TSCEFunctionSpec loadRepeatingArguments]", v23, v24);
          v61 = objc_msgSend_stringWithUTF8String_(*(v10 + 3240), v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v59, v60);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v62, v57, v61, 555, 0, "origArgIndex out of bounds: %lu", v25 + v53 - nonRepeatingArgsAtEnd);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
          v10 = 0x277CCA000;
        }

        if (v55 >= self->_arguments.var0 - self->_arguments.__begin_)
        {
          sub_2211E631C();
        }

        v67 = *(&p_arguments->__begin_[v25] + v53 - nonRepeatingArgsAtEnd);
        v4 = v54;
        v68 = *(&self->super.super.isa + v54);
        v73 = objc_msgSend_index(v67, v69, v70, v71, v72);
        objc_msgSend_setIndex_(v67, v74, (v73 + v68), v75, v76);

        ++v53;
        nonRepeatingArgsAtEnd = self->_nonRepeatingArgsAtEnd;
      }

      while (v53 < nonRepeatingArgsAtEnd);
    }

    if (p_repeatingArguments != &v78)
    {
      sub_22116CF34(p_repeatingArguments, v78, v79, v79 - v78);
    }

    v81 = &v78;
    sub_22107C2C0(&v81);
  }
}

- (id)argumentSpecForIndex:(unint64_t)index
{
  begin = self->_arguments.__begin_;
  v6 = self->_arguments.var0 - begin;
  v7 = v6 - self->_nonRepeatingArgsAtEnd;
  if (!v7)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = index - v7;
  if (index >= v7)
  {
    repeatingGroupSize = self->_repeatingGroupSize;
    if (repeatingGroupSize < 1)
    {
      v27 = v7 - 1;
      if (v6 > v27)
      {
        v10 = &begin[v27];
        goto LABEL_13;
      }
    }

    else
    {
      v12 = v9 % repeatingGroupSize;
      p_repeatingArguments = &self->_repeatingArguments;
      v14 = self->_repeatingArguments.__begin_;
      v15 = self->_repeatingArguments.var0 - v14;
      if (v9 % repeatingGroupSize >= v15 >> 3)
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFunctionSpec argumentSpecForIndex:]", v3, v4);
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v19, v20);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 578, 0, "translatedIndex out of bounds: %lu", v12);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
        v14 = p_repeatingArguments->__begin_;
        v15 = p_repeatingArguments->var0 - p_repeatingArguments->__begin_;
      }

      if (v15 >> 3 > v12)
      {
        v10 = &v14[v12];
        goto LABEL_13;
      }
    }

LABEL_17:
    sub_2211E631C();
  }

  if (v6 <= index)
  {
    goto LABEL_17;
  }

  v10 = &begin[index];
LABEL_13:
  v8 = *v10;
LABEL_14:

  return v8;
}

- (id)argumentSpecForIndex:(unint64_t)index numArgs:(unint64_t)args
{
  v5 = args - self->_nonRepeatingArgsAtEnd;
  if (v5 <= index)
  {
    p_arguments = &self->_arguments;
    begin = self->_arguments.__begin_;
    v9 = self->_arguments.var0 - begin;
    v10 = v5 + ~index;
    v11 = v10 + (v9 >> 3);
    if (__CFADD__(v10, v9 >> 3))
    {
      v23 = v9 >> 3;
    }

    else
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFunctionSpec argumentSpecForIndex:numArgs:]", args, v4);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 602, 0, "Expected to be within _arguments bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
      begin = p_arguments->__begin_;
      v23 = p_arguments->var0 - p_arguments->__begin_;
    }

    if (v23 <= v11)
    {
      sub_2211E631C();
    }

    v6 = begin[v11];
  }

  else
  {
    v6 = objc_msgSend_argumentSpecForIndex_(self, a2, index, args, v4);
  }

  return v6;
}

- (BOOL)acceptsFunctorAtIndex:(unint64_t)index numArgs:(unint64_t)args
{
  functionIndex = self->_functionIndex;
  if ((functionIndex - 364) < 7)
  {
    return index + 1 == args;
  }

  if (functionIndex == 363)
  {
    return 1;
  }

  if (functionIndex == 372)
  {
    return index + 1 == args;
  }

  return objc_msgSend_functionIndexUsesThunks_(TSCEFunctionSpec, a2, functionIndex, args, v4);
}

- (int)accessorModeForArgumentIndex:(unint64_t)index
{
  v5 = objc_msgSend_argumentSpecForIndex_(self, a2, index, v3, v4);
  if (!v5)
  {
    return 1;
  }

  return objc_msgSend_accessorMode(v5, v6, v7, v8, v9);
}

- (char)preferredTypeForArgumentIndex:(unint64_t)index
{
  v5 = objc_msgSend_argumentSpecForIndex_(self, a2, index, v3, v4);
  if (v5)
  {

    LOBYTE(v5) = objc_msgSend_argumentType(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (id)nativeSyntaxStringForArgument:(int)argument
{
  v5 = objc_msgSend_argumentSpecForIndex_(self, a2, argument, v3, v4);
  if (v5)
  {
    v5 = objc_msgSend_nativeSyntaxString(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (int64_t)modeNumberForLocalizedString:(id)string argumentSpecIndex:(unint64_t)index attributeMax:(int64_t)max locale:(id)locale
{
  stringCopy = string;
  localeCopy = locale;
  v18 = objc_msgSend_argumentSpecForIndex_(self, v12, index, v13, v14);
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  if (v18 && (max & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = objc_msgSend_indexForModeNumber_locale_(v18, v15, localeCopy, v16, v17, v20);
      v24 = objc_msgSend_localizedModeNameForModeIndex_locale_(v18, v22, v21, localeCopy, v23);
      v28 = objc_msgSend_caseInsensitiveCompare_(stringCopy, v25, v24, v26, v27);

      if (!v28)
      {
        break;
      }

      v19 = ++v20;
      if (v20 > max)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        break;
      }
    }
  }

  return v19;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0;
  return self;
}

+ (BOOL)hasAnyDateArgumentsToFunction:(unsigned __int16)function
{
  result = 1;
  if (function <= 165)
  {
    if (function > 0x3Cu || ((1 << function) & 0x1000A33C0000000CLL) == 0)
    {
      if ((function - 90) > 0x2A)
      {
        return 0;
      }

      v4 = 1 << (function - 90);
      v5 = 0x40000380011;
      goto LABEL_10;
    }
  }

  else if ((function - 166) > 0x30 || ((1 << (function + 90)) & 0x101663E000003) == 0)
  {
    if ((function - 260) > 0x34)
    {
      return 0;
    }

    v4 = 1 << (function - 4);
    v5 = 0x18028000000003;
LABEL_10:
    if ((v4 & v5) != 0)
    {
      return result;
    }

    return 0;
  }

  return result;
}

@end