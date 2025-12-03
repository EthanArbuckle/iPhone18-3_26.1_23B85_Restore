@interface TSCEFunctionArgSpec
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode argumentContext:(int)context;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode argumentContext:(int)context typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)self0 typeOptions:(unsigned int)self1;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)self0 typeOptions:(unsigned int)self1 modeValues:(const void *)self2 defaultModeIndex:(unsigned __int16)self3;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext typeOptions:(unsigned int)options modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext unwrapThunk:(BOOL)thunk;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)maxInclusive typeOptions:(unsigned int)self0;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context minValue:(double)value minInclusive:(BOOL)inclusive typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context unwrapThunk:(BOOL)thunk;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type minValue:(double)value minInclusive:(BOOL)inclusive;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)maxInclusive;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type typeOptions:(unsigned int)options;
+ (id)argSpecForFunctorWithNumLambdaIdentifiers:(unsigned __int16)identifiers;
+ (id)coerceValueToNumberOrDate:(id)date valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index outError:(id *)error;
- (BOOL)isModeEnabled:(unsigned __int16)enabled;
- (BOOL)isOptional;
- (BOOL)typeIsDisallowed:(char)disallowed value:(id)value;
- (TSCEFunctionArgSpec)init;
- (TSCEFunctionArgSpec)initWithArgumentType:(char)type accessorMode:(int)mode;
- (TSCEFunctionArgSpec)initWithArgumentType:(char)type accessorMode:(int)mode argumentContext:(int)context;
- (id).cxx_construct;
- (id)boundsCheckAndCoerce:(id)coerce valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index outError:(id *)error;
- (id)checkBoundsAndUnits:(id)units valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedArgumentNameForLocale:(id)locale;
- (id)localizedLambdaIdentifierForLambdaIndex:(unsigned __int16)index locale:(id)locale;
- (id)localizedModeMenuItemStringForModeIndex:(unsigned __int16)index locale:(id)locale;
- (id)localizedModeNameForModeIndex:(unsigned __int16)index locale:(id)locale;
- (id)localizedModeToolTipStringForModeIndex:(unsigned __int16)index locale:(id)locale;
- (id)localizedToolTipStringForLocale:(id)locale;
- (id)nativeSyntaxString;
- (id)typeCheckAndCoerce:(id)coerce context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index fromInsideArray:(BOOL)array outError:(id *)error;
- (id)typeCheckAndCoerce:(id)coerce context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index fromInsideArray:(BOOL)array outError:(id *)error fullRangeBeingAccessed:(const TSCERangeRef *)accessed;
- (id)valueForModeIndex:(unsigned __int16)index;
- (int64_t)indexForModeBool:(BOOL)bool locale:(id)locale;
- (int64_t)indexForModeNumber:(double)number locale:(id)locale;
- (int64_t)indexForModeString:(id)string locale:(id)locale;
- (int64_t)indexForModeValue:(id)value locale:(id)locale;
- (void)setArgumentContext:(int)context;
- (void)setDisallowArrayModeFanout:(BOOL)fanout;
- (void)setModeValues:(const void *)values;
- (void)setModeValues:(const void *)values defaultModeIndex:(unsigned __int16)index;
- (void)setupArgAccessor;
@end

@implementation TSCEFunctionArgSpec

- (TSCEFunctionArgSpec)init
{
  v9.receiver = self;
  v9.super_class = TSCEFunctionArgSpec;
  v2 = [(TSCEFunctionArgSpec *)&v9 init];
  v7 = v2;
  if (v2)
  {
    v2->_argumentType = 0;
    v2->_accessorMode = 1;
    v2->_rangeContext = 0;
    v2->_argumentContext = 0;
    v2->_typeOptions = 0;
    v2->_defaultModeIndex = -1;
    v2->_functionSpec = 0;
    v2->_argumentAccessor = 0;
    v2->_minValue = INFINITY;
    v2->_maxValue = INFINITY;
    v2->_index = 0;
    v2->_minInclusive = 0;
    v2->_maxInclusive = 0;
    v2->_unwrapThunk = 1;
    objc_msgSend_markAsPermanent(v2, v3, v4, v5, v6);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEFunctionArgSpec alloc];
  v6 = objc_msgSend_initWithArgumentType_accessorMode_argumentContext_(v4, v5, self->_argumentType, self->_accessorMode, self->_argumentContext);
  objc_msgSend_setFunctionSpec_(v6, v7, self->_functionSpec, v8, v9);
  objc_msgSend_setArgumentAccessor_(v6, v10, self->_argumentAccessor, v11, v12);
  objc_msgSend_setIndex_(v6, v13, self->_index, v14, v15);
  objc_msgSend_setRangeContext_(v6, v16, self->_rangeContext, v17, v18);
  objc_msgSend_setMinValue_minInclusive_(v6, v19, self->_minInclusive, v20, v21, self->_minValue);
  objc_msgSend_setMaxValue_maxInclusive_(v6, v22, self->_maxInclusive, v23, v24, self->_maxValue);
  objc_msgSend_setTypeOptions_(v6, v25, self->_typeOptions, v26, v27);
  objc_msgSend_setUnwrapThunk_(v6, v28, self->_unwrapThunk, v29, v30);
  objc_msgSend_setModeValues_defaultModeIndex_(v6, v31, &self->_modeValues, self->_defaultModeIndex, v32);
  v6[41] = self->_numLambdaIdentifiers;
  objc_msgSend_markAsPermanent(v6, v33, v34, v35, v36);
  return v6;
}

- (TSCEFunctionArgSpec)initWithArgumentType:(char)type accessorMode:(int)mode
{
  v7 = objc_msgSend_init(self, a2, type, *&mode, v4);
  v11 = v7;
  if (v7)
  {
    *(v7 + 32) = type;
    *(v7 + 36) = mode;
    objc_msgSend_setDisallowArrayModeFanout_(v7, v8, mode == 4, v9, v10);
    objc_msgSend_markAsPermanent(v11, v12, v13, v14, v15);
  }

  return v11;
}

- (TSCEFunctionArgSpec)initWithArgumentType:(char)type accessorMode:(int)mode argumentContext:(int)context
{
  v8 = objc_msgSend_init(self, a2, type, *&mode, *&context);
  v12 = v8;
  if (v8)
  {
    *(v8 + 32) = type;
    *(v8 + 36) = mode;
    *(v8 + 44) = context;
    objc_msgSend_setDisallowArrayModeFanout_(v8, v9, mode == 4, v10, v11);
    objc_msgSend_markAsPermanent(v12, v13, v14, v15, v16);
  }

  return v12;
}

- (void)setDisallowArrayModeFanout:(BOOL)fanout
{
  if (fanout)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_typeOptions = self->_typeOptions & 0xFFFFF7FF | v3;
}

- (BOOL)typeIsDisallowed:(char)disallowed value:(id)value
{
  typeOptions = self->_typeOptions;
  if (typeOptions)
  {
    LOBYTE(v5) = 0;
    if (disallowed <= 3)
    {
      if (disallowed == 2)
      {
        v5 = (typeOptions >> 1) & 1;
      }

      else if (disallowed == 3)
      {
        v5 = (typeOptions >> 5) & 1;
      }
    }

    else
    {
      switch(disallowed)
      {
        case 4:
          v5 = (typeOptions >> 3) & 1;
          break;
        case 5:
          v5 = (typeOptions >> 2) & 1;
          break;
        case 10:
          v5 = self->_typeOptions;
          break;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)setArgumentContext:(int)context
{
  self->_argumentContext = context;
  if (self->_argumentAccessor)
  {
    objc_msgSend_setupArgAccessor(self, a2, *&context, v3, v4);
  }
}

- (void)setupArgAccessor
{
  self->_argumentAccessor = TSCEArgumentAccessor::argAccessorForContext(self->_argumentContext, a2, v2, v3, v4);
  if (objc_msgSend_accessorMode(self, v6, v7, v8, v9) == 4)
  {
    if ((objc_msgSend_disallowArrayModeFanout(self, v10, v11, v12, v13) & 1) == 0)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCEFunctionArgSpec setupArgAccessor]", v15, v16);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 220, 0, "I'm pretty sure allow array mode-fanout cannot work with TSCERepeatingAccessorMode, they are incompatible.");

      v28 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v28, v24, v25, v26, v27);
    }
  }

  else if (objc_msgSend_accessorMode(self, v10, v11, v12, v13) == 3 && (objc_msgSend_disallowArrayModeFanout(self, v29, v30, v31, v32) & 1) == 0)
  {
    functionSpec = self->_functionSpec;

    objc_msgSend_disallowArrayModeFanout(functionSpec, v33, v34, v35, v36);
  }
}

- (void)setModeValues:(const void *)values defaultModeIndex:(unsigned __int16)index
{
  p_modeValues = &self->_modeValues;
  if (p_modeValues != values)
  {
    sub_22116CF34(p_modeValues, *values, *(values + 1), (*(values + 1) - *values) >> 3);
  }

  self->_defaultModeIndex = index;
}

- (BOOL)isOptional
{
  index = self->_index;
  v7 = objc_msgSend_nonRepeatingArgsAtEnd(self->_functionSpec, a2, v2, v3, v4);
  v12 = objc_msgSend_repeatingGroupSize(self->_functionSpec, v8, v9, v10, v11);
  v17 = objc_msgSend_numArguments(self->_functionSpec, v13, v14, v15, v16);
  return (objc_msgSend_minArguments(self->_functionSpec, v18, v19, v20, v21) - v7) <= index && v12 - v7 + v17 > index;
}

- (id)valueForModeIndex:(unsigned __int16)index
{
  indexCopy = index;
  if ((objc_msgSend_isMode(self, a2, index, v3, v4) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEFunctionArgSpec valueForModeIndex:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 251, 0, "Requesting value for non-mode argument.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (objc_msgSend_numModes(self, v7, v8, v9, v10) <= indexCopy)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEFunctionArgSpec valueForModeIndex:]", v23, v24);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 252, 0, "Requesting value for out of bounds index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  begin = self->_modeValues.__begin_;
  if (indexCopy >= (self->_modeValues.var0 - begin))
  {
    sub_2211E631C();
  }

  v37 = begin[indexCopy];

  return v37;
}

- (int64_t)indexForModeValue:(id)value locale:(id)locale
{
  valueCopy = value;
  v11 = objc_msgSend_nativeType(valueCopy, v7, v8, v9, v10);
  v16 = v11;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11 <= 7 && ((1 << v11) & 0xA4) != 0)
  {
    v18 = objc_msgSend_numModes(self, v12, v13, v14, v15);
    if (v18)
    {
      v17 = 0;
      v19 = v18;
      p_modeValues = &self->_modeValues;
      while (1)
      {
        if (v17 >= p_modeValues->var0 - p_modeValues->__begin_)
        {
          sub_2211E631C();
        }

        v21 = p_modeValues->__begin_[v17];
        v25 = v21;
        if (v16 == 7)
        {
          v26 = objc_msgSend_asStringWithLocale_(v21, v22, locale, v23, v24);
          v30 = objc_msgSend_asStringWithLocale_(valueCopy, v27, locale, v28, v29);
          v34 = objc_msgSend_caseInsensitiveCompare_(v30, v31, v26, v32, v33);

          if (!v34)
          {
            break;
          }
        }

        isNativelyEqual = objc_msgSend_isNativelyEqual_(valueCopy, v22, v25, v23, v24);

        if (isNativelyEqual)
        {
          goto LABEL_12;
        }

        if (v19 == ++v17)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_12;
        }
      }
    }
  }

LABEL_12:

  return v17;
}

- (int64_t)indexForModeString:(id)string locale:(id)locale
{
  v7 = objc_msgSend_stringValue_(TSCEStringValue, a2, string, locale, v4);
  v10 = objc_msgSend_indexForModeValue_locale_(self, v8, v7, locale, v9);

  return v10;
}

- (int64_t)indexForModeNumber:(double)number locale:(id)locale
{
  TSUDecimal::operator=();
  v9 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v6, &v14, v7, v8);
  v12 = objc_msgSend_indexForModeValue_locale_(self, v10, v9, locale, v11);

  return v12;
}

- (int64_t)indexForModeBool:(BOOL)bool locale:(id)locale
{
  v7 = objc_msgSend_BOOLValue_(TSCEBooleanValue, a2, bool, locale, v4);
  v10 = objc_msgSend_indexForModeValue_locale_(self, v8, v7, locale, v9);

  return v10;
}

- (BOOL)isModeEnabled:(unsigned __int16)enabled
{
  enabledCopy = enabled;
  v6 = objc_msgSend_functionIndex(self->_functionSpec, a2, enabled, v3, v4);

  return MEMORY[0x2821F9670](TSCEFunctionSpec, sel_isModeEnabled_functionIndex_, enabledCopy, v6, v7);
}

- (id)localizedArgumentNameForLocale:(id)locale
{
  index = self->_index;
  v7 = objc_msgSend_functionName(self->_functionSpec, a2, locale, v3, v4);
  v10 = objc_msgSend_localizedNameForArgument_ofFunction_(locale, v8, index, v7, v9);

  return v10;
}

- (id)localizedToolTipStringForLocale:(id)locale
{
  index = self->_index;
  v7 = objc_msgSend_functionName(self->_functionSpec, a2, locale, v3, v4);
  v10 = objc_msgSend_localizedToolTipForArgument_ofFunction_(locale, v8, index, v7, v9);

  return v10;
}

- (id)nativeSyntaxString
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_functionName(self->_functionSpec, a2, v2, v3, v4);
  v11 = objc_msgSend_stringWithFormat_(v6, v8, @"%C%@_ARGUMENT_%d%C", v9, v10, 57344, v7, self->_index, 57344);

  return v11;
}

- (id)localizedModeNameForModeIndex:(unsigned __int16)index locale:(id)locale
{
  index = self->_index;
  v8 = objc_msgSend_functionName(self->_functionSpec, a2, index, locale, v4);
  v10 = objc_msgSend_localizedModeNameForArgument_modeIndex_ofFunction_(locale, v9, index, index, v8);

  return v10;
}

- (id)localizedModeToolTipStringForModeIndex:(unsigned __int16)index locale:(id)locale
{
  index = self->_index;
  v8 = objc_msgSend_functionName(self->_functionSpec, a2, index, locale, v4);
  v10 = objc_msgSend_localizedModeToolTipForArgument_modeIndex_ofFunction_(locale, v9, index, index, v8);

  return v10;
}

- (id)localizedModeMenuItemStringForModeIndex:(unsigned __int16)index locale:(id)locale
{
  indexCopy = index;
  index = self->_index;
  v9 = objc_msgSend_functionName(self->_functionSpec, a2, index, locale, v4);
  v11 = objc_msgSend_localizedModeNameForArgument_modeIndex_ofFunction_(locale, v10, index, indexCopy, v9);

  v15 = objc_msgSend_valueForModeIndex_(self, v12, indexCopy, v13, v14);
  v19 = objc_msgSend_asStringWithLocale_(v15, v16, locale, v17, v18);
  if (objc_msgSend_nativeType(v15, v20, v21, v22, v23) == 7)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%@", v25, v26, v19);

    v19 = v27;
  }

  if (self->_defaultModeIndex == indexCopy)
  {
    v28 = qword_27CFB53C0;
    if (!qword_27CFB53C0)
    {
      v29 = objc_alloc(MEMORY[0x277CCACA8]);
      v30 = sub_2212F6DF8();
      v32 = objc_msgSend_localizedStringForKey_value_table_(v30, v31, @"or omitted", &stru_2834BADA0, @"TSCalculationEngine");
      v36 = objc_msgSend_initWithFormat_(v29, v33, @" %@", v34, v35, v32);
      v37 = qword_27CFB53C0;
      qword_27CFB53C0 = v36;

      v28 = qword_27CFB53C0;
    }

    v38 = objc_msgSend_stringByAppendingString_(v19, v24, v28, v25, v26);

    v19 = v38;
  }

  v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%@ (%@)", v25, v26, v11, v19);

  return v39;
}

- (id)localizedLambdaIdentifierForLambdaIndex:(unsigned __int16)index locale:(id)locale
{
  index = self->_index;
  v8 = objc_msgSend_functionName(self->_functionSpec, a2, index, locale, v4);
  v10 = objc_msgSend_localizedLambdaIdentifierForArgument_identifierIndex_ofFunction_(locale, v9, index, index, v8);

  return v10;
}

- (id)checkBoundsAndUnits:(id)units valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index
{
  typeCopy = type;
  unitsCopy = units;
  objc_msgSend_minValue(self, v13, v14, v15, v16);
  v18 = v17;
  objc_msgSend_maxValue(self, v19, v20, v21, v22);
  v24 = v23;
  v29 = objc_msgSend_disallowCurrency(self, v25, v26, v27, v28);
  v34 = objc_msgSend_disallowDuration(self, v30, v31, v32, v33);
  v39 = v34;
  v40 = v18 != INFINITY;
  if (v24 != INFINITY)
  {
    v40 = 1;
  }

  if (((v40 | v29 | v34) & 1) == 0)
  {
    v49 = objc_msgSend_argumentType(self, v35, v36, v37, v38);
    v50 = 0;
    if (typeCopy != 5 && v49 != 15)
    {
      v105 = 0;
      v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(unitsCopy, v48, context, spec, index, &v105);
      v50 = v105;
    }

    v52 = v50;
    goto LABEL_78;
  }

  v107 = 0;
  v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(unitsCopy, v35, context, spec, index, &v107);
  v42 = v107;
  if (v42)
  {
    v47 = v42;

    goto LABEL_79;
  }

  hasUnits = objc_msgSend_hasUnits(v41, v43, v44, v45, v46);
  if (hasUnits)
  {
    v58 = objc_msgSend_dimension(v41, v53, v54, v55, v56);
    if (v58 != 4)
    {

      goto LABEL_64;
    }
  }

  v106._decimal.w[0] = objc_msgSend_decimalRepresentation(v41, v53, v54, v55, v56);
  v106._decimal.w[1] = v59;
  TSUDecimal::doubleValue(&v106);
  v61 = v60;

  if (!objc_msgSend_integerOnly(self, v62, v63, v64, v65))
  {
LABEL_28:
    if (v18 == INFINITY || v24 == INFINITY)
    {
      if (v18 == INFINITY || v24 != INFINITY)
      {
        v58 = 4;
        if (v18 != INFINITY || v24 == INFINITY)
        {
LABEL_64:
          if ((v29 | v39) & hasUnits)
          {
            if (v58 == 4)
            {
              v96 = v29;
            }

            else
            {
              v96 = 0;
            }

            if (v96 == 1)
            {
              v97 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
              v100 = objc_msgSend_currencyNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v98, v97, (index + 1), v99);
LABEL_75:
              v95 = v100;

              goto LABEL_77;
            }

            if (v58)
            {
              v101 = 0;
            }

            else
            {
              v101 = v39;
            }

            if (v101 == 1)
            {
              v97 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
              v100 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v102, v97, (index + 1), v103);
              goto LABEL_75;
            }
          }

          v95 = 0;
          goto LABEL_77;
        }

        if (objc_msgSend_maxInclusive(self, v66, v67, v68, v69))
        {
          if (v61 <= v24)
          {
            goto LABEL_64;
          }

          v85 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
          v87 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v90, (index + 1), v85, 1, v24);
        }

        else
        {
          if (v61 < v24)
          {
            goto LABEL_64;
          }

          v85 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
          v87 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v94, (index + 1), v85, 0, v24);
        }

        goto LABEL_62;
      }

      if (objc_msgSend_minInclusive(self, v66, v67, v68, v69))
      {
        if (v61 >= v18)
        {
          goto LABEL_63;
        }

        v85 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
        v87 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v88, (index + 1), v85, 1, v18);
      }

      else
      {
        if (v61 > v18)
        {
          goto LABEL_63;
        }

        v85 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
        v87 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v92, (index + 1), v85, 0, v18);
      }
    }

    else
    {
      if (objc_msgSend_minInclusive(self, v66, v67, v68, v69) && objc_msgSend_maxInclusive(self, v66, v67, v68, v69))
      {
        if (v61 < v18 || v61 > v24)
        {
          v85 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
          v87 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v86, (index + 1), v85, 1, 1, v18, v24);
          goto LABEL_62;
        }

LABEL_63:
        v58 = 4;
        goto LABEL_64;
      }

      if (objc_msgSend_minInclusive(self, v66, v67, v68, v69) && (objc_msgSend_maxInclusive(self, v66, v67, v68, v69) & 1) == 0)
      {
        if (v61 >= v18 && v61 < v24)
        {
          goto LABEL_63;
        }

        v85 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
        v87 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v93, (index + 1), v85, 1, 0, v18, v24);
      }

      else if ((objc_msgSend_minInclusive(self, v66, v67, v68, v69) & 1) != 0 || !objc_msgSend_maxInclusive(self, v66, v67, v68, v69))
      {
        if (v61 > v18 && v61 < v24)
        {
          goto LABEL_63;
        }

        v85 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
        v87 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v91, (index + 1), v85, 0, 0, v18, v24);
      }

      else
      {
        if (v61 > v18 && v61 <= v24)
        {
          goto LABEL_63;
        }

        v85 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
        v87 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v89, (index + 1), v85, 0, 1, v18, v24);
      }
    }

LABEL_62:
    v95 = v87;

    if (v95)
    {
LABEL_77:
      v52 = v95;
      goto LABEL_78;
    }

    goto LABEL_63;
  }

  if (v18 == INFINITY)
  {
    goto LABEL_27;
  }

  if (objc_msgSend_minInclusive(self, v66, v67, v68, v69))
  {
    if (v61 < v18)
    {
      v74 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
      if (v24 == INFINITY)
      {
        objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v70, (index + 1), v74, 1, v18);
      }

      else
      {
        v75 = objc_msgSend_maxInclusive(self, v70, v71, v72, v73);
        objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v76, (index + 1), v74, 1, v75, v18, v24);
      }

      goto LABEL_18;
    }

LABEL_27:
    v61 = trunc(v61);
    goto LABEL_28;
  }

  if (v61 > v18)
  {
    goto LABEL_27;
  }

  v74 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
  if (v24 == INFINITY)
  {
    objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v78, (index + 1), v74, 0, v18);
  }

  else
  {
    v82 = objc_msgSend_maxInclusive(self, v78, v79, v80, v81);
    objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v83, (index + 1), v74, 0, v82, v18, v24);
  }

  v77 = LABEL_18:;
  v84 = v77;

  if (!v84)
  {
    goto LABEL_27;
  }

  v52 = v84;
LABEL_78:
  v47 = v52;
LABEL_79:

  return v47;
}

+ (id)coerceValueToNumberOrDate:(id)date valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index outError:(id *)error
{
  typeCopy = type;
  dateCopy = date;
  v17 = dateCopy;
  if (typeCopy > 0x10 || (v18 = dateCopy, ((1 << typeCopy) & 0x1002B) == 0))
  {
    v21 = objc_msgSend_argumentSpecForIndex_(spec, v14, index, v15, v16);
    if (!objc_msgSend_isOptional(v21, v22, v23, v24, v25) || (v18 = v17, (objc_msgSend_isTokenOrEmptyArg(v17, v26, v27, v28, v29) & 1) == 0))
    {
      v39 = 0;
      v30 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v17, v26, context, spec, index, &v39);
      v32 = TSCEArgumentAccessor::TSUFormattedDateValueFromDateString(v30, context, v31);
      if (objc_msgSend_isNil(v32, v33, v34, v35, v36))
      {
        v38 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v37, context, spec, index, error);
      }

      else
      {
        v38 = v32;
      }

      v18 = v38;
    }
  }

  v19 = v18;

  return v18;
}

- (id)boundsCheckAndCoerce:(id)coerce valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index outError:(id *)error
{
  typeCopy = type;
  coerceCopy = coerce;
  v19 = coerceCopy;
  if (coerceCopy && (objc_msgSend_isNil(coerceCopy, v15, v16, v17, v18) & 1) == 0)
  {
    v24 = objc_msgSend_argumentType(self, v20, v21, v22, v23);
    if (v24 == 8)
    {
      v26 = objc_msgSend_coerceValueToNumberOrDate_valueDeepType_context_functionSpec_argIndex_outError_(TSCEFunctionArgSpec, v25, v19, typeCopy, context, spec, index, error);

      v19 = v26;
    }

    else if (v24 == 5)
    {
      *error = objc_msgSend_checkBoundsAndUnits_valueDeepType_context_functionSpec_argIndex_(self, v25, v19, typeCopy, context, spec, index);
    }
  }

  return v19;
}

- (id)typeCheckAndCoerce:(id)coerce context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index fromInsideArray:(BOOL)array outError:(id *)error
{
  v10 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v11 = 0;
  v12 = 0;
  v8 = objc_msgSend_typeCheckAndCoerce_context_functionSpec_argIndex_fromInsideArray_outError_fullRangeBeingAccessed_(self, a2, coerce, context, spec, index, array, error, &v10);

  return v8;
}

- (id)typeCheckAndCoerce:(id)coerce context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index fromInsideArray:(BOOL)array outError:(id *)error fullRangeBeingAccessed:(const TSCERangeRef *)accessed
{
  arrayCopy = array;
  argumentContext = self->_argumentContext;
  if ((argumentContext & 0xFFFFFFFE) != 4)
  {
    if (sub_2216F754C(self, coerce, context, context, spec))
    {
LABEL_8:
      v17 = objc_msgSend_nilValue(TSCENilValue, a2, coerce, context, spec);
      goto LABEL_17;
    }

    argumentContext = self->_argumentContext;
  }

  switch(argumentContext)
  {
    case 0:
    case 14:
    case 15:
      v17 = sub_22125B3AC(self, coerce, context, spec, index, 0, error);
      break;
    case 1:
      v17 = sub_22125B498(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 2:
      v17 = sub_22125B6D4(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 3:
      v17 = sub_22125BA08(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 4:
      v17 = sub_22125C0A8(self, coerce, context, spec, index, arrayCopy, error, accessed);
      break;
    case 5:
      v17 = sub_22125BCF8(self, coerce, context, spec, index, arrayCopy, error, accessed);
      break;
    case 6:
    case 7:
      v17 = sub_22125C434(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 8:
    case 9:
      v17 = sub_22125C95C(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 10:
    case 11:
      v17 = sub_22125CCD0(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 12:
      v17 = sub_22125D204(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 13:
      v17 = sub_22125D324(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 16:
      v17 = sub_22125D468(self, coerce, context, spec, index, 0, error);
      break;
    default:
      goto LABEL_8;
  }

LABEL_17:

  return v17;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type
{
  typeCopy = type;
  v4 = [TSCEFunctionArgSpec alloc];
  v7 = objc_msgSend_initWithArgumentType_accessorMode_(v4, v5, typeCopy, 1, v6);

  return v7;
}

+ (id)argSpecForFunctorWithNumLambdaIdentifiers:(unsigned __int16)identifiers
{
  result = objc_msgSend_argSpecWithType_(TSCEFunctionArgSpec, a2, 19, v3, v4);
  *(result + 41) = identifiers;
  return result;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode
{
  v4 = *&mode;
  typeCopy = type;
  v6 = [TSCEFunctionArgSpec alloc];
  v9 = objc_msgSend_initWithArgumentType_accessorMode_(v6, v7, typeCopy, v4, v8);

  return v9;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type typeOptions:(unsigned int)options
{
  v4 = *&options;
  typeCopy = type;
  v6 = [TSCEFunctionArgSpec alloc];
  v9 = objc_msgSend_initWithArgumentType_accessorMode_(v6, v7, typeCopy, 1, v8);
  objc_msgSend_setTypeOptions_(v9, v10, v4, v11, v12);

  return v9;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode argumentContext:(int)context
{
  v5 = *&context;
  v6 = *&mode;
  typeCopy = type;
  v8 = [TSCEFunctionArgSpec alloc];
  v11 = objc_msgSend_initWithArgumentType_accessorMode_(v8, v9, typeCopy, v6, v10);
  objc_msgSend_setArgumentContext_(v11, v12, v5, v13, v14);

  return v11;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type minValue:(double)value minInclusive:(BOOL)inclusive
{
  inclusiveCopy = inclusive;
  v8 = objc_msgSend_argSpecWithType_(self, a2, type, inclusive, v5);
  objc_msgSend_setMinValue_minInclusive_(v8, v9, inclusiveCopy, v10, v11, value);

  return v8;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)maxInclusive
{
  maxInclusiveCopy = maxInclusive;
  inclusiveCopy = inclusive;
  v11 = objc_msgSend_argSpecWithType_(self, a2, type, inclusive, maxInclusive);
  objc_msgSend_setMinValue_minInclusive_(v11, v12, inclusiveCopy, v13, v14, value);
  objc_msgSend_setMaxValue_maxInclusive_(v11, v15, maxInclusiveCopy, v16, v17, maxValue);

  return v11;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context
{
  contextCopy = context;
  v6 = *&mode;
  typeCopy = type;
  v8 = [TSCEFunctionArgSpec alloc];
  v11 = objc_msgSend_initWithArgumentType_accessorMode_(v8, v9, typeCopy, v6, v10);
  objc_msgSend_setRangeContext_(v11, v12, contextCopy, v13, v14);

  return v11;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context unwrapThunk:(BOOL)thunk
{
  thunkCopy = thunk;
  contextCopy = context;
  v8 = *&mode;
  typeCopy = type;
  v10 = [TSCEFunctionArgSpec alloc];
  v13 = objc_msgSend_initWithArgumentType_accessorMode_(v10, v11, typeCopy, v8, v12);
  objc_msgSend_setRangeContext_(v13, v14, contextCopy, v15, v16);
  objc_msgSend_setUnwrapThunk_(v13, v17, thunkCopy, v18, v19);
  if (!thunkCopy)
  {
    v24 = objc_msgSend_typeOptions(v13, v20, v21, v22, v23);
    objc_msgSend_setTypeOptions_(v13, v25, v24 | 0x40u, v26, v27);
  }

  return v13;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext
{
  v6 = *&argumentContext;
  contextCopy = context;
  v8 = *&mode;
  typeCopy = type;
  v10 = [TSCEFunctionArgSpec alloc];
  v12 = objc_msgSend_initWithArgumentType_accessorMode_argumentContext_(v10, v11, typeCopy, v8, v6);
  objc_msgSend_setRangeContext_(v12, v13, contextCopy, v14, v15);

  return v12;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext unwrapThunk:(BOOL)thunk
{
  thunkCopy = thunk;
  v8 = *&argumentContext;
  contextCopy = context;
  v10 = *&mode;
  typeCopy = type;
  v12 = [TSCEFunctionArgSpec alloc];
  v14 = objc_msgSend_initWithArgumentType_accessorMode_argumentContext_(v12, v13, typeCopy, v10, v8);
  objc_msgSend_setRangeContext_(v14, v15, contextCopy, v16, v17);
  objc_msgSend_setUnwrapThunk_(v14, v18, thunkCopy, v19, v20);
  if (!thunkCopy)
  {
    v25 = objc_msgSend_typeOptions(v14, v21, v22, v23, v24);
    objc_msgSend_setTypeOptions_(v14, v26, v25 | 0x40u, v27, v28);
  }

  return v14;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode typeOptions:(unsigned int)options
{
  v5 = *&options;
  v6 = *&mode;
  typeCopy = type;
  v8 = [TSCEFunctionArgSpec alloc];
  v11 = objc_msgSend_initWithArgumentType_accessorMode_(v8, v9, typeCopy, v6, v10);
  objc_msgSend_setTypeOptions_(v11, v12, v5, v13, v14);

  return v11;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode argumentContext:(int)context typeOptions:(unsigned int)options
{
  v6 = *&context;
  v7 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setArgumentContext_(v7, v8, v6, v9, v10);

  return v7;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context typeOptions:(unsigned int)options
{
  contextCopy = context;
  v7 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setRangeContext_(v7, v8, contextCopy, v9, v10);

  return v7;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index
{
  indexCopy = index;
  contextCopy = context;
  v10 = *&mode;
  typeCopy = type;
  v12 = [TSCEFunctionArgSpec alloc];
  v15 = objc_msgSend_initWithArgumentType_accessorMode_(v12, v13, typeCopy, v10, v14);
  objc_msgSend_setRangeContext_(v15, v16, contextCopy, v17, v18);
  objc_msgSend_setModeValues_defaultModeIndex_(v15, v19, values, indexCopy, v20);

  return v15;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index
{
  indexCopy = index;
  v10 = *&argumentContext;
  contextCopy = context;
  v12 = *&mode;
  typeCopy = type;
  v14 = [TSCEFunctionArgSpec alloc];
  v16 = objc_msgSend_initWithArgumentType_accessorMode_argumentContext_(v14, v15, typeCopy, v12, v10);
  objc_msgSend_setRangeContext_(v16, v17, contextCopy, v18, v19);
  objc_msgSend_setModeValues_defaultModeIndex_(v16, v20, values, indexCopy, v21);

  return v16;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext typeOptions:(unsigned int)options
{
  v7 = *&argumentContext;
  contextCopy = context;
  v9 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setArgumentContext_(v9, v10, v7, v11, v12);
  objc_msgSend_setRangeContext_(v9, v13, contextCopy, v14, v15);

  return v9;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)maxInclusive typeOptions:(unsigned int)self0
{
  maxInclusiveCopy = maxInclusive;
  inclusiveCopy = inclusive;
  contextCopy = context;
  v15 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setRangeContext_(v15, v16, contextCopy, v17, v18);
  objc_msgSend_setMinValue_minInclusive_(v15, v19, inclusiveCopy, v20, v21, value);
  objc_msgSend_setMaxValue_maxInclusive_(v15, v22, maxInclusiveCopy, v23, v24, maxValue);

  return v15;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context minValue:(double)value minInclusive:(BOOL)inclusive typeOptions:(unsigned int)options
{
  inclusiveCopy = inclusive;
  contextCopy = context;
  v11 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setRangeContext_(v11, v12, contextCopy, v13, v14);
  objc_msgSend_setMinValue_minInclusive_(v11, v15, inclusiveCopy, v16, v17, value);

  return v11;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)self0 typeOptions:(unsigned int)self1
{
  maxInclusiveCopy = maxInclusive;
  inclusiveCopy = inclusive;
  v15 = *&argumentContext;
  contextCopy = context;
  v17 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, options);
  objc_msgSend_setArgumentContext_(v17, v18, v15, v19, v20);
  objc_msgSend_setRangeContext_(v17, v21, contextCopy, v22, v23);
  objc_msgSend_setMinValue_minInclusive_(v17, v24, inclusiveCopy, v25, v26, value);
  objc_msgSend_setMaxValue_maxInclusive_(v17, v27, maxInclusiveCopy, v28, v29, maxValue);

  return v17;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive typeOptions:(unsigned int)options
{
  inclusiveCopy = inclusive;
  v11 = *&argumentContext;
  contextCopy = context;
  v13 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setArgumentContext_(v13, v14, v11, v15, v16);
  objc_msgSend_setRangeContext_(v13, v17, contextCopy, v18, v19);
  objc_msgSend_setMinValue_minInclusive_(v13, v20, inclusiveCopy, v21, v22, value);

  return v13;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext typeOptions:(unsigned int)options modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index
{
  v10 = *&argumentContext;
  contextCopy = context;
  v12 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setArgumentContext_(v12, v13, v10, v14, v15);
  objc_msgSend_setRangeContext_(v12, v16, contextCopy, v17, v18);
  objc_msgSend_setModeValues_defaultModeIndex_(v12, v19, values, index, v20);

  return v12;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)self0 typeOptions:(unsigned int)self1 modeValues:(const void *)self2 defaultModeIndex:(unsigned __int16)self3
{
  maxInclusiveCopy = maxInclusive;
  inclusiveCopy = inclusive;
  v17 = *&argumentContext;
  contextCopy = context;
  v19 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, options);
  objc_msgSend_setArgumentContext_(v19, v20, v17, v21, v22);
  objc_msgSend_setRangeContext_(v19, v23, contextCopy, v24, v25);
  objc_msgSend_setMinValue_minInclusive_(v19, v26, inclusiveCopy, v27, v28, value);
  objc_msgSend_setMaxValue_maxInclusive_(v19, v29, maxInclusiveCopy, v30, v31, maxValue);
  objc_msgSend_setModeValues_defaultModeIndex_(v19, v32, values, index, v33);

  return v19;
}

- (void)setModeValues:(const void *)values
{
  p_modeValues = &self->_modeValues;
  if (p_modeValues != values)
  {
    sub_22116CF34(p_modeValues, *values, *(values + 1), (*(values + 1) - *values) >> 3);
  }
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

@end