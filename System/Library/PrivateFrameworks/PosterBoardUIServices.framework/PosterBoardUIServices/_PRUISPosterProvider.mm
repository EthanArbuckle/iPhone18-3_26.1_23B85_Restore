@interface _PRUISPosterProvider
- (BOOL)isEqual:(id)a3;
- (NSString)localizedDisplayName;
- (_PRUISPosterProvider)initWithProviderBundleIdentifier:(id)a3;
- (id)localizedDisplayNameForLocale:(id)a3;
@end

@implementation _PRUISPosterProvider

- (_PRUISPosterProvider)initWithProviderBundleIdentifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _PRUISPosterProvider;
  v5 = [(_PRUISPosterProvider *)&v15 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = MEMORY[0x1E69C5258];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57___PRUISPosterProvider_initWithProviderBundleIdentifier___block_invoke;
    v13[3] = &unk_1E83A7F08;
    v14 = v4;
    v9 = [MEMORY[0x1E69C5268] globalAsyncScheduler];
    v10 = [v8 futureWithBlock:v13 scheduler:v9];
    extensionRecordFuture = v5->_extensionRecordFuture;
    v5->_extensionRecordFuture = v10;
  }

  return v5;
}

- (NSString)localizedDisplayName
{
  v2 = [(PFTFuture *)self->_extensionRecordFuture result:0];
  v3 = [v2 localizedName];

  return v3;
}

- (id)localizedDisplayNameForLocale:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v5 = [(PFTFuture *)self->_extensionRecordFuture result:0];
  v6 = [v4 localeIdentifier];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v5 localizedNameWithPreferredLocalizations:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_PRUISPosterProvider *)v5 bundleIdentifier];
    v7 = [(_PRUISPosterProvider *)self bundleIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end