@interface VUIMediaTagsViewLayout
+ (BOOL)isSportsCanonicalType:(unint64_t)a3;
- (BOOL)isSportsCanonicalType;
- (CGSize)entitlementCueImageSize;
- (UIEdgeInsets)badgeMargin;
- (UIEdgeInsets)commonSenseMargin;
- (UIEdgeInsets)entitlementCueMargin;
- (UIEdgeInsets)groupMargin;
- (UIEdgeInsets)highMotionMargin;
- (UIEdgeInsets)immersiveMargin;
- (UIEdgeInsets)margin;
- (UIEdgeInsets)padding;
- (UIEdgeInsets)separatorMargin;
- (UIEdgeInsets)textBadgeMargin;
- (UIEdgeInsets)tomatoMeterMargin;
- (VUIMediaTagsViewLayout)initWithType:(unint64_t)a3;
- (void)updateHighMotionFontSize;
- (void)updateLayoutForPhoneSizeClass:(BOOL)a3;
@end

@implementation VUIMediaTagsViewLayout

+ (BOOL)isSportsCanonicalType:(unint64_t)a3
{
  v4 = [a1 sportsCanonicalViewLayoutTypes];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (BOOL)isSportsCanonicalType
{
  v3 = objc_opt_class();
  v4 = [(VUIMediaTagsViewLayout *)self type];

  return [v3 isSportsCanonicalType:v4];
}

- (VUIMediaTagsViewLayout)initWithType:(unint64_t)a3
{
  v257[2] = *MEMORY[0x1E69E9840];
  v160.receiver = self;
  v160.super_class = VUIMediaTagsViewLayout;
  v4 = [(VUIMediaTagsViewLayout *)&v160 init];
  v5 = v4;
  if (v4)
  {
    v6 = v4 + 280;
    *(v4 + 3) = a3;
    v7 = v4 + 264;
    *(v4 + 33) = 0;
    *(v4 + 34) = 0;
    *(v4 + 35) = 0;
    *(v4 + 36) = 0x4004000000000000;
    v4[16] = 0;
    *(v4 + 17) = 0;
    *(v4 + 19) = 0;
    *(v4 + 12) = 0;
    *(v4 + 13) = 1;
    v8 = objc_opt_new();
    v9 = 0x1E69DC000uLL;
    v10 = [MEMORY[0x1E69DC888] vui_opacityColorWithType:1];
    v11 = *(v5 + 20);
    *(v5 + 20) = v10;

    switch(a3)
    {
      case 0uLL:
        [v8 setColorWithOpacityType:0];
        [v8 setTextStyle:16];
        [v8 setFontWeight:10];
        [v8 setNumberOfLines:1];
        [v8 setAlignment:1];
        [v8 setMargin:{0.0, 0.0, 0.0, 10.0}];
        v76 = [MEMORY[0x1E69DC888] vui_opacityColorWithType:0];
        v77 = *(v5 + 20);
        *(v5 + 20) = v76;

        v69 = xmmword_1E4296CA0;
        v67 = xmmword_1E4296CB0;
        v64 = 2.0;
        v68 = 22.0;
        goto LABEL_38;
      case 1uLL:
        v5[15] = 1;
        v62 = MEMORY[0x1E69DC888];
        v63 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
        v64 = 1.0;
        v65 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
        v66 = [v62 vui_dynamicColorWithLightColor:v63 darkColor:v65];
        [v8 setColor:v66];

        [v8 setTextStyle:15];
        [v8 setMargin:{4.0, 0.0, 4.0, 8.0}];
        *v7 = 0;
        *(v5 + 34) = 0;
        *v6 = xmmword_1E4296C70;
        [v8 setNumberOfLines:1];
        [v8 setAlignment:1];
        v67 = xmmword_1E4296C90;
        v68 = 13.0;
        v69 = xmmword_1E4296C90;
LABEL_38:
        *(v5 + 18) = v68;
        *(v5 + 488) = v67;
        *(v5 + 504) = v69;
        *(v5 + 38) = 0;
        *(v5 + 39) = 0;
        *(v5 + 37) = 0;
        *(v5 + 40) = v64;
        *(v5 + 42) = 0;
        *(v5 + 43) = 0;
        *(v5 + 41) = 0;
        *(v5 + 44) = v64;
        v257[0] = VUIMediaTagKeyCommonSenseImage;
        v257[1] = VUIMediaTagKeyCommonSenseRating;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v257 count:2];
        v256[0] = VUIMediaTagKeyTomatoFreshnessImage;
        v256[1] = VUIMediaTagKeyTomatoPercentage;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v256 count:2];
        v255[0] = VUIMediaTagKeyRatingImage;
        v255[1] = VUIMediaTagKeyContentRatingAuxiliaryName;
        v255[2] = VUIMediaTagKeyVideoResolutionImage;
        v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v255 count:3];
        v254[0] = VUIMediaTagKey3DImage;
        v254[1] = VUIMediaTagKeyImmersiveImage;
        v254[2] = VUIMediaTagKeyImmersiveText;
        v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v254 count:3];
        v253[0] = VUIMediaTagKeyVideoDynamicRangeImage;
        v253[1] = VUIMediaTagKeyDolbyAtmosImage;
        v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v253 count:2];
        v81 = [v80 mutableCopy];

        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          v252[0] = VUIMediaTagKeyClosedCaptionImage;
          v252[1] = VUIMediaTagKeySDHLocalesImage;
          v252[2] = VUIMediaTagKeyADLocalesImage;
          v252[3] = VUIMediaTagKeyHighMotionImage;
          v252[4] = VUIMediaTagKeyHighMotionText;
          v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v252 count:5];
          [v81 addObjectsFromArray:v82];
        }

        v251[0] = v13;
        v251[1] = v12;
        v251[2] = v78;
        v251[3] = v79;
        v251[4] = v81;
        v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v251 count:5];
        v84 = *(v5 + 15);
        *(v5 + 15) = v83;

        goto LABEL_84;
      case 2uLL:
        [v8 setTextStyle:15];
        [v8 setFontWeight:10];
        v50 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
        [v8 setColor:v50];

        *v7 = 0;
        *(v5 + 34) = 0;
        *v6 = xmmword_1E4296C60;
        [v8 setMargin:{4.0, 0.0, 4.0, 3.0}];
        [v8 setNumberOfLines:1];
        [v8 setAlignment:1];
        *(v5 + 18) = 0x402A000000000000;
        v233[0] = VUIMediaTagKeyEpisodeNumberTitle;
        v233[1] = VUIMediaTagKeySeparator;
        v233[2] = VUIMediaTagKeyGenre;
        v233[3] = VUIMediaTagKeySeparator;
        v233[4] = VUIMediaTagKeyReleasedDate;
        v233[5] = VUIMediaTagKeySeparator;
        v233[6] = VUIMediaTagKeyComingSoonText;
        v233[7] = VUIMediaTagKeySeparator;
        v233[8] = VUIMediaTagKeyContentUnavailabilityText;
        v233[9] = VUIMediaTagKeySeparator;
        v233[10] = VUIMediaTagKeyRentalExpiration;
        v233[11] = VUIMediaTagKeySeparator;
        v233[12] = VUIMediaTagKeyDuration;
        v233[13] = VUIMediaTagKeySeparator;
        v233[14] = VUIMediaTagKeyAvailabilityText;
        v233[15] = VUIMediaTagKeyAvailabilityImage;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v233 count:16];
        v232 = VUIMediaTagKeyGroupActivityImage;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v232 count:1];
        v231 = VUIMediaTagKeyBrandLinkButton;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v231 count:1];
        v230[0] = v12;
        v230[1] = v13;
        v230[2] = v23;
        v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v230 count:3];
        v52 = *(v5 + 15);
        *(v5 + 15) = v51;

        v5[16] = 1;
        goto LABEL_30;
      case 3uLL:
        v5[15] = 1;
        v53 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
        v54 = [v53 colorWithAlphaComponent:0.75];

        [v8 setColor:v54];
        v55 = *(v5 + 20);
        *(v5 + 20) = v54;

        [v8 setTextStyle:15];
        [v8 setMargin:{4.0, 0.0, 4.0, 8.0}];
        *v7 = 0;
        *(v5 + 34) = 0;
        *v6 = xmmword_1E4296C70;
        [v8 setNumberOfLines:1];
        [v8 setAlignment:1];
        *(v5 + 18) = 0x402A000000000000;
        *(v5 + 64) = 0x4020000000000000;
        *(v5 + 37) = 0;
        *(v5 + 38) = 0;
        *(v5 + 39) = 0;
        *(v5 + 40) = 0x4000000000000000;
        *(v5 + 41) = 0;
        *(v5 + 42) = 0;
        *(v5 + 43) = 0;
        *(v5 + 44) = 0x4000000000000000;
        *(v5 + 49) = 0;
        *(v5 + 50) = 0;
        *(v5 + 51) = 0;
        *(v5 + 52) = 0x4008000000000000;
        *(v5 + 58) = 0;
        *(v5 + 59) = 0;
        *(v5 + 56) = 0x4008000000000000;
        *(v5 + 57) = 0;
        *(v5 + 30) = xmmword_1E4296C80;
        *(v5 + 31) = xmmword_1E4296C30;
        __asm { FMOV            V0.2D, #22.0 }

        *(v5 + 184) = _Q0;
        *(v5 + 53) = 0;
        *(v5 + 54) = 0;
        *(v5 + 55) = 0;
        *(v5 + 11) = 0x3FE0000000000000;
        *(v5 + 4) = 257;
LABEL_28:
        v250 = VUIMediaTagKeyGroupActivityImage;
        v156 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v250 count:1];
        v249[0] = VUIMediaTagKeyCommonSenseImage;
        v249[1] = VUIMediaTagKeyCommonSenseRating;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v249 count:2];
        v248[0] = VUIMediaTagKeyTomatoFreshnessImage;
        v248[1] = VUIMediaTagKeyTomatoPercentage;
        v157 = [MEMORY[0x1E695DEC8] arrayWithObjects:v248 count:2];
        v247[0] = VUIMediaTagKeyReleasedDate;
        v247[1] = VUIMediaTagKeySeparator;
        v247[2] = VUIMediaTagKeyDuration;
        v247[3] = VUIMediaTagKeySeparator;
        v247[4] = VUIMediaTagKeySubtitle;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v247 count:5];
        v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v25 addObject:VUIMediaTagKeyRatingImage];
        v246[0] = VUIMediaTagKeyContentRatingAuxiliaryName;
        v246[1] = VUIMediaTagKeyVideoResolutionImage;
        v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v246 count:2];
        [v25 addObjectsFromArray:v57];

        v245[0] = VUIMediaTagKey3DImage;
        v245[1] = VUIMediaTagKeyImmersiveImage;
        v245[2] = VUIMediaTagKeyImmersiveText;
        v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v245 count:3];
        v244[0] = VUIMediaTagKeyVideoDynamicRangeImage;
        v244[1] = VUIMediaTagKeyDolbyAtmosImage;
        v244[2] = VUIMediaTagKeyClosedCaptionImage;
        v244[3] = VUIMediaTagKeySDHLocalesImage;
        v244[4] = VUIMediaTagKeyADLocalesImage;
        v244[5] = VUIMediaTagKeyHighMotionImage;
        v244[6] = VUIMediaTagKeyHighMotionText;
        v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v244 count:7];
        v23 = v157;
        v243[0] = v156;
        v243[1] = v24;
        v243[2] = v157;
        v243[3] = v13;
        v243[4] = v25;
        v243[5] = v58;
        v243[6] = v59;
        v12 = v156;
        v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v243 count:7];
        v61 = *(v5 + 15);
        *(v5 + 15) = v60;

        v5[16] = 1;
        v9 = 0x1E69DC000;
        goto LABEL_29;
      case 4uLL:
        v5[15] = 1;
        v35 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
        [v8 setColor:v35];

        [v8 setTextStyle:12];
        [v8 setMargin:{4.0, 0.0, 4.0, 3.0}];
        *v7 = 0;
        *(v5 + 34) = 0;
        *v6 = xmmword_1E4296C60;
        *(v5 + 18) = 0x402C000000000000;
        __asm { FMOV            V0.2D, #22.0 }

        *(v5 + 184) = _Q0;
        *(v5 + 53) = 0;
        *(v5 + 54) = 0;
        *(v5 + 55) = 0;
        *(v5 + 56) = 0x4008000000000000;
        *(v5 + 11) = 0x3FE0000000000000;
        *(v5 + 4) = 257;
        v41 = [MEMORY[0x1E69DC888] vui_lockupBorderColorOpal];
        v42 = *(v5 + 10);
        *(v5 + 10) = v41;

        [v8 setNumberOfLines:1];
        [v8 setAlignment:1];
LABEL_14:
        v242 = VUIMediaTagKeyGenres;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v242 count:1];
        v241[0] = VUIMediaTagKeyBrandLinkButton;
        v241[1] = VUIMediaTagKeyEntitlementCue;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v241 count:2];
        v240[0] = v12;
        v240[1] = v13;
        v33 = MEMORY[0x1E695DEC8];
        v34 = v240;
        goto LABEL_25;
      case 8uLL:
        [v8 setTextStyle:17];
        [v8 setColorWithOpacityType:1];
        [v8 setMargin:{42.0, 0.0, 23.0, 10.0}];
        *(v5 + 18) = 0x4036000000000000;
        *(v5 + 61) = 0;
        *(v5 + 31) = xmmword_1E4296C50;
        *(v5 + 64) = 0x4024000000000000;
        [v5 setMargin:{0.0, 0.0, 50.0, 0.0}];
        [v8 setNumberOfLines:1];
        [v8 setAlignment:1];
        objc_storeStrong(v5 + 4, v8);
        v45 = [MEMORY[0x1E69DC888] clearColor];
        [v5 setBackgroundColor:v45];

        v5[15] = 1;
LABEL_20:
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          [v12 addObject:VUIMediaTagKeyDuration];
        }

        v229[0] = VUIMediaTagKeySeparator;
        v229[1] = VUIMediaTagKeyReleasedDate;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v229 count:2];
        [v12 addObjectsFromArray:v46];

        v13 = [MEMORY[0x1E695DF70] arrayWithObject:VUIMediaTagKeyRatingImage];
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          v228[0] = VUIMediaTagKeyContentRatingAuxiliaryName;
          v228[1] = VUIMediaTagKeyVideoDynamicRangeImage;
          v228[2] = VUIMediaTagKeyVideoResolutionImage;
          v228[3] = VUIMediaTagKeyClosedCaptionImage;
          v228[4] = VUIMediaTagKeySDHLocalesImage;
          v228[5] = VUIMediaTagKeyADLocalesImage;
          v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v228 count:6];
          [v13 addObjectsFromArray:v47];
        }

        v227[0] = v12;
        v227[1] = v13;
        v33 = MEMORY[0x1E695DEC8];
        v34 = v227;
        goto LABEL_25;
      case 9uLL:
        *(v5 + 29) = 0x4018000000000000;
        *(v5 + 15) = 0u;
        *(v5 + 16) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 36) = 0;
        v5[15] = 1;
        v5[13] = 1;
        [v8 setTextStyle:16];
        [v8 setMargin:{2.0, 0.0, 2.0, 4.0}];
        v20 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
        [v8 setColor:v20];

        v21 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
        v22 = *(v5 + 20);
        *(v5 + 20) = v21;

        [v8 setNumberOfLines:1];
        *(v5 + 18) = 0x4026000000000000;
        *(v5 + 61) = 0x4000000000000000;
        *(v5 + 31) = xmmword_1E4296C40;
        *(v5 + 64) = 0x4010000000000000;
LABEL_9:
        v239[0] = VUIMediaTagKeyVideoResolutionImage;
        v239[1] = VUIMediaTagKey3DImage;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v239 count:2];
        v238[0] = VUIMediaTagKeyImmersiveImage;
        v238[1] = VUIMediaTagKeyImmersiveText;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v238 count:2];
        v237[0] = VUIMediaTagKeyVideoDynamicRangeImage;
        v237[1] = VUIMediaTagKeyDolbyAtmosImage;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v237 count:2];
        v236[0] = VUIMediaTagKeyClosedCaptionImage;
        v236[1] = VUIMediaTagKeySDHLocalesImage;
        v236[2] = VUIMediaTagKeyADLocalesImage;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v236 count:3];
        v235[0] = VUIMediaTagKeySeparator;
        v235[1] = VUIMediaTagKeyVersionCount;
        v235[2] = VUIMediaTagKeySeparator;
        v235[3] = VUIMediaTagKeySubtitle;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v235 count:4];
        v234[0] = v12;
        v234[1] = v13;
        v234[2] = v23;
        v234[3] = v24;
        v234[4] = v25;
        v26 = MEMORY[0x1E695DEC8];
        v9 = 0x1E69DC000;
        v27 = v234;
        goto LABEL_10;
      case 0xAuLL:
        v43 = [MEMORY[0x1E69DC888] systemGrayColor];
        v44 = *(v5 + 20);
        *(v5 + 20) = v43;

        *(v5 + 18) = 0x4024000000000000;
        *(v5 + 61) = 0;
        *(v5 + 62) = 0;
        *(v5 + 63) = 0;
        *(v5 + 64) = 0x4010000000000000;
        goto LABEL_16;
      case 0xBuLL:
        v73 = [MEMORY[0x1E69DC888] systemGrayColor];
        v74 = *(v5 + 20);
        *(v5 + 20) = v73;

        *(v5 + 18) = 0x4028000000000000;
        *(v5 + 61) = 0x4018000000000000;
        *(v5 + 31) = xmmword_1E4296C30;
        *(v5 + 64) = 0x4020000000000000;
LABEL_35:
        v224[0] = VUIMediaTagKeyRatingImage;
        v224[1] = VUIMediaTagKeyContentRatingAuxiliaryName;
        v224[2] = VUIMediaTagKeyVideoResolutionImage;
        v224[3] = VUIMediaTagKeyVideoDynamicRangeImage;
        v224[4] = VUIMediaTagKeyDolbyAtmosImage;
        v224[5] = VUIMediaTagKeyItunesExtras;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v224 count:6];
        v223 = v12;
        v71 = MEMORY[0x1E695DEC8];
        v72 = &v223;
        goto LABEL_36;
      case 0xCuLL:
        [v8 setTextStyle:21];
        [v8 setFontWeight:0];
        [v8 setNumberOfLines:1];
        v70 = [MEMORY[0x1E69DC888] systemGrayColor];
        [v8 setColor:v70];

        [v8 setMargin:{0.0, 5.0, 0.0, 5.0}];
LABEL_33:
        v226[0] = VUIMediaTagKeyGenre;
        v226[1] = VUIMediaTagKeySeparator;
        v226[2] = VUIMediaTagKeyReleasedDate;
        v226[3] = VUIMediaTagKeyDuration;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v226 count:4];
        v225 = v12;
        v71 = MEMORY[0x1E695DEC8];
        v72 = &v225;
        goto LABEL_36;
      case 0xDuLL:
      case 0xEuLL:
      case 0x16uLL:
LABEL_3:
        v219[0] = VUIMediaTagKeyGenre;
        v219[1] = VUIMediaTagKeySeparator;
        v219[2] = VUIMediaTagKeyReleasedDate;
        v219[3] = VUIMediaTagKeySeparator;
        v219[4] = VUIMediaTagKeyDuration;
        v219[5] = VUIMediaTagKeySeparator;
        v219[6] = VUIMediaTagKeySubtitle;
        v219[7] = VUIMediaTagKeySeparator;
        v219[8] = VUIMediaTagKeyLeagueShortName;
        v219[9] = VUIMediaTagKeySeparator;
        v219[10] = VUIMediaTagKeyGameStartTime;
        v219[11] = VUIMediaTagKeyUpgradeText;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v219 count:12];
        v218[0] = VUIMediaTagKey3DImage;
        v218[1] = VUIMediaTagKeySeparator;
        v218[2] = VUIMediaTagKeyIsBlackedOut;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v218 count:3];
        if (a3 == 22)
        {
          v217[0] = VUIMediaTagKeySeparator;
          v217[1] = VUIMediaTagKeyImmersiveImage;
          v217[2] = VUIMediaTagKeyImmersiveText;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v217 count:3];
          v216 = v12;
          v15 = &v216;
          v16 = v13;
          v17 = v14;
        }

        else
        {
          v215[0] = VUIMediaTagKeyImmersiveImage;
          v215[1] = VUIMediaTagKeyImmersiveText;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v215 count:2];
          v214 = v12;
          v15 = &v214;
          v14 = v13;
          v17 = v16;
        }

        v15[1] = v16;
        v15[2] = v14;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
        v19 = *(v5 + 15);
        *(v5 + 15) = v18;

        goto LABEL_7;
      case 0xFuLL:
        *v7 = 0;
        *(v5 + 34) = 0;
        *(v5 + 35) = 0;
        *(v5 + 36) = 0x4010000000000000;
        v30 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
        v31 = *(v5 + 20);
        *(v5 + 20) = v30;

        v32 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
        [v8 setColor:v32];

        [v8 setTextStyle:15];
        *(v5 + 5) = 257;
        v5[12] = 1;
        [v8 setMargin:{0.0, 4.0, 4.0, 4.0}];
        [v8 setNumberOfLines:1];
        [v8 setAlignment:1];
        *(v5 + 18) = 0x4028000000000000;
        v5[15] = 1;
LABEL_12:
        v222[0] = VUIMediaTagKeyGenre;
        v222[1] = VUIMediaTagKeySeparator;
        v222[2] = VUIMediaTagKeyReleasedDate;
        v222[3] = VUIMediaTagKeySeparator;
        v222[4] = VUIMediaTagKeyDuration;
        v222[5] = VUIMediaTagKeySeparator;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v222 count:6];
        v221[0] = VUIMediaTagKeyRatingImage;
        v221[1] = VUIMediaTagKeyContentRatingAuxiliaryName;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v221 count:2];
        v220[0] = v12;
        v220[1] = v13;
        v33 = MEMORY[0x1E695DEC8];
        v34 = v220;
        goto LABEL_25;
      default:
        if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x10)
        {
          if (_os_feature_enabled_impl())
          {
            [MEMORY[0x1E69DC888] vui_primaryTextColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] vui_secondaryTextColor];
          }
          v92 = ;
          [v8 setColor:v92];

          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            [v8 setNumberOfLines:2];
          }

          [v8 setAlignment:1];
          [v8 setMargin:{0.0, 5.0, 0.0, 5.0}];
          *v7 = 0;
          *(v5 + 34) = 0;
          *(v5 + 35) = 0;
          *(v5 + 36) = 0x4014000000000000;
          *(v5 + 65) = 0;
          *(v5 + 67) = 0;
          *(v5 + 66) = 0;
          *(v5 + 68) = 0x401C000000000000;
          *(v5 + 18) = 0x4028000000000000;
          if (_os_feature_enabled_impl())
          {
            [v8 setTextStyle:12];
          }

          else
          {
            [v8 setTextStyle:15];
            [v8 setFontWeight:10];
          }

          if (_os_feature_enabled_impl())
          {
            [MEMORY[0x1E69DC888] vui_primaryTextColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] vui_secondaryTextColor];
          }
          v100 = ;
          v101 = *(v5 + 20);
          *(v5 + 20) = v100;

          v5[15] = 1;
          v5[13] = _os_feature_enabled_impl() ^ 1;
          *(v5 + 11) = 257;
          *(v5 + 61) = 0x4010000000000000;
          *(v5 + 62) = 0;
          *(v5 + 63) = 0;
          *(v5 + 64) = 0;
          __asm { FMOV            V0.2D, #22.0 }

          *(v5 + 184) = _Q0;
          *(v5 + 53) = 0;
          *(v5 + 54) = 0;
          *(v5 + 55) = 0;
          *(v5 + 56) = 0x3FF0000000000000;
          v5[8] = 1;
          v5[14] = 1;
        }

        else
        {
          if (a3 == 5)
          {
            v85 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
            [v8 setColor:v85];

            [v8 setAlignment:1];
            [v8 setMargin:{0.0, 5.0, 0.0, 5.0}];
            *v7 = 0;
            *(v5 + 34) = 0;
            *(v5 + 35) = 0;
            *(v5 + 36) = 0x4014000000000000;
            *(v5 + 18) = 0x4028000000000000;
            [v8 setTextStyle:15];
            [v8 setFontWeight:10];
            [v8 setNumberOfLines:2];
            v86 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
            v87 = *(v5 + 20);
            *(v5 + 20) = v86;

            v5[15] = 1;
            v5[13] = 1;
            *(v5 + 11) = 257;
            goto LABEL_16;
          }

          if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 6)
          {
            switch(a3)
            {
              case 3uLL:
                goto LABEL_28;
              case 4uLL:
                goto LABEL_14;
              case 8uLL:
                goto LABEL_20;
              case 9uLL:
                goto LABEL_9;
              case 0xBuLL:
                goto LABEL_35;
              case 0xCuLL:
                goto LABEL_33;
              case 0xDuLL:
              case 0xEuLL:
              case 0x16uLL:
                goto LABEL_3;
              case 0xFuLL:
                goto LABEL_12;
              case 0x10uLL:
                goto LABEL_94;
              case 0x11uLL:
                goto LABEL_71;
              case 0x12uLL:
                v141 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
                [v8 setColor:v141];

                [v8 setTextStyle:14];
                [v8 setFontWeight:5];
                [v8 setNumberOfLines:0];
                [v8 setAlignment:1];
                [v8 setMargin:{0.0, 0.0, 10.0, 0.0}];
                *(v5 + 200) = xmmword_1E4296D10;
                *(v5 + 216) = xmmword_1E4296C50;
                *v7 = 0;
                *(v5 + 34) = 0;
                *(v5 + 35) = 0;
                *(v5 + 36) = 0x4014000000000000;
                *(v5 + 18) = 0x402C000000000000;
                *(v5 + 19) = 6;
                v142 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
                v143 = *(v5 + 20);
                *(v5 + 20) = v142;

                v5[15] = 1;
                goto LABEL_104;
              case 0x13uLL:
                v138 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
                [v8 setColor:v138];

                [v8 setTextStyle:14];
                [v8 setFontWeight:4];
                [v8 setNumberOfLines:0];
                [v8 setAlignment:1];
                [v8 setMargin:{0.0, 0.0, 6.0, 0.0}];
                *(v5 + 200) = xmmword_1E4296CF0;
                *(v5 + 216) = xmmword_1E4296D00;
                *(v5 + 34) = 0;
                *(v5 + 35) = 0;
                *v7 = 0;
                *(v5 + 36) = 0x4014000000000000;
                *(v5 + 65) = 0;
                *(v5 + 67) = 0;
                *(v5 + 66) = 0;
                *(v5 + 68) = 0x4014000000000000;
                *(v5 + 18) = 0x402C000000000000;
                *(v5 + 19) = 6;
                v139 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
                v140 = *(v5 + 20);
                *(v5 + 20) = v139;

                *(v5 + 11) = 257;
                v5[15] = 1;
                v5[13] = 1;
                goto LABEL_106;
              case 0x14uLL:
                v144 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
                [v8 setColor:v144];

                [v8 setTextStyle:13];
                [v8 setFontWeight:5];
                [v8 setNumberOfLines:0];
                [v8 setAlignment:1];
                [v8 setMargin:{0.0, 0.0, 6.0, 0.0}];
                *(v5 + 200) = xmmword_1E4296CC0;
                *(v5 + 216) = xmmword_1E4296C50;
                *(v5 + 34) = 0;
                *(v5 + 35) = 0;
                *v7 = 0;
                *(v5 + 36) = 0x4014000000000000;
LABEL_104:
                *(v5 + 11) = 257;
                v5[13] = 1;
                break;
              case 0x15uLL:
                v145 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
                [v8 setColor:v145];

                [v8 setTextStyle:15];
                [v8 setFontWeight:10];
                [v8 setNumberOfLines:0];
                [v8 setAlignment:1];
                [v8 setMargin:{0.0, 5.0, 6.0, 5.0}];
                [v8 setMaximumContentSizeCategory:6];
                *(v5 + 200) = xmmword_1E4296CC0;
                *(v5 + 216) = xmmword_1E4296CD0;
                *v7 = 0u;
                *(v5 + 280) = 0u;
                *(v5 + 18) = 0x402C000000000000;
                *(v5 + 19) = 6;
                v146 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
                v147 = *(v5 + 20);
                *(v5 + 20) = v146;

                *(v5 + 11) = 257;
                v5[15] = 1;
                v5[13] = 1;
                __asm { FMOV            V0.2D, #28.0 }

                *(v5 + 184) = _Q0;
                *(v5 + 53) = 0;
                *(v5 + 27) = xmmword_1E4296CE0;
                *(v5 + 56) = 0x4014000000000000;
LABEL_106:
                *(v5 + 61) = 0x3FF0000000000000;
                *(v5 + 62) = 0;
                *(v5 + 63) = 0;
                *(v5 + 64) = 0;
                break;
              case 0x17uLL:
                v153 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
                [v8 setColor:v153];

                [v8 setTextStyle:15];
                [v8 setFontWeight:10];
                [v8 setNumberOfLines:2];
                [v8 setAlignment:1];
                [v8 setMargin:{0.0, 0.0, 0.0, 8.0}];
                v154 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
                v155 = *(v5 + 20);
                *(v5 + 20) = v154;

                *(v5 + 18) = 0x402A000000000000;
                *(v5 + 11) = 257;
                v5[15] = 1;
                goto LABEL_16;
              case 0x18uLL:
                v149 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
                [v8 setColor:v149];

                [v8 setAlignment:1];
                [v8 setMargin:{0.0, 5.0, 0.0, 5.0}];
                *v7 = 0;
                *(v5 + 34) = 0;
                *(v5 + 35) = 0;
                *(v5 + 36) = 0x4014000000000000;
                *(v5 + 65) = 0;
                *(v5 + 67) = 0;
                *(v5 + 66) = 0;
                *(v5 + 68) = 0x3FF0000000000000;
                *(v5 + 18) = 0x4028000000000000;
                [v8 setTextStyle:14];
                [v8 setMaximumContentSizeCategory:7];
                *(v5 + 19) = 7;
                v150 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
                v151 = *(v5 + 20);
                *(v5 + 20) = v150;

                v5[13] = 0;
                v5[11] = 0;
                *(v5 + 61) = 0x4010000000000000;
                *(v5 + 62) = 0;
                *(v5 + 63) = 0;
                *(v5 + 64) = 0;
                __asm { FMOV            V0.2D, #22.0 }

                *(v5 + 184) = _Q0;
                *(v5 + 53) = 0;
                *(v5 + 54) = 0;
                *(v5 + 55) = 0;
                *(v5 + 56) = 0x3FF0000000000000;
                *(v5 + 7) = 257;
                goto LABEL_16;
              default:
                goto LABEL_16;
            }

            goto LABEL_16;
          }

          v5[15] = 1;
          v5[11] = a3 == 7;
          *(v5 + 6) = 256;
          v93 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
          v94 = [v93 colorWithAlphaComponent:0.75];

          [v8 setColor:v94];
          v95 = *(v5 + 20);
          *(v5 + 20) = v94;
          v96 = v94;

          v9 = 0x1E69DC000uLL;
          [v8 setTextStyle:15];
          [v8 setMargin:{4.0, 0.0, 4.0, 8.0}];
          *v7 = 0;
          *(v5 + 34) = 0;
          *v6 = xmmword_1E4296C70;
          [v8 setNumberOfLines:2];
          [v8 setAlignment:1];
          *(v5 + 18) = 0x402A000000000000;
          *(v5 + 64) = 0x4020000000000000;
          *(v5 + 58) = 0;
          *(v5 + 59) = 0;
          *(v5 + 30) = xmmword_1E4296C80;
          *(v5 + 31) = xmmword_1E4296C30;
          __asm { FMOV            V0.2D, #22.0 }

          *(v5 + 184) = _Q0;
          *(v5 + 53) = 0;
          *(v5 + 54) = 0;
          *(v5 + 55) = 0;
          *(v5 + 56) = 0x3FF0000000000000;
          *(v5 + 57) = 0;
          *(v5 + 11) = 0x3FE0000000000000;
          v5[9] = 1;
          v98 = [MEMORY[0x1E69DC888] vui_lockupBorderColorOpal];
          v99 = *(v5 + 10);
          *(v5 + 10) = v98;
        }

        if (a3 == 16)
        {
LABEL_94:
          v213[0] = VUIMediaTagKeyLiveTextBadge;
          v213[1] = VUIMediaTagKeyTimeTextBadge;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v213 count:2];
          v212[0] = VUIMediaTagKeyLeagueShortName;
          v212[1] = VUIMediaTagKeySeparator;
          v212[2] = VUIMediaTagKeyGenre;
          v212[3] = VUIMediaTagKeyGenres;
          v212[4] = VUIMediaTagKeySeparator;
          v212[5] = VUIMediaTagKeyTeamAbbreviation;
          v212[6] = VUIMediaTagKeySeparator;
          v212[7] = VUIMediaTagKeyDuration;
          v212[8] = VUIMediaTagKeySeparator;
          v212[9] = VUIMediaTagKeySeasonCount;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:10];
          v211[0] = VUIMediaTagKeyTitle;
          v211[1] = VUIMediaTagKeySeparator;
          v211[2] = VUIMediaTagKeyShootoutsText;
          v211[3] = VUIMediaTagKeySeparator;
          v211[4] = VUIMediaTagKeyGameStartTime;
          v211[5] = VUIMediaTagKeySeparator;
          v211[6] = VUIMediaTagKeyChannel;
          v211[7] = VUIMediaTagKeySeparator;
          v211[8] = VUIMediaTagKeyIsBlackedOut;
          v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:v211 count:9];
          v210 = VUIMediaTagKeyRatingImage;
          v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v210 count:1];
          v209[0] = VUIMediaTagKeyImmersiveImage;
          v209[1] = VUIMediaTagKeyImmersiveText;
          v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:v209 count:2];
          v208 = VUIMediaTagKey3DImage;
          v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v208 count:1];
          v207 = VUIMediaTagKeyEntitlementCue;
          v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v207 count:1];
          v206[0] = v106;
          v206[1] = v12;
          v206[2] = v13;
          v206[3] = v133;
          v107 = v133;
          v206[4] = v104;
          v206[5] = v105;
          v17 = v159;
          v206[6] = v159;
          v108 = MEMORY[0x1E695DEC8];
          v109 = v206;
          goto LABEL_95;
        }

        if (a3 == 17)
        {
LABEL_71:
          v205[0] = VUIMediaTagKeyLiveTextBadge;
          v205[1] = VUIMediaTagKeyTimeTextBadge;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v205 count:2];
          v204[0] = VUIMediaTagKeyLeagueShortName;
          v204[1] = VUIMediaTagKeySeparator;
          v204[2] = VUIMediaTagKeyGenre;
          v204[3] = VUIMediaTagKeySeparator;
          v204[4] = VUIMediaTagKeyTeamAbbreviation;
          v204[5] = VUIMediaTagKeySeparator;
          v204[6] = VUIMediaTagKeyDuration;
          v204[7] = VUIMediaTagKeySeparator;
          v204[8] = VUIMediaTagKeySeasonCount;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v204 count:9];
          v203[0] = VUIMediaTagKeyChannel;
          v203[1] = VUIMediaTagKeySeparator;
          v203[2] = VUIMediaTagKeyTitle;
          v203[3] = VUIMediaTagKeySeparator;
          v203[4] = VUIMediaTagKeyShootoutsText;
          v203[5] = VUIMediaTagKeySeparator;
          v203[6] = VUIMediaTagKeyGameStartTime;
          v203[7] = VUIMediaTagKeySeparator;
          v203[8] = VUIMediaTagKeyIsBlackedOut;
          v203[9] = VUIMediaTagKeySeparator;
          v203[10] = VUIMediaTagKeyImmersiveImage;
          v203[11] = VUIMediaTagKeyImmersiveText;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:12];
          v202 = VUIMediaTagKeyRatingImage;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v202 count:1];
          v201 = VUIMediaTagKeyEntitlementCue;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v201 count:1];
          v200[0] = v25;
          v200[1] = v12;
          v200[2] = v13;
          v200[3] = v24;
          v200[4] = v23;
          v26 = MEMORY[0x1E695DEC8];
          v9 = 0x1E69DC000;
          v27 = v200;
LABEL_10:
          v28 = [v26 arrayWithObjects:v27 count:5];
          v29 = *(v5 + 15);
          *(v5 + 15) = v28;

LABEL_29:
          goto LABEL_30;
        }

LABEL_16:
        if ([VUIMediaTagsViewLayout isSportsCanonicalType:a3])
        {
          if (a3 - 6 >= 2)
          {
            if (a3 == 5)
            {
              v198[0] = VUIMediaTagKeyGenre;
              v198[1] = VUIMediaTagKeySeparator;
              v198[2] = VUIMediaTagKeyDuration;
              v198[3] = VUIMediaTagKeySeparator;
              v198[4] = VUIMediaTagKeySeasonCount;
              v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v198 count:5];
              v195[0] = VUIMediaTagKeyChannel;
              v195[1] = VUIMediaTagKeySeparator;
              v195[2] = VUIMediaTagKeyGameVenue;
              v195[3] = VUIMediaTagKeySeparator;
              v195[4] = VUIMediaTagKeyGameStartTime;
              v195[5] = VUIMediaTagKeySeparator;
              v195[6] = VUIMediaTagKeyImmersiveImage;
              v195[7] = VUIMediaTagKeyImmersiveText;
              v88 = MEMORY[0x1E695DEC8];
              v89 = v195;
              goto LABEL_80;
            }

            v12 = 0;
          }

          else
          {
            v199[0] = VUIMediaTagKeyLeagueShortName;
            v199[1] = VUIMediaTagKeySeparator;
            v199[2] = VUIMediaTagKeyGenre;
            v199[3] = VUIMediaTagKeySeparator;
            v199[4] = VUIMediaTagKeyDuration;
            v199[5] = VUIMediaTagKeySeparator;
            v199[6] = VUIMediaTagKeySeasonCount;
            v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v199 count:7];
          }

          if (a3 != 6)
          {
            if (a3 != 7)
            {
              v13 = 0;
LABEL_83:
              v194 = VUIMediaTagKeyEntitlementCue;
              v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v194 count:1];
              v193 = VUIMediaTagKeyGroupActivityImage;
              v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v193 count:1];
              v192 = VUIMediaTagKeyRatingImage;
              v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v192 count:1];
              v191 = VUIMediaTagKeyBrandLinkButton;
              v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v191 count:1];
              v190[0] = v78;
              v190[1] = v79;
              v190[2] = v12;
              v190[3] = v81;
              v190[4] = v13;
              v190[5] = v111;
              v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:6];
              v113 = *(v5 + 15);
              *(v5 + 15) = v112;

              v5[16] = 1;
LABEL_84:

              v9 = 0x1E69DC000uLL;
LABEL_85:

LABEL_86:
              objc_storeStrong(v5 + 4, v8);
              v114 = [v8 copy];
              v115 = *(v5 + 7);
              *(v5 + 7) = v114;

              v116 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5E5CD98, &unk_1F5E5CDB0, 0}];
              v117 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
              if ([v116 containsObject:v117])
              {
              }

              else
              {
                v118 = [VUIMediaTagsViewLayout isSportsCanonicalType:a3];

                if (!v118)
                {
                  v119 = objc_opt_new();
                  v120 = *(v5 + 8);
                  *(v5 + 8) = v119;

                  [*(v5 + 8) setTextStyle:17];
                  [*(v5 + 8) setFontWeight:5];
                  [*(v5 + 8) setNumberOfLines:1];
                  v121 = *(v5 + 8);
                  v122 = [*(v9 + 2184) vui_opacityColorWithType:1];
                  [v121 setColor:v122];

                  [*(v5 + 8) setPadding:{0.5, 0.0, 0.0, 0.0}];
                  v123 = *(v5 + 8);
                  LODWORD(v124) = -0.5;
                  v125 = [MEMORY[0x1E696AD98] numberWithFloat:v124];
                  [v123 setLetterSpacing:v125];

                  [*(v5 + 8) setTextTransform:2];
                  goto LABEL_91;
                }
              }

              objc_storeStrong(v5 + 8, v8);
LABEL_91:
              *(v5 + 45) = 0;
              *(v5 + 46) = 0;
              *(v5 + 47) = 0;
              *(v5 + 48) = 0x4010000000000000;
              v126 = objc_opt_new();
              v127 = *(v5 + 9);
              *(v5 + 9) = v126;

              [*(v5 + 9) setNumberOfLines:2];
              v128 = *(v5 + 9);
              v129 = [*(v5 + 4) color];
              [v128 setColor:v129];

              v130 = *(v5 + 9);
              v131 = [*(v5 + 4) darkColor];
              [v130 setDarkColor:v131];

              [*(v5 + 9) setFontWeight:6];
              [v5 updateHighMotionFontSize];
              *(v5 + 49) = 0;
              *(v5 + 50) = 0;
              *(v5 + 51) = 0;
              *(v5 + 52) = 0x4010000000000000;

              return v5;
            }

            v197[0] = VUIMediaTagKeyChannel;
            v197[1] = VUIMediaTagKeySeparator;
            v197[2] = VUIMediaTagKeyGameVenue;
            v197[3] = VUIMediaTagKeySeparator;
            v197[4] = VUIMediaTagKeyImmersiveImage;
            v197[5] = VUIMediaTagKeyImmersiveText;
            v88 = MEMORY[0x1E695DEC8];
            v89 = v197;
            v110 = 6;
LABEL_81:
            v13 = [v88 arrayWithObjects:v89 count:v110];
            goto LABEL_83;
          }

          v196[0] = VUIMediaTagKeyChannel;
          v196[1] = VUIMediaTagKeySeparator;
          v196[2] = VUIMediaTagKeyGameStartTime;
          v196[3] = VUIMediaTagKeySeparator;
          v196[4] = VUIMediaTagKeyGameVenue;
          v196[5] = VUIMediaTagKeySeparator;
          v196[6] = VUIMediaTagKeyImmersiveImage;
          v196[7] = VUIMediaTagKeyImmersiveText;
          v88 = MEMORY[0x1E695DEC8];
          v89 = v196;
LABEL_80:
          v110 = 8;
          goto LABEL_81;
        }

        if (a3 <= 19)
        {
          switch(a3)
          {
            case 0xAuLL:
              v175[0] = VUIMediaTagKeyVideoResolutionImage;
              v175[1] = VUIMediaTagKeyVideoDynamicRangeImage;
              v175[2] = VUIMediaTagKeyRatingImage;
              v175[3] = VUIMediaTagKeyDolbyAtmosImage;
              v175[4] = VUIMediaTagKeySDHLocalesImage;
              v175[5] = VUIMediaTagKeyADLocalesImage;
              v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:6];
              v174[0] = VUIMediaTagKeyImmersiveImage;
              v174[1] = VUIMediaTagKeyImmersiveText;
              v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:2];
              v173 = VUIMediaTagKey3DImage;
              v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v173 count:1];
              v172[0] = v12;
              v172[1] = v13;
              v172[2] = v23;
              v90 = MEMORY[0x1E695DEC8];
              v91 = v172;
              break;
            case 0x12uLL:
              v189[0] = VUIMediaTagKeySeasonEpisode;
              v189[1] = VUIMediaTagKeyGenre;
              v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:2];
              v188 = VUIMediaTagKeySeparator;
              v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v188 count:1];
              v187[0] = VUIMediaTagKeyRatingImage;
              v187[1] = VUIMediaTagKeyTitle;
              v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:2];
              v186[0] = v12;
              v186[1] = v13;
              v186[2] = v23;
              v90 = MEMORY[0x1E695DEC8];
              v91 = v186;
              break;
            case 0x13uLL:
              v185 = VUIMediaTagKeyGenre;
              v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v185 count:1];
              v184 = VUIMediaTagKeyRatingImage;
              v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v184 count:1];
              v183 = VUIMediaTagKeySeparator;
              v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v183 count:1];
              v182[0] = v12;
              v182[1] = v23;
              v182[2] = v13;
              v90 = MEMORY[0x1E695DEC8];
              v91 = v182;
              break;
            default:
              goto LABEL_86;
          }

          goto LABEL_100;
        }

        if (a3 <= 22)
        {
          if (a3 != 20)
          {
            if (a3 != 21)
            {
              goto LABEL_86;
            }

            v180[0] = VUIMediaTagKeyEntitlementCue;
            v180[1] = VUIMediaTagKeyDescription;
            v180[2] = VUIMediaTagKeySeparator;
            v180[3] = VUIMediaTagKeyGenre;
            v180[4] = VUIMediaTagKeySeparator;
            v180[5] = VUIMediaTagKeyRatingImage;
            v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v180 count:6];
            v181 = v12;
            v71 = MEMORY[0x1E695DEC8];
            v72 = &v181;
LABEL_36:
            v75 = [v71 arrayWithObjects:v72 count:1];
            v13 = *(v5 + 15);
            *(v5 + 15) = v75;
            goto LABEL_85;
          }

          v179 = VUIMediaTagKeySeasonEpisode;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v179 count:1];
          v178 = VUIMediaTagKeySeparator;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1];
          v177 = VUIMediaTagKeyTitle;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
          v176[0] = v12;
          v176[1] = v13;
          v176[2] = v23;
          v90 = MEMORY[0x1E695DEC8];
          v91 = v176;
LABEL_100:
          v136 = [v90 arrayWithObjects:v91 count:3];
          v137 = *(v5 + 15);
          *(v5 + 15) = v136;

LABEL_30:
          goto LABEL_85;
        }

        if (a3 == 23)
        {
          v171[0] = VUIMediaTagKeyGenre;
          v171[1] = VUIMediaTagKeySeparator;
          v171[2] = VUIMediaTagKeyDuration;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:3];
          v170 = VUIMediaTagKeyRatingImage;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:1];
          v169[0] = v12;
          v169[1] = v13;
          v33 = MEMORY[0x1E695DEC8];
          v34 = v169;
LABEL_25:
          v48 = [v33 arrayWithObjects:v34 count:2];
          v49 = *(v5 + 15);
          *(v5 + 15) = v48;

          goto LABEL_85;
        }

        if (a3 != 24)
        {
          goto LABEL_86;
        }

        v168[0] = VUIMediaTagKeyLiveTextBadge;
        v168[1] = VUIMediaTagKeyTimeTextBadge;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:2];
        v167[0] = VUIMediaTagKeyLeagueShortName;
        v167[1] = VUIMediaTagKeySeparator;
        v167[2] = VUIMediaTagKeyGenre;
        v167[3] = VUIMediaTagKeyGenres;
        v167[4] = VUIMediaTagKeySeparator;
        v167[5] = VUIMediaTagKeyTeamAbbreviation;
        v167[6] = VUIMediaTagKeySeparator;
        v167[7] = VUIMediaTagKeyDuration;
        v167[8] = VUIMediaTagKeySeparator;
        v167[9] = VUIMediaTagKeySeasonCount;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:10];
        v166[0] = VUIMediaTagKeyChannel;
        v166[1] = VUIMediaTagKeySeparator;
        v166[2] = VUIMediaTagKeyTitle;
        v166[3] = VUIMediaTagKeySeparator;
        v166[4] = VUIMediaTagKeyShootoutsText;
        v166[5] = VUIMediaTagKeySeparator;
        v166[6] = VUIMediaTagKeyGameStartTime;
        v166[7] = VUIMediaTagKeySeparator;
        v166[8] = VUIMediaTagKeyIsBlackedOut;
        v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:9];
        v165 = VUIMediaTagKeyRatingImage;
        v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v165 count:1];
        v164[0] = VUIMediaTagKeyImmersiveImage;
        v164[1] = VUIMediaTagKeyImmersiveText;
        v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:2];
        v163 = VUIMediaTagKey3DImage;
        v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v163 count:1];
        v162 = VUIMediaTagKeyEntitlementCue;
        v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
        v161[0] = v106;
        v161[1] = v12;
        v161[2] = v13;
        v161[3] = v103;
        v107 = v103;
        v161[4] = v104;
        v161[5] = v105;
        v17 = v158;
        v161[6] = v158;
        v108 = MEMORY[0x1E695DEC8];
        v109 = v161;
LABEL_95:
        v134 = [v108 arrayWithObjects:v109 count:7];
        v135 = *(v5 + 15);
        *(v5 + 15) = v134;

        v9 = 0x1E69DC000;
LABEL_7:

        goto LABEL_85;
    }
  }

  return v5;
}

- (void)updateHighMotionFontSize
{
  [MEMORY[0x1E69DF6D0] scaleContentSizeValue:0 forTraitCollection:8.0];
  highMotionTextLayout = self->_highMotionTextLayout;

  [(VUITextLayout *)highMotionTextLayout setFontSize:?];
}

- (void)updateLayoutForPhoneSizeClass:(BOOL)a3
{
  v3 = a3;
  if ([(VUIMediaTagsViewLayout *)self type]== 16 || [(VUIMediaTagsViewLayout *)self type]== 17 || [(VUIMediaTagsViewLayout *)self isSportsCanonicalType])
  {
    if ([(VUIMediaTagsViewLayout *)self type]== 7)
    {
      self->_entitlementCueMargin.top = 0.0;
      self->_entitlementCueMargin.left = 0.0;
      self->_entitlementCueMargin.bottom = 0.0;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = [(VUIMediaTagsViewLayout *)self type];
      self->_entitlementCueMargin.left = 0.0;
      self->_entitlementCueMargin.bottom = 0.0;
      self->_entitlementCueMargin.top = 0.0;
      if (!v3)
      {
        self->_entitlementCueMargin.right = 3.0;
        if (v5 != 6)
        {
          self->_badgeMargin.top = 3.0;
          self->_badgeMargin.left = 0.0;
          self->_badgeMargin.bottom = 0.0;
          self->_badgeMargin.right = 0.0;
          goto LABEL_20;
        }

LABEL_11:
        self->_badgeMargin.top = 3.0;
        self->_badgeMargin.left = 4.0;
        self->_badgeMargin.bottom = 0.0;
        self->_badgeMargin.right = 0.0;
        self->_entitlementCueMargin.top = 0.0;
        self->_entitlementCueMargin.left = 0.0;
        self->_entitlementCueMargin.bottom = 0.0;
        self->_entitlementCueMargin.right = 8.0;
        [(VUIMediaTagsViewLayout *)self setMargin:8.0, 0.0, 0.0, 0.0];
LABEL_20:
        self->_badgeMaxHeight = 14.0;
LABEL_21:
        textLayout = self->_textLayout;
LABEL_22:
        v9 = 12;
        goto LABEL_23;
      }

      self->_entitlementCueMargin.right = 1.0;
      if (v5 != 6)
      {
        self->_badgeMargin.top = 1.0;
        self->_badgeMargin.left = 0.0;
        self->_badgeMargin.bottom = 0.0;
        self->_badgeMargin.right = 0.0;
        goto LABEL_16;
      }
    }

    self->_badgeMargin.top = 1.0;
    self->_badgeMargin.left = 4.0;
    self->_badgeMargin.bottom = 0.0;
    self->_badgeMargin.right = 0.0;
    self->_entitlementCueMargin.top = 0.0;
    self->_entitlementCueMargin.left = 0.0;
    self->_entitlementCueMargin.bottom = 0.0;
    self->_entitlementCueMargin.right = 6.0;
    [(VUIMediaTagsViewLayout *)self setMargin:10.0, 0.0, 0.0, 0.0];
LABEL_16:
    self->_badgeMaxHeight = 12.0;
    goto LABEL_17;
  }

  if ([(VUIMediaTagsViewLayout *)self type]!= 4)
  {
    if ([(VUIMediaTagsViewLayout *)self type]!= 3)
    {
      if ([(VUIMediaTagsViewLayout *)self type]!= 24)
      {
        return;
      }

      textLayout = self->_textLayout;
      if (!v3)
      {
        goto LABEL_22;
      }

LABEL_18:
      v9 = 14;
LABEL_23:

      [(VUITextLayout *)textLayout setTextStyle:v9];
      return;
    }

    if (!v3)
    {
      [(VUIMediaTagsViewLayout *)self setMargin:8.0, 0.0, 0.0, 0.0];
      goto LABEL_21;
    }

    [(VUIMediaTagsViewLayout *)self setMargin:10.0, 0.0, 0.0, 0.0];
LABEL_17:
    textLayout = self->_textLayout;
    goto LABEL_18;
  }

  v6 = self->_textLayout;
  if (v3)
  {
    [(VUITextLayout *)v6 setTextStyle:14];
    v7 = 12.0;
  }

  else
  {
    [(VUITextLayout *)v6 setTextStyle:12];
    v7 = 14.0;
  }

  [(VUIMediaTagsViewLayout *)self setMargin:v7, 0.0, 0.0, 0.0];
}

- (CGSize)entitlementCueImageSize
{
  width = self->_entitlementCueImageSize.width;
  height = self->_entitlementCueImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)margin
{
  top = self->_margin.top;
  left = self->_margin.left;
  bottom = self->_margin.bottom;
  right = self->_margin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)groupMargin
{
  top = self->_groupMargin.top;
  left = self->_groupMargin.left;
  bottom = self->_groupMargin.bottom;
  right = self->_groupMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)commonSenseMargin
{
  top = self->_commonSenseMargin.top;
  left = self->_commonSenseMargin.left;
  bottom = self->_commonSenseMargin.bottom;
  right = self->_commonSenseMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)tomatoMeterMargin
{
  top = self->_tomatoMeterMargin.top;
  left = self->_tomatoMeterMargin.left;
  bottom = self->_tomatoMeterMargin.bottom;
  right = self->_tomatoMeterMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)immersiveMargin
{
  top = self->_immersiveMargin.top;
  left = self->_immersiveMargin.left;
  bottom = self->_immersiveMargin.bottom;
  right = self->_immersiveMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)highMotionMargin
{
  top = self->_highMotionMargin.top;
  left = self->_highMotionMargin.left;
  bottom = self->_highMotionMargin.bottom;
  right = self->_highMotionMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)entitlementCueMargin
{
  top = self->_entitlementCueMargin.top;
  left = self->_entitlementCueMargin.left;
  bottom = self->_entitlementCueMargin.bottom;
  right = self->_entitlementCueMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)separatorMargin
{
  top = self->_separatorMargin.top;
  left = self->_separatorMargin.left;
  bottom = self->_separatorMargin.bottom;
  right = self->_separatorMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)badgeMargin
{
  top = self->_badgeMargin.top;
  left = self->_badgeMargin.left;
  bottom = self->_badgeMargin.bottom;
  right = self->_badgeMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)textBadgeMargin
{
  top = self->_textBadgeMargin.top;
  left = self->_textBadgeMargin.left;
  bottom = self->_textBadgeMargin.bottom;
  right = self->_textBadgeMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end