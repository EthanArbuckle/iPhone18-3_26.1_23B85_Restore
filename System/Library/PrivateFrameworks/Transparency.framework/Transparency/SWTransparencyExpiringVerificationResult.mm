@interface SWTransparencyExpiringVerificationResult
- (SWTransparencyExpiringVerificationResult)initWithCoder:(id)coder;
- (SWTransparencyExpiringVerificationResult)initWithResult:(unint64_t)result expiry:(id)expiry;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWTransparencyExpiringVerificationResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  result = [(SWTransparencyExpiringVerificationResult *)self result];
  expiry = [(SWTransparencyExpiringVerificationResult *)self expiry];
  v6 = [v3 stringWithFormat:@"<SWTransparencyVerificationResult: %d expire: %@>", result, expiry];

  return v6;
}

- (SWTransparencyExpiringVerificationResult)initWithResult:(unint64_t)result expiry:(id)expiry
{
  expiryCopy = expiry;
  v12.receiver = self;
  v12.super_class = SWTransparencyExpiringVerificationResult;
  v8 = [(SWTransparencyExpiringVerificationResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_result = result;
    objc_storeStrong(&v8->_expiry, expiry);
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  result = self->_result;
  coderCopy = coder;
  [coderCopy encodeInteger:result forKey:@"result"];
  [coderCopy encodeObject:self->_expiry forKey:@"expiry"];
}

- (SWTransparencyExpiringVerificationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"result"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiry"];

  v12.receiver = self;
  v12.super_class = SWTransparencyExpiringVerificationResult;
  v7 = [(SWTransparencyExpiringVerificationResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v9 = v5 > 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v7->_result = v5;
    objc_storeStrong(&v7->_expiry, v6);
    v10 = v8;
  }

  return v10;
}

@end