@interface SAPathInfo
+ (id)pathInfoWithBinaryURL:(id)a3;
+ (id)pathInfoWithURL:(id)a3;
+ (id)pathInfoWithURL:(id)a3 bundleID:(id)a4;
- (SAPathInfo)initWithCoder:(id)a3;
- (SAPathInfo)initWithURL:(id)a3 exclusive:(BOOL)a4 bundleID:(id)a5 isDataURL:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SAPathInfo

- (SAPathInfo)initWithURL:(id)a3 exclusive:(BOOL)a4 bundleID:(id)a5 isDataURL:(BOOL)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = SAPathInfo;
  v13 = [(SAPathInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_url, a3);
    v14->_exclusive = a4;
    objc_storeStrong(&v14->_bundleID, a5);
    v14->_isDataURL = a6;
  }

  return v14;
}

+ (id)pathInfoWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4 exclusive:1 bundleID:0 isDataURL:1];

  return v5;
}

+ (id)pathInfoWithURL:(id)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithURL:v7 exclusive:1 bundleID:v6 isDataURL:1];

  return v8;
}

+ (id)pathInfoWithBinaryURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4 exclusive:1 bundleID:0 isDataURL:0];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeBool:self->_exclusive forKey:@"exclusive"];
  [v5 encodeObject:self->_bundleID forKey:@"bundle"];
  [v5 encodeBool:self->_isDataURL forKey:@"isDataURL"];
}

- (SAPathInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SAPathInfo;
  v5 = [(SAPathInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v5->_exclusive = [v4 decodeBoolForKey:@"exclusive"];
    v5->_isDataURL = [v4 decodeBoolForKey:@"isDataURL"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;
  }

  return v5;
}

@end