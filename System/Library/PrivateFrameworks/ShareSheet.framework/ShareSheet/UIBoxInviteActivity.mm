@interface UIBoxInviteActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)_actionImage;
- (id)_activityFooterText;
- (id)activityTitle;
@end

@implementation UIBoxInviteActivity

- (id)activityTitle
{
  if ([(UIBoxInviteActivity *)self isiWorkFile])
  {
    v3 = _ShareSheetBundle();
    activityTitle = [v3 localizedStringForKey:@"BoxInvite[Activity]" value:@"Invite People on Box" table:@"Localizable"];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIBoxInviteActivity;
    activityTitle = [(UIApplicationExtensionActivity *)&v6 activityTitle];
  }

  return activityTitle;
}

- (id)_actionImage
{
  if ([(UIBoxInviteActivity *)self isiWorkFile])
  {
    v3 = MEMORY[0x1E69DCAB8];
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v3 imageNamed:@"Box" inBundle:v4];

    v6 = objc_opt_class();
    contentSizeCategory = [(UIActivity *)self contentSizeCategory];
    _actionImage = [v6 _actionImageForActionRepresentationImage:v5 contentSizeCategory:contentSizeCategory];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIBoxInviteActivity;
    _actionImage = [(UIApplicationExtensionActivity *)&v10 _actionImage];
  }

  return _actionImage;
}

- (id)_activityFooterText
{
  v28[2] = *MEMORY[0x1E69E9840];
  if ([(UIBoxInviteActivity *)self isiWorkFile])
  {
    boxFooterText = [(UIBoxInviteActivity *)self boxFooterText];

    if (boxFooterText)
    {
      boxFooterText2 = [(UIBoxInviteActivity *)self boxFooterText];
    }

    else
    {
      v5 = _ShareSheetBundle();
      v6 = [v5 localizedStringForKey:@"BOX_FOOTER_LINK" value:@"Learn More…" table:@"Localizable"];

      v7 = _ShareSheetBundle();
      v23 = [v7 localizedStringForKey:@"BOX_FOOTER" value:@"Collaborate with other people in real time on this file stored in Box. %@" table:@"Localizable"];

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:v23, v6];
      v8 = [v6 length];
      v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v22];
      v26 = *MEMORY[0x1E69DB648];
      v10 = v26;
      v11 = *MEMORY[0x1E69DDD28];
      v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
      v28[0] = v12;
      v27 = *MEMORY[0x1E69DB650];
      v13 = v27;
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v28[1] = secondaryLabelColor;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v26 count:2];

      [v9 setAttributes:v15 range:{0, objc_msgSend(v9, "length") - v8}];
      v16 = *MEMORY[0x1E69DB670];
      v25[0] = @"https://support.apple.com/en-us/HT207876";
      v24[0] = v16;
      v24[1] = v10;
      v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
      v25[1] = v17;
      v24[2] = v13;
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      v25[2] = systemBlueColor;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

      [v9 setAttributes:v19 range:{objc_msgSend(v9, "length") - v8, v8}];
      v20 = [v9 copy];
      [(UIBoxInviteActivity *)self setBoxFooterText:v20];

      boxFooterText2 = [(UIBoxInviteActivity *)self boxFooterText];
    }
  }

  else
  {
    boxFooterText2 = 0;
  }

  return boxFooterText2;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  itemsCopy = items;
  v5 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isiWorkDocument])
        {
          [(UIBoxInviteActivity *)self setIsiWorkFile:1];
          goto LABEL_12;
        }
      }

      v6 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v12.receiver = self;
  v12.super_class = UIBoxInviteActivity;
  v10 = [(UIFileProviderApplicationExtensionActivity *)&v12 canPerformWithActivityItems:itemsCopy];

  return v10;
}

@end