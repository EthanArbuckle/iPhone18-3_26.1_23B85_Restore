@interface VUIExtrasInfo
+ (BOOL)isValidExtrasInfo:(id)a3;
- (NSString)extrasURLString;
- (NSString)previewURLString;
- (VUIExtrasInfo)initWithDictionary:(id)a3;
- (VUIExtrasInfo)initWithMediaItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_initializeWithMPMediaItem:(id)a3;
- (void)setActionParams:(id)a3;
@end

@implementation VUIExtrasInfo

- (VUIExtrasInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VUIExtrasInfo;
  v5 = [(VUIExtrasInfo *)&v10 init];
  v6 = v5;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    extrasDict = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    extrasDict = v6->_extrasDict;
    v6->_extrasDict = v7;
  }

  else
  {
LABEL_5:
    extrasDict = v6;
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (VUIExtrasInfo)initWithMediaItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VUIExtrasInfo;
  v5 = [(VUIExtrasInfo *)&v8 init];
  if (v5)
  {
    v6 = [v4 mediaPlayerMediaItem];
    [(VUIExtrasInfo *)v5 _initializeWithMPMediaItem:v6];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VUIExtrasInfo alloc];
  extrasDict = self->_extrasDict;

  return [(VUIExtrasInfo *)v4 initWithDictionary:extrasDict];
}

- (NSString)extrasURLString
{
  v2 = [(NSDictionary *)self->_extrasDict vui_stringForKey:@"extrasUrl"];
  v3 = v2;
  if (v2)
  {
    if ([v2 length])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)previewURLString
{
  v2 = [(NSDictionary *)self->_extrasDict vui_stringForKey:@"previewUrl"];
  v3 = v2;
  if (v2)
  {
    if ([v2 length])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setActionParams:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  extrasDict = self->_extrasDict;
  v6 = a3;
  v9 = [v4 dictionaryWithDictionary:extrasDict];
  [v9 setValue:v6 forKey:@"buyParams"];

  v7 = [v9 copy];
  v8 = self->_extrasDict;
  self->_extrasDict = v7;
}

+ (BOOL)isValidExtrasInfo:(id)a3
{
  v3 = [a3 extrasURLString];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)_initializeWithMPMediaItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v25 = v4;
    v5 = objc_opt_new();
    v6 = [v25 valueForProperty:*MEMORY[0x1E696FB50]];
    if ([v6 length])
    {
      v7 = [v25 valueForProperty:*MEMORY[0x1E696F9E8]];
      if ([v7 length])
      {
        v8 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v6];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 queryItems];
          v11 = [v10 mutableCopy];

          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"hlsUrl" value:v7];
          if (v12)
          {
            [v11 addObject:v12];
            [v9 setQueryItems:v11];
            v13 = [v9 URL];
            v14 = [v13 absoluteString];

            if ([v14 length])
            {
              v15 = v14;

              v6 = v15;
            }
          }
        }
      }

      [v5 setObject:v6 forKey:@"extrasUrl"];
    }

    v16 = [v25 valueForProperty:*MEMORY[0x1E696FB70]];
    if ([v16 length])
    {
      [v5 setObject:v16 forKey:@"buyParams"];
    }

    v17 = [v25 valueForProperty:*MEMORY[0x1E696FB60]];
    v18 = v17;
    if (v17 && [v17 longLongValue])
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(v18, "longLongValue")];
      [v5 setObject:v19 forKey:@"adamId"];
    }

    v20 = [v25 valueForProperty:*MEMORY[0x1E696F970]];
    if (![v20 count])
    {
      goto LABEL_24;
    }

    v21 = [v20 objectForKeyedSubscript:@"ratingLevel"];
    if ([v21 length])
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v21, "integerValue")}];

      if (!v22)
      {
LABEL_24:
        v23 = [v5 copy];
        extrasDict = self->_extrasDict;
        self->_extrasDict = v23;

        v4 = v25;
        goto LABEL_25;
      }

      [v5 setObject:v22 forKey:@"ratingValue"];
      v21 = v22;
    }

    goto LABEL_24;
  }

LABEL_25:
}

@end