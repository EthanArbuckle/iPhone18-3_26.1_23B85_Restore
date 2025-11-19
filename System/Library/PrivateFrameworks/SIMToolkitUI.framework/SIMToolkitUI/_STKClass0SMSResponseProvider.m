@interface _STKClass0SMSResponseProvider
- (_STKClass0SMSResponseProvider)initWithLogger:(id)a3;
@end

@implementation _STKClass0SMSResponseProvider

- (_STKClass0SMSResponseProvider)initWithLogger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _STKClass0SMSResponseProvider;
  v6 = [(_STKClass0SMSResponseProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
  }

  return v7;
}

@end