@interface TSCEFunction_AVEDEV
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_AVEDEV

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v92[0] = 0;
  v75 = v7;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, a3, a4, 0, 1, v92);
  v10 = v92[0];
  v77 = v9;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v12, v13);
  }

  else
  {
    v76 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_(TSCEFunction_AVERAGE, v11, a3, a4, v9, 0);
    v20 = objc_msgSend_count(v9, v16, v17, v18, v19);
    v80 = objc_msgSend_zero(TSCENumberValue, v21, v22, v23, v24);
    v27 = a3;
    v86[0] = v27;
    v86[1] = a4;
    v87 = 0;
    v88[0] = 0;
    *(v88 + 7) = 0;
    v89 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v90 = 0;
    v91 = 0;
    if (v20)
    {
      v28 = 0;
      v79 = 0;
      v29 = 0;
      do
      {
        v30 = objc_msgSend_valueAtIndex_accessContext_(v9, v25, v28, v86, v26);
        if (objc_msgSend_isError(v30, v31, v32, v33, v34))
        {
          v74 = objc_msgSend_errorWithContext_(v30, v35, v27, v37, v38);
          v15 = objc_msgSend_raiseErrorOrConvert_(v27, v67, v74, v68, v69);
          v14 = 0;
          goto LABEL_23;
        }

        if ((objc_msgSend_isNil(v30, v35, v36, v37, v38) & 1) == 0)
        {
          v40 = objc_msgSend_computeSubtraction_functionSpec_left_leftArgumentIndex_right_rightArgumentIndex_(TSCEFunction_op_Subtract, v39, v27, a4, v30, 0, v76, 0);
          v85 = 0;
          v78 = v40;
          v41 = v27;
          v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v42, v27, a4, 0, &v85);
          v44 = v85;
          if (v44)
          {
            v14 = v44;
            v15 = objc_msgSend_raiseErrorOrConvert_(v41, v45, v44, v47, v48);

            v74 = v78;
            goto LABEL_23;
          }

          v49 = objc_msgSend_abs(v43, v45, v46, v47, v48);
          v51 = v49;
          if (v29)
          {
            v84 = 0;
            v52 = objc_msgSend_add_functionSpec_outError_(v80, v50, v49, a4, &v84);
            v53 = v84;

            if (v53)
            {
              v15 = objc_msgSend_raiseErrorOrConvert_(v41, v54, v53, v55, v56);

              v80 = v52;
              v9 = v77;
              v74 = v78;
              v14 = v53;
              goto LABEL_23;
            }
          }

          else
          {
            v52 = v49;
          }

          ++v79;

          v29 = 1;
          v80 = v52;
          v9 = v77;
          v27 = v41;
        }

        ++v28;
      }

      while (v20 != v28);
    }

    TSUDecimal::operator=();
    v30 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v57, &v82, v58, v59);
    v83 = 0;
    v74 = objc_msgSend_divide_outError_(v80, v60, v30, &v83, v61);
    v62 = v27;
    v14 = v83;
    if (v14)
    {
      v66 = objc_msgSend_raiseErrorOrConvert_(v62, v63, v14, v64, v65);
    }

    else
    {
      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v63, v62, v64, v65);
      }

      else
      {
        memset(&v81, 0, sizeof(v81));
      }

      TSCEFormat::TSCEFormat(&v82, &v81);
      objc_msgSend_setFormat_(v74, v70, &v82, v71, v72);
      v66 = v74;
      v74 = v66;
    }

    v15 = v66;
LABEL_23:
  }

  return v15;
}

@end