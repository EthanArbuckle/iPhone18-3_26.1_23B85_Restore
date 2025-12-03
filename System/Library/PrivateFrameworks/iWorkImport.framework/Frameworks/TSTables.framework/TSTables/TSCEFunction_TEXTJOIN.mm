@interface TSCEFunction_TEXTJOIN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TEXTJOIN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  contextCopy = context;
  v110[0] = contextCopy;
  v110[1] = spec;
  specCopy = spec;
  v111 = 0;
  v112[0] = 2;
  *(v112 + 7) = 0;
  v113 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v114 = 0;
  v115 = 0;
  v108 = 0;
  v109[0] = 0;
  *(v109 + 7) = 0;
  memset(v107, 0, 19);
  v12 = *arguments;
  v13 = *(arguments + 1);
  if (v13 != *arguments)
  {
    v14 = *v12;
    v18 = objc_msgSend_deepType_(v14, v15, contextCopy, v16, v17);
    if (v18 != 10 && v18 != 12)
    {
      v106 = 0;
      v49 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v14, v19, contextCopy, spec, 0, &v106);
      v50 = v106;
      sub_221077074(&v95);
      v51 = v95;
      v95 = 0;
      v52 = v107[0];
      v107[0] = v51;

      v53 = v96;
      v96 = 0;
      v54 = v107[1];
      v107[1] = v53;

      LOWORD(v107[2]) = v97;
      BYTE2(v107[2]) = BYTE2(v97);

      if (v50)
      {
        v58 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v55, v50, v56, v57);
        goto LABEL_51;
      }
    }

    v12 = *arguments;
    v13 = *(arguments + 1);
  }

  if ((v13 - v12) >= 9)
  {
    v14 = v12[1];
    if (objc_msgSend_isTokenOrEmptyArg(v14, v21, v22, v23, v24))
    {
      v27 = 1;
      goto LABEL_11;
    }

    v105 = 0;
    v44 = objc_msgSend_deepType_outError_(v14, v25, contextCopy, &v105, v26);
    v45 = v105;
    v50 = v45;
    if (v44 == 10)
    {
      v27 = 1;
      if (!v45)
      {
LABEL_11:

        if (*(arguments + 1) - *arguments < 0x11uLL)
        {
          v14 = 0;
          v50 = 0;
          v39 = objc_msgSend_count(0, v28, v29, v30, v31, specCopy);
        }

        else
        {
          v32 = *(*arguments + 16);
          v103 = 0;
          v34 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v32, v33, contextCopy, specCopy, 2, 0, &v103);
          v50 = v103;

          v14 = v34;
          v39 = objc_msgSend_count(v34, v35, v36, v37, v38, specCopy);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v104 = v45;
      v27 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v14, v46, contextCopy, specCopy, 1, &v104);
      v90 = v104;

      v50 = v90;
      if (!v90)
      {
        goto LABEL_11;
      }
    }

    v58 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v46, v50, v47, v48, specCopy);
    goto LABEL_51;
  }

  v14 = 0;
  v50 = 0;
  v27 = 1;
  v39 = objc_msgSend_count(0, v7, v8, v9, v10, specCopy);
LABEL_20:
  v59 = v39;
  if (!v39)
  {
    goto LABEL_50;
  }

  v94 = v14;
  v60 = 0;
  v61 = 0;
  isRegexString = 1;
  do
  {
    v63 = objc_msgSend_valueAtIndex_accessContext_(v94, v40, v60, v110, v43);
    v67 = objc_msgSend_deepType_(v63, v64, contextCopy, v65, v66);
    if (v67 == 9)
    {
      v86 = objc_msgSend_errorWithContext_(v63, v68, contextCopy, v70, v71);
      v14 = v94;
      v85 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v87, v86, v88, v89);

      goto LABEL_46;
    }

    if (v27)
    {
      if (!v67)
      {
        goto LABEL_41;
      }

      v102 = v50;
      v72 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v63, v68, contextCopy, v93, 0, &v102);
      v73 = v102;

      v78 = objc_msgSend_length(v72, v74, v75, v76, v77);
      if (!v78)
      {
        v50 = v73;
        goto LABEL_41;
      }
    }

    else
    {
      v73 = v50;
    }

    v101 = v73;
    if (v63)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v63, v68, contextCopy, v93, 0, &v101);
      v79 = v101;

      v73 = v79;
      if (v79)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v95 = 0;
      v96 = 0;
      v97 = 0;
      if (v73)
      {
LABEL_45:
        v85 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v68, v73, v70, v71);

        v50 = v73;
        v14 = v94;
        goto LABEL_46;
      }
    }

    if (v27)
    {
      if (!sub_221078910(&v108, v68, v69, v70, v71))
      {
        goto LABEL_37;
      }

LABEL_36:
      sub_221077424(&v108, v107, contextCopy);
      goto LABEL_37;
    }

    if (v60)
    {
      goto LABEL_36;
    }

LABEL_37:
    sub_221077424(&v108, &v95, contextCopy);
    if (isRegexString)
    {
      isRegexString = objc_msgSend_isRegexString(v63, v80, v81, v82, v83);
      v61 |= isRegexString;
    }

    else
    {
      isRegexString = 0;
    }

    v50 = 0;
LABEL_41:

    ++v60;
  }

  while (v59 != v60);
  if (isRegexString & v61)
  {
    v14 = v94;
    v63 = sub_2210772BC(&v108, v40, v41, v42, v43);
    v95 = 0;
    LODWORD(v96) = 0;
    BYTE4(v96) = 0;
    LOWORD(v97) = v97 & 0xC080 | 0x421;
    BYTE2(v97) = BYTE2(v97) & 0xF8 | 1;
    HIDWORD(v97) = -50266102;
    v98 = -3;
    v99 &= 0xE0u;
    v100 = 0;
    v85 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v84, v63, &v95, 1, 0, 0);
LABEL_46:

    goto LABEL_52;
  }

  v14 = v94;
LABEL_50:
  v58 = sub_2210789F4(&v108, v40, v41, v42, v43);
LABEL_51:
  v85 = v58;
LABEL_52:

  return v85;
}

@end