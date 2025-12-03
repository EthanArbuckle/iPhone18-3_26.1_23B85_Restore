@interface TSCHDataFormatterSupport
+ (BOOL)usesNumberFormatStructForDataFormatter:(id)formatter;
@end

@implementation TSCHDataFormatterSupport

+ (BOOL)usesNumberFormatStructForDataFormatter:(id)formatter
{
  v6 = objc_msgSend_convertToPersistableStyleObject(formatter, a2, v3, v4, v5);
  v11 = objc_msgSend_formatType(v6, v7, v8, v9, v10);

  return (v11 & 0xFFFFFFFC) == 256;
}

@end