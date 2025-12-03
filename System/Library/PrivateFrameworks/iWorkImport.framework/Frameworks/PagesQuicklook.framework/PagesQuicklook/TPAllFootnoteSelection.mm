@interface TPAllFootnoteSelection
- (BOOL)isEqual:(id)equal;
@end

@implementation TPAllFootnoteSelection

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(equalCopy, v5, v6, v7, v8, v9, v4);

  return isMemberOfClass;
}

@end