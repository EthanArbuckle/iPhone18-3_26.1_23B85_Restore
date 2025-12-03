@interface SearchUIResolvedMediaDestination
+ (id)applicationNameForBundleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)title;
- (SFCommand)command;
- (SearchUIImage)image;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation SearchUIResolvedMediaDestination

+ (id)applicationNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [SearchUIUtilities bundleIdentifierForApp:11];
  v5 = [identifierCopy isEqualToString:v4];

  if (v5)
  {
    v6 = @"APPLE_MUSIC";
LABEL_5:
    localizedName = [SearchUIUtilities localizedStringForKey:v6];
    goto LABEL_7;
  }

  v7 = [SearchUIUtilities bundleIdentifierForApp:21];
  v8 = [identifierCopy isEqualToString:v7];

  if (v8)
  {
    v6 = @"APPLE_PODCASTS";
    goto LABEL_5;
  }

  v10 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
  localizedName = [v10 localizedName];

LABEL_7:

  return localizedName;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      appBundleIdentifier = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
      appBundleIdentifier2 = [(SearchUIResolvedMediaDestination *)v5 appBundleIdentifier];
      if ([appBundleIdentifier isEqual:appBundleIdentifier2])
      {
        mediaMetadata = [(SearchUIResolvedMediaDestination *)self mediaMetadata];
        mediaMetadata2 = [(SearchUIResolvedMediaDestination *)v5 mediaMetadata];
        v10 = [mediaMetadata isEqual:mediaMetadata2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  appBundleIdentifier = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
  v4 = [appBundleIdentifier hash];
  mediaMetadata = [(SearchUIResolvedMediaDestination *)self mediaMetadata];
  v6 = [mediaMetadata hash];

  return v6 ^ v4;
}

- (NSString)title
{
  if (!self->_title)
  {
    appBundleIdentifier = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];

    if (appBundleIdentifier)
    {
      v4 = objc_opt_class();
      appBundleIdentifier2 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
      v6 = [v4 applicationNameForBundleIdentifier:appBundleIdentifier2];
      title = self->_title;
      self->_title = v6;
    }
  }

  v8 = self->_title;

  return v8;
}

- (SFCommand)command
{
  if (!self->_command)
  {
    appBundleIdentifier = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
    if (appBundleIdentifier)
    {
      v6 = appBundleIdentifier;
      mediaMetadata = [(SearchUIResolvedMediaDestination *)self mediaMetadata];

      if (mediaMetadata)
      {
        v8 = objc_opt_new();
        appBundleIdentifier2 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
        [v8 setClientSelectedBundleIdentifier:appBundleIdentifier2];

        mediaMetadata2 = [(SearchUIResolvedMediaDestination *)self mediaMetadata];
        [v8 setMediaMetadata:mediaMetadata2];

        command = self->_command;
        self->_command = v8;
      }
    }
  }

  v3 = self->_command;

  return v3;
}

- (SearchUIImage)image
{
  if (!self->_image)
  {
    appBundleIdentifier = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];

    if (appBundleIdentifier)
    {
      appBundleIdentifier2 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
      v5 = [SearchUIAppIconImage appIconForBundleIdentifier:appBundleIdentifier2 variant:2];
      image = self->_image;
      self->_image = v5;
    }
  }

  v7 = self->_image;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  appBundleIdentifier = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
  [v4 setAppBundleIdentifier:appBundleIdentifier];

  mediaMetadata = [(SearchUIResolvedMediaDestination *)self mediaMetadata];
  [v4 setMediaMetadata:mediaMetadata];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SearchUIResolvedMediaDestination;
  v4 = [(SearchUIResolvedMediaDestination *)&v8 description];
  appBundleIdentifier = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, appBundleIdentifier];

  return v6;
}

@end