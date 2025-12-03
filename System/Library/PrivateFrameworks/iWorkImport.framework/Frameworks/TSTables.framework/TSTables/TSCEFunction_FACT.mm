@interface TSCEFunction_FACT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FACT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  TSUDecimal::operator=();
  v11 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v8, &v14, v9, v10);
  v12 = sub_2212570BC(context, spec, v7, v11, v11);

  return v12;
}

@end