@interface PKVerificationChannel
+ (id)verificationChannelWithDictionary:(id)a3 andOrganizationName:(id)a4;
- (NSString)typeDescription;
- (NSString)typeDescriptionUnlocalized;
- (PKVerificationChannel)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKVerificationChannel

+ (id)verificationChannelWithDictionary:(id)a3 andOrganizationName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"type"];
  v9 = [v8 unsignedIntegerValue];

  if (v9 <= 0xA)
  {
    v10 = objc_alloc_init(a1);
    if (v10)
    {
      v11 = [v6 objectForKey:@"identifier"];
      [v10 setIdentifier:v11];

      [v10 setType:v9];
      v12 = [v6 objectForKey:@"typeDescription"];
      [v10 setTypeDescription:v12];

      [v10 setOrganizationName:v7];
      v13 = [v6 objectForKey:@"requiresUserInteraction"];
      [v10 setRequiresUserInteraction:{objc_msgSend(v13, "BOOLValue")}];

      v14 = [v6 objectForKey:@"contactPoint"];
      [v10 setContactPoint:v14];

      v15 = [v6 objectForKey:@"sourceAddress"];
      [v10 setSourceAddress:v15];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PKVerificationChannel)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKVerificationChannel;
  v5 = [(PKVerificationChannel *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(PKVerificationChannel *)v5 setIdentifier:v6];

    -[PKVerificationChannel setType:](v5, "setType:", [v4 decodeIntegerForKey:@"type"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
    [(PKVerificationChannel *)v5 setOrganizationName:v7];

    -[PKVerificationChannel setRequiresUserInteraction:](v5, "setRequiresUserInteraction:", [v4 decodeIntegerForKey:@"requiresUserInteraction"] != 0);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactPoint"];
    [(PKVerificationChannel *)v5 setContactPoint:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAddress"];
    [(PKVerificationChannel *)v5 setSourceAddress:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKVerificationChannel *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [v4 encodeInteger:-[PKVerificationChannel type](self forKey:{"type"), @"type"}];
  v6 = [(PKVerificationChannel *)self organizationName];
  [v4 encodeObject:v6 forKey:@"organizationName"];

  [v4 encodeInteger:-[PKVerificationChannel requiresUserInteraction](self forKey:{"requiresUserInteraction"), @"requiresUserInteraction"}];
  v7 = [(PKVerificationChannel *)self contactPoint];
  [v4 encodeObject:v7 forKey:@"contactPoint"];

  v8 = [(PKVerificationChannel *)self sourceAddress];
  [v4 encodeObject:v8 forKey:@"sourceAddress"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_type;
  v8 = [(NSString *)self->_typeDescription copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_organizationName copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 8) = self->_requiresUserInteraction;
  v12 = [(NSString *)self->_contactPoint copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_sourceAddress copyWithZone:a3];
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
  v4 = [(PKVerificationChannel *)self identifier];
  v5 = [(PKVerificationChannel *)self typeDescriptionUnlocalized];
  v6 = [(PKVerificationChannel *)self organizationName];
  v7 = [(PKVerificationChannel *)self requiresUserInteraction];
  v8 = [(PKVerificationChannel *)self contactPoint];
  v9 = [(PKVerificationChannel *)self sourceAddress];
  v10 = [v3 stringWithFormat:@"identifier: %@, typeDescription: %@, organizationName:%@ requiresUserInteraction: %d, contactPoint: %@, sourceAddress: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

@end