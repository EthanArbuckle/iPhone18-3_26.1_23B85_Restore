@interface PKPaymentPassActionGroupViewModel
- (BOOL)isEqual:(id)equal;
- (PKPaymentPassActionGroupViewModel)initWithActionGroup:(id)group;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PKPaymentPassActionGroupViewModel

- (PKPaymentPassActionGroupViewModel)initWithActionGroup:(id)group
{
  groupCopy = group;
  v12.receiver = self;
  v12.super_class = PKPaymentPassActionGroupViewModel;
  v6 = [(PKPaymentPassActionGroupViewModel *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionGroup, group);
    v7->_isInPreflight = 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = uUIDString;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(PKPaymentPassActionGroup *)self->_actionGroup copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
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