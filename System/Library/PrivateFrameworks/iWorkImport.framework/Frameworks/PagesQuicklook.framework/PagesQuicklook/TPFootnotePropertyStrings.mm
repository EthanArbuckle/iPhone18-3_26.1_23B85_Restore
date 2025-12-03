@interface TPFootnotePropertyStrings
+ (id)insertStringForFootnoteKind:(int64_t)kind;
+ (id)stringForFootnoteFormat:(int64_t)format;
+ (id)stringForFootnoteKind:(int64_t)kind;
+ (id)stringForFootnoteNumbering:(int64_t)numbering;
+ (id)titleForFootnoteFormat;
+ (id)titleForFootnoteKind;
+ (id)titleForFootnoteNumbering;
@end

@implementation TPFootnotePropertyStrings

+ (id)insertStringForFootnoteKind:(int64_t)kind
{
  if (kind > 2)
  {
    v10 = &stru_288501738;
  }

  else
  {
    v3 = off_27A6A8C18[kind];
    v4 = sub_275FFFC3C();
    v10 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, v6, v7, v8, v9, v3, &stru_288501738, @"Pages");
  }

  return v10;
}

+ (id)titleForFootnoteKind
{
  v2 = sub_275FFFC3C();
  v8 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v4, v5, v6, v7, @"Type", &stru_288501738, @"Pages");

  return v8;
}

+ (id)titleForFootnoteFormat
{
  v2 = sub_275FFFC3C();
  v8 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v4, v5, v6, v7, @"Format", &stru_288501738, @"Pages");

  return v8;
}

+ (id)titleForFootnoteNumbering
{
  v2 = sub_275FFFC3C();
  v8 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v4, v5, v6, v7, @"Numbering", &stru_288501738, @"Pages");

  return v8;
}

+ (id)stringForFootnoteKind:(int64_t)kind
{
  if (kind > 2)
  {
    v10 = &stru_288501738;
  }

  else
  {
    v3 = off_27A6A8C30[kind];
    v4 = sub_275FFFC3C();
    v10 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, v6, v7, v8, v9, v3, &stru_288501738, @"Pages");
  }

  return v10;
}

+ (id)stringForFootnoteFormat:(int64_t)format
{
  if (format < 6 && ((0x27u >> format) & 1) != 0)
  {
    return off_27A6A8C48[format];
  }

  v30 = v3;
  v12 = MEMORY[0x277D81150];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v7, v8, v9, v10, "+[TPFootnotePropertyStrings stringForFootnoteFormat:]", v6, v5, v4, v30);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnotePropertyStrings.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 88, 0, "Only support numeric, roman, symbolic, and Arabic numeric");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
  return 0;
}

+ (id)stringForFootnoteNumbering:(int64_t)numbering
{
  if (numbering > 2)
  {
    v10 = &stru_288501738;
  }

  else
  {
    v3 = off_27A6A8C78[numbering];
    v4 = sub_275FFFC3C();
    v10 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, v6, v7, v8, v9, v3, &stru_288501738, @"Pages");
  }

  return v10;
}

@end