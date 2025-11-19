@interface __NSTextListElementEditedRangeValidator
- (_NSRange)adjustedInvalidationRangeForRange:(_NSRange)a3 limitRange:(_NSRange)a4 textContentStorage:(id)a5;
@end

@implementation __NSTextListElementEditedRangeValidator

- (_NSRange)adjustedInvalidationRangeForRange:(_NSRange)a3 limitRange:(_NSRange)a4 textContentStorage:(id)a5
{
  length = a4.length;
  location = a4.location;
  v7 = a3.length;
  v8 = a3.location;
  v9 = [a5 attributedString];
  if (v8 < [v9 length])
  {
    v10 = [objc_msgSend(objc_msgSend(v9 attribute:@"NSParagraphStyle" atIndex:v8 effectiveRange:{0), "textLists"), "firstObject"}];
    if (v10)
    {
      v11 = [v9 rangeOfTextList:v10 atIndex:v8];
      if (v12)
      {
        v19.location = v11;
        v19.length = v12;
        v16.location = v8;
        v16.length = v7;
        v20 = NSUnionRange(v16, v19);
        v17.location = location;
        v17.length = length;
        v13 = NSIntersectionRange(v17, v20);
        v8 = v13.location;
        v7 = v13.length;
      }
    }
  }

  v14 = v8;
  v15 = v7;
  result.length = v15;
  result.location = v14;
  return result;
}

@end