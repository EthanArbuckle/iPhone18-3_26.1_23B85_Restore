@interface PBLoadRequestContext
- (PBLoadRequestContext)initWithCoder:(id)a3;
- (PBLoadRequestContext)initWithOptions:(unsigned int)a3 pasteSharingToken:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBLoadRequestContext

- (PBLoadRequestContext)initWithOptions:(unsigned int)a3 pasteSharingToken:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PBLoadRequestContext;
  v7 = [(PBLoadRequestContext *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = a3;
    v9 = [v6 copy];
    pasteSharingToken = v8->_pasteSharingToken;
    v8->_pasteSharingToken = v9;
  }

  return v8;
}

- (PBLoadRequestContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PBLoadRequestContext;
  v5 = [(PBLoadRequestContext *)&v9 init];
  if (v5)
  {
    v5->_options = [v4 decodeInt32ForKey:@"requestOptions"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pasteSharingToken"];
    pasteSharingToken = v5->_pasteSharingToken;
    v5->_pasteSharingToken = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  options = self->_options;
  v5 = a3;
  [v5 encodeInt32:options forKey:@"requestOptions"];
  [v5 encodeObject:self->_pasteSharingToken forKey:@"pasteSharingToken"];
}

@end