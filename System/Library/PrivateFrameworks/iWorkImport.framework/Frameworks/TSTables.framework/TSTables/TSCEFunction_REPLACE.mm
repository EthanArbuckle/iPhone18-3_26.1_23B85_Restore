@interface TSCEFunction_REPLACE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_REPLACE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    memset(&v102, 0, sizeof(v102));
  }

  sub_22114F414(&v103, &v102);
  v98 = 0;
  if (v12)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v12, v13, a3, a4, 0, &v98);
    v14 = v98;
    if (v14)
    {
      v18 = v14;
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v15, v14, v16, v17);
      goto LABEL_38;
    }
  }

  else
  {
    v99 = 0;
    v100 = 0;
    v101 = 0;
  }

  v20 = *(*a5 + 8);
  if (objc_msgSend_isEmptyArg(v20, v21, v22, v23, v24))
  {
    v29 = objc_msgSend_functionName(a4, v25, v26, v27, v28);
    v31 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v30, 2, v29, 1, 1.0);
    v19 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v31, v33, v34);
    v18 = 0;
LABEL_36:

    goto LABEL_37;
  }

  if (v20)
  {
    objc_msgSend_formatWithContext_(v20, v25, a3, v27, v28);
  }

  else
  {
    memset(&v102, 0, sizeof(v102));
  }

  sub_22114F414(&v103, &v102);
  v97 = 0;
  v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v35, a3, a4, 1, &v97);
  v36 = v97;
  if (!v36)
  {
    v102._tskFormat = objc_msgSend_decimalRepresentation(v29, v37, v38, v39, v40);
    *&v102._formatType = v41;
    v42 = TSUDecimal::truncateWithRounding(&v102);
    v47 = sub_2210772BC(&v99, v43, v44, v45, v46);
    v48 = v42 - 1;
    v49 = v42 - 1;
    v50 = sub_22157EFF8(v47, v48);

    v51 = *(*a5 + 16);
    v31 = v51;
    if (v51)
    {
      objc_msgSend_formatWithContext_(v51, v52, a3, v53, v54);
    }

    else
    {
      memset(&v102, 0, sizeof(v102));
    }

    sub_22114F414(&v103, &v102);
    v92 = v50;
    v96 = 0;
    v93 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v31, v55, a3, a4, 2, &v96);
    v56 = v96;
    if (v56)
    {
      v18 = v56;
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v57, v56, v59, v60);
LABEL_35:

      goto LABEL_36;
    }

    v102._tskFormat = objc_msgSend_decimalRepresentation(v93, v57, v58, v59, v60);
    *&v102._formatType = v61;
    v62 = TSUDecimal::truncateWithRounding(&v102);
    v67 = sub_2210772BC(&v99, v63, v64, v65, v66);
    v68 = sub_22157EFF8(v67, v49 + v62);

    v69 = *(*a5 + 24);
    v73 = v69;
    if (v69)
    {
      objc_msgSend_formatWithContext_(v69, v70, a3, v71, v72);
    }

    else
    {
      memset(&v102, 0, sizeof(v102));
    }

    sub_22114F414(&v103, &v102);
    v95 = 0;
    if (v73)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v73, v74, a3, a4, 3, &v95);
      v78 = v95;
      if (v78)
      {
        v18 = v78;
        v19 = objc_msgSend_raiseErrorOrConvert_(a3, v74, v78, v76, v77);
LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      memset(&v102, 0, 24);
    }

    v79 = sub_221078910(&v99, v74, v75, v76, v77);
    sub_221077078(&v99, v80, v81, v82, v83, v94);
    if (v92 >= v79)
    {
      v85 = v79;
    }

    else
    {
      v85 = v92;
    }

    if (&v85[v68 - v92] <= v79)
    {
      v86 = v68 - v92;
    }

    else
    {
      v86 = v79 - v85;
    }

    sub_221077D90(v94, v85, v86, &v102, v84);
    v19 = sub_2210789F4(v94, v87, v88, v89, v90);

    v18 = 0;
    goto LABEL_34;
  }

  v18 = v36;
  v19 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v36, v39, v40);
LABEL_37:

LABEL_38:
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  return v19;
}

@end