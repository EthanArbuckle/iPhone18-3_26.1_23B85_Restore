@interface TSCEFunction_op_EQ
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_EQ

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v8 = *(*arguments + 8);
  v17 = 0;
  v10 = objc_msgSend_valuesAreEqualLeft_right_context_outError_(TSCEValue, v9, v7, v8, context, &v17);
  v14 = v17;
  if (v14)
  {
    objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v12, v13);
  }

  else
  {
    objc_msgSend_BOOLValue_(TSCEBooleanValue, v11, v10, v12, v13);
  }
  v15 = ;

  return v15;
}

@end