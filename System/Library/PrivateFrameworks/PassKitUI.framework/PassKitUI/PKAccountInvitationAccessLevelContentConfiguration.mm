@interface PKAccountInvitationAccessLevelContentConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccountInvitationAccessLevelContentConfiguration:(id)a3;
- (PKAccountInvitationAccessLevelContentConfiguration)initWithAccessLevelOption:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)makeContentView;
- (unint64_t)hash;
@end

@implementation PKAccountInvitationAccessLevelContentConfiguration

- (PKAccountInvitationAccessLevelContentConfiguration)initWithAccessLevelOption:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAccountInvitationAccessLevelContentConfiguration;
  v5 = [(PKAccountInvitationAccessLevelContentConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [v4 image];
    image = v5->_image;
    v5->_image = v6;

    v8 = [v4 title];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 subtitle];
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [v4 secondarySubtitle];
    secondarySubtitle = v5->_secondarySubtitle;
    v5->_secondarySubtitle = v12;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountInvitationAccessLevelContentConfiguration *)self isEqualToAccountInvitationAccessLevelContentConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountInvitationAccessLevelContentConfiguration:(id)a3
{
  v4 = a3;
  if (v4 && PKEqualObjects())
  {
    v5 = v4[2];
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

    v10 = v4[3];
    v6 = self->_subtitle;
    v11 = v10;
    v8 = v11;
    if (v6 == v11)
    {

LABEL_16:
      secondarySubtitle = self->_secondarySubtitle;
      v13 = v4[4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v5 + 8), self->_image);
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_secondarySubtitle copyWithZone:a3];
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