@interface SSSoftwareUpdate
- (NSString)bundleIdentifier;
- (SSSoftwareUpdate)initWithUpdateDictionary:(id)dictionary;
- (int64_t)parentalControlsRank;
- (int64_t)storeItemIdentifier;
- (void)dealloc;
@end

@implementation SSSoftwareUpdate

- (SSSoftwareUpdate)initWithUpdateDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = SSSoftwareUpdate;
  v4 = [(SSSoftwareUpdate *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [dictionary copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSoftwareUpdate;
  [(SSSoftwareUpdate *)&v3 dealloc];
}

- (NSString)bundleIdentifier
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:@"bundleId"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [(NSDictionary *)self->_dictionary objectForKey:@"bundle-id"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v3;

  return v4;
}

- (int64_t)parentalControlsRank
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:@"contentRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"value";
    v5 = v3;
  }

  else
  {
    v6 = [(NSDictionary *)self->_dictionary objectForKey:@"parental_control_attributes"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v4 = @"rating-software";
    v5 = v6;
  }

  v7 = [v5 objectForKey:v4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v7 integerValue];
}

- (int64_t)storeItemIdentifier
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"id"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 longLongValue];
}

@end