@interface SSLookupItem
- (BOOL)isPOIBased;
- (NSArray)artwork;
- (NSArray)categoryNames;
- (NSArray)offers;
- (NSNumber)ITunesStoreIdentifier;
- (NSString)artistName;
- (NSString)bundleIdentifier;
- (NSString)displayName;
- (NSString)itemKind;
- (NSURL)productPageURL;
- (SSLookupItem)initWithCoder:(id)coder;
- (SSLookupItem)initWithLookupDictionary:(id)dictionary;
- (float)userRating;
- (float)userRatingForCurrentVersion;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)numberOfUserRatings;
- (int64_t)numberOfUserRatingsForCurrentVersion;
- (void)dealloc;
@end

@implementation SSLookupItem

- (SSLookupItem)initWithLookupDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = SSLookupItem;
  v4 = [(SSLookupItem *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [dictionary copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSLookupItem;
  [(SSLookupItem *)&v3 dealloc];
}

- (NSString)artistName
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"artistName"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSArray)artwork
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(NSDictionary *)self->_dictionary objectForKey:@"artwork"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v4, 0}];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [[SSLookupItemArtwork alloc] initWithLookupDictionary:v11];
          if (v12)
          {
            v13 = v12;
            [(NSArray *)array addObject:v12];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (NSString)bundleIdentifier
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"bundleId"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSArray)categoryNames
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"genreNames"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSString)displayName
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"name"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (BOOL)isPOIBased
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"poiBased"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (NSString)itemKind
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"kind"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = v2;

  return v3;
}

- (NSNumber)ITunesStoreIdentifier
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"id"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "longLongValue")}];
    }

    else
    {
      v2 = 0;
    }
  }

  v3 = v2;

  return v3;
}

- (int64_t)numberOfUserRatings
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"userRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"ratingCount"];
  }

  else
  {
    v3 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 integerValue];
}

- (int64_t)numberOfUserRatingsForCurrentVersion
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"userRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"ratingCountCurrentVersion"];
  }

  else
  {
    v3 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 integerValue];
}

- (NSArray)offers
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(NSDictionary *)self->_dictionary objectForKey:@"offers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [[SSLookupItemOffer alloc] initWithLookupDictionary:v9];
            if (v10)
            {
              v11 = v10;
              [(NSArray *)array addObject:v10];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  return array;
}

- (NSURL)productPageURL
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (float)userRating
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"userRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"value"];
  }

  else
  {
    v3 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  [v3 floatValue];
  return result;
}

- (float)userRatingForCurrentVersion
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"userRating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"valueCurrentVersion"];
  }

  else
  {
    v3 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  [v3 floatValue];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = [(NSDictionary *)self->_dictionary copy];
  return v4;
}

- (SSLookupItem)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SSLookupItem;
  v4 = [(SSLookupItem *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [objc_msgSend(coder decodeObjectForKey:{@"SSEncodingDictionary", "copy"}];
  }

  return v4;
}

@end