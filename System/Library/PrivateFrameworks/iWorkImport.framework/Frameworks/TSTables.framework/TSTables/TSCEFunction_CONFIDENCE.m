@interface TSCEFunction_CONFIDENCE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CONFIDENCE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v78 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v78);
  v11 = v78;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  v17 = v16;

  if (v11)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(a3, v18, v11, v19, v20);
  }

  else
  {
    v22 = (1.0 - v17) * 0.886226925;
    v23 = pow(v22, 5.0) * 7.0 / 30.0 + v22 + v22 * (v22 * v22) / 3.0;
    v24 = pow(v22, 7.0) * 127.0 / 630.0 + v23;
    v25 = pow(v22, 9.0) * 4369.0 / 22680.0 + v24;
    v26 = pow(v22, 11.0) * 243649.0 / 1247400.0 + v25;
    v27 = pow(v22, 13.0) * 20036983.0 / 97297200.0 + v26;
    v28 = v27 + pow(v22, 15.0) * 0.223209757;
    v29 = v28 + pow(v22, 17.0) * 0.246970233;
    v30 = v29 + pow(v22, 19.0) * 0.277653826;
    v31 = v30 + pow(v22, 21.0) * 0.316142624;
    v32 = v31 + pow(v22, 23.0) * 0.363717587;
    v33 = v32 + pow(v22, 25.0) * 0.422072081;
    v34 = v33 + pow(v22, 27.0) * 0.493363266;
    if (v22 > 0.1)
    {
      do
      {
        v35 = -(v34 * v34);
        v36 = 1.0;
        v37 = 1;
        v38 = 3;
        v39 = v34;
        v40 = v34;
        do
        {
          v39 = v35 * v39;
          v36 = v36 * v37;
          v41 = v39 / (v36 * v38);
          v40 = v40 + v41;
          ++v37;
          v38 += 2;
        }

        while (fabs(v41) > 1.0e-16);
        v42 = v22 - v40;
        v34 = v34 + (v22 - v40) / exp(v35);
      }

      while (v42 > 1.0e-16);
    }

    v43 = *(*a5 + 8);
    v44 = *(*a5 + 16);
    v77 = 0;
    v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v43, v45, a3, a4, 1, &v77);
    v47 = v77;
    objc_msgSend_doubleRepresentation(v46, v48, v49, v50, v51);

    v76 = v47;
    v53 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v52, a3, a4, 2, &v76);
    v11 = v76;

    objc_msgSend_doubleRepresentation(v53, v54, v55, v56, v57);
    if (v11)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(a3, v58, v11, v59, v60);
    }

    else
    {
      sub_2212B7230(__p, 3uLL);
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v61, a3, v62, v63);
      }

      else
      {
        memset(&v74, 0, sizeof(v74));
      }

      sub_22114F414(__p, &v74);
      if (v43)
      {
        objc_msgSend_formatWithContext_(v43, v64, a3, v65, v66);
      }

      else
      {
        memset(&v74, 0, sizeof(v74));
      }

      sub_22114F414(__p, &v74);
      if (v44)
      {
        objc_msgSend_formatWithContext_(v44, v67, a3, v68, v69);
      }

      else
      {
        memset(&v74, 0, sizeof(v74));
      }

      sub_22114F414(__p, &v74);
      TSUDecimal::operator=();
      sub_221256020(__p, &v74);
      v21 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v70, &v73, &v74, v71);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return v21;
}

@end