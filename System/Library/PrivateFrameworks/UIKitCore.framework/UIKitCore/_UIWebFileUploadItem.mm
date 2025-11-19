@interface _UIWebFileUploadItem
- (_UIWebFileUploadItem)initWithFilePath:(id)a3;
- (void)dealloc;
@end

@implementation _UIWebFileUploadItem

- (_UIWebFileUploadItem)initWithFilePath:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIWebFileUploadItem;
  v4 = [(_UIWebFileUploadItem *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_UIWebFileUploadItem *)v4 setFilePath:a3];
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