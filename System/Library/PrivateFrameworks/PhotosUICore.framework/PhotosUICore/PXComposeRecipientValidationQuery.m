@interface PXComposeRecipientValidationQuery
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (PXComposeRecipientValidationQuery)init;
- (PXComposeRecipientValidationQuery)initWithComposeRecipient:(id)a3 address:(id)a4 addressKind:(int64_t)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXComposeRecipientValidationQuery

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PXComposeRecipientValidationQuery *)self address];
  v5 = [v3 stringWithFormat:@"address %@ addressKind %ld", v4, -[PXComposeRecipientValidationQuery addressKind](self, "addressKind")];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PXComposeRecipientValidationQuery *)self address];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXComposeRecipientValidationQuery *)self address];
    v7 = [v5 address];
    if (v6 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 isEqualToString:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXComposeRecipientValidationQuery)initWithComposeRecipient:(id)a3 address:(id)a4 addressKind:(int64_t)a5
{
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"address"}];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"addressKind != PXRecipientKindUnknown"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = PXComposeRecipientValidationQuery;
  v12 = [(PXComposeRecipientValidationQuery *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_composeRecipient, a3);
    v14 = [v11 copy];
    address = v13->_address;
    v13->_address = v14;

    v13->_addressKind = a5;
  }

  return v13;
}

- (PXComposeRecipientValidationQuery)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientValidationManager.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXComposeRecipientValidationQuery init]"}];

  abort();
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXComposeRecipientValidationManager.m" lineNumber:48 description:{@"%s is not available as initializer", "+[PXComposeRecipientValidationQuery new]"}];

  abort();
}

@end