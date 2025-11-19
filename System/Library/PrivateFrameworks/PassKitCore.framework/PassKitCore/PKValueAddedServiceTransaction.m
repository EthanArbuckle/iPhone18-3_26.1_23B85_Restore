@interface PKValueAddedServiceTransaction
- (PKValueAddedServiceTransaction)init;
- (PKValueAddedServiceTransaction)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKValueAddedServiceTransaction

- (PKValueAddedServiceTransaction)init
{
  v7.receiver = self;
  v7.super_class = PKValueAddedServiceTransaction;
  v2 = [(PKValueAddedServiceTransaction *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  merchant = self->_merchant;
  identifier = self->_identifier;
  merchantURL = self->_merchantURL;
  terminalApplicationVersion = self->_terminalApplicationVersion;
  v14 = _PKEnumValueToString(self->_terminalMode, @"PKValueAddedServiceTerminalMode", @"PKValueAddedServiceTerminalModeUnknown, PKValueAddedServiceTerminalModeSignupOnly, PKValueAddedServiceTerminalModeVASOnly, PKValueAddedServiceTerminalModeVASAndPayment, PKValueAddedServiceTerminalModeVASOrPayment", v9, v10, v11, v12, v13, 0);
  v15 = [v3 stringWithFormat:@"<%@: %p identifier: %@; merchant: %@; merchantURL: %@; terminalApplicationVersion: %@; terminalMode: %@; didSucceed: %d; >", v4, self, identifier, merchant, merchantURL, terminalApplicationVersion, v14, self->_didSucceed];;

  return v15;
}

- (PKValueAddedServiceTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKValueAddedServiceTransaction;
  v5 = [(PKValueAddedServiceTransaction *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionMerchantKey"];
    merchant = v5->_merchant;
    v5->_merchant = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionMerchantURLKey"];
    merchantURL = v5->_merchantURL;
    v5->_merchantURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionTerminalApplicationVersionKey"];
    terminalApplicationVersion = v5->_terminalApplicationVersion;
    v5->_terminalApplicationVersion = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionTerminalModeKey"];
    v5->_terminalMode = [v14 integerValue];

    v5->_didSucceed = [v4 decodeBoolForKey:@"PKValueAddedServiceTransactionDidSucceedKey"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionDateKey"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionErrorKey"];
    v5->_error = [v17 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"PKValueAddedServiceTransactionIdentifierKey"];
  [v5 encodeObject:self->_merchant forKey:@"PKValueAddedServiceTransactionMerchantKey"];
  [v5 encodeObject:self->_merchantURL forKey:@"PKValueAddedServiceTransactionMerchantURLKey"];
  [v5 encodeObject:self->_terminalApplicationVersion forKey:@"PKValueAddedServiceTransactionTerminalApplicationVersionKey"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_terminalMode];
  [v5 encodeObject:v6 forKey:@"PKValueAddedServiceTransactionTerminalModeKey"];

  [v5 encodeBool:self->_didSucceed forKey:@"PKValueAddedServiceTransactionDidSucceedKey"];
  [v5 encodeObject:self->_transactionDate forKey:@"PKValueAddedServiceTransactionDateKey"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_error];
  [v5 encodeObject:v7 forKey:@"PKValueAddedServiceTransactionErrorKey"];
}

@end