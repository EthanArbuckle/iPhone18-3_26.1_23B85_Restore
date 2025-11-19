@interface SearchUIResolvedMediaDestination
+ (id)applicationNameForBundleIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)title;
- (SFCommand)command;
- (SearchUIImage)image;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SearchUIResolvedMediaDestination

+ (id)applicationNameForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [SearchUIUtilities bundleIdentifierForApp:11];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = @"APPLE_MUSIC";
LABEL_5:
    v9 = [SearchUIUtilities localizedStringForKey:v6];
    goto LABEL_7;
  }

  v7 = [SearchUIUtilities bundleIdentifierForApp:21];
  v8 = [v3 isEqualToString:v7];

  if (v8)
  {
    v6 = @"APPLE_PODCASTS";
    goto LABEL_5;
  }

  v10 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:0];
  v9 = [v10 localizedName];

LABEL_7:

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
      v7 = [(SearchUIResolvedMediaDestination *)v5 appBundleIdentifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(SearchUIResolvedMediaDestination *)self mediaMetadata];
        v9 = [(SearchUIResolvedMediaDestination *)v5 mediaMetadata];
        v10 = [v8 isEqual:v9];
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
  v3 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
  v4 = [v3 hash];
  v5 = [(SearchUIResolvedMediaDestination *)self mediaMetadata];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSString)title
{
  if (!self->_title)
  {
    v3 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];

    if (v3)
    {
      v4 = objc_opt_class();
      v5 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
      v6 = [v4 applicationNameForBundleIdentifier:v5];
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
    v5 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = [(SearchUIResolvedMediaDestination *)self mediaMetadata];

      if (v7)
      {
        v8 = objc_opt_new();
        v9 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
        [v8 setClientSelectedBundleIdentifier:v9];

        v10 = [(SearchUIResolvedMediaDestination *)self mediaMetadata];
        [v8 setMediaMetadata:v10];

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
    v3 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];

    if (v3)
    {
      v4 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
      v5 = [SearchUIAppIconImage appIconForBundleIdentifier:v4 variant:2];
      image = self->_image;
      self->_image = v5;
    }
  }

  v7 = self->_image;

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
  [v4 setAppBundleIdentifier:v5];

  v6 = [(SearchUIResolvedMediaDestination *)self mediaMetadata];
  [v4 setMediaMetadata:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SearchUIResolvedMediaDestination;
  v4 = [(SearchUIResolvedMediaDestination *)&v8 description];
  v5 = [(SearchUIResolvedMediaDestination *)self appBundleIdentifier];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end