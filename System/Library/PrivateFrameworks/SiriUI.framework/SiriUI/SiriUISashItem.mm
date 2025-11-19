@interface SiriUISashItem
+ (id)defaultSashItem;
- (BOOL)canPunchout;
- (SiriUISashItem)initWithExtension:(id)a3;
- (void)setImage:(id)a3;
- (void)setTitle:(id)a3;
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

- (SiriUISashItem)initWithExtension:(id)a3
{
  v4 = a3;
  v5 = [(SiriSharedUISashItem *)self init];
  if (v5)
  {
    v6 = [v4 siriui_displayName];
    v7 = [v6 copy];
    [(SiriUISashItem *)v5 setTitle:v7];

    v8 = [v4 siriui_iconImage];
    [(SiriUISashItem *)v5 setImage:v8];
  }

  return v5;
}

- (void)setImage:(id)a3
{
  v4.receiver = self;
  v4.super_class = SiriUISashItem;
  [(SiriSharedUISashItem *)&v4 setImage:a3];
  [(SiriUISashItem *)self _setDefault:0];
}

- (void)setTitle:(id)a3
{
  v4.receiver = self;
  v4.super_class = SiriUISashItem;
  [(SiriSharedUISashItem *)&v4 setTitle:a3];
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