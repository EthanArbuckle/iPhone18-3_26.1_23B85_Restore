@interface TSCERegexMatcher
+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)a3 caseSensitive:(BOOL)a4 entireMatch:(BOOL)a5 outError:(id *)a6;
+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)a3 caseSensitive:(BOOL)a4 outError:(id *)a5;
+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)a3 outError:(id *)a4;
+ (TSCERegexMatcher)regexMatcherWithStringMatch:(id)a3 caseSensitive:(BOOL)a4 entireMatch:(BOOL)a5 outError:(id *)a6;
+ (TSCERegexMatcher)regexMatcherWithStringMatch:(id)a3 outError:(id *)a4;
- (TSCERegexMatcher)initWithRegexString:(id)a3 caseSensitive:(BOOL)a4 entireMatch:(BOOL)a5 outError:(id *)a6;
- (TSCERegexMatcher)initWithString:(id)a3 caseSensitive:(BOOL)a4 entireMatch:(BOOL)a5 outError:(id *)a6;
- (_NSRange)rangeOfFirstMatchInString:(id)a3;
- (_NSRange)rangeOfFirstMatchInString:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5;
- (_NSRange)rangeOfMatchInString:(id)a3 occurrence:(int64_t)a4;
- (_NSRange)rangeOfMatchInString:(id)a3 occurrence:(int64_t)a4 matchesFound:(int64_t *)a5;
- (id)matchesInString:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5;
- (id)stringByReplacingMatchesInString:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5 withTemplate:(id)a6;
@end

@implementation TSCERegexMatcher

- (TSCERegexMatcher)initWithString:(id)a3 caseSensitive:(BOOL)a4 entireMatch:(BOOL)a5 outError:(id *)a6
{
  v63 = a4;
  v64 = a5;
  v6 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, a3, a4, a5);
  v67 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v7, @"~?*", v8, v9);
  v68 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v10, @"+[(){}^$|\\./", v11, v12);
  v17 = objc_msgSend_mutableCopy(v68, v13, v14, v15, v16);
  objc_msgSend_formUnionWithCharacterSet_(v17, v18, v67, v19, v20);
  v27 = objc_msgSend_rangeOfCharacterFromSet_(v6, v21, v17, v22, v23);
  v28 = v24;
  v29 = 0x7FFFFFFFFFFFFFFFLL;
  while (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = objc_msgSend_characterAtIndex_(v6, v24, v27, v25, v26);
    v35 = v30;
    if (v30 == 42)
    {
      if (v27 == v29)
      {
        objc_msgSend_replaceCharactersInRange_withString_(v6, v31, v27, v28, &stru_2834BADA0);
        v40 = v29;
      }

      else
      {
        objc_msgSend_replaceCharactersInRange_withString_(v6, v31, v27, v28, @".*");
        v40 = v27 + 2;
        v29 = v27 + 2;
      }
    }

    else if (v30 == 63)
    {
      objc_msgSend_replaceCharactersInRange_withString_(v6, v31, v27, v28, @".{1}");
      v40 = v27 + 4;
    }

    else
    {
      if (v30 == 126)
      {
        v40 = v27 + 1;
        if (v27 >= objc_msgSend_length(v6, v31, v32, v33, v34) - 1)
        {
          goto LABEL_18;
        }

        v41 = objc_msgSend_characterAtIndex_(v6, v36, v27 + 1, v38, v39);
        if (v41 == 42)
        {
          objc_msgSend_replaceCharactersInRange_withString_(v6, v36, v27, 2, @"\\*");
        }

        else
        {
          if (v41 != 63)
          {
            goto LABEL_18;
          }

          objc_msgSend_replaceCharactersInRange_withString_(v6, v36, v27, 2, @"\\?");
        }
      }

      else
      {
        if ((objc_msgSend_characterIsMember_(v68, v31, v30, v33, v34) & 1) == 0)
        {
          v45 = MEMORY[0x277D81150];
          v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "NSString *TSCEConvertWildcardStringToICURegex(NSString *__strong)", v43, v44);
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERegexMatcher.mm", v48, v49);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 84, 0, "We don't want to quote a character that doesn't need to be quoted.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
        }

        v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"\\%C", v43, v44, v35);
        objc_msgSend_replaceCharactersInRange_withString_(v6, v57, v27, v28, v56);
      }

      v40 = v27 + 2;
    }

LABEL_18:
    v58 = objc_msgSend_length(v6, v36, v37, v38, v39);
    v27 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v6, v59, v17, 0, v40, v58 - v40);
    v28 = v24;
  }

  matched = objc_msgSend_initWithRegexString_caseSensitive_entireMatch_outError_(self, v60, v6, v63, v64, a6);
  return matched;
}

- (TSCERegexMatcher)initWithRegexString:(id)a3 caseSensitive:(BOOL)a4 entireMatch:(BOOL)a5 outError:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v29.receiver = self;
  v29.super_class = TSCERegexMatcher;
  v11 = [(TSCERegexMatcher *)&v29 init];
  if (v11)
  {
    v12 = v10;
    v13 = v12;
    if (v7)
    {
      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = objc_msgSend_initWithFormat_(v14, v15, @"^%@$", v16, v17, v12);
    }

    v18 = objc_alloc(MEMORY[0x277CCAC68]);
    if (v8)
    {
      v20 = 48;
    }

    else
    {
      v20 = 49;
    }

    v28 = 0;
    v21 = objc_msgSend_initWithPattern_options_error_(v18, v19, v13, v20, &v28);
    v22 = v28;
    regularExpression = v11->_regularExpression;
    v11->_regularExpression = v21;

    if (v22)
    {
      *a6 = objc_msgSend_invalidRegexError_(TSCEError, v24, v12, v25, v26);

      v11 = 0;
    }
  }

  return v11;
}

+ (TSCERegexMatcher)regexMatcherWithStringMatch:(id)a3 caseSensitive:(BOOL)a4 entireMatch:(BOOL)a5 outError:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc(objc_opt_class());
  matched = objc_msgSend_initWithString_caseSensitive_entireMatch_outError_(v10, v11, v9, v8, v7, a6);

  return matched;
}

+ (TSCERegexMatcher)regexMatcherWithStringMatch:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc(objc_opt_class());
  matched = objc_msgSend_initWithString_caseSensitive_entireMatch_outError_(v6, v7, v5, 0, 1, a4);

  return matched;
}

+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)a3 caseSensitive:(BOOL)a4 entireMatch:(BOOL)a5 outError:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc(objc_opt_class());
  matched = objc_msgSend_initWithRegexString_caseSensitive_entireMatch_outError_(v10, v11, v9, v8, v7, a6);

  return matched;
}

+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)a3 caseSensitive:(BOOL)a4 outError:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc(objc_opt_class());
  matched = objc_msgSend_initWithRegexString_caseSensitive_entireMatch_outError_(v8, v9, v7, v6, 0, a5);

  return matched;
}

+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc(objc_opt_class());
  matched = objc_msgSend_initWithRegexString_caseSensitive_entireMatch_outError_(v6, v7, v5, 1, 0, a4);

  return matched;
}

- (_NSRange)rangeOfFirstMatchInString:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_length(v4, v5, v6, v7, v8);
  MatchInString_options_range = objc_msgSend_rangeOfFirstMatchInString_options_range_(self, v10, v4, 0, 0, v9);
  v13 = v12;

  v14 = MatchInString_options_range;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)rangeOfMatchInString:(id)a3 occurrence:(int64_t)a4
{
  v4 = objc_msgSend_rangeOfMatchInString_occurrence_matchesFound_(self, a2, a3, a4, 0);
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)rangeOfMatchInString:(id)a3 occurrence:(int64_t)a4 matchesFound:(int64_t *)a5
{
  v8 = a3;
  v13 = v8;
  if (a4 < 0)
  {
    v19 = objc_msgSend_length(v8, v9, v10, v11, v12);
    v21 = objc_msgSend_matchesInString_options_range_(self, v20, v13, 0, 0, v19);
    v26 = v21;
    if (a5)
    {
      *a5 = objc_msgSend_count(v21, v22, v23, v24, v25);
    }

    if (objc_msgSend_count(v26, v22, v23, v24, v25) >= -a4)
    {
      v31 = objc_msgSend_count(v26, v27, v28, v29, v30);
      v35 = objc_msgSend_objectAtIndex_(v26, v32, v31 + a4, v33, v34);
      v17 = objc_msgSend_range(v35, v36, v37, v38, v39);
      v18 = v40;
    }

    else
    {
      v17 = *MEMORY[0x277D81490];
      v18 = *(MEMORY[0x277D81490] + 8);
    }
  }

  else
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x4012000000;
    v47 = sub_22126B670;
    v48 = nullsub_33;
    v49 = &unk_22188E88F;
    v50 = *MEMORY[0x277D81490];
    regularExpression = self->_regularExpression;
    v15 = objc_msgSend_length(v8, v9, v10, v11, v12);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_22126B680;
    v43[3] = &unk_278462050;
    v43[5] = &v44;
    v43[6] = a4;
    v43[4] = &v51;
    objc_msgSend_enumerateMatchesInString_options_range_usingBlock_(regularExpression, v16, v13, 0, 0, v15, v43);
    if (a5)
    {
      *a5 = v52[3];
    }

    v17 = v45[6];
    v18 = v45[7];
    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v51, 8);
  }

  v41 = v17;
  v42 = v18;
  result.length = v42;
  result.location = v41;
  return result;
}

- (_NSRange)rangeOfFirstMatchInString:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5
{
  MatchInString_options_range = objc_msgSend_rangeOfFirstMatchInString_options_range_(self->_regularExpression, a2, a3, a4, a5.location, a5.length);
  result.length = v6;
  result.location = MatchInString_options_range;
  return result;
}

- (id)matchesInString:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5
{
  v5 = objc_msgSend_matchesInString_options_range_(self->_regularExpression, a2, a3, a4, a5.location, a5.length);

  return v5;
}

- (id)stringByReplacingMatchesInString:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5 withTemplate:(id)a6
{
  v6 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(self->_regularExpression, a2, a3, a4, a5.location, a5.length, a6);

  return v6;
}

@end