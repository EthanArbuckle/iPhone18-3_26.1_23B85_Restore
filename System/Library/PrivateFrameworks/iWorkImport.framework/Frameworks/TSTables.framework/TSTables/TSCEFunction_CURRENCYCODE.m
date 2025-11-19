@interface TSCEFunction_CURRENCYCODE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CURRENCYCODE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  if (*(a5 + 1) == *a5 || (objc_msgSend_isTokenOrEmptyArg(**a5, a2, a3, a4, a5) & 1) != 0)
  {
    v8 = objc_msgSend_nilValue(TSCENilValue, a2, a3, a4, a5);
    v9 = sub_22119E890(a3, v8);

    objc_msgSend_stringValue_(TSCEStringValue, v10, v9, v11, v12);
    v13 = LABEL_4:;
    goto LABEL_5;
  }

  v15 = **a5;
  v25 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v16, a3, a4, 0, &v25);
  v9 = v25;
  if (!v9)
  {
    v21 = sub_22119E890(a3, v17);

    v9 = v21;
    objc_msgSend_stringValue_(TSCEStringValue, v22, v21, v23, v24);
    goto LABEL_4;
  }

  v13 = objc_msgSend_raiseErrorOrConvert_(a3, v18, v9, v19, v20);

LABEL_5:

  return v13;
}

@end