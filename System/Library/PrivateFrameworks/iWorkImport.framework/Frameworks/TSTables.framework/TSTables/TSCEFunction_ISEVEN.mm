@interface TSCEFunction_ISEVEN
+ (BOOL)isEven:(id)even value:(const TSUDecimal *)value warningType:(int64_t)type;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISEVEN

+ (BOOL)isEven:(id)even value:(const TSUDecimal *)value warningType:(int64_t)type
{
  evenCopy = even;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::split(value, &v15, &v14);
  if ((TSUDecimal::isZero(&v14) & 1) == 0)
  {
    objc_msgSend_reportWarningInContext_warningType_(TSCEWarning, v8, evenCopy, type, v9);
  }

  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::mod(&v15, &v12, &v13);
  isZero = TSUDecimal::isZero(&v13);

  return isZero;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v30 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v30);
  v14 = v30;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v14, v12, v13);
  }

  else
  {
    v29[0] = objc_msgSend_decimalRepresentation(v9, v10, v11, v12, v13);
    v29[1] = v16;
    isEven_value_warningType = objc_msgSend_isEven_value_warningType_(TSCEFunction_ISEVEN, v16, context, v29, 104);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1057;
    v26 = 1;
    v27 = -50266102;
    v28 = 253;
    v15 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v18, isEven_value_warningType, &v22, v19);
  }

  v20 = v15;

  return v20;
}

@end