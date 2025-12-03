@interface TSCEFunction_ODD
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ODD

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v28 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v28);
  v13 = v28;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v11, v12);
  }

  else
  {
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v26._decimal.w[0] = objc_msgSend_decimalRepresentation(v9, v15, v16, v17, v18);
    v26._decimal.w[1] = v19;
    if (TSUDecimal::isNegative(&v26))
    {
      TSUDecimal::floor(&v26);
      TSUDecimal::negate(&v26);
      TSUDecimal::operator=();
      TSUDecimal::mod(&v26, &v27, v25);
      TSUDecimal::negate(&v26);
      if ((TSUDecimal::operator==() & 1) == 0)
      {
        TSUDecimal::operator-=();
      }
    }

    else
    {
      TSUDecimal::ceiling(&v26);
      TSUDecimal::operator=();
      TSUDecimal::mod(&v26, &v27, v25);
      if ((TSUDecimal::operator==() & 1) == 0)
      {
        TSUDecimal::operator+=();
      }
    }

    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v20, context, v21, v22);
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v20, &v26, v25, v22);
  }

  v23 = v14;

  return v23;
}

@end