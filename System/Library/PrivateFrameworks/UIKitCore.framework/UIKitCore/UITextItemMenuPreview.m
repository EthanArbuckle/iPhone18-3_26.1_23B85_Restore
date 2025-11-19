@interface UITextItemMenuPreview
+ (UITextItemMenuPreview)defaultPreview;
- (UITextItemMenuPreview)initWithView:(UIView *)view;
@end

@implementation UITextItemMenuPreview

+ (UITextItemMenuPreview)defaultPreview
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (UITextItemMenuPreview)initWithView:(UIView *)view
{
  v5 = view;
  v9.receiver = self;
  v9.super_class = UITextItemMenuPreview;
  v6 = [(UITextItemMenuPreview *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previewView, view);
  }

  return v7;
}

@end