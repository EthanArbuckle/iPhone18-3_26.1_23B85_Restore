@interface TSCEFunction_TEXTAFTER
+ (_NSRange)rangeOfSearchString:(id)string inSourceString:(id)sourceString withOccurrence:(int64_t)occurrence isRegexSearch:(BOOL)search isCaseSensitiveRegex:(BOOL)regex outMatchesFound:(int64_t *)found;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TEXTAFTER

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  isRegexString = objc_msgSend_isRegexString(v9, v10, v11, v12, v13);
  v75 = 0;
  v16 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v15, context, spec, 0, &v75);
  v17 = v75;
  v74 = v17;
  v19 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v18, context, spec, 1, &v74);
  v20 = v74;

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
    v73 = 0;
    v54 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v34, context, spec, 2, &v73);
    v20 = v73;
    if (v20)
    {
      v25 = objc_msgSend_raiseErrorOrConvert_(context, v55, v20, v57, v58);
    }

    else
    {
      v59 = objc_msgSend_integer(v54, v55, v56, v57, v58);
      if (v59)
      {
        v35 = v59;

        goto LABEL_8;
      }

      v64 = objc_msgSend_functionName(spec, v60, v61, v62, v63);
      v67 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v65, v64, 3, v66);
      v25 = objc_msgSend_raiseErrorOrConvert_(context, v68, v67, v69, v70);
    }

    goto LABEL_3;
  }

  v35 = 1;
LABEL_8:

LABEL_10:
  v72 = 0;
  isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v9, v21, v22, v23, v24);
  isCaseSensitiveRegex_outMatchesFound = objc_msgSend_rangeOfSearchString_inSourceString_withOccurrence_isRegexSearch_isCaseSensitiveRegex_outMatchesFound_(TSCEFunction_TEXTAFTER, v37, v19, v16, v35, isRegexString, isCaseSensitiveRegexString, &v72);
  if (isCaseSensitiveRegex_outMatchesFound == 0x7FFFFFFFFFFFFFFFLL)
  {
    v43 = v72;
    v44 = objc_msgSend_functionName(spec, v39, v40, v41, v42);
    v46 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v45, v19, isRegexString, 0, 0, 0, v35, v43, v44);
    v25 = objc_msgSend_raiseErrorOrConvert_(context, v47, v46, v48, v49);
  }

  else
  {
    v44 = objc_msgSend_substringFromIndex_(v16, v39, &v39[isCaseSensitiveRegex_outMatchesFound], v41, v42);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v50, context, v51, v52);
    }

    else
    {
      memset(v71, 0, sizeof(v71));
    }

    v25 = objc_msgSend_stringValue_format_(TSCEStringValue, v50, v44, v71, v52);
  }

LABEL_17:

  return v25;
}

+ (_NSRange)rangeOfSearchString:(id)string inSourceString:(id)sourceString withOccurrence:(int64_t)occurrence isRegexSearch:(BOOL)search isCaseSensitiveRegex:(BOOL)regex outMatchesFound:(int64_t *)found
{
  regexCopy = regex;
  searchCopy = search;
  stringCopy = string;
  sourceStringCopy = sourceString;
  v19 = sourceStringCopy;
  if (searchCopy)
  {
    if (occurrence == 1)
    {
      v48 = 0;
      v20 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v15, stringCopy, regexCopy, &v48);
      v21 = v48;
      MatchInString = objc_msgSend_rangeOfFirstMatchInString_(v20, v22, v19, v23, v24);
    }

    else
    {
      v47 = 0;
      v20 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v15, stringCopy, regexCopy, &v47);
      v21 = v47;
      MatchInString = objc_msgSend_rangeOfMatchInString_occurrence_matchesFound_(v20, v42, v19, occurrence, found);
    }

    v30 = MatchInString;
    v38 = v26;

    v43 = *MEMORY[0x277D81490];
    v44 = *(MEMORY[0x277D81490] + 8);

    if (v21)
    {
      v30 = v43;
      v38 = v44;
    }
  }

  else
  {
    if (occurrence >= 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = 5;
    }

    if (occurrence >= 0)
    {
      occurrenceCopy = occurrence;
    }

    else
    {
      occurrenceCopy = -occurrence;
    }

    v29 = objc_msgSend_length(sourceStringCopy, v15, v16, v17, v18);
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = objc_msgSend_rangeOfString_options_range_(v19, v31, stringCopy, v27, 0, v29);
    while (1)
    {
      v37 = v32;
      v38 = v33;
      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v39 = *found + 1;
      *found = v39;
      if (v39 == occurrenceCopy)
      {
        v30 = v32;
        break;
      }

      if (occurrence < 0)
      {
        v32 = objc_msgSend_rangeOfString_options_range_(v19, v33, stringCopy, v27, 0, &v33[v32 - 1]);
      }

      else
      {
        v40 = objc_msgSend_length(v19, v33, v34, v35, v36);
        v32 = objc_msgSend_rangeOfString_options_range_(v19, v41, stringCopy, v27, v37 + 1, v40 + ~v37);
      }
    }
  }

  v45 = v30;
  v46 = v38;
  result.length = v46;
  result.location = v45;
  return result;
}

@end