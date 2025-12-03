@interface SSResultBuilder
+ (BOOL)isSearchToolClient;
+ (BOOL)isSpotlight;
+ (BOOL)supportsResult:(id)result;
+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)compact;
+ (Class)resultBuilderClassForResult:(id)result preferAppVendedView:(BOOL)view;
+ (id)fetchAttributes;
+ (id)getWhitespaceCharacterAtIndex:(unint64_t)index ofString:(id)string;
+ (id)resultBuilderForItem:(id)item;
+ (id)richTextsFromStrings:(id)strings;
+ (id)stringForSFRichText:(id)text;
+ (id)whiteSpaceCondensedStringForString:(id)string;
+ (void)condenseWhiteSpaceForDescriptions:(id)descriptions;
+ (void)condenseWhiteSpaceForRichText:(id)text;
- (BOOL)buildSecondaryTitleIsDetached;
- (BOOL)isToolParameterFilling;
- (BOOL)supportsClearingBackendData;
- (SSResultBuilder)initWithResult:(id)result;
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
- (void)setMaxLinesForDescriptions:(id)descriptions;
@end

@implementation SSResultBuilder

+ (id)resultBuilderForItem:(id)item
{
  itemCopy = item;
  bundleID = [itemCopy bundleID];
  v5 = +[SSResultBuilder fetchAttributes];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  protection = [itemCopy protection];
  attributeSet = [itemCopy attributeSet];
  attributeDictionary = [attributeSet attributeDictionary];
  v10 = [attributeDictionary mutableCopy];

  attributeSet2 = [itemCopy attributeSet];

  customAttributeDictionary = [attributeSet2 customAttributeDictionary];
  [v10 addEntriesFromDictionary:customAttributeDictionary];

  v13 = [[SFSearchResult_SpotlightExtras alloc] initWithIdentifier:uniqueIdentifier bundleIdentifier:bundleID protectionClass:protection attributes:v10 type:2 completion:0];
  v14 = [SSResultBuilder resultBuilderWithResult:v13];

  return v14;
}

+ (Class)resultBuilderClassForResult:(id)result preferAppVendedView:(BOOL)view
{
  viewCopy = view;
  v32[43] = *MEMORY[0x1E69E9840];
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
  [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:43];
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
  v12 = SSGeneralLog();
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
    _os_log_debug_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_DEBUG, "SSResultBuilder result: %{private}@ withContentType: %@ resolved to class: %@ preferringAppVendedView: %@", buf, 0x2Au);
  }

  v13 = v11;
  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)fetchAttributes
{
  v282 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6964AE8];
  v36[0] = *MEMORY[0x1E6963BC0];
  v36[1] = v2;
  v3 = *MEMORY[0x1E6964750];
  v36[2] = *MEMORY[0x1E6964C38];
  v36[3] = v3;
  v4 = *MEMORY[0x1E69647A8];
  v36[4] = *MEMORY[0x1E6964768];
  v36[5] = v4;
  v5 = *MEMORY[0x1E6964800];
  v37 = *MEMORY[0x1E69647F0];
  v38 = v5;
  v6 = *MEMORY[0x1E6964848];
  v39 = *MEMORY[0x1E6964818];
  v40 = v6;
  v7 = *MEMORY[0x1E6964708];
  v41 = *MEMORY[0x1E6964878];
  v42 = v7;
  v8 = *MEMORY[0x1E6964710];
  v43 = *MEMORY[0x1E6964718];
  v44 = v8;
  v9 = *MEMORY[0x1E6963BF8];
  v45 = *MEMORY[0x1E6963BD0];
  v46 = v9;
  v10 = *MEMORY[0x1E6963C60];
  v47 = *MEMORY[0x1E6963C08];
  v48 = v10;
  v11 = *MEMORY[0x1E6963C78];
  v49 = *MEMORY[0x1E6963C68];
  v50 = v11;
  v12 = *MEMORY[0x1E6963C80];
  v51 = *MEMORY[0x1E6963C58];
  v52 = v12;
  v13 = *MEMORY[0x1E6963C88];
  v53 = *MEMORY[0x1E6963C70];
  v54 = v13;
  v14 = *MEMORY[0x1E6963C98];
  v55 = *MEMORY[0x1E6963C90];
  v56 = v14;
  v15 = *MEMORY[0x1E6963CA8];
  v57 = *MEMORY[0x1E6963CA0];
  v58 = v15;
  v16 = *MEMORY[0x1E6963CF8];
  v59 = *MEMORY[0x1E6963CE8];
  v60 = v16;
  v17 = *MEMORY[0x1E6963D18];
  v61 = *MEMORY[0x1E6963D00];
  v62 = v17;
  v18 = *MEMORY[0x1E6963D60];
  v63 = *MEMORY[0x1E6963D28];
  v64 = v18;
  v19 = *MEMORY[0x1E6963E40];
  v65 = *MEMORY[0x1E6963E30];
  v66 = v19;
  v20 = *MEMORY[0x1E6963E78];
  v67 = *MEMORY[0x1E6963E58];
  v68 = v20;
  v21 = *MEMORY[0x1E6963E88];
  v69 = *MEMORY[0x1E6964290];
  v70 = v21;
  v22 = *MEMORY[0x1E6963EA8];
  v71 = *MEMORY[0x1E6963EA0];
  v72 = v22;
  v23 = *MEMORY[0x1E6963EB8];
  v73 = *MEMORY[0x1E6963EB0];
  v74 = v23;
  v24 = *MEMORY[0x1E6963F28];
  v75 = @"SSAttributeDefinitions";
  v76 = v24;
  v25 = *MEMORY[0x1E6963F98];
  v77 = *MEMORY[0x1E6963F48];
  v78 = v25;
  v26 = *MEMORY[0x1E6963FE8];
  v79 = *MEMORY[0x1E6963FA0];
  v80 = v26;
  v27 = *MEMORY[0x1E6964338];
  v81 = *MEMORY[0x1E69642B8];
  v82 = v27;
  v28 = *MEMORY[0x1E6964330];
  v83 = *MEMORY[0x1E6964328];
  v84 = v28;
  v29 = *MEMORY[0x1E69643E0];
  v85 = *MEMORY[0x1E6964340];
  v86 = v29;
  v87 = *MEMORY[0x1E6964440];
  v88 = @"SSAttributeCalculatorInput";
  v30 = *MEMORY[0x1E69644B0];
  v89 = *MEMORY[0x1E6964490];
  v90 = v30;
  v91 = @"SSAttributeIsCalculation";
  v92 = @"SSAttributeIsCurrencyConversion";
  v31 = *MEMORY[0x1E6964548];
  v93 = *MEMORY[0x1E6964528];
  v94 = v31;
  v95 = *MEMORY[0x1E6964550];
  v96 = *MEMORY[0x1E6964590];
  v97 = *MEMORY[0x1E6964598];
  v98 = *MEMORY[0x1E6964600];
  v99 = *MEMORY[0x1E6964628];
  v100 = @"SSAttributeCalculatorOutput";
  v101 = *MEMORY[0x1E69645D0];
  v102 = *MEMORY[0x1E69646F0];
  v103 = *MEMORY[0x1E6964720];
  v104 = *MEMORY[0x1E6963FC8];
  v105 = *MEMORY[0x1E6964950];
  v106 = *MEMORY[0x1E6964990];
  v107 = *MEMORY[0x1E69649F8];
  v108 = *MEMORY[0x1E69649E8];
  v109 = *MEMORY[0x1E69649F0];
  v110 = *MEMORY[0x1E6964A28];
  v111 = *MEMORY[0x1E6964A20];
  v112 = *MEMORY[0x1E6964A90];
  v113 = *MEMORY[0x1E6964A70];
  v114 = *MEMORY[0x1E6964A98];
  v115 = *MEMORY[0x1E6964AB0];
  v116 = *MEMORY[0x1E6964AC8];
  v117 = *MEMORY[0x1E6964AD0];
  v118 = *MEMORY[0x1E6964AA0];
  v119 = *MEMORY[0x1E6964A78];
  v120 = *MEMORY[0x1E6964AC0];
  v121 = *MEMORY[0x1E6964A88];
  v122 = *MEMORY[0x1E6964AF8];
  v123 = *MEMORY[0x1E6964B00];
  v124 = *MEMORY[0x1E6963CF0];
  v125 = *MEMORY[0x1E69648E8];
  v126 = *MEMORY[0x1E6964B18];
  v127 = *MEMORY[0x1E6964B28];
  v128 = *MEMORY[0x1E6964B30];
  v129 = *MEMORY[0x1E6964B58];
  v32 = *MEMORY[0x1E6964B98];
  v131 = @"SSAttributeTopMatchedStrings";
  v132 = *MEMORY[0x1E6964BF0];
  v133 = *MEMORY[0x1E6964BF8];
  v134 = *MEMORY[0x1E6964C00];
  v135 = *MEMORY[0x1E6964C08];
  v136 = *MEMORY[0x1E6963F08];
  v137 = *MEMORY[0x1E6964C28];
  v138 = *MEMORY[0x1E6964C48];
  v139 = *MEMORY[0x1E6964C80];
  v140 = *MEMORY[0x1E6964C88];
  v141 = *MEMORY[0x1E6964400];
  v130 = v32;
  v142 = *MEMORY[0x1E6964530];
  v143 = *MEMORY[0x1E69643E8];
  v144 = v32;
  v145 = *MEMORY[0x1E6964B90];
  v146 = *MEMORY[0x1E6964C68];
  v147 = *MEMORY[0x1E6963F88];
  v148 = *MEMORY[0x1E6963BE0];
  v149 = *MEMORY[0x1E6963E08];
  v150 = *MEMORY[0x1E6963ED8];
  v151 = *MEMORY[0x1E6963EE8];
  v152 = *MEMORY[0x1E6963D48];
  v153 = v81;
  v154 = *MEMORY[0x1E6964370];
  v155 = *MEMORY[0x1E69643F0];
  v156 = *MEMORY[0x1E6964498];
  v157 = v37;
  v158 = *MEMORY[0x1E69648E0];
  v159 = *MEMORY[0x1E6964900];
  v160 = *MEMORY[0x1E69649E0];
  v161 = v109;
  v162 = v159;
  v163 = v126;
  v164 = *MEMORY[0x1E6964B40];
  v165 = v159;
  v166 = *MEMORY[0x1E6964BB0];
  v167 = *MEMORY[0x1E69645D8];
  v168 = *MEMORY[0x1E69644A8];
  v169 = *MEMORY[0x1E69646C0];
  v170 = *MEMORY[0x1E69646C8];
  v171 = *MEMORY[0x1E6964D78];
  v172 = *MEMORY[0x1E6964D48];
  v173 = *MEMORY[0x1E6964D40];
  v174 = *MEMORY[0x1E6964D88];
  v175 = *MEMORY[0x1E6964278];
  v176 = *MEMORY[0x1E6964118];
  v177 = *MEMORY[0x1E6964120];
  v178 = *MEMORY[0x1E69640B0];
  v179 = *MEMORY[0x1E6964098];
  v180 = *MEMORY[0x1E69640A0];
  v181 = *MEMORY[0x1E69640A8];
  v182 = *MEMORY[0x1E6964088];
  v183 = *MEMORY[0x1E6964110];
  v184 = *MEMORY[0x1E6964040];
  v185 = *MEMORY[0x1E6964058];
  v186 = *MEMORY[0x1E69640C8];
  v187 = *MEMORY[0x1E69640E0];
  v188 = *MEMORY[0x1E69640B8];
  v189 = *MEMORY[0x1E6964080];
  v190 = *MEMORY[0x1E6964108];
  v191 = *MEMORY[0x1E6964038];
  v192 = *MEMORY[0x1E6964050];
  v193 = *MEMORY[0x1E6964068];
  v194 = *MEMORY[0x1E6964048];
  v195 = *MEMORY[0x1E69640C0];
  v196 = *MEMORY[0x1E69640D8];
  v197 = *MEMORY[0x1E69640F0];
  v198 = *MEMORY[0x1E69640D0];
  v199 = *MEMORY[0x1E69641B8];
  v200 = *MEMORY[0x1E69641C8];
  v201 = *MEMORY[0x1E69641C0];
  v202 = *MEMORY[0x1E6964168];
  v203 = *MEMORY[0x1E69641A0];
  v204 = *MEMORY[0x1E69641B0];
  v205 = *MEMORY[0x1E6964218];
  v206 = *MEMORY[0x1E69645A8];
  v207 = *MEMORY[0x1E6963C28];
  v208 = *MEMORY[0x1E6963C40];
  v209 = *MEMORY[0x1E6963C38];
  v210 = *MEMORY[0x1E69641E0];
  v211 = *MEMORY[0x1E69642C0];
  v212 = *MEMORY[0x1E6964230];
  v213 = *MEMORY[0x1E6964008];
  v214 = *MEMORY[0x1E6964228];
  v215 = *MEMORY[0x1E6964208];
  v216 = *MEMORY[0x1E69641E8];
  v217 = *MEMORY[0x1E6964250];
  v218 = *MEMORY[0x1E6964248];
  v219 = *MEMORY[0x1E6964020];
  v220 = *MEMORY[0x1E6964018];
  v221 = *MEMORY[0x1E6964260];
  v222 = *MEMORY[0x1E6964268];
  v223 = *MEMORY[0x1E69642D8];
  v224 = *MEMORY[0x1E69642F8];
  v225 = *MEMORY[0x1E69642E0];
  v226 = *MEMORY[0x1E6964308];
  v227 = *MEMORY[0x1E6964300];
  v228 = *MEMORY[0x1E69642C8];
  v229 = *MEMORY[0x1E69642E8];
  v230 = *MEMORY[0x1E69642F0];
  v231 = *MEMORY[0x1E69642D0];
  v232 = *MEMORY[0x1E6964310];
  v233 = *MEMORY[0x1E6964210];
  v234 = *MEMORY[0x1E6963DE8];
  v235 = *MEMORY[0x1E6963DF0];
  v236 = *MEMORY[0x1E6963D78];
  v237 = *MEMORY[0x1E6963E50];
  v238 = *MEMORY[0x1E6964580];
  v239 = *MEMORY[0x1E6964578];
  v240 = *MEMORY[0x1E6964B38];
  v241 = *MEMORY[0x1E6963FF0];
  v242 = *MEMORY[0x1E6964C10];
  v243 = *MEMORY[0x1E6964DD0];
  v244 = *MEMORY[0x1E6963F30];
  v245 = *MEMORY[0x1E6964090];
  v246 = *MEMORY[0x1E69641F8];
  v247 = *MEMORY[0x1E6964010];
  v248 = *MEMORY[0x1E6964220];
  v249 = *MEMORY[0x1E69641F0];
  v250 = *MEMORY[0x1E6964200];
  v251 = *MEMORY[0x1E6964270];
  v252 = *MEMORY[0x1E6964280];
  v253 = *MEMORY[0x1E6964258];
  v254 = *MEMORY[0x1E6964028];
  v255 = *MEMORY[0x1E6964588];
  v256 = *MEMORY[0x1E6963D30];
  v257 = *MEMORY[0x1E6963BE8];
  v258 = *MEMORY[0x1E6963D50];
  v259 = *MEMORY[0x1E6963DD0];
  v260 = *MEMORY[0x1E6963DF8];
  v261 = *MEMORY[0x1E6963DC0];
  v262 = *MEMORY[0x1E6963DA0];
  v263 = *MEMORY[0x1E6963DB0];
  v264 = *MEMORY[0x1E6963D90];
  v265 = *MEMORY[0x1E6963DB8];
  v266 = *MEMORY[0x1E6963DD8];
  v267 = *MEMORY[0x1E6963D88];
  v268 = *MEMORY[0x1E6963D80];
  v269 = *MEMORY[0x1E6963ED0];
  v270 = *MEMORY[0x1E6963EC8];
  v271 = *MEMORY[0x1E6963EF8];
  v272 = *MEMORY[0x1E6964000];
  v273 = *MEMORY[0x1E69648A8];
  v274 = *MEMORY[0x1E6964C40];
  v275 = *MEMORY[0x1E6964A00];
  v276 = *MEMORY[0x1E6964570];
  v277 = *MEMORY[0x1E69646B8];
  v278 = *MEMORY[0x1E6964288];
  v279 = *MEMORY[0x1E69644B8];
  v280 = *MEMORY[0x1E6964D70];
  v281 = *MEMORY[0x1E6964D68];
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:251];
  v34 = *MEMORY[0x1E69E9840];

  return v33;
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
  v18 = *MEMORY[0x1E69E9840];
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

        v10 = [MEMORY[0x1E69CA3A0] textWithString:{*(*(&v13 + 1) + 8 * i), v13}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)compact
{
  compactCopy = compact;
  v4 = isMacOS();
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
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  if ([whitespaceCharacterSet characterIsMember:v4])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v4];
  }

  else
  {
    v6 = &stru_1F556FE60;
  }

  return v6;
}

+ (id)whiteSpaceCondensedStringForString:(id)string
{
  stringCopy = string;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  if ([stringCopy length] && objc_msgSend(stringCopy, "rangeOfCharacterFromSet:", whitespaceAndNewlineCharacterSet) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
    v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_45];
    v9 = [v7 filteredArrayUsingPredicate:v8];

    v10 = [self getWhitespaceCharacterAtIndex:0 ofString:stringCopy];
    v11 = [self getWhitespaceCharacterAtIndex:objc_msgSend(stringCopy ofString:{"length") - 1, stringCopy}];
    v12 = MEMORY[0x1E696AEC0];
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
  v24 = *MEMORY[0x1E69E9840];
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

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)condenseWhiteSpaceForDescriptions:(id)descriptions
{
  v15 = *MEMORY[0x1E69E9840];
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

  v9 = *MEMORY[0x1E69E9840];
}

- (SSResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v31.receiver = self;
  v31.super_class = SSResultBuilder;
  v5 = [(SSResultBuilder *)&v31 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = isMacOS();
  v7 = *MEMORY[0x1E6964DD0];
  if (!v6)
  {
    v7 = @"SSAttributeTopMatchedStrings";
  }

  v8 = v7;
  v9 = [resultCopy valueForAttribute:v8 withType:objc_opt_class()];
  [(SSResultBuilder *)v5 setResult:resultCopy];
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

  [(SSResultBuilder *)v5 setMatchedStrings:v11];

  if ([objc_opt_class() isCoreSpotlightResult])
  {
    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E69642B8] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setCoreSpotlightId:v12];
  }

  else
  {
    [(SSResultBuilder *)v5 setCoreSpotlightId:0];
  }

  if ([resultCopy hasTextContentMatch])
  {
    [(SSResultBuilder *)v5 setHasTextContentMatch:1];
  }

  else
  {
    v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6964DC8] withType:objc_opt_class()];
    -[SSResultBuilder setHasTextContentMatch:](v5, "setHasTextContentMatch:", [v13 BOOLValue]);
  }

  result = [(SSResultBuilder *)v5 result];
  relatedAppIdentifier = [result relatedAppIdentifier];
  if (relatedAppIdentifier)
  {
    [(SSResultBuilder *)v5 setRelatedAppBundleIdentifier:relatedAppIdentifier];
  }

  else
  {
    v16 = [resultCopy valueForAttribute:*MEMORY[0x1E6964A20] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setRelatedAppBundleIdentifier:v16];
  }

  result2 = [(SSResultBuilder *)v5 result];
  lastUsedDate = [result2 lastUsedDate];
  if (lastUsedDate)
  {
    [(SSResultBuilder *)v5 setLastUsedDate:lastUsedDate];
  }

  else
  {
    v19 = [resultCopy valueForAttribute:*MEMORY[0x1E6964548] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setLastUsedDate:v19];
  }

  result3 = [(SSResultBuilder *)v5 result];
  contentType = [result3 contentType];

  if (contentType)
  {
    result4 = [(SSResultBuilder *)v5 result];
    uniformContentType = [result4 uniformContentType];
    [(SSResultBuilder *)v5 setUniformType:uniformContentType];
  }

  if (_os_feature_enabled_impl())
  {
    uniformType = [(SSResultBuilder *)v5 uniformType];
    if (uniformType)
    {
LABEL_25:

      goto LABEL_26;
    }

    sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
    v26 = [sectionBundleIdentifier isEqualToString:@"com.apple.spotlight.events"];

    if (v26)
    {
      uniformType = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.spotlight.events"];
      [(SSResultBuilder *)v5 setUniformType:uniformType];
      goto LABEL_25;
    }
  }

LABEL_26:
  v27 = [resultCopy valueForAttribute:*MEMORY[0x1E6963D20] withType:objc_opt_class()];
  unsignedIntValue = [v27 unsignedIntValue];

  if (unsignedIntValue)
  {
    v29 = objc_opt_new();
    [v29 setBlueComponent:unsignedIntValue / 255.0];
    [v29 setGreenComponent:BYTE1(unsignedIntValue) / 255.0];
    [v29 setRedComponent:BYTE2(unsignedIntValue) / 255.0];
    [(SSResultBuilder *)v5 setBackgroundColor:v29];
  }

LABEL_29:
  return v5;
}

- (unint64_t)numberOfLinesForDescriptions
{
  if (isMacOS())
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
  v17 = *MEMORY[0x1E69E9840];
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
          maxLines = [(SSResultBuilder *)self numberOfLinesForDescriptions];
        }

        [v9 setMaxLines:maxLines];
      }

      v6 = [descriptionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)resultAppBundleId
{
  result = [(SSResultBuilder *)self result];
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
  buildPreviewButtonItems = [(SSResultBuilder *)self buildPreviewButtonItems];
  buildAppEntityAnnotation = [(SSResultBuilder *)self buildAppEntityAnnotation];
  result = [(SSResultBuilder *)self result];
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

  buildInlineCard = [(SSResultBuilder *)self buildInlineCard];
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
    buildCompactCard = [(SSResultBuilder *)self buildCompactCard];
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
  buildCompactCardSections = [(SSResultBuilder *)self buildCompactCardSections];
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
  v20 = *MEMORY[0x1E69E9840];
  buildInlineCardSections = [(SSResultBuilder *)self buildInlineCardSections];
  if (buildInlineCardSections)
  {
    v4 = objc_opt_new();
    [v4 setCardSections:buildInlineCardSections];
    isTopHit = [(SSResultBuilder *)self isTopHit];
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
            [(SSResultBuilder *)self buildBackgroundColor];
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

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildCompactCardSections
{
  v13[1] = *MEMORY[0x1E69E9840];
  buildCompactCardSection = [(SSResultBuilder *)self buildCompactCardSection];
  descriptions = [buildCompactCardSection descriptions];
  [(SSResultBuilder *)self setMaxLinesForDescriptions:descriptions];

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
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)buildInlineCardSections
{
  v10[1] = *MEMORY[0x1E69E9840];
  buildInlineCardSection = [(SSResultBuilder *)self buildInlineCardSection];
  descriptions = [buildInlineCardSection descriptions];
  [(SSResultBuilder *)self setMaxLinesForDescriptions:descriptions];

  v5 = objc_opt_class();
  descriptions2 = [buildInlineCardSection descriptions];
  [v5 condenseWhiteSpaceForDescriptions:descriptions2];

  if (buildInlineCardSection)
  {
    v10[0] = buildInlineCardSection;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)buildCompactCardSection
{
  buildDetailedRowCardSection = [(SSResultBuilder *)self buildDetailedRowCardSection];
  [buildDetailedRowCardSection setShouldUseCompactDisplay:1];
  v3 = objc_opt_class();
  thumbnail = [buildDetailedRowCardSection thumbnail];
  [v3 setDefaultSizeForThumbnail:thumbnail isCompact:1];

  return buildDetailedRowCardSection;
}

- (id)buildInlineCardSection
{
  buildDetailedRowCardSection = [(SSResultBuilder *)self buildDetailedRowCardSection];
  v3 = objc_opt_class();
  thumbnail = [buildDetailedRowCardSection thumbnail];
  [v3 setDefaultSizeForThumbnail:thumbnail isCompact:0];

  return buildDetailedRowCardSection;
}

- (id)buildHorizontallyScrollingCardSection
{
  subclassBuildHorizontallyScrollingCardSection = [(SSResultBuilder *)self subclassBuildHorizontallyScrollingCardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    thumbnail = [subclassBuildHorizontallyScrollingCardSection thumbnail];
    [v4 setDefaultSizeForThumbnail:thumbnail isCompact:0];
  }

  [(SSResultBuilder *)self buildDefaultPropertiesForCardSection:subclassBuildHorizontallyScrollingCardSection];

  return subclassBuildHorizontallyScrollingCardSection;
}

- (id)buildAppTopHitEntityCardSection
{
  v3 = objc_opt_new();
  buildTitle = [(SSResultBuilder *)self buildTitle];
  [v3 setTitle:buildTitle];

  title = [v3 title];
  [title setMaxLines:2];

  buildThumbnail = [(SSResultBuilder *)self buildThumbnail];
  [v3 setThumbnail:buildThumbnail];

  thumbnail = [v3 thumbnail];
  [thumbnail setBadgingImage:0];

  buildFootnote = [(SSResultBuilder *)self buildFootnote];
  [v3 setFootnote:buildFootnote];

  footnote = [v3 footnote];
  [footnote setMaxLines:1];

  if ([(SSResultBuilder *)self isToolParameterFilling])
  {
    [(SSResultBuilder *)self buildFillToolParameterCommand];
  }

  else
  {
    [(SSResultBuilder *)self buildCommand];
  }
  v10 = ;
  [v3 setCommand:v10];

  [v3 setUseAppIconMetrics:1];
  buildAppEntityAnnotation = [(SSResultBuilder *)self buildAppEntityAnnotation];
  [v3 setAppEntityAnnotation:buildAppEntityAnnotation];

  return v3;
}

- (void)buildDefaultPropertiesForCardSection:(id)section
{
  sectionCopy = section;
  if ([(SSResultBuilder *)self isToolParameterFilling])
  {
    buildFillToolParameterCommand = [(SSResultBuilder *)self buildFillToolParameterCommand];
    [sectionCopy setCommand:buildFillToolParameterCommand];

    [sectionCopy setSecondaryCommand:0];
    goto LABEL_18;
  }

  queryContext = [(SSResultBuilder *)self queryContext];
  queryKind = [queryContext queryKind];

  buildSecondaryCommand = [(SSResultBuilder *)self buildSecondaryCommand];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queryContext2 = [(SSResultBuilder *)self queryContext];
    searchStringForScopedSearch = [queryContext2 searchStringForScopedSearch];

    if (searchStringForScopedSearch)
    {
      queryContext3 = [(SSResultBuilder *)self queryContext];
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
    buildCommand = [(SSResultBuilder *)self buildCommand];
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
    buildPreviewCommand = [(SSResultBuilder *)self buildPreviewCommand];
    [sectionCopy setPreviewCommand:buildPreviewCommand];
  }
}

- (id)buildDetailedRowCardSection
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  buildPunchouts = [(SSResultBuilder *)self buildPunchouts];
  [v4 setPunchoutOptions:buildPunchouts];

  buildThumbnail = [(SSResultBuilder *)self buildThumbnail];
  [v4 setThumbnail:buildThumbnail];

  thumbnail = [v4 thumbnail];
  v8 = [(SSResultBuilder *)self buildBadgingImageWithThumbnail:thumbnail];
  thumbnail2 = [v4 thumbnail];
  [thumbnail2 setBadgingImage:v8];

  buildTrailingThumbnail = [(SSResultBuilder *)self buildTrailingThumbnail];
  [v4 setTrailingThumbnail:buildTrailingThumbnail];

  buildTitle = [(SSResultBuilder *)self buildTitle];
  [v4 setTitle:buildTitle];

  buildSecondaryTitle = [(SSResultBuilder *)self buildSecondaryTitle];
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

  buildSecondaryTitleImage = [(SSResultBuilder *)self buildSecondaryTitleImage];
  [v4 setSecondaryTitleImage:buildSecondaryTitleImage];

  [v4 setIsSecondaryTitleDetached:{-[SSResultBuilder buildSecondaryTitleIsDetached](self, "buildSecondaryTitleIsDetached")}];
  selfCopy = self;
  buildDescriptions = [(SSResultBuilder *)self buildDescriptions];
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

  buildFootnote = [(SSResultBuilder *)selfCopy buildFootnote];
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

  buildTrailingTopText = [(SSResultBuilder *)selfCopy buildTrailingTopText];
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

  buildTrailingMiddleText = [(SSResultBuilder *)selfCopy buildTrailingMiddleText];
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

  buildTrailingBottomText = [(SSResultBuilder *)selfCopy buildTrailingBottomText];
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

  if ([(SSResultBuilder *)selfCopy isToolParameterFilling])
  {
    [v4 setAction:0];
  }

  else
  {
    buildAction = [(SSResultBuilder *)selfCopy buildAction];
    [v4 setAction:buildAction];
  }

  if ([(SSResultBuilder *)selfCopy isToolParameterFilling])
  {
    [v4 setButtonItems:0];
  }

  else
  {
    buildButtonItems = [(SSResultBuilder *)selfCopy buildButtonItems];
    [v4 setButtonItems:buildButtonItems];
  }

  [v4 setPreventThumbnailImageScaling:{-[SSResultBuilder buildPreventThumbnailImageScaling](selfCopy, "buildPreventThumbnailImageScaling")}];
  [v4 setButtonItemsAreTrailing:{-[SSResultBuilder buildButtonItemsAreTrailing](selfCopy, "buildButtonItemsAreTrailing")}];
  descriptions = [v4 descriptions];
  [(SSResultBuilder *)selfCopy setMaxLinesForDescriptions:descriptions];

  [(SSResultBuilder *)selfCopy buildDefaultPropertiesForCardSection:v4];
  v56 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  bundleIdentifierForAppIconBadgeImage = [(SSResultBuilder *)self bundleIdentifierForAppIconBadgeImage];
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
  result = [(SSResultBuilder *)self result];
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
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  result = [(SSResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];

  result2 = [(SSResultBuilder *)self result];
  applicationBundleIdentifier2 = [result2 applicationBundleIdentifier];

  coreSpotlightId = [(SSResultBuilder *)self coreSpotlightId];
  result3 = [(SSResultBuilder *)self result];
  v9 = [result3 valueForAttribute:*MEMORY[0x1E6963BC0] withType:objc_opt_class()];

  if ([v9 count])
  {
    v10 = objc_opt_new();
    [v10 setActionItemTypes:v9];
    [v10 setApplicationBundleIdentifier:applicationBundleIdentifier];
    [v10 setCoreSpotlightIdentifier:coreSpotlightId];
    [v3 addObject:v10];
  }

  result4 = [(SSResultBuilder *)self result];
  itemProviderDataTypes = [result4 itemProviderDataTypes];

  result5 = [(SSResultBuilder *)self result];
  itemProviderFileTypes = [result5 itemProviderFileTypes];

  result6 = [(SSResultBuilder *)self result];
  v16 = [result6 valueForAttribute:*MEMORY[0x1E6964AE8] withType:objc_opt_class()];

  v30[0] = @"com.apple.mobilemail";
  v30[1] = @"com.apple.mobilenotes";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v18 = [v17 containsObject:applicationBundleIdentifier];

  if (itemProviderDataTypes || itemProviderFileTypes || v16)
  {
    if ((v18 & 1) != 0 || SSSectionIsSyndicatedPhotos(applicationBundleIdentifier2))
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
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
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

  v26 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildPunchouts
{
  v17[1] = *MEMORY[0x1E69E9840];
  result = [(SSResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x1E6964950] withType:objc_opt_class()];
  v5 = [result valueForAttribute:*MEMORY[0x1E6963D28] withType:objc_opt_class()];
  bOOLValue = [v5 BOOLValue];

  v7 = [result valueForAttribute:*MEMORY[0x1E6963EB0] withType:objc_opt_class()];
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
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    v11 = v10;
    if (v10)
    {
      v17[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      [v9 setUrls:v12];
    }

    else
    {
      v12 = SSGeneralLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(SSResultBuilder *)self buildPunchouts];
      }
    }
  }

  if (v9)
  {
    v16 = v9;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  }

  else
  {
LABEL_12:
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)buildThumbnail
{
  result = [(SSResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x1E6964BF8] withType:objc_opt_class()];
  v5 = [result valueForAttribute:*MEMORY[0x1E6964BF0] withType:objc_opt_class()];
  v36 = [result valueForAttribute:*MEMORY[0x1E6964BE0] withType:objc_opt_class()];
  v6 = [result valueForAttribute:*MEMORY[0x1E6964BE8] withType:objc_opt_class()];
  v37 = [result valueForAttribute:*MEMORY[0x1E6964C00] withType:objc_opt_class()];
  v7 = [result urlValueForAttribute:*MEMORY[0x1E6964C08]];
  v39 = [result urlValueForAttribute:*MEMORY[0x1E6963F08]];
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

  *&v38 = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  result2 = [(SSResultBuilder *)self result];
  applicationBundleIdentifier2 = [result2 applicationBundleIdentifier];
  if ([applicationBundleIdentifier2 isEqualToString:@"com.apple.mobilecal"])
  {
    result3 = [(SSResultBuilder *)self result];
    [result3 userActivityRequiredString];
    v15 = v5;
    v17 = v16 = v4;
    v18 = [v17 containsString:@"com.apple.calendarUIKit.userActivity.tomorrow"];

    v4 = v16;
    v5 = v15;

    v19 = v36;
    if (v18)
    {
      v20 = objc_alloc(MEMORY[0x1E69C9EF0]);
      v21 = +[SSDateFormatManager tomorrow];
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
    v22 = [objc_alloc(MEMORY[0x1E69CA548]) initWithURL:v7];
    [v22 setDarkUrlValue:v39];
LABEL_15:
    v30 = v35;
LABEL_16:
    v31 = v38;
    goto LABEL_17;
  }

  if (v5)
  {
    v22 = [MEMORY[0x1E69CA138] imageWithData:v5];
    goto LABEL_15;
  }

  if (v4)
  {
    v27 = objc_alloc(MEMORY[0x1E69CA548]);
    v28 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:0];
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
  result = [(SSResultBuilder *)self result];
  v3 = [result valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
  v4 = [result valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
  v5 = [result valueForAttribute:*MEMORY[0x1E6964B58] withType:objc_opt_class()];
  title = [result title];
  text = [title text];

  if ([v3 length])
  {
    v8 = v3;
    goto LABEL_7;
  }

  if ([v4 length])
  {
    v8 = v4;
    goto LABEL_7;
  }

  if ([v5 length])
  {
    v8 = v5;
LABEL_7:
    v9 = v8;
    if (v8)
    {
LABEL_8:
      v10 = MEMORY[0x1E69CA3A0];
      v11 = [objc_opt_class() whiteSpaceCondensedStringForString:v9];
      v12 = [v10 textWithString:v11];

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (text)
  {
    v9 = text;
    goto LABEL_8;
  }

  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v13 localizedStringForKey:@"NO_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_12:
  v12 = 0;
LABEL_13:

  return v12;
}

- (id)buildSecondaryTitle
{
  result = [(SSResultBuilder *)self result];
  secondaryTitle = [result secondaryTitle];
  if (secondaryTitle)
  {
    v5 = MEMORY[0x1E69CA0F0];
    result2 = [(SSResultBuilder *)self result];
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
  result = [(SSResultBuilder *)self result];
  isSecondaryTitleDetached = [result isSecondaryTitleDetached];

  return isSecondaryTitleDetached;
}

- (id)buildSecondaryTitleImage
{
  result = [(SSResultBuilder *)self result];
  secondaryTitleImage = [result secondaryTitleImage];

  return secondaryTitleImage;
}

- (id)buildDescriptions
{
  result = [(SSResultBuilder *)self result];
  v3 = [result valueForAttribute:*MEMORY[0x1E6964B18] withType:objc_opt_class()];
  v4 = [result valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
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
    v8 = [MEMORY[0x1E69CA3A0] textWithString:?];
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
  result = [(SSResultBuilder *)self result];
  footnote = [result footnote];
  if (footnote)
  {
    v5 = MEMORY[0x1E69CA3A0];
    result2 = [(SSResultBuilder *)self result];
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
  result = [(SSResultBuilder *)self result];
  sectionBundleIdentifier = [result sectionBundleIdentifier];
  v4 = MEMORY[0x1E695DFD8];
  contentTypeTree = [result contentTypeTree];
  v6 = [v4 setWithArray:contentTypeTree];

  identifier = [*MEMORY[0x1E6982CD8] identifier];
  v34 = v6;
  if ([v6 containsObject:identifier])
  {
    v8 = 1;
  }

  else
  {
    identifier2 = [*MEMORY[0x1E6982F50] identifier];
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
  v11 = [result valueForAttribute:*MEMORY[0x1E6964C48] withType:objc_opt_class()];
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

  v17 = [result valueForAttribute:*MEMORY[0x1E6964720] withType:objc_opt_class()];
  firstObject = [v17 firstObject];

  v19 = [result valueForAttribute:*MEMORY[0x1E6964B88] withType:objc_opt_class()];
  bOOLValue = [v19 BOOLValue];

  v21 = [result valueForAttribute:*MEMORY[0x1E6964550] withType:objc_opt_class()];
  v22 = [result valueForAttribute:*MEMORY[0x1E6964598] withType:objc_opt_class()];
  v23 = [result valueForAttribute:*MEMORY[0x1E6964B80] withType:objc_opt_class()];
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
  v25 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  queryContext = [(SSResultBuilder *)self queryContext];
  searchString = [queryContext searchString];
  v9 = [searchString length];

  if (v9)
  {
    queryContext2 = [(SSResultBuilder *)self queryContext];
    evaluator = [queryContext2 evaluator];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    matchedStrings = [(SSResultBuilder *)self matchedStrings];
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

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)buildHighlightedTextWithString:(id)string includeQuotes:(BOOL)quotes
{
  quotesCopy = quotes;
  v42[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  queryContext = [(SSResultBuilder *)self queryContext];
  searchString = [queryContext searchString];
  precomposedStringWithCompatibilityMapping = [searchString precomposedStringWithCompatibilityMapping];
  v10 = precomposedStringWithCompatibilityMapping;
  v11 = &stru_1F556FE60;
  if (precomposedStringWithCompatibilityMapping)
  {
    v11 = precomposedStringWithCompatibilityMapping;
  }

  v12 = v11;

  matchedStrings = [(SSResultBuilder *)self matchedStrings];
  if ([matchedStrings containsObject:stringCopy])
  {
    v14 = 1;
  }

  else
  {
    precomposedStringWithCompatibilityMapping2 = [stringCopy precomposedStringWithCompatibilityMapping];
    v14 = [precomposedStringWithCompatibilityMapping2 localizedStandardContainsString:v12];
  }

  v16 = MEMORY[0x1E69CA3A0];
  if (quotesCopy)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"QUOTED_TRANSCRIPT_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    stringCopy = [v17 stringWithFormat:v19, stringCopy];
    v21 = [v16 textWithString:stringCopy];

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E69CA3A0] textWithString:stringCopy];
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  if ([(__CFString *)v12 length]>= 4)
  {
    queryContext2 = [(SSResultBuilder *)self queryContext];
    evaluator = [queryContext2 evaluator];

    v24 = getHighlightedRichText(stringCopy, evaluator, 0, 1);
    formattedTextPieces = [v24 formattedTextPieces];
    v26 = [formattedTextPieces count];

    if (v26)
    {
      v27 = v24;

      if (quotesCopy)
      {
        v28 = MEMORY[0x1E69CA0F0];
        v41 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v40 = [v41 localizedStringForKey:@"OPEN_QUOTE" value:&stru_1F556FE60 table:@"SpotlightServices"];
        v39 = [v28 textWithString:v40];
        v42[0] = v39;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
        formattedTextPieces2 = [v27 formattedTextPieces];
        v29 = [v38 arrayByAddingObjectsFromArray:formattedTextPieces2];
        v30 = MEMORY[0x1E69CA0F0];
        v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v32 = [v31 localizedStringForKey:@"CLOSED_QUOTE" value:&stru_1F556FE60 table:@"SpotlightServices"];
        v33 = [v30 textWithString:v32];
        v34 = [v29 arrayByAddingObject:v33];
        [v27 setFormattedTextPieces:v34];
      }
    }

    else
    {
      v27 = v21;
    }

    v21 = v27;
  }

LABEL_16:

  v35 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)buildCommand
{
  result = [(SSResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x1E6964A90] withType:objc_opt_class()];

  result2 = [(SSResultBuilder *)self result];
  v6 = [result2 valueForAttribute:*MEMORY[0x1E6964C80] withType:objc_opt_class()];

  if (v4)
  {
    filePath = objc_opt_new();
    [filePath setIntentMessageData:v4];
    [filePath setIsRunnableWorkflow:1];
    result3 = [(SSResultBuilder *)self result];
    v9 = [result3 valueForAttribute:*MEMORY[0x1E6964A78] withType:objc_opt_class()];
    [filePath setCommandDetail:v9];

    result4 = [(SSResultBuilder *)self result];
    applicationBundleIdentifier = [result4 valueForAttribute:*MEMORY[0x1E6964A88] withType:objc_opt_class()];
    [filePath setBiomeStreamIdentifier:applicationBundleIdentifier];
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  result5 = [(SSResultBuilder *)self result];
  contentType = [result5 contentType];
  v14 = [contentType isEqualToString:@"com.apple.siri.interaction"];

  if (v14)
  {
    filePath = objc_opt_new();
    result4 = [(SSResultBuilder *)self result];
    applicationBundleIdentifier = [result4 valueForAttribute:*MEMORY[0x1E69642B8] withType:objc_opt_class()];
    [filePath setVoiceShortcutIdentifier:applicationBundleIdentifier];
    goto LABEL_7;
  }

  if (v6)
  {
    filePath = objc_opt_new();
    [filePath setUserActivityRequiredString:v6];
    result4 = [(SSResultBuilder *)self result];
    applicationBundleIdentifier = [result4 applicationBundleIdentifier];
    [filePath setApplicationBundleIdentifier:applicationBundleIdentifier];
    goto LABEL_7;
  }

  coreSpotlightId = [(SSResultBuilder *)self coreSpotlightId];
  if (coreSpotlightId)
  {
    v17 = coreSpotlightId;
    resultAppBundleId = [(SSResultBuilder *)self resultAppBundleId];
    if (resultAppBundleId)
    {
      v19 = resultAppBundleId;
      resultAppBundleId2 = [(SSResultBuilder *)self resultAppBundleId];
      v21 = [resultAppBundleId2 isEqualToString:@"com.apple.CalendarUI"];

      if ((v21 & 1) == 0)
      {
        filePath = objc_opt_new();
        coreSpotlightId2 = [(SSResultBuilder *)self coreSpotlightId];
        [filePath setCoreSpotlightIdentifier:coreSpotlightId2];

        result4 = [(SSResultBuilder *)self resultAppBundleId];
        [filePath setApplicationBundleIdentifier:result4];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  filePath = [(SSResultBuilder *)self filePath];

  if (filePath)
  {
    v23 = MEMORY[0x1E69CA320];
    v24 = MEMORY[0x1E695DFF8];
    filePath2 = [(SSResultBuilder *)self filePath];
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
  queryContext = [(SSResultBuilder *)self queryContext];
  v3 = [queryContext queryKind] == 15;

  return v3;
}

- (id)buildFillToolParameterCommand
{
  buildAppEntityAnnotation = [(SSResultBuilder *)self buildAppEntityAnnotation];
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
  result = [(SSResultBuilder *)self result];
  v4 = [result valueForAttribute:*MEMORY[0x1E6963C40] withType:objc_opt_class()];

  result2 = [(SSResultBuilder *)self result];
  v6 = [result2 valueForAttribute:*MEMORY[0x1E6963C28] withType:objc_opt_class()];

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
  queryContext = [(SSResultBuilder *)self queryContext];
  if (queryContext)
  {
    queryContext2 = [(SSResultBuilder *)self queryContext];
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
  v22 = *MEMORY[0x1E69E9840];
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

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)isSpotlight
{
  if (isSpotlight_onceToken != -1)
  {
    +[SSResultBuilder isSpotlight];
  }

  return isSpotlight_isSpotlight;
}

void __30__SSResultBuilder_isSpotlight__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSpotlight_isSpotlight = [v0 isEqualToString:@"com.apple.Spotlight"];
}

+ (BOOL)isSearchToolClient
{
  if (isSearchToolClient_onceToken != -1)
  {
    +[SSResultBuilder isSearchToolClient];
  }

  return isSearchToolClient_isSearchToolClient;
}

void __37__SSResultBuilder_isSearchToolClient__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isSearchToolClient_isSearchToolClient = [v0 hasPrefix:@"com.apple.omniSearch"];
}

@end