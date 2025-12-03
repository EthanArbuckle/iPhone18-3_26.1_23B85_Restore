@interface AppReceiptRefreshOperationOptions
- (AppReceiptRefreshOperationOptions)initWithReceiptFlags:(unint64_t)flags;
- (NSString)URLBagKey;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AppReceiptRefreshOperationOptions

- (AppReceiptRefreshOperationOptions)initWithReceiptFlags:(unint64_t)flags
{
  v5.receiver = self;
  v5.super_class = AppReceiptRefreshOperationOptions;
  result = [(AppReceiptRefreshOperationOptions *)&v5 init];
  if (result)
  {
    result->_authenticationPromptStyle = 0;
    result->_flags = flags;
    result->_needsAuthentication = (flags & 0xB) == 0;
  }

  return result;
}

- (NSString)URLBagKey
{
  if ((self->_flags & 0xB) != 0)
  {
    return @"renew-vpp-receipt";
  }

  else
  {
    return @"app-receipt-create";
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_authenticationPromptStyle;
  v6 = [(NSString *)self->_bundleIdentifier copy];
  v7 = v5[2];
  v5[2] = v6;

  v5[3] = self->_flags;
  *(v5 + 32) = self->_needsAuthentication;
  *(v5 + 33) = self->_performSinfMirartionCheckBeforeFailing;
  v8 = [(NSNumber *)self->_targetAccount copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  return v5;
}

@end