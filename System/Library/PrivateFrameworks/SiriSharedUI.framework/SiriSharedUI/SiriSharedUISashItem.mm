@interface SiriSharedUISashItem
+ (void)setLanguageCode:(id)code;
- (BOOL)canPunchout;
- (BOOL)isEqual:(id)equal;
- (SiriSharedUISashItem)init;
- (SiriSharedUISashItem)initWithApplicationBundleIdentifier:(id)identifier;
- (SiriSharedUISashItem)initWithTitle:(id)title image:(id)image;
- (SiriSharedUISashItemDelegate)delegate;
- (void)_configureIconForAppProxy:(id)proxy;
- (void)setImage:(id)image;
- (void)setTitle:(id)title;
@end

@implementation SiriSharedUISashItem

- (SiriSharedUISashItem)initWithTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  v8 = [(SiriSharedUISashItem *)self init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    [(SiriSharedUISashItem *)v8 setImage:imageCopy];
  }

  return v8;
}

- (SiriSharedUISashItem)initWithApplicationBundleIdentifier:(id)identifier
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(SiriSharedUISashItem *)self init];
  if (v5)
  {
    if (([identifierCopy isEqualToString:@"com.apple.SiriViewService"] & 1) != 0 || !objc_msgSend(identifierCopy, "length"))
    {
      applicationBundleIdentifier = v5->_applicationBundleIdentifier;
      v5->_applicationBundleIdentifier = @"com.apple.siri";
    }

    else
    {
      v6 = identifierCopy;
      applicationBundleIdentifier = v5->_applicationBundleIdentifier;
      v5->_applicationBundleIdentifier = v6;
    }

    v5->_siriImage = [identifierCopy isEqualToString:@"com.apple.siri"];
    v8 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v5->_applicationBundleIdentifier];
    appState = [v8 appState];
    isValid = [appState isValid];

    if ((isValid & 1) == 0)
    {
      v11 = [MEMORY[0x277CC1E60] applicationProxyForSystemPlaceholder:v5->_applicationBundleIdentifier];

      appState2 = [v11 appState];
      isValid2 = [appState2 isValid];

      if (!isValid2)
      {

        v20 = 0;
        goto LABEL_14;
      }

      v8 = v11;
    }

    [(SiriSharedUISashItem *)v5 _configureIconForAppProxy:v8];
    languageCode = [objc_opt_class() languageCode];
    v15 = languageCode;
    if (languageCode)
    {
      v22[0] = languageCode;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      localizedName = [v8 localizedNameForContext:0 preferredLocalizations:v16];
    }

    else
    {
      localizedName = [v8 localizedName];
    }

    v18 = [localizedName copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title = self->_title;
    title = [equalCopy title];
    if ([(NSString *)title isEqualToString:title])
    {
      image = self->_image;
      image = [equalCopy image];
      v9 = [(UIImage *)image isEqual:image];
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

- (void)setImage:(id)image
{
  v4 = MEMORY[0x277D759A0];
  imageCopy = image;
  mainScreen = [v4 mainScreen];
  [mainScreen scale];
  v6 = [imageCopy _applicationIconImageForFormat:5 precomposed:0 scale:?];

  image = self->_image;
  self->_image = v6;
}

- (void)setTitle:(id)title
{
  self->_title = [title copy];

  MEMORY[0x2821F96F8]();
}

- (BOOL)canPunchout
{
  commands = [(SiriSharedUISashItem *)self commands];
  if (commands && (v4 = commands, -[SiriSharedUISashItem commands](self, "commands"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, !v6))
  {
    return 0;
  }

  else
  {
    return self->_canPunchout;
  }
}

- (void)_configureIconForAppProxy:(id)proxy
{
  self->_image = [MEMORY[0x277D755B8] _iconForResourceProxy:proxy format:5];

  MEMORY[0x2821F96F8]();
}

+ (void)setLanguageCode:(id)code
{
  _languageCode = [code copy];

  MEMORY[0x2821F96F8]();
}

- (SiriSharedUISashItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end