@interface __NSTextListElementEditedRangeValidator
- (_NSRange)adjustedInvalidationRangeForRange:(_NSRange)range limitRange:(_NSRange)limitRange textContentStorage:(id)storage;
@end

@implementation __NSTextListElementEditedRangeValidator

- (_NSRange)adjustedInvalidationRangeForRange:(_NSRange)range limitRange:(_NSRange)limitRange textContentStorage:(id)storage
{
  length = limitRange.length;
  location = limitRange.location;
  v7 = range.length;
  v8 = range.location;
  attributedString = [storage attributedString];
  if (v8 < [attributedString length])
  {
    v10 = [objc_msgSend(objc_msgSend(attributedString attribute:@"NSParagraphStyle" atIndex:v8 effectiveRange:{0), "textLists"), "firstObject"}];
    if (v10)
    {
      v11 = [attributedString rangeOfTextList:v10 atIndex:v8];
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