@interface AppReceiptRefreshOperationOptions
- (AppReceiptRefreshOperationOptions)initWithReceiptFlags:(unint64_t)a3;
- (NSString)URLBagKey;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AppReceiptRefreshOperationOptions

- (AppReceiptRefreshOperationOptions)initWithReceiptFlags:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = AppReceiptRefreshOperationOptions;
  result = [(AppReceiptRefreshOperationOptions *)&v5 init];
  if (result)
  {
    result->_authenticationPromptStyle = 0;
    result->_flags = a3;
    result->_needsAuthentication = (a3 & 0xB) == 0;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_authenticationPromptStyle;
  v6 = [(NSString *)self->_bundleIdentifier copy];
  v7 = v5[2];
  v5[2] = v6;

  v5[3] = self->_flags;
  *(v5 + 32) = self->_needsAuthentication;
  *(v5 + 33) = self->_performSinfMirartionCheckBeforeFailing;
  v8 = [(NSNumber *)self->_targetAccount copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  return v5;
}

@end