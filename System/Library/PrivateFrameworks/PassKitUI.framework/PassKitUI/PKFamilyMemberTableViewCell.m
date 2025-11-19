@interface PKFamilyMemberTableViewCell
- (void)prepareForReuse;
- (void)setRowModel:(id)a3;
@end

@implementation PKFamilyMemberTableViewCell

- (void)setRowModel:(id)a3
{
  v19 = a3;
  v4 = [(PKFamilyMemberTableViewCell *)self defaultContentConfiguration];
  v5 = [v19 titleText];
  [v4 setText:v5];

  v6 = [v19 image];
  [v4 setImage:v6];

  v7 = [v19 detailText];
  [v4 setSecondaryText:v7];

  v8 = [v19 cellStyle];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
      [v4 setPrefersSideBySideTextAndSecondaryText:1];
      v10 = 0.0;
      v11 = 5.0;
      v12 = 10.0;
      v13 = 35.0;
      v14 = 35.0;
      v15 = 5.0;
    }

    else
    {
      v9 = 0;
      v15 = *MEMORY[0x1E69DC5C0];
      v10 = *(MEMORY[0x1E69DC5C0] + 8);
      v11 = *(MEMORY[0x1E69DC5C0] + 16);
      v12 = *(MEMORY[0x1E69DC5C0] + 24);
      v14 = *MEMORY[0x1E695F060];
      v13 = *(MEMORY[0x1E695F060] + 8);
    }
  }

  else
  {
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    v11 = 10.0;
    v12 = 0.0;
    v13 = 40.0;
    v14 = 40.0;
    v10 = 0.0;
    v15 = 10.0;
  }

  [v4 setDirectionalLayoutMargins:{v15, v10, v11, v12}];
  v16 = [v4 imageProperties];
  [v16 setMaximumSize:{v14, v13}];
  v17 = [v4 secondaryTextProperties];
  v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v17 setColor:v18];

  [v17 setFont:v9];
  [(PKFamilyMemberTableViewCell *)self setContentConfiguration:v4];
  -[PKFamilyMemberTableViewCell setAccessoryType:](self, "setAccessoryType:", [v19 accessoryType]);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKFamilyMemberTableViewCell;
  [(PKFamilyMemberTableViewCell *)&v3 prepareForReuse];
  [(PKFamilyMemberTableViewCell *)self setAccessoryType:0];
}

@end