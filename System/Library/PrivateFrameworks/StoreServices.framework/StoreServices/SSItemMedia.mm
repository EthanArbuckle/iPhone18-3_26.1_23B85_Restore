@interface SSItemMedia
- (BOOL)isEqual:(id)a3;
- (SSItemMedia)init;
- (SSItemMedia)initWithStoreOfferDictionary:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  url = self->_url;
  v6 = [a3 URL];

  return [(NSURL *)url isEqual:v6];
}

- (SSItemMedia)initWithStoreOfferDictionary:(id)a3
{
  v16.receiver = self;
  v16.super_class = SSItemMedia;
  v4 = [(SSItemMedia *)&v16 init];
  if (!v4)
  {
    return v4;
  }

  v5 = [a3 objectForKey:@"preview-url"];
  if (v5)
  {
    v6 = v5;
    v7 = [a3 objectForKey:@"preview-duration"];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 intValue];
    }

    else
    {
      v8 = -1;
    }

    v4->_duration = v8;
    v4->_protected = 1;
  }

  else
  {
    v9 = [a3 objectForKey:@"asset-url"];
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v9;
    v10 = [a3 objectForKey:@"duration"];
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 intValue];
    }

    else
    {
      v11 = -1;
    }

    v4->_duration = v11;
  }

  v4->_url = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
LABEL_14:
  v12 = [a3 objectForKey:@"duration"];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 intValue];
  }

  else
  {
    v13 = -1;
  }

  v4->_fullDuration = v13;
  v14 = [a3 objectForKey:@"size"];
  if (objc_opt_respondsToSelector())
  {
    v4->_mediaFileSize = [v14 longLongValue];
  }

  return v4;
}

@end