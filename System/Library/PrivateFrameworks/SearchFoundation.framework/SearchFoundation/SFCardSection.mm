@interface SFCardSection
- (BOOL)isEqual:(id)a3;
- (NSArray)embeddedCards;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCardSection)init;
- (SFCardSection)initWithCoder:(id)a3;
- (SFCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addCardsFromButtonsTo:(id)a3;
- (void)addCardsFromCommandsTo:(id)a3;
- (void)addCardsFromEmbeddedSectionsTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCardSection

- (SFCardSection)init
{
  v7.receiver = self;
  v7.super_class = SFCardSection;
  v2 = [(SFCardSection *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    cardSectionId = v2->_cardSectionId;
    v2->_cardSectionId = v4;
  }

  return v2;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_punchoutOptions hash];
  v4 = [(NSString *)self->_punchoutPickerTitle hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_punchoutPickerDismissText hash]^ self->_canBeHidden;
  v6 = self->_hasTopPadding ^ self->_hasBottomPadding;
  v7 = v5 ^ v6 ^ [(NSString *)self->_type hash]^ self->_separatorStyle;
  v8 = [(SFCard *)self->_nextCard hash];
  v9 = v8 ^ [(NSArray *)self->_commands hash];
  v10 = v9 ^ [(NSArray *)self->_parameterKeyPaths hash];
  v11 = v7 ^ v10 ^ [(NSString *)self->_cardSectionId hash];
  v12 = [(NSString *)self->_resultIdentifier hash];
  v13 = v12 ^ [(SFColor *)self->_backgroundColor hash];
  v14 = v13 ^ [(SFCommand *)self->_command hash];
  v15 = v14 ^ [(SFCommand *)self->_previewCommand hash];
  v16 = v11 ^ v15 ^ [(NSArray *)self->_previewButtonItems hash];
  v17 = [(NSString *)self->_commandDetail hash];
  v18 = v17 ^ [(NSString *)self->_cardSectionDetail hash];
  v19 = v18 ^ [(NSString *)self->_previewButtonItemsTitle hash]^ self->_shouldHideInAmbientMode;
  v20 = v19 ^ [(NSArray *)self->_leadingSwipeButtonItems hash];
  v21 = v16 ^ v20 ^ [(NSArray *)self->_trailingSwipeButtonItems hash];
  v22 = self->_forceEnable3DTouch ^ self->_shouldShowInSmartDialog;
  v23 = v22 ^ [(SFAppEntityAnnotation *)self->_appEntityAnnotation hash];
  v24 = v23 ^ [(NSString *)self->_emphasisSubjectId hash];
  v25 = v24 ^ [(NSString *)self->_racFeedbackSubfeatureId hash];
  v26 = v25 ^ [(NSMutableDictionary *)self->_racFeedbackLoggingContent hash];
  v27 = v26 ^ [(SFCopyItem *)self->_copyableItems hash];
  return v21 ^ v27 ^ [(NSString *)self->_applicationBundleIdentifier hash];
}

- (SFCardSection)initWithProtobuf:(id)a3
{
  v846 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(SFNullCardSection);
  v5 = [v3 value];
  v6 = [v5 appLinkCardSection];

  if (v6)
  {
    v7 = [SFAppLinkCardSection alloc];
    v8 = [v3 value];
    v9 = [v8 appLinkCardSection];
    v10 = [(SFAppLinkCardSection *)v7 initWithProtobuf:v9];

    v4 = v10;
  }

  v11 = [v3 value];
  v12 = [v11 descriptionCardSection];

  if (v12)
  {
    v13 = [SFDescriptionCardSection alloc];
    v14 = [v3 value];
    v15 = [v14 descriptionCardSection];
    v16 = [(SFDescriptionCardSection *)v13 initWithProtobuf:v15];

    v4 = v16;
  }

  v17 = [v3 value];
  v18 = [v17 keyValueDataCardSection];

  if (v18)
  {
    v19 = [SFKeyValueDataCardSection alloc];
    v20 = [v3 value];
    v21 = [v20 keyValueDataCardSection];
    v22 = [(SFKeyValueDataCardSection *)v19 initWithProtobuf:v21];

    v4 = v22;
  }

  v23 = [v3 value];
  v24 = [v23 mapCardSection];

  if (v24)
  {
    v25 = [SFMapCardSection alloc];
    v26 = [v3 value];
    v27 = [v26 mapCardSection];
    v28 = [(SFMapCardSection *)v25 initWithProtobuf:v27];

    v4 = v28;
  }

  v29 = [v3 value];
  v30 = [v29 mediaInfoCardSection];

  if (v30)
  {
    v31 = [SFMediaInfoCardSection alloc];
    v32 = [v3 value];
    v33 = [v32 mediaInfoCardSection];
    v34 = [(SFMediaInfoCardSection *)v31 initWithProtobuf:v33];

    v4 = v34;
  }

  v35 = [v3 value];
  v36 = [v35 mediaPlayerCardSection];

  if (v36)
  {
    v37 = [SFMediaPlayerCardSection alloc];
    v38 = [v3 value];
    v39 = [v38 mediaPlayerCardSection];
    v40 = [(SFMediaPlayerCardSection *)v37 initWithProtobuf:v39];

    v4 = v40;
  }

  v41 = [v3 value];
  v42 = [v41 nowPlayingCardSection];

  if (v42)
  {
    v43 = [SFNowPlayingCardSection alloc];
    v44 = [v3 value];
    v45 = [v44 nowPlayingCardSection];
    v46 = [(SFNowPlayingCardSection *)v43 initWithProtobuf:v45];

    v4 = v46;
  }

  v47 = [v3 value];
  v48 = [v47 richTitleCardSection];

  if (v48)
  {
    v49 = [SFRichTitleCardSection alloc];
    v50 = [v3 value];
    v51 = [v50 richTitleCardSection];
    v52 = [(SFRichTitleCardSection *)v49 initWithProtobuf:v51];

    v4 = v52;
  }

  v53 = [v3 value];
  v54 = [v53 rowCardSection];

  if (v54)
  {
    v55 = [SFRowCardSection alloc];
    v56 = [v3 value];
    v57 = [v56 rowCardSection];
    v58 = [(SFRowCardSection *)v55 initWithProtobuf:v57];

    v4 = v58;
  }

  v59 = [v3 value];
  v60 = [v59 scoreboardCardSection];

  if (v60)
  {
    v61 = [SFScoreboardCardSection alloc];
    v62 = [v3 value];
    v63 = [v62 scoreboardCardSection];
    v64 = [(SFScoreboardCardSection *)v61 initWithProtobuf:v63];

    v4 = v64;
  }

  v65 = [v3 value];
  v66 = [v65 socialMediaPostCardSection];

  if (v66)
  {
    v67 = [SFSocialMediaPostCardSection alloc];
    v68 = [v3 value];
    v69 = [v68 socialMediaPostCardSection];
    v70 = [(SFSocialMediaPostCardSection *)v67 initWithProtobuf:v69];

    v4 = v70;
  }

  v71 = [v3 value];
  v72 = [v71 stockChartCardSection];

  if (v72)
  {
    v73 = [SFStockChartCardSection alloc];
    v74 = [v3 value];
    v75 = [v74 stockChartCardSection];
    v76 = [(SFStockChartCardSection *)v73 initWithProtobuf:v75];

    v4 = v76;
  }

  v77 = [v3 value];
  v78 = [v77 tableHeaderRowCardSection];

  if (v78)
  {
    v79 = [SFTableHeaderRowCardSection alloc];
    v80 = [v3 value];
    v81 = [v80 tableHeaderRowCardSection];
    v82 = [(SFTableHeaderRowCardSection *)v79 initWithProtobuf:v81];

    v4 = v82;
  }

  v83 = [v3 value];
  v84 = [v83 tableRowCardSection];

  if (v84)
  {
    v85 = [SFTableRowCardSection alloc];
    v86 = [v3 value];
    v87 = [v86 tableRowCardSection];
    v88 = [(SFTableRowCardSection *)v85 initWithProtobuf:v87];

    v4 = v88;
  }

  v89 = [v3 value];
  v90 = [v89 textColumnsCardSection];

  if (v90)
  {
    v91 = [SFTextColumnsCardSection alloc];
    v92 = [v3 value];
    v93 = [v92 textColumnsCardSection];
    v94 = [(SFTextColumnsCardSection *)v91 initWithProtobuf:v93];

    v4 = v94;
  }

  v95 = [v3 value];
  v96 = [v95 titleCardSection];

  if (v96)
  {
    v97 = [SFTitleCardSection alloc];
    v98 = [v3 value];
    v99 = [v98 titleCardSection];
    v100 = [(SFTitleCardSection *)v97 initWithProtobuf:v99];

    v4 = v100;
  }

  v101 = [v3 value];
  v102 = [v101 trackListCardSection];

  if (v102)
  {
    v103 = [SFTrackListCardSection alloc];
    v104 = [v3 value];
    v105 = [v104 trackListCardSection];
    v106 = [(SFTrackListCardSection *)v103 initWithProtobuf:v105];

    v4 = v106;
  }

  v107 = [v3 value];
  v108 = [v107 audioPlaybackCardSection];

  if (v108)
  {
    v109 = [SFAudioPlaybackCardSection alloc];
    v110 = [v3 value];
    v111 = [v110 audioPlaybackCardSection];
    v112 = [(SFAudioPlaybackCardSection *)v109 initWithProtobuf:v111];

    v4 = v112;
  }

  v113 = [v3 value];
  v114 = [v113 flightCardSection];

  if (v114)
  {
    v115 = [SFFlightCardSection alloc];
    v116 = [v3 value];
    v117 = [v116 flightCardSection];
    v118 = [(SFFlightCardSection *)v115 initWithProtobuf:v117];

    v4 = v118;
  }

  v119 = [v3 value];
  v120 = [v119 activityIndicatorCardSection];

  if (v120)
  {
    v121 = [SFActivityIndicatorCardSection alloc];
    v122 = [v3 value];
    v123 = [v122 activityIndicatorCardSection];
    v124 = [(SFActivityIndicatorCardSection *)v121 initWithProtobuf:v123];

    v4 = v124;
  }

  v125 = [v3 value];
  v126 = [v125 webCardSection];

  if (v126)
  {
    v127 = [SFWebCardSection alloc];
    v128 = [v3 value];
    v129 = [v128 webCardSection];
    v130 = [(SFWebCardSection *)v127 initWithProtobuf:v129];

    v4 = v130;
  }

  v131 = [v3 value];
  v132 = [v131 messageCardSection];

  if (v132)
  {
    v133 = [SFMessageCardSection alloc];
    v134 = [v3 value];
    v135 = [v134 messageCardSection];
    v136 = [(SFMessageCardSection *)v133 initWithProtobuf:v135];

    v4 = v136;
  }

  v137 = [v3 value];
  v138 = [v137 detailedRowCardSection];

  if (v138)
  {
    v139 = [SFDetailedRowCardSection alloc];
    v140 = [v3 value];
    v141 = [v140 detailedRowCardSection];
    v142 = [(SFDetailedRowCardSection *)v139 initWithProtobuf:v141];

    v4 = v142;
  }

  v143 = [v3 value];
  v144 = [v143 imagesCardSection];

  if (v144)
  {
    v145 = [SFImagesCardSection alloc];
    v146 = [v3 value];
    v147 = [v146 imagesCardSection];
    v148 = [(SFImagesCardSection *)v145 initWithProtobuf:v147];

    v4 = v148;
  }

  v149 = [v3 value];
  v150 = [v149 suggestionCardSection];

  if (v150)
  {
    v151 = [SFSuggestionCardSection alloc];
    v152 = [v3 value];
    v153 = [v152 suggestionCardSection];
    v154 = [(SFSuggestionCardSection *)v151 initWithProtobuf:v153];

    v4 = v154;
  }

  v155 = [v3 value];
  v156 = [v155 selectableGridCardSection];

  if (v156)
  {
    v157 = [SFSelectableGridCardSection alloc];
    v158 = [v3 value];
    v159 = [v158 selectableGridCardSection];
    v160 = [(SFSelectableGridCardSection *)v157 initWithProtobuf:v159];

    v4 = v160;
  }

  v161 = [v3 value];
  v162 = [v161 sectionHeaderCardSection];

  if (v162)
  {
    v163 = [SFSectionHeaderCardSection alloc];
    v164 = [v3 value];
    v165 = [v164 sectionHeaderCardSection];
    v166 = [(SFSectionHeaderCardSection *)v163 initWithProtobuf:v165];

    v4 = v166;
  }

  v167 = [v3 value];
  v168 = [v167 metaInfoCardSection];

  if (v168)
  {
    v169 = [SFMetaInfoCardSection alloc];
    v170 = [v3 value];
    v171 = [v170 metaInfoCardSection];
    v172 = [(SFMetaInfoCardSection *)v169 initWithProtobuf:v171];

    v4 = v172;
  }

  v173 = [v3 value];
  v174 = [v173 watchListCardSection];

  if (v174)
  {
    v175 = [SFWatchListCardSection alloc];
    v176 = [v3 value];
    v177 = [v176 watchListCardSection];
    v178 = [(SFWatchListCardSection *)v175 initWithProtobuf:v177];

    v4 = v178;
  }

  v179 = [v3 value];
  v180 = [v179 mapsDetailedRowCardSection];

  if (v180)
  {
    v181 = [SFMapsDetailedRowCardSection alloc];
    v182 = [v3 value];
    v183 = [v182 mapsDetailedRowCardSection];
    v184 = [(SFMapsDetailedRowCardSection *)v181 initWithProtobuf:v183];

    v4 = v184;
  }

  v185 = [v3 value];
  v186 = [v185 buttonCardSection];

  if (v186)
  {
    v187 = [SFButtonCardSection alloc];
    v188 = [v3 value];
    v189 = [v188 buttonCardSection];
    v190 = [(SFButtonCardSection *)v187 initWithProtobuf:v189];

    v4 = v190;
  }

  v191 = [v3 value];
  v192 = [v191 horizontalButtonCardSection];

  if (v192)
  {
    v193 = [SFHorizontalButtonCardSection alloc];
    v194 = [v3 value];
    v195 = [v194 horizontalButtonCardSection];
    v196 = [(SFHorizontalButtonCardSection *)v193 initWithProtobuf:v195];

    v4 = v196;
  }

  v197 = [v3 value];
  v198 = [v197 verticalLayoutCardSection];

  if (v198)
  {
    v199 = [SFVerticalLayoutCardSection alloc];
    v200 = [v3 value];
    v201 = [v200 verticalLayoutCardSection];
    v202 = [(SFVerticalLayoutCardSection *)v199 initWithProtobuf:v201];

    v4 = v202;
  }

  v203 = [v3 value];
  v204 = [v203 productCardSection];

  if (v204)
  {
    v205 = [SFProductCardSection alloc];
    v206 = [v3 value];
    v207 = [v206 productCardSection];
    v208 = [(SFProductCardSection *)v205 initWithProtobuf:v207];

    v4 = v208;
  }

  v209 = [v3 value];
  v210 = [v209 horizontalScrollCardSection];

  if (v210)
  {
    v211 = [SFHorizontalScrollCardSection alloc];
    v212 = [v3 value];
    v213 = [v212 horizontalScrollCardSection];
    v214 = [(SFHorizontalScrollCardSection *)v211 initWithProtobuf:v213];

    v4 = v214;
  }

  v215 = [v3 value];
  v216 = [v215 mediaRemoteControlCardSection];

  if (v216)
  {
    v217 = [SFMediaRemoteControlCardSection alloc];
    v218 = [v3 value];
    v219 = [v218 mediaRemoteControlCardSection];
    v220 = [(SFMediaRemoteControlCardSection *)v217 initWithProtobuf:v219];

    v4 = v220;
  }

  v221 = [v3 value];
  v222 = [v221 mapPlaceCardSection];

  if (v222)
  {
    v223 = [SFMapPlaceCardSection alloc];
    v224 = [v3 value];
    v225 = [v224 mapPlaceCardSection];
    v226 = [(SFMapPlaceCardSection *)v223 initWithProtobuf:v225];

    v4 = v226;
  }

  v227 = [v3 value];
  v228 = [v227 compactRowCardSection];

  if (v228)
  {
    v229 = [SFCompactRowCardSection alloc];
    v230 = [v3 value];
    v231 = [v230 compactRowCardSection];
    v232 = [(SFCompactRowCardSection *)v229 initWithProtobuf:v231];

    v4 = v232;
  }

  v233 = [v3 value];
  v234 = [v233 worldMapCardSection];

  if (v234)
  {
    v235 = [SFWorldMapCardSection alloc];
    v236 = [v3 value];
    v237 = [v236 worldMapCardSection];
    v238 = [(SFWorldMapCardSection *)v235 initWithProtobuf:v237];

    v4 = v238;
  }

  v239 = [v3 value];
  v240 = [v239 attributionFooterCardSection];

  if (v240)
  {
    v241 = [SFAttributionFooterCardSection alloc];
    v242 = [v3 value];
    v243 = [v242 attributionFooterCardSection];
    v244 = [(SFAttributionFooterCardSection *)v241 initWithProtobuf:v243];

    v4 = v244;
  }

  v245 = [v3 value];
  v246 = [v245 gridCardSection];

  if (v246)
  {
    v247 = [SFGridCardSection alloc];
    v248 = [v3 value];
    v249 = [v248 gridCardSection];
    v250 = [(SFGridCardSection *)v247 initWithProtobuf:v249];

    v4 = v250;
  }

  v251 = [v3 value];
  v252 = [v251 personHeaderCardSection];

  if (v252)
  {
    v253 = [SFPersonHeaderCardSection alloc];
    v254 = [v3 value];
    v255 = [v254 personHeaderCardSection];
    v256 = [(SFPersonHeaderCardSection *)v253 initWithProtobuf:v255];

    v4 = v256;
  }

  v257 = [v3 value];
  v258 = [v257 colorBarCardSection];

  if (v258)
  {
    v259 = [SFColorBarCardSection alloc];
    v260 = [v3 value];
    v261 = [v260 colorBarCardSection];
    v262 = [(SFColorBarCardSection *)v259 initWithProtobuf:v261];

    v4 = v262;
  }

  v263 = [v3 value];
  v264 = [v263 splitCardSection];

  if (v264)
  {
    v265 = [SFSplitCardSection alloc];
    v266 = [v3 value];
    v267 = [v266 splitCardSection];
    v268 = [(SFSplitCardSection *)v265 initWithProtobuf:v267];

    v4 = v268;
  }

  v269 = [v3 value];
  v270 = [v269 linkPresentationCardSection];

  if (v270)
  {
    v271 = [SFLinkPresentationCardSection alloc];
    v272 = [v3 value];
    v273 = [v272 linkPresentationCardSection];
    v274 = [(SFLinkPresentationCardSection *)v271 initWithProtobuf:v273];

    v4 = v274;
  }

  v275 = [v3 value];
  v276 = [v275 findMyCardSection];

  if (v276)
  {
    v277 = [SFFindMyCardSection alloc];
    v278 = [v3 value];
    v279 = [v278 findMyCardSection];
    v280 = [(SFFindMyCardSection *)v277 initWithProtobuf:v279];

    v4 = v280;
  }

  v281 = [v3 value];
  v282 = [v281 heroCardSection];

  if (v282)
  {
    v283 = [SFHeroCardSection alloc];
    v284 = [v3 value];
    v285 = [v284 heroCardSection];
    v286 = [(SFHeroCardSection *)v283 initWithProtobuf:v285];

    v4 = v286;
  }

  v287 = [v3 value];
  v288 = [v287 newsCardSection];

  if (v288)
  {
    v289 = [SFNewsCardSection alloc];
    v290 = [v3 value];
    v291 = [v290 newsCardSection];
    v292 = [(SFNewsCardSection *)v289 initWithProtobuf:v291];

    v4 = v292;
  }

  v293 = [v3 value];
  v294 = [v293 miniCardSection];

  if (v294)
  {
    v295 = [SFMiniCardSection alloc];
    v296 = [v3 value];
    v297 = [v296 miniCardSection];
    v298 = [(SFMiniCardSection *)v295 initWithProtobuf:v297];

    v4 = v298;
  }

  v299 = [v3 value];
  v300 = [v299 infoCardSection];

  if (v300)
  {
    v301 = [SFInfoCardSection alloc];
    v302 = [v3 value];
    v303 = [v302 infoCardSection];
    v304 = [(SFInfoCardSection *)v301 initWithProtobuf:v303];

    v4 = v304;
  }

  v305 = [v3 value];
  v306 = [v305 collectionCardSection];

  if (v306)
  {
    v307 = [SFCollectionCardSection alloc];
    v308 = [v3 value];
    v309 = [v308 collectionCardSection];
    v310 = [(SFCollectionCardSection *)v307 initWithProtobuf:v309];

    v4 = v310;
  }

  v311 = [v3 value];
  v312 = [v311 combinedCardSection];

  if (v312)
  {
    v313 = [SFCombinedCardSection alloc];
    v314 = [v3 value];
    v315 = [v314 combinedCardSection];
    v316 = [(SFCombinedCardSection *)v313 initWithProtobuf:v315];

    v4 = v316;
  }

  v317 = [v3 value];
  v318 = [v317 responseWrapperCardSection];

  if (v318)
  {
    v319 = [SFResponseWrapperCardSection alloc];
    v320 = [v3 value];
    v321 = [v320 responseWrapperCardSection];
    v322 = [(SFResponseWrapperCardSection *)v319 initWithProtobuf:v321];

    v4 = v322;
  }

  v323 = [v3 value];
  v324 = [v323 listenToCardSection];

  if (v324)
  {
    v325 = [SFListenToCardSection alloc];
    v326 = [v3 value];
    v327 = [v326 listenToCardSection];
    v328 = [(SFListenToCardSection *)v325 initWithProtobuf:v327];

    v4 = v328;
  }

  v329 = [v3 value];
  v330 = [v329 watchNowCardSection];

  if (v330)
  {
    v331 = [SFWatchNowCardSection alloc];
    v332 = [v3 value];
    v333 = [v332 watchNowCardSection];
    v334 = [(SFWatchNowCardSection *)v331 initWithProtobuf:v333];

    v4 = v334;
  }

  v335 = [v3 value];
  v336 = [v335 strokeAnimationCardSection];

  if (v336)
  {
    v337 = [SFStrokeAnimationCardSection alloc];
    v338 = [v3 value];
    v339 = [v338 strokeAnimationCardSection];
    v340 = [(SFStrokeAnimationCardSection *)v337 initWithProtobuf:v339];

    v4 = v340;
  }

  v341 = [v3 value];
  v342 = [v341 buttonListCardSection];

  if (v342)
  {
    v343 = [SFButtonListCardSection alloc];
    v344 = [v3 value];
    v345 = [v344 buttonListCardSection];
    v346 = [(SFButtonListCardSection *)v343 initWithProtobuf:v345];

    v4 = v346;
  }

  v347 = [v3 value];
  v348 = [v347 commandRowCardSection];

  if (v348)
  {
    v349 = [SFCommandRowCardSection alloc];
    v350 = [v3 value];
    v351 = [v350 commandRowCardSection];
    v352 = [(SFCommandRowCardSection *)v349 initWithProtobuf:v351];

    v4 = v352;
  }

  v353 = [v3 value];
  v354 = [v353 leadingTrailingCardSection];

  if (v354)
  {
    v355 = [SFLeadingTrailingCardSection alloc];
    v356 = [v3 value];
    v357 = [v356 leadingTrailingCardSection];
    v358 = [(SFLeadingTrailingCardSection *)v355 initWithProtobuf:v357];

    v4 = v358;
  }

  v359 = [v3 value];
  v360 = [v359 heroTitleCardSection];

  if (v360)
  {
    v361 = [SFHeroTitleCardSection alloc];
    v362 = [v3 value];
    v363 = [v362 heroTitleCardSection];
    v364 = [(SFHeroTitleCardSection *)v361 initWithProtobuf:v363];

    v4 = v364;
  }

  v365 = [v3 value];
  v366 = [v365 archiveViewCardSection];

  if (v366)
  {
    v367 = [SFArchiveViewCardSection alloc];
    v368 = [v3 value];
    v369 = [v368 archiveViewCardSection];
    v370 = [(SFArchiveViewCardSection *)v367 initWithProtobuf:v369];

    v4 = v370;
  }

  v371 = [v3 value];
  v372 = [v371 appIconCardSection];

  if (v372)
  {
    v373 = [SFAppIconCardSection alloc];
    v374 = [v3 value];
    v375 = [v374 appIconCardSection];
    v376 = [(SFAppIconCardSection *)v373 initWithProtobuf:v375];

    v4 = v376;
  }

  v377 = [v3 value];
  v378 = [v377 largeTitleDetailedRowCardSection];

  if (v378)
  {
    v379 = [SFLargeTitleDetailedRowCardSection alloc];
    v380 = [v3 value];
    v381 = [v380 largeTitleDetailedRowCardSection];
    v382 = [(SFLargeTitleDetailedRowCardSection *)v379 initWithProtobuf:v381];

    v4 = v382;
  }

  v383 = [v3 value];
  v384 = [v383 safariTableOfContentsCardSection];

  if (v384)
  {
    v385 = [SFSafariTableOfContentsCardSection alloc];
    v386 = [v3 value];
    v387 = [v386 safariTableOfContentsCardSection];
    v388 = [(SFSafariTableOfContentsCardSection *)v385 initWithProtobuf:v387];

    v4 = v388;
  }

  v389 = [v3 value];
  v390 = [v389 rfSummaryItemShortNumberCardSection];

  if (v390)
  {
    v391 = [RFSummaryItemShortNumberCardSection alloc];
    v392 = [v3 value];
    v393 = [v392 rfSummaryItemShortNumberCardSection];
    v394 = [(RFSummaryItemShortNumberCardSection *)v391 initWithProtobuf:v393];

    v4 = v394;
  }

  v395 = [v3 value];
  v396 = [v395 rfSummaryItemTextCardSection];

  if (v396)
  {
    v397 = [RFSummaryItemTextCardSection alloc];
    v398 = [v3 value];
    v399 = [v398 rfSummaryItemTextCardSection];
    v400 = [(RFSummaryItemTextCardSection *)v397 initWithProtobuf:v399];

    v4 = v400;
  }

  v401 = [v3 value];
  v402 = [v401 rfSummaryItemStandardCardSection];

  if (v402)
  {
    v403 = [RFSummaryItemStandardCardSection alloc];
    v404 = [v3 value];
    v405 = [v404 rfSummaryItemStandardCardSection];
    v406 = [(RFSummaryItemStandardCardSection *)v403 initWithProtobuf:v405];

    v4 = v406;
  }

  v407 = [v3 value];
  v408 = [v407 rfFactItemShortNumberCardSection];

  if (v408)
  {
    v409 = [RFFactItemShortNumberCardSection alloc];
    v410 = [v3 value];
    v411 = [v410 rfFactItemShortNumberCardSection];
    v412 = [(RFFactItemShortNumberCardSection *)v409 initWithProtobuf:v411];

    v4 = v412;
  }

  v413 = [v3 value];
  v414 = [v413 rfFactItemStandardCardSection];

  if (v414)
  {
    v415 = [RFFactItemStandardCardSection alloc];
    v416 = [v3 value];
    v417 = [v416 rfFactItemStandardCardSection];
    v418 = [(RFFactItemStandardCardSection *)v415 initWithProtobuf:v417];

    v4 = v418;
  }

  v419 = [v3 value];
  v420 = [v419 rfLongItemStandardCardSection];

  if (v420)
  {
    v421 = [RFLongItemStandardCardSection alloc];
    v422 = [v3 value];
    v423 = [v422 rfLongItemStandardCardSection];
    v424 = [(RFLongItemStandardCardSection *)v421 initWithProtobuf:v423];

    v4 = v424;
  }

  v425 = [v3 value];
  v426 = [v425 rfPrimaryHeaderRichCardSection];

  if (v426)
  {
    v427 = [RFPrimaryHeaderRichCardSection alloc];
    v428 = [v3 value];
    v429 = [v428 rfPrimaryHeaderRichCardSection];
    v430 = [(RFPrimaryHeaderRichCardSection *)v427 initWithProtobuf:v429];

    v4 = v430;
  }

  v431 = [v3 value];
  v432 = [v431 rfPrimaryHeaderStandardCardSection];

  if (v432)
  {
    v433 = [RFPrimaryHeaderStandardCardSection alloc];
    v434 = [v3 value];
    v435 = [v434 rfPrimaryHeaderStandardCardSection];
    v436 = [(RFPrimaryHeaderStandardCardSection *)v433 initWithProtobuf:v435];

    v4 = v436;
  }

  v437 = [v3 value];
  v438 = [v437 rfReferenceFootnoteCardSection];

  if (v438)
  {
    v439 = [RFReferenceFootnoteCardSection alloc];
    v440 = [v3 value];
    v441 = [v440 rfReferenceFootnoteCardSection];
    v442 = [(RFReferenceFootnoteCardSection *)v439 initWithProtobuf:v441];

    v4 = v442;
  }

  v443 = [v3 value];
  v444 = [v443 rfReferenceRichCardSection];

  if (v444)
  {
    v445 = [RFReferenceRichCardSection alloc];
    v446 = [v3 value];
    v447 = [v446 rfReferenceRichCardSection];
    v448 = [(RFReferenceRichCardSection *)v445 initWithProtobuf:v447];

    v4 = v448;
  }

  v449 = [v3 value];
  v450 = [v449 rfSimpleItemRichCardSection];

  if (v450)
  {
    v451 = [RFSimpleItemRichCardSection alloc];
    v452 = [v3 value];
    v453 = [v452 rfSimpleItemRichCardSection];
    v454 = [(RFSimpleItemRichCardSection *)v451 initWithProtobuf:v453];

    v4 = v454;
  }

  v455 = [v3 value];
  v456 = [v455 rfSimpleItemStandardCardSection];

  if (v456)
  {
    v457 = [RFSimpleItemStandardCardSection alloc];
    v458 = [v3 value];
    v459 = [v458 rfSimpleItemStandardCardSection];
    v460 = [(RFSimpleItemStandardCardSection *)v457 initWithProtobuf:v459];

    v4 = v460;
  }

  v461 = [v3 value];
  v462 = [v461 rfSummaryItemAlignedTextCardSection];

  if (v462)
  {
    v463 = [RFSummaryItemAlignedTextCardSection alloc];
    v464 = [v3 value];
    v465 = [v464 rfSummaryItemAlignedTextCardSection];
    v466 = [(RFSummaryItemAlignedTextCardSection *)v463 initWithProtobuf:v465];

    v4 = v466;
  }

  v467 = [v3 value];
  v468 = [v467 rfExpandableStandardCardSection];

  if (v468)
  {
    v469 = [RFExpandableStandardCardSection alloc];
    v470 = [v3 value];
    v471 = [v470 rfExpandableStandardCardSection];
    v472 = [(RFExpandableStandardCardSection *)v469 initWithProtobuf:v471];

    v4 = v472;
  }

  v473 = [v3 value];
  v474 = [v473 rfFactItemButtonCardSection];

  if (v474)
  {
    v475 = [RFFactItemButtonCardSection alloc];
    v476 = [v3 value];
    v477 = [v476 rfFactItemButtonCardSection];
    v478 = [(RFFactItemButtonCardSection *)v475 initWithProtobuf:v477];

    v4 = v478;
  }

  v479 = [v3 value];
  v480 = [v479 rfFactItemHeroNumberCardSection];

  if (v480)
  {
    v481 = [RFFactItemHeroNumberCardSection alloc];
    v482 = [v3 value];
    v483 = [v482 rfFactItemHeroNumberCardSection];
    v484 = [(RFFactItemHeroNumberCardSection *)v481 initWithProtobuf:v483];

    v4 = v484;
  }

  v485 = [v3 value];
  v486 = [v485 rfPrimaryHeaderMarqueeCardSection];

  if (v486)
  {
    v487 = [RFPrimaryHeaderMarqueeCardSection alloc];
    v488 = [v3 value];
    v489 = [v488 rfPrimaryHeaderMarqueeCardSection];
    v490 = [(RFPrimaryHeaderMarqueeCardSection *)v487 initWithProtobuf:v489];

    v4 = v490;
  }

  v491 = [v3 value];
  v492 = [v491 rfSummaryItemDetailedTextCardSection];

  if (v492)
  {
    v493 = [RFSummaryItemDetailedTextCardSection alloc];
    v494 = [v3 value];
    v495 = [v494 rfSummaryItemDetailedTextCardSection];
    v496 = [(RFSummaryItemDetailedTextCardSection *)v493 initWithProtobuf:v495];

    v4 = v496;
  }

  v497 = [v3 value];
  v498 = [v497 rfSimpleItemPlayerCardSection];

  if (v498)
  {
    v499 = [RFSimpleItemPlayerCardSection alloc];
    v500 = [v3 value];
    v501 = [v500 rfSimpleItemPlayerCardSection];
    v502 = [(RFSimpleItemPlayerCardSection *)v499 initWithProtobuf:v501];

    v4 = v502;
  }

  v503 = [v3 value];
  v504 = [v503 rfSummaryItemPairCardSection];

  if (v504)
  {
    v505 = [RFSummaryItemPairCardSection alloc];
    v506 = [v3 value];
    v507 = [v506 rfSummaryItemPairCardSection];
    v508 = [(RFSummaryItemPairCardSection *)v505 initWithProtobuf:v507];

    v4 = v508;
  }

  v509 = [v3 value];
  v510 = [v509 rfSummaryItemPairNumberCardSection];

  if (v510)
  {
    v511 = [RFSummaryItemPairNumberCardSection alloc];
    v512 = [v3 value];
    v513 = [v512 rfSummaryItemPairNumberCardSection];
    v514 = [(RFSummaryItemPairNumberCardSection *)v511 initWithProtobuf:v513];

    v4 = v514;
  }

  v515 = [v3 value];
  v516 = [v515 rfFactItemShortHeroNumberCardSection];

  if (v516)
  {
    v517 = [RFFactItemShortHeroNumberCardSection alloc];
    v518 = [v3 value];
    v519 = [v518 rfFactItemShortHeroNumberCardSection];
    v520 = [(RFFactItemShortHeroNumberCardSection *)v517 initWithProtobuf:v519];

    v4 = v520;
  }

  v521 = [v3 value];
  v522 = [v521 rfFactItemDetailedNumberCardSection];

  if (v522)
  {
    v523 = [RFFactItemDetailedNumberCardSection alloc];
    v524 = [v3 value];
    v525 = [v524 rfFactItemDetailedNumberCardSection];
    v526 = [(RFFactItemDetailedNumberCardSection *)v523 initWithProtobuf:v525];

    v4 = v526;
  }

  v527 = [v3 value];
  v528 = [v527 rfFactItemHeroButtonCardSection];

  if (v528)
  {
    v529 = [RFFactItemHeroButtonCardSection alloc];
    v530 = [v3 value];
    v531 = [v530 rfFactItemHeroButtonCardSection];
    v532 = [(RFFactItemHeroButtonCardSection *)v529 initWithProtobuf:v531];

    v4 = v532;
  }

  v533 = [v3 value];
  v534 = [v533 rfFactItemImageRightCardSection];

  if (v534)
  {
    v535 = [RFFactItemImageRightCardSection alloc];
    v536 = [v3 value];
    v537 = [v536 rfFactItemImageRightCardSection];
    v538 = [(RFFactItemImageRightCardSection *)v535 initWithProtobuf:v537];

    v4 = v538;
  }

  v539 = [v3 value];
  v540 = [v539 rfSummaryItemSwitchV2CardSection];

  if (v540)
  {
    v541 = [RFSummaryItemSwitchV2CardSection alloc];
    v542 = [v3 value];
    v543 = [v542 rfSummaryItemSwitchV2CardSection];
    v544 = [(RFSummaryItemSwitchV2CardSection *)v541 initWithProtobuf:v543];

    v4 = v544;
  }

  v545 = [v3 value];
  v546 = [v545 rfTableHeaderCardSection];

  if (v546)
  {
    v547 = [RFTableHeaderCardSection alloc];
    v548 = [v3 value];
    v549 = [v548 rfTableHeaderCardSection];
    v550 = [(RFTableHeaderCardSection *)v547 initWithProtobuf:v549];

    v4 = v550;
  }

  v551 = [v3 value];
  v552 = [v551 rfTableRowCardSection];

  if (v552)
  {
    v553 = [RFTableRowCardSection alloc];
    v554 = [v3 value];
    v555 = [v554 rfTableRowCardSection];
    v556 = [(RFTableRowCardSection *)v553 initWithProtobuf:v555];

    v4 = v556;
  }

  v557 = [v3 value];
  v558 = [v557 rfSimpleItemVisualElementCardSection];

  if (v558)
  {
    v559 = [RFSimpleItemVisualElementCardSection alloc];
    v560 = [v3 value];
    v561 = [v560 rfSimpleItemVisualElementCardSection];
    v562 = [(RFSimpleItemVisualElementCardSection *)v559 initWithProtobuf:v561];

    v4 = v562;
  }

  v563 = [v3 value];
  v564 = [v563 rfSummaryItemPlayerCardSection];

  if (v564)
  {
    v565 = [RFSummaryItemPlayerCardSection alloc];
    v566 = [v3 value];
    v567 = [v566 rfSummaryItemPlayerCardSection];
    v568 = [(RFSummaryItemPlayerCardSection *)v565 initWithProtobuf:v567];

    v4 = v568;
  }

  v569 = [v3 value];
  v570 = [v569 rfSummaryItemImageRightCardSection];

  if (v570)
  {
    v571 = [RFSummaryItemImageRightCardSection alloc];
    v572 = [v3 value];
    v573 = [v572 rfSummaryItemImageRightCardSection];
    v574 = [(RFSummaryItemImageRightCardSection *)v571 initWithProtobuf:v573];

    v4 = v574;
  }

  v575 = [v3 value];
  v576 = [v575 rfSummaryItemButtonCardSection];

  if (v576)
  {
    v577 = [RFSummaryItemButtonCardSection alloc];
    v578 = [v3 value];
    v579 = [v578 rfSummaryItemButtonCardSection];
    v580 = [(RFSummaryItemButtonCardSection *)v577 initWithProtobuf:v579];

    v4 = v580;
  }

  v581 = [v3 value];
  v582 = [v581 rfSimpleItemReverseRichCardSection];

  if (v582)
  {
    v583 = [RFSimpleItemReverseRichCardSection alloc];
    v584 = [v3 value];
    v585 = [v584 rfSimpleItemReverseRichCardSection];
    v586 = [(RFSimpleItemReverseRichCardSection *)v583 initWithProtobuf:v585];

    v4 = v586;
  }

  v587 = [v3 value];
  v588 = [v587 rfSimpleItemRichSearchResultCardSection];

  if (v588)
  {
    v589 = [RFSimpleItemRichSearchResultCardSection alloc];
    v590 = [v3 value];
    v591 = [v590 rfSimpleItemRichSearchResultCardSection];
    v592 = [(RFSimpleItemRichSearchResultCardSection *)v589 initWithProtobuf:v591];

    v4 = v592;
  }

  v593 = [v3 value];
  v594 = [v593 rfPrimaryHeaderStackedImageCardSection];

  if (v594)
  {
    v595 = [RFPrimaryHeaderStackedImageCardSection alloc];
    v596 = [v3 value];
    v597 = [v596 rfPrimaryHeaderStackedImageCardSection];
    v598 = [(RFPrimaryHeaderStackedImageCardSection *)v595 initWithProtobuf:v597];

    v4 = v598;
  }

  v599 = [v3 value];
  v600 = [v599 rfReferenceItemLogoCardSection];

  if (v600)
  {
    v601 = [RFReferenceItemLogoCardSection alloc];
    v602 = [v3 value];
    v603 = [v602 rfReferenceItemLogoCardSection];
    v604 = [(RFReferenceItemLogoCardSection *)v601 initWithProtobuf:v603];

    v4 = v604;
  }

  v605 = [v3 value];
  v606 = [v605 rfReferenceItemButtonCardSection];

  if (v606)
  {
    v607 = [RFReferenceItemButtonCardSection alloc];
    v608 = [v3 value];
    v609 = [v608 rfReferenceItemButtonCardSection];
    v610 = [(RFReferenceItemButtonCardSection *)v607 initWithProtobuf:v609];

    v4 = v610;
  }

  v611 = [v3 value];
  v612 = [v611 rfButtonCardSection];

  if (v612)
  {
    v613 = [RFButtonCardSection alloc];
    v614 = [v3 value];
    v615 = [v614 rfButtonCardSection];
    v616 = [(RFButtonCardSection *)v613 initWithProtobuf:v615];

    v4 = v616;
  }

  v617 = [v3 value];
  v618 = [v617 rfBinaryButtonCardSection];

  if (v618)
  {
    v619 = [RFBinaryButtonCardSection alloc];
    v620 = [v3 value];
    v621 = [v620 rfBinaryButtonCardSection];
    v622 = [(RFBinaryButtonCardSection *)v619 initWithProtobuf:v621];

    v4 = v622;
  }

  v623 = [v3 value];
  v624 = [v623 rfReferenceCenteredCardSection];

  if (v624)
  {
    v625 = [RFReferenceCenteredCardSection alloc];
    v626 = [v3 value];
    v627 = [v626 rfReferenceCenteredCardSection];
    v628 = [(RFReferenceCenteredCardSection *)v625 initWithProtobuf:v627];

    v4 = v628;
  }

  v629 = [v3 value];
  v630 = [v629 rfSecondaryHeaderStandardCardSection];

  if (v630)
  {
    v631 = [RFSecondaryHeaderStandardCardSection alloc];
    v632 = [v3 value];
    v633 = [v632 rfSecondaryHeaderStandardCardSection];
    v634 = [(RFSecondaryHeaderStandardCardSection *)v631 initWithProtobuf:v633];

    v4 = v634;
  }

  v635 = [v3 value];
  v636 = [v635 rfSecondaryHeaderEmphasizedCardSection];

  if (v636)
  {
    v637 = [RFSecondaryHeaderEmphasizedCardSection alloc];
    v638 = [v3 value];
    v639 = [v638 rfSecondaryHeaderEmphasizedCardSection];
    v640 = [(RFSecondaryHeaderEmphasizedCardSection *)v637 initWithProtobuf:v639];

    v4 = v640;
  }

  v641 = [v3 value];
  v642 = [v641 rfMapCardSection];

  if (v642)
  {
    v643 = [RFMapCardSection alloc];
    v644 = [v3 value];
    v645 = [v644 rfMapCardSection];
    v646 = [(RFMapCardSection *)v643 initWithProtobuf:v645];

    v4 = v646;
  }

  v647 = [v3 value];
  v648 = [v647 rfReferenceStandardCardSection];

  if (v648)
  {
    v649 = [RFReferenceStandardCardSection alloc];
    v650 = [v3 value];
    v651 = [v650 rfReferenceStandardCardSection];
    v652 = [(RFReferenceStandardCardSection *)v649 initWithProtobuf:v651];

    v4 = v652;
  }

  v653 = [v3 value];
  v654 = [v653 rfMultiButtonCardSection];

  if (v654)
  {
    v655 = [RFMultiButtonCardSection alloc];
    v656 = [v3 value];
    v657 = [v656 rfMultiButtonCardSection];
    v658 = [(RFMultiButtonCardSection *)v655 initWithProtobuf:v657];

    v4 = v658;
  }

  v659 = [v3 value];
  v660 = [v659 rfDisambiguationTitleCardSection];

  if (v660)
  {
    v661 = [RFDisambiguationTitleCardSection alloc];
    v662 = [v3 value];
    v663 = [v662 rfDisambiguationTitleCardSection];
    v664 = [(RFDisambiguationTitleCardSection *)v661 initWithProtobuf:v663];

    v4 = v664;
  }

  v665 = [v3 value];
  v666 = [v665 rfSummaryItemExpandableCardSection];

  if (v666)
  {
    v667 = [RFSummaryItemExpandableCardSection alloc];
    v668 = [v3 value];
    v669 = [v668 rfSummaryItemExpandableCardSection];
    v670 = [(RFSummaryItemExpandableCardSection *)v667 initWithProtobuf:v669];

    v4 = v670;
  }

  v671 = [v3 nextCard];

  if (v671)
  {
    v672 = [SFCard alloc];
    v673 = [v3 nextCard];
    v674 = [(SFCard *)v672 initWithProtobuf:v673];
    [(SFCardSection *)v4 setNextCard:v674];
  }

  v675 = [v3 commands];
  v676 = [v675 count];

  if (v676)
  {
    v677 = [v3 commands];
    if (v677)
    {
      v678 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v678 = 0;
    }

    v836 = 0u;
    v837 = 0u;
    v834 = 0u;
    v835 = 0u;
    v679 = [v3 commands];
    v680 = [v679 countByEnumeratingWithState:&v834 objects:v845 count:16];
    if (v680)
    {
      v681 = v680;
      v682 = *v835;
      do
      {
        for (i = 0; i != v681; ++i)
        {
          if (*v835 != v682)
          {
            objc_enumerationMutation(v679);
          }

          v684 = [[SFAbstractCommand alloc] initWithProtobuf:*(*(&v834 + 1) + 8 * i)];
          if (v684)
          {
            [v678 addObject:v684];
          }
        }

        v681 = [v679 countByEnumeratingWithState:&v834 objects:v845 count:16];
      }

      while (v681);
    }

    [(SFCardSection *)v4 setCommands:v678];
  }

  v685 = [v3 parameterKeyPaths];
  v686 = [v685 count];

  if (v686)
  {
    v687 = [v3 parameterKeyPaths];
    if (v687)
    {
      v688 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v688 = 0;
    }

    v832 = 0u;
    v833 = 0u;
    v830 = 0u;
    v831 = 0u;
    v689 = [v3 parameterKeyPaths];
    v690 = [v689 countByEnumeratingWithState:&v830 objects:v844 count:16];
    if (v690)
    {
      v691 = v690;
      v692 = *v831;
      do
      {
        for (j = 0; j != v691; ++j)
        {
          if (*v831 != v692)
          {
            objc_enumerationMutation(v689);
          }

          v694 = *(*(&v830 + 1) + 8 * j);
          if (v694)
          {
            [v688 addObject:v694];
          }
        }

        v691 = [v689 countByEnumeratingWithState:&v830 objects:v844 count:16];
      }

      while (v691);
    }

    [(SFCardSection *)v4 setParameterKeyPaths:v688];
  }

  v695 = [v3 cardSectionId];

  if (v695)
  {
    v696 = [v3 cardSectionId];
    [(SFCardSection *)v4 setCardSectionId:v696];
  }

  v697 = [v3 resultIdentifier];

  if (v697)
  {
    v698 = [v3 resultIdentifier];
    [(SFCardSection *)v4 setResultIdentifier:v698];
  }

  v699 = [v3 userReportRequest];

  if (v699)
  {
    v700 = [SFUserReportRequest alloc];
    v701 = [v3 userReportRequest];
    v702 = [(SFUserReportRequest *)v700 initWithProtobuf:v701];
    [(SFCardSection *)v4 setUserReportRequest:v702];
  }

  v703 = [v3 command];

  if (v703)
  {
    v704 = [SFCommand alloc];
    v705 = [v3 command];
    v706 = [(SFCommand *)v704 initWithProtobuf:v705];
    [(SFCardSection *)v4 setCommand:v706];
  }

  v707 = [v3 previewCommand];

  if (v707)
  {
    v708 = [SFCommand alloc];
    v709 = [v3 previewCommand];
    v710 = [(SFCommand *)v708 initWithProtobuf:v709];
    [(SFCardSection *)v4 setPreviewCommand:v710];
  }

  v711 = [v3 previewButtonItems];
  v712 = [v711 count];

  if (v712)
  {
    v713 = [v3 previewButtonItems];
    if (v713)
    {
      v714 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v714 = 0;
    }

    v828 = 0u;
    v829 = 0u;
    v826 = 0u;
    v827 = 0u;
    v715 = [v3 previewButtonItems];
    v716 = [v715 countByEnumeratingWithState:&v826 objects:v843 count:16];
    if (v716)
    {
      v717 = v716;
      v718 = *v827;
      do
      {
        for (k = 0; k != v717; ++k)
        {
          if (*v827 != v718)
          {
            objc_enumerationMutation(v715);
          }

          v720 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v826 + 1) + 8 * k)];
          if (v720)
          {
            [v714 addObject:v720];
          }
        }

        v717 = [v715 countByEnumeratingWithState:&v826 objects:v843 count:16];
      }

      while (v717);
    }

    [(SFCardSection *)v4 setPreviewButtonItems:v714];
  }

  v721 = [v3 cardSectionDetail];

  if (v721)
  {
    v722 = [v3 cardSectionDetail];
    [(SFCardSection *)v4 setCardSectionDetail:v722];
  }

  v723 = [v3 previewButtonItemsTitle];

  if (v723)
  {
    v724 = [v3 previewButtonItemsTitle];
    [(SFCardSection *)v4 setPreviewButtonItemsTitle:v724];
  }

  v725 = [v3 backgroundColor];

  if (v725)
  {
    v726 = [SFColor alloc];
    v727 = [v3 backgroundColor];
    v728 = [(SFColor *)v726 initWithProtobuf:v727];
    [(SFCardSection *)v4 setBackgroundColor:v728];
  }

  if ([v3 shouldHideInAmbientMode])
  {
    -[SFCardSection setShouldHideInAmbientMode:](v4, "setShouldHideInAmbientMode:", [v3 shouldHideInAmbientMode]);
  }

  v729 = [v3 leadingSwipeButtonItems];
  v730 = [v729 count];

  if (v730)
  {
    v731 = [v3 leadingSwipeButtonItems];
    if (v731)
    {
      v732 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v732 = 0;
    }

    v824 = 0u;
    v825 = 0u;
    v822 = 0u;
    v823 = 0u;
    v733 = [v3 leadingSwipeButtonItems];
    v734 = [v733 countByEnumeratingWithState:&v822 objects:v842 count:16];
    if (v734)
    {
      v735 = v734;
      v736 = *v823;
      do
      {
        for (m = 0; m != v735; ++m)
        {
          if (*v823 != v736)
          {
            objc_enumerationMutation(v733);
          }

          v738 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v822 + 1) + 8 * m)];
          if (v738)
          {
            [v732 addObject:v738];
          }
        }

        v735 = [v733 countByEnumeratingWithState:&v822 objects:v842 count:16];
      }

      while (v735);
    }

    [(SFCardSection *)v4 setLeadingSwipeButtonItems:v732];
  }

  v739 = [v3 trailingSwipeButtonItems];
  v740 = [v739 count];

  if (v740)
  {
    v741 = [v3 trailingSwipeButtonItems];
    if (v741)
    {
      v742 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v742 = 0;
    }

    v820 = 0u;
    v821 = 0u;
    v818 = 0u;
    v819 = 0u;
    v743 = [v3 trailingSwipeButtonItems];
    v744 = [v743 countByEnumeratingWithState:&v818 objects:v841 count:16];
    if (v744)
    {
      v745 = v744;
      v746 = *v819;
      do
      {
        for (n = 0; n != v745; ++n)
        {
          if (*v819 != v746)
          {
            objc_enumerationMutation(v743);
          }

          v748 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v818 + 1) + 8 * n)];
          if (v748)
          {
            [v742 addObject:v748];
          }
        }

        v745 = [v743 countByEnumeratingWithState:&v818 objects:v841 count:16];
      }

      while (v745);
    }

    [(SFCardSection *)v4 setTrailingSwipeButtonItems:v742];
  }

  v749 = [v3 punchoutOptions];
  v750 = [v749 count];

  if (v750)
  {
    v751 = [v3 punchoutOptions];
    if (v751)
    {
      v752 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v752 = 0;
    }

    v816 = 0u;
    v817 = 0u;
    v814 = 0u;
    v815 = 0u;
    v753 = [v3 punchoutOptions];
    v754 = [v753 countByEnumeratingWithState:&v814 objects:v840 count:16];
    if (v754)
    {
      v755 = v754;
      v756 = *v815;
      do
      {
        for (ii = 0; ii != v755; ++ii)
        {
          if (*v815 != v756)
          {
            objc_enumerationMutation(v753);
          }

          v758 = [[SFPunchout alloc] initWithProtobuf:*(*(&v814 + 1) + 8 * ii)];
          if (v758)
          {
            [v752 addObject:v758];
          }
        }

        v755 = [v753 countByEnumeratingWithState:&v814 objects:v840 count:16];
      }

      while (v755);
    }

    [(SFCardSection *)v4 setPunchoutOptions:v752];
  }

  v759 = [v3 punchoutPickerTitle];

  if (v759)
  {
    v760 = [v3 punchoutPickerTitle];
    [(SFCardSection *)v4 setPunchoutPickerTitle:v760];
  }

  v761 = [v3 punchoutPickerDismissText];

  if (v761)
  {
    v762 = [v3 punchoutPickerDismissText];
    [(SFCardSection *)v4 setPunchoutPickerDismissText:v762];
  }

  if ([v3 canBeHidden])
  {
    -[SFCardSection setCanBeHidden:](v4, "setCanBeHidden:", [v3 canBeHidden]);
  }

  if ([v3 hasTopPadding])
  {
    -[SFCardSection setHasTopPadding:](v4, "setHasTopPadding:", [v3 hasTopPadding]);
  }

  if ([v3 hasBottomPadding])
  {
    -[SFCardSection setHasBottomPadding:](v4, "setHasBottomPadding:", [v3 hasBottomPadding]);
  }

  if ([v3 separatorStyle])
  {
    -[SFCardSection setSeparatorStyle:](v4, "setSeparatorStyle:", [v3 separatorStyle]);
  }

  v763 = [v3 referencedCommands];
  v764 = [v763 count];

  if (v764)
  {
    v765 = [v3 referencedCommands];
    if (v765)
    {
      v766 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v766 = 0;
    }

    v812 = 0u;
    v813 = 0u;
    v810 = 0u;
    v811 = 0u;
    v767 = [v3 referencedCommands];
    v768 = [v767 countByEnumeratingWithState:&v810 objects:v839 count:16];
    if (v768)
    {
      v769 = v768;
      v770 = *v811;
      do
      {
        for (jj = 0; jj != v769; ++jj)
        {
          if (*v811 != v770)
          {
            objc_enumerationMutation(v767);
          }

          v772 = [[SFCommand alloc] initWithProtobuf:*(*(&v810 + 1) + 8 * jj)];
          if (v772)
          {
            [v766 addObject:v772];
          }
        }

        v769 = [v767 countByEnumeratingWithState:&v810 objects:v839 count:16];
      }

      while (v769);
    }

    [(SFCardSection *)v4 setReferencedCommands:v766];
  }

  if ([v3 forceEnable3DTouch])
  {
    -[SFCardSection setForceEnable3DTouch:](v4, "setForceEnable3DTouch:", [v3 forceEnable3DTouch]);
  }

  if ([v3 shouldShowInSmartDialog])
  {
    -[SFCardSection setShouldShowInSmartDialog:](v4, "setShouldShowInSmartDialog:", [v3 shouldShowInSmartDialog]);
  }

  v773 = [v3 appEntityAnnotation];

  if (v773)
  {
    v774 = [SFAppEntityAnnotation alloc];
    v775 = [v3 appEntityAnnotation];
    v776 = [(SFAppEntityAnnotation *)v774 initWithProtobuf:v775];
    [(SFCardSection *)v4 setAppEntityAnnotation:v776];
  }

  v777 = [v3 emphasisSubjectId];

  if (v777)
  {
    v778 = [v3 emphasisSubjectId];
    [(SFCardSection *)v4 setEmphasisSubjectId:v778];
  }

  if ([v3 increasedContrastMode])
  {
    -[SFCardSection setIncreasedContrastMode:](v4, "setIncreasedContrastMode:", [v3 increasedContrastMode]);
  }

  v779 = [v3 secondaryCommand];

  if (v779)
  {
    v780 = [SFCommand alloc];
    v781 = [v3 secondaryCommand];
    v782 = [(SFCommand *)v780 initWithProtobuf:v781];
    [(SFCardSection *)v4 setSecondaryCommand:v782];
  }

  if ([v3 requiredLevelOfDetail])
  {
    -[SFCardSection setRequiredLevelOfDetail:](v4, "setRequiredLevelOfDetail:", [v3 requiredLevelOfDetail]);
  }

  v783 = [v3 racFeedbackSubfeatureId];

  if (v783)
  {
    v784 = [v3 racFeedbackSubfeatureId];
    [(SFCardSection *)v4 setRacFeedbackSubfeatureId:v784];
  }

  v785 = [v3 racFeedbackLoggingContent];
  v786 = [v785 count];

  if (v786)
  {
    v787 = [v3 racFeedbackLoggingContent];
    v808[0] = MEMORY[0x1E69E9820];
    v808[1] = 3221225472;
    v808[2] = __55__SFCardSection_ProtobufInitializer__initWithProtobuf___block_invoke;
    v808[3] = &unk_1E7ACDB40;
    v809 = v4;
    [v787 enumerateKeysAndObjectsUsingBlock:v808];
  }

  v788 = [v3 copyableItems];
  v789 = [v788 count];

  if (v789)
  {
    v790 = [v3 copyableItems];
    if (v790)
    {
      v791 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v791 = 0;
    }

    v806 = 0u;
    v807 = 0u;
    v804 = 0u;
    v805 = 0u;
    v792 = [v3 copyableItems];
    v793 = [v792 countByEnumeratingWithState:&v804 objects:v838 count:16];
    if (v793)
    {
      v794 = v793;
      v795 = *v805;
      do
      {
        for (kk = 0; kk != v794; ++kk)
        {
          if (*v805 != v795)
          {
            objc_enumerationMutation(v792);
          }

          v797 = [[SFCopyItem alloc] initWithProtobuf:*(*(&v804 + 1) + 8 * kk)];
          if (v797)
          {
            [v791 addObject:v797];
          }
        }

        v794 = [v792 countByEnumeratingWithState:&v804 objects:v838 count:16];
      }

      while (v794);
    }

    [(SFCardSection *)v4 setCopyableItems:v791];
  }

  v798 = [v3 applicationBundleIdentifier];

  if (v798)
  {
    v799 = [v3 applicationBundleIdentifier];
    [(SFCardSection *)v4 setApplicationBundleIdentifier:v799];
  }

  v800 = v4;

  v801 = *MEMORY[0x1E69E9840];
  return v800;
}

void __55__SFCardSection_ProtobufInitializer__initWithProtobuf___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 racFeedbackLoggingContent];
  [v7 setObject:v5 forKey:v6];
}

- (void)addCardsFromEmbeddedSectionsTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SFCardSection *)self sectionsWithCards];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) embeddedCards];
        [v4 addObjectsFromArray:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addCardsFromButtonsTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SFCardSection *)self previewButtonItems];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 command];
          v12 = [v11 embeddedCards];
          [v4 addObjectsFromArray:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addCardsFromCommandsTo:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self previewCommand];
  v6 = [v5 embeddedCards];
  [v4 addObjectsFromArray:v6];

  v8 = [(SFCardSection *)self command];
  v7 = [v8 embeddedCards];
  [v4 addObjectsFromArray:v7];
}

- (NSArray)embeddedCards
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v4 = [(SFCardSection *)self nextCard];

  if (v4)
  {
    v5 = [(SFCardSection *)self nextCard];
    [v3 addObject:v5];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(SFCardSection *)self nextCard];
    v7 = [v6 cardSections];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) embeddedCards];
          [v3 addObjectsFromArray:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  [(SFCardSection *)self addCardsFromCommandsTo:v3];
  [(SFCardSection *)self addCardsFromButtonsTo:v3];
  [(SFCardSection *)self addCardsFromEmbeddedSectionsTo:v3];
  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v30 = 1;
  }

  else if ([(SFCardSection *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    punchoutOptions = self->_punchoutOptions;
    if ((punchoutOptions != 0) == (v5->_punchoutOptions == 0) || punchoutOptions && ![(NSArray *)punchoutOptions isEqual:?])
    {
      goto LABEL_86;
    }

    punchoutPickerTitle = self->_punchoutPickerTitle;
    if ((punchoutPickerTitle != 0) == (v5->_punchoutPickerTitle == 0) || punchoutPickerTitle && ![(NSString *)punchoutPickerTitle isEqual:?])
    {
      goto LABEL_86;
    }

    punchoutPickerDismissText = self->_punchoutPickerDismissText;
    if ((punchoutPickerDismissText != 0) == (v5->_punchoutPickerDismissText == 0) || punchoutPickerDismissText && ![(NSString *)punchoutPickerDismissText isEqual:?])
    {
      goto LABEL_86;
    }

    if (self->_canBeHidden != v5->_canBeHidden)
    {
      goto LABEL_86;
    }

    if (self->_hasTopPadding != v5->_hasTopPadding)
    {
      goto LABEL_86;
    }

    if (self->_hasBottomPadding != v5->_hasBottomPadding)
    {
      goto LABEL_86;
    }

    type = self->_type;
    if ((type != 0) == (v5->_type == 0) || type && ![(NSString *)type isEqual:?])
    {
      goto LABEL_86;
    }

    if (self->_separatorStyle != v5->_separatorStyle)
    {
      goto LABEL_86;
    }

    nextCard = self->_nextCard;
    if ((nextCard != 0) == (v5->_nextCard == 0) || nextCard && ![(SFCard *)nextCard isEqual:?])
    {
      goto LABEL_86;
    }

    commands = self->_commands;
    if ((commands != 0) == (v5->_commands == 0) || commands && ![(NSArray *)commands isEqual:?])
    {
      goto LABEL_86;
    }

    parameterKeyPaths = self->_parameterKeyPaths;
    if ((parameterKeyPaths != 0) == (v5->_parameterKeyPaths == 0) || parameterKeyPaths && ![(NSArray *)parameterKeyPaths isEqual:?])
    {
      goto LABEL_86;
    }

    cardSectionId = self->_cardSectionId;
    if ((cardSectionId != 0) == (v5->_cardSectionId == 0) || cardSectionId && ![(NSString *)cardSectionId isEqual:?])
    {
      goto LABEL_86;
    }

    resultIdentifier = self->_resultIdentifier;
    if ((resultIdentifier != 0) == (v5->_resultIdentifier == 0) || resultIdentifier && ![(NSString *)resultIdentifier isEqual:?])
    {
      goto LABEL_86;
    }

    backgroundColor = self->_backgroundColor;
    if ((backgroundColor != 0) == (v5->_backgroundColor == 0) || backgroundColor && ![(SFColor *)backgroundColor isEqual:?])
    {
      goto LABEL_86;
    }

    command = self->_command;
    if ((command != 0) == (v5->_command == 0) || command && ![(SFCommand *)command isEqual:?])
    {
      goto LABEL_86;
    }

    previewCommand = self->_previewCommand;
    if ((previewCommand != 0) == (v5->_previewCommand == 0) || previewCommand && ![(SFCommand *)previewCommand isEqual:?])
    {
      goto LABEL_86;
    }

    previewButtonItems = self->_previewButtonItems;
    if ((previewButtonItems != 0) == (v5->_previewButtonItems == 0) || previewButtonItems && ![(NSArray *)previewButtonItems isEqual:?])
    {
      goto LABEL_86;
    }

    commandDetail = self->_commandDetail;
    if ((commandDetail != 0) == (v5->_commandDetail == 0) || commandDetail && ![(NSString *)commandDetail isEqual:?])
    {
      goto LABEL_86;
    }

    cardSectionDetail = self->_cardSectionDetail;
    if ((cardSectionDetail != 0) == (v5->_cardSectionDetail == 0) || cardSectionDetail && ![(NSString *)cardSectionDetail isEqual:?])
    {
      goto LABEL_86;
    }

    if ((previewButtonItemsTitle = self->_previewButtonItemsTitle, (previewButtonItemsTitle != 0) == (v5->_previewButtonItemsTitle == 0)) || previewButtonItemsTitle && ![(NSString *)previewButtonItemsTitle isEqual:?]|| self->_shouldHideInAmbientMode != v5->_shouldHideInAmbientMode || self->_leadingSwipeButtonItems != v5->_leadingSwipeButtonItems || self->_trailingSwipeButtonItems != v5->_trailingSwipeButtonItems || self->_forceEnable3DTouch != v5->_forceEnable3DTouch || self->_shouldShowInSmartDialog != v5->_shouldShowInSmartDialog || (appEntityAnnotation = self->_appEntityAnnotation, (appEntityAnnotation != 0) == (v5->_appEntityAnnotation == 0)) || appEntityAnnotation && ![(SFAppEntityAnnotation *)appEntityAnnotation isEqual:?]|| (emphasisSubjectId = self->_emphasisSubjectId, (emphasisSubjectId != 0) == (v5->_emphasisSubjectId == 0)) || emphasisSubjectId && ![(NSString *)emphasisSubjectId isEqual:?]|| self->_increasedContrastMode != v5->_increasedContrastMode || self->_requiredLevelOfDetail != v5->_requiredLevelOfDetail || (secondaryCommand = self->_secondaryCommand, (secondaryCommand != 0) == (v5->_secondaryCommand == 0)) || secondaryCommand && (![(SFCommand *)secondaryCommand isEqual:?]|| self->_requiredLevelOfDetail != v5->_requiredLevelOfDetail) || (racFeedbackSubfeatureId = self->_racFeedbackSubfeatureId, (racFeedbackSubfeatureId != 0) == (v5->_racFeedbackSubfeatureId == 0)) || racFeedbackSubfeatureId && ![(NSString *)racFeedbackSubfeatureId isEqual:?]|| (racFeedbackLoggingContent = self->_racFeedbackLoggingContent, (racFeedbackLoggingContent != 0) == (v5->_racFeedbackLoggingContent == 0)) || racFeedbackLoggingContent && ![(NSMutableDictionary *)racFeedbackLoggingContent isEqual:?]|| (copyableItems = self->_copyableItems, (copyableItems != 0) == (v5->_copyableItems == 0)) || copyableItems && ![(SFCopyItem *)copyableItems isEqual:?])
    {
LABEL_86:
      v30 = 0;
    }

    else
    {
      applicationBundleIdentifier = self->_applicationBundleIdentifier;
      v29 = v5->_applicationBundleIdentifier;
      v30 = (applicationBundleIdentifier != 0) == (v29 != 0);
      if (applicationBundleIdentifier && v29)
      {
        v30 = [(NSString *)applicationBundleIdentifier isEqual:?];
      }
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFColor *)self->_backgroundColor copy];
  v6 = *(v4 + 96);
  *(v4 + 96) = v5;

  *(v4 + 13) = self->_canBeHidden;
  v7 = [(NSString *)self->_cardSectionDetail copy];
  v8 = *(v4 + 152);
  *(v4 + 152) = v7;

  v9 = [(NSString *)self->_cardSectionId copy];
  v10 = *(v4 + 88);
  *(v4 + 88) = v9;

  v11 = [(SFCommand *)self->_command copy];
  v12 = *(v4 + 120);
  *(v4 + 120) = v11;

  v13 = [(NSString *)self->_commandDetail copy];
  v14 = *(v4 + 144);
  *(v4 + 144) = v13;

  *(v4 + 12) = self->_hasBottomPadding;
  *(v4 + 14) = self->_hasTopPadding;
  *(v4 + 15) = self->_hideDivider;
  objc_storeStrong((v4 + 168), self->_leadingSwipeButtonItems);
  v15 = [(SFCard *)self->_nextCard copy];
  v16 = *(v4 + 40);
  *(v4 + 40) = v15;

  v17 = [(NSArray *)self->_previewButtonItems copy];
  v18 = *(v4 + 136);
  *(v4 + 136) = v17;

  v19 = [(NSString *)self->_previewButtonItemsTitle copy];
  v20 = *(v4 + 160);
  *(v4 + 160) = v19;

  v21 = [(SFCommand *)self->_previewCommand copy];
  v22 = *(v4 + 128);
  *(v4 + 128) = v21;

  v23 = [(NSArray *)self->_punchoutOptions copy];
  v24 = *(v4 + 64);
  *(v4 + 64) = v23;

  v25 = [(NSString *)self->_punchoutPickerDismissText copy];
  v26 = *(v4 + 72);
  *(v4 + 72) = v25;

  v27 = [(NSString *)self->_punchoutPickerTitle copy];
  v28 = *(v4 + 56);
  *(v4 + 56) = v27;

  v29 = [(NSString *)self->_resultIdentifier copy];
  v30 = *(v4 + 104);
  *(v4 + 104) = v29;

  *(v4 + 20) = self->_separatorStyle;
  *(v4 + 16) = self->_shouldHideInAmbientMode;
  objc_storeStrong((v4 + 176), self->_trailingSwipeButtonItems);
  v31 = [(NSArray *)self->_referencedCommands copy];
  v32 = *(v4 + 184);
  *(v4 + 184) = v31;

  v33 = [(NSString *)self->_type copy];
  v34 = *(v4 + 32);
  *(v4 + 32) = v33;

  *(v4 + 17) = self->_forceEnable3DTouch;
  *(v4 + 18) = self->_shouldShowInSmartDialog;
  v35 = [(SFAppEntityAnnotation *)self->_appEntityAnnotation copy];
  v36 = *(v4 + 192);
  *(v4 + 192) = v35;

  v37 = [(NSString *)self->_emphasisSubjectId copy];
  v38 = *(v4 + 200);
  *(v4 + 200) = v37;

  *(v4 + 24) = self->_increasedContrastMode;
  v39 = [(SFCommand *)self->_secondaryCommand copy];
  v40 = *(v4 + 208);
  *(v4 + 208) = v39;

  *(v4 + 28) = self->_requiredLevelOfDetail;
  v41 = [(NSString *)self->_racFeedbackSubfeatureId copy];
  v42 = *(v4 + 216);
  *(v4 + 216) = v41;

  v43 = [(NSMutableDictionary *)self->_racFeedbackLoggingContent copy];
  v44 = *(v4 + 224);
  *(v4 + 224) = v43;

  v45 = [(NSString *)self->_applicationBundleIdentifier copy];
  v46 = *(v4 + 240);
  *(v4 + 240) = v45;

  v47 = [(SFCopyItem *)self->_copyableItems copy];
  *(v4 + 232) = v47;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCardSection alloc] initWithFacade:self];
  v5 = [(_SFPBCardSection *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];

  [v4 encodeObject:self->_commandDetail forKey:@"_commandDetail"];
  [v4 encodeObject:self->_type forKey:@"_type"];
}

- (SFCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];
  v6 = [[_SFPBCardSection alloc] initWithData:v5];
  v7 = [(SFCardSection *)self initWithProtobuf:v6];

  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_commandDetail"];
    commandDetail = v7->_commandDetail;
    v7->_commandDetail = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
    type = v7->_type;
    v7->_type = v10;
  }

  return v7;
}

- (NSData)jsonData
{
  v2 = [(SFCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(SFCardSection *)self punchoutOptions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(SFCardSection *)self punchoutOptions];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"punchoutOptions"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

@end