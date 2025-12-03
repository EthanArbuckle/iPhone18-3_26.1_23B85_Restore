@interface SPPublishResult
- (SPPublishResult)initWithCoder:(id)coder;
- (SPPublishResult)initWithRequestUUID:(id)d aaaPubKeyHash:(id)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPPublishResult

- (SPPublishResult)initWithRequestUUID:(id)d aaaPubKeyHash:(id)hash
{
  dCopy = d;
  hashCopy = hash;
  v12.receiver = self;
  v12.super_class = SPPublishResult;
  v9 = [(SPPublishResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestUUID, d);
    objc_storeStrong(&v10->_aaaPubKeyHash, hash);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  requestUUID = self->_requestUUID;
  coderCopy = coder;
  [coderCopy encodeObject:requestUUID forKey:@"requestUUID"];
  [coderCopy encodeObject:self->_aaaPubKeyHash forKey:@"aaaPubKeyHash"];
}

- (SPPublishResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
  requestUUID = self->_requestUUID;
  self->_requestUUID = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aaaPubKeyHash"];

  aaaPubKeyHash = self->_aaaPubKeyHash;
  self->_aaaPubKeyHash = v7;

  return self;
}

@end