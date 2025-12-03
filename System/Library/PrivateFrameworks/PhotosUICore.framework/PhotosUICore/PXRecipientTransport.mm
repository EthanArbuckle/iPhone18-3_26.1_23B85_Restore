@interface PXRecipientTransport
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (PXRecipientTransport)init;
- (PXRecipientTransport)initWithAddress:(id)address addressKind:(int64_t)kind;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXRecipientTransport

- (id)description
{
  addressKind = [(PXRecipientTransport *)self addressKind];
  if (addressKind > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_1E7730710 + addressKind);
  }

  v5 = MEMORY[0x1E696AEC0];
  address = [(PXRecipientTransport *)self address];
  v7 = [v5 stringWithFormat:@"address %@ addressKind %@", address, v4];

  return v7;
}

- (unint64_t)hash
{
  address = [(PXRecipientTransport *)self address];
  v3 = [address hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    address = [(PXRecipientTransport *)self address];
    address2 = [v5 address];
    v8 = address2;
    if (address == address2)
    {
    }

    else
    {
      v9 = [address isEqualToString:address2];

      if ((v9 & 1) == 0)
      {
        v10 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    addressKind = [(PXRecipientTransport *)self addressKind];
    v10 = addressKind == [v5 addressKind];
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (PXRecipientTransport)initWithAddress:(id)address addressKind:(int64_t)kind
{
  addressCopy = address;
  if (!addressCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"address"}];
  }

  v13.receiver = self;
  v13.super_class = PXRecipientTransport;
  v8 = [(PXRecipientTransport *)&v13 init];
  if (v8)
  {
    v9 = [addressCopy copy];
    address = v8->_address;
    v8->_address = v9;

    v8->_addressKind = kind;
  }

  return v8;
}

- (PXRecipientTransport)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXRecipientTransport init]"}];

  abort();
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:36 description:{@"%s is not available as initializer", "+[PXRecipientTransport new]"}];

  abort();
}

@end