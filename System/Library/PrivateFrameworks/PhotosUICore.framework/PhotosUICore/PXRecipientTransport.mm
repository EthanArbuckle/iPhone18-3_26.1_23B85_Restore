@interface PXRecipientTransport
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (PXRecipientTransport)init;
- (PXRecipientTransport)initWithAddress:(id)a3 addressKind:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXRecipientTransport

- (id)description
{
  v3 = [(PXRecipientTransport *)self addressKind];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_1E7730710 + v3);
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(PXRecipientTransport *)self address];
  v7 = [v5 stringWithFormat:@"address %@ addressKind %@", v6, v4];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(PXRecipientTransport *)self address];
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
    v6 = [(PXRecipientTransport *)self address];
    v7 = [v5 address];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v6 isEqualToString:v7];

      if ((v9 & 1) == 0)
      {
        v10 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    v11 = [(PXRecipientTransport *)self addressKind];
    v10 = v11 == [v5 addressKind];
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (PXRecipientTransport)initWithAddress:(id)a3 addressKind:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"address"}];
  }

  v13.receiver = self;
  v13.super_class = PXRecipientTransport;
  v8 = [(PXRecipientTransport *)&v13 init];
  if (v8)
  {
    v9 = [v7 copy];
    address = v8->_address;
    v8->_address = v9;

    v8->_addressKind = a4;
  }

  return v8;
}

- (PXRecipientTransport)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXRecipientTransport init]"}];

  abort();
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXRecipient.m" lineNumber:36 description:{@"%s is not available as initializer", "+[PXRecipientTransport new]"}];

  abort();
}

@end