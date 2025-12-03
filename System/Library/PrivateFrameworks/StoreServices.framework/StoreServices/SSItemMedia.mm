@interface SSItemMedia
- (BOOL)isEqual:(id)equal;
- (SSItemMedia)init;
- (SSItemMedia)initWithStoreOfferDictionary:(id)dictionary;
- (id)description;
- (void)dealloc;
@end

@implementation SSItemMedia

- (SSItemMedia)init
{
  v3.receiver = self;
  v3.super_class = SSItemMedia;
  result = [(SSItemMedia *)&v3 init];
  if (result)
  {
    result->_duration = -1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSItemMedia;
  [(SSItemMedia *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SSItemMedia;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: (%@) %@", -[SSItemMedia description](&v3, sel_description), self->_mediaKind, self->_url];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  url = self->_url;
  v6 = [equal URL];

  return [(NSURL *)url isEqual:v6];
}

- (SSItemMedia)initWithStoreOfferDictionary:(id)dictionary
{
  v16.receiver = self;
  v16.super_class = SSItemMedia;
  v4 = [(SSItemMedia *)&v16 init];
  if (!v4)
  {
    return v4;
  }

  v5 = [dictionary objectForKey:@"preview-url"];
  if (v5)
  {
    v6 = v5;
    v7 = [dictionary objectForKey:@"preview-duration"];
    if (objc_opt_respondsToSelector())
    {
      intValue = [v7 intValue];
    }

    else
    {
      intValue = -1;
    }

    v4->_duration = intValue;
    v4->_protected = 1;
  }

  else
  {
    v9 = [dictionary objectForKey:@"asset-url"];
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v9;
    v10 = [dictionary objectForKey:@"duration"];
    if (objc_opt_respondsToSelector())
    {
      intValue2 = [v10 intValue];
    }

    else
    {
      intValue2 = -1;
    }

    v4->_duration = intValue2;
  }

  v4->_url = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
LABEL_14:
  v12 = [dictionary objectForKey:@"duration"];
  if (objc_opt_respondsToSelector())
  {
    intValue3 = [v12 intValue];
  }

  else
  {
    intValue3 = -1;
  }

  v4->_fullDuration = intValue3;
  v14 = [dictionary objectForKey:@"size"];
  if (objc_opt_respondsToSelector())
  {
    v4->_mediaFileSize = [v14 longLongValue];
  }

  return v4;
}

@end