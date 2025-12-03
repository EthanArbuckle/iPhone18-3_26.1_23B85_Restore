@interface PXComposeRecipientValidationQuery
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (PXComposeRecipientValidationQuery)init;
- (PXComposeRecipientValidationQuery)initWithComposeRecipient:(id)recipient address:(id)address addressKind:(int64_t)kind;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXComposeRecipientValidationQuery

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  address = [(PXComposeRecipientValidationQuery *)self address];
  v5 = [v3 stringWithFormat:@"address %@ addressKind %ld", address, -[PXComposeRecipientValidationQuery addressKind](self, "addressKind")];

  return v5;
}

- (unint64_t)hash
{
  address = [(PXComposeRecipientValidationQuery *)self address];
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
    address = [(PXComposeRecipientValidationQuery *)self address];
    address2 = [v5 address];
    if (address == address2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [address isEqualToString:address2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXComposeRecipientValidationQuery)initWithComposeRecipient:(id)recipient address:(id)address addressKind:(int64_t)kind
{
  recipientCopy = recipient;
  addressCopy = address;
  if (addressCopy)
  {
    if (kind)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"address"}];

    if (kind)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"addressKind != PXRecipientKindUnknown"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = PXComposeRecipientValidationQuery;
  v12 = [(PXComposeRecipientValidationQuery *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_composeRecipient, recipient);
    v14 = [addressCopy copy];
    address = v13->_address;
    v13->_address = v14;

    v13->_addressKind = kind;
  }

  return v13;
}

- (PXComposeRecipientValidationQuery)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXComposeRecipientValidationQuery init]"}];

  abort();
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:48 description:{@"%s is not available as initializer", "+[PXComposeRecipientValidationQuery new]"}];

  abort();
}

@end