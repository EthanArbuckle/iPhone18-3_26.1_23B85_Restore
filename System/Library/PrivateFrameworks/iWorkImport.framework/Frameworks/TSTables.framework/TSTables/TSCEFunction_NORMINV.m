@interface TSCEFunction_NORMINV
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_NORMINV

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v80 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v80);
  v11 = v80;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v18, v19);
  }

  else
  {
    v22 = v20;
    if (objc_msgSend_hasUnits(v10, v16, v17, v18, v19))
    {
      v27 = objc_msgSend_functionName(a4, v23, v24, v25, v26);
      v30 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v28, v27, 1, v29);
      v21 = objc_msgSend_raiseErrorOrConvert_(a3, v31, v30, v32, v33);
      v11 = 0;
    }

    else
    {
      v27 = *(*a5 + 8);
      v79 = 0;
      v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v34, a3, a4, 1, &v79);
      v35 = v79;
      if (v35)
      {
        v11 = v35;
        v21 = objc_msgSend_raiseErrorOrConvert_(a3, v36, v35, v37, v38);
      }

      else
      {
        v39 = *(*a5 + 16);
        v78 = 0;
        v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v40, a3, a4, 2, &v78);
        v11 = v78;
        if (v11)
        {
          v21 = objc_msgSend_raiseErrorOrConvert_(a3, v42, v11, v43, v44);
        }

        else
        {
          if (objc_msgSend_dimensionsMatchModuloCurrency_(v30, v42, v41, v43, v44))
          {
            pthread_mutex_lock(&stru_27CFB4098);
            sub_2214A7870(v22);
            TSUDecimal::operator=();
            v74 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v45, &v76, v46, v47);
            pthread_mutex_unlock(&stru_27CFB4098);
            v50 = objc_msgSend_multiply_context_(v74, v48, v41, a3, v49);
            v77 = 0;
            v52 = objc_msgSend_add_functionSpec_outError_(v50, v51, v30, a4, &v77);
            v11 = v77;

            if (v11)
            {
              v56 = v74;
              v57 = objc_msgSend_raiseErrorOrConvert_(a3, v53, v11, v54, v55);
            }

            else
            {
              v56 = v74;
              if (v27)
              {
                objc_msgSend_formatWithContext_(v27, v53, a3, v54, v55);
              }

              else
              {
                memset(&v75, 0, sizeof(v75));
              }

              TSCEFormat::TSCEFormat(&v76, &v75);
              objc_msgSend_setFormat_(v52, v70, &v76, v71, v72);
              v57 = v52;
            }

            v21 = v57;
          }

          else
          {
            v58 = sub_2212F6DF8();
            v56 = objc_msgSend_localizedStringForKey_value_table_(v58, v59, @"2 and 3", &stru_2834BADA0, @"TSCalculationEngine");

            v52 = objc_msgSend_functionName(a4, v60, v61, v62, v63);
            v66 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v64, v52, v56, v65);
            v21 = objc_msgSend_raiseErrorOrConvert_(a3, v67, v66, v68, v69);

            v11 = 0;
          }
        }
      }
    }
  }

  return v21;
}

@end