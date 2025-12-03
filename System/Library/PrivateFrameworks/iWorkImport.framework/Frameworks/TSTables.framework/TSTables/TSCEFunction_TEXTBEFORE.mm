@interface TSCEFunction_TEXTBEFORE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TEXTBEFORE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  isRegexString = objc_msgSend_isRegexString(v9, v10, v11, v12, v13);
  v74 = 0;
  v16 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v15, context, spec, 0, &v74);
  v17 = v74;
  v73 = v17;
  v19 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v18, context, spec, 1, &v73);
  v20 = v73;

  if (v20)
  {
    v25 = objc_msgSend_raiseErrorOrConvert_(context, v21, v20, v23, v24);
LABEL_3:

    goto LABEL_17;
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    v35 = 1;
    goto LABEL_10;
  }

  v26 = *(*arguments + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v26, v27, v28, v29, v30) & 1) == 0 && objc_msgSend_deepType_(v26, v31, context, v32, v33) != 10)
  {
    v72 = 0;
    v53 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v34, context, spec, 2, &v72);
    v20 = v72;
    if (v20)
    {
      v25 = objc_msgSend_raiseErrorOrConvert_(context, v54, v20, v56, v57);
    }

    else
    {
      v58 = objc_msgSend_integer(v53, v54, v55, v56, v57);
      if (v58)
      {
        v35 = v58;

        goto LABEL_8;
      }

      v63 = objc_msgSend_functionName(spec, v59, v60, v61, v62);
      v66 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v64, v63, 3, v65);
      v25 = objc_msgSend_raiseErrorOrConvert_(context, v67, v66, v68, v69);
    }

    goto LABEL_3;
  }

  v35 = 1;
LABEL_8:

LABEL_10:
  v71 = 0;
  isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v9, v21, v22, v23, v24);
  isCaseSensitiveRegex_outMatchesFound = objc_msgSend_rangeOfSearchString_inSourceString_withOccurrence_isRegexSearch_isCaseSensitiveRegex_outMatchesFound_(TSCEFunction_TEXTAFTER, v37, v19, v16, v35, isRegexString, isCaseSensitiveRegexString, &v71);
  if (isCaseSensitiveRegex_outMatchesFound == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = v71;
    v43 = objc_msgSend_functionName(spec, v38, 0x7FFFFFFFFFFFFFFFLL, v40, v41);
    v45 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v44, v19, isRegexString, 0, 0, 0, v35, v42, v43);
    v25 = objc_msgSend_raiseErrorOrConvert_(context, v46, v45, v47, v48);
  }

  else
  {
    v43 = objc_msgSend_substringToIndex_(v16, v38, isCaseSensitiveRegex_outMatchesFound, v40, v41);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v49, context, v50, v51);
    }

    else
    {
      memset(v70, 0, sizeof(v70));
    }

    v25 = objc_msgSend_stringValue_format_(TSCEStringValue, v49, v43, v70, v51);
  }

LABEL_17:

  return v25;
}

@end