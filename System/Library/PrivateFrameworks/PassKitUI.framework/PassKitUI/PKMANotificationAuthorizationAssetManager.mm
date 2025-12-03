@interface PKMANotificationAuthorizationAssetManager
+ (id)sharedInstance;
- (CGImage)notificationAuthorizationImageForLocale:(id)locale;
- (PKMANotificationAuthorizationAssetManager)init;
- (id)_languageDirectionFormatForLocale:(id)locale;
- (id)_notificationAuthorizationImageFilenameForLocale:(id)locale;
- (id)notificationAuthorizationString:(id)string;
- (id)notificationAuthorizationString:(id)string pass:(id)pass;
- (void)downloadNotificationAuthorizationImage:(id)image completion:(id)completion;
@end

@implementation PKMANotificationAuthorizationAssetManager

+ (id)sharedInstance
{
  if (_MergedGlobals_602 != -1)
  {
    dispatch_once(&_MergedGlobals_602, &__block_literal_global_159);
  }

  v3 = qword_1EBD6ACE0;

  return v3;
}

void __59__PKMANotificationAuthorizationAssetManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKMANotificationAuthorizationAssetManager);
  v1 = qword_1EBD6ACE0;
  qword_1EBD6ACE0 = v0;
}

- (PKMANotificationAuthorizationAssetManager)init
{
  v7.receiver = self;
  v7.super_class = PKMANotificationAuthorizationAssetManager;
  v2 = [(PKMANotificationAuthorizationAssetManager *)&v7 init];
  if (v2 && ([MEMORY[0x1E69B89C0] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), mobileAssetManager = v2->_mobileAssetManager, v2->_mobileAssetManager = v3, mobileAssetManager, !v2->_mobileAssetManager))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (id)notificationAuthorizationString:(id)string
{
  stringCopy = string;
  v5 = [(PKMobileAssetManager *)self->_mobileAssetManager cachedStringsBundleWithIdentifier:*MEMORY[0x1E69BBB18]];
  v6 = PKLocalizedStringInMobileAssetsStringsBundle(stringCopy, v5);
  if (!v6)
  {
    v6 = PKLocalizedString(stringCopy);
  }

  return v6;
}

- (id)notificationAuthorizationString:(id)string pass:(id)pass
{
  stringCopy = string;
  passCopy = pass;
  v8 = [(PKMobileAssetManager *)self->_mobileAssetManager cachedStringsBundleWithIdentifier:*MEMORY[0x1E69BBB18]];
  v9 = PKLocalizedStringInMobileAssetsStringsBundle(stringCopy, v8);
  if (!v9)
  {
    localizedDescription = [passCopy localizedDescription];
    v9 = PKLocalizedString(stringCopy, &stru_1F3BD5BF0.isa, localizedDescription);
  }

  return v9;
}

- (void)downloadNotificationAuthorizationImage:(id)image completion:(id)completion
{
  completionCopy = completion;
  v7 = [(PKMANotificationAuthorizationAssetManager *)self _notificationAuthorizationImageFilenameForLocale:image];
  mobileAssetManager = self->_mobileAssetManager;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__PKMANotificationAuthorizationAssetManager_downloadNotificationAuthorizationImage_completion___block_invoke;
  v10[3] = &unk_1E801CBF0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(PKMobileAssetManager *)mobileAssetManager dynamicAssetWithIdentifier:v7 parameters:0 timeout:20 completion:v10];
}

uint64_t __95__PKMANotificationAuthorizationAssetManager_downloadNotificationAuthorizationImage_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0);
  }

  return result;
}

- (CGImage)notificationAuthorizationImageForLocale:(id)locale
{
  v4 = [(PKMANotificationAuthorizationAssetManager *)self _notificationAuthorizationImageFilenameForLocale:locale];
  v5 = [(PKMobileAssetManager *)self->_mobileAssetManager cachedDynamicAssetWithIdentifier:v4 parameters:0];
  v6 = [v4 stringByAppendingFormat:@"_%@", @"Light"];
  v7 = [v4 stringByAppendingFormat:@"_%@", @"Dark"];
  if (!v5)
  {
    v10 = 0;
LABEL_6:
    v8 = PKUIImageNamed(v6);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = PKUIImageNamed(v7);
    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E69DCAB8] imageNamed:v6 inBundle:v5];
  v9 = [MEMORY[0x1E69DCAB8] imageNamed:v7 inBundle:v5];
  v10 = v9;
  if (!v8)
  {
    goto LABEL_6;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = PKUIDynamicImage(v8, v10);
  cGImage = [v11 CGImage];

  return cGImage;
}

- (id)_languageDirectionFormatForLocale:(id)locale
{
  v3 = MEMORY[0x1E695DF58];
  languageCode = [locale languageCode];
  v5 = [v3 characterDirectionForLanguage:languageCode];

  v6 = @"LTR";
  if (v5 == 2)
  {
    v6 = @"RTL";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%@", v6];

  return v7;
}

- (id)_notificationAuthorizationImageFilenameForLocale:(id)locale
{
  localeCopy = locale;
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"Notification"];
  if (PKIsVision())
  {
    v6 = @"Vision";
  }

  else if (PKIsPad())
  {
    [v5 appendFormat:@"_%@", @"Pad"];
    v7 = PKLocaleIs24HourMode();
    v8 = @"12hr";
    if (v7)
    {
      v8 = @"24hr";
    }

    [v5 appendFormat:@"_%@", v8];
    v9 = [(PKMANotificationAuthorizationAssetManager *)self _languageDirectionFormatForLocale:localeCopy];
    [v5 appendString:v9];

    v10 = PKNumberingSystemForLocale();
    if (v10 == 1)
    {
      v6 = @"Arabic";
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_14;
      }

      v6 = @"Devanagari";
    }
  }

  else
  {
    [v5 appendFormat:@"_%@", @"Phone"];
    v11 = [(PKMANotificationAuthorizationAssetManager *)self _languageDirectionFormatForLocale:localeCopy];
    [v5 appendString:v11];

    IsAvailable = PKHomeButtonIsAvailable();
    v6 = @"FaceID";
    if (IsAvailable)
    {
      v6 = @"TouchID";
    }
  }

  [v5 appendFormat:@"_%@", v6];
LABEL_14:
  v13 = [v5 copy];

  return v13;
}

@end