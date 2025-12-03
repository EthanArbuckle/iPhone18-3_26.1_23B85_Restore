@interface TSCEFunction_CURRENCYCODE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CURRENCYCODE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  if (*(arguments + 1) == *arguments || (objc_msgSend_isTokenOrEmptyArg(**arguments, a2, context, spec, arguments) & 1) != 0)
  {
    v8 = objc_msgSend_nilValue(TSCENilValue, a2, context, spec, arguments);
    v9 = sub_22119E890(context, v8);

    objc_msgSend_stringValue_(TSCEStringValue, v10, v9, v11, v12);
    v13 = LABEL_4:;
    goto LABEL_5;
  }

  v15 = **arguments;
  v25 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v16, context, spec, 0, &v25);
  v9 = v25;
  if (!v9)
  {
    v21 = sub_22119E890(context, v17);

    v9 = v21;
    objc_msgSend_stringValue_(TSCEStringValue, v22, v21, v23, v24);
    goto LABEL_4;
  }

  v13 = objc_msgSend_raiseErrorOrConvert_(context, v18, v9, v19, v20);

LABEL_5:

  return v13;
}

@end