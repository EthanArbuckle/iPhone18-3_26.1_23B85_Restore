@interface SPDelegatedShareImportResult
- (SPDelegatedShareImportResult)initWithAuthUrl:(id)a3;
- (SPDelegatedShareImportResult)initWithCoder:(id)a3;
- (SPDelegatedShareImportResult)initWithShare:(id)a3;
- (SPDelegatedShareImportResult)initWithShare:(id)a3 authUrl:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPDelegatedShareImportResult

- (SPDelegatedShareImportResult)initWithShare:(id)a3 authUrl:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPDelegatedShareImportResult;
  v9 = [(SPDelegatedShareImportResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_share, a3);
    objc_storeStrong(&v10->_authUrl, a4);
  }

  return v10;
}

- (SPDelegatedShareImportResult)initWithShare:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SPDelegatedShareImportResult;
  v6 = [(SPDelegatedShareImportResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_share, a3);
    authUrl = v7->_authUrl;
    v7->_authUrl = 0;
  }

  return v7;
}

- (SPDelegatedShareImportResult)initWithAuthUrl:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SPDelegatedShareImportResult;
  v6 = [(SPDelegatedShareImportResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authUrl, a3);
    share = v7->_share;
    v7->_share = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPDelegatedShareImportResult alloc];
  share = self->_share;
  authUrl = self->_authUrl;

  return [(SPDelegatedShareImportResult *)v4 initWithShare:share authUrl:authUrl];
}

- (void)encodeWithCoder:(id)a3
{
  share = self->_share;
  v5 = a3;
  [v5 encodeObject:share forKey:@"share"];
  [v5 encodeObject:self->_authUrl forKey:@"authUrl"];
}

- (SPDelegatedShareImportResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"share"];
  share = self->_share;
  self->_share = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authUrl"];

  authUrl = self->_authUrl;
  self->_authUrl = v7;

  return self;
}

@end