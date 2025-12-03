@interface TSCEFunction_ROW
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ROW

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = MEMORY[0x277D80680];
  v9 = objc_msgSend_locale(context, a2, context, spec, arguments);
  v12 = objc_msgSend_defaultFormatWithFormatType_locale_(v8, v10, 256, v9, v11);

  if (*(arguments + 1) == *arguments)
  {
    objc_msgSend_containingCell(context, v13, v14, v15, v16);
    goto LABEL_6;
  }

  v17 = **arguments;
  if (objc_msgSend_isTokenOrEmptyArg(v17, v18, v19, v20, v21))
  {
    objc_msgSend_containingCell(context, v22, v23, v24, v25);
LABEL_4:

LABEL_6:
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(&v108, v12, 0);
    v28 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v26, &v111, &v108, v27);
    goto LABEL_27;
  }

  v112 = 0;
  v29 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v17, v22, context, spec, 0, &v112);
  v34 = v112;
  if (!v34)
  {
    if (objc_msgSend_isNil(v29, v30, v31, v32, v33))
    {
      v39 = objc_msgSend_functionName(spec, v35, v36, v37, v38);
      v43 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v40, v39, v41, v42);
      v47 = objc_msgSend_raiseErrorOrConvert_(context, v44, v43, v45, v46);
LABEL_11:
      v28 = v47;
LABEL_25:

      goto LABEL_26;
    }

    v111.i64[0] = objc_msgSend_range(v29, v35, v36, v37, v38);
    v111.i64[1] = v48;
    v52 = objc_msgSend_calcEngine(context, v48, v49, v50, v51);
    v108._tskFormat = objc_msgSend_tableUID(v29, v53, v54, v55, v56);
    *&v108._formatType = v57;
    v39 = objc_msgSend_tableResolverForTableUID_(v52, v57, &v108, v58, v59);

    if (v39)
    {
      objc_msgSend_tableRangeCoordinate(v39, v60, v61, v62, v63);
      v68 = v64;
      v69.i64[0] = 0xFFFFFFFFLL;
      v69.i64[1] = 0xFFFFFFFFLL;
      v70.i64[0] = 0xFFFF00000000;
      v70.i64[1] = 0xFFFF00000000;
      v71 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v111, v70), vdupq_n_s64(0x7FFF00000000uLL))));
      v72 = vuzp1_s16(v71, v71);
      v72.i32[1] = vuzp1_s16(v72, vmovn_s64(vceqq_s64(vandq_s8(v111, v69), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
      if (vminv_u16(v72))
      {
        if (objc_msgSend_isPivotTable(v39, v64, v65, v66, v67))
        {
          v77 = objc_msgSend_viewBodyRangeCoordinate(v39, v73, v74, v75, v76);
        }

        else
        {
          v78 = objc_msgSend_argumentSpecForIndex_(spec, v73, 0, v75, v76);
          v83 = objc_msgSend_rangeContext(v78, v79, v80, v81, v82);
          v77 = objc_msgSend_apparentRangeForRange_rangeContext_(v39, v84, &v111, v83, v85);
        }

        v111.i64[0] = v77;
        v111.i64[1] = v64;
      }

      if (objc_msgSend_isPivotTable(v39, v64, v65, v66, v67))
      {
        objc_msgSend_viewTableRangeCoordinate(v39, v60, v61, v62, v63);
        v68 = v60;
      }
    }

    else
    {
      v68 = 0x7FFFFFFF;
    }

    v86 = v111.i32[0];
    if ((v111.i32[2] - v111.i32[0] + 1) >= 2)
    {
      v43 = objc_opt_new();
      for (i = 0; v86 <= v111.i32[2]; ++v86)
      {
        TSUDecimal::operator=();
        TSCEFormat::TSCEFormat(&v108, v12, 0);
        v89 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v87, v109, &v108, v88);
        objc_msgSend_setValue_atCoord_(v43, v90, v89, &i, v91);
        ++HIDWORD(i);
      }

      v92 = [TSCEDenseGrid alloc];
      v96 = objc_msgSend_initWithValueGrid_(v92, v93, v43, v94, v95);
      v28 = objc_msgSend_gridValue_(TSCEGridValue, v97, v96, v98, v99);

      goto LABEL_25;
    }

    v101 = v111.i64[0] & 0xFFFF00000000;
    v102 = v111.i64[1] & 0xFFFF00000000;
    if (v111.u32[0] != 0x7FFFFFFFLL && v101 == 0x7FFF00000000 && v102 == 0x7FFF00000000 || v111.u32[0] != 0x7FFFFFFFLL || v101 == 0x7FFF00000000 || v102 == 0x7FFF00000000 || v111.u32[2] != 0x7FFFFFFFLL)
    {
      if (v111.i32[0] <= v68)
      {

        goto LABEL_4;
      }

      if (v29)
      {
        goto LABEL_35;
      }
    }

    else if (v29)
    {
LABEL_35:
      objc_msgSend_rangeRef(v29, v60, v61, v62, v63);
LABEL_44:
      v103 = objc_msgSend_containingTable(context, v60, v61, v62, v63, *&v108._tskFormat, *&v108._durationFormat);
      v43 = objc_msgSend_errorForInvalidReference_orString_contextEntityUID_(TSCEError, v104, &v108, 0, v103);
      v47 = objc_msgSend_raiseErrorOrConvert_(context, v105, v43, v106, v107);
      goto LABEL_11;
    }

    memset(&v108, 0, sizeof(v108));
    goto LABEL_44;
  }

  v28 = objc_msgSend_raiseErrorOrConvert_(context, v30, v34, v32, v33);
LABEL_26:

LABEL_27:

  return v28;
}

@end