@interface STSVASTransaction
+ (id)vasTransactionForCredential:(id)a3 withDictionary:(id)a4;
- (STSVASTransaction)initWithCoder:(id)a3;
- (id)initForCredential:(id)a3 withDictionary:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSVASTransaction

+ (id)vasTransactionForCredential:(id)a3 withDictionary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[STSVASTransaction alloc] initForCredential:v6 withDictionary:v5];

  return v7;
}

- (id)initForCredential:(id)a3 withDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:0x2876E4BF0];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v17.receiver = self;
  v17.super_class = STSVASTransaction;
  v10 = [(STSAuxiliaryTransaction *)&v17 initWithCredential:v6 error:v9];
  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:@"STSVASTransactionKeyMerchantId"];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v10->_merchantId, v11);
      }
    }

    v12 = [v7 objectForKeyedSubscript:@"STSVASTransactionKeySignupUrl"];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v10->_signupUrl, v12);
      }
    }

    v13 = [v7 objectForKeyedSubscript:@"STSVASTransactionKeyTerminalAppVersion"];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v10->_terminalAppVersion, v13);
      }
    }

    v8 = [v7 objectForKeyedSubscript:@"STSVASTransactionKeyTerminalMode"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v8 unsignedShortValue] - 2;
        if (v14 > 6)
        {
          v15 = 0;
        }

        else
        {
          v15 = qword_2653A7040[v14];
        }

        v10->_terminalMode = v15;
      }
    }
  }

  return v10;
}

- (STSVASTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSVASTransaction;
  v5 = [(STSAuxiliaryTransaction *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSVASTransactionKeyMerchantId"];
    merchantId = v5->_merchantId;
    v5->_merchantId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSVASTransactionKeySignupUrl"];
    signupUrl = v5->_signupUrl;
    v5->_signupUrl = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSVASTransactionKeyTerminalAppVersion"];
    terminalAppVersion = v5->_terminalAppVersion;
    v5->_terminalAppVersion = v10;

    v5->_terminalMode = [v4 decodeIntForKey:@"STSVASTransactionKeyTerminalMode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSVASTransaction;
  v4 = a3;
  [(STSAuxiliaryTransaction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_merchantId forKey:{@"STSVASTransactionKeyMerchantId", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_signupUrl forKey:@"STSVASTransactionKeySignupUrl"];
  [v4 encodeObject:self->_terminalAppVersion forKey:@"STSVASTransactionKeyTerminalAppVersion"];
  [v4 encodeInteger:self->_terminalMode forKey:@"STSVASTransactionKeyTerminalMode"];
}

@end