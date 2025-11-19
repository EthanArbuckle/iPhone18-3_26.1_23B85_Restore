@interface PKAccountInvitationChooseMemberRow
- (BOOL)isEqual:(id)a3;
- (PKAccountInvitationChooseMemberRow)initWithFamilyMember:(id)a3 photoImage:(id)a4 eligibility:(BOOL)a5;
- (id)cellForTableView:(id)a3 atIndexPath:(id)a4;
- (unint64_t)hash;
- (void)_updateConfiguration:(id)a3;
@end

@implementation PKAccountInvitationChooseMemberRow

- (PKAccountInvitationChooseMemberRow)initWithFamilyMember:(id)a3 photoImage:(id)a4 eligibility:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = PKAccountInvitationChooseMemberRow;
  v11 = [(PKAccountInvitationChooseMemberRow *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_familyMember, a3);
    v12->_eligible = a5;
    objc_storeStrong(&v12->_photoImage, a4);
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

- (id)cellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"FamilyMemberCellReuseIdentifier" forIndexPath:a4];
  v6 = [v5 defaultContentConfiguration];
  [(PKAccountInvitationChooseMemberRow *)self _updateConfiguration:v6];
  [v5 setContentConfiguration:v6];
  v7 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  v8 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  [v7 setBackgroundColor:v8];

  [v5 setBackgroundConfiguration:v7];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (void)_updateConfiguration:(id)a3
{
  v26 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v5 = [(PKFamilyMember *)self->_familyMember firstName];
  [v4 setGivenName:v5];

  v6 = [(PKFamilyMember *)self->_familyMember lastName];
  [v4 setFamilyName:v6];

  v7 = [(NSPersonNameComponentsFormatter *)self->_nameFormatter stringFromPersonNameComponents:v4];
  if ([v7 length])
  {
    [v26 setText:v7];
  }

  else
  {
    v8 = [(PKFamilyMember *)self->_familyMember inviteEmail];
    if (v8)
    {
      [v26 setText:v8];
    }

    else
    {
      v9 = [(PKFamilyMember *)self->_familyMember appleID];
      [v26 setText:v9];
    }
  }

  v10 = [v26 textProperties];
  v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, 2, 0);
  [v10 setFont:v11];

  if (!self->_eligible)
  {
    v12 = [v26 textProperties];
    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v12 setColor:v13];
  }

  v14 = [(PKFamilyMember *)self->_familyMember memberType];
  v15 = [(PKFamilyMember *)self->_familyMember status];
  switch(v15)
  {
    case 2:
      goto LABEL_21;
    case 1:
      goto LABEL_19;
    case 0:
LABEL_21:
      if (![(PKFamilyMember *)self->_familyMember isOrganizer]&& ![(PKFamilyMember *)self->_familyMember isParent]&& v14)
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

        if (v14 != 2 && v14 != 1)
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
  [v26 setSecondaryText:{v19, v25}];
  v20 = [v26 secondaryTextProperties];
  v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v20 setColor:v21];

  v22 = [v26 secondaryTextProperties];
  v23 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
  [v22 setFont:v23];

  [v26 setImage:self->_photoImage];
  v24 = [v26 imageProperties];
  [v24 setMaximumSize:{50.0, 50.0}];
}

@end