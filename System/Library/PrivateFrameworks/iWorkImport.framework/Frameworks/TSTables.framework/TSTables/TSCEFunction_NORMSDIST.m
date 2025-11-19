@interface TSCEFunction_NORMSDIST
+ (double)probabilityWithZ:(double)a3;
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_NORMSDIST

+ (double)probabilityWithZ:(double)a3
{
  v3 = trunc(a3);
  if (fabs(a3) <= 1000.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = v3;
  }

  pthread_mutex_lock(&stru_27CFB4098);
  if (v4 >= 0.0)
  {
    sub_221272900(v4);
    v6 = v7;
  }

  else
  {
    sub_221272900(-v4);
    v6 = 1.0 - v5;
  }

  pthread_mutex_unlock(&stru_27CFB4098);
  return v6;
}

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v27 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v27);
  v14 = v27;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v14, v12, v13);
  }

  else
  {
    objc_msgSend_doubleRepresentation(v9, v10, v11, v12, v13);
    objc_msgSend_probabilityWithZ_(TSCEFunction_NORMSDIST, v16, v17, v18, v19);
    TSUDecimal::operator=();
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v20, a3, v21, v22);
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    v15 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v20, v26, v25, v22);
  }

  v23 = v15;

  return v23;
}

@end