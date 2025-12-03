@interface TSCEFunction_NEGBINOMDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NEGBINOMDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v76[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v76);
  v11 = v76[0];
  v16 = objc_msgSend_trunc(v10, v12, v13, v14, v15);

  v24 = objc_msgSend_decimalRepresentation(v16, v17, v18, v19, v20);
  v25 = v21;
  v75._decimal.w[0] = v24;
  v75._decimal.w[1] = v21;
  if (v11)
  {
    v26 = objc_msgSend_raiseErrorOrConvert_(context, v21, v11, v22, v23);
  }

  else
  {
    v27 = *(*arguments + 8);
    v74 = 0;
    v64 = v27;
    v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v28, context, spec, 1, &v74);
    v11 = v74;
    v34 = objc_msgSend_trunc(v29, v30, v31, v32, v33);

    v73._decimal.w[0] = objc_msgSend_decimalRepresentation(v34, v35, v36, v37, v38);
    v73._decimal.w[1] = v39;
    if (v11)
    {
      v26 = objc_msgSend_raiseErrorOrConvert_(context, v39, v11, v40, v41);
    }

    else
    {
      v42 = *(*arguments + 16);
      v72 = 0;
      v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v43, context, spec, 2, &v72);
      v11 = v72;
      v71._decimal.w[0] = objc_msgSend_decimalRepresentation(v44, v45, v46, v47, v48);
      v71._decimal.w[1] = v49;
      if (v11)
      {
        v52 = objc_msgSend_raiseErrorOrConvert_(context, v49, v11, v50, v51);
      }

      else
      {
        v65 = v75;
        TSUDecimal::operator+=();
        TSUDecimal::operator=();
        TSUDecimal::operator-=();
        v70[0] = objc_msgSend_COMBINFunctionWithN_K_(TSCEFunction_COMBIN, v53, v65._decimal.w[0], v65._decimal.w[1], v24, v25);
        v70[1] = v54;
        TSUDecimal::doubleValue(&v71);
        v56 = v55;
        TSUDecimal::doubleValue(&v73);
        pow(v56, v57);
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        TSUDecimal::operator-=();
        v67 = v66;
        TSUDecimal::doubleValue(&v67);
        v59 = v58;
        TSUDecimal::doubleValue(&v75);
        pow(v59, v60);
        TSUDecimal::operator=();
        v68 = v66;
        TSUDecimal::operator*=();
        v69 = v65;
        TSUDecimal::operator*=();
        TSCEFormat::TSCEFormat(&v65, 256);
        v52 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v61, v70, &v65, v62);
      }

      v26 = v52;
    }
  }

  return v26;
}

@end