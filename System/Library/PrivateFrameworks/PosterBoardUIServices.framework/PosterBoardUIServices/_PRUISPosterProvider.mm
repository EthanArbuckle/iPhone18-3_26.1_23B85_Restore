@interface _PRUISPosterProvider
- (BOOL)isEqual:(id)equal;
- (NSString)localizedDisplayName;
- (_PRUISPosterProvider)initWithProviderBundleIdentifier:(id)identifier;
- (id)localizedDisplayNameForLocale:(id)locale;
@end

@implementation _PRUISPosterProvider

- (_PRUISPosterProvider)initWithProviderBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = _PRUISPosterProvider;
  v5 = [(_PRUISPosterProvider *)&v15 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = MEMORY[0x1E69C5258];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57___PRUISPosterProvider_initWithProviderBundleIdentifier___block_invoke;
    v13[3] = &unk_1E83A7F08;
    v14 = identifierCopy;
    globalAsyncScheduler = [MEMORY[0x1E69C5268] globalAsyncScheduler];
    v10 = [v8 futureWithBlock:v13 scheduler:globalAsyncScheduler];
    extensionRecordFuture = v5->_extensionRecordFuture;
    v5->_extensionRecordFuture = v10;
  }

  return v5;
}

- (NSString)localizedDisplayName
{
  v2 = [(PFTFuture *)self->_extensionRecordFuture result:0];
  localizedName = [v2 localizedName];

  return localizedName;
}

- (id)localizedDisplayNameForLocale:(id)locale
{
  v10[1] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  if (!localeCopy)
  {
    localeCopy = [MEMORY[0x1E695DF58] currentLocale];
  }

  v5 = [(PFTFuture *)self->_extensionRecordFuture result:0];
  localeIdentifier = [localeCopy localeIdentifier];
  v10[0] = localeIdentifier;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v5 localizedNameWithPreferredLocalizations:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bundleIdentifier = [(_PRUISPosterProvider *)v5 bundleIdentifier];
    bundleIdentifier2 = [(_PRUISPosterProvider *)self bundleIdentifier];
    v8 = [bundleIdentifier isEqualToString:bundleIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end