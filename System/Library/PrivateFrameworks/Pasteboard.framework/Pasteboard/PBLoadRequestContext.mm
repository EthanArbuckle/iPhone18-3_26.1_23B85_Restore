@interface PBLoadRequestContext
- (PBLoadRequestContext)initWithCoder:(id)coder;
- (PBLoadRequestContext)initWithOptions:(unsigned int)options pasteSharingToken:(id)token;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBLoadRequestContext

- (PBLoadRequestContext)initWithOptions:(unsigned int)options pasteSharingToken:(id)token
{
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = PBLoadRequestContext;
  v7 = [(PBLoadRequestContext *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = options;
    v9 = [tokenCopy copy];
    pasteSharingToken = v8->_pasteSharingToken;
    v8->_pasteSharingToken = v9;
  }

  return v8;
}

- (PBLoadRequestContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PBLoadRequestContext;
  v5 = [(PBLoadRequestContext *)&v9 init];
  if (v5)
  {
    v5->_options = [coderCopy decodeInt32ForKey:@"requestOptions"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pasteSharingToken"];
    pasteSharingToken = v5->_pasteSharingToken;
    v5->_pasteSharingToken = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  options = self->_options;
  coderCopy = coder;
  [coderCopy encodeInt32:options forKey:@"requestOptions"];
  [coderCopy encodeObject:self->_pasteSharingToken forKey:@"pasteSharingToken"];
}

@end