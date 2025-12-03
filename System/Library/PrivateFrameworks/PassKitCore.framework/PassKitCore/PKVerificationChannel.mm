@interface PKVerificationChannel
+ (id)verificationChannelWithDictionary:(id)dictionary andOrganizationName:(id)name;
- (NSString)typeDescription;
- (NSString)typeDescriptionUnlocalized;
- (PKVerificationChannel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKVerificationChannel

+ (id)verificationChannelWithDictionary:(id)dictionary andOrganizationName:(id)name
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  v8 = [dictionaryCopy objectForKey:@"type"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (unsignedIntegerValue <= 0xA)
  {
    v10 = objc_alloc_init(self);
    if (v10)
    {
      v11 = [dictionaryCopy objectForKey:@"identifier"];
      [v10 setIdentifier:v11];

      [v10 setType:unsignedIntegerValue];
      v12 = [dictionaryCopy objectForKey:@"typeDescription"];
      [v10 setTypeDescription:v12];

      [v10 setOrganizationName:nameCopy];
      v13 = [dictionaryCopy objectForKey:@"requiresUserInteraction"];
      [v10 setRequiresUserInteraction:{objc_msgSend(v13, "BOOLValue")}];

      v14 = [dictionaryCopy objectForKey:@"contactPoint"];
      [v10 setContactPoint:v14];

      v15 = [dictionaryCopy objectForKey:@"sourceAddress"];
      [v10 setSourceAddress:v15];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PKVerificationChannel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKVerificationChannel;
  v5 = [(PKVerificationChannel *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(PKVerificationChannel *)v5 setIdentifier:v6];

    -[PKVerificationChannel setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
    [(PKVerificationChannel *)v5 setOrganizationName:v7];

    -[PKVerificationChannel setRequiresUserInteraction:](v5, "setRequiresUserInteraction:", [coderCopy decodeIntegerForKey:@"requiresUserInteraction"] != 0);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactPoint"];
    [(PKVerificationChannel *)v5 setContactPoint:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAddress"];
    [(PKVerificationChannel *)v5 setSourceAddress:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PKVerificationChannel *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[PKVerificationChannel type](self forKey:{"type"), @"type"}];
  organizationName = [(PKVerificationChannel *)self organizationName];
  [coderCopy encodeObject:organizationName forKey:@"organizationName"];

  [coderCopy encodeInteger:-[PKVerificationChannel requiresUserInteraction](self forKey:{"requiresUserInteraction"), @"requiresUserInteraction"}];
  contactPoint = [(PKVerificationChannel *)self contactPoint];
  [coderCopy encodeObject:contactPoint forKey:@"contactPoint"];

  sourceAddress = [(PKVerificationChannel *)self sourceAddress];
  [coderCopy encodeObject:sourceAddress forKey:@"sourceAddress"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_type;
  v8 = [(NSString *)self->_typeDescription copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_organizationName copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 8) = self->_requiresUserInteraction;
  v12 = [(NSString *)self->_contactPoint copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_sourceAddress copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  return v5;
}

- (NSString)typeDescriptionUnlocalized
{
  v2 = self->_type - 1;
  if (v2 > 7)
  {
    return @"other";
  }

  else
  {
    return &off_1E79CFD18[v2]->isa;
  }
}

- (NSString)typeDescription
{
  v3 = self->_typeDescription;
  type = self->_type;
  if (type <= 3)
  {
    switch(type)
    {
      case 1:
        v6 = @"VERIFICATION_CHANNEL_EMAIL";
        break;
      case 2:
        v6 = @"VERIFICATION_CHANNEL_SMS";
        break;
      case 3:
        v6 = @"VERIFICATION_CHANNEL_INBOUND_PHONE_CALL";
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (type > 5)
  {
    if (type != 6)
    {
      if (type != 8)
      {
        goto LABEL_19;
      }

      organizationName = self->_organizationName;
      v5 = @"VERIFICATION_CHANNEL_URL";
      goto LABEL_14;
    }

    v6 = @"VERIFICATION_CHANNEL_BANK_STATEMENT";
LABEL_17:
    PKLocalizedPaymentString(&v6->isa, 0);
    goto LABEL_18;
  }

  organizationName = self->_organizationName;
  if (type == 4)
  {
    v5 = @"VERIFICATION_CHANNEL_OUTBOUND_PHONE_CALL";
  }

  else
  {
    v5 = @"VERIFICATION_CHANNEL_BANK_APP";
  }

LABEL_14:
  PKLocalizedPaymentString(&v5->isa, &stru_1F2281668.isa, organizationName);
  v7 = LABEL_18:;

  v3 = v7;
LABEL_19:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(PKVerificationChannel *)self identifier];
  typeDescriptionUnlocalized = [(PKVerificationChannel *)self typeDescriptionUnlocalized];
  organizationName = [(PKVerificationChannel *)self organizationName];
  requiresUserInteraction = [(PKVerificationChannel *)self requiresUserInteraction];
  contactPoint = [(PKVerificationChannel *)self contactPoint];
  sourceAddress = [(PKVerificationChannel *)self sourceAddress];
  v10 = [v3 stringWithFormat:@"identifier: %@, typeDescription: %@, organizationName:%@ requiresUserInteraction: %d, contactPoint: %@, sourceAddress: %@", identifier, typeDescriptionUnlocalized, organizationName, requiresUserInteraction, contactPoint, sourceAddress];

  return v10;
}

@end