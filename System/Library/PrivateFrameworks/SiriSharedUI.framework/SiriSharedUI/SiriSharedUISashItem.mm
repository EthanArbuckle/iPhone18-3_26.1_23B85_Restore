@interface SiriSharedUISashItem
+ (void)setLanguageCode:(id)a3;
- (BOOL)canPunchout;
- (BOOL)isEqual:(id)a3;
- (SiriSharedUISashItem)init;
- (SiriSharedUISashItem)initWithApplicationBundleIdentifier:(id)a3;
- (SiriSharedUISashItem)initWithTitle:(id)a3 image:(id)a4;
- (SiriSharedUISashItemDelegate)delegate;
- (void)_configureIconForAppProxy:(id)a3;
- (void)setImage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SiriSharedUISashItem

- (SiriSharedUISashItem)initWithTitle:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SiriSharedUISashItem *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    [(SiriSharedUISashItem *)v8 setImage:v7];
  }

  return v8;
}

- (SiriSharedUISashItem)initWithApplicationBundleIdentifier:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SiriSharedUISashItem *)self init];
  if (v5)
  {
    if (([v4 isEqualToString:@"com.apple.SiriViewService"] & 1) != 0 || !objc_msgSend(v4, "length"))
    {
      applicationBundleIdentifier = v5->_applicationBundleIdentifier;
      v5->_applicationBundleIdentifier = @"com.apple.siri";
    }

    else
    {
      v6 = v4;
      applicationBundleIdentifier = v5->_applicationBundleIdentifier;
      v5->_applicationBundleIdentifier = v6;
    }

    v5->_siriImage = [v4 isEqualToString:@"com.apple.siri"];
    v8 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v5->_applicationBundleIdentifier];
    v9 = [v8 appState];
    v10 = [v9 isValid];

    if ((v10 & 1) == 0)
    {
      v11 = [MEMORY[0x277CC1E60] applicationProxyForSystemPlaceholder:v5->_applicationBundleIdentifier];

      v12 = [v11 appState];
      v13 = [v12 isValid];

      if (!v13)
      {

        v20 = 0;
        goto LABEL_14;
      }

      v8 = v11;
    }

    [(SiriSharedUISashItem *)v5 _configureIconForAppProxy:v8];
    v14 = [objc_opt_class() languageCode];
    v15 = v14;
    if (v14)
    {
      v22[0] = v14;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      v17 = [v8 localizedNameForContext:0 preferredLocalizations:v16];
    }

    else
    {
      v17 = [v8 localizedName];
    }

    v18 = [v17 copy];
    title = v5->_title;
    v5->_title = v18;

    v5->_canPunchout = ![(NSString *)v5->_applicationBundleIdentifier isEqualToString:@"com.apple.siri"];
  }

  v20 = v5;
LABEL_14:

  return v20;
}

- (SiriSharedUISashItem)init
{
  v3.receiver = self;
  v3.super_class = SiriSharedUISashItem;
  result = [(SiriSharedUISashItem *)&v3 init];
  if (result)
  {
    result->_canPunchout = 1;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title = self->_title;
    v6 = [v4 title];
    if ([(NSString *)title isEqualToString:v6])
    {
      image = self->_image;
      v8 = [v4 image];
      v9 = [(UIImage *)image isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setImage:(id)a3
{
  v4 = MEMORY[0x277D759A0];
  v5 = a3;
  v8 = [v4 mainScreen];
  [v8 scale];
  v6 = [v5 _applicationIconImageForFormat:5 precomposed:0 scale:?];

  image = self->_image;
  self->_image = v6;
}

- (void)setTitle:(id)a3
{
  self->_title = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (BOOL)canPunchout
{
  v3 = [(SiriSharedUISashItem *)self commands];
  if (v3 && (v4 = v3, -[SiriSharedUISashItem commands](self, "commands"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, !v6))
  {
    return 0;
  }

  else
  {
    return self->_canPunchout;
  }
}

- (void)_configureIconForAppProxy:(id)a3
{
  self->_image = [MEMORY[0x277D755B8] _iconForResourceProxy:a3 format:5];

  MEMORY[0x2821F96F8]();
}

+ (void)setLanguageCode:(id)a3
{
  _languageCode = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (SiriSharedUISashItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end