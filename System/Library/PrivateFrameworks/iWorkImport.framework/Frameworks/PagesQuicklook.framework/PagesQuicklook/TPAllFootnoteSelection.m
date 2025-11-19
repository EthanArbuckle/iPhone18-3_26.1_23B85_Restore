@interface TPAllFootnoteSelection
- (BOOL)isEqual:(id)a3;
@end

@implementation TPAllFootnoteSelection

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(v3, v5, v6, v7, v8, v9, v4);

  return isMemberOfClass;
}

@end