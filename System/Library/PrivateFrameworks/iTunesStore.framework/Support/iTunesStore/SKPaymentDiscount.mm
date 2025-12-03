@interface SKPaymentDiscount
- (SKPaymentDiscount)initWithIdentifier:(NSString *)identifier keyIdentifier:(NSString *)keyIdentifier nonce:(NSUUID *)nonce signature:(NSString *)signature timestamp:(NSNumber *)timestamp;
@end

@implementation SKPaymentDiscount

- (SKPaymentDiscount)initWithIdentifier:(NSString *)identifier keyIdentifier:(NSString *)keyIdentifier nonce:(NSUUID *)nonce signature:(NSString *)signature timestamp:(NSNumber *)timestamp
{
  v12 = identifier;
  v13 = keyIdentifier;
  v14 = nonce;
  v15 = signature;
  v16 = timestamp;
  v17 = v16;
  if (!v12 || !v13 || !v14 || !v15 || !v16)
  {
    v30 = +[SSLogConfig sharedConfig];
    shouldLog = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      v32 = shouldLog | 2;
    }

    else
    {
      v32 = shouldLog;
    }

    oSLogObject = [v30 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v34 = v32;
    }

    else
    {
      v34 = v32 & 2;
    }

    if (v34)
    {
      v39[0] = 0;
      LODWORD(v37) = 2;
      v35 = _os_log_send_and_compose_impl();

      if (!v35)
      {
LABEL_19:

        selfCopy = 0;
        goto LABEL_20;
      }

      oSLogObject = [NSString stringWithCString:v35 encoding:4, v39, v37];
      free(v35);
      SSFileLog();
    }

    goto LABEL_19;
  }

  v38.receiver = self;
  v38.super_class = SKPaymentDiscount;
  v18 = [(SKPaymentDiscount *)&v38 init];
  if (v18)
  {
    v19 = [(NSString *)v12 copy];
    v20 = v18->_identifier;
    v18->_identifier = v19;

    v21 = [(NSString *)v13 copy];
    v22 = v18->_keyIdentifier;
    v18->_keyIdentifier = v21;

    v23 = [(NSUUID *)v14 copy];
    v24 = v18->_nonce;
    v18->_nonce = v23;

    v25 = [(NSString *)v15 copy];
    v26 = v18->_signature;
    v18->_signature = v25;

    v27 = [(NSNumber *)v17 copy];
    v28 = v18->_timestamp;
    v18->_timestamp = v27;
  }

  self = v18;
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

@end