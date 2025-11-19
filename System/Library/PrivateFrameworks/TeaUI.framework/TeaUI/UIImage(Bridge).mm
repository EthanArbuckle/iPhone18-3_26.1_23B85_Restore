@interface UIImage(Bridge)
+ (id)ts_bookmark;
+ (id)ts_bookmarkFill;
+ (id)ts_bookmarkFillForHUD;
+ (id)ts_checkmark;
+ (id)ts_checkmarkCircleFill;
+ (id)ts_checkmarkCircleFillWhite;
+ (id)ts_checkmarkCircleOnGrayFill;
+ (id)ts_checkmarkCircleOpaqueFillOnPink;
+ (id)ts_checkmarkCircleTertiaryFillOnPink;
+ (id)ts_checkmarkForHUD;
+ (id)ts_chevronRight;
+ (id)ts_circleFill;
+ (id)ts_disclosureIndicator;
+ (id)ts_ellipsis;
+ (id)ts_ellipsisCircle;
+ (id)ts_ellipsisCircleFill;
+ (id)ts_ellipsisCircleFillWhite;
+ (id)ts_ellipsisCirclePinkOnTertiaryFill;
+ (id)ts_ellipsisCircleTertiaryFillOnPink;
+ (id)ts_ellipsisCircleWhite;
+ (id)ts_exclamationMarkCircle;
+ (id)ts_filledSystemImageNamed:()Bridge fillColor:symbolColor:;
+ (id)ts_filledSystemImageNamed:()Bridge fillColor:symbolColor:symbolConfig:;
+ (id)ts_handRaised;
+ (id)ts_handRaisedFill;
+ (id)ts_handRaisedFillForHUD;
+ (id)ts_handRaisedSlash;
+ (id)ts_handRaisedSlashFill;
+ (id)ts_handThumbsDown;
+ (id)ts_handThumbsDownFill;
+ (id)ts_handThumbsDownFillForHUD;
+ (id)ts_handThumbsUp;
+ (id)ts_handThumbsUpFill;
+ (id)ts_handThumbsUpFillForHUD;
+ (id)ts_heartCircle;
+ (id)ts_heartCircleFill;
+ (id)ts_heartCirclePinkOnTertiaryFill;
+ (id)ts_heartCircleTertiaryFillOnPink;
+ (id)ts_heartFill;
+ (id)ts_iCloudAndArrowDown;
+ (id)ts_link;
+ (id)ts_minusCircle;
+ (id)ts_minusCircleFill;
+ (id)ts_minusCircleFillWhite;
+ (id)ts_minusCircleOpaqueFillOnRed;
+ (id)ts_minusCircleTertiaryFillOnPink;
+ (id)ts_navigationVerticalColumnShadow;
+ (id)ts_noSign;
+ (id)ts_plus;
+ (id)ts_plusCircle;
+ (id)ts_plusCircleFill;
+ (id)ts_plusCirclePinkOnGrayFill;
+ (id)ts_plusCirclePinkOnOpaqueFill;
+ (id)ts_plusCirclePinkOnTertiaryFill;
+ (id)ts_plusCircleWhite;
+ (id)ts_rightArrow;
+ (id)ts_safari;
+ (id)ts_sidebarLeft;
+ (id)ts_squareAndArrowUp;
+ (id)ts_textFormatSize;
+ (id)ts_trash;
+ (id)ts_xmark;
+ (id)ts_xmarkCircle;
+ (id)ts_xmarkForHUD;
@end

@implementation UIImage(Bridge)

+ (id)ts_bookmark
{
  if (ts_bookmark_onceToken != -1)
  {
    +[UIImage(Bridge) ts_bookmark];
  }

  v1 = ts_bookmark_image;

  return v1;
}

+ (id)ts_bookmarkFill
{
  if (ts_bookmarkFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_bookmarkFill];
  }

  v1 = ts_bookmarkFill_image;

  return v1;
}

+ (id)ts_bookmarkFillForHUD
{
  if (ts_bookmarkFillForHUD_onceToken != -1)
  {
    +[UIImage(Bridge) ts_bookmarkFillForHUD];
  }

  v1 = ts_bookmarkFillForHUD_image;

  return v1;
}

+ (id)ts_checkmark
{
  if (ts_checkmark_onceToken != -1)
  {
    +[UIImage(Bridge) ts_checkmark];
  }

  v1 = ts_checkmark_image;

  return v1;
}

+ (id)ts_checkmarkCircleFill
{
  if (ts_checkmarkCircleFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_checkmarkCircleFill];
  }

  v1 = ts_checkmarkCircleFill_image;

  return v1;
}

+ (id)ts_checkmarkCircleFillWhite
{
  if (ts_checkmarkCircleFillWhite_onceToken != -1)
  {
    +[UIImage(Bridge) ts_checkmarkCircleFillWhite];
  }

  v1 = ts_checkmarkCircleFillWhite_image;

  return v1;
}

+ (id)ts_checkmarkCircleTertiaryFillOnPink
{
  if (ts_checkmarkCircleTertiaryFillOnPink_onceToken != -1)
  {
    +[UIImage(Bridge) ts_checkmarkCircleTertiaryFillOnPink];
  }

  v1 = ts_checkmarkCircleTertiaryFillOnPink_image;

  return v1;
}

+ (id)ts_checkmarkCircleOpaqueFillOnPink
{
  if (ts_checkmarkCircleOpaqueFillOnPink_onceToken != -1)
  {
    +[UIImage(Bridge) ts_checkmarkCircleOpaqueFillOnPink];
  }

  v1 = ts_checkmarkCircleOpaqueFillOnPink_image;

  return v1;
}

+ (id)ts_minusCircleOpaqueFillOnRed
{
  if (ts_minusCircleOpaqueFillOnRed_onceToken != -1)
  {
    +[UIImage(Bridge) ts_minusCircleOpaqueFillOnRed];
  }

  v1 = ts_minusCircleOpaqueFillOnRed_image;

  return v1;
}

+ (id)ts_checkmarkCircleOnGrayFill
{
  if (ts_checkmarkCircleOnGrayFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_checkmarkCircleOnGrayFill];
  }

  v1 = ts_checkmarkCircleOnGrayFill_image;

  return v1;
}

+ (id)ts_checkmarkForHUD
{
  if (ts_checkmarkForHUD_onceToken != -1)
  {
    +[UIImage(Bridge) ts_checkmarkForHUD];
  }

  v1 = ts_checkmarkForHUD_image;

  return v1;
}

+ (id)ts_chevronRight
{
  if (ts_chevronRight_onceToken != -1)
  {
    +[UIImage(Bridge) ts_chevronRight];
  }

  v1 = ts_chevronRight_image;

  return v1;
}

+ (id)ts_circleFill
{
  if (ts_circleFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_circleFill];
  }

  v1 = ts_circleFill_image;

  return v1;
}

+ (id)ts_disclosureIndicator
{
  if (ts_disclosureIndicator_onceToken != -1)
  {
    +[UIImage(Bridge) ts_disclosureIndicator];
  }

  v1 = ts_disclosureIndicator_disclosureIndicator;

  return v1;
}

+ (id)ts_ellipsis
{
  if (ts_ellipsis_onceToken != -1)
  {
    +[UIImage(Bridge) ts_ellipsis];
  }

  v1 = ts_ellipsis_image;

  return v1;
}

+ (id)ts_ellipsisCircle
{
  if (ts_ellipsisCircle_onceToken != -1)
  {
    +[UIImage(Bridge) ts_ellipsisCircle];
  }

  v1 = ts_ellipsisCircle_image;

  return v1;
}

+ (id)ts_ellipsisCircleWhite
{
  if (ts_ellipsisCircleWhite_onceToken != -1)
  {
    +[UIImage(Bridge) ts_ellipsisCircleWhite];
  }

  v1 = ts_ellipsisCircleWhite_image;

  return v1;
}

+ (id)ts_ellipsisCirclePinkOnTertiaryFill
{
  if (ts_ellipsisCirclePinkOnTertiaryFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_ellipsisCirclePinkOnTertiaryFill];
  }

  v1 = ts_ellipsisCirclePinkOnTertiaryFill_image;

  return v1;
}

+ (id)ts_ellipsisCircleFill
{
  if (ts_ellipsisCircleFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_ellipsisCircleFill];
  }

  v1 = ts_ellipsisCircleFill_image;

  return v1;
}

+ (id)ts_ellipsisCircleFillWhite
{
  if (ts_ellipsisCircleFillWhite_onceToken != -1)
  {
    +[UIImage(Bridge) ts_ellipsisCircleFillWhite];
  }

  v1 = ts_ellipsisCircleFillWhite_image;

  return v1;
}

+ (id)ts_ellipsisCircleTertiaryFillOnPink
{
  if (ts_ellipsisCircleTertiaryFillOnPink_onceToken != -1)
  {
    +[UIImage(Bridge) ts_ellipsisCircleTertiaryFillOnPink];
  }

  v1 = ts_ellipsisCircleTertiaryFillOnPink_image;

  return v1;
}

+ (id)ts_exclamationMarkCircle
{
  if (ts_exclamationMarkCircle_onceToken != -1)
  {
    +[UIImage(Bridge) ts_exclamationMarkCircle];
  }

  v1 = ts_exclamationMarkCircle_image;

  return v1;
}

+ (id)ts_filledSystemImageNamed:()Bridge fillColor:symbolColor:
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DCAD8];
  v16[0] = a4;
  v16[1] = a5;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:v16 count:2];
  v13 = [v7 configurationWithPaletteColors:v12];

  v14 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v11 withConfiguration:v13];

  return v14;
}

+ (id)ts_filledSystemImageNamed:()Bridge fillColor:symbolColor:symbolConfig:
{
  v9 = a6;
  v10 = [MEMORY[0x1E69DCAB8] ts_filledSystemImageNamed:a3 fillColor:a4 symbolColor:a5];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 imageByApplyingSymbolConfiguration:v9];

    v11 = v12;
  }

  return v11;
}

+ (id)ts_handRaised
{
  if (ts_handRaised_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handRaised];
  }

  v1 = ts_handRaised_image;

  return v1;
}

+ (id)ts_handRaisedFill
{
  if (ts_handRaisedFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handRaisedFill];
  }

  v1 = ts_handRaisedFill_image;

  return v1;
}

+ (id)ts_handRaisedFillForHUD
{
  if (ts_handRaisedFillForHUD_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handRaisedFillForHUD];
  }

  v1 = ts_handRaisedFillForHUD_image;

  return v1;
}

+ (id)ts_handRaisedSlash
{
  if (ts_handRaisedSlash_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handRaisedSlash];
  }

  v1 = ts_handRaisedSlash_image;

  return v1;
}

+ (id)ts_handRaisedSlashFill
{
  if (ts_handRaisedSlashFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handRaisedSlashFill];
  }

  v1 = ts_handRaisedSlashFill_image;

  return v1;
}

+ (id)ts_handThumbsDown
{
  if (ts_handThumbsDown_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handThumbsDown];
  }

  v1 = ts_handThumbsDown_image;

  return v1;
}

+ (id)ts_handThumbsDownFill
{
  if (ts_handThumbsDownFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handThumbsDownFill];
  }

  v1 = ts_handThumbsDownFill_image;

  return v1;
}

+ (id)ts_handThumbsDownFillForHUD
{
  if (ts_handThumbsDownFillForHUD_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handThumbsDownFillForHUD];
  }

  v1 = ts_handThumbsDownFillForHUD_image;

  return v1;
}

+ (id)ts_handThumbsUp
{
  if (ts_handThumbsUp_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handThumbsUp];
  }

  v1 = ts_handThumbsUp_image;

  return v1;
}

+ (id)ts_handThumbsUpFill
{
  if (ts_handThumbsUpFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handThumbsUpFill];
  }

  v1 = ts_handThumbsUpFill_image;

  return v1;
}

+ (id)ts_handThumbsUpFillForHUD
{
  if (ts_handThumbsUpFillForHUD_onceToken != -1)
  {
    +[UIImage(Bridge) ts_handThumbsUpFillForHUD];
  }

  v1 = ts_handThumbsUpFillForHUD_image;

  return v1;
}

+ (id)ts_heartCircle
{
  if (ts_heartCircle_onceToken != -1)
  {
    +[UIImage(Bridge) ts_heartCircle];
  }

  v1 = ts_heartCircle_image;

  return v1;
}

+ (id)ts_heartCirclePinkOnTertiaryFill
{
  if (ts_heartCirclePinkOnTertiaryFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_heartCirclePinkOnTertiaryFill];
  }

  v1 = ts_heartCirclePinkOnTertiaryFill_image;

  return v1;
}

+ (id)ts_heartCircleFill
{
  if (ts_heartCircleFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_heartCircleFill];
  }

  v1 = ts_heartCircleFill_image;

  return v1;
}

+ (id)ts_heartCircleTertiaryFillOnPink
{
  if (ts_heartCircleTertiaryFillOnPink_onceToken != -1)
  {
    +[UIImage(Bridge) ts_heartCircleTertiaryFillOnPink];
  }

  v1 = ts_heartCircleTertiaryFillOnPink_image;

  return v1;
}

+ (id)ts_heartFill
{
  if (ts_heartFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_heartFill];
  }

  v1 = ts_heartFill_image;

  return v1;
}

+ (id)ts_iCloudAndArrowDown
{
  if (ts_iCloudAndArrowDown_onceToken != -1)
  {
    +[UIImage(Bridge) ts_iCloudAndArrowDown];
  }

  v1 = ts_iCloudAndArrowDown_image;

  return v1;
}

+ (id)ts_link
{
  if (ts_link_onceToken != -1)
  {
    +[UIImage(Bridge) ts_link];
  }

  v1 = ts_link_image;

  return v1;
}

+ (id)ts_minusCircle
{
  if (ts_minusCircle_onceToken != -1)
  {
    +[UIImage(Bridge) ts_minusCircle];
  }

  v1 = ts_minusCircle_image;

  return v1;
}

+ (id)ts_minusCircleFill
{
  if (ts_minusCircleFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_minusCircleFill];
  }

  v1 = ts_minusCircleFill_image;

  return v1;
}

+ (id)ts_minusCircleFillWhite
{
  if (ts_minusCircleFillWhite_onceToken != -1)
  {
    +[UIImage(Bridge) ts_minusCircleFillWhite];
  }

  v1 = ts_minusCircleFillWhite_image;

  return v1;
}

+ (id)ts_minusCircleTertiaryFillOnPink
{
  if (ts_minusCircleTertiaryFillOnPink_onceToken != -1)
  {
    +[UIImage(Bridge) ts_minusCircleTertiaryFillOnPink];
  }

  v1 = ts_minusCircleTertiaryFillOnPink_image;

  return v1;
}

+ (id)ts_navigationVerticalColumnShadow
{
  if (ts_navigationVerticalColumnShadow_onceToken != -1)
  {
    +[UIImage(Bridge) ts_navigationVerticalColumnShadow];
  }

  v1 = ts_navigationVerticalColumnShadow_navigationVerticalColumnShadow;

  return v1;
}

+ (id)ts_noSign
{
  if (ts_noSign_onceToken != -1)
  {
    +[UIImage(Bridge) ts_noSign];
  }

  v1 = ts_noSign_image;

  return v1;
}

+ (id)ts_plus
{
  if (ts_plus_onceToken != -1)
  {
    +[UIImage(Bridge) ts_plus];
  }

  v1 = ts_plus_image;

  return v1;
}

+ (id)ts_plusCircle
{
  if (ts_plusCircle_onceToken != -1)
  {
    +[UIImage(Bridge) ts_plusCircle];
  }

  v1 = ts_plusCircle_image;

  return v1;
}

+ (id)ts_plusCircleWhite
{
  if (ts_plusCircleWhite_onceToken != -1)
  {
    +[UIImage(Bridge) ts_plusCircleWhite];
  }

  v1 = ts_plusCircleWhite_image;

  return v1;
}

+ (id)ts_plusCircleFill
{
  if (ts_plusCircleFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_plusCircleFill];
  }

  v1 = ts_plusCircleFill_image;

  return v1;
}

+ (id)ts_plusCirclePinkOnTertiaryFill
{
  if (ts_plusCirclePinkOnTertiaryFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_plusCirclePinkOnTertiaryFill];
  }

  v1 = ts_plusCirclePinkOnTertiaryFill_image;

  return v1;
}

+ (id)ts_plusCirclePinkOnOpaqueFill
{
  if (ts_plusCirclePinkOnOpaqueFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_plusCirclePinkOnOpaqueFill];
  }

  v1 = ts_plusCirclePinkOnOpaqueFill_image;

  return v1;
}

+ (id)ts_plusCirclePinkOnGrayFill
{
  if (ts_plusCirclePinkOnGrayFill_onceToken != -1)
  {
    +[UIImage(Bridge) ts_plusCirclePinkOnGrayFill];
  }

  v1 = ts_plusCirclePinkOnGrayFill_image;

  return v1;
}

+ (id)ts_rightArrow
{
  if (ts_rightArrow_onceToken != -1)
  {
    +[UIImage(Bridge) ts_rightArrow];
  }

  v1 = ts_rightArrow_image;

  return v1;
}

+ (id)ts_safari
{
  if (ts_safari_onceToken != -1)
  {
    +[UIImage(Bridge) ts_safari];
  }

  v1 = ts_safari_image;

  return v1;
}

+ (id)ts_sidebarLeft
{
  if (ts_sidebarLeft_onceToken != -1)
  {
    +[UIImage(Bridge) ts_sidebarLeft];
  }

  v1 = ts_sidebarLeft_image;

  return v1;
}

+ (id)ts_squareAndArrowUp
{
  if (ts_squareAndArrowUp_onceToken != -1)
  {
    +[UIImage(Bridge) ts_squareAndArrowUp];
  }

  v1 = ts_squareAndArrowUp_image;

  return v1;
}

+ (id)ts_textFormatSize
{
  if (ts_textFormatSize_onceToken != -1)
  {
    +[UIImage(Bridge) ts_textFormatSize];
  }

  v1 = ts_textFormatSize_image;

  return v1;
}

+ (id)ts_trash
{
  if (ts_trash_onceToken != -1)
  {
    +[UIImage(Bridge) ts_trash];
  }

  v1 = ts_trash_image;

  return v1;
}

+ (id)ts_xmark
{
  if (ts_xmark_onceToken != -1)
  {
    +[UIImage(Bridge) ts_xmark];
  }

  v1 = ts_xmark_image;

  return v1;
}

+ (id)ts_xmarkCircle
{
  if (ts_xmarkCircle_onceToken != -1)
  {
    +[UIImage(Bridge) ts_xmarkCircle];
  }

  v1 = ts_xmarkCircle_image;

  return v1;
}

+ (id)ts_xmarkForHUD
{
  if (ts_xmarkForHUD_onceToken != -1)
  {
    +[UIImage(Bridge) ts_xmarkForHUD];
  }

  v1 = ts_xmarkForHUD_image;

  return v1;
}

@end