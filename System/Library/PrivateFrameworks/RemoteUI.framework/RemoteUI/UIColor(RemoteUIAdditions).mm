@interface UIColor(RemoteUIAdditions)
+ (id)_remoteUI_colorWithString:()RemoteUIAdditions;
+ (id)_remoteUI_colorWithString:()RemoteUIAdditions defaultColor:;
@end

@implementation UIColor(RemoteUIAdditions)

+ (id)_remoteUI_colorWithString:()RemoteUIAdditions defaultColor:
{
  v63[37] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 length])
  {
    goto LABEL_14;
  }

  v7 = [MEMORY[0x277CCAC80] scannerWithString:v5];
  v60 = 0;
  v61 = 0;
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v7 setCharactersToBeSkipped:whitespaceCharacterSet];

  v9 = objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"(");
  LODWORD(whitespaceCharacterSet) = [v7 scanUpToCharactersFromSet:v9 intoString:0];

  objc_msgSend(v7, "scanString:intoString:", @"("), 0;
  v10 = [v7 scanInt:&v61 + 4];
  v11 = [v7 scanString:@" intoString:{", 0}];
  v12 = [v7 scanInt:&v61];
  v13 = [v7 scanString:@" intoString:{", 0}];
  v14 = [v7 scanInt:&v60 + 4];
  v15 = [v7 scanString:@" intoString:{", 0}];
  v16 = [v7 scanFloat:&v60];
  if (whitespaceCharacterSet && v10 && v11 && v12 && v13 && v14)
  {
    v17 = *&v60;
    if ((v15 & v16) == 0)
    {
      v17 = 1.0;
    }

    v18 = [MEMORY[0x277D75348] colorWithRed:SHIDWORD(v61) / 255.0 green:v61 / 255.0 blue:SHIDWORD(v60) / 255.0 alpha:v17];

    goto LABEL_15;
  }

  v19 = _remoteUI_colorWithString_defaultColor__colorMap;
  if (!_remoteUI_colorWithString_defaultColor__colorMap)
  {
    v62[0] = @"black";
    blackColor = [MEMORY[0x277D75348] blackColor];
    v63[0] = blackColor;
    v62[1] = @"darkGray";
    darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
    v63[1] = darkGrayColor;
    v62[2] = @"lightGray";
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    v63[2] = lightGrayColor;
    v62[3] = @"white";
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v63[3] = whiteColor;
    v62[4] = @"gray";
    grayColor = [MEMORY[0x277D75348] grayColor];
    v63[4] = grayColor;
    v62[5] = @"red";
    redColor = [MEMORY[0x277D75348] redColor];
    v63[5] = redColor;
    v62[6] = @"green";
    greenColor = [MEMORY[0x277D75348] greenColor];
    v63[6] = greenColor;
    v62[7] = @"blue";
    blueColor = [MEMORY[0x277D75348] blueColor];
    v63[7] = blueColor;
    v62[8] = @"cyan";
    cyanColor = [MEMORY[0x277D75348] cyanColor];
    v63[8] = cyanColor;
    v62[9] = @"yellow";
    yellowColor = [MEMORY[0x277D75348] yellowColor];
    v63[9] = yellowColor;
    v62[10] = @"magenta";
    magentaColor = [MEMORY[0x277D75348] magentaColor];
    v63[10] = magentaColor;
    v62[11] = @"orange";
    orangeColor = [MEMORY[0x277D75348] orangeColor];
    v63[11] = orangeColor;
    v62[12] = @"purple";
    purpleColor = [MEMORY[0x277D75348] purpleColor];
    v63[12] = purpleColor;
    v62[13] = @"brown";
    brownColor = [MEMORY[0x277D75348] brownColor];
    v63[13] = brownColor;
    v62[14] = @"clear";
    clearColor = [MEMORY[0x277D75348] clearColor];
    v63[14] = clearColor;
    v62[15] = @"systemRed";
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v63[15] = systemRedColor;
    v62[16] = @"systemGreen";
    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    v63[16] = systemGreenColor;
    v62[17] = @"systemBlue";
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v63[17] = systemBlueColor;
    v62[18] = @"systemOrange";
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    v63[18] = systemOrangeColor;
    v62[19] = @"systemYellow";
    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    v63[19] = systemYellowColor;
    v62[20] = @"systemTeal";
    systemTealColor = [MEMORY[0x277D75348] systemTealColor];
    v63[20] = systemTealColor;
    v62[21] = @"systemPink";
    systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
    v63[21] = systemPinkColor;
    v62[22] = @"systemGray";
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    v63[22] = systemGrayColor;
    v62[23] = @"systemPurple";
    systemPurpleColor = [MEMORY[0x277D75348] systemPurpleColor];
    v63[23] = systemPurpleColor;
    v62[24] = @"systemBrown";
    systemBrownColor = [MEMORY[0x277D75348] systemBrownColor];
    v63[24] = systemBrownColor;
    v62[25] = @"systemIndigo";
    systemIndigoColor = [MEMORY[0x277D75348] systemIndigoColor];
    v63[25] = systemIndigoColor;
    v62[26] = @"systemCyan";
    systemCyanColor = [MEMORY[0x277D75348] systemCyanColor];
    v63[26] = systemCyanColor;
    v62[27] = @"systemMidGray";
    systemMidGrayColor = [MEMORY[0x277D75348] systemMidGrayColor];
    v63[27] = systemMidGrayColor;
    v62[28] = @"systemGray6Color";
    systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
    v63[28] = systemGray6Color;
    v62[29] = @"tertiarySystemGroupedBackgroundColor";
    tertiarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
    v63[29] = tertiarySystemGroupedBackgroundColor;
    v62[30] = @"systemBackgroundColor";
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    v63[30] = _systemBackgroundColor;
    v62[31] = @"labelColor";
    labelColor = [MEMORY[0x277D75348] labelColor];
    v63[31] = labelColor;
    v62[32] = @"secondaryLabelColor";
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    v63[32] = secondaryLabelColor;
    v62[33] = @"tertiaryLabelColor";
    tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
    v63[33] = tertiaryLabelColor;
    v62[34] = @"quaternaryLabelColor";
    quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
    v63[34] = quaternaryLabelColor;
    v62[35] = @"linkColor";
    linkColor = [MEMORY[0x277D75348] linkColor];
    v63[35] = linkColor;
    v62[36] = @"placeholderTextColor";
    placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
    v63[36] = placeholderTextColor;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:37];
    v28 = _remoteUI_colorWithString_defaultColor__colorMap;
    _remoteUI_colorWithString_defaultColor__colorMap = v27;

    v19 = _remoteUI_colorWithString_defaultColor__colorMap;
  }

  v18 = [v19 objectForKeyedSubscript:v5];

  if (!v18)
  {
LABEL_14:
    v18 = v6;
  }

LABEL_15:

  return v18;
}

+ (id)_remoteUI_colorWithString:()RemoteUIAdditions
{
  v4 = MEMORY[0x277D75348];
  v5 = a3;
  labelColor = [v4 labelColor];
  v7 = [self _remoteUI_colorWithString:v5 defaultColor:labelColor];

  return v7;
}

@end