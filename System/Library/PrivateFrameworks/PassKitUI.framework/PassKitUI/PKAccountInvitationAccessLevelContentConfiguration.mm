@interface PKAccountInvitationAccessLevelContentConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountInvitationAccessLevelContentConfiguration:(id)configuration;
- (PKAccountInvitationAccessLevelContentConfiguration)initWithAccessLevelOption:(id)option;
- (id)copyWithZone:(_NSZone *)zone;
- (id)makeContentView;
- (unint64_t)hash;
@end

@implementation PKAccountInvitationAccessLevelContentConfiguration

- (PKAccountInvitationAccessLevelContentConfiguration)initWithAccessLevelOption:(id)option
{
  optionCopy = option;
  v15.receiver = self;
  v15.super_class = PKAccountInvitationAccessLevelContentConfiguration;
  v5 = [(PKAccountInvitationAccessLevelContentConfiguration *)&v15 init];
  if (v5)
  {
    image = [optionCopy image];
    image = v5->_image;
    v5->_image = image;

    title = [optionCopy title];
    title = v5->_title;
    v5->_title = title;

    subtitle = [optionCopy subtitle];
    subtitle = v5->_subtitle;
    v5->_subtitle = subtitle;

    secondarySubtitle = [optionCopy secondarySubtitle];
    secondarySubtitle = v5->_secondarySubtitle;
    v5->_secondarySubtitle = secondarySubtitle;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountInvitationAccessLevelContentConfiguration *)self isEqualToAccountInvitationAccessLevelContentConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountInvitationAccessLevelContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy && PKEqualObjects())
  {
    v5 = configurationCopy[2];
    v6 = self->_title;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      LOBYTE(v9) = 0;
      if (!v6 || !v7)
      {
        goto LABEL_21;
      }

      v9 = [(NSString *)v6 isEqualToString:v7];

      if (!v9)
      {
        goto LABEL_22;
      }
    }

    v10 = configurationCopy[3];
    v6 = self->_subtitle;
    v11 = v10;
    v8 = v11;
    if (v6 == v11)
    {

LABEL_16:
      secondarySubtitle = self->_secondarySubtitle;
      v13 = configurationCopy[4];
      v6 = secondarySubtitle;
      v14 = v13;
      v8 = v14;
      if (v6 == v14)
      {
        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = 0;
        if (v6 && v14)
        {
          LOBYTE(v9) = [(NSString *)v6 isEqualToString:v14];
        }
      }

      goto LABEL_21;
    }

    LOBYTE(v9) = 0;
    if (v6 && v11)
    {
      v9 = [(NSString *)v6 isEqualToString:v11];

      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

LABEL_21:

    goto LABEL_22;
  }

  LOBYTE(v9) = 0;
LABEL_22:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_image];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_subtitle];
  [v3 safelyAddObject:self->_secondarySubtitle];
  v4 = PKCombinedHash();

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v5 + 8), self->_image);
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_secondarySubtitle copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (id)makeContentView
{
  v2 = [[PKAccountInvitationAccessLevelContentView alloc] initWithConfiguration:self];

  return v2;
}

@end