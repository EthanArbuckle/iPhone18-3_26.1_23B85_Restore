@interface TSCEFunction_COUNTMATCHES
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_COUNTMATCHES

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v9 = *(*a5 + 8);
  isRegexString = objc_msgSend_isRegexString(v9, v10, v11, v12, v13);
  v55 = 0;
  v16 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v15, a3, a4, 0, &v55);
  v17 = v55;
  v54 = v17;
  v19 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v18, a3, a4, 1, &v54);
  v20 = v54;

  if (v20)
  {
    v25 = objc_msgSend_raiseErrorOrConvert_(a3, v21, v20, v23, v24);
LABEL_3:

    goto LABEL_12;
  }

  if (isRegexString)
  {
    v26 = objc_msgSend_asStringValue(v9, v21, v22, v23, v24);
    isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v26, v27, v28, v29, v30);
    v53 = 0;
    v33 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v32, v19, isCaseSensitiveRegex, &v53);
    v20 = v53;
    if (v20)
    {
      v25 = objc_msgSend_raiseErrorOrConvert_(a3, v34, v20, v36, v37);

      goto LABEL_3;
    }

    v46 = objc_msgSend_length(v16, v34, v35, v36, v37);
    objc_msgSend_numberOfMatchesInString_options_range_(v33, v47, v16, 0, 0, v46);
  }

  else
  {
    v38 = 0;
    for (i = objc_msgSend_rangeOfString_options_(v16, v21, v19, 1, v24); i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend_rangeOfString_options_(v43, v44, v19, 1, v45))
    {
      v43 = objc_msgSend_substringFromIndex_(v16, v40, i + 1, v41, v42);
      ++v38;

      v16 = v43;
    }
  }

  TSUDecimal::operator=();
  TSCEFormat::TSCEFormat(v51, 256);
  v25 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v48, v52, v51, v49);
LABEL_12:

  return v25;
}

@end