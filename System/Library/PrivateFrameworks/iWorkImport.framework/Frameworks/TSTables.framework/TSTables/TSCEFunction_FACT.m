@interface TSCEFunction_FACT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_FACT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  TSUDecimal::operator=();
  v11 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v8, &v14, v9, v10);
  v12 = sub_2212570BC(a3, a4, v7, v11, v11);

  return v12;
}

@end