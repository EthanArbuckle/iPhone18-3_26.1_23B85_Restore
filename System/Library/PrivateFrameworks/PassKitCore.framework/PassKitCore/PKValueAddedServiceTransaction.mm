@interface PKValueAddedServiceTransaction
- (PKValueAddedServiceTransaction)init;
- (PKValueAddedServiceTransaction)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKValueAddedServiceTransaction

- (PKValueAddedServiceTransaction)init
{
  v7.receiver = self;
  v7.super_class = PKValueAddedServiceTransaction;
  v2 = [(PKValueAddedServiceTransaction *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
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

- (PKValueAddedServiceTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKValueAddedServiceTransaction;
  v5 = [(PKValueAddedServiceTransaction *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionMerchantKey"];
    merchant = v5->_merchant;
    v5->_merchant = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionMerchantURLKey"];
    merchantURL = v5->_merchantURL;
    v5->_merchantURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionTerminalApplicationVersionKey"];
    terminalApplicationVersion = v5->_terminalApplicationVersion;
    v5->_terminalApplicationVersion = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionTerminalModeKey"];
    v5->_terminalMode = [v14 integerValue];

    v5->_didSucceed = [coderCopy decodeBoolForKey:@"PKValueAddedServiceTransactionDidSucceedKey"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionDateKey"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PKValueAddedServiceTransactionErrorKey"];
    v5->_error = [v17 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"PKValueAddedServiceTransactionIdentifierKey"];
  [coderCopy encodeObject:self->_merchant forKey:@"PKValueAddedServiceTransactionMerchantKey"];
  [coderCopy encodeObject:self->_merchantURL forKey:@"PKValueAddedServiceTransactionMerchantURLKey"];
  [coderCopy encodeObject:self->_terminalApplicationVersion forKey:@"PKValueAddedServiceTransactionTerminalApplicationVersionKey"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_terminalMode];
  [coderCopy encodeObject:v6 forKey:@"PKValueAddedServiceTransactionTerminalModeKey"];

  [coderCopy encodeBool:self->_didSucceed forKey:@"PKValueAddedServiceTransactionDidSucceedKey"];
  [coderCopy encodeObject:self->_transactionDate forKey:@"PKValueAddedServiceTransactionDateKey"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_error];
  [coderCopy encodeObject:v7 forKey:@"PKValueAddedServiceTransactionErrorKey"];
}

@end