@interface PKInboxMessageContentConfiguration
+ (id)configurationWithInboxMessage:(id)message;
@end

@implementation PKInboxMessageContentConfiguration

+ (id)configurationWithInboxMessage:(id)message
{
  messageCopy = message;
  subtitleCellConfiguration = [self subtitleCellConfiguration];
  familyMember = [messageCopy familyMember];
  accountUserInvitation = [messageCopy accountUserInvitation];

  invitationDetails = [accountUserInvitation invitationDetails];

  v9 = MEMORY[0x1E69B8740];
  originatorNameComponents = [invitationDetails originatorNameComponents];
  v11 = [v9 contactForFamilyMember:familyMember nameComponents:originatorNameComponents imageData:0];

  pkFullName = [v11 pkFullName];
  v12 = PKLocalizedFeatureString();

  v13 = PKUIImageNamed(@"Hero_Apply-CCS");
  [subtitleCellConfiguration setImage:{v13, pkFullName}];

  v14 = PKLocalizedFeatureString();
  [subtitleCellConfiguration setText:v14];

  [subtitleCellConfiguration setSecondaryText:v12];
  v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], 0);
  [subtitleCellConfiguration setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  imageProperties = [subtitleCellConfiguration imageProperties];
  [imageProperties setMaximumSize:{1.79769313e308, 40.0}];
  [imageProperties setCornerRadius:3.0];
  secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [secondaryTextProperties setFont:v15];

  return subtitleCellConfiguration;
}

@end