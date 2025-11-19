@interface TSCEFunction_MROUND
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_MROUND

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v9 = *(*a5 + 8);
  v70 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, a3, a4, 0, &v70);
  v12 = v70;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v14, v15);
  }

  else
  {
    v69 = 0;
    v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, a3, a4, 1, &v69);
    v16 = v69;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v19, v16, v20, v21);
    }

    else
    {
      v25 = objc_msgSend_errorForDuration_argumentIndex_(v11, v19, a4, 0, v21);
      if (v25 || (objc_msgSend_errorForDuration_argumentIndex_(v18, v22, a4, 1, v24), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(a3, v22, v25, v23, v24);
        v16 = v25;
      }

      else
      {
        v32 = objc_msgSend_zero(TSCENumberValue, v22, v26, v23, v24);
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v28, a3, v30, v31);
        }

        else
        {
          memset(&v67, 0, sizeof(v67));
        }

        if (v9)
        {
          objc_msgSend_formatWithContext_(v9, v28, a3, v30, v31);
        }

        else
        {
          memset(&v66, 0, sizeof(v66));
        }

        TSCEFormat::formatByMergingWithFormat(&v67, &v66, v29, v30, v31, &v68);
        v66._tskFormat = objc_msgSend_decimalRepresentation(v11, v33, v34, v35, v36);
        *&v66._formatType = v37;
        v65._decimal.w[0] = objc_msgSend_decimalRepresentation(v18, v37, v38, v39, v40);
        v65._decimal.w[1] = v41;
        v64 = *&v66._tskFormat;
        TSUDecimal::operator=();
        if (TSUDecimal::operator<=() & 1) == 0 && (TSUDecimal::operator=(), (TSUDecimal::operator<()) || (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
        {
          v49 = objc_msgSend_functionName(a4, v42, v43, v44, v45);
          v53 = objc_msgSend_signsMustMatchErrorForFunctionName_(TSCEError, v50, v49, v51, v52);
          v17 = objc_msgSend_raiseErrorOrConvert_(a3, v54, v53, v55, v56);
        }

        else
        {
          TSUDecimal::operator=();
          if (TSUDecimal::operator==())
          {
            TSCEFormat::TSCEFormat(&v67, &v68);
            objc_msgSend_setFormat_(v32, v46, &v67, v47, v48);
            v17 = v32;
          }

          else
          {
            TSUDecimal::operator=();
            TSUDecimal::remainder(&v66, &v65, &v63);
            *&v67._tskFormat = v63;
            TSUDecimal::operator*=();
            TSUDecimal::operator=();
            if (TSUDecimal::operator<())
            {
              TSUDecimal::operator+=();
            }

            TSUDecimal::operator-=();
            TSUDecimal::operator=();
            if (TSUDecimal::operator<=() & 1) == 0 && (TSUDecimal::operator=(), *&v67._tskFormat = v63, TSUDecimal::operator+=(), TSUDecimal::operator=(), *&v67._tskFormat = v65, TSUDecimal::operator/=(), (sub_2212AD924()) || (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::operator=(), *&v67._tskFormat = v63, TSUDecimal::operator-=(), TSUDecimal::operator=(), *&v67._tskFormat = v65, TSUDecimal::operator/=(), (TSUDecimal::operator<=()))
            {
              TSUDecimal::operator+=();
            }

            v17 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v57, &v64, v58, v59);
            TSCEFormat::TSCEFormat(&v67, &v68);
            objc_msgSend_setFormat_(v17, v60, &v67, v61, v62);
          }
        }

        v16 = 0;
      }
    }
  }

  return v17;
}

@end