@interface _UIImagePreparedCGImageContent
- (void)dealloc;
@end

@implementation _UIImagePreparedCGImageContent

- (void)dealloc
{
  CARenderRelease();
  v3.receiver = self;
  v3.super_class = _UIImagePreparedCGImageContent;
  [(_UIImageCGImageContent *)&v3 dealloc];
}

@end