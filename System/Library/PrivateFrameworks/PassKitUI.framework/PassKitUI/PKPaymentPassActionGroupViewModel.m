@interface PKPaymentPassActionGroupViewModel
- (BOOL)isEqual:(id)a3;
- (PKPaymentPassActionGroupViewModel)initWithActionGroup:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PKPaymentPassActionGroupViewModel

- (PKPaymentPassActionGroupViewModel)initWithActionGroup:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PKPaymentPassActionGroupViewModel;
  v6 = [(PKPaymentPassActionGroupViewModel *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionGroup, a3);
    v7->_isInPreflight = 0;
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = v9;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(PKPaymentPassActionGroup *)self->_actionGroup copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 8) = self->_isInPreflight;
  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  PKCombinedHash();
  v4 = PKIntegerHash();

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identifier = v6->_identifier;
        v8 = self->_identifier;
        v9 = identifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {

LABEL_14:
            v12 = 0;
            goto LABEL_15;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_14;
          }
        }

        v12 = v6->_isInPreflight == self->_isInPreflight;
LABEL_15:

        goto LABEL_16;
      }
    }

    v12 = 0;
  }

LABEL_16:

  return v12;
}

@end