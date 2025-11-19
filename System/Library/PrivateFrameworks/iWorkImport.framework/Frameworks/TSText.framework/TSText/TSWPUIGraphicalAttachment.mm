@interface TSWPUIGraphicalAttachment
- (CGSize)size;
- (id)rendererForAttachment;
@end

@implementation TSWPUIGraphicalAttachment

- (id)rendererForAttachment
{
  v2 = objc_opt_new();

  return v2;
}

- (CGSize)size
{
  v2 = 100.0;
  v3 = 30.0;
  result.height = v2;
  result.width = v3;
  return result;
}

@end