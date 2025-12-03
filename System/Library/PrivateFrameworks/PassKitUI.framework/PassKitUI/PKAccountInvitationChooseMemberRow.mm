@interface PKAccountInvitationChooseMemberRow
- (BOOL)isEqual:(id)equal;
- (PKAccountInvitationChooseMemberRow)initWithFamilyMember:(id)member photoImage:(id)image eligibility:(BOOL)eligibility;
- (id)cellForTableView:(id)view atIndexPath:(id)path;
- (unint64_t)hash;
- (void)_updateConfiguration:(id)configuration;
@end

@implementation PKAccountInvitationChooseMemberRow

- (PKAccountInvitationChooseMemberRow)initWithFamilyMember:(id)member photoImage:(id)image eligibility:(BOOL)eligibility
{
  memberCopy = member;
  imageCopy = image;
  v18.receiver = self;
  v18.super_class = PKAccountInvitationChooseMemberRow;
  v11 = [(PKAccountInvitationChooseMemberRow *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_familyMember, member);
    v12->_eligible = eligibility;
    objc_storeStrong(&v12->_photoImage, image);
    v13 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    nameFormatter = v12->_nameFormatter;
    v12->_nameFormatter = v13;

    v15 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    ageFormatter = v12->_ageFormatter;
    v12->_ageFormatter = v15;

    [(NSNumberFormatter *)v12->_ageFormatter setNumberStyle:1];
    [(NSNumberFormatter *)v12->_ageFormatter setDecimalSeparator:0];
    [(NSNumberFormatter *)v12->_ageFormatter setGroupingSeparator:0];
  }

  return v12;
}

- (id)cellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"FamilyMemberCellReuseIdentifier" forIndexPath:path];
  defaultContentConfiguration = [v5 defaultContentConfiguration];
  [(PKAccountInvitationChooseMemberRow *)self _updateConfiguration:defaultContentConfiguration];
  [v5 setContentConfiguration:defaultContentConfiguration];
  listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  [listCellConfiguration setBackgroundColor:secondarySystemFillColor];

  [v5 setBackgroundConfiguration:listCellConfiguration];
  if (self->_eligible)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  [v5 setSelectionStyle:v9];
  [v5 setAccessoryType:self->_eligible];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B97C0]];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (PKEqualObjects())
    {
      v7 = self->_eligible == v6[32];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_familyMember];
  PKCombinedHash();
  v4 = PKIntegerHash();

  return v4;
}

- (void)_updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  firstName = [(PKFamilyMember *)self->_familyMember firstName];
  [v4 setGivenName:firstName];

  lastName = [(PKFamilyMember *)self->_familyMember lastName];
  [v4 setFamilyName:lastName];

  v7 = [(NSPersonNameComponentsFormatter *)self->_nameFormatter stringFromPersonNameComponents:v4];
  if ([v7 length])
  {
    [configurationCopy setText:v7];
  }

  else
  {
    inviteEmail = [(PKFamilyMember *)self->_familyMember inviteEmail];
    if (inviteEmail)
    {
      [configurationCopy setText:inviteEmail];
    }

    else
    {
      appleID = [(PKFamilyMember *)self->_familyMember appleID];
      [configurationCopy setText:appleID];
    }
  }

  textProperties = [configurationCopy textProperties];
  v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, 2, 0);
  [textProperties setFont:v11];

  if (!self->_eligible)
  {
    textProperties2 = [configurationCopy textProperties];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [textProperties2 setColor:secondaryLabelColor];
  }

  memberType = [(PKFamilyMember *)self->_familyMember memberType];
  status = [(PKFamilyMember *)self->_familyMember status];
  switch(status)
  {
    case 2:
      goto LABEL_21;
    case 1:
      goto LABEL_19;
    case 0:
LABEL_21:
      if (![(PKFamilyMember *)self->_familyMember isOrganizer]&& ![(PKFamilyMember *)self->_familyMember isParent]&& memberType)
      {
        v16 = [(PKFamilyMember *)self->_familyMember age];
        if (v16)
        {
          ageFormatter = self->_ageFormatter;
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
          v25 = [(NSNumberFormatter *)ageFormatter stringFromNumber:v18];
          v19 = PKLocalizedFeatureString();

          goto LABEL_23;
        }

        if (memberType != 2 && memberType != 1)
        {
          break;
        }
      }

LABEL_19:
      v19 = PKLocalizedFeatureString();
      goto LABEL_23;
  }

  v19 = 0;
LABEL_23:
  [configurationCopy setSecondaryText:{v19, v25}];
  secondaryTextProperties = [configurationCopy secondaryTextProperties];
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor2];

  secondaryTextProperties2 = [configurationCopy secondaryTextProperties];
  v23 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
  [secondaryTextProperties2 setFont:v23];

  [configurationCopy setImage:self->_photoImage];
  imageProperties = [configurationCopy imageProperties];
  [imageProperties setMaximumSize:{50.0, 50.0}];
}

@end