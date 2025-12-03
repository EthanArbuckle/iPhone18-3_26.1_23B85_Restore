@interface SKProductSubscriptionPeriod
- (SKProductSubscriptionPeriod)init;
- (SKProductSubscriptionPeriod)initWithISO8601String:(id)string;
- (SKProductSubscriptionPeriod)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
@end

@implementation SKProductSubscriptionPeriod

- (SKProductSubscriptionPeriod)init
{
  v6.receiver = self;
  v6.super_class = SKProductSubscriptionPeriod;
  v2 = [(SKProductSubscriptionPeriod *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKProductSubscriptionPeriodInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (SKProductSubscriptionPeriod)initWithISO8601String:(id)string
{
  stringCopy = string;
  v5 = [(SKProductSubscriptionPeriod *)self init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [NSScanner scannerWithString:stringCopy];
  v17 = 0;
  [v6 scanString:@"P" intoString:&v17];
  v7 = v17;
  if (!v7)
  {
LABEL_18:

    v13 = 0;
    goto LABEL_19;
  }

  v8 = v7;
  v16 = 0;
  [v6 scanInteger:&v16];
  if (!v16)
  {

    goto LABEL_18;
  }

  *(v5->_internal + 1) = v16;

  v9 = [NSCharacterSet characterSetWithCharactersInString:@"DWMY"];
  v15 = 0;
  [v6 scanCharactersFromSet:v9 intoString:&v15];
  v10 = v15;
  v11 = v10;
  if (!v10 || [v10 length] != 1)
  {
LABEL_17:

    goto LABEL_18;
  }

  if (([v11 isEqualToString:@"D"] & 1) == 0)
  {
    if ([v11 isEqualToString:@"W"])
    {
      v12 = 1;
      goto LABEL_15;
    }

    if ([v11 isEqualToString:@"M"])
    {
      v12 = 2;
      goto LABEL_15;
    }

    if ([v11 isEqualToString:@"Y"])
    {
      v12 = 3;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v12 = 0;
LABEL_15:
  *(v5->_internal + 2) = v12;

LABEL_16:
  v13 = v5;
LABEL_19:

  return v13;
}

- (SKProductSubscriptionPeriod)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && xpc_get_type(encodingCopy) == &_xpc_type_dictionary)
  {
    v6 = [(SKProductSubscriptionPeriod *)self init];
    if (v6)
    {
      *(v6->_internal + 1) = xpc_dictionary_get_uint64(v5, "0");
      *(v6->_internal + 2) = xpc_dictionary_get_uint64(v5, "1");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "0", *(self->_internal + 1));
  xpc_dictionary_set_uint64(v3, "1", *(self->_internal + 2));
  return v3;
}

@end