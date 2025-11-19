@interface SPPublishResult
- (SPPublishResult)initWithCoder:(id)a3;
- (SPPublishResult)initWithRequestUUID:(id)a3 aaaPubKeyHash:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPPublishResult

- (SPPublishResult)initWithRequestUUID:(id)a3 aaaPubKeyHash:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPPublishResult;
  v9 = [(SPPublishResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestUUID, a3);
    objc_storeStrong(&v10->_aaaPubKeyHash, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  requestUUID = self->_requestUUID;
  v5 = a3;
  [v5 encodeObject:requestUUID forKey:@"requestUUID"];
  [v5 encodeObject:self->_aaaPubKeyHash forKey:@"aaaPubKeyHash"];
}

- (SPPublishResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
  requestUUID = self->_requestUUID;
  self->_requestUUID = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aaaPubKeyHash"];

  aaaPubKeyHash = self->_aaaPubKeyHash;
  self->_aaaPubKeyHash = v7;

  return self;
}

@end