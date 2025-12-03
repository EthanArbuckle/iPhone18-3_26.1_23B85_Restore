@interface PXGDecorationDefaultBadgeDrawingHelper
- (CGImage)_sensitiveOverlayImageWithSizeClass:(int64_t)class;
- (NSNumberFormatter)assetIndexFormatter;
- (PXGDecorationBadgeInfo)decorationSpriteInfoForDecoratedSpriteIndex:(SEL)index decorationType:(unsigned int)type decoratingLayout:(int64_t)layout assetDecorationInfo:(id)info overallSelectionOrder:(PXGAssetDecorationInfo *)order isItemSelected:(int64_t)selected isItemHighlighted:(BOOL)highlighted isItemDragged:(BOOL)self0;
- (PXGDecorationDefaultBadgeDrawingHelper)init;
- (id)cacheKeyForDecorationInfo:(PXGDecorationBadgeInfo *)info solidColorOverlay:(id)overlay debugDecoration:(id)decoration targetSize:(CGSize)size cornerRadius:(id)radius screenScale:(double)scale viewEnvironment:(id)environment userInterfaceDirection:(unint64_t)self0;
- (void)drawWithDecorationInfo:(PXGDecorationBadgeInfo *)info solidColorOverlay:(id)overlay debugDecoration:(id)decoration cornerRadius:(id)radius context:(CGContext *)context viewport:(CGRect)viewport screenScale:(double)scale viewEnvironment:(id)self0 userInterfaceDirection:(unint64_t)self1;
@end

@implementation PXGDecorationDefaultBadgeDrawingHelper

- (PXGDecorationDefaultBadgeDrawingHelper)init
{
  v10.receiver = self;
  v10.super_class = PXGDecorationDefaultBadgeDrawingHelper;
  v2 = [(PXGDecorationDefaultBadgeDrawingHelper *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA958]);
    videoDurationFormatter = v2->_videoDurationFormatter;
    v2->_videoDurationFormatter = v3;

    [(NSDateComponentsFormatter *)v2->_videoDurationFormatter setZeroFormattingBehavior:0];
    [(NSDateComponentsFormatter *)v2->_videoDurationFormatter setUnitsStyle:0];
    v5 = objc_alloc_init(MEMORY[0x277CCA8E8]);
    byteCountFormatter = v2->_byteCountFormatter;
    v2->_byteCountFormatter = v5;

    [(NSByteCountFormatter *)v2->_byteCountFormatter setCountStyle:0];
    v7 = objc_alloc_init(MEMORY[0x277D3CDE8]);
    selectionCountFormatter = v2->_selectionCountFormatter;
    v2->_selectionCountFormatter = v7;

    [(PXSelectionCountNumberFormatter *)v2->_selectionCountFormatter setSelectionNumberLimit:9999];
  }

  return v2;
}

- (NSNumberFormatter)assetIndexFormatter
{
  assetIndexFormatter = self->_assetIndexFormatter;
  if (!assetIndexFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v5 = self->_assetIndexFormatter;
    self->_assetIndexFormatter = v4;

    [(NSNumberFormatter *)self->_assetIndexFormatter setNumberStyle:1];
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [(NSNumberFormatter *)self->_assetIndexFormatter setLocale:autoupdatingCurrentLocale];

    assetIndexFormatter = self->_assetIndexFormatter;
  }

  return assetIndexFormatter;
}

- (CGImage)_sensitiveOverlayImageWithSizeClass:(int64_t)class
{
  if (class == 1)
  {
    sensitiveWarningBadgeImageMini = [MEMORY[0x277D3CD18] sensitiveWarningBadgeImageMini];
  }

  else
  {
    if (class)
    {
      return self;
    }

    sensitiveWarningBadgeImageMini = [MEMORY[0x277D3CD18] sensitiveWarningBadgeImage];
  }

  v4 = sensitiveWarningBadgeImageMini;
  CGImage = PXImageGetCGImage();
  v6 = CGImageRetain(CGImage);

  return v6;
}

- (void)drawWithDecorationInfo:(PXGDecorationBadgeInfo *)info solidColorOverlay:(id)overlay debugDecoration:(id)decoration cornerRadius:(id)radius context:(CGContext *)context viewport:(CGRect)viewport screenScale:(double)scale viewEnvironment:(id)self0 userInterfaceDirection:(unint64_t)self1
{
  v15 = *&radius.var0.var1[2];
  v16 = *&radius.var0.var0.var0;
  v238 = v13;
  v19 = v12;
  v232 = v11;
  v21 = *&viewport.size.width;
  v247[1] = *MEMORY[0x277D85DE8];
  overlayCopy = overlay;
  decorationCopy = decoration;
  v26 = v15;
  var1 = info->var1;
  if (_PXGDecorationDefaultPadding_onceToken != -1)
  {
    dispatch_once(&_PXGDecorationDefaultPadding_onceToken, &__block_literal_global_3562);
  }

  contextCopy = context;
  if (var1)
  {
    if (var1 != 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v210 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGSize _PXGDecorationDefaultPadding(PXGDecorationSizeClass)"];
      [currentHandler handleFailureInFunction:v210 file:@"PXGDecorationDefaultBadgeDrawingHelper.m" lineNumber:66 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v28 = &_PXGDecorationDefaultPadding_miniPadding;
  }

  else
  {
    v28 = &_PXGDecorationDefaultPadding_regularPadding;
  }

  v234 = *(MEMORY[0x277CBF3A8] + 8);
  v235 = *MEMORY[0x277CBF3A8];
  v220 = *(MEMORY[0x277CBF3A0] + 8);
  v221 = *MEMORY[0x277CBF3A0];
  v218 = *(MEMORY[0x277CBF3A0] + 24);
  v219 = *(MEMORY[0x277CBF3A0] + 16);
  v29 = *v28;
  videoDurationFormatter = [(PXGDecorationDefaultBadgeDrawingHelper *)self videoDurationFormatter];
  byteCountFormatter = [(PXGDecorationDefaultBadgeDrawingHelper *)self byteCountFormatter];
  selectionCountFormatter = [(PXGDecorationDefaultBadgeDrawingHelper *)self selectionCountFormatter];
  v243[0] = MEMORY[0x277D85DD0];
  v243[1] = 3221225472;
  v243[2] = __180__PXGDecorationDefaultBadgeDrawingHelper_drawWithDecorationInfo_solidColorOverlay_debugDecoration_cornerRadius_context_viewport_screenScale_viewEnvironment_userInterfaceDirection___block_invoke;
  v243[3] = &__block_descriptor_40_e58_v64__0_CGRect__CGPoint_dd__CGSize_dd__8d40d48__CGColor__56l;
  v243[4] = v16;
  v227 = decorationCopy;
  v228 = MEMORY[0x21CEE40A0](v243);
  v33 = 0;
  var0 = info->var0;
  rect = v19;
  scaleCopy = scale;
  v224 = overlayCopy;
  v225 = v26;
  v223 = videoDurationFormatter;
  switch(info->var0)
  {
    case 1:
      v33 = *MEMORY[0x277D3CF48];
      goto LABEL_56;
    case 2:
LABEL_56:
      v97 = info->var1;
      if (v97 == 1)
      {
        v217 = 0.0;
        favoriteBadgeImageMini = [MEMORY[0x277D3CD18] favoriteBadgeImageMini];
      }

      else
      {
        v217 = 0.0;
        if (v97)
        {
          goto LABEL_65;
        }

        favoriteBadgeImageMini = [MEMORY[0x277D3CD18] favoriteBadgeImage];
      }

      goto LABEL_122;
    case 3:
      v217 = 0.0;
      v33 = *MEMORY[0x277D3CF48];
      v91 = info->var1;
      if (v91 == 1)
      {
        favoriteBadgeImageMini = [MEMORY[0x277D3CD18] contentSyndicationBadgeImageMini];
      }

      else
      {
        if (v91)
        {
LABEL_65:
          v54 = 0;
          v236 = 0;
          whiteColor = 0;
          tintColor = 0;
          v37 = 0;
          goto LABEL_123;
        }

        favoriteBadgeImageMini = [MEMORY[0x277D3CD18] contentSyndicationBadgeImage];
      }

LABEL_122:
      v147 = favoriteBadgeImageMini;
      v37 = CGImageRetain([favoriteBadgeImageMini CGImage]);

      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
LABEL_123:
      v38 = 0;
      v68 = 6;
      goto LABEL_144;
    case 4:
      v217 = 0.0;
      v33 = *MEMORY[0x277D3CF70];
      v93 = info->var1;
      if (v93 == 1)
      {
        mEMORY[0x277D3CD18] = [MEMORY[0x277D3CD18] sharedLibraryBadgeImageMini];
        goto LABEL_125;
      }

      if (!v93)
      {
        mEMORY[0x277D3CD18] = [MEMORY[0x277D3CD18] sharedLibraryBadgeImage];
LABEL_125:
        v148 = mEMORY[0x277D3CD18];
        v37 = CGImageRetain([mEMORY[0x277D3CD18] CGImage]);

        v54 = 0;
        v236 = 0;
        whiteColor = 0;
        tintColor = 0;
        goto LABEL_140;
      }

      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v37 = 0;
LABEL_140:
      v38 = 0;
      v68 = 9;
      goto LABEL_144;
    case 5:
      if (info->var5)
      {
        v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", info->var5];
      }

      else
      {
        v70 = @"STACK";
      }

      v50 = v232;
      v236 = PXAttributedStringForBadgeText();
      [v236 size];
      if (v118 >= v119)
      {
        v120 = v29;
      }

      else
      {
        v120 = v29 + (v119 - v118) * 0.5;
      }

      PXSizeScale();
      if (v122 > v121 + *&environment * 3.0)
      {
        v120 = v120 + 3.0;
      }

      PXSizeScale();
      PXSizeAdd();
      v68 = 9;
      v222 = v120;
      PXSizeScale();
      v54 = 2;
      PXEdgesFlippedVertically();
      v66 = v238;
      scale = scaleCopy;
      PXRectWithSizeAlignedToRectEdgesWithPadding();
      PXRectGetCenter();
      PXRectWithCenterAndSize();
      v220 = v124;
      v221 = v123;
      v218 = v126;
      v219 = v125;
      v217 = 0.0;
      tintColor = [MEMORY[0x277D75348] colorWithWhite:? alpha:?];

      whiteColor = 0;
      v37 = 0;
      v33 = 0;
      v38 = 0;
      v69 = v29;
      goto LABEL_147;
    case 6:
      v33 = *MEMORY[0x277D3CF58];
      goto LABEL_62;
    case 7:
LABEL_62:
      v103 = info->var1;
      if (v103 == 1)
      {
        v217 = 0.0;
        panoramaBadgeImageMini = [MEMORY[0x277D3CD18] panoramaBadgeImageMini];
        goto LABEL_91;
      }

      v217 = 0.0;
      if (!v103)
      {
        panoramaBadgeImageMini = [MEMORY[0x277D3CD18] panoramaBadgeImage];
LABEL_91:
        v117 = panoramaBadgeImageMini;
        v37 = CGImageRetain([panoramaBadgeImageMini CGImage]);

        v54 = 0;
        v236 = 0;
        whiteColor = 0;
        tintColor = 0;
        goto LABEL_143;
      }

      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v37 = 0;
      goto LABEL_143;
    case 8:
      v95 = info->var1;
      if (v95 == 1)
      {
        v217 = 0.0;
        cloudBadgeImageMini = [MEMORY[0x277D3CD18] cloudBadgeImageMini];
        goto LABEL_127;
      }

      v217 = 0.0;
      if (!v95)
      {
        cloudBadgeImageMini = [MEMORY[0x277D3CD18] cloudBadgeImage];
LABEL_127:
        v149 = cloudBadgeImageMini;
        v37 = CGImageRetain([cloudBadgeImageMini CGImage]);

        v54 = 0;
        v236 = 0;
        whiteColor = 0;
        tintColor = 0;
        goto LABEL_142;
      }

      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v37 = 0;
LABEL_142:
      v33 = 0;
LABEL_143:
      v38 = 0;
      v68 = 12;
LABEL_144:
      v69 = v234;
      v222 = v235;
LABEL_145:
      v66 = v238;
      goto LABEL_146;
    case 9:
    case 0xALL:
      if (var0 == 9)
      {
        var3 = info->var3;
        if (var3 <= 0x7FFFFFFFFFFFFFFELL)
        {
          v47 = [MEMORY[0x277CCABB0] numberWithInteger:var3 + 1];
          v48 = [selectionCountFormatter stringFromNumber:v47];

          v49 = v48;
          if (_PXSelectCountAttributedString_onceToken != -1)
          {
            dispatch_once(&_PXSelectCountAttributedString_onceToken, &__block_literal_global_98);
          }

          v50 = v232;
          if (contextCopy)
          {
            if (contextCopy != 1)
            {
LABEL_112:
              v135 = objc_alloc(MEMORY[0x277CCA898]);
              v136 = [v135 initWithString:v49 attributes:_PXSelectCountAttributedString_attributes];

              v236 = v136;
              [v136 size];
              v69 = 8.0;
              if (v137 >= v138)
              {
                v139 = 8.0;
              }

              else
              {
                v139 = (v138 - v137) * 0.5 + 8.0;
              }

              PXSizeScale();
              if (v141 > v140 + *&environment * 3.0)
              {
                if (var3 >= [selectionCountFormatter selectionNumberLimit])
                {
                  v142 = 4.0;
                }

                else
                {
                  v142 = 6.0;
                }

                v139 = v139 + v142 * 0.5;
              }

              decorationCopy = v227;
              PXSizeScale();
              PXSizeAdd();
              v68 = 12;
              v222 = v139;
              PXSizeScale();
              PXEdgesFlippedVertically();
              PXRectWithSizeAlignedToRectEdgesWithPadding();
              PXRectGetCenter();
              v66 = v238;
              PXRectWithCenterAndSize();
              v220 = v144;
              v221 = v143;
              v218 = v146;
              v219 = v145;
              tintColor = [v225 tintColor];
              whiteColor = [MEMORY[0x277D75348] whiteColor];

              v37 = 0;
              v33 = 0;
              v38 = 0;
              v217 = 1.5;
              v54 = 1;
              goto LABEL_147;
            }

            v51 = 0;
          }

          else
          {
            v51 = 2;
          }

          [_PXSelectCountAttributedString_paragraphStyle setAlignment:v51];
          goto LABEL_112;
        }
      }

      v59 = info->var1;
      if (v59 == 1)
      {
        v217 = 0.0;
        mediumSymbolConfiguration = [MEMORY[0x277D3CD18] mediumSymbolConfiguration];
        goto LABEL_109;
      }

      v217 = 0.0;
      if (!v59)
      {
        mediumSymbolConfiguration = [MEMORY[0x277D3CD18] largeSymbolConfiguration];
LABEL_109:
        v134 = mediumSymbolConfiguration;
        goto LABEL_129;
      }

      v134 = 0;
LABEL_129:
      v66 = v238;
      v50 = v232;
      v150 = UIAccessibilityDarkerSystemColorsEnabled();
      v151 = @"circle";
      if (var0 == 9)
      {
        v151 = @"checkmark.circle";
      }

      v152 = v151;
      if (var0 == 9)
      {
        v153 = [MEMORY[0x277D75348] colorWithCGColor:{objc_msgSend(v26, "checkmarkColor")}];
      }

      else
      {
        v153 = 0;
      }

      tintColor2 = [v26 tintColor];
      v155 = tintColor2;
      if (v150)
      {
        blackColor = [MEMORY[0x277D75348] blackColor];
        [v155 px_contrastRatioToColor:blackColor];
        v158 = v157;
        tintColor3 = [v26 tintColor];
        whiteColor2 = [MEMORY[0x277D75348] whiteColor];
        [tintColor3 px_contrastRatioToColor:whiteColor2];
        if (v158 > v161)
        {
          [MEMORY[0x277D75348] blackColor];
        }

        else
        {
          [MEMORY[0x277D75348] whiteColor];
        }
        v205 = ;
      }

      else
      {
        [tintColor2 px_luminance];
        if (v162 > 0.85)
        {
          [MEMORY[0x277D75348] blackColor];
        }

        else
        {
          [MEMORY[0x277D75348] whiteColor];
        }
        v205 = ;
      }

      v206 = [MEMORY[0x277D755B8] systemImageNamed:v152];
      v207 = [v206 px_imageWithSymbolConfiguration:v134];

      v208 = [v207 px_tintedCircularImageWithColor:v205 backgroundColor:v153];
      v37 = CGImageRetain([v208 CGImage]);

      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v33 = 0;
      v38 = 0;
      v68 = 12;
      v69 = v234;
      v222 = v235;
      decorationCopy = v227;
      goto LABEL_147;
    case 0xBLL:
    case 0x1BLL:
    case 0x1CLL:
    case 0x1DLL:
      v33 = *MEMORY[0x277D3CF58];
      v35 = info->var0;
      if (info->var0 <= 27)
      {
        if (v35 == 11)
        {
          v36 = PXLocalizedVideoDuration();
          goto LABEL_81;
        }

        if (v35 == 27)
        {
          v36 = [byteCountFormatter stringFromByteCount:info->var4];
LABEL_81:
          v44 = v36;
          v37 = 0;
          goto LABEL_82;
        }

LABEL_202:
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v212 = currentHandler2;
        v213 = @"Code which should be unreachable has been reached";
        v214 = a2;
        selfCopy2 = self;
        v216 = 734;
LABEL_203:
        [currentHandler2 handleFailureInMethod:v214 object:selfCopy2 file:@"PXGDecorationDefaultBadgeDrawingHelper.m" lineNumber:v216 description:v213];

        abort();
      }

      if (v35 != 29)
      {
        if (v35 == 28)
        {
          v40 = MEMORY[0x277CCACA8];
          v41 = PXLocalizedVideoDuration();
          [byteCountFormatter stringFromByteCount:info->var4];
          v43 = v42 = decorationCopy;
          v44 = [v40 stringWithFormat:@"%@\n%@", v41, v43];

          decorationCopy = v42;
          v45 = *MEMORY[0x277D3CF60];

          v37 = 0;
          v33 = v45;
LABEL_82:
          v66 = v238;
          goto LABEL_83;
        }

        goto LABEL_202;
      }

      v44 = [byteCountFormatter stringFromByteCount:info->var4];
      v115 = info->var1;
      if (v115 == 1)
      {
        panoramaBadgeImageMini2 = [MEMORY[0x277D3CD18] panoramaBadgeImageMini];
        v37 = CGImageRetain([panoramaBadgeImageMini2 CGImage]);

        goto LABEL_82;
      }

      v66 = v238;
      if (v115)
      {
        v37 = 0;
      }

      else
      {
        panoramaBadgeImage = [MEMORY[0x277D3CD18] panoramaBadgeImage];
        v37 = CGImageRetain([panoramaBadgeImage CGImage]);
      }

LABEL_83:
      v112 = PXAttributedStringForBadgeText();
      v217 = 0.0;
      PXFloatFloorToPixel();
      v114 = v113;
      if (v37)
      {
        [v112 size];
        PXSizeAdd();
      }

      v236 = v112;
      v222 = v29 + v114;

      whiteColor = 0;
      tintColor = 0;
      v38 = 0;
      v68 = 12;
      v54 = 1;
      v69 = v29;
LABEL_146:
      v50 = v232;
LABEL_147:
      if (decorationCopy)
      {
        v163 = [decorationCopy objectForKeyedSubscript:PXGDebugDecorationBackgroundColorKey];

        v164 = [decorationCopy objectForKeyedSubscript:PXGDebugDecorationAttributedTextKey];

        v165 = [decorationCopy objectForKeyedSubscript:PXGDebugDecorationBottomEdgeColorKey];
        v166 = decorationCopy;
        decorationCopy = v165;
        if (v164)
        {
          v54 = 2;
          v236 = v164;
        }

        else
        {
          v167 = [v166 objectForKeyedSubscript:PXGDebugDecorationTextKey];
          if (v167)
          {
            v168 = objc_alloc(MEMORY[0x277CCA898]);
            v246 = *MEMORY[0x277D740C0];
            orangeColor = [MEMORY[0x277D75348] orangeColor];
            v247[0] = orangeColor;
            v170 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v247 forKeys:&v246 count:1];
            v236 = [v168 initWithString:v167 attributes:v170];
          }

          else
          {
            v236 = 0;
          }

          v54 = 2;
        }
      }

      else
      {
        v163 = v38;
      }

      v171 = whiteColor;
      if (contextCopy == 1)
      {
        v68 = PXEdgesFlippedHorizontally();
        v172 = *MEMORY[0x277D3CF58];
        v173 = [(CGImage *)v33 isEqualToString:*MEMORY[0x277D3CF58]];
        v174 = *MEMORY[0x277D3CF48];
        if (v173 & 1) != 0 || (v175 = [(CGImage *)v33 isEqualToString:v174], v174 = v172, (v175) || (v176 = *MEMORY[0x277D3CF70], v177 = [(CGImage *)v33 isEqualToString:*MEMORY[0x277D3CF70]], v174 = *MEMORY[0x277D3CF68], (v177) || (v178 = [(CGImage *)v33 isEqualToString:v174], v174 = v176, (v178) || (v179 = *MEMORY[0x277D3CF60], v180 = [(CGImage *)v33 isEqualToString:*MEMORY[0x277D3CF60]], v174 = *MEMORY[0x277D3CF50], (v180) || (v181 = [(CGImage *)v33 isEqualToString:v174], v174 = v179, v181))
        {
          v182 = v174;

          v33 = v182;
        }
      }

      if (v163)
      {
        v183 = PXGCreateSRGBColorFromDisplayP3Color([v163 CGColor]);
        CGContextSetFillColorWithColor(v16, v183);
        CGColorRelease(v183);
        v254.origin.x = scale;
        v254.origin.y = v50;
        v254.size.width = v19;
        v254.size.height = v66;
        CGContextFillRect(v16, v254);
      }

      if (decorationCopy)
      {
        v184 = PXGCreateSRGBColorFromDisplayP3Color([decorationCopy CGColor]);
        CGContextSetFillColorWithColor(v16, v184);
        CGColorRelease(v184);
        v255.origin.x = scale;
        v255.origin.y = v50;
        v255.size.width = v19;
        v255.size.height = v66;
        v256 = CGRectInset(v255, *&environment * 3.0, *&environment * 3.0);
        CGRectGetWidth(v256);
        scale = scaleCopy;
        v66 = v238;
        PXRectWithSizeAlignedToRectEdges();
        CGContextFillRect(v16, v257);
      }

      if (v33)
      {
        v185 = PXPhotosUIFoundationBundle();
        v186 = PXGCGImageForImageNamedInBundle(v33, v185, 0, 0, 0, 0);

        if (!v186)
        {
          v187 = PXAssertGetLog();
          if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v245 = v33;
            _os_log_error_impl(&dword_21AD38000, v187, OS_LOG_TYPE_ERROR, "missing background decoration image %@", buf, 0xCu);
          }
        }

        CGImageGetWidth(v186);
        CGImageGetHeight(v186);
        PXEdgesFlippedVertically();
        scale = scaleCopy;
        PXRectWithSizeAlignedToRectEdgesWithPadding();
        v189 = v188;
        v191 = v190;
        v193 = v192;
        v195 = v194;
        CGContextSaveGState(v16);
        CGContextSetAlpha(v16, 0.400000006);
        v258.origin.x = v189;
        v258.origin.y = v191;
        v50 = v232;
        v258.size.width = v193;
        v19 = rect;
        v258.size.height = v195;
        v66 = v238;
        CGContextDrawImage(v16, v258, v186);
        CGContextRestoreGState(v16);
        v171 = whiteColor;
      }

      if (v37)
      {
        CGImageGetWidth(v37);
        PXVisionScaledFloat();
        CGImageGetHeight(v37);
        PXVisionScaledFloat();
        PXSizeScale();
        PXEdgesFlippedVertically();
        scale = scaleCopy;
        v19 = rect;
        PXRectWithSizeAlignedToRectEdgesWithPadding();
        CGContextDrawImage(v16, v259, v37);
        CGImageRelease(v37);
      }

      if (tintColor)
      {
        CGContextSaveGState(v16);
        v196 = PXGCreateSRGBColorFromDisplayP3Color([tintColor CGColor]);
        CGContextSetFillColorWithColor(v16, v196);
        CGColorRelease(v196);
        v197 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v221 cornerRadius:{v220, v219, v218, fmin(v219, v218) * 0.5}];
        cGPath = [v197 CGPath];

        CGPathRetain(cGPath);
        CGContextAddPath(v16, cGPath);
        CGContextFillPath(v16);
        if (v171)
        {
          v199 = PXGCreateSRGBColorFromDisplayP3Color([v171 CGColor]);
          CGContextSetStrokeColorWithColor(v16, v199);
          CGColorRelease(v199);
          CGContextSetLineWidth(v16, v217 * *&environment);
          CGContextAddPath(v16, cGPath);
          CGContextStrokePath(v16);
        }

        CGPathRelease(cGPath);
        CGContextRestoreGState(v16);
      }

      if (v236)
      {
        v200 = *(MEMORY[0x277D3CF90] + 24);
        if (v54 == 2)
        {
          v201 = v69;
        }

        else
        {
          v201 = *MEMORY[0x277D3CF90];
        }

        if (v54 == 1)
        {
          v201 = *MEMORY[0x277D3CF90];
          v202 = v69;
        }

        else
        {
          v202 = *(MEMORY[0x277D3CF90] + 16);
        }

        if ((v68 & 2) != 0)
        {
          v203 = v222;
        }

        else
        {
          v203 = *(MEMORY[0x277D3CF90] + 8);
        }

        if ((v68 & 8) != 0)
        {
          v200 = v222;
        }

        PXGDrawAttributedString(v236, 1, 0, v54, v16, v235, v234, v201, v203, v202, v200, v31, v32, scale, v50, v19, v66, *&environment);
      }

      return;
    case 0xCLL:
      v56 = info->var1;
      if (v56 == 1)
      {
        v217 = 0.0;
        v57 = decorationCopy;
        mediumSymbolConfiguration2 = [MEMORY[0x277D3CD18] mediumSymbolConfiguration];
      }

      else
      {
        v217 = 0.0;
        v57 = decorationCopy;
        if (v56)
        {
          v128 = 0;
LABEL_106:
          v129 = [MEMORY[0x277D75348] colorWithRed:0.56 green:0.77 blue:1.0 alpha:1.0];
          v130 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle"];
          v131 = [v130 px_imageWithSymbolConfiguration:v128];

          whiteColor3 = [MEMORY[0x277D75348] whiteColor];
          v133 = [v131 px_tintedCircularImageWithColor:whiteColor3 backgroundColor:v129];
          v37 = CGImageRetain([v133 CGImage]);

          v54 = 0;
          v236 = 0;
          whiteColor = 0;
          tintColor = 0;
          v33 = 0;
          v38 = 0;
          v68 = 12;
          v69 = v234;
          v222 = v235;
          decorationCopy = v57;
LABEL_107:
          v66 = v238;
          v50 = v232;
          goto LABEL_147;
        }

        mediumSymbolConfiguration2 = [MEMORY[0x277D3CD18] largeSymbolConfiguration];
      }

      v128 = mediumSymbolConfiguration2;
      goto LABEL_106;
    case 0xDLL:
      v217 = 0.0;
      v33 = *MEMORY[0x277D3CF58];
      ocrAssetBadgeImage = [MEMORY[0x277D3CD18] ocrAssetBadgeImage];
      CGImage = PXImageGetCGImage();
      v37 = CGImageRetain(CGImage);

      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v38 = 0;
      v68 = 12;
      goto LABEL_78;
    case 0xELL:
      v217 = 0.0;
      systemOrangeColor = [MEMORY[0x277D75348] colorWithWhite:? alpha:?];
      goto LABEL_67;
    case 0xFLL:
      goto LABEL_36;
    case 0x10:
      goto LABEL_32;
    case 0x11:
      v217 = 0.0;
      backgroundColor = [v26 backgroundColor];
      v101 = backgroundColor;
      v102 = 0.25;
      goto LABEL_69;
    case 0x12:
      v98 = MEMORY[0x277D75348];
      v99 = +[PXTungstenSettings sharedInstance];
      [v99 keyboardUnselectedDimmingFactor];
      v217 = 0.0;
      v38 = [v98 colorWithWhite:? alpha:?];

      goto LABEL_70;
    case 0x13:
      v217 = 0.0;
      backgroundColor = [v26 backgroundColor];
      v101 = backgroundColor;
      v102 = 0.400000006;
LABEL_69:
      v38 = [backgroundColor colorWithAlphaComponent:v102];

      goto LABEL_70;
    case 0x14:
      v217 = 0.0;
      systemOrangeColor = overlayCopy;
      goto LABEL_67;
    case 0x15:
      v217 = 0.0;
      v37 = [(PXGDecorationDefaultBadgeDrawingHelper *)self _sensitiveOverlayImageWithSizeClass:info->var1];
      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v33 = 0;
      v68 = 0;
      v38 = 0;
      v69 = v234;
      v222 = v235;
      goto LABEL_145;
    case 0x16:
      v33 = [(PXGDecorationDefaultBadgeDrawingHelper *)self _sensitiveOverlayImageWithSizeClass:info->var1];
LABEL_36:
      v217 = 0.0;
      v242[0] = MEMORY[0x277D85DD0];
      v242[1] = 3221225472;
      v242[2] = __180__PXGDecorationDefaultBadgeDrawingHelper_drawWithDecorationInfo_solidColorOverlay_debugDecoration_cornerRadius_context_viewport_screenScale_viewEnvironment_userInterfaceDirection___block_invoke_23;
      v242[3] = &__block_descriptor_80_e24_v32__0d8__CGColor__16d24l;
      v50 = v232;
      *&v242[4] = scale;
      *&v242[5] = v232;
      v66 = v238;
      *&v242[6] = v19;
      *&v242[7] = v238;
      v242[8] = environment;
      v242[9] = v16;
      v71 = MEMORY[0x21CEE40A0](v242);
      if (v21 <= 0.0)
      {
        v71[2](v71, [v26 focusRingColor], 3.0, 0.0);
        backgroundColor2 = [v26 backgroundColor];
        v71[2](v71, [backgroundColor2 CGColor], 1.0, 3.0);
      }

      else
      {
        v72 = *&environment * 3.0;
        v73 = v21 * *&environment;
        v250.origin.x = scaleCopy;
        v250.origin.y = v232;
        v250.size.width = v19;
        v250.size.height = v238;
        v251 = CGRectInset(v250, *&environment * 3.0 * 0.5, *&environment * 3.0 * 0.5);
        x = v251.origin.x;
        y = v251.origin.y;
        width = v251.size.width;
        height = v251.size.height;
        v228[2](v228, [v26 focusRingColor], v251.origin.x, v251.origin.y, v251.size.width, v251.size.height, *&environment * 3.0, v73);
        if (v73 - *&environment * 3.0 >= 0.0)
        {
          v78 = v73 - v72;
        }

        else
        {
          v78 = 0.0;
        }

        v252.origin.x = x;
        v252.origin.y = y;
        v252.size.width = width;
        v252.size.height = height;
        v253 = CGRectInset(v252, (v72 + *&environment) * 0.5, (v72 + *&environment) * 0.5);
        v79 = v253.origin.x;
        v80 = v253.origin.y;
        v81 = v253.size.width;
        v82 = v253.size.height;
        backgroundColor2 = [v26 backgroundColor];
        cGColor = [backgroundColor2 CGColor];
        v85 = v80;
        v86 = v82;
        v66 = v238;
        v87 = v78;
        v50 = v232;
        scale = scaleCopy;
        v228[2](v228, cGColor, v79, v85, v81, v86, *&environment, v87);
      }

      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v68 = 0;
      v38 = 0;
      v69 = v234;
      v222 = v235;
      v37 = v33;
      v33 = 0;
      goto LABEL_147;
    case 0x17:
      v33 = [(PXGDecorationDefaultBadgeDrawingHelper *)self _sensitiveOverlayImageWithSizeClass:info->var1];
LABEL_32:
      v217 = 0.0;
      v61 = *&environment * 3.0 * 0.5;
      v50 = v232;
      v248.origin.x = scaleCopy;
      v248.origin.y = v232;
      v248.size.width = v19;
      v248.size.height = v238;
      v249 = CGRectInset(v248, v61, v61);
      v241 = v249.origin.x;
      v62 = v249.origin.y;
      v63 = v249.size.width;
      v237 = v249.size.height;
      focusRingColor = [v26 focusRingColor];
      v65 = v62;
      v66 = v238;
      v67 = v61 + (v21 + 1.0) * *&environment;
      scale = scaleCopy;
      v228[2](v228, focusRingColor, v241, v65, v63, v237, *&environment * 3.0, v67);
      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v68 = 0;
      v38 = 0;
      v69 = v234;
      v222 = v235;
      v37 = v33;
      v33 = 0;
      goto LABEL_147;
    case 0x18:
      v217 = 0.0;
      livePhotoBadgeShadowedImage = [MEMORY[0x277D3CD18] livePhotoBadgeShadowedImage];
      v111 = PXImageGetCGImage();
      v37 = CGImageRetain(v111);

      if (!v37)
      {
        v127 = PXAssertGetLog();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21AD38000, v127, OS_LOG_TYPE_ERROR, "missing decoration image PXGDecorationSpriteTypeLivePhoto", buf, 2u);
        }

        v54 = 0;
        v236 = 0;
        whiteColor = 0;
        tintColor = 0;
        v37 = 0;
        v33 = 0;
        v38 = 0;
        v68 = 3;
        goto LABEL_144;
      }

      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v33 = 0;
      v38 = 0;
LABEL_77:
      v68 = 3;
LABEL_78:
      v69 = v234;
      v222 = v235;
      goto LABEL_107;
    case 0x19:
      v217 = 0.0;
      spatialBadgeImage = [MEMORY[0x277D3CD18] spatialBadgeImage];
      v53 = PXImageGetCGImage();
      v37 = CGImageRetain(v53);

      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v33 = 0;
      v38 = 0;
      goto LABEL_77;
    case 0x1ALL:
      v33 = *MEMORY[0x277D3CF68];
      assetIndexFormatter = [(PXGDecorationDefaultBadgeDrawingHelper *)self assetIndexFormatter];
      v106 = [MEMORY[0x277CCABB0] numberWithInteger:info->var5];
      [assetIndexFormatter stringFromNumber:v106];
      v108 = v107 = decorationCopy;

      v236 = PXAttributedStringForBadgeText();
      v217 = 0.0;
      PXFloatFloorToPixel();
      v222 = v29 + v109;

      decorationCopy = v107;
      whiteColor = 0;
      tintColor = 0;
      v37 = 0;
      v38 = 0;
      goto LABEL_73;
    case 0x1ELL:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v212 = currentHandler2;
      v213 = @"Custom view decorations require presentationType == PXGPresentationTypeView";
      v214 = a2;
      selfCopy2 = self;
      v216 = 796;
      goto LABEL_203;
    case 0x1FLL:
      v217 = 0.0;
      systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
LABEL_67:
      v38 = systemOrangeColor;
LABEL_70:
      v54 = 0;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v37 = 0;
      v33 = 0;
      v68 = 0;
      v69 = v234;
      v222 = v235;
      goto LABEL_107;
    case 0x20:
    case 0x21:
    case 0x22:
      v236 = PXAttributedStringForBadgeText();
      v33 = *MEMORY[0x277D3CF68];
      v217 = 0.0;
      PXFloatFloorToPixel();
      whiteColor = 0;
      tintColor = 0;
      v37 = 0;
      v38 = 0;
      v222 = v29 + v39;
LABEL_73:
      v68 = 3;
      v54 = 2;
      goto LABEL_74;
    case 0x23:
      v54 = 2;
      v236 = PXAttributedStringForBadgeText();
      v33 = *MEMORY[0x277D3CF70];
      v217 = 0.0;
      PXFloatFloorToPixel();
      whiteColor = 0;
      tintColor = 0;
      v37 = 0;
      v38 = 0;
      v222 = v29 + v90;
      v68 = 9;
LABEL_74:
      v69 = v29;
      goto LABEL_145;
    default:
      v217 = 0.0;
      v54 = 0;
      v68 = 0;
      v69 = v234;
      v222 = v235;
      v236 = 0;
      whiteColor = 0;
      tintColor = 0;
      v37 = 0;
      v38 = 0;
      goto LABEL_107;
  }
}

void __180__PXGDecorationDefaultBadgeDrawingHelper_drawWithDecorationInfo_solidColorOverlay_debugDecoration_cornerRadius_context_viewport_screenScale_viewEnvironment_userInterfaceDirection___block_invoke(uint64_t a1, CGColor *a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  v11 = CGPathCreateWithRoundedRect(*&a3, a8, a8, 0);
  CGContextAddPath(*(a1 + 32), v11);
  v12 = PXGCreateSRGBColorFromDisplayP3Color(a2);
  CGContextSetStrokeColorWithColor(*(a1 + 32), v12);
  CGColorRelease(v12);
  CGContextSetLineWidth(*(a1 + 32), a7);
  CGContextStrokePath(*(a1 + 32));

  CGPathRelease(v11);
}

void __180__PXGDecorationDefaultBadgeDrawingHelper_drawWithDecorationInfo_solidColorOverlay_debugDecoration_cornerRadius_context_viewport_screenScale_viewEnvironment_userInterfaceDirection___block_invoke_23(uint64_t a1, CGColor *a2, double a3, double a4)
{
  v7 = (a4 + a3 * 0.5) * *(a1 + 64);
  v18 = CGRectInset(*(a1 + 32), v7, v7);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  CGContextSetStrokeColorWithColor(*(a1 + 72), a2);
  CGContextSetLineWidth(*(a1 + 72), *(a1 + 64) * a3);
  v12 = *(a1 + 72);
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;

  CGContextStrokeRect(v12, *&v13);
}

double __180__PXGDecorationDefaultBadgeDrawingHelper_drawWithDecorationInfo_solidColorOverlay_debugDecoration_cornerRadius_context_viewport_screenScale_viewEnvironment_userInterfaceDirection___block_invoke_54(uint64_t a1)
{
  result = 1.2;
  if ((*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL) != 0x1C)
  {
    return 1.0;
  }

  return result;
}

- (id)cacheKeyForDecorationInfo:(PXGDecorationBadgeInfo *)info solidColorOverlay:(id)overlay debugDecoration:(id)decoration targetSize:(CGSize)size cornerRadius:(id)radius screenScale:(double)scale viewEnvironment:(id)environment userInterfaceDirection:(unint64_t)self0
{
  v12 = *&radius.var0.var0.var0;
  v13 = v11;
  v14 = v10;
  height = size.height;
  width = size.width;
  v53[2] = *MEMORY[0x277D85DE8];
  overlayCopy = overlay;
  decorationCopy = decoration;
  v21 = v12;
  v22 = 0x277CCA000uLL;
  v23 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:info objCType:"{PXGDecorationBadgeInfo=qqdqqq}"];
  v53[0] = v23;
  v24 = 0x277CCA000uLL;
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v53[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];

  var0 = info->var0;
  if (info->var0 > 0x17uLL)
  {
    goto LABEL_15;
  }

  if (((1 << var0) & 0xE18000) != 0)
  {
    v52[0] = v21;
    *v48 = width;
    *&v48[1] = height;
    v28 = [MEMORY[0x277CCAE60] valueWithBytes:v48 objCType:"{CGSize=dd}"];
    v52[1] = v28;
    v29 = MEMORY[0x277CBEA60];
    v30 = v52;
LABEL_4:
    v31 = [v29 arrayWithObjects:v30 count:2];
    v32 = [v26 arrayByAddingObjectsFromArray:v31];

LABEL_5:
    v26 = v28;
LABEL_6:

    v26 = v32;
    goto LABEL_7;
  }

  if (var0 == 11)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:llround(info->var2)];
    v51[0] = v28;
    *v47 = width;
    *&v47[1] = height;
    v31 = [MEMORY[0x277CCAE60] valueWithBytes:v47 objCType:"{CGSize=dd}"];
    v51[1] = v31;
    LODWORD(v35) = v14;
    v36 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
    v51[2] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
    v32 = [v26 arrayByAddingObjectsFromArray:v37];

    v24 = 0x277CCA000;
    v22 = 0x277CCA000;
    goto LABEL_5;
  }

  if (var0 == 20)
  {
    if (overlayCopy)
    {
      v32 = [v26 arrayByAddingObject:overlayCopy];
      goto LABEL_6;
    }
  }

  else
  {
LABEL_15:
    if (var0 == 9)
    {
      v50[0] = v21;
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:info->var3];
      v50[1] = v28;
      v29 = MEMORY[0x277CBEA60];
      v30 = v50;
      goto LABEL_4;
    }
  }

LABEL_7:
  if (decorationCopy)
  {
    v49[0] = decorationCopy;
    v38 = [*(v24 + 2992) numberWithDouble:v13];
    v49[1] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    v40 = [v26 arrayByAddingObject:v39];

    v41 = *(v22 + 3680);
    *v46 = width;
    *&v46[1] = height;
    v42 = [v41 valueWithBytes:v46 objCType:"{CGSize=dd}"];
    LOBYTE(v38) = [v40 containsObject:v42];

    if (v38)
    {
      v26 = v40;
    }

    else
    {
      v43 = *(v22 + 3680);
      *v45 = width;
      *&v45[1] = height;
      v44 = [v43 valueWithBytes:v45 objCType:"{CGSize=dd}"];
      v26 = [v40 arrayByAddingObject:v44];
    }
  }

  v33 = [objc_alloc(MEMORY[0x277D3CE08]) initWithObjects:v26];

  return v33;
}

- (PXGDecorationBadgeInfo)decorationSpriteInfoForDecoratedSpriteIndex:(SEL)index decorationType:(unsigned int)type decoratingLayout:(int64_t)layout assetDecorationInfo:(id)info overallSelectionOrder:(PXGAssetDecorationInfo *)order isItemSelected:(int64_t)selected isItemHighlighted:(BOOL)highlighted isItemDragged:(BOOL)self0
{
  highlightedCopy = highlighted;
  infoCopy = info;
  *retstr = *PXGDecorationBadgeInfoNull;
  if (layout > 4)
  {
    if ((layout - 5) >= 2)
    {
      if (layout == 7)
      {
        v37 = infoCopy;
        tapbackDecorationSource = [infoCopy tapbackDecorationSource];

        if (tapbackDecorationSource)
        {
          goto LABEL_39;
        }

        if ((order->var0 & 0x20000000) != 0)
        {
          v26 = 31;
          goto LABEL_40;
        }

        retstr->var0 = 0;
LABEL_41:
        infoCopy = v37;
        goto LABEL_82;
      }

      if (layout != 8)
      {
        goto LABEL_82;
      }

      var0 = order->var0;
      if ((order->var0 & 0x400000000000) != 0)
      {
        v17 = 32;
        goto LABEL_81;
      }

      if ((var0 & 0x800000000000) != 0)
      {
        v17 = 33;
        goto LABEL_81;
      }

      if ((var0 & 0x1000000000000) != 0)
      {
        v17 = 34;
        goto LABEL_81;
      }

      if ((var0 & 0x200000000000) != 0)
      {
        retstr->var0 = 26;
        retstr->var5 = order->var2;
        goto LABEL_82;
      }

      if ((var0 & 0x40) != 0)
      {
        v17 = 24;
        goto LABEL_81;
      }

      if ((var0 & 0x20000000000) != 0)
      {
        v17 = 25;
        goto LABEL_81;
      }
    }

    retstr->var0 = 0;
    goto LABEL_82;
  }

  if (layout <= 1)
  {
    if (!layout)
    {
      v27 = order->var0;
      if (order->var0)
      {
        if ((v27 & 0x20) != 0)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }
      }

      else
      {
        if ((v27 & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

        v17 = 3;
      }

      goto LABEL_81;
    }

    if (layout != 1)
    {
      goto LABEL_82;
    }

    v37 = infoCopy;
    selectionDecorationStyle = [infoCopy selectionDecorationStyle];
    v20 = selectionDecorationStyle;
    if (highlightedCopy && _SelectionStyleUsesBadge(selectionDecorationStyle))
    {
      retstr->var0 = 9;
      retstr->var3 = selected;
      goto LABEL_41;
    }

    v31 = order->var0;
    infoCopy = v37;
    if ((order->var0 & 0x200000000) != 0)
    {
      v17 = 12;
      goto LABEL_81;
    }

    if (v20 == 4)
    {
      v17 = 10;
LABEL_81:
      retstr->var0 = v17;
      goto LABEL_82;
    }

    if ((v31 & 0x1000000000) != 0)
    {
      v17 = 13;
      goto LABEL_81;
    }

    if ((v31 & 0x20) != 0)
    {
      v17 = 8;
      goto LABEL_81;
    }

    if ((v31 & 2) != 0)
    {
      if ((v31 & 0x10000000000) == 0)
      {
        v17 = 6;
        goto LABEL_81;
      }

      v35 = 29;
    }

    else
    {
      var1 = order->var1;
      if (var1 != 0.0)
      {
        if ((v31 & 0x10000000000) == 0)
        {
          retstr->var0 = 11;
          retstr->var2 = var1;
          goto LABEL_82;
        }

        retstr->var0 = 28;
        retstr->var2 = var1;
        goto LABEL_96;
      }

      if ((v31 & 0x10000000000) == 0)
      {
        goto LABEL_82;
      }

      v35 = 27;
    }

    retstr->var0 = v35;
LABEL_96:
    retstr->var4 = order->var3;
    goto LABEL_82;
  }

  if (layout != 2)
  {
    if (layout != 3)
    {
      if ((order->var0 & 0x2000000000) != 0)
      {
        v17 = 4;
      }

      else
      {
        if ((order->var0 & 0x2000000000000) == 0)
        {
          goto LABEL_82;
        }

        v17 = 35;
      }

      goto LABEL_81;
    }

    v37 = infoCopy;
    selectionDecorationStyle2 = [infoCopy selectionDecorationStyle];
    selectionDecorationOptions = [v37 selectionDecorationOptions];
    if (highlightedCopy)
    {
      v30 = selectionDecorationOptions;
      if (_SelectionStyleUsesBadge(selectionDecorationStyle2))
      {
        if ((v30 & 2) != 0)
        {
          v26 = 0;
          goto LABEL_40;
        }
      }
    }

LABEL_39:
    v26 = 30;
    goto LABEL_40;
  }

  v37 = infoCopy;
  selectionDecorationStyle3 = [infoCopy selectionDecorationStyle];
  selectionDecorationOptions2 = [v37 selectionDecorationOptions];
  v24 = order->var0 & 0x20000000000000;
  v25 = selectionDecorationStyle3 == 2 && highlightedCopy;
  if (v25 && v24)
  {
    v26 = 23;
LABEL_40:
    retstr->var0 = v26;
    goto LABEL_41;
  }

  v32 = selectionDecorationStyle3 == 1 && highlightedCopy;
  if (v32 && v24)
  {
    v26 = 22;
    goto LABEL_40;
  }

  if ((order->var0 & 0x20000000000000) != 0)
  {
    v26 = 21;
    goto LABEL_40;
  }

  if (dragged)
  {
    v26 = 14;
    goto LABEL_40;
  }

  if (v32)
  {
    v26 = 15;
    goto LABEL_40;
  }

  if (v25)
  {
    v26 = 16;
    goto LABEL_40;
  }

  if (highlightedCopy && selectionDecorationStyle3 == 3)
  {
    v26 = 17;
    goto LABEL_40;
  }

  if (!highlightedCopy && (selectionDecorationOptions2 & 1) != 0)
  {
    v26 = 18;
    goto LABEL_40;
  }

  if (selectionDecorationStyle3 == 5)
  {
    v26 = 19;
    goto LABEL_40;
  }

  infoCopy = v37;
  if (a11)
  {
    v17 = 17;
    goto LABEL_81;
  }

  solidColorOverlayDecorationSource = [v37 solidColorOverlayDecorationSource];

  infoCopy = v37;
  if (solidColorOverlayDecorationSource)
  {
    v17 = 20;
    goto LABEL_81;
  }

LABEL_82:

  return result;
}

@end