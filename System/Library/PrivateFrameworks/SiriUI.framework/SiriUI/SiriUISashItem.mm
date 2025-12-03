@interface SiriUISashItem
+ (id)defaultSashItem;
- (BOOL)canPunchout;
- (SiriUISashItem)initWithExtension:(id)extension;
- (void)setImage:(id)image;
- (void)setTitle:(id)title;
@end

@implementation SiriUISashItem

+ (id)defaultSashItem
{
  v2 = [SiriUISashItem alloc];
  v3 = +[SiriUIUtilities defaultBrowserBundleIdentifier];
  v4 = [(SiriSharedUISashItem *)v2 initWithApplicationBundleIdentifier:v3];

  [(SiriUISashItem *)v4 _setDefault:1];

  return v4;
}

- (SiriUISashItem)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [(SiriSharedUISashItem *)self init];
  if (v5)
  {
    siriui_displayName = [extensionCopy siriui_displayName];
    v7 = [siriui_displayName copy];
    [(SiriUISashItem *)v5 setTitle:v7];

    siriui_iconImage = [extensionCopy siriui_iconImage];
    [(SiriUISashItem *)v5 setImage:siriui_iconImage];
  }

  return v5;
}

- (void)setImage:(id)image
{
  v4.receiver = self;
  v4.super_class = SiriUISashItem;
  [(SiriSharedUISashItem *)&v4 setImage:image];
  [(SiriUISashItem *)self _setDefault:0];
}

- (void)setTitle:(id)title
{
  v4.receiver = self;
  v4.super_class = SiriUISashItem;
  [(SiriSharedUISashItem *)&v4 setTitle:title];
  [(SiriUISashItem *)self _setDefault:0];
}

- (BOOL)canPunchout
{
  if ([(SiriUISashItem *)self isDefault])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SiriUISashItem;
  return [(SiriSharedUISashItem *)&v4 canPunchout];
}

@end