@interface STSVASTransaction
+ (id)vasTransactionForCredential:(id)credential withDictionary:(id)dictionary;
- (STSVASTransaction)initWithCoder:(id)coder;
- (id)initForCredential:(id)credential withDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSVASTransaction

+ (id)vasTransactionForCredential:(id)credential withDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  credentialCopy = credential;
  v7 = [[STSVASTransaction alloc] initForCredential:credentialCopy withDictionary:dictionaryCopy];

  return v7;
}

- (id)initForCredential:(id)credential withDictionary:(id)dictionary
{
  credentialCopy = credential;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:0x2876E4BF0];
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
  v10 = [(STSAuxiliaryTransaction *)&v17 initWithCredential:credentialCopy error:v9];
  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"STSVASTransactionKeyMerchantId"];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v10->_merchantId, v11);
      }
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"STSVASTransactionKeySignupUrl"];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v10->_signupUrl, v12);
      }
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"STSVASTransactionKeyTerminalAppVersion"];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v10->_terminalAppVersion, v13);
      }
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"STSVASTransactionKeyTerminalMode"];

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

- (STSVASTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STSVASTransaction;
  v5 = [(STSAuxiliaryTransaction *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSVASTransactionKeyMerchantId"];
    merchantId = v5->_merchantId;
    v5->_merchantId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSVASTransactionKeySignupUrl"];
    signupUrl = v5->_signupUrl;
    v5->_signupUrl = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSVASTransactionKeyTerminalAppVersion"];
    terminalAppVersion = v5->_terminalAppVersion;
    v5->_terminalAppVersion = v10;

    v5->_terminalMode = [coderCopy decodeIntForKey:@"STSVASTransactionKeyTerminalMode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSVASTransaction;
  coderCopy = coder;
  [(STSAuxiliaryTransaction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_merchantId forKey:{@"STSVASTransactionKeyMerchantId", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_signupUrl forKey:@"STSVASTransactionKeySignupUrl"];
  [coderCopy encodeObject:self->_terminalAppVersion forKey:@"STSVASTransactionKeyTerminalAppVersion"];
  [coderCopy encodeInteger:self->_terminalMode forKey:@"STSVASTransactionKeyTerminalMode"];
}

@end