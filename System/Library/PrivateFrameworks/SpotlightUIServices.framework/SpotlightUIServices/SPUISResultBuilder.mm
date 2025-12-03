@interface SPUISResultBuilder
+ (BOOL)isSearchToolClient;
+ (BOOL)isSpotlight;
+ (BOOL)supportsResult:(id)result;
+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)compact;
+ (Class)resultBuilderClassForResult:(id)result preferAppVendedView:(BOOL)view;
+ (id)fetchAttributes;
+ (id)getWhitespaceCharacterAtIndex:(unint64_t)index ofString:(id)string;
+ (id)resultForItem:(id)item;
+ (id)richTextsFromStrings:(id)strings;
+ (id)stringForSFRichText:(id)text;
+ (id)whiteSpaceCondensedStringForString:(id)string;
+ (void)condenseWhiteSpaceForDescriptions:(id)descriptions;
+ (void)condenseWhiteSpaceForRichText:(id)text;
- (BOOL)buildSecondaryTitleIsDetached;
- (BOOL)isToolParameterFilling;
- (BOOL)supportsClearingBackendData;
- (SPUISResultBuilder)initWithResult:(id)result;
- (id)buildAction;
- (id)buildAppEntityAnnotation;
- (id)buildAppTopHitEntityCardSection;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildCommand;
- (id)buildCompactCard;
- (id)buildCompactCardSection;
- (id)buildCompactCardSections;
- (id)buildDescriptions;
- (id)buildDetailedRowCardSection;
- (id)buildFillToolParameterCommand;
- (id)buildFootnote;
- (id)buildHighlightedMatchedTextWithTitle:(id)title headTruncation:(BOOL)truncation;
- (id)buildHighlightedTextWithString:(id)string includeQuotes:(BOOL)quotes;
- (id)buildHorizontallyScrollingCardSection;
- (id)buildInlineCard;
- (id)buildInlineCardSection;
- (id)buildInlineCardSections;
- (id)buildPreviewButtonItems;
- (id)buildPunchouts;
- (id)buildResult;
- (id)buildSecondaryTitle;
- (id)buildSecondaryTitleImage;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)bundleIdentifierForAppIconBadgeImage;
- (id)resultAppBundleId;
- (unint64_t)numberOfLinesForDescriptions;
- (void)buildDefaultPropertiesForCardSection:(id)section;
- (void)buildPunchouts;
- (void)setMaxLinesForDescriptions:(id)descriptions;
@end

@implementation SPUISResultBuilder

+ (id)fetchAttributes
{
  v282 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC30E8];
  v36[0] = *MEMORY[0x277CC23B8];
  v36[1] = v2;
  v3 = *MEMORY[0x277CC2EC0];
  v36[2] = *MEMORY[0x277CC31F8];
  v36[3] = v3;
  v4 = *MEMORY[0x277CC2EE8];
  v36[4] = *MEMORY[0x277CC2ED0];
  v36[5] = v4;
  v5 = *MEMORY[0x277CC2F28];
  v37 = *MEMORY[0x277CC2F20];
  v38 = v5;
  v6 = *MEMORY[0x277CC2F58];
  v39 = *MEMORY[0x277CC2F40];
  v40 = v6;
  v7 = *MEMORY[0x277CC2EA0];
  v41 = *MEMORY[0x277CC2F88];
  v42 = v7;
  v8 = *MEMORY[0x277CC2EA8];
  v43 = *MEMORY[0x277CC2EB0];
  v44 = v8;
  v9 = *MEMORY[0x277CC23F8];
  v45 = *MEMORY[0x277CC23D0];
  v46 = v9;
  v10 = *MEMORY[0x277CC2450];
  v47 = *MEMORY[0x277CC2408];
  v48 = v10;
  v11 = *MEMORY[0x277CC2468];
  v49 = *MEMORY[0x277CC2458];
  v50 = v11;
  v12 = *MEMORY[0x277CC2470];
  v51 = *MEMORY[0x277CC2448];
  v52 = v12;
  v13 = *MEMORY[0x277CC2478];
  v53 = *MEMORY[0x277CC2460];
  v54 = v13;
  v14 = *MEMORY[0x277CC2490];
  v55 = *MEMORY[0x277CC2480];
  v56 = v14;
  v15 = *MEMORY[0x277CC24A0];
  v57 = *MEMORY[0x277CC2498];
  v58 = v15;
  v16 = *MEMORY[0x277CC24C0];
  v59 = *MEMORY[0x277CC24B0];
  v60 = v16;
  v17 = *MEMORY[0x277CC24E0];
  v61 = *MEMORY[0x277CC24C8];
  v62 = v17;
  v18 = *MEMORY[0x277CC2520];
  v63 = *MEMORY[0x277CC24F0];
  v64 = v18;
  v19 = *MEMORY[0x277CC25F0];
  v65 = *MEMORY[0x277CC25E0];
  v66 = v19;
  v20 = *MEMORY[0x277CC2640];
  v67 = *MEMORY[0x277CC2630];
  v68 = v20;
  v21 = *MEMORY[0x277CC2660];
  v69 = *MEMORY[0x277CC2A70];
  v70 = v21;
  v22 = *MEMORY[0x277CC2680];
  v71 = *MEMORY[0x277CC2678];
  v72 = v22;
  v23 = *MEMORY[0x277CC2690];
  v73 = *MEMORY[0x277CC2688];
  v74 = v23;
  v24 = *MEMORY[0x277CC2750];
  v75 = @"SSAttributeDefinitions";
  v76 = v24;
  v25 = *MEMORY[0x277CC2778];
  v77 = *MEMORY[0x277CC2760];
  v78 = v25;
  v26 = *MEMORY[0x277CC27A0];
  v79 = *MEMORY[0x277CC2780];
  v80 = v26;
  v27 = *MEMORY[0x277CC2B38];
  v81 = *MEMORY[0x277CC2A80];
  v82 = v27;
  v28 = *MEMORY[0x277CC2B30];
  v83 = *MEMORY[0x277CC2B28];
  v84 = v28;
  v29 = *MEMORY[0x277CC2B68];
  v85 = *MEMORY[0x277CC2B48];
  v86 = v29;
  v87 = *MEMORY[0x277CC2BD8];
  v88 = @"SSAttributeCalculatorInput";
  v30 = *MEMORY[0x277CC2C60];
  v89 = *MEMORY[0x277CC2C48];
  v90 = v30;
  v91 = @"SSAttributeIsCalculation";
  v92 = @"SSAttributeIsCurrencyConversion";
  v31 = *MEMORY[0x277CC2D10];
  v93 = *MEMORY[0x277CC2CF0];
  v94 = v31;
  v95 = *MEMORY[0x277CC2D18];
  v96 = *MEMORY[0x277CC2D48];
  v97 = *MEMORY[0x277CC2D50];
  v98 = *MEMORY[0x277CC2DD0];
  v99 = *MEMORY[0x277CC2E08];
  v100 = @"SSAttributeCalculatorOutput";
  v101 = *MEMORY[0x277CC2DB8];
  v102 = *MEMORY[0x277CC2E88];
  v103 = *MEMORY[0x277CC2EB8];
  v104 = *MEMORY[0x277CC2788];
  v105 = *MEMORY[0x277CC2FE8];
  v106 = *MEMORY[0x277CC3008];
  v107 = *MEMORY[0x277CC3028];
  v108 = *MEMORY[0x277CC3018];
  v109 = *MEMORY[0x277CC3020];
  v110 = *MEMORY[0x277CC3040];
  v111 = *MEMORY[0x277CC3038];
  v112 = *MEMORY[0x277CC3098];
  v113 = *MEMORY[0x277CC3078];
  v114 = *MEMORY[0x277CC30A0];
  v115 = *MEMORY[0x277CC30B0];
  v116 = *MEMORY[0x277CC30C8];
  v117 = *MEMORY[0x277CC30D0];
  v118 = *MEMORY[0x277CC30A8];
  v119 = *MEMORY[0x277CC3080];
  v120 = *MEMORY[0x277CC30C0];
  v121 = *MEMORY[0x277CC3090];
  v122 = @"com_apple_shortcuts_spotlight_tool_icon";
  v123 = *MEMORY[0x277CC3100];
  v124 = *MEMORY[0x277CC24B8];
  v125 = *MEMORY[0x277CC2FA8];
  v126 = *MEMORY[0x277CC3118];
  v127 = *MEMORY[0x277CC3120];
  v128 = *MEMORY[0x277CC3128];
  v129 = *MEMORY[0x277CC3140];
  v32 = *MEMORY[0x277CC3190];
  v131 = @"SSAttributeTopMatchedStrings";
  v132 = *MEMORY[0x277CC31C8];
  v133 = *MEMORY[0x277CC31D0];
  v134 = *MEMORY[0x277CC31D8];
  v135 = *MEMORY[0x277CC31E0];
  v136 = *MEMORY[0x277CC26D8];
  v137 = *MEMORY[0x277CC31F0];
  v138 = *MEMORY[0x277CC3208];
  v139 = *MEMORY[0x277CC3230];
  v140 = *MEMORY[0x277CC3238];
  v141 = *MEMORY[0x277CC2B98];
  v130 = v32;
  v142 = *MEMORY[0x277CC2CF8];
  v143 = *MEMORY[0x277CC2B78];
  v144 = v32;
  v145 = *MEMORY[0x277CC3188];
  v146 = *MEMORY[0x277CC3220];
  v147 = *MEMORY[0x277CC2770];
  v148 = *MEMORY[0x277CC23E8];
  v149 = *MEMORY[0x277CC25C8];
  v150 = *MEMORY[0x277CC26A8];
  v151 = *MEMORY[0x277CC26C0];
  v152 = *MEMORY[0x277CC2508];
  v153 = v81;
  v154 = *MEMORY[0x277CC2B60];
  v155 = *MEMORY[0x277CC2B88];
  v156 = *MEMORY[0x277CC2C50];
  v157 = v37;
  v158 = *MEMORY[0x277CC2FA0];
  v159 = *MEMORY[0x277CC2FC0];
  v160 = *MEMORY[0x277CC3010];
  v161 = v109;
  v162 = v159;
  v163 = v126;
  v164 = *MEMORY[0x277CC3138];
  v165 = v159;
  v166 = *MEMORY[0x277CC31A0];
  v167 = *MEMORY[0x277CC2DC0];
  v168 = *MEMORY[0x277CC2C58];
  v169 = *MEMORY[0x277CC2E70];
  v170 = *MEMORY[0x277CC2E78];
  v171 = *MEMORY[0x277CC3338];
  v172 = *MEMORY[0x277CC32E8];
  v173 = *MEMORY[0x277CC32E0];
  v174 = *MEMORY[0x277CC3340];
  v175 = *MEMORY[0x277CC2A58];
  v176 = *MEMORY[0x277CC28F0];
  v177 = *MEMORY[0x277CC28F8];
  v178 = *MEMORY[0x277CC2890];
  v179 = *MEMORY[0x277CC2878];
  v180 = *MEMORY[0x277CC2880];
  v181 = *MEMORY[0x277CC2888];
  v182 = *MEMORY[0x277CC2868];
  v183 = *MEMORY[0x277CC28E8];
  v184 = *MEMORY[0x277CC2830];
  v185 = *MEMORY[0x277CC2848];
  v186 = *MEMORY[0x277CC28A8];
  v187 = *MEMORY[0x277CC28C0];
  v188 = *MEMORY[0x277CC2898];
  v189 = *MEMORY[0x277CC2860];
  v190 = *MEMORY[0x277CC28E0];
  v191 = *MEMORY[0x277CC2828];
  v192 = *MEMORY[0x277CC2840];
  v193 = *MEMORY[0x277CC2850];
  v194 = *MEMORY[0x277CC2838];
  v195 = *MEMORY[0x277CC28A0];
  v196 = *MEMORY[0x277CC28B8];
  v197 = *MEMORY[0x277CC28C8];
  v198 = *MEMORY[0x277CC28B0];
  v199 = *MEMORY[0x277CC2950];
  v200 = *MEMORY[0x277CC2960];
  v201 = *MEMORY[0x277CC2958];
  v202 = *MEMORY[0x277CC2930];
  v203 = *MEMORY[0x277CC2940];
  v204 = *MEMORY[0x277CC2948];
  v205 = *MEMORY[0x277CC29B8];
  v206 = *MEMORY[0x277CC2D58];
  v207 = *MEMORY[0x277CC2418];
  v208 = *MEMORY[0x277CC2430];
  v209 = *MEMORY[0x277CC2428];
  v210 = *MEMORY[0x277CC2978];
  v211 = *MEMORY[0x277CC2A88];
  v212 = *MEMORY[0x277CC2A00];
  v213 = *MEMORY[0x277CC27D8];
  v214 = *MEMORY[0x277CC29F8];
  v215 = *MEMORY[0x277CC29A8];
  v216 = *MEMORY[0x277CC2980];
  v217 = *MEMORY[0x277CC2A18];
  v218 = *MEMORY[0x277CC2A10];
  v219 = *MEMORY[0x277CC27F8];
  v220 = *MEMORY[0x277CC27F0];
  v221 = *MEMORY[0x277CC2A30];
  v222 = *MEMORY[0x277CC2A38];
  v223 = *MEMORY[0x277CC2AB0];
  v224 = *MEMORY[0x277CC2AF0];
  v225 = *MEMORY[0x277CC2AC0];
  v226 = *MEMORY[0x277CC2B08];
  v227 = *MEMORY[0x277CC2B00];
  v228 = *MEMORY[0x277CC2A98];
  v229 = *MEMORY[0x277CC2AD0];
  v230 = *MEMORY[0x277CC2AE0];
  v231 = *MEMORY[0x277CC2AA0];
  v232 = *MEMORY[0x277CC2B10];
  v233 = *MEMORY[0x277CC29B0];
  v234 = *MEMORY[0x277CC25A8];
  v235 = *MEMORY[0x277CC25B0];
  v236 = *MEMORY[0x277CC2530];
  v237 = *MEMORY[0x277CC2628];
  v238 = *MEMORY[0x277CC2D38];
  v239 = *MEMORY[0x277CC2D30];
  v240 = *MEMORY[0x277CC3130];
  v241 = *MEMORY[0x277CC27A8];
  v242 = *MEMORY[0x277CC31E8];
  v243 = *MEMORY[0x277CC3378];
  v244 = *MEMORY[0x277CC2758];
  v245 = *MEMORY[0x277CC2870];
  v246 = *MEMORY[0x277CC2998];
  v247 = *MEMORY[0x277CC27E8];
  v248 = *MEMORY[0x277CC29F0];
  v249 = *MEMORY[0x277CC2988];
  v250 = *MEMORY[0x277CC29A0];
  v251 = *MEMORY[0x277CC2A40];
  v252 = *MEMORY[0x277CC2A60];
  v253 = *MEMORY[0x277CC2A20];
  v254 = *MEMORY[0x277CC2800];
  v255 = *MEMORY[0x277CC2D40];
  v256 = *MEMORY[0x277CC24F8];
  v257 = *MEMORY[0x277CC23F0];
  v258 = *MEMORY[0x277CC2510];
  v259 = *MEMORY[0x277CC2588];
  v260 = *MEMORY[0x277CC25B8];
  v261 = *MEMORY[0x277CC2578];
  v262 = *MEMORY[0x277CC2558];
  v263 = *MEMORY[0x277CC2568];
  v264 = *MEMORY[0x277CC2548];
  v265 = *MEMORY[0x277CC2570];
  v266 = *MEMORY[0x277CC2590];
  v267 = *MEMORY[0x277CC2540];
  v268 = *MEMORY[0x277CC2538];
  v269 = *MEMORY[0x277CC26A0];
  v270 = *MEMORY[0x277CC2698];
  v271 = *MEMORY[0x277CC26D0];
  v272 = *MEMORY[0x277CC27B8];
  v273 = *MEMORY[0x277CC2F98];
  v274 = *MEMORY[0x277CC3200];
  v275 = *MEMORY[0x277CC3030];
  v276 = *MEMORY[0x277CC2D28];
  v277 = *MEMORY[0x277CC2E68];
  v278 = *MEMORY[0x277CC2A68];
  v279 = *MEMORY[0x277CC2C70];
  v280 = *MEMORY[0x277CC3328];
  v281 = *MEMORY[0x277CC3320];
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:251];
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)resultForItem:(id)item
{
  itemCopy = item;
  bundleID = [itemCopy bundleID];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  protection = [itemCopy protection];
  attributeSet = [itemCopy attributeSet];
  attributeDictionary = [attributeSet attributeDictionary];
  v9 = [attributeDictionary mutableCopy];

  attributeSet2 = [itemCopy attributeSet];

  customAttributeDictionary = [attributeSet2 customAttributeDictionary];
  [v9 addEntriesFromDictionary:customAttributeDictionary];

  v12 = [objc_alloc(MEMORY[0x277D65850]) initWithIdentifier:uniqueIdentifier bundleIdentifier:bundleID protectionClass:protection attributes:v9 type:2 completion:0];

  return v12;
}

+ (Class)resultBuilderClassForResult:(id)result preferAppVendedView:(BOOL)view
{
  viewCopy = view;
  v32[43] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v32[3] = objc_opt_class();
  v32[4] = objc_opt_class();
  v32[5] = objc_opt_class();
  v32[6] = objc_opt_class();
  v32[7] = objc_opt_class();
  v32[8] = objc_opt_class();
  v32[9] = objc_opt_class();
  v32[10] = objc_opt_class();
  v32[11] = objc_opt_class();
  v32[12] = objc_opt_class();
  v32[13] = objc_opt_class();
  v32[14] = objc_opt_class();
  v32[15] = objc_opt_class();
  v32[16] = objc_opt_class();
  v32[17] = objc_opt_class();
  v32[18] = objc_opt_class();
  v32[19] = objc_opt_class();
  v32[20] = objc_opt_class();
  v32[21] = objc_opt_class();
  v32[22] = objc_opt_class();
  v32[23] = objc_opt_class();
  v32[24] = objc_opt_class();
  v32[25] = objc_opt_class();
  v32[26] = objc_opt_class();
  v32[27] = objc_opt_class();
  v32[28] = objc_opt_class();
  v32[29] = objc_opt_class();
  v32[30] = objc_opt_class();
  v32[31] = objc_opt_class();
  v32[32] = objc_opt_class();
  v32[33] = objc_opt_class();
  v32[34] = objc_opt_class();
  v32[35] = objc_opt_class();
  v32[36] = objc_opt_class();
  v32[37] = objc_opt_class();
  v32[38] = objc_opt_class();
  v32[39] = objc_opt_class();
  v32[40] = objc_opt_class();
  v32[41] = objc_opt_class();
  v32[42] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:43];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      if ([v11 supportsResult:{resultCopy, v19}])
      {
        if (v11 != objc_opt_class() || viewCopy)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  v11 = objc_opt_class();
LABEL_14:
  v12 = SPUISGeneralLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    contentType = [resultCopy contentType];
    v17 = contentType;
    v18 = @"NO";
    *buf = 138478595;
    v24 = resultCopy;
    v25 = 2112;
    if (viewCopy)
    {
      v18 = @"YES";
    }

    v26 = contentType;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v18;
    _os_log_debug_impl(&dword_26B882000, v12, OS_LOG_TYPE_DEBUG, "SPUISResultBuilder result: %{private}@ withContentType: %@ resolved to class: %@ preferringAppVendedView: %@", buf, 0x2Au);
  }

  v13 = v11;
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)supportsResult:(id)result
{
  sectionBundleIdentifier = [result sectionBundleIdentifier];
  bundleId = [self bundleId];
  v6 = [sectionBundleIdentifier isEqual:bundleId];

  return v6;
}

+ (id)richTextsFromStrings:(id)strings
{
  v18 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = stringsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277D4C598] textWithString:{*(*(&v13 + 1) + 8 * i), v13}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)compact
{
  compactCopy = compact;
  v4 = +[SPUISUtilities isMacOS];
  v5 = 36.0;
  if (compactCopy)
  {
    v5 = 20.0;
  }

  v6 = 64.0;
  if (compactCopy)
  {
    v6 = 28.0;
  }

  if (!v4)
  {
    v5 = v6;
  }

  v7 = v5;
  result.height = v7;
  result.width = v5;
  return result;
}

+ (id)getWhitespaceCharacterAtIndex:(unint64_t)index ofString:(id)string
{
  v4 = [string characterAtIndex:index];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  if ([whitespaceCharacterSet characterIsMember:v4])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v4];
  }

  else
  {
    v6 = &stru_287C50EE8;
  }

  return v6;
}

+ (id)whiteSpaceCondensedStringForString:(id)string
{
  stringCopy = string;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  if ([stringCopy length] && objc_msgSend(stringCopy, "rangeOfCharacterFromSet:", whitespaceAndNewlineCharacterSet) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
    v8 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_6];
    v9 = [v7 filteredArrayUsingPredicate:v8];

    v10 = [self getWhitespaceCharacterAtIndex:0 ofString:stringCopy];
    v11 = [self getWhitespaceCharacterAtIndex:objc_msgSend(stringCopy ofString:{"length") - 1, stringCopy}];
    v12 = MEMORY[0x277CCACA8];
    v13 = [v9 componentsJoinedByString:@" "];
    v6 = [v12 stringWithFormat:@"%@%@%@", v10, v13, v11];
  }

  else
  {
    v6 = stringCopy;
  }

  return v6;
}

+ (void)condenseWhiteSpaceForRichText:(id)text
{
  v24 = *MEMORY[0x277D85DE8];
  textCopy = text;
  formattedTextPieces = [textCopy formattedTextPieces];

  if (formattedTextPieces)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    formattedTextPieces2 = [textCopy formattedTextPieces];
    v6 = [formattedTextPieces2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(formattedTextPieces2);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = objc_opt_class();
          text = [v10 text];
          v13 = [v11 whiteSpaceCondensedStringForString:text];
          [v10 setText:v13];
        }

        v7 = [formattedTextPieces2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    goto LABEL_12;
  }

  text2 = [textCopy text];
  v15 = [text2 length];

  if (v15)
  {
    v16 = objc_opt_class();
    formattedTextPieces2 = [textCopy text];
    v17 = [v16 whiteSpaceCondensedStringForString:formattedTextPieces2];
    [textCopy setText:v17];

LABEL_12:
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)condenseWhiteSpaceForDescriptions:(id)descriptions
{
  v15 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [descriptionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(descriptionsCopy);
        }

        [self condenseWhiteSpaceForRichText:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [descriptionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (SPUISResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v31.receiver = self;
  v31.super_class = SPUISResultBuilder;
  v5 = [(SPUISResultBuilder *)&v31 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = +[SPUISUtilities isMacOS];
  v7 = *MEMORY[0x277CC3378];
  if (!v6)
  {
    v7 = @"SSAttributeTopMatchedStrings";
  }

  v8 = v7;
  v9 = [resultCopy valueForAttribute:v8 withType:objc_opt_class()];
  [(SPUISResultBuilder *)v5 setResult:resultCopy];
  firstObject = [v9 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  [(SPUISResultBuilder *)v5 setMatchedStrings:v11];

  if ([objc_opt_class() isCoreSpotlightResult])
  {
    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC2A80] withType:objc_opt_class()];
    [(SPUISResultBuilder *)v5 setCoreSpotlightId:v12];
  }

  else
  {
    [(SPUISResultBuilder *)v5 setCoreSpotlightId:0];
  }

  if ([resultCopy hasTextContentMatch])
  {
    [(SPUISResultBuilder *)v5 setHasTextContentMatch:1];
  }

  else
  {
    v13 = [resultCopy valueForAttribute:*MEMORY[0x277CC3370] withType:objc_opt_class()];
    -[SPUISResultBuilder setHasTextContentMatch:](v5, "setHasTextContentMatch:", [v13 BOOLValue]);
  }

  result = [(SPUISResultBuilder *)v5 result];
  relatedAppIdentifier = [result relatedAppIdentifier];
  if (relatedAppIdentifier)
  {
    [(SPUISResultBuilder *)v5 setRelatedAppBundleIdentifier:relatedAppIdentifier];
  }

  else
  {
    v16 = [resultCopy valueForAttribute:*MEMORY[0x277CC3038] withType:objc_opt_class()];
    [(SPUISResultBuilder *)v5 setRelatedAppBundleIdentifier:v16];
  }

  result2 = [(SPUISResultBuilder *)v5 result];
  lastUsedDate = [result2 lastUsedDate];
  if (lastUsedDate)
  {
    [(SPUISResultBuilder *)v5 setLastUsedDate:lastUsedDate];
  }

  else
  {
    v19 = [resultCopy valueForAttribute:*MEMORY[0x277CC2D10] withType:objc_opt_class()];
    [(SPUISResultBuilder *)v5 setLastUsedDate:v19];
  }

  result3 = [(SPUISResultBuilder *)v5 result];
  contentType = [result3 contentType];

  if (contentType)
  {
    result4 = [(SPUISResultBuilder *)v5 result];
    uniformContentType = [result4 uniformContentType];
    [(SPUISResultBuilder *)v5 setUniformType:uniformContentType];
  }

  if (_os_feature_enabled_impl())
  {
    uniformType = [(SPUISResultBuilder *)v5 uniformType];
    if (uniformType)
    {
LABEL_25:

      goto LABEL_26;
    }

    sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
    v26 = [sectionBundleIdentifier isEqualToString:@"com.apple.spotlight.events"];

    if (v26)
    {
      uniformType = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.spotlight.events"];
      [(SPUISResultBuilder *)v5 setUniformType:uniformType];
      goto LABEL_25;
    }
  }

LABEL_26:
  v27 = [resultCopy valueForAttribute:*MEMORY[0x277CC24E8] withType:objc_opt_class()];
  unsignedIntValue = [v27 unsignedIntValue];

  if (unsignedIntValue)
  {
    v29 = objc_opt_new();
    [v29 setBlueComponent:unsignedIntValue / 255.0];
    [v29 setGreenComponent:BYTE1(unsignedIntValue) / 255.0];
    [v29 setRedComponent:BYTE2(unsignedIntValue) / 255.0];
    [(SPUISResultBuilder *)v5 setBackgroundColor:v29];
  }

LABEL_29:
  return v5;
}

- (unint64_t)numberOfLinesForDescriptions
{
  if (+[SPUISUtilities isMacOS])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setMaxLinesForDescriptions:(id)descriptions
{
  v17 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [descriptionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(descriptionsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        maxLines = [v9 maxLines];
        if (!maxLines)
        {
          maxLines = [(SPUISResultBuilder *)self numberOfLinesForDescriptions];
        }

        [v9 setMaxLines:maxLines];
      }

      v6 = [descriptionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)resultAppBundleId
{
  result = [(SPUISResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  v4 = applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    bundleId = applicationBundleIdentifier;
  }

  else
  {
    bundleId = [objc_opt_class() bundleId];
  }

  v6 = bundleId;

  return v6;
}

- (id)buildResult
{
  buildPreviewButtonItems = [(SPUISResultBuilder *)self buildPreviewButtonItems];
  buildAppEntityAnnotation = [(SPUISResultBuilder *)self buildAppEntityAnnotation];
  result = [(SPUISResultBuilder *)self result];
  v6 = result;
  if (result)
  {
    v7 = result;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  buildInlineCard = [(SPUISResultBuilder *)self buildInlineCard];
  [v8 setInlineCard:buildInlineCard];

  inlineCard = [v8 inlineCard];
  cardSections = [inlineCard cardSections];
  firstObject = [cardSections firstObject];
  [firstObject setPreviewButtonItems:buildPreviewButtonItems];

  inlineCard2 = [v8 inlineCard];
  cardSections2 = [inlineCard2 cardSections];
  firstObject2 = [cardSections2 firstObject];
  [firstObject2 setAppEntityAnnotation:buildAppEntityAnnotation];

  if ((SSSpotlightUIPlusEnabled() & 1) == 0)
  {
    buildCompactCard = [(SPUISResultBuilder *)self buildCompactCard];
    [v8 setCompactCard:buildCompactCard];

    compactCard = [v8 compactCard];
    cardSections3 = [compactCard cardSections];
    firstObject3 = [cardSections3 firstObject];
    [firstObject3 setPreviewButtonItems:buildPreviewButtonItems];

    compactCard2 = [v8 compactCard];
    cardSections4 = [compactCard2 cardSections];
    firstObject4 = [cardSections4 firstObject];
    [firstObject4 setAppEntityAnnotation:buildAppEntityAnnotation];
  }

  return v8;
}

- (id)buildCompactCard
{
  buildCompactCardSections = [(SPUISResultBuilder *)self buildCompactCardSections];
  if (buildCompactCardSections)
  {
    v3 = objc_opt_new();
    [v3 setCardSections:buildCompactCardSections];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buildInlineCard
{
  v20 = *MEMORY[0x277D85DE8];
  buildInlineCardSections = [(SPUISResultBuilder *)self buildInlineCardSections];
  if (buildInlineCardSections)
  {
    v4 = objc_opt_new();
    [v4 setCardSections:buildInlineCardSections];
    isTopHit = [(SPUISResultBuilder *)self isTopHit];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = buildInlineCardSections;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (isTopHit)
          {
            [(SPUISResultBuilder *)self buildBackgroundColor];
          }

          else
          {
            [*(*(&v15 + 1) + 8 * i) backgroundColor];
          }
          v12 = ;
          [v11 setBackgroundColor:{v12, v15}];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)buildCompactCardSections
{
  v13[1] = *MEMORY[0x277D85DE8];
  buildCompactCardSection = [(SPUISResultBuilder *)self buildCompactCardSection];
  descriptions = [buildCompactCardSection descriptions];
  [(SPUISResultBuilder *)self setMaxLinesForDescriptions:descriptions];

  v5 = objc_opt_class();
  descriptions2 = [buildCompactCardSection descriptions];
  [v5 condenseWhiteSpaceForDescriptions:descriptions2];

  thumbnail = [buildCompactCardSection thumbnail];
  badgingImage = [thumbnail badgingImage];

  thumbnail2 = [buildCompactCardSection thumbnail];
  [thumbnail2 setBadgingImage:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [buildCompactCardSection setThumbnail:badgingImage];
  }

  if (buildCompactCardSection)
  {
    v13[0] = buildCompactCardSection;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)buildInlineCardSections
{
  v10[1] = *MEMORY[0x277D85DE8];
  buildInlineCardSection = [(SPUISResultBuilder *)self buildInlineCardSection];
  descriptions = [buildInlineCardSection descriptions];
  [(SPUISResultBuilder *)self setMaxLinesForDescriptions:descriptions];

  v5 = objc_opt_class();
  descriptions2 = [buildInlineCardSection descriptions];
  [v5 condenseWhiteSpaceForDescriptions:descriptions2];

  if (buildInlineCardSection)
  {
    v10[0] = buildInlineCardSection;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)buildCompactCardSection
{
  buildDetailedRowCardSection = [(SPUISResultBuilder *)self buildDetailedRowCardSection];
  [buildDetailedRowCardSection setShouldUseCompactDisplay:1];
  v3 = objc_opt_class();
  thumbnail = [buildDetailedRowCardSection thumbnail];
  [v3 setDefaultSizeForThumbnail:thumbnail isCompact:1];

  return buildDetailedRowCardSection;
}

- (id)buildInlineCardSection
{
  buildDetailedRowCardSection = [(SPUISResultBuilder *)self buildDetailedRowCardSection];
  v3 = objc_opt_class();
  thumbnail = [buildDetailedRowCardSection thumbnail];
  [v3 setDefaultSizeForThumbnail:thumbnail isCompact:0];

  return buildDetailedRowCardSection;
}

- (id)buildHorizontallyScrollingCardSection
{
  subclassBuildHorizontallyScrollingCardSection = [(SPUISResultBuilder *)self subclassBuildHorizontallyScrollingCardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    thumbnail = [subclassBuildHorizontallyScrollingCardSection thumbnail];
    [v4 setDefaultSizeForThumbnail:thumbnail isCompact:0];
  }

  [(SPUISResultBuilder *)self buildDefaultPropertiesForCardSection:subclassBuildHorizontallyScrollingCardSection];

  return subclassBuildHorizontallyScrollingCardSection;
}

- (id)buildAppTopHitEntityCardSection
{
  v3 = objc_opt_new();
  buildTitle = [(SPUISResultBuilder *)self buildTitle];
  [v3 setTitle:buildTitle];

  title = [v3 title];
  [title setMaxLines:2];

  buildThumbnail = [(SPUISResultBuilder *)self buildThumbnail];
  [v3 setThumbnail:buildThumbnail];

  thumbnail = [v3 thumbnail];
  [thumbnail setBadgingImage:0];

  buildFootnote = [(SPUISResultBuilder *)self buildFootnote];
  [v3 setFootnote:buildFootnote];

  footnote = [v3 footnote];
  [footnote setMaxLines:1];

  if ([(SPUISResultBuilder *)self isToolParameterFilling])
  {
    [(SPUISResultBuilder *)self buildFillToolParameterCommand];
  }

  else
  {
    [(SPUISResultBuilder *)self buildCommand];
  }
  v10 = ;
  [v3 setCommand:v10];

  [v3 setUseAppIconMetrics:1];
  buildAppEntityAnnotation = [(SPUISResultBuilder *)self buildAppEntityAnnotation];
  [v3 setAppEntityAnnotation:buildAppEntityAnnotation];

  return v3;
}

- (void)buildDefaultPropertiesForCardSection:(id)section
{
  sectionCopy = section;
  if ([(SPUISResultBuilder *)self isToolParameterFilling])
  {
    buildFillToolParameterCommand = [(SPUISResultBuilder *)self buildFillToolParameterCommand];
    [sectionCopy setCommand:buildFillToolParameterCommand];

    [sectionCopy setSecondaryCommand:0];
    goto LABEL_18;
  }

  queryContext = [(SPUISResultBuilder *)self queryContext];
  queryKind = [queryContext queryKind];

  buildSecondaryCommand = [(SPUISResultBuilder *)self buildSecondaryCommand];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queryContext2 = [(SPUISResultBuilder *)self queryContext];
    searchStringForScopedSearch = [queryContext2 searchStringForScopedSearch];

    if (searchStringForScopedSearch)
    {
      queryContext3 = [(SPUISResultBuilder *)self queryContext];
      searchStringForScopedSearch2 = [queryContext3 searchStringForScopedSearch];
      [buildSecondaryCommand setSearchString:searchStringForScopedSearch2];
    }
  }

  command = [sectionCopy command];
  v13 = command;
  if (command || queryKind == 16)
  {
    if (command)
    {
      v15 = command;
    }

    else
    {
      v15 = buildSecondaryCommand;
    }

    [sectionCopy setCommand:v15];

    if (queryKind == 16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    buildCommand = [(SPUISResultBuilder *)self buildCommand];
    [sectionCopy setCommand:buildCommand];
  }

  secondaryCommand = [sectionCopy secondaryCommand];
  v17 = secondaryCommand;
  if (secondaryCommand)
  {
    v18 = secondaryCommand;
  }

  else
  {
    v18 = buildSecondaryCommand;
  }

  [sectionCopy setSecondaryCommand:v18];

LABEL_17:
LABEL_18:
  previewCommand = [sectionCopy previewCommand];
  if (previewCommand)
  {
    [sectionCopy setPreviewCommand:previewCommand];
  }

  else
  {
    buildPreviewCommand = [(SPUISResultBuilder *)self buildPreviewCommand];
    [sectionCopy setPreviewCommand:buildPreviewCommand];
  }
}

- (id)buildDetailedRowCardSection
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  buildPunchouts = [(SPUISResultBuilder *)self buildPunchouts];
  [v4 setPunchoutOptions:buildPunchouts];

  buildThumbnail = [(SPUISResultBuilder *)self buildThumbnail];
  [v4 setThumbnail:buildThumbnail];

  thumbnail = [v4 thumbnail];
  v8 = [(SPUISResultBuilder *)self buildBadgingImageWithThumbnail:thumbnail];
  thumbnail2 = [v4 thumbnail];
  [thumbnail2 setBadgingImage:v8];

  buildTrailingThumbnail = [(SPUISResultBuilder *)self buildTrailingThumbnail];
  [v4 setTrailingThumbnail:buildTrailingThumbnail];

  buildTitle = [(SPUISResultBuilder *)self buildTitle];
  [v4 setTitle:buildTitle];

  buildSecondaryTitle = [(SPUISResultBuilder *)self buildSecondaryTitle];
  [v4 setSecondaryTitle:buildSecondaryTitle];

  secondaryTitle = [v4 secondaryTitle];
  maxLines = [secondaryTitle maxLines];
  if (maxLines <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = maxLines;
  }

  secondaryTitle2 = [v4 secondaryTitle];
  [secondaryTitle2 setMaxLines:v15];

  buildSecondaryTitleImage = [(SPUISResultBuilder *)self buildSecondaryTitleImage];
  [v4 setSecondaryTitleImage:buildSecondaryTitleImage];

  [v4 setIsSecondaryTitleDetached:{-[SPUISResultBuilder buildSecondaryTitleIsDetached](self, "buildSecondaryTitleIsDetached")}];
  selfCopy = self;
  buildDescriptions = [(SPUISResultBuilder *)self buildDescriptions];
  v59 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v19 = buildDescriptions;
  v20 = [v19 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v61;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v61 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v60 + 1) + 8 * i);
        text = [v24 text];
        title = [v4 title];
        text2 = [title text];
        v27 = [text isEqualToString:text2];

        if ((v27 & 1) == 0)
        {
          [v59 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v21);
  }

  if ([v59 count])
  {
    v28 = v59;
  }

  else
  {
    v28 = 0;
  }

  [v4 setDescriptions:v28];
  title2 = [v4 title];
  maxLines2 = [title2 maxLines];
  v31 = maxLines2;
  if (!maxLines2)
  {
    text = [v4 descriptions];
    if (text)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }
  }

  title3 = [v4 title];
  [title3 setMaxLines:v31];

  if (!maxLines2)
  {
  }

  buildFootnote = [(SPUISResultBuilder *)selfCopy buildFootnote];
  [v4 setFootnote:buildFootnote];

  footnote = [v4 footnote];
  maxLines3 = [footnote maxLines];
  if (maxLines3)
  {
    v36 = maxLines3;
  }

  else
  {
    v36 = 2;
  }

  footnote2 = [v4 footnote];
  [footnote2 setMaxLines:v36];

  buildTrailingTopText = [(SPUISResultBuilder *)selfCopy buildTrailingTopText];
  [v4 setTrailingTopText:buildTrailingTopText];

  trailingTopText = [v4 trailingTopText];
  maxLines4 = [trailingTopText maxLines];
  if (maxLines4 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = maxLines4;
  }

  trailingTopText2 = [v4 trailingTopText];
  [trailingTopText2 setMaxLines:v41];

  buildTrailingMiddleText = [(SPUISResultBuilder *)selfCopy buildTrailingMiddleText];
  [v4 setTrailingMiddleText:buildTrailingMiddleText];

  trailingMiddleText = [v4 trailingMiddleText];
  maxLines5 = [trailingMiddleText maxLines];
  if (maxLines5 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = maxLines5;
  }

  trailingMiddleText2 = [v4 trailingMiddleText];
  [trailingMiddleText2 setMaxLines:v46];

  buildTrailingBottomText = [(SPUISResultBuilder *)selfCopy buildTrailingBottomText];
  [v4 setTrailingBottomText:buildTrailingBottomText];

  trailingBottomText = [v4 trailingBottomText];
  maxLines6 = [trailingBottomText maxLines];
  if (maxLines6 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = maxLines6;
  }

  trailingBottomText2 = [v4 trailingBottomText];
  [trailingBottomText2 setMaxLines:v51];

  if ([(SPUISResultBuilder *)selfCopy isToolParameterFilling])
  {
    [v4 setAction:0];
  }

  else
  {
    buildAction = [(SPUISResultBuilder *)selfCopy buildAction];
    [v4 setAction:buildAction];
  }

  if ([(SPUISResultBuilder *)selfCopy isToolParameterFilling])
  {
    [v4 setButtonItems:0];
  }

  else
  {
    buildButtonItems = [(SPUISResultBuilder *)selfCopy buildButtonItems];
    [v4 setButtonItems:buildButtonItems];
  }

  [v4 setPreventThumbnailImageScaling:{-[SPUISResultBuilder buildPreventThumbnailImageScaling](selfCopy, "buildPreventThumbnailImageScaling")}];
  [v4 setButtonItemsAreTrailing:{-[SPUISResultBuilder buildButtonItemsAreTrailing](selfCopy, "buildButtonItemsAreTrailing")}];
  descriptions = [v4 descriptions];
  [(SPUISResultBuilder *)selfCopy setMaxLinesForDescriptions:descriptions];

  [(SPUISResultBuilder *)selfCopy buildDefaultPropertiesForCardSection:v4];
  v56 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  bundleIdentifierForAppIconBadgeImage = [(SPUISResultBuilder *)self bundleIdentifierForAppIconBadgeImage];
  v6 = bundleIdentifierForAppIconBadgeImage;
  if (!bundleIdentifierForAppIconBadgeImage || ([bundleIdentifierForAppIconBadgeImage isEqualToString:@"com.apple.MobileAddressBook"] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(thumbnailCopy, "bundleIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", v6), v8, (v9 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    [v7 setBundleIdentifier:v6];
  }

  return v7;
}

- (id)bundleIdentifierForAppIconBadgeImage
{
  result = [(SPUISResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  v4 = applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    bundleId = applicationBundleIdentifier;
  }

  else
  {
    bundleId = [objc_opt_class() bundleId];
  }

  v6 = bundleId;

  return v6;
}

- (id)buildPreviewButtonItems
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  result = [(SPUISResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];

  result2 = [(SPUISResultBuilder *)self result];
  applicationBundleIdentifier2 = [result2 applicationBundleIdentifier];

  coreSpotlightId = [(SPUISResultBuilder *)self coreSpotlightId];
  result3 = [(SPUISResultBuilder *)self result];
  v9 = [result3 valueForAttribute:*MEMORY[0x277CC23B8] withType:objc_opt_class()];

  if ([v9 count])
  {
    v10 = objc_opt_new();
    [v10 setActionItemTypes:v9];
    [v10 setApplicationBundleIdentifier:applicationBundleIdentifier];
    [v10 setCoreSpotlightIdentifier:coreSpotlightId];
    [v3 addObject:v10];
  }

  result4 = [(SPUISResultBuilder *)self result];
  itemProviderDataTypes = [result4 itemProviderDataTypes];

  result5 = [(SPUISResultBuilder *)self result];
  itemProviderFileTypes = [result5 itemProviderFileTypes];

  result6 = [(SPUISResultBuilder *)self result];
  v16 = [result6 valueForAttribute:*MEMORY[0x277CC30E8] withType:objc_opt_class()];

  v30[0] = @"com.apple.mobilemail";
  v30[1] = @"com.apple.mobilenotes";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v18 = [v17 containsObject:applicationBundleIdentifier];

  if (itemProviderDataTypes || itemProviderFileTypes || v16)
  {
    if ((v18 & 1) != 0 || SSSectionIsSyndicatedPhotos())
    {
      v19 = objc_opt_new();
      v20 = objc_opt_new();
      [v20 setApplicationBundleIdentifier:applicationBundleIdentifier];
      [v20 setCoreSpotlightIdentifier:coreSpotlightId];
      [v20 setDataProviderTypeIdentifiers:itemProviderDataTypes];
      [v20 setFileProviderTypeIdentifiers:itemProviderFileTypes];
      if (!itemProviderFileTypes && v16)
      {
        v29 = v16;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
        [v20 setFileProviderTypeIdentifiers:v21];
      }

      [v19 setCopyableItem:v20];
      v22 = objc_opt_new();
      [v22 setCommand:v19];
      [v3 addObject:v22];
    }

    if (v16)
    {
      v23 = objc_opt_new();
      v24 = objc_opt_new();
      [v24 setShareProviderTypeIdentifier:v16];
      [v24 setApplicationBundleIdentifier:applicationBundleIdentifier];
      [v24 setCoreSpotlightIdentifier:coreSpotlightId];
      [v24 setShareProviderTypeIdentifier:v16];
      [v23 setShareItem:v24];
      v25 = objc_opt_new();
      [v25 setCommand:v23];
      [v3 addObject:v25];
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)buildPunchouts
{
  v17[1] = *MEMORY[0x277D85DE8];
  result = [(SPUISResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x277CC2FE8] withType:objc_opt_class()];
  v5 = [result valueForAttribute:*MEMORY[0x277CC24F0] withType:objc_opt_class()];
  bOOLValue = [v5 BOOLValue];

  v7 = [result valueForAttribute:*MEMORY[0x277CC2688] withType:objc_opt_class()];
  v8 = v7;
  if (!v4 && (bOOLValue & 1) == 0 && !v7)
  {
    goto LABEL_12;
  }

  v9 = objc_opt_new();
  [v9 setLabel:v4];
  [v9 setIsRunnableInBackground:bOOLValue];
  if (v8)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    v11 = v10;
    if (v10)
    {
      v17[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      [v9 setUrls:v12];
    }

    else
    {
      v12 = SPUISGeneralLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(SPUISResultBuilder *)self buildPunchouts];
      }
    }
  }

  if (v9)
  {
    v16 = v9;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  }

  else
  {
LABEL_12:
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)buildThumbnail
{
  result = [(SPUISResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x277CC31D0] withType:objc_opt_class()];
  v5 = [result valueForAttribute:*MEMORY[0x277CC31C8] withType:objc_opt_class()];
  v36 = [result valueForAttribute:*MEMORY[0x277CC31B8] withType:objc_opt_class()];
  v6 = [result valueForAttribute:*MEMORY[0x277CC31C0] withType:objc_opt_class()];
  v37 = [result valueForAttribute:*MEMORY[0x277CC31D8] withType:objc_opt_class()];
  v7 = [result urlValueForAttribute:*MEMORY[0x277CC31E0]];
  v39 = [result urlValueForAttribute:*MEMORY[0x277CC26D8]];
  thumbnail = [result thumbnail];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  v10 = applicationBundleIdentifier;
  v35 = thumbnail;
  if (applicationBundleIdentifier)
  {
    bundleId = applicationBundleIdentifier;
  }

  else
  {
    bundleId = [objc_opt_class() bundleId];
  }

  *(&v38 + 1) = bundleId;

  *&v38 = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  result2 = [(SPUISResultBuilder *)self result];
  applicationBundleIdentifier2 = [result2 applicationBundleIdentifier];
  if ([applicationBundleIdentifier2 isEqualToString:@"com.apple.mobilecal"])
  {
    result3 = [(SPUISResultBuilder *)self result];
    [result3 userActivityRequiredString];
    v15 = v5;
    v17 = v16 = v4;
    v18 = [v17 containsString:@"com.apple.calendarUIKit.userActivity.tomorrow"];

    v4 = v16;
    v5 = v15;

    v19 = v36;
    if (v18)
    {
      v20 = objc_alloc(MEMORY[0x277D4C220]);
      v21 = +[SPUISDateFormatManager tomorrow];
      v22 = [v20 initWithDate:v21];

      v23 = v6;
      v24 = v37;
      v25 = v7;
LABEL_14:
      v26 = v39;
      goto LABEL_15;
    }
  }

  else
  {

    v19 = v36;
  }

  v25 = v7;
  v26 = v39;
  v23 = v6;
  v24 = v37;
  if (v7 | v39)
  {
    v22 = [objc_alloc(MEMORY[0x277D4C6B8]) initWithURL:v7];
    [v22 setDarkUrlValue:v39];
LABEL_15:
    v30 = v35;
LABEL_16:
    v31 = v38;
    goto LABEL_17;
  }

  if (v5)
  {
    v22 = [MEMORY[0x277D4C3B0] imageWithData:v5];
    goto LABEL_15;
  }

  if (v4)
  {
    v27 = objc_alloc(MEMORY[0x277D4C6B8]);
    v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:0];
    v29 = v27;
    v25 = v7;
    v22 = [v29 initWithURL:v28];

    goto LABEL_14;
  }

  if (v23 | v19)
  {
    v22 = objc_opt_new();
    [v22 setContentType:v23];
    [v22 setBundleIdentifier:v19];
    goto LABEL_15;
  }

  v30 = v35;
  if (v37)
  {
    v22 = objc_opt_new();
    [v22 setIsTemplate:1];
    [v22 setSymbolName:v37];
    [v22 setPunchThroughBackground:1];
    goto LABEL_16;
  }

  if (v35)
  {
    v22 = [v35 copy];
    goto LABEL_16;
  }

  v31 = v38;
  if (v38 != 0)
  {
    v33 = objc_opt_new();
    v22 = v33;
    if (v38)
    {
      v34 = v38;
    }

    else
    {
      v34 = *(&v38 + 1);
    }

    [v33 setBundleIdentifier:{v34, 0}];
    goto LABEL_16;
  }

  v22 = 0;
LABEL_17:

  return v22;
}

- (id)buildTitle
{
  result = [(SPUISResultBuilder *)self result];
  v3 = [result valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
  v4 = [result valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
  v5 = [result valueForAttribute:*MEMORY[0x277CC3140] withType:objc_opt_class()];
  title = [result title];
  text = [title text];

  if ([v3 length])
  {
    v8 = v3;
  }

  else if ([v4 length])
  {
    v8 = v4;
  }

  else if ([v5 length])
  {
    v8 = v5;
  }

  else
  {
    if (text)
    {
      v9 = text;
      goto LABEL_8;
    }

    v8 = [SPUISUtilities localizedStringForKey:@"NO_TITLE"];
  }

  v9 = v8;
  if (v8)
  {
LABEL_8:
    v10 = MEMORY[0x277D4C598];
    v11 = [objc_opt_class() whiteSpaceCondensedStringForString:v9];
    v12 = [v10 textWithString:v11];

    goto LABEL_10;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)buildSecondaryTitle
{
  result = [(SPUISResultBuilder *)self result];
  secondaryTitle = [result secondaryTitle];
  if (secondaryTitle)
  {
    v5 = MEMORY[0x277D4C3A0];
    result2 = [(SPUISResultBuilder *)self result];
    secondaryTitle2 = [result2 secondaryTitle];
    v8 = [v5 textWithString:secondaryTitle2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)buildSecondaryTitleIsDetached
{
  result = [(SPUISResultBuilder *)self result];
  isSecondaryTitleDetached = [result isSecondaryTitleDetached];

  return isSecondaryTitleDetached;
}

- (id)buildSecondaryTitleImage
{
  result = [(SPUISResultBuilder *)self result];
  secondaryTitleImage = [result secondaryTitleImage];

  return secondaryTitleImage;
}

- (id)buildDescriptions
{
  result = [(SPUISResultBuilder *)self result];
  v3 = [result valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
  v4 = [result valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
  descriptions = [result descriptions];
  v6 = objc_opt_new();
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    v8 = [MEMORY[0x277D4C598] textWithString:?];
    [v6 addObject:v8];
  }

  else if ([descriptions count])
  {
    [v6 addObjectsFromArray:descriptions];
  }

  if ([v6 count])
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (id)buildFootnote
{
  result = [(SPUISResultBuilder *)self result];
  footnote = [result footnote];
  if (footnote)
  {
    v5 = MEMORY[0x277D4C598];
    result2 = [(SPUISResultBuilder *)self result];
    footnote2 = [result2 footnote];
    v8 = [v5 textWithString:footnote2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)buildAction
{
  result = [(SPUISResultBuilder *)self result];
  sectionBundleIdentifier = [result sectionBundleIdentifier];
  v4 = MEMORY[0x277CBEB98];
  contentTypeTree = [result contentTypeTree];
  v6 = [v4 setWithArray:contentTypeTree];

  identifier = [*MEMORY[0x277CE1D08] identifier];
  v34 = v6;
  if ([v6 containsObject:identifier])
  {
    v8 = 1;
  }

  else
  {
    identifier2 = [*MEMORY[0x277CE1E28] identifier];
    v8 = [v6 containsObject:identifier2];
  }

  if ([sectionBundleIdentifier isEqual:@"com.apple.Music"])
  {
    v10 = 1;
  }

  else
  {
    v10 = [sectionBundleIdentifier isEqual:@"com.apple.TV"];
  }

  v35 = sectionBundleIdentifier;
  v11 = [result valueForAttribute:*MEMORY[0x277CC3208] withType:objc_opt_class()];
  v12 = v11;
  if ((v8 & v10) != 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v14;
  if (v14)
  {
    v16 = [v14 hasPrefix:@"x-media-library://"] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = [result valueForAttribute:*MEMORY[0x277CC2EB8] withType:objc_opt_class()];
  firstObject = [v17 firstObject];

  v19 = [result valueForAttribute:*MEMORY[0x277CC3180] withType:objc_opt_class()];
  bOOLValue = [v19 BOOLValue];

  v21 = [result valueForAttribute:*MEMORY[0x277CC2D18] withType:objc_opt_class()];
  v22 = [result valueForAttribute:*MEMORY[0x277CC2D50] withType:objc_opt_class()];
  v23 = [result valueForAttribute:*MEMORY[0x277CC3178] withType:objc_opt_class()];
  bOOLValue2 = [v23 BOOLValue];

  action = [result action];
  if (![v15 length] || (v16 & 1) != 0)
  {
    if ((([firstObject length] != 0) & bOOLValue) == 1)
    {
      v26 = objc_opt_new();
      [v26 setPhoneNumber:firstObject];
    }

    else
    {
      v26 = 0;
    }

    if (v21)
    {
      v28 = v22 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28;
    v27 = v35;
    if ((v29 & bOOLValue2) == 1)
    {
      v30 = objc_opt_new();
      [v21 floatValue];
      [v30 setLat:v31];
      [v22 floatValue];
      [v30 setLng:v32];
      if (!v26)
      {
        v26 = objc_opt_new();
      }

      [v26 setLocation:v30];
    }
  }

  else
  {
    v26 = objc_opt_new();
    [v26 setLocalMediaIdentifier:v15];
    v27 = v35;
  }

  if (!v26 && action)
  {
    v26 = action;
  }

  return v26;
}

- (id)buildHighlightedMatchedTextWithTitle:(id)title headTruncation:(BOOL)truncation
{
  truncationCopy = truncation;
  v25 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  queryContext = [(SPUISResultBuilder *)self queryContext];
  searchString = [queryContext searchString];
  v9 = [searchString length];

  if (v9)
  {
    queryContext2 = [(SPUISResultBuilder *)self queryContext];
    evaluator = [queryContext2 evaluator];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    matchedStrings = [(SPUISResultBuilder *)self matchedStrings];
    v13 = [matchedStrings countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(matchedStrings);
          }

          v17 = getHighlightedRichText(*(*(&v20 + 1) + 8 * i), evaluator, titleCopy, truncationCopy);
          if (v17)
          {
            v9 = v17;
            goto LABEL_12;
          }
        }

        v14 = [matchedStrings countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)buildHighlightedTextWithString:(id)string includeQuotes:(BOOL)quotes
{
  quotesCopy = quotes;
  v39[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  queryContext = [(SPUISResultBuilder *)self queryContext];
  searchString = [queryContext searchString];
  precomposedStringWithCompatibilityMapping = [searchString precomposedStringWithCompatibilityMapping];
  v10 = precomposedStringWithCompatibilityMapping;
  v11 = &stru_287C50EE8;
  if (precomposedStringWithCompatibilityMapping)
  {
    v11 = precomposedStringWithCompatibilityMapping;
  }

  v12 = v11;

  matchedStrings = [(SPUISResultBuilder *)self matchedStrings];
  if ([matchedStrings containsObject:stringCopy])
  {
    v14 = 1;
  }

  else
  {
    precomposedStringWithCompatibilityMapping2 = [stringCopy precomposedStringWithCompatibilityMapping];
    v14 = [precomposedStringWithCompatibilityMapping2 localizedStandardContainsString:v12];
  }

  v16 = MEMORY[0x277D4C598];
  if (quotesCopy)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [SPUISUtilities localizedStringForKey:@"QUOTED_TRANSCRIPT_FORMAT"];
    stringCopy = [v17 stringWithFormat:v18, stringCopy];
    v20 = [v16 textWithString:stringCopy];

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = [MEMORY[0x277D4C598] textWithString:stringCopy];
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  if ([(__CFString *)v12 length]>= 4)
  {
    queryContext2 = [(SPUISResultBuilder *)self queryContext];
    evaluator = [queryContext2 evaluator];

    v23 = getHighlightedRichText(stringCopy, evaluator, 0, 1);
    formattedTextPieces = [v23 formattedTextPieces];
    v25 = [formattedTextPieces count];

    if (v25)
    {
      v26 = v23;

      if (quotesCopy)
      {
        v27 = MEMORY[0x277D4C3A0];
        v38 = [SPUISUtilities localizedStringForKey:@"OPEN_QUOTE"];
        v37 = [v27 textWithString:v38];
        v39[0] = v37;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
        formattedTextPieces2 = [v26 formattedTextPieces];
        v29 = [v36 arrayByAddingObjectsFromArray:formattedTextPieces2];
        v30 = MEMORY[0x277D4C3A0];
        v31 = [SPUISUtilities localizedStringForKey:@"CLOSED_QUOTE"];
        v32 = [v30 textWithString:v31];
        v33 = [v29 arrayByAddingObject:v32];
        [v26 setFormattedTextPieces:v33];
      }
    }

    else
    {
      v26 = v20;
    }

    v20 = v26;
  }

LABEL_16:

  v34 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)buildCommand
{
  result = [(SPUISResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x277CC3098] withType:objc_opt_class()];

  result2 = [(SPUISResultBuilder *)self result];
  v6 = [result2 valueForAttribute:*MEMORY[0x277CC3230] withType:objc_opt_class()];

  if (v4)
  {
    filePath = objc_opt_new();
    [filePath setIntentMessageData:v4];
    [filePath setIsRunnableWorkflow:1];
    result3 = [(SPUISResultBuilder *)self result];
    v9 = [result3 valueForAttribute:*MEMORY[0x277CC3080] withType:objc_opt_class()];
    [filePath setCommandDetail:v9];

    result4 = [(SPUISResultBuilder *)self result];
    applicationBundleIdentifier = [result4 valueForAttribute:*MEMORY[0x277CC3090] withType:objc_opt_class()];
    [filePath setBiomeStreamIdentifier:applicationBundleIdentifier];
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  result5 = [(SPUISResultBuilder *)self result];
  contentType = [result5 contentType];
  v14 = [contentType isEqualToString:@"com.apple.siri.interaction"];

  if (v14)
  {
    filePath = objc_opt_new();
    result4 = [(SPUISResultBuilder *)self result];
    applicationBundleIdentifier = [result4 valueForAttribute:*MEMORY[0x277CC2A80] withType:objc_opt_class()];
    [filePath setVoiceShortcutIdentifier:applicationBundleIdentifier];
    goto LABEL_7;
  }

  if (v6)
  {
    filePath = objc_opt_new();
    [filePath setUserActivityRequiredString:v6];
    result4 = [(SPUISResultBuilder *)self result];
    applicationBundleIdentifier = [result4 applicationBundleIdentifier];
    [filePath setApplicationBundleIdentifier:applicationBundleIdentifier];
    goto LABEL_7;
  }

  coreSpotlightId = [(SPUISResultBuilder *)self coreSpotlightId];
  if (coreSpotlightId)
  {
    v17 = coreSpotlightId;
    resultAppBundleId = [(SPUISResultBuilder *)self resultAppBundleId];
    if (resultAppBundleId)
    {
      v19 = resultAppBundleId;
      resultAppBundleId2 = [(SPUISResultBuilder *)self resultAppBundleId];
      v21 = [resultAppBundleId2 isEqualToString:@"com.apple.CalendarUI"];

      if ((v21 & 1) == 0)
      {
        filePath = objc_opt_new();
        coreSpotlightId2 = [(SPUISResultBuilder *)self coreSpotlightId];
        [filePath setCoreSpotlightIdentifier:coreSpotlightId2];

        result4 = [(SPUISResultBuilder *)self resultAppBundleId];
        [filePath setApplicationBundleIdentifier:result4];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  filePath = [(SPUISResultBuilder *)self filePath];

  if (filePath)
  {
    v23 = MEMORY[0x277D4C550];
    v24 = MEMORY[0x277CBEBC0];
    filePath2 = [(SPUISResultBuilder *)self filePath];
    v26 = [v24 fileURLWithPath:filePath2];
    result4 = [v23 punchoutWithURL:v26];

    filePath = objc_opt_new();
    [filePath setPunchout:result4];
    goto LABEL_8;
  }

LABEL_9:

  return filePath;
}

- (BOOL)isToolParameterFilling
{
  queryContext = [(SPUISResultBuilder *)self queryContext];
  v3 = [queryContext queryKind] == 15;

  return v3;
}

- (id)buildFillToolParameterCommand
{
  buildAppEntityAnnotation = [(SPUISResultBuilder *)self buildAppEntityAnnotation];
  if (buildAppEntityAnnotation)
  {
    v3 = objc_opt_new();
    [v3 setEntity:buildAppEntityAnnotation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buildAppEntityAnnotation
{
  result = [(SPUISResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x277CC2430] withType:objc_opt_class()];

  result2 = [(SPUISResultBuilder *)self result];
  v6 = [result2 valueForAttribute:*MEMORY[0x277CC2418] withType:objc_opt_class()];

  if ([v4 length] && objc_msgSend(v6, "length"))
  {
    v7 = objc_opt_new();
    [v7 setTypeIdentifer:v4];
    [v7 setEntityIdentifer:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsClearingBackendData
{
  queryContext = [(SPUISResultBuilder *)self queryContext];
  if (queryContext)
  {
    queryContext2 = [(SPUISResultBuilder *)self queryContext];
    retainBackendData = [queryContext2 retainBackendData];

    v6 = retainBackendData ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)stringForSFRichText:(id)text
{
  v22 = *MEMORY[0x277D85DE8];
  textCopy = text;
  text = [textCopy text];
  v5 = [text mutableCopy];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_opt_new();

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    formattedTextPieces = [textCopy formattedTextPieces];
    v8 = [formattedTextPieces countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(formattedTextPieces);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          text2 = [v12 text];
          if ([text2 length])
          {
            text3 = [v12 text];
            [v6 appendString:text3];
          }
        }

        v9 = [formattedTextPieces countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)isSpotlight
{
  if (isSpotlight_onceToken != -1)
  {
    +[SPUISResultBuilder isSpotlight];
  }

  return isSpotlight_isSpotlight;
}

void __33__SPUISResultBuilder_isSpotlight__block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSpotlight_isSpotlight = [v0 isEqualToString:@"com.apple.Spotlight"];
}

+ (BOOL)isSearchToolClient
{
  if (isSearchToolClient_onceToken != -1)
  {
    +[SPUISResultBuilder isSearchToolClient];
  }

  return isSearchToolClient_isSearchToolClient;
}

void __40__SPUISResultBuilder_isSearchToolClient__block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSearchToolClient_isSearchToolClient = [v0 hasPrefix:@"com.apple.omniSearch"];
}

- (void)buildPunchouts
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&dword_26B882000, a3, OS_LOG_TYPE_FAULT, "URLString present but invalid in %@: %@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end