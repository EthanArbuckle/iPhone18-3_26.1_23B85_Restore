@interface TSCEFunctionSpec
+ (BOOL)functionIndexUsesThunks:(unsigned __int16)a3;
+ (BOOL)hasAnyDateArgumentsToFunction:(unsigned __int16)a3;
+ (BOOL)isModeEnabled:(unsigned __int16)a3 functionIndex:(unsigned __int16)a4;
+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 fanoutOptions:(unsigned int)a6 mayHaveBeenImplicitIntersection:(BOOL)a7 shipVersion:(int)a8 arguments:(const void *)a9 functionIndex:(unsigned __int16)a10;
+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 functionOperator:(int64_t)a6 fanoutOptions:(unsigned int)a7 shipVersion:(int)a8 arguments:(const void *)a9 functionIndex:(unsigned __int16)a10;
+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 mayHaveBeenImplicitIntersection:(BOOL)a6 shipVersion:(int)a7 arguments:(const void *)a8 functionIndex:(unsigned __int16)a9;
+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 repeatingGroupSize:(signed __int16)a6 fanoutOptions:(unsigned int)a7 mayHaveBeenImplicitIntersection:(BOOL)a8 shipVersion:(int)a9 arguments:(const void *)a10 functionIndex:(unsigned __int16)a11;
+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 repeatingGroupSize:(signed __int16)a6 fanoutOptions:(unsigned int)a7 shipVersion:(int)a8 arguments:(const void *)a9 functionIndex:(unsigned __int16)a10;
+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 repeatingGroupSize:(signed __int16)a6 nonRepeatingArgsAtEnd:(unsigned __int16)a7 fanoutOptions:(unsigned int)a8 mayHaveBeenImplicitIntersection:(BOOL)a9 shipVersion:(int)a10 arguments:(const void *)a11 functionIndex:(unsigned __int16)a12;
+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 repeatingGroupSize:(signed __int16)a6 shipVersion:(int)a7 arguments:(const void *)a8 functionIndex:(unsigned __int16)a9;
+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 shipVersion:(int)a6 arguments:(const void *)a7 functionIndex:(unsigned __int16)a8;
+ (id)englishFunctionNameFromFunctionIndex:(unsigned __int16)a3;
+ (id)functionSpecForFunctionIndex:(unsigned __int16)a3;
+ (id)functionSpecForFunctionName:(id)a3;
+ (id)functionSpecForOperator:(int64_t)a3 arguments:(int)a4;
+ (id)unsupportedFunctionNameForLocale:(id)a3;
+ (void)loadSpecDictionary;
- (BOOL)acceptsFunctorAtIndex:(unint64_t)a3 numArgs:(unint64_t)a4;
- (TSCEFunctionSpec)initWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 repeatingGroupSize:(signed __int16)a6 nonRepeatingArgsAtEnd:(unsigned __int16)a7 functionOperator:(int64_t)a8 fanoutOptions:(unsigned int)a9 mayHaveBeenImplicitIntersection:(BOOL)a10 shipVersion:(int)a11 arguments:(const void *)a12 functionIndex:(unsigned __int16)a13;
- (char)preferredTypeForArgumentIndex:(unint64_t)a3;
- (id).cxx_construct;
- (id)argumentSpecForIndex:(unint64_t)a3;
- (id)argumentSpecForIndex:(unint64_t)a3 numArgs:(unint64_t)a4;
- (id)displayStringForLocale:(id)a3;
- (id)localizedFunctionNameForLocale:(id)a3;
- (id)localizedToolTipStringForLocale:(id)a3;
- (id)nativeSyntaxStringForArgument:(int)a3;
- (int)accessorModeForArgumentIndex:(unint64_t)a3;
- (int64_t)modeNumberForLocalizedString:(id)a3 argumentSpecIndex:(unint64_t)a4 attributeMax:(int64_t)a5 locale:(id)a6;
- (void)loadRepeatingArguments;
@end

@implementation TSCEFunctionSpec

+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 functionOperator:(int64_t)a6 fanoutOptions:(unsigned int)a7 shipVersion:(int)a8 arguments:(const void *)a9 functionIndex:(unsigned __int16)a10
{
  v15 = a3;
  v16 = [TSCEFunctionSpec alloc];
  v21 = a8;
  BYTE4(v20) = 0;
  LODWORD(v20) = a7;
  HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex = objc_msgSend_initWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_functionOperator_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(v16, v17, v15, a4, a5, 0, 0, a6, v20, v21, a9, a10);

  return HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 repeatingGroupSize:(signed __int16)a6 shipVersion:(int)a7 arguments:(const void *)a8 functionIndex:(unsigned __int16)a9
{
  v11 = 0;
  v9 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(a1, a2, a3, a4, a5, a6, 0, 0, v11, a8, a9);

  return v9;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 shipVersion:(int)a6 arguments:(const void *)a7 functionIndex:(unsigned __int16)a8
{
  v10 = 0;
  v8 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(a1, a2, a3, a4, a5, 0, 0, 0, v10, a7, a8);

  return v8;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 mayHaveBeenImplicitIntersection:(BOOL)a6 shipVersion:(int)a7 arguments:(const void *)a8 functionIndex:(unsigned __int16)a9
{
  v9 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(a1, a2, a3, a4, a5, 0, 0, 0, a6, a8, a9);

  return v9;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 fanoutOptions:(unsigned int)a6 mayHaveBeenImplicitIntersection:(BOOL)a7 shipVersion:(int)a8 arguments:(const void *)a9 functionIndex:(unsigned __int16)a10
{
  v10 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(a1, a2, a3, a4, a5, 0, 0, *&a6, a7, a9, a10);

  return v10;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 repeatingGroupSize:(signed __int16)a6 fanoutOptions:(unsigned int)a7 shipVersion:(int)a8 arguments:(const void *)a9 functionIndex:(unsigned __int16)a10
{
  v12 = 0;
  v10 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(a1, a2, a3, a4, a5, a6, 0, *&a7, v12, a9, a10);

  return v10;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 repeatingGroupSize:(signed __int16)a6 fanoutOptions:(unsigned int)a7 mayHaveBeenImplicitIntersection:(BOOL)a8 shipVersion:(int)a9 arguments:(const void *)a10 functionIndex:(unsigned __int16)a11
{
  v11 = objc_msgSend_specWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(a1, a2, a3, a4, a5, a6, 0, *&a7, a8, a10, a11);

  return v11;
}

+ (TSCEFunctionSpec)specWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 repeatingGroupSize:(signed __int16)a6 nonRepeatingArgsAtEnd:(unsigned __int16)a7 fanoutOptions:(unsigned int)a8 mayHaveBeenImplicitIntersection:(BOOL)a9 shipVersion:(int)a10 arguments:(const void *)a11 functionIndex:(unsigned __int16)a12
{
  v13 = a7;
  v14 = a6;
  v17 = a3;
  v18 = [TSCEFunctionSpec alloc];
  BYTE4(v22) = a9;
  LODWORD(v22) = a8;
  HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex = objc_msgSend_initWithFunctionName_minArgs_maxArgs_repeatingGroupSize_nonRepeatingArgsAtEnd_functionOperator_fanoutOptions_mayHaveBeenImplicitIntersection_shipVersion_arguments_functionIndex_(v18, v19, v17, a4, a5, v14, v13, 0, v22, a10, a11, a12);

  return HaveBeenImplicitIntersection_shipVersion_arguments_functionIndex;
}

+ (void)loadSpecDictionary
{
  if (qword_27CFB5628 != -1)
  {
    sub_2216F7C70();
  }
}

+ (id)functionSpecForFunctionIndex:(unsigned __int16)a3
{
  if (a3)
  {
    v6 = a3;
    objc_msgSend_loadSpecDictionary(a1, a2, a3, v3, v4);
    if (v6 >= ((*(qword_27CFB5630 + 8) - *qword_27CFB5630) >> 3))
    {
      v7 = 0;
    }

    else
    {
      v7 = *(*qword_27CFB5630 + 8 * v6);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)englishFunctionNameFromFunctionIndex:(unsigned __int16)a3
{
  v5 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, a2, a3, v3, v4);
  v10 = objc_msgSend_functionName(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)functionSpecForFunctionName:(id)a3
{
  v8 = a3;
  if (v8)
  {
    objc_msgSend_loadSpecDictionary(a1, v4, v5, v6, v7);
    v16 = objc_msgSend_objectForKeyedSubscript_(qword_27CFB5610, v9, v8, v10, v11);
    if (!v16)
    {
      v17 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v12, v13, v14, v15);
      v21 = objc_msgSend_functionNameForLocalizedString_(v17, v18, v8, v19, v20);
      v16 = objc_msgSend_objectForKeyedSubscript_(qword_27CFB5610, v22, v21, v23, v24);
      if (v16)
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSCEFunctionSpec functionSpecForFunctionName:]", v26, v27);
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v31, v32);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 307, 0, "functionSpecForFunctionName: expects US function names, but %@ (US is %@) was passed in.", v8, v21);

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

+ (id)functionSpecForOperator:(int64_t)a3 arguments:(int)a4
{
  if (!a3)
  {
    goto LABEL_5;
  }

  objc_msgSend_loadSpecDictionary(a1, a2, a3, *&a4, v4);
  if (a4 == 2)
  {
    v17 = qword_27CFB5620;
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, a3, v8, v9);
    v15 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v11, v19, v20);
    goto LABEL_7;
  }

  if (a4 != 1)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_8;
  }

  v10 = qword_27CFB5618;
  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, a3, v8, v9);
  v15 = objc_msgSend_objectForKeyedSubscript_(v10, v12, v11, v13, v14);
LABEL_7:
  v16 = v15;

LABEL_8:

  return v16;
}

+ (BOOL)isModeEnabled:(unsigned __int16)a3 functionIndex:(unsigned __int16)a4
{
  v4 = (a3 - 11) != 65534 && (a3 - 11) != 0xFFFF;
  v5 = a4 != 300 || v4;
  if (a4 == 298)
  {
    return ((a3 - 13) & 0xFFFA) != 0;
  }

  else
  {
    return v5;
  }
}

- (TSCEFunctionSpec)initWithFunctionName:(id)a3 minArgs:(unint64_t)a4 maxArgs:(unint64_t)a5 repeatingGroupSize:(signed __int16)a6 nonRepeatingArgsAtEnd:(unsigned __int16)a7 functionOperator:(int64_t)a8 fanoutOptions:(unsigned int)a9 mayHaveBeenImplicitIntersection:(BOOL)a10 shipVersion:(int)a11 arguments:(const void *)a12 functionIndex:(unsigned __int16)a13
{
  v20 = a3;
  v47.receiver = self;
  v47.super_class = TSCEFunctionSpec;
  v21 = [(TSCEFunctionSpec *)&v47 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_functionName, a3);
    v22->_minArguments = a4;
    v22->_maxArguments = a5;
    v22->_repeatingGroupSize = a6;
    v22->_nonRepeatingArgsAtEnd = a7;
    v22->_functionOperator = a8;
    p_arguments = &v22->_arguments;
    if (&v22->_arguments != a12)
    {
      sub_22116CF34(&v22->_arguments, *a12, *(a12 + 1), (*(a12 + 1) - *a12) >> 3);
    }

    v22->_shipVersion = a11;
    v22->_fanoutOptions = a9;
    v22->_mayHaveBeenImplicitIntersection = a10;
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

    v22->_functionIndex = a13;
    objc_msgSend_loadRepeatingArguments(v22, v23, v24, v25, v26);
    objc_msgSend_markAsPermanent(v22, v42, v43, v44, v45);
  }

  return v22;
}

+ (BOOL)functionIndexUsesThunks:(unsigned __int16)a3
{
  result = 0;
  if (a3 <= 312)
  {
    if (a3 != 19 && a3 != 62)
    {
      return result;
    }

    return 1;
  }

  if (a3 == 336 || a3 == 313)
  {
    return 1;
  }

  return result;
}

- (id)localizedFunctionNameForLocale:(id)a3
{
  v5 = objc_msgSend_localizedNameForFunction_(a3, a2, self->_functionName, v3, v4);

  return v5;
}

+ (id)unsupportedFunctionNameForLocale:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSCEFunctionSpec unsupportedFunctionNameForLocale:]", v4, v5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionSpec.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 490, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = objc_msgSend_localizedStringForKey_value_table_(v6, v3, @"Unsupported", &stru_2834BADA0, @"TSCalculationEngine");

  return v18;
}

- (id)localizedToolTipStringForLocale:(id)a3
{
  v5 = objc_msgSend_localizedToolTipForFunction_(a3, a2, self->_functionName, v3, v4);

  return v5;
}

- (id)displayStringForLocale:(id)a3
{
  v9 = objc_msgSend_localizedFunctionNameForLocale_(self, a2, a3, v3, v4);
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

- (id)argumentSpecForIndex:(unint64_t)a3
{
  begin = self->_arguments.__begin_;
  v6 = self->_arguments.var0 - begin;
  v7 = v6 - self->_nonRepeatingArgsAtEnd;
  if (!v7)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = a3 - v7;
  if (a3 >= v7)
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

  if (v6 <= a3)
  {
    goto LABEL_17;
  }

  v10 = &begin[a3];
LABEL_13:
  v8 = *v10;
LABEL_14:

  return v8;
}

- (id)argumentSpecForIndex:(unint64_t)a3 numArgs:(unint64_t)a4
{
  v5 = a4 - self->_nonRepeatingArgsAtEnd;
  if (v5 <= a3)
  {
    p_arguments = &self->_arguments;
    begin = self->_arguments.__begin_;
    v9 = self->_arguments.var0 - begin;
    v10 = v5 + ~a3;
    v11 = v10 + (v9 >> 3);
    if (__CFADD__(v10, v9 >> 3))
    {
      v23 = v9 >> 3;
    }

    else
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFunctionSpec argumentSpecForIndex:numArgs:]", a4, v4);
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
    v6 = objc_msgSend_argumentSpecForIndex_(self, a2, a3, a4, v4);
  }

  return v6;
}

- (BOOL)acceptsFunctorAtIndex:(unint64_t)a3 numArgs:(unint64_t)a4
{
  functionIndex = self->_functionIndex;
  if ((functionIndex - 364) < 7)
  {
    return a3 + 1 == a4;
  }

  if (functionIndex == 363)
  {
    return 1;
  }

  if (functionIndex == 372)
  {
    return a3 + 1 == a4;
  }

  return objc_msgSend_functionIndexUsesThunks_(TSCEFunctionSpec, a2, functionIndex, a4, v4);
}

- (int)accessorModeForArgumentIndex:(unint64_t)a3
{
  v5 = objc_msgSend_argumentSpecForIndex_(self, a2, a3, v3, v4);
  if (!v5)
  {
    return 1;
  }

  return objc_msgSend_accessorMode(v5, v6, v7, v8, v9);
}

- (char)preferredTypeForArgumentIndex:(unint64_t)a3
{
  v5 = objc_msgSend_argumentSpecForIndex_(self, a2, a3, v3, v4);
  if (v5)
  {

    LOBYTE(v5) = objc_msgSend_argumentType(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (id)nativeSyntaxStringForArgument:(int)a3
{
  v5 = objc_msgSend_argumentSpecForIndex_(self, a2, a3, v3, v4);
  if (v5)
  {
    v5 = objc_msgSend_nativeSyntaxString(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (int64_t)modeNumberForLocalizedString:(id)a3 argumentSpecIndex:(unint64_t)a4 attributeMax:(int64_t)a5 locale:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18 = objc_msgSend_argumentSpecForIndex_(self, v12, a4, v13, v14);
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  if (v18 && (a5 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = objc_msgSend_indexForModeNumber_locale_(v18, v15, v11, v16, v17, v20);
      v24 = objc_msgSend_localizedModeNameForModeIndex_locale_(v18, v22, v21, v11, v23);
      v28 = objc_msgSend_caseInsensitiveCompare_(v10, v25, v24, v26, v27);

      if (!v28)
      {
        break;
      }

      v19 = ++v20;
      if (v20 > a5)
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

+ (BOOL)hasAnyDateArgumentsToFunction:(unsigned __int16)a3
{
  result = 1;
  if (a3 <= 165)
  {
    if (a3 > 0x3Cu || ((1 << a3) & 0x1000A33C0000000CLL) == 0)
    {
      if ((a3 - 90) > 0x2A)
      {
        return 0;
      }

      v4 = 1 << (a3 - 90);
      v5 = 0x40000380011;
      goto LABEL_10;
    }
  }

  else if ((a3 - 166) > 0x30 || ((1 << (a3 + 90)) & 0x101663E000003) == 0)
  {
    if ((a3 - 260) > 0x34)
    {
      return 0;
    }

    v4 = 1 << (a3 - 4);
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