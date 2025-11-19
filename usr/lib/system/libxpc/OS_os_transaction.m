@interface OS_os_transaction
- (id)description;
- (void)_xref_dispose;
- (void)dealloc;
@end

@implementation OS_os_transaction

- (void)_xref_dispose
{
  _os_transaction_xref_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_os_transaction;
  [(OS_object *)&v3 _xref_dispose];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OS_os_transaction;
  [(OS_os_transaction *)&v2 dealloc];
}

- (id)description
{
  result = objc_lookUpClass("NSString");
  if (result)
  {
    v4 = result;
    description = os_transaction_get_description(self);
    v6 = [v4 stringWithUTF8String:"<%s: %s>"];
    v7 = objc_opt_class();
    return [v4 stringWithFormat:v6, class_getName(v7), description];
  }

  return result;
}

@end