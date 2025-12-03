@interface TSCEFunction_UNIQUE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_UNIQUE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v95 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, &v95);
  v10 = v95;
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13, v14);
    goto LABEL_31;
  }

  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v34 = 0;
    v35 = 1;
LABEL_23:
    v61 = objc_msgSend_dimensions(v9, v11, v12, v13, v14);
    if (!(HIDWORD(v61) * v61))
    {
      v17 = objc_msgSend_emptyArrayError(TSCEError, v57, v58, v59, v60);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v66, v17, v67, v68);
      v15 = 0;
      goto LABEL_30;
    }

    v17 = objc_msgSend_uniqueIndexesFor2DGrid_functionSpec_argumentIndex_byRowProcessing_uniqueMode_(v9, v57, context, spec, 0, v35, v34);
    v50 = objc_opt_new();
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x7812000000;
    v84[3] = sub_2212163F4;
    v84[4] = sub_221216428;
    contextCopy = context;
    v86 = 0;
    v87 = 0;
    v88[0] = 0xFFFFFFFFLL;
    *(v88 + 7) = 0;
    v89 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v90 = 0;
    v91 = 0;
    v83[0] = 0;
    v83[1] = v83;
    v83[2] = 0x3812000000;
    v83[3] = sub_221216464;
    v83[4] = nullsub_30;
    v83[5] = &unk_22188E88F;
    v83[6] = 0;
    if (v35)
    {
      v62 = v82;
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = sub_221216474;
      v82[3] = &unk_278461630;
      v82[8] = v61;
      v82[4] = v9;
      v82[6] = v84;
      v82[5] = v50;
      v82[7] = v83;
      v82[9] = 1;
      objc_msgSend_enumerateIndexesUsingBlock_(v17, v63, v82, v64, v65);
    }

    else
    {
      v62 = v81;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = sub_221216538;
      v81[3] = &unk_278461630;
      v81[8] = v61;
      v81[4] = v9;
      v81[6] = v84;
      v81[5] = v50;
      v81[7] = v83;
      v81[9] = 0x100000000;
      objc_msgSend_enumerateIndexesUsingBlock_(v17, v69, v81, v70, v71);
    }

    v72 = [TSCEDenseGrid alloc];
    v76 = objc_msgSend_initWithValueGrid_(v72, v73, v50, v74, v75);
    v16 = objc_msgSend_gridValue_(TSCEGridValue, v77, v76, v78, v79);

    _Block_object_dispose(v83, 8);
    _Block_object_dispose(v84, 8);

    v15 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v17 = *(*arguments + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v17, v18, v19, v20, v21) & 1) != 0 || (v25 = objc_msgSend_deepType_(v17, v22, context, v23, v24), v25 == 10))
  {
    v32 = 0;
LABEL_11:

    v35 = v32 == 0;
    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v34 = 0;
    }

    else
    {
      v17 = *(*arguments + 16);
      if (objc_msgSend_isTokenOrEmptyArg(v17, v36, v37, v38, v39))
      {
        v34 = 0;
      }

      else
      {
        v92 = 0;
        LODWORD(v34) = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v17, v40, context, spec, 2, &v92);
        v41 = v92;
        if (v41)
        {
          v15 = v41;
          v33 = objc_msgSend_raiseErrorOrConvert_(context, v42, v41, v43, v44);
          goto LABEL_17;
        }

        v34 = v34;
      }
    }

    goto LABEL_23;
  }

  if (v25 != 2)
  {
    v93 = 0;
    v45 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v26, context, spec, 1, &v93);
    v15 = v93;
    v32 = objc_msgSend_integer(v45, v46, v47, v48, v49);

    if (v15)
    {
      goto LABEL_8;
    }

LABEL_19:
    if (v32 >= 2)
    {
      v50 = objc_msgSend_functionName(spec, v28, v29, v30, v31);
      v53 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v51, v50, 2, v52);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v54, v53, v55, v56);

      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v94 = 0;
  v27 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v17, v26, context, spec, 1, &v94);
  v15 = v94;
  v32 = v27;
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_8:
  v33 = objc_msgSend_raiseErrorOrConvert_(context, v28, v15, v30, v31);
LABEL_17:
  v16 = v33;
LABEL_30:

LABEL_31:

  return v16;
}

@end