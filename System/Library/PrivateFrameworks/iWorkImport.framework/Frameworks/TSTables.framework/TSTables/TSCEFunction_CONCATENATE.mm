@interface TSCEFunction_CONCATENATE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)valueForArgumentRepeatingSingletonMode:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5 argSpec:(id)a6 outError:(id *)a7;
@end

@implementation TSCEFunction_CONCATENATE

+ (id)valueForArgumentRepeatingSingletonMode:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5 argSpec:(id)a6 outError:(id *)a7
{
  v10 = a3;
  v11 = a6;
  v13 = *a5;
  v12 = *(a5 + 1);
  v98 = v11;
  v18 = objc_msgSend_argumentType(v11, v14, v15, v16, v17);
  v19 = v12 - v13;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  __p = 0;
  v106 = 0;
  v107 = 0;
  if (((v12 - v13) >> 3) >= 1)
  {
    v20 = v18;
    v21 = 0;
    v22 = (v19 >> 3) & 0x7FFFFFFF;
    do
    {
      v23 = *(*a5 + 8 * v21);
      isFlattened = v23;
      if (v20 == 7 && (objc_msgSend_isRegexString(v23, v24, v25, v26, v27) & 1) == 0)
      {
        if (isFlattened)
        {
          objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(isFlattened, v24, v10, a4, 0, a7);
        }

        else
        {
          memset(&v101, 0, 24);
        }

        if (*a7)
        {
          v86 = objc_msgSend_emptyGrid(TSCEGridValue, v24, v25, v26, v27);

          goto LABEL_72;
        }

        v29 = sub_2210789F4(&v101, v24, v25, v26, v27);

        isFlattened = v29;
      }

      if (objc_msgSend_isReferenceValue(isFlattened, v24, v25, v26, v27) && (!v11 || (objc_msgSend_referenceForGeometryOnly(v11, v30, v31, v32, v33) & 1) == 0))
      {
        v34 = objc_msgSend_asReferenceValue(isFlattened, v30, v31, v32, v33);
        if (objc_msgSend_isOutputOfAFunction(v34, v35, v36, v37, v38))
        {
          if (v34)
          {
            objc_msgSend_anyRef(v34, v39, v40, v41, v42);
          }

          else
          {
            v103 = 0u;
            v104 = 0u;
            v102 = 0u;
            memset(&v101, 0, sizeof(v101));
          }

          objc_msgSend_addCalculatedPrecedent_(v10, v39, &v101, v41, v42);
        }
      }

      v43 = objc_msgSend_deepType_(isFlattened, v30, v10, v32, v33);
      v48 = objc_msgSend_nativeType(isFlattened, v44, v45, v46, v47);
      if (!TSCEArgumentAccessor::valueSufficesForArgumentType(isFlattened, v20, v48, v43, v10, 0) || v11 && objc_msgSend_typeIsDisallowed_value_(v11, v49, v48, isFlattened, v52))
      {
        if (v43 == 9)
        {
          objc_msgSend_errorWithContext_(isFlattened, v49, v10, v51, v52);
        }

        else
        {
          objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v49, isFlattened, v10, a4, 0);
        }
        *a7 = ;
        v81 = objc_msgSend_emptyGrid(TSCEGridValue, v82, v83, v84, v85);
        goto LABEL_71;
      }

      if (v43 == 2 && (v20 == 8 || v20 == 5))
      {
        objc_msgSend_reportBoolToNumberConversionWarningInContext_(TSCEWarning, v49, v10, v51, v52);
      }

      if (v20 == 8)
      {
        v53 = a7;
        v100 = 0;
        v54 = TSCEArgumentAccessor::coerceValueToNumberOrDate(isFlattened, v10, a4, 0, v43, &v100);
        v55 = v100;

        if (v55)
        {
          v88 = v55;
          *v53 = v55;
          v86 = objc_msgSend_emptyGrid(TSCEGridValue, v89, v90, v91, v92);

          isFlattened = v54;
          v11 = v98;
          goto LABEL_72;
        }

        isFlattened = v54;
        a7 = v53;
        v11 = v98;
      }

      v57 = v20 == 8 && v43 == 5;
      if (v20 == 5 || v57)
      {
        v58 = TSCEArgumentAccessor::checkBoundsAndUnits(isFlattened, v10, a4, v11, 0, v43);
        v59 = v58;
        if (v58)
        {
          v93 = v58;
          *a7 = v59;
          v86 = objc_msgSend_emptyGrid(TSCEGridValue, v94, v95, v96, v97);

          goto LABEL_72;
        }
      }

      if (objc_msgSend_isNil(isFlattened, v49, v50, v51, v52))
      {
        v64 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v60, v61, v62, v63);
        v68 = v109;
        if (v109 >= v110)
        {
          v74 = (v109 - v108) >> 3;
          if ((v74 + 1) >> 61)
          {
            sub_22107C148();
          }

          v75 = (v110 - v108) >> 2;
          if (v75 <= v74 + 1)
          {
            v75 = v74 + 1;
          }

          if (v110 - v108 >= 0x7FFFFFFFFFFFFFF8)
          {
            v76 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = v75;
          }

          *&v102 = &v108;
          if (v76)
          {
            sub_22107C1F0(&v108, v76);
          }

          v101._tskFormat = 0;
          *&v101._formatType = 8 * v74;
          *&v101._numberFormat.decimalPlaces = 0;
          **&v101._formatType = v64;
          *&v101._durationFormat = 8 * v74 + 8;
          sub_22107C098(&v108, &v101);
LABEL_61:
          v69 = v109;
          sub_22107C26C(&v101);
          goto LABEL_62;
        }

        *v109 = v64;
        v69 = v68 + 1;
      }

      else
      {
        v70 = v109;
        if (v109 >= v110)
        {
          v71 = (v109 - v108) >> 3;
          if ((v71 + 1) >> 61)
          {
            sub_22107C148();
          }

          v72 = (v110 - v108) >> 2;
          if (v72 <= v71 + 1)
          {
            v72 = v71 + 1;
          }

          if (v110 - v108 >= 0x7FFFFFFFFFFFFFF8)
          {
            v73 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v73 = v72;
          }

          *&v102 = &v108;
          if (v73)
          {
            sub_22107C1F0(&v108, v73);
          }

          v101._tskFormat = 0;
          *&v101._formatType = 8 * v71;
          *&v101._numberFormat.decimalPlaces = 0;
          *(8 * v71) = isFlattened;
          *&v101._durationFormat = 8 * v71 + 8;
          sub_22107C098(&v108, &v101);
          goto LABEL_61;
        }

        *v70 = isFlattened;
        v69 = v70 + 1;
      }

LABEL_62:
      v109 = v69;
      if (isFlattened)
      {
        objc_msgSend_formatWithContext_(isFlattened, v65, v10, v66, v67);
      }

      else
      {
        memset(&v101, 0, sizeof(v101));
      }

      sub_22114F414(&__p, &v101);

      ++v21;
    }

    while (v22 != v21);
  }

  v77 = [TSCEDenseGrid alloc];
  isFlattened = objc_msgSend_initWithValues_gridKind_isFlattened_(v77, v78, &v108, 0, 0);
  sub_221256020(&__p, &v101);
  v81 = objc_msgSend_gridValue_format_(TSCEGridValue, v79, isFlattened, &v101, v80);
LABEL_71:
  v86 = v81;
LABEL_72:

  if (__p)
  {
    v106 = __p;
    operator delete(__p);
  }

  v101._tskFormat = &v108;
  sub_22107C2C0(&v101);

  return v86;
}

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = objc_msgSend_argumentSpecForIndex_(a4, a2, 0, a4, a5);
  v56 = 0;
  v11 = objc_msgSend_valueForArgumentRepeatingSingletonMode_functionSpec_arguments_argSpec_outError_(a1, v10, a3, a4, a5, v9, &v56);
  v12 = v56;
  if (v12)
  {
    v17 = v12;
    v18 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v15, v16);
    goto LABEL_23;
  }

  v54 = 0;
  v55[0] = 0;
  *(v55 + 7) = 0;
  v19 = objc_msgSend_count(v11, v13, v14, v15, v16);
  v24 = a3;
  v48[0] = v24;
  v48[1] = a4;
  v49 = 0;
  v50[0] = 0;
  *(v50 + 7) = 0;
  v51 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v52 = 0;
  v53 = 0;
  if (v19)
  {
    v25 = 0;
    v26 = 0;
    isRegexString = 1;
    do
    {
      v28 = objc_msgSend_valueAtIndex_accessContext_(v11, v20, v25, v48, v23);
      if ((objc_msgSend_isNil(v28, v29, v30, v31, v32) & 1) == 0)
      {
        v47 = 0;
        if (v28)
        {
          objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v28, v33, v24, a4, 0, &v47);
          v17 = v47;
        }

        else
        {
          v17 = 0;
          memset(&v46, 0, 24);
        }

        sub_221077424(&v54, &v46, v24);

        if (v17)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(v24, v34, v17, v36, v37);

          goto LABEL_22;
        }

        if (isRegexString)
        {
          isRegexString = objc_msgSend_isRegexString(v28, v34, v35, v36, v37);
          v26 |= isRegexString;
        }

        else
        {
          isRegexString = 0;
        }
      }

      ++v25;
    }

    while (v19 != v25);
    v38 = isRegexString & v26;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v38 = 0;
    if (!v11)
    {
LABEL_18:
      memset(&v46, 0, sizeof(v46));
      if (v38)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  objc_msgSend_formatWithContext_(v11, v20, v24, v22, v23);
  if (v38)
  {
LABEL_16:
    v39 = sub_2210772BC(&v54, v20, v21, v22, v23);
    v18 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v40, v39, &v46, 1, 0, 0);

    goto LABEL_20;
  }

LABEL_19:
  v18 = sub_2210789F4(&v54, v20, v21, v22, v23);
  TSCEFormat::TSCEFormat(&v45, &v46);
  objc_msgSend_setFormat_(v18, v41, &v45, v42, v43);
LABEL_20:
  v17 = 0;
LABEL_22:

LABEL_23:

  return v18;
}

@end