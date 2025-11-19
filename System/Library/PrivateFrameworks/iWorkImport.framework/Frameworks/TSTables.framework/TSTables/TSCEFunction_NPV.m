@interface TSCEFunction_NPV
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_NPV

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v87 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v87);
  v11 = v87;
  v85 = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  v86 = v16;
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
  }

  else
  {
    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      v24 = objc_msgSend_divideByZeroError(TSCEError, v20, v21, v22, v23);
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v25, v24, v26, v27);

      v11 = 0;
    }

    else
    {
      v28 = objc_msgSend_calcEngine(a3, v20, v21, v22, v23);
      sub_221327DF4(v83, a4, v28);

      v29 = *(*a5 + 8);
      v82 = 0;
      v72 = v29;
      v31 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v29, v30, a3, a4, 1, 1, &v82);
      v32 = v82;
      if (v32)
      {
        v11 = v32;
        v19 = objc_msgSend_raiseErrorOrConvert_(a3, v33, v32, v34, v35);
      }

      else
      {
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v40 = objc_msgSend_count(v31, v36, v37, v38, v39);
        v44 = a3;
        v75[0] = v44;
        v75[1] = a4;
        v76 = 0;
        v77[0] = 1;
        *(v77 + 7) = 0;
        v78 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v79 = 0;
        v80 = 0;
        if (v40)
        {
          v45 = 0;
          while (1)
          {
            v46 = objc_msgSend_valueAtIndex_accessContext_(v31, v41, v45, v75, v43);
            if ((objc_msgSend_isNil(v46, v47, v48, v49, v50) & 1) == 0)
            {
              v74 = 0;
              v52 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v46, v51, v44, a4, 1, &v74);
              v11 = v74;
              if (v11)
              {
                v19 = objc_msgSend_raiseErrorOrConvert_(v44, v53, v11, v54, v55);

                goto LABEL_20;
              }

              sub_2213188C0(v83, v52);
              TSUDecimal::operator=();
              v88 = v73;
              TSUDecimal::operator+=();
              TSUDecimal::operator*=();
              *&v88 = objc_msgSend_decimalRepresentation(v52, v56, v57, v58, v59);
              *(&v88 + 1) = v60;
              TSUDecimal::operator/=();
              TSUDecimal::operator+=();
              v61 = v84;

              if (v61)
              {
                break;
              }
            }

            if (v40 == ++v45)
            {
              goto LABEL_16;
            }
          }
        }

LABEL_16:
        if (v84)
        {
          v62 = objc_msgSend_raiseErrorOrConvert_(v44, v41, v84, v42, v43);
        }

        else
        {
          v63 = [TSCENumberValue alloc];
          v68 = sub_2213189D8(v83, v64, v65, v66, v67);
          v62 = objc_msgSend_initWithDecimal_baseUnit_(v63, v69, v81, v68, v70);
        }

        v19 = v62;
        v11 = 0;
LABEL_20:
      }
    }
  }

  return v19;
}

@end