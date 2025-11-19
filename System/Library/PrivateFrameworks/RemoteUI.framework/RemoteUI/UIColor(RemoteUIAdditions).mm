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
  v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v7 setCharactersToBeSkipped:v8];

  v9 = objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"(");
  LODWORD(v8) = [v7 scanUpToCharactersFromSet:v9 intoString:0];

  objc_msgSend(v7, "scanString:intoString:", @"("), 0;
  v10 = [v7 scanInt:&v61 + 4];
  v11 = [v7 scanString:@" intoString:{", 0}];
  v12 = [v7 scanInt:&v61];
  v13 = [v7 scanString:@" intoString:{", 0}];
  v14 = [v7 scanInt:&v60 + 4];
  v15 = [v7 scanString:@" intoString:{", 0}];
  v16 = [v7 scanFloat:&v60];
  if (v8 && v10 && v11 && v12 && v13 && v14)
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
    v59 = [MEMORY[0x277D75348] blackColor];
    v63[0] = v59;
    v62[1] = @"darkGray";
    v58 = [MEMORY[0x277D75348] darkGrayColor];
    v63[1] = v58;
    v62[2] = @"lightGray";
    v57 = [MEMORY[0x277D75348] lightGrayColor];
    v63[2] = v57;
    v62[3] = @"white";
    v56 = [MEMORY[0x277D75348] whiteColor];
    v63[3] = v56;
    v62[4] = @"gray";
    v55 = [MEMORY[0x277D75348] grayColor];
    v63[4] = v55;
    v62[5] = @"red";
    v54 = [MEMORY[0x277D75348] redColor];
    v63[5] = v54;
    v62[6] = @"green";
    v53 = [MEMORY[0x277D75348] greenColor];
    v63[6] = v53;
    v62[7] = @"blue";
    v52 = [MEMORY[0x277D75348] blueColor];
    v63[7] = v52;
    v62[8] = @"cyan";
    v51 = [MEMORY[0x277D75348] cyanColor];
    v63[8] = v51;
    v62[9] = @"yellow";
    v50 = [MEMORY[0x277D75348] yellowColor];
    v63[9] = v50;
    v62[10] = @"magenta";
    v49 = [MEMORY[0x277D75348] magentaColor];
    v63[10] = v49;
    v62[11] = @"orange";
    v48 = [MEMORY[0x277D75348] orangeColor];
    v63[11] = v48;
    v62[12] = @"purple";
    v47 = [MEMORY[0x277D75348] purpleColor];
    v63[12] = v47;
    v62[13] = @"brown";
    v46 = [MEMORY[0x277D75348] brownColor];
    v63[13] = v46;
    v62[14] = @"clear";
    v45 = [MEMORY[0x277D75348] clearColor];
    v63[14] = v45;
    v62[15] = @"systemRed";
    v44 = [MEMORY[0x277D75348] systemRedColor];
    v63[15] = v44;
    v62[16] = @"systemGreen";
    v43 = [MEMORY[0x277D75348] systemGreenColor];
    v63[16] = v43;
    v62[17] = @"systemBlue";
    v42 = [MEMORY[0x277D75348] systemBlueColor];
    v63[17] = v42;
    v62[18] = @"systemOrange";
    v41 = [MEMORY[0x277D75348] systemOrangeColor];
    v63[18] = v41;
    v62[19] = @"systemYellow";
    v40 = [MEMORY[0x277D75348] systemYellowColor];
    v63[19] = v40;
    v62[20] = @"systemTeal";
    v39 = [MEMORY[0x277D75348] systemTealColor];
    v63[20] = v39;
    v62[21] = @"systemPink";
    v38 = [MEMORY[0x277D75348] systemPinkColor];
    v63[21] = v38;
    v62[22] = @"systemGray";
    v37 = [MEMORY[0x277D75348] systemGrayColor];
    v63[22] = v37;
    v62[23] = @"systemPurple";
    v36 = [MEMORY[0x277D75348] systemPurpleColor];
    v63[23] = v36;
    v62[24] = @"systemBrown";
    v35 = [MEMORY[0x277D75348] systemBrownColor];
    v63[24] = v35;
    v62[25] = @"systemIndigo";
    v34 = [MEMORY[0x277D75348] systemIndigoColor];
    v63[25] = v34;
    v62[26] = @"systemCyan";
    v33 = [MEMORY[0x277D75348] systemCyanColor];
    v63[26] = v33;
    v62[27] = @"systemMidGray";
    v32 = [MEMORY[0x277D75348] systemMidGrayColor];
    v63[27] = v32;
    v62[28] = @"systemGray6Color";
    v31 = [MEMORY[0x277D75348] systemGray6Color];
    v63[28] = v31;
    v62[29] = @"tertiarySystemGroupedBackgroundColor";
    v30 = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
    v63[29] = v30;
    v62[30] = @"systemBackgroundColor";
    v20 = [MEMORY[0x277D75348] _systemBackgroundColor];
    v63[30] = v20;
    v62[31] = @"labelColor";
    v21 = [MEMORY[0x277D75348] labelColor];
    v63[31] = v21;
    v62[32] = @"secondaryLabelColor";
    v22 = [MEMORY[0x277D75348] secondaryLabelColor];
    v63[32] = v22;
    v62[33] = @"tertiaryLabelColor";
    v23 = [MEMORY[0x277D75348] tertiaryLabelColor];
    v63[33] = v23;
    v62[34] = @"quaternaryLabelColor";
    v24 = [MEMORY[0x277D75348] quaternaryLabelColor];
    v63[34] = v24;
    v62[35] = @"linkColor";
    v25 = [MEMORY[0x277D75348] linkColor];
    v63[35] = v25;
    v62[36] = @"placeholderTextColor";
    v26 = [MEMORY[0x277D75348] placeholderTextColor];
    v63[36] = v26;
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
  v6 = [v4 labelColor];
  v7 = [a1 _remoteUI_colorWithString:v5 defaultColor:v6];

  return v7;
}

@end