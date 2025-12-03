@interface TSWPURLDataDetector
+ (BOOL)detectedDataInString:(id)string scanRange:(_NSRange)range withTextCheckingTypes:(unint64_t)types;
+ (_NSRange)calculateScanRangeForString:(id)string changedRange:(_NSRange)range;
+ (_NSRange)expandValidRange:(_NSRange)range inString:(id)string;
+ (id)_newDetector;
+ (id)newURLFromString:(id)string;
+ (id)p_newArrayByScanningString:(id)string scanRange:(_NSRange)range returnAllResults:(BOOL)results dataDetector:(id)detector;
+ (id)p_rangesSplitByNewLineOfString:(id)string scanRange:(_NSRange)range;
- (TSWPURLDataDetector)init;
- (TSWPURLDataDetector)initWithTextCheckingType:(unint64_t)type;
- (id)scanString:(id)string;
@end

@implementation TSWPURLDataDetector

+ (id)_newDetector
{
  v15 = 0;
  v2 = objc_msgSend_dataDetectorWithTypes_error_(MEMORY[0x277CCA948], a2, 2080, &v15);
  v4 = v15;
  v5 = v2;
  if (v4)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSWPURLDataDetector _newDetector]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPURLDataDetector.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 38, 0, "Received error %@ trying to instantiate NSDataDector", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    v5 = 0;
  }

  v13 = v5;

  return v13;
}

+ (_NSRange)expandValidRange:(_NSRange)range inString:(id)string
{
  length = range.length;
  location = range.location;
  v6 = qword_280A584C8;
  stringCopy = string;
  if (v6 != -1)
  {
    sub_276F4F828();
  }

  v9 = objc_msgSend_rangeOfCharacterFromSet_options_range_(stringCopy, v7, qword_280A584C0, 6, 0, location);
  v11 = v10;

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12.location = 0;
  }

  else
  {
    v12.location = v9;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12.length = location;
  }

  else
  {
    v12.length = v11;
  }

  v13.location = location;
  v13.length = length;

  v16 = NSUnionRange(v12, v13);
  v15 = v16.length;
  v14 = v16.location;
  result.length = v15;
  result.location = v14;
  return result;
}

+ (_NSRange)calculateScanRangeForString:(id)string changedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (objc_msgSend_length(stringCopy, v7, v8) >= 3)
  {
    v10 = objc_opt_class();
    location = objc_msgSend_expandValidRange_inString_(v10, v11, location, length, stringCopy);
    length = v9;
  }

  for (; length; --length)
  {
    v12 = objc_msgSend_characterAtIndex_(stringCopy, v9, location);
    v15 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v13, v14);
    if (objc_msgSend_characterIsMember_(v15, v16, v12) & 1) != 0 || (IsParagraphBreakingCharacter(v12))
    {
    }

    else
    {
      v17 = sub_276D36AEC(v12);

      if (!v17)
      {
        break;
      }
    }

    ++location;
  }

  v18 = location;
  v19 = length;
  result.length = v19;
  result.location = v18;
  return result;
}

+ (id)p_newArrayByScanningString:(id)string scanRange:(_NSRange)range returnAllResults:(BOOL)results dataDetector:(id)detector
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  detectorCopy = detector;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_276E20A18;
  v28 = sub_276E20A28;
  v29 = 0;
  v15.length = objc_msgSend_length(stringCopy, v13, v14);
  if (v15.length >= 3 && length >= 3)
  {
    v15.location = 0;
    v31.location = location;
    v31.length = length;
    v17 = NSIntersectionRange(v15, v31);
    v16 = v17.length;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3010000000;
    v23[4] = 0;
    v23[5] = 0;
    v23[3] = &unk_276FDE562;
    if (!detectorCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276E20A30;
      block[3] = &unk_27A6F3D70;
      block[4] = self;
      if (qword_280A584D8 != -1)
      {
        dispatch_once(&qword_280A584D8, block);
      }

      detectorCopy = qword_280A584D0;
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276E20A68;
    v20[3] = &unk_27A6F50C8;
    v20[4] = v23;
    v20[5] = &v24;
    v20[6] = self;
    resultsCopy = results;
    objc_msgSend_enumerateMatchesInString_options_range_usingBlock_(detectorCopy, v16, stringCopy, 0, v17.location, v17.length, v20);
    _Block_object_dispose(v23, 8);
  }

  objc_msgSend_sortUsingFunction_context_(v25[5], v15.length, sub_276E20ED0, 0);
  v18 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v18;
}

+ (id)newURLFromString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    v15 = 0;
    goto LABEL_25;
  }

  v6 = objc_msgSend_length(@"file://", v3, v4);
  if (!objc_msgSend_compare_options_range_(stringCopy, v7, @"file://", 1, 0, v6))
  {
    v24 = objc_msgSend_length(@"file://", v8, v9);
    v26 = objc_msgSend_substringFromIndex_(stringCopy, v25, v24);
    v29 = v26;
    if (v26 && objc_msgSend_length(v26, v27, v28))
    {
      v30 = CFURLCreateStringByReplacingPercentEscapes(0, v29, &stru_28860A0F0);
      v33 = v30;
      if (!v30)
      {
        v30 = v29;
      }

      v19 = objc_msgSend_stringByExpandingTildeInPath(v30, v31, v32);

      if (v19 && objc_msgSend_length(v19, v34, v35))
      {
        goto LABEL_18;
      }
    }

    else
    {

      v19 = 0;
    }

    v19 = @"/";
LABEL_18:
    v15 = MEMORY[0x277CA1400](0, v19, 0, 0, 0);
    goto LABEL_24;
  }

  v10 = objc_alloc(MEMORY[0x277CBEBC0]);
  v12 = objc_msgSend_initWithString_(v10, v11, stringCopy);
  v15 = v12;
  if (v12)
  {
    v16 = objc_msgSend_scheme(v12, v13, v14);
    v19 = v16;
    if (v16)
    {
      v20 = objc_msgSend_lowercaseString(v16, v17, v18);
      if (objc_msgSend_isEqual_(v19, v21, v20))
      {
        v23 = 0;
        if (!objc_msgSend_isEqualToString_(v20, v22, @"feed"))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v23 = v20;
        if ((objc_msgSend_isEqualToString_(v23, v36, @"feed") & 1) == 0)
        {
          if (!v23)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:
          v37 = objc_alloc(MEMORY[0x277CCACA8]);
          v40 = objc_msgSend_length(v19, v38, v39);
          v42 = objc_msgSend_substringFromIndex_(stringCopy, v41, v40);
          v44 = objc_msgSend_initWithFormat_(v37, v43, @"%@%@", v23, v42);

          v45 = objc_alloc(MEMORY[0x277CBEBC0]);
          v47 = objc_msgSend_initWithString_(v45, v46, v44);

          v15 = v47;
          goto LABEL_23;
        }
      }

      v23 = @"http";
      goto LABEL_22;
    }

LABEL_24:
  }

LABEL_25:

  return v15;
}

+ (id)p_rangesSplitByNewLineOfString:(id)string scanRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v10 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v7, v8);
  if (length >> 4 <= 0x800)
  {
    v11 = 2048;
  }

  else
  {
    v11 = length >> 4;
  }

  v12 = location + length;
  for (i = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v9, length / v11 + 2);
  {
    v15 = v12 - location;
    if (v12 - location > v11)
    {
      v16 = objc_msgSend_rangeOfCharacterFromSet_options_range_(stringCopy, v13, v10, 4, location, v11);
      v17 = &v13[v16];
      if (location <= &v13[v16])
      {
        v18 = &v13[v16];
      }

      else
      {
        v18 = location;
      }

      if (location < &v13[v16])
      {
        v17 = location;
      }

      v19 = v18 - v17;
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        location = v17;
        v15 = v19;
      }
    }

    v20 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v13, location, v15);
    objc_msgSend_addObject_(i, v21, v20);
  }

  return i;
}

+ (BOOL)detectedDataInString:(id)string scanRange:(_NSRange)range withTextCheckingTypes:(unint64_t)types
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v11 = objc_msgSend_p_rangesSplitByNewLineOfString_scanRange_(self, v10, stringCopy, location, length);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v14 = objc_msgSend_count(v11, v12, v13);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276E21410;
  block[3] = &unk_27A6F50F0;
  v21 = &v24;
  typesCopy = types;
  selfCopy = self;
  v19 = v11;
  v20 = stringCopy;
  v15 = stringCopy;
  v16 = v11;
  dispatch_apply(v14, 0, block);
  LOBYTE(stringCopy) = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return stringCopy;
}

- (TSWPURLDataDetector)init
{
  v9.receiver = self;
  v9.super_class = TSWPURLDataDetector;
  v2 = [(TSWPURLDataDetector *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v6 = objc_msgSend__newDetector(v3, v4, v5);
    detector = v2->_detector;
    v2->_detector = v6;

    if (!v2->_detector)
    {

      return 0;
    }
  }

  return v2;
}

- (TSWPURLDataDetector)initWithTextCheckingType:(unint64_t)type
{
  v19.receiver = self;
  v19.super_class = TSWPURLDataDetector;
  v5 = [(TSWPURLDataDetector *)&v19 init];
  if (v5)
  {
    v18 = 0;
    v6 = objc_msgSend_dataDetectorWithTypes_error_(MEMORY[0x277CCA948], v4, type, &v18);
    v7 = v18;
    detector = v5->_detector;
    v5->_detector = v6;

    if (v7)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPURLDataDetector initWithTextCheckingType:]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPURLDataDetector.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 353, 0, "Received error trying to instantiate NSDataDector: %@", v7);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }
  }

  return v5;
}

- (id)scanString:(id)string
{
  stringCopy = string;
  v5 = objc_opt_class();
  v8 = objc_msgSend_length(stringCopy, v6, v7);
  v10 = objc_msgSend_p_newArrayByScanningString_scanRange_returnAllResults_dataDetector_(v5, v9, stringCopy, 0, v8, 1, self->_detector);

  return v10;
}

@end