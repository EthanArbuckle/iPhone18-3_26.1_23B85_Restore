@interface PKInboxMessageContentConfiguration
+ (id)configurationWithInboxMessage:(id)a3;
@end

@implementation PKInboxMessageContentConfiguration

+ (id)configurationWithInboxMessage:(id)a3
{
  v4 = a3;
  v5 = [a1 subtitleCellConfiguration];
  v6 = [v4 familyMember];
  v7 = [v4 accountUserInvitation];

  v8 = [v7 invitationDetails];

  v9 = MEMORY[0x1E69B8740];
  v10 = [v8 originatorNameComponents];
  v11 = [v9 contactForFamilyMember:v6 nameComponents:v10 imageData:0];

  v20 = [v11 pkFullName];
  v12 = PKLocalizedFeatureString();

  v13 = PKUIImageNamed(@"Hero_Apply-CCS");
  [v5 setImage:{v13, v20}];

  v14 = PKLocalizedFeatureString();
  [v5 setText:v14];

  [v5 setSecondaryText:v12];
  v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], 0);
  [v5 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  v16 = [v5 imageProperties];
  [v16 setMaximumSize:{1.79769313e308, 40.0}];
  [v16 setCornerRadius:3.0];
  v17 = [v5 secondaryTextProperties];
  v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v17 setColor:v18];

  [v17 setFont:v15];

  return v5;
}

@end