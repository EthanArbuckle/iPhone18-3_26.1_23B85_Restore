@interface SAPathInfo
+ (id)pathInfoWithBinaryURL:(id)l;
+ (id)pathInfoWithURL:(id)l;
+ (id)pathInfoWithURL:(id)l bundleID:(id)d;
- (SAPathInfo)initWithCoder:(id)coder;
- (SAPathInfo)initWithURL:(id)l exclusive:(BOOL)exclusive bundleID:(id)d isDataURL:(BOOL)rL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SAPathInfo

- (SAPathInfo)initWithURL:(id)l exclusive:(BOOL)exclusive bundleID:(id)d isDataURL:(BOOL)rL
{
  lCopy = l;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = SAPathInfo;
  v13 = [(SAPathInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_url, l);
    v14->_exclusive = exclusive;
    objc_storeStrong(&v14->_bundleID, d);
    v14->_isDataURL = rL;
  }

  return v14;
}

+ (id)pathInfoWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy exclusive:1 bundleID:0 isDataURL:1];

  return v5;
}

+ (id)pathInfoWithURL:(id)l bundleID:(id)d
{
  dCopy = d;
  lCopy = l;
  v8 = [[self alloc] initWithURL:lCopy exclusive:1 bundleID:dCopy isDataURL:1];

  return v8;
}

+ (id)pathInfoWithBinaryURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy exclusive:1 bundleID:0 isDataURL:0];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeBool:self->_exclusive forKey:@"exclusive"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundle"];
  [coderCopy encodeBool:self->_isDataURL forKey:@"isDataURL"];
}

- (SAPathInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SAPathInfo;
  v5 = [(SAPathInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v5->_exclusive = [coderCopy decodeBoolForKey:@"exclusive"];
    v5->_isDataURL = [coderCopy decodeBoolForKey:@"isDataURL"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;
  }

  return v5;
}

@end