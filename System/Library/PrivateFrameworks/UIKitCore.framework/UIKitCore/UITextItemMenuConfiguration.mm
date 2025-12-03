@interface UITextItemMenuConfiguration
+ (UITextItemMenuConfiguration)configurationWithMenu:(UIMenu *)menu;
+ (UITextItemMenuConfiguration)configurationWithPreview:(UITextItemMenuPreview *)preview menu:(UIMenu *)menu;
- (id)_initWithPreview:(id)preview menu:(id)menu;
@end

@implementation UITextItemMenuConfiguration

- (id)_initWithPreview:(id)preview menu:(id)menu
{
  previewCopy = preview;
  menuCopy = menu;
  v12.receiver = self;
  v12.super_class = UITextItemMenuConfiguration;
  v9 = [(UITextItemMenuConfiguration *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_preview, preview);
    objc_storeStrong(p_isa + 3, menu);
  }

  return p_isa;
}

+ (UITextItemMenuConfiguration)configurationWithMenu:(UIMenu *)menu
{
  v4 = menu;
  v5 = [self alloc];
  v6 = +[UITextItemMenuPreview defaultPreview];
  v7 = [v5 _initWithPreview:v6 menu:v4];

  return v7;
}

+ (UITextItemMenuConfiguration)configurationWithPreview:(UITextItemMenuPreview *)preview menu:(UIMenu *)menu
{
  v6 = menu;
  v7 = preview;
  v8 = [[self alloc] _initWithPreview:v7 menu:v6];

  return v8;
}

@end