@interface _UIWebFileUploadItem
- (_UIWebFileUploadItem)initWithFilePath:(id)path;
- (void)dealloc;
@end

@implementation _UIWebFileUploadItem

- (_UIWebFileUploadItem)initWithFilePath:(id)path
{
  v7.receiver = self;
  v7.super_class = _UIWebFileUploadItem;
  v4 = [(_UIWebFileUploadItem *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_UIWebFileUploadItem *)v4 setFilePath:path];
  }

  return v5;
}

- (void)dealloc
{
  [(_UIWebFileUploadItem *)self setFilePath:0];
  v3.receiver = self;
  v3.super_class = _UIWebFileUploadItem;
  [(_UIWebFileUploadItem *)&v3 dealloc];
}

@end