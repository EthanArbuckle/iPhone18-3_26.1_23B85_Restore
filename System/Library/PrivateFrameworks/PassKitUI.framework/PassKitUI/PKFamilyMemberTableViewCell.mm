@interface PKFamilyMemberTableViewCell
- (void)prepareForReuse;
- (void)setRowModel:(id)model;
@end

@implementation PKFamilyMemberTableViewCell

- (void)setRowModel:(id)model
{
  modelCopy = model;
  defaultContentConfiguration = [(PKFamilyMemberTableViewCell *)self defaultContentConfiguration];
  titleText = [modelCopy titleText];
  [defaultContentConfiguration setText:titleText];

  image = [modelCopy image];
  [defaultContentConfiguration setImage:image];

  detailText = [modelCopy detailText];
  [defaultContentConfiguration setSecondaryText:detailText];

  cellStyle = [modelCopy cellStyle];
  if (cellStyle)
  {
    if (cellStyle == 1)
    {
      v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
      [defaultContentConfiguration setPrefersSideBySideTextAndSecondaryText:1];
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

  [defaultContentConfiguration setDirectionalLayoutMargins:{v15, v10, v11, v12}];
  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setMaximumSize:{v14, v13}];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [secondaryTextProperties setFont:v9];
  [(PKFamilyMemberTableViewCell *)self setContentConfiguration:defaultContentConfiguration];
  -[PKFamilyMemberTableViewCell setAccessoryType:](self, "setAccessoryType:", [modelCopy accessoryType]);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKFamilyMemberTableViewCell;
  [(PKFamilyMemberTableViewCell *)&v3 prepareForReuse];
  [(PKFamilyMemberTableViewCell *)self setAccessoryType:0];
}

@end