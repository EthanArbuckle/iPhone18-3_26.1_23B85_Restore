@interface SPUISResultBuilder
+ (BOOL)isSearchToolClient;
+ (BOOL)isSpotlight;
+ (BOOL)supportsResult:(id)a3;
+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)a3;
+ (Class)resultBuilderClassForResult:(id)a3 preferAppVendedView:(BOOL)a4;
+ (id)fetchAttributes;
+ (id)getWhitespaceCharacterAtIndex:(unint64_t)a3 ofString:(id)a4;
+ (id)resultForItem:(id)a3;
+ (id)richTextsFromStrings:(id)a3;
+ (id)stringForSFRichText:(id)a3;
+ (id)whiteSpaceCondensedStringForString:(id)a3;
+ (void)condenseWhiteSpaceForDescriptions:(id)a3;
+ (void)condenseWhiteSpaceForRichText:(id)a3;
- (BOOL)buildSecondaryTitleIsDetached;
- (BOOL)isToolParameterFilling;
- (BOOL)supportsClearingBackendData;
- (SPUISResultBuilder)initWithResult:(id)a3;
- (id)buildAction;
- (id)buildAppEntityAnnotation;
- (id)buildAppTopHitEntityCardSection;
- (id)buildBadgingImageWithThumbnail:(id)a3;
- (id)buildCommand;
- (id)buildCompactCard;
- (id)buildCompactCardSection;
- (id)buildCompactCardSections;
- (id)buildDescriptions;
- (id)buildDetailedRowCardSection;
- (id)buildFillToolParameterCommand;
- (id)buildFootnote;
- (id)buildHighlightedMatchedTextWithTitle:(id)a3 headTruncation:(BOOL)a4;
- (id)buildHighlightedTextWithString:(id)a3 includeQuotes:(BOOL)a4;
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
- (void)buildDefaultPropertiesForCardSection:(id)a3;
- (void)buildPunchouts;
- (void)setMaxLinesForDescriptions:(id)a3;
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

+ (id)resultForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleID];
  v5 = [v3 uniqueIdentifier];
  v6 = [v3 protection];
  v7 = [v3 attributeSet];
  v8 = [v7 attributeDictionary];
  v9 = [v8 mutableCopy];

  v10 = [v3 attributeSet];

  v11 = [v10 customAttributeDictionary];
  [v9 addEntriesFromDictionary:v11];

  v12 = [objc_alloc(MEMORY[0x277D65850]) initWithIdentifier:v5 bundleIdentifier:v4 protectionClass:v6 attributes:v9 type:2 completion:0];

  return v12;
}

+ (Class)resultBuilderClassForResult:(id)a3 preferAppVendedView:(BOOL)a4
{
  v4 = a4;
  v32[43] = *MEMORY[0x277D85DE8];
  v5 = a3;
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
      if ([v11 supportsResult:{v5, v19}])
      {
        if (v11 != objc_opt_class() || v4)
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
    v16 = [v5 contentType];
    v17 = v16;
    v18 = @"NO";
    *buf = 138478595;
    v24 = v5;
    v25 = 2112;
    if (v4)
    {
      v18 = @"YES";
    }

    v26 = v16;
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

+ (BOOL)supportsResult:(id)a3
{
  v4 = [a3 sectionBundleIdentifier];
  v5 = [a1 bundleId];
  v6 = [v4 isEqual:v5];

  return v6;
}

+ (id)richTextsFromStrings:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)a3
{
  v3 = a3;
  v4 = +[SPUISUtilities isMacOS];
  v5 = 36.0;
  if (v3)
  {
    v5 = 20.0;
  }

  v6 = 64.0;
  if (v3)
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

+ (id)getWhitespaceCharacterAtIndex:(unint64_t)a3 ofString:(id)a4
{
  v4 = [a4 characterAtIndex:a3];
  v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  if ([v5 characterIsMember:v4])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v4];
  }

  else
  {
    v6 = &stru_287C50EE8;
  }

  return v6;
}

+ (id)whiteSpaceCondensedStringForString:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  if ([v4 length] && objc_msgSend(v4, "rangeOfCharacterFromSet:", v5) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 componentsSeparatedByCharactersInSet:v5];
    v8 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_6];
    v9 = [v7 filteredArrayUsingPredicate:v8];

    v10 = [a1 getWhitespaceCharacterAtIndex:0 ofString:v4];
    v11 = [a1 getWhitespaceCharacterAtIndex:objc_msgSend(v4 ofString:{"length") - 1, v4}];
    v12 = MEMORY[0x277CCACA8];
    v13 = [v9 componentsJoinedByString:@" "];
    v6 = [v12 stringWithFormat:@"%@%@%@", v10, v13, v11];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

+ (void)condenseWhiteSpaceForRichText:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 formattedTextPieces];

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v3 formattedTextPieces];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = objc_opt_class();
          v12 = [v10 text];
          v13 = [v11 whiteSpaceCondensedStringForString:v12];
          [v10 setText:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    goto LABEL_12;
  }

  v14 = [v3 text];
  v15 = [v14 length];

  if (v15)
  {
    v16 = objc_opt_class();
    v5 = [v3 text];
    v17 = [v16 whiteSpaceCondensedStringForString:v5];
    [v3 setText:v17];

LABEL_12:
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)condenseWhiteSpaceForDescriptions:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [a1 condenseWhiteSpaceForRichText:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (SPUISResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
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
  v9 = [v4 valueForAttribute:v8 withType:objc_opt_class()];
  [(SPUISResultBuilder *)v5 setResult:v4];
  v10 = [v9 firstObject];
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
    v12 = [v4 valueForAttribute:*MEMORY[0x277CC2A80] withType:objc_opt_class()];
    [(SPUISResultBuilder *)v5 setCoreSpotlightId:v12];
  }

  else
  {
    [(SPUISResultBuilder *)v5 setCoreSpotlightId:0];
  }

  if ([v4 hasTextContentMatch])
  {
    [(SPUISResultBuilder *)v5 setHasTextContentMatch:1];
  }

  else
  {
    v13 = [v4 valueForAttribute:*MEMORY[0x277CC3370] withType:objc_opt_class()];
    -[SPUISResultBuilder setHasTextContentMatch:](v5, "setHasTextContentMatch:", [v13 BOOLValue]);
  }

  v14 = [(SPUISResultBuilder *)v5 result];
  v15 = [v14 relatedAppIdentifier];
  if (v15)
  {
    [(SPUISResultBuilder *)v5 setRelatedAppBundleIdentifier:v15];
  }

  else
  {
    v16 = [v4 valueForAttribute:*MEMORY[0x277CC3038] withType:objc_opt_class()];
    [(SPUISResultBuilder *)v5 setRelatedAppBundleIdentifier:v16];
  }

  v17 = [(SPUISResultBuilder *)v5 result];
  v18 = [v17 lastUsedDate];
  if (v18)
  {
    [(SPUISResultBuilder *)v5 setLastUsedDate:v18];
  }

  else
  {
    v19 = [v4 valueForAttribute:*MEMORY[0x277CC2D10] withType:objc_opt_class()];
    [(SPUISResultBuilder *)v5 setLastUsedDate:v19];
  }

  v20 = [(SPUISResultBuilder *)v5 result];
  v21 = [v20 contentType];

  if (v21)
  {
    v22 = [(SPUISResultBuilder *)v5 result];
    v23 = [v22 uniformContentType];
    [(SPUISResultBuilder *)v5 setUniformType:v23];
  }

  if (_os_feature_enabled_impl())
  {
    v24 = [(SPUISResultBuilder *)v5 uniformType];
    if (v24)
    {
LABEL_25:

      goto LABEL_26;
    }

    v25 = [v4 sectionBundleIdentifier];
    v26 = [v25 isEqualToString:@"com.apple.spotlight.events"];

    if (v26)
    {
      v24 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.spotlight.events"];
      [(SPUISResultBuilder *)v5 setUniformType:v24];
      goto LABEL_25;
    }
  }

LABEL_26:
  v27 = [v4 valueForAttribute:*MEMORY[0x277CC24E8] withType:objc_opt_class()];
  v28 = [v27 unsignedIntValue];

  if (v28)
  {
    v29 = objc_opt_new();
    [v29 setBlueComponent:v28 / 255.0];
    [v29 setGreenComponent:BYTE1(v28) / 255.0];
    [v29 setRedComponent:BYTE2(v28) / 255.0];
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

- (void)setMaxLinesForDescriptions:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 maxLines];
        if (!v10)
        {
          v10 = [(SPUISResultBuilder *)self numberOfLinesForDescriptions];
        }

        [v9 setMaxLines:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)resultAppBundleId
{
  v2 = [(SPUISResultBuilder *)self result];
  v3 = [v2 applicationBundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [objc_opt_class() bundleId];
  }

  v6 = v5;

  return v6;
}

- (id)buildResult
{
  v3 = [(SPUISResultBuilder *)self buildPreviewButtonItems];
  v4 = [(SPUISResultBuilder *)self buildAppEntityAnnotation];
  v5 = [(SPUISResultBuilder *)self result];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  v9 = [(SPUISResultBuilder *)self buildInlineCard];
  [v8 setInlineCard:v9];

  v10 = [v8 inlineCard];
  v11 = [v10 cardSections];
  v12 = [v11 firstObject];
  [v12 setPreviewButtonItems:v3];

  v13 = [v8 inlineCard];
  v14 = [v13 cardSections];
  v15 = [v14 firstObject];
  [v15 setAppEntityAnnotation:v4];

  if ((SSSpotlightUIPlusEnabled() & 1) == 0)
  {
    v16 = [(SPUISResultBuilder *)self buildCompactCard];
    [v8 setCompactCard:v16];

    v17 = [v8 compactCard];
    v18 = [v17 cardSections];
    v19 = [v18 firstObject];
    [v19 setPreviewButtonItems:v3];

    v20 = [v8 compactCard];
    v21 = [v20 cardSections];
    v22 = [v21 firstObject];
    [v22 setAppEntityAnnotation:v4];
  }

  return v8;
}

- (id)buildCompactCard
{
  v2 = [(SPUISResultBuilder *)self buildCompactCardSections];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setCardSections:v2];
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
  v3 = [(SPUISResultBuilder *)self buildInlineCardSections];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setCardSections:v3];
    v5 = [(SPUISResultBuilder *)self isTopHit];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
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
          if (v5)
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
  v3 = [(SPUISResultBuilder *)self buildCompactCardSection];
  v4 = [v3 descriptions];
  [(SPUISResultBuilder *)self setMaxLinesForDescriptions:v4];

  v5 = objc_opt_class();
  v6 = [v3 descriptions];
  [v5 condenseWhiteSpaceForDescriptions:v6];

  v7 = [v3 thumbnail];
  v8 = [v7 badgingImage];

  v9 = [v3 thumbnail];
  [v9 setBadgingImage:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setThumbnail:v8];
  }

  if (v3)
  {
    v13[0] = v3;
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
  v3 = [(SPUISResultBuilder *)self buildInlineCardSection];
  v4 = [v3 descriptions];
  [(SPUISResultBuilder *)self setMaxLinesForDescriptions:v4];

  v5 = objc_opt_class();
  v6 = [v3 descriptions];
  [v5 condenseWhiteSpaceForDescriptions:v6];

  if (v3)
  {
    v10[0] = v3;
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
  v2 = [(SPUISResultBuilder *)self buildDetailedRowCardSection];
  [v2 setShouldUseCompactDisplay:1];
  v3 = objc_opt_class();
  v4 = [v2 thumbnail];
  [v3 setDefaultSizeForThumbnail:v4 isCompact:1];

  return v2;
}

- (id)buildInlineCardSection
{
  v2 = [(SPUISResultBuilder *)self buildDetailedRowCardSection];
  v3 = objc_opt_class();
  v4 = [v2 thumbnail];
  [v3 setDefaultSizeForThumbnail:v4 isCompact:0];

  return v2;
}

- (id)buildHorizontallyScrollingCardSection
{
  v3 = [(SPUISResultBuilder *)self subclassBuildHorizontallyScrollingCardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    v5 = [v3 thumbnail];
    [v4 setDefaultSizeForThumbnail:v5 isCompact:0];
  }

  [(SPUISResultBuilder *)self buildDefaultPropertiesForCardSection:v3];

  return v3;
}

- (id)buildAppTopHitEntityCardSection
{
  v3 = objc_opt_new();
  v4 = [(SPUISResultBuilder *)self buildTitle];
  [v3 setTitle:v4];

  v5 = [v3 title];
  [v5 setMaxLines:2];

  v6 = [(SPUISResultBuilder *)self buildThumbnail];
  [v3 setThumbnail:v6];

  v7 = [v3 thumbnail];
  [v7 setBadgingImage:0];

  v8 = [(SPUISResultBuilder *)self buildFootnote];
  [v3 setFootnote:v8];

  v9 = [v3 footnote];
  [v9 setMaxLines:1];

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
  v11 = [(SPUISResultBuilder *)self buildAppEntityAnnotation];
  [v3 setAppEntityAnnotation:v11];

  return v3;
}

- (void)buildDefaultPropertiesForCardSection:(id)a3
{
  v21 = a3;
  if ([(SPUISResultBuilder *)self isToolParameterFilling])
  {
    v4 = [(SPUISResultBuilder *)self buildFillToolParameterCommand];
    [v21 setCommand:v4];

    [v21 setSecondaryCommand:0];
    goto LABEL_18;
  }

  v5 = [(SPUISResultBuilder *)self queryContext];
  v6 = [v5 queryKind];

  v7 = [(SPUISResultBuilder *)self buildSecondaryCommand];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(SPUISResultBuilder *)self queryContext];
    v9 = [v8 searchStringForScopedSearch];

    if (v9)
    {
      v10 = [(SPUISResultBuilder *)self queryContext];
      v11 = [v10 searchStringForScopedSearch];
      [v7 setSearchString:v11];
    }
  }

  v12 = [v21 command];
  v13 = v12;
  if (v12 || v6 == 16)
  {
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = v7;
    }

    [v21 setCommand:v15];

    if (v6 == 16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = [(SPUISResultBuilder *)self buildCommand];
    [v21 setCommand:v14];
  }

  v16 = [v21 secondaryCommand];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v7;
  }

  [v21 setSecondaryCommand:v18];

LABEL_17:
LABEL_18:
  v19 = [v21 previewCommand];
  if (v19)
  {
    [v21 setPreviewCommand:v19];
  }

  else
  {
    v20 = [(SPUISResultBuilder *)self buildPreviewCommand];
    [v21 setPreviewCommand:v20];
  }
}

- (id)buildDetailedRowCardSection
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = [(SPUISResultBuilder *)self buildPunchouts];
  [v4 setPunchoutOptions:v5];

  v6 = [(SPUISResultBuilder *)self buildThumbnail];
  [v4 setThumbnail:v6];

  v7 = [v4 thumbnail];
  v8 = [(SPUISResultBuilder *)self buildBadgingImageWithThumbnail:v7];
  v9 = [v4 thumbnail];
  [v9 setBadgingImage:v8];

  v10 = [(SPUISResultBuilder *)self buildTrailingThumbnail];
  [v4 setTrailingThumbnail:v10];

  v11 = [(SPUISResultBuilder *)self buildTitle];
  [v4 setTitle:v11];

  v12 = [(SPUISResultBuilder *)self buildSecondaryTitle];
  [v4 setSecondaryTitle:v12];

  v13 = [v4 secondaryTitle];
  v14 = [v13 maxLines];
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v4 secondaryTitle];
  [v16 setMaxLines:v15];

  v17 = [(SPUISResultBuilder *)self buildSecondaryTitleImage];
  [v4 setSecondaryTitleImage:v17];

  [v4 setIsSecondaryTitleDetached:{-[SPUISResultBuilder buildSecondaryTitleIsDetached](self, "buildSecondaryTitleIsDetached")}];
  v58 = self;
  v18 = [(SPUISResultBuilder *)self buildDescriptions];
  v59 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v19 = v18;
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
        v2 = [v24 text];
        v25 = [v4 title];
        v26 = [v25 text];
        v27 = [v2 isEqualToString:v26];

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
  v29 = [v4 title];
  v30 = [v29 maxLines];
  v31 = v30;
  if (!v30)
  {
    v2 = [v4 descriptions];
    if (v2)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }
  }

  v32 = [v4 title];
  [v32 setMaxLines:v31];

  if (!v30)
  {
  }

  v33 = [(SPUISResultBuilder *)v58 buildFootnote];
  [v4 setFootnote:v33];

  v34 = [v4 footnote];
  v35 = [v34 maxLines];
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = 2;
  }

  v37 = [v4 footnote];
  [v37 setMaxLines:v36];

  v38 = [(SPUISResultBuilder *)v58 buildTrailingTopText];
  [v4 setTrailingTopText:v38];

  v39 = [v4 trailingTopText];
  v40 = [v39 maxLines];
  if (v40 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  v42 = [v4 trailingTopText];
  [v42 setMaxLines:v41];

  v43 = [(SPUISResultBuilder *)v58 buildTrailingMiddleText];
  [v4 setTrailingMiddleText:v43];

  v44 = [v4 trailingMiddleText];
  v45 = [v44 maxLines];
  if (v45 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = v45;
  }

  v47 = [v4 trailingMiddleText];
  [v47 setMaxLines:v46];

  v48 = [(SPUISResultBuilder *)v58 buildTrailingBottomText];
  [v4 setTrailingBottomText:v48];

  v49 = [v4 trailingBottomText];
  v50 = [v49 maxLines];
  if (v50 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v50;
  }

  v52 = [v4 trailingBottomText];
  [v52 setMaxLines:v51];

  if ([(SPUISResultBuilder *)v58 isToolParameterFilling])
  {
    [v4 setAction:0];
  }

  else
  {
    v53 = [(SPUISResultBuilder *)v58 buildAction];
    [v4 setAction:v53];
  }

  if ([(SPUISResultBuilder *)v58 isToolParameterFilling])
  {
    [v4 setButtonItems:0];
  }

  else
  {
    v54 = [(SPUISResultBuilder *)v58 buildButtonItems];
    [v4 setButtonItems:v54];
  }

  [v4 setPreventThumbnailImageScaling:{-[SPUISResultBuilder buildPreventThumbnailImageScaling](v58, "buildPreventThumbnailImageScaling")}];
  [v4 setButtonItemsAreTrailing:{-[SPUISResultBuilder buildButtonItemsAreTrailing](v58, "buildButtonItemsAreTrailing")}];
  v55 = [v4 descriptions];
  [(SPUISResultBuilder *)v58 setMaxLinesForDescriptions:v55];

  [(SPUISResultBuilder *)v58 buildDefaultPropertiesForCardSection:v4];
  v56 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)buildBadgingImageWithThumbnail:(id)a3
{
  v4 = a3;
  v5 = [(SPUISResultBuilder *)self bundleIdentifierForAppIconBadgeImage];
  v6 = v5;
  if (!v5 || ([v5 isEqualToString:@"com.apple.MobileAddressBook"] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v4, "bundleIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", v6), v8, (v9 & 1) != 0))
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
  v2 = [(SPUISResultBuilder *)self result];
  v3 = [v2 applicationBundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [objc_opt_class() bundleId];
  }

  v6 = v5;

  return v6;
}

- (id)buildPreviewButtonItems
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISResultBuilder *)self result];
  v5 = [v4 applicationBundleIdentifier];

  v6 = [(SPUISResultBuilder *)self result];
  v28 = [v6 applicationBundleIdentifier];

  v7 = [(SPUISResultBuilder *)self coreSpotlightId];
  v8 = [(SPUISResultBuilder *)self result];
  v9 = [v8 valueForAttribute:*MEMORY[0x277CC23B8] withType:objc_opt_class()];

  if ([v9 count])
  {
    v10 = objc_opt_new();
    [v10 setActionItemTypes:v9];
    [v10 setApplicationBundleIdentifier:v5];
    [v10 setCoreSpotlightIdentifier:v7];
    [v3 addObject:v10];
  }

  v11 = [(SPUISResultBuilder *)self result];
  v12 = [v11 itemProviderDataTypes];

  v13 = [(SPUISResultBuilder *)self result];
  v14 = [v13 itemProviderFileTypes];

  v15 = [(SPUISResultBuilder *)self result];
  v16 = [v15 valueForAttribute:*MEMORY[0x277CC30E8] withType:objc_opt_class()];

  v30[0] = @"com.apple.mobilemail";
  v30[1] = @"com.apple.mobilenotes";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v18 = [v17 containsObject:v5];

  if (v12 || v14 || v16)
  {
    if ((v18 & 1) != 0 || SSSectionIsSyndicatedPhotos())
    {
      v19 = objc_opt_new();
      v20 = objc_opt_new();
      [v20 setApplicationBundleIdentifier:v5];
      [v20 setCoreSpotlightIdentifier:v7];
      [v20 setDataProviderTypeIdentifiers:v12];
      [v20 setFileProviderTypeIdentifiers:v14];
      if (!v14 && v16)
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
      [v24 setApplicationBundleIdentifier:v5];
      [v24 setCoreSpotlightIdentifier:v7];
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
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 valueForAttribute:*MEMORY[0x277CC2FE8] withType:objc_opt_class()];
  v5 = [v3 valueForAttribute:*MEMORY[0x277CC24F0] withType:objc_opt_class()];
  v6 = [v5 BOOLValue];

  v7 = [v3 valueForAttribute:*MEMORY[0x277CC2688] withType:objc_opt_class()];
  v8 = v7;
  if (!v4 && (v6 & 1) == 0 && !v7)
  {
    goto LABEL_12;
  }

  v9 = objc_opt_new();
  [v9 setLabel:v4];
  [v9 setIsRunnableInBackground:v6];
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
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 valueForAttribute:*MEMORY[0x277CC31D0] withType:objc_opt_class()];
  v5 = [v3 valueForAttribute:*MEMORY[0x277CC31C8] withType:objc_opt_class()];
  v36 = [v3 valueForAttribute:*MEMORY[0x277CC31B8] withType:objc_opt_class()];
  v6 = [v3 valueForAttribute:*MEMORY[0x277CC31C0] withType:objc_opt_class()];
  v37 = [v3 valueForAttribute:*MEMORY[0x277CC31D8] withType:objc_opt_class()];
  v7 = [v3 urlValueForAttribute:*MEMORY[0x277CC31E0]];
  v39 = [v3 urlValueForAttribute:*MEMORY[0x277CC26D8]];
  v8 = [v3 thumbnail];
  v9 = [v3 applicationBundleIdentifier];
  v10 = v9;
  v35 = v8;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [objc_opt_class() bundleId];
  }

  *(&v38 + 1) = v11;

  *&v38 = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  v12 = [(SPUISResultBuilder *)self result];
  v13 = [v12 applicationBundleIdentifier];
  if ([v13 isEqualToString:@"com.apple.mobilecal"])
  {
    v14 = [(SPUISResultBuilder *)self result];
    [v14 userActivityRequiredString];
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
  v2 = [(SPUISResultBuilder *)self result];
  v3 = [v2 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
  v4 = [v2 valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
  v5 = [v2 valueForAttribute:*MEMORY[0x277CC3140] withType:objc_opt_class()];
  v6 = [v2 title];
  v7 = [v6 text];

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
    if (v7)
    {
      v9 = v7;
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
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 secondaryTitle];
  if (v4)
  {
    v5 = MEMORY[0x277D4C3A0];
    v6 = [(SPUISResultBuilder *)self result];
    v7 = [v6 secondaryTitle];
    v8 = [v5 textWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)buildSecondaryTitleIsDetached
{
  v2 = [(SPUISResultBuilder *)self result];
  v3 = [v2 isSecondaryTitleDetached];

  return v3;
}

- (id)buildSecondaryTitleImage
{
  v2 = [(SPUISResultBuilder *)self result];
  v3 = [v2 secondaryTitleImage];

  return v3;
}

- (id)buildDescriptions
{
  v2 = [(SPUISResultBuilder *)self result];
  v3 = [v2 valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
  v4 = [v2 valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
  v5 = [v2 descriptions];
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

  else if ([v5 count])
  {
    [v6 addObjectsFromArray:v5];
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
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 footnote];
  if (v4)
  {
    v5 = MEMORY[0x277D4C598];
    v6 = [(SPUISResultBuilder *)self result];
    v7 = [v6 footnote];
    v8 = [v5 textWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)buildAction
{
  v2 = [(SPUISResultBuilder *)self result];
  v3 = [v2 sectionBundleIdentifier];
  v4 = MEMORY[0x277CBEB98];
  v5 = [v2 contentTypeTree];
  v6 = [v4 setWithArray:v5];

  v7 = [*MEMORY[0x277CE1D08] identifier];
  v34 = v6;
  if ([v6 containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [*MEMORY[0x277CE1E28] identifier];
    v8 = [v6 containsObject:v9];
  }

  if ([v3 isEqual:@"com.apple.Music"])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v3 isEqual:@"com.apple.TV"];
  }

  v35 = v3;
  v11 = [v2 valueForAttribute:*MEMORY[0x277CC3208] withType:objc_opt_class()];
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

  v17 = [v2 valueForAttribute:*MEMORY[0x277CC2EB8] withType:objc_opt_class()];
  v18 = [v17 firstObject];

  v19 = [v2 valueForAttribute:*MEMORY[0x277CC3180] withType:objc_opt_class()];
  v20 = [v19 BOOLValue];

  v21 = [v2 valueForAttribute:*MEMORY[0x277CC2D18] withType:objc_opt_class()];
  v22 = [v2 valueForAttribute:*MEMORY[0x277CC2D50] withType:objc_opt_class()];
  v23 = [v2 valueForAttribute:*MEMORY[0x277CC3178] withType:objc_opt_class()];
  v24 = [v23 BOOLValue];

  v25 = [v2 action];
  if (![v15 length] || (v16 & 1) != 0)
  {
    if ((([v18 length] != 0) & v20) == 1)
    {
      v26 = objc_opt_new();
      [v26 setPhoneNumber:v18];
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
    if ((v29 & v24) == 1)
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

  if (!v26 && v25)
  {
    v26 = v25;
  }

  return v26;
}

- (id)buildHighlightedMatchedTextWithTitle:(id)a3 headTruncation:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SPUISResultBuilder *)self queryContext];
  v8 = [v7 searchString];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [(SPUISResultBuilder *)self queryContext];
    v11 = [v10 evaluator];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(SPUISResultBuilder *)self matchedStrings];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = getHighlightedRichText(*(*(&v20 + 1) + 8 * i), v11, v6, v4);
          if (v17)
          {
            v9 = v17;
            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)buildHighlightedTextWithString:(id)a3 includeQuotes:(BOOL)a4
{
  v4 = a4;
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SPUISResultBuilder *)self queryContext];
  v8 = [v7 searchString];
  v9 = [v8 precomposedStringWithCompatibilityMapping];
  v10 = v9;
  v11 = &stru_287C50EE8;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [(SPUISResultBuilder *)self matchedStrings];
  if ([v13 containsObject:v6])
  {
    v14 = 1;
  }

  else
  {
    v15 = [v6 precomposedStringWithCompatibilityMapping];
    v14 = [v15 localizedStandardContainsString:v12];
  }

  v16 = MEMORY[0x277D4C598];
  if (v4)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [SPUISUtilities localizedStringForKey:@"QUOTED_TRANSCRIPT_FORMAT"];
    v19 = [v17 stringWithFormat:v18, v6];
    v20 = [v16 textWithString:v19];

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = [MEMORY[0x277D4C598] textWithString:v6];
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  if ([(__CFString *)v12 length]>= 4)
  {
    v21 = [(SPUISResultBuilder *)self queryContext];
    v22 = [v21 evaluator];

    v23 = getHighlightedRichText(v6, v22, 0, 1);
    v24 = [v23 formattedTextPieces];
    v25 = [v24 count];

    if (v25)
    {
      v26 = v23;

      if (v4)
      {
        v27 = MEMORY[0x277D4C3A0];
        v38 = [SPUISUtilities localizedStringForKey:@"OPEN_QUOTE"];
        v37 = [v27 textWithString:v38];
        v39[0] = v37;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
        v28 = [v26 formattedTextPieces];
        v29 = [v36 arrayByAddingObjectsFromArray:v28];
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
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 valueForAttribute:*MEMORY[0x277CC3098] withType:objc_opt_class()];

  v5 = [(SPUISResultBuilder *)self result];
  v6 = [v5 valueForAttribute:*MEMORY[0x277CC3230] withType:objc_opt_class()];

  if (v4)
  {
    v7 = objc_opt_new();
    [v7 setIntentMessageData:v4];
    [v7 setIsRunnableWorkflow:1];
    v8 = [(SPUISResultBuilder *)self result];
    v9 = [v8 valueForAttribute:*MEMORY[0x277CC3080] withType:objc_opt_class()];
    [v7 setCommandDetail:v9];

    v10 = [(SPUISResultBuilder *)self result];
    v11 = [v10 valueForAttribute:*MEMORY[0x277CC3090] withType:objc_opt_class()];
    [v7 setBiomeStreamIdentifier:v11];
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v12 = [(SPUISResultBuilder *)self result];
  v13 = [v12 contentType];
  v14 = [v13 isEqualToString:@"com.apple.siri.interaction"];

  if (v14)
  {
    v7 = objc_opt_new();
    v10 = [(SPUISResultBuilder *)self result];
    v11 = [v10 valueForAttribute:*MEMORY[0x277CC2A80] withType:objc_opt_class()];
    [v7 setVoiceShortcutIdentifier:v11];
    goto LABEL_7;
  }

  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setUserActivityRequiredString:v6];
    v10 = [(SPUISResultBuilder *)self result];
    v11 = [v10 applicationBundleIdentifier];
    [v7 setApplicationBundleIdentifier:v11];
    goto LABEL_7;
  }

  v16 = [(SPUISResultBuilder *)self coreSpotlightId];
  if (v16)
  {
    v17 = v16;
    v18 = [(SPUISResultBuilder *)self resultAppBundleId];
    if (v18)
    {
      v19 = v18;
      v20 = [(SPUISResultBuilder *)self resultAppBundleId];
      v21 = [v20 isEqualToString:@"com.apple.CalendarUI"];

      if ((v21 & 1) == 0)
      {
        v7 = objc_opt_new();
        v22 = [(SPUISResultBuilder *)self coreSpotlightId];
        [v7 setCoreSpotlightIdentifier:v22];

        v10 = [(SPUISResultBuilder *)self resultAppBundleId];
        [v7 setApplicationBundleIdentifier:v10];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v7 = [(SPUISResultBuilder *)self filePath];

  if (v7)
  {
    v23 = MEMORY[0x277D4C550];
    v24 = MEMORY[0x277CBEBC0];
    v25 = [(SPUISResultBuilder *)self filePath];
    v26 = [v24 fileURLWithPath:v25];
    v10 = [v23 punchoutWithURL:v26];

    v7 = objc_opt_new();
    [v7 setPunchout:v10];
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (BOOL)isToolParameterFilling
{
  v2 = [(SPUISResultBuilder *)self queryContext];
  v3 = [v2 queryKind] == 15;

  return v3;
}

- (id)buildFillToolParameterCommand
{
  v2 = [(SPUISResultBuilder *)self buildAppEntityAnnotation];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setEntity:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buildAppEntityAnnotation
{
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 valueForAttribute:*MEMORY[0x277CC2430] withType:objc_opt_class()];

  v5 = [(SPUISResultBuilder *)self result];
  v6 = [v5 valueForAttribute:*MEMORY[0x277CC2418] withType:objc_opt_class()];

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
  v3 = [(SPUISResultBuilder *)self queryContext];
  if (v3)
  {
    v4 = [(SPUISResultBuilder *)self queryContext];
    v5 = [v4 retainBackendData];

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)stringForSFRichText:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 text];
  v5 = [v4 mutableCopy];

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
    v7 = [v3 formattedTextPieces];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 text];
          if ([v13 length])
          {
            v14 = [v12 text];
            [v6 appendString:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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