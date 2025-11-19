@interface UIImage
@end

@implementation UIImage

uint64_t __30__UIImage_Bridge__ts_bookmark__block_invoke()
{
  ts_bookmark_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"bookmark"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __34__UIImage_Bridge__ts_bookmarkFill__block_invoke()
{
  ts_bookmarkFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"bookmark.fill"];

  return MEMORY[0x1EEE66BB8]();
}

void __40__UIImage_Bridge__ts_bookmarkFillForHUD__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"bookmark.fill"];
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.309803922 green:0.309803922 blue:0.309803922 alpha:1.0];
  v1 = [v3 _flatImageWithColor:v0];
  v2 = ts_bookmarkFillForHUD_image;
  ts_bookmarkFillForHUD_image = v1;
}

uint64_t __31__UIImage_Bridge__ts_checkmark__block_invoke()
{
  ts_checkmark_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41__UIImage_Bridge__ts_checkmarkCircleFill__block_invoke()
{
  ts_checkmarkCircleFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];

  return MEMORY[0x1EEE66BB8]();
}

void __46__UIImage_Bridge__ts_checkmarkCircleFillWhite__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = [v3 imageWithTintColor:v0];
  v2 = ts_checkmarkCircleFillWhite_image;
  ts_checkmarkCircleFillWhite_image = v1;
}

void __55__UIImage_Bridge__ts_checkmarkCircleTertiaryFillOnPink__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = MEMORY[0x1E69DCAD8];
  v4 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v11[0] = v4;
  v5 = [MEMORY[0x1E69DC888] systemPinkColor];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];
  v8 = [v2 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"checkmark.circle.fill" withConfiguration:v8];
  v10 = ts_checkmarkCircleTertiaryFillOnPink_image;
  ts_checkmarkCircleTertiaryFillOnPink_image = v9;
}

void __53__UIImage_Bridge__ts_checkmarkCircleOpaqueFillOnPink__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = MEMORY[0x1E69DCAD8];
  v4 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v11[0] = v4;
  v5 = [MEMORY[0x1E69DC888] systemPinkColor];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];
  v8 = [v2 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"checkmark.circle.fill" withConfiguration:v8];
  v10 = ts_checkmarkCircleOpaqueFillOnPink_image;
  ts_checkmarkCircleOpaqueFillOnPink_image = v9;
}

void __48__UIImage_Bridge__ts_minusCircleOpaqueFillOnRed__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = MEMORY[0x1E69DCAD8];
  v4 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v11[0] = v4;
  v5 = [MEMORY[0x1E69DC888] systemRedColor];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];
  v8 = [v2 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"minus.circle.fill" withConfiguration:v8];
  v10 = ts_minusCircleOpaqueFillOnRed_image;
  ts_minusCircleOpaqueFillOnRed_image = v9;
}

void __47__UIImage_Bridge__ts_checkmarkCircleOnGrayFill__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = MEMORY[0x1E69DCAD8];
  v4 = [MEMORY[0x1E69DC888] systemPinkColor];
  v11[0] = v4;
  v5 = [MEMORY[0x1E69DC888] systemFillColor];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];
  v8 = [v2 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"checkmark.circle.fill" withConfiguration:v8];
  v10 = ts_checkmarkCircleOnGrayFill_image;
  ts_checkmarkCircleOnGrayFill_image = v9;
}

void __37__UIImage_Bridge__ts_checkmarkForHUD__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.309803922 green:0.309803922 blue:0.309803922 alpha:1.0];
  v1 = [v3 _flatImageWithColor:v0];
  v2 = ts_checkmarkForHUD_image;
  ts_checkmarkForHUD_image = v1;
}

void __34__UIImage_Bridge__ts_chevronRight__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v4 = [v0 configurationByApplyingConfiguration:v1];

  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.right" withConfiguration:v4];
  v3 = ts_chevronRight_image;
  ts_chevronRight_image = v2;
}

uint64_t __32__UIImage_Bridge__ts_circleFill__block_invoke()
{
  ts_circleFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle.fill"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41__UIImage_Bridge__ts_disclosureIndicator__block_invoke()
{
  ts_disclosureIndicator_disclosureIndicator = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UITableNext"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __30__UIImage_Bridge__ts_ellipsis__block_invoke()
{
  ts_ellipsis_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __36__UIImage_Bridge__ts_ellipsisCircle__block_invoke()
{
  ts_ellipsisCircle_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle"];

  return MEMORY[0x1EEE66BB8]();
}

void __41__UIImage_Bridge__ts_ellipsisCircleWhite__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle"];
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = [v3 imageWithTintColor:v0];
  v2 = ts_ellipsisCircleWhite_image;
  ts_ellipsisCircleWhite_image = v1;
}

void __54__UIImage_Bridge__ts_ellipsisCirclePinkOnTertiaryFill__block_invoke()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = [ts_ellipsisCirclePinkOnTertiaryFill_image imageWithConfiguration:v2];
  v4 = ts_ellipsisCirclePinkOnTertiaryFill_image;
  ts_ellipsisCirclePinkOnTertiaryFill_image = v3;

  v5 = MEMORY[0x1E69DCAD8];
  v6 = [MEMORY[0x1E69DC888] systemPinkColor];
  v13[0] = v6;
  v7 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v5 configurationWithPaletteColors:v8];
  v10 = [v2 configurationByApplyingConfiguration:v9];

  v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"ellipsis.circle.fill" withConfiguration:v10];
  v12 = ts_ellipsisCirclePinkOnTertiaryFill_image;
  ts_ellipsisCirclePinkOnTertiaryFill_image = v11;
}

uint64_t __40__UIImage_Bridge__ts_ellipsisCircleFill__block_invoke()
{
  ts_ellipsisCircleFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle.fill"];

  return MEMORY[0x1EEE66BB8]();
}

void __45__UIImage_Bridge__ts_ellipsisCircleFillWhite__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle.fill"];
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = [v3 imageWithTintColor:v0];
  v2 = ts_ellipsisCircleFillWhite_image;
  ts_ellipsisCircleFillWhite_image = v1;
}

void __54__UIImage_Bridge__ts_ellipsisCircleTertiaryFillOnPink__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = MEMORY[0x1E69DCAD8];
  v4 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v11[0] = v4;
  v5 = [MEMORY[0x1E69DC888] systemPinkColor];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];
  v8 = [v2 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"ellipsis.circle.fill" withConfiguration:v8];
  v10 = ts_ellipsisCircleTertiaryFillOnPink_image;
  ts_ellipsisCircleTertiaryFillOnPink_image = v9;
}

uint64_t __43__UIImage_Bridge__ts_exclamationMarkCircle__block_invoke()
{
  ts_exclamationMarkCircle_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __32__UIImage_Bridge__ts_handRaised__block_invoke()
{
  ts_handRaised_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.raised"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __36__UIImage_Bridge__ts_handRaisedFill__block_invoke()
{
  ts_handRaisedFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.raised.fill"];

  return MEMORY[0x1EEE66BB8]();
}

void __42__UIImage_Bridge__ts_handRaisedFillForHUD__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.raised.fill"];
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.309803922 green:0.309803922 blue:0.309803922 alpha:1.0];
  v1 = [v3 _flatImageWithColor:v0];
  v2 = ts_handRaisedFillForHUD_image;
  ts_handRaisedFillForHUD_image = v1;
}

uint64_t __37__UIImage_Bridge__ts_handRaisedSlash__block_invoke()
{
  ts_handRaisedSlash_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.raised.slash"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41__UIImage_Bridge__ts_handRaisedSlashFill__block_invoke()
{
  ts_handRaisedSlashFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.raised.slash.fill"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __36__UIImage_Bridge__ts_handThumbsDown__block_invoke()
{
  ts_handThumbsDown_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.thumbsdown"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __40__UIImage_Bridge__ts_handThumbsDownFill__block_invoke()
{
  ts_handThumbsDownFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.thumbsdown.fill"];

  return MEMORY[0x1EEE66BB8]();
}

void __46__UIImage_Bridge__ts_handThumbsDownFillForHUD__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.thumbsdown.fill"];
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.309803922 green:0.309803922 blue:0.309803922 alpha:1.0];
  v1 = [v3 _flatImageWithColor:v0];
  v2 = ts_handThumbsDownFillForHUD_image;
  ts_handThumbsDownFillForHUD_image = v1;
}

uint64_t __34__UIImage_Bridge__ts_handThumbsUp__block_invoke()
{
  ts_handThumbsUp_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.thumbsup"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __38__UIImage_Bridge__ts_handThumbsUpFill__block_invoke()
{
  ts_handThumbsUpFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.thumbsup.fill"];

  return MEMORY[0x1EEE66BB8]();
}

void __44__UIImage_Bridge__ts_handThumbsUpFillForHUD__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hand.thumbsup.fill"];
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.309803922 green:0.309803922 blue:0.309803922 alpha:1.0];
  v1 = [v3 _flatImageWithColor:v0];
  v2 = ts_handThumbsUpFillForHUD_image;
  ts_handThumbsUpFillForHUD_image = v1;
}

uint64_t __33__UIImage_Bridge__ts_heartCircle__block_invoke()
{
  ts_heartCircle_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"heart.circle"];

  return MEMORY[0x1EEE66BB8]();
}

void __51__UIImage_Bridge__ts_heartCirclePinkOnTertiaryFill__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DCAD8];
  v1 = [MEMORY[0x1E69DC888] systemPinkColor];
  v7[0] = v1;
  v2 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v0 configurationWithPaletteColors:v3];

  v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"heart.circle.fill" withConfiguration:v4];
  v6 = ts_heartCirclePinkOnTertiaryFill_image;
  ts_heartCirclePinkOnTertiaryFill_image = v5;
}

uint64_t __37__UIImage_Bridge__ts_heartCircleFill__block_invoke()
{
  ts_heartCircleFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"heart.circle.fill"];

  return MEMORY[0x1EEE66BB8]();
}

void __51__UIImage_Bridge__ts_heartCircleTertiaryFillOnPink__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DCAD8];
  v1 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v7[0] = v1;
  v2 = [MEMORY[0x1E69DC888] systemPinkColor];
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v0 configurationWithPaletteColors:v3];

  v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"heart.circle.fill" withConfiguration:v4];
  v6 = ts_heartCircleTertiaryFillOnPink_image;
  ts_heartCircleTertiaryFillOnPink_image = v5;
}

uint64_t __31__UIImage_Bridge__ts_heartFill__block_invoke()
{
  ts_heartFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"heart.fill"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __40__UIImage_Bridge__ts_iCloudAndArrowDown__block_invoke()
{
  ts_iCloudAndArrowDown_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"icloud.and.arrow.down"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __26__UIImage_Bridge__ts_link__block_invoke()
{
  ts_link_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"link"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __33__UIImage_Bridge__ts_minusCircle__block_invoke()
{
  ts_minusCircle_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __37__UIImage_Bridge__ts_minusCircleFill__block_invoke()
{
  ts_minusCircleFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle.fill"];

  return MEMORY[0x1EEE66BB8]();
}

void __42__UIImage_Bridge__ts_minusCircleFillWhite__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle.fill"];
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = [v3 imageWithTintColor:v0];
  v2 = ts_minusCircleFillWhite_image;
  ts_minusCircleFillWhite_image = v1;
}

void __51__UIImage_Bridge__ts_minusCircleTertiaryFillOnPink__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DCAD8];
  v1 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v7[0] = v1;
  v2 = [MEMORY[0x1E69DC888] systemPinkColor];
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v0 configurationWithPaletteColors:v3];

  v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"minus.circle.fill" withConfiguration:v4];
  v6 = ts_minusCircleTertiaryFillOnPink_image;
  ts_minusCircleTertiaryFillOnPink_image = v5;
}

uint64_t __52__UIImage_Bridge__ts_navigationVerticalColumnShadow__block_invoke()
{
  ts_navigationVerticalColumnShadow_navigationVerticalColumnShadow = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UINavigationVerticalColumnShadow.png"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __28__UIImage_Bridge__ts_noSign__block_invoke()
{
  ts_noSign_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"nosign"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __26__UIImage_Bridge__ts_plus__block_invoke()
{
  ts_plus_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __32__UIImage_Bridge__ts_plusCircle__block_invoke()
{
  ts_plusCircle_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle"];

  return MEMORY[0x1EEE66BB8]();
}

void __37__UIImage_Bridge__ts_plusCircleWhite__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle"];
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = [v3 imageWithTintColor:v0];
  v2 = ts_plusCircleWhite_image;
  ts_plusCircleWhite_image = v1;
}

uint64_t __36__UIImage_Bridge__ts_plusCircleFill__block_invoke()
{
  ts_plusCircleFill_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle.fill"];

  return MEMORY[0x1EEE66BB8]();
}

void __50__UIImage_Bridge__ts_plusCirclePinkOnTertiaryFill__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = MEMORY[0x1E69DCAD8];
  v4 = [MEMORY[0x1E69DC888] systemPinkColor];
  v11[0] = v4;
  v5 = [MEMORY[0x1E69DC888] systemGray5Color];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];
  v8 = [v2 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"plus.circle.fill" withConfiguration:v8];
  v10 = ts_plusCirclePinkOnTertiaryFill_image;
  ts_plusCirclePinkOnTertiaryFill_image = v9;
}

void __48__UIImage_Bridge__ts_plusCirclePinkOnOpaqueFill__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = MEMORY[0x1E69DCAD8];
  v4 = [MEMORY[0x1E69DC888] systemPinkColor];
  v11[0] = v4;
  v5 = [MEMORY[0x1E69DC888] systemGray5Color];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];
  v8 = [v2 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"plus.circle.fill" withConfiguration:v8];
  v10 = ts_plusCirclePinkOnOpaqueFill_image;
  ts_plusCirclePinkOnOpaqueFill_image = v9;
}

void __46__UIImage_Bridge__ts_plusCirclePinkOnGrayFill__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = MEMORY[0x1E69DCAD8];
  v4 = [MEMORY[0x1E69DC888] systemPinkColor];
  v11[0] = v4;
  v5 = [MEMORY[0x1E69DC888] systemGray5Color];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];
  v8 = [v2 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"plus.circle.fill" withConfiguration:v8];
  v10 = ts_plusCirclePinkOnGrayFill_image;
  ts_plusCirclePinkOnGrayFill_image = v9;
}

uint64_t __32__UIImage_Bridge__ts_rightArrow__block_invoke()
{
  ts_rightArrow_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.right"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __28__UIImage_Bridge__ts_safari__block_invoke()
{
  ts_safari_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __33__UIImage_Bridge__ts_sidebarLeft__block_invoke()
{
  ts_sidebarLeft_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"sidebar.left"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __38__UIImage_Bridge__ts_squareAndArrowUp__block_invoke()
{
  ts_squareAndArrowUp_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __36__UIImage_Bridge__ts_textFormatSize__block_invoke()
{
  ts_textFormatSize_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"textformat.size"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __27__UIImage_Bridge__ts_trash__block_invoke()
{
  ts_trash_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __27__UIImage_Bridge__ts_xmark__block_invoke()
{
  ts_xmark_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __33__UIImage_Bridge__ts_xmarkCircle__block_invoke()
{
  ts_xmarkCircle_image = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle"];

  return MEMORY[0x1EEE66BB8]();
}

void __33__UIImage_Bridge__ts_xmarkForHUD__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.309803922 green:0.309803922 blue:0.309803922 alpha:1.0];
  v1 = [v3 _flatImageWithColor:v0];
  v2 = ts_xmarkForHUD_image;
  ts_xmarkForHUD_image = v1;
}

@end