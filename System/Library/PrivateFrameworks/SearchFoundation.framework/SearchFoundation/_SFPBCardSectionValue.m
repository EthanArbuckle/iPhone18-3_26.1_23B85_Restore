@interface _SFPBCardSectionValue
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCardSectionValue)initWithDictionary:(id)a3;
- (_SFPBCardSectionValue)initWithFacade:(id)a3;
- (_SFPBCardSectionValue)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCardSectionValue

- (_SFPBCardSectionValue)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCardSectionValue *)self init];

  if (v5)
  {
    v6 = [v4 appLinkCardSection];

    if (v6)
    {
      v7 = [_SFPBAppLinkCardSection alloc];
      v8 = [v4 appLinkCardSection];
      v9 = [(_SFPBAppLinkCardSection *)v7 initWithFacade:v8];
      [(_SFPBCardSectionValue *)v5 setAppLinkCardSection:v9];
    }

    v10 = [v4 descriptionCardSection];

    if (v10)
    {
      v11 = [_SFPBDescriptionCardSection alloc];
      v12 = [v4 descriptionCardSection];
      v13 = [(_SFPBDescriptionCardSection *)v11 initWithFacade:v12];
      [(_SFPBCardSectionValue *)v5 setDescriptionCardSection:v13];
    }

    v14 = [v4 keyValueDataCardSection];

    if (v14)
    {
      v15 = [_SFPBKeyValueDataCardSection alloc];
      v16 = [v4 keyValueDataCardSection];
      v17 = [(_SFPBKeyValueDataCardSection *)v15 initWithFacade:v16];
      [(_SFPBCardSectionValue *)v5 setKeyValueDataCardSection:v17];
    }

    v18 = [v4 mapCardSection];

    if (v18)
    {
      v19 = [_SFPBMapCardSection alloc];
      v20 = [v4 mapCardSection];
      v21 = [(_SFPBMapCardSection *)v19 initWithFacade:v20];
      [(_SFPBCardSectionValue *)v5 setMapCardSection:v21];
    }

    v22 = [v4 mediaInfoCardSection];

    if (v22)
    {
      v23 = [_SFPBMediaInfoCardSection alloc];
      v24 = [v4 mediaInfoCardSection];
      v25 = [(_SFPBMediaInfoCardSection *)v23 initWithFacade:v24];
      [(_SFPBCardSectionValue *)v5 setMediaInfoCardSection:v25];
    }

    v26 = [v4 mediaPlayerCardSection];

    if (v26)
    {
      v27 = [_SFPBMediaPlayerCardSection alloc];
      v28 = [v4 mediaPlayerCardSection];
      v29 = [(_SFPBMediaPlayerCardSection *)v27 initWithFacade:v28];
      [(_SFPBCardSectionValue *)v5 setMediaPlayerCardSection:v29];
    }

    v30 = [v4 nowPlayingCardSection];

    if (v30)
    {
      v31 = [_SFPBNowPlayingCardSection alloc];
      v32 = [v4 nowPlayingCardSection];
      v33 = [(_SFPBNowPlayingCardSection *)v31 initWithFacade:v32];
      [(_SFPBCardSectionValue *)v5 setNowPlayingCardSection:v33];
    }

    v34 = [v4 richTitleCardSection];

    if (v34)
    {
      v35 = [_SFPBRichTitleCardSection alloc];
      v36 = [v4 richTitleCardSection];
      v37 = [(_SFPBRichTitleCardSection *)v35 initWithFacade:v36];
      [(_SFPBCardSectionValue *)v5 setRichTitleCardSection:v37];
    }

    v38 = [v4 rowCardSection];

    if (v38)
    {
      v39 = [_SFPBRowCardSection alloc];
      v40 = [v4 rowCardSection];
      v41 = [(_SFPBRowCardSection *)v39 initWithFacade:v40];
      [(_SFPBCardSectionValue *)v5 setRowCardSection:v41];
    }

    v42 = [v4 scoreboardCardSection];

    if (v42)
    {
      v43 = [_SFPBScoreboardCardSection alloc];
      v44 = [v4 scoreboardCardSection];
      v45 = [(_SFPBScoreboardCardSection *)v43 initWithFacade:v44];
      [(_SFPBCardSectionValue *)v5 setScoreboardCardSection:v45];
    }

    v46 = [v4 socialMediaPostCardSection];

    if (v46)
    {
      v47 = [_SFPBSocialMediaPostCardSection alloc];
      v48 = [v4 socialMediaPostCardSection];
      v49 = [(_SFPBSocialMediaPostCardSection *)v47 initWithFacade:v48];
      [(_SFPBCardSectionValue *)v5 setSocialMediaPostCardSection:v49];
    }

    v50 = [v4 stockChartCardSection];

    if (v50)
    {
      v51 = [_SFPBStockChartCardSection alloc];
      v52 = [v4 stockChartCardSection];
      v53 = [(_SFPBStockChartCardSection *)v51 initWithFacade:v52];
      [(_SFPBCardSectionValue *)v5 setStockChartCardSection:v53];
    }

    v54 = [v4 tableHeaderRowCardSection];

    if (v54)
    {
      v55 = [_SFPBTableHeaderRowCardSection alloc];
      v56 = [v4 tableHeaderRowCardSection];
      v57 = [(_SFPBTableHeaderRowCardSection *)v55 initWithFacade:v56];
      [(_SFPBCardSectionValue *)v5 setTableHeaderRowCardSection:v57];
    }

    v58 = [v4 tableRowCardSection];

    if (v58)
    {
      v59 = [_SFPBTableRowCardSection alloc];
      v60 = [v4 tableRowCardSection];
      v61 = [(_SFPBTableRowCardSection *)v59 initWithFacade:v60];
      [(_SFPBCardSectionValue *)v5 setTableRowCardSection:v61];
    }

    v62 = [v4 textColumnsCardSection];

    if (v62)
    {
      v63 = [_SFPBTextColumnsCardSection alloc];
      v64 = [v4 textColumnsCardSection];
      v65 = [(_SFPBTextColumnsCardSection *)v63 initWithFacade:v64];
      [(_SFPBCardSectionValue *)v5 setTextColumnsCardSection:v65];
    }

    v66 = [v4 titleCardSection];

    if (v66)
    {
      v67 = [_SFPBTitleCardSection alloc];
      v68 = [v4 titleCardSection];
      v69 = [(_SFPBTitleCardSection *)v67 initWithFacade:v68];
      [(_SFPBCardSectionValue *)v5 setTitleCardSection:v69];
    }

    v70 = [v4 trackListCardSection];

    if (v70)
    {
      v71 = [_SFPBTrackListCardSection alloc];
      v72 = [v4 trackListCardSection];
      v73 = [(_SFPBTrackListCardSection *)v71 initWithFacade:v72];
      [(_SFPBCardSectionValue *)v5 setTrackListCardSection:v73];
    }

    v74 = [v4 audioPlaybackCardSection];

    if (v74)
    {
      v75 = [_SFPBAudioPlaybackCardSection alloc];
      v76 = [v4 audioPlaybackCardSection];
      v77 = [(_SFPBAudioPlaybackCardSection *)v75 initWithFacade:v76];
      [(_SFPBCardSectionValue *)v5 setAudioPlaybackCardSection:v77];
    }

    v78 = [v4 flightCardSection];

    if (v78)
    {
      v79 = [_SFPBFlightCardSection alloc];
      v80 = [v4 flightCardSection];
      v81 = [(_SFPBFlightCardSection *)v79 initWithFacade:v80];
      [(_SFPBCardSectionValue *)v5 setFlightCardSection:v81];
    }

    v82 = [v4 activityIndicatorCardSection];

    if (v82)
    {
      v83 = [_SFPBActivityIndicatorCardSection alloc];
      v84 = [v4 activityIndicatorCardSection];
      v85 = [(_SFPBActivityIndicatorCardSection *)v83 initWithFacade:v84];
      [(_SFPBCardSectionValue *)v5 setActivityIndicatorCardSection:v85];
    }

    v86 = [v4 webCardSection];

    if (v86)
    {
      v87 = [_SFPBWebCardSection alloc];
      v88 = [v4 webCardSection];
      v89 = [(_SFPBWebCardSection *)v87 initWithFacade:v88];
      [(_SFPBCardSectionValue *)v5 setWebCardSection:v89];
    }

    v90 = [v4 messageCardSection];

    if (v90)
    {
      v91 = [_SFPBMessageCardSection alloc];
      v92 = [v4 messageCardSection];
      v93 = [(_SFPBMessageCardSection *)v91 initWithFacade:v92];
      [(_SFPBCardSectionValue *)v5 setMessageCardSection:v93];
    }

    v94 = [v4 detailedRowCardSection];

    if (v94)
    {
      v95 = [_SFPBDetailedRowCardSection alloc];
      v96 = [v4 detailedRowCardSection];
      v97 = [(_SFPBDetailedRowCardSection *)v95 initWithFacade:v96];
      [(_SFPBCardSectionValue *)v5 setDetailedRowCardSection:v97];
    }

    v98 = [v4 imagesCardSection];

    if (v98)
    {
      v99 = [_SFPBImagesCardSection alloc];
      v100 = [v4 imagesCardSection];
      v101 = [(_SFPBImagesCardSection *)v99 initWithFacade:v100];
      [(_SFPBCardSectionValue *)v5 setImagesCardSection:v101];
    }

    v102 = [v4 suggestionCardSection];

    if (v102)
    {
      v103 = [_SFPBSuggestionCardSection alloc];
      v104 = [v4 suggestionCardSection];
      v105 = [(_SFPBSuggestionCardSection *)v103 initWithFacade:v104];
      [(_SFPBCardSectionValue *)v5 setSuggestionCardSection:v105];
    }

    v106 = [v4 selectableGridCardSection];

    if (v106)
    {
      v107 = [_SFPBSelectableGridCardSection alloc];
      v108 = [v4 selectableGridCardSection];
      v109 = [(_SFPBSelectableGridCardSection *)v107 initWithFacade:v108];
      [(_SFPBCardSectionValue *)v5 setSelectableGridCardSection:v109];
    }

    v110 = [v4 sectionHeaderCardSection];

    if (v110)
    {
      v111 = [_SFPBSectionHeaderCardSection alloc];
      v112 = [v4 sectionHeaderCardSection];
      v113 = [(_SFPBSectionHeaderCardSection *)v111 initWithFacade:v112];
      [(_SFPBCardSectionValue *)v5 setSectionHeaderCardSection:v113];
    }

    v114 = [v4 metaInfoCardSection];

    if (v114)
    {
      v115 = [_SFPBMetaInfoCardSection alloc];
      v116 = [v4 metaInfoCardSection];
      v117 = [(_SFPBMetaInfoCardSection *)v115 initWithFacade:v116];
      [(_SFPBCardSectionValue *)v5 setMetaInfoCardSection:v117];
    }

    v118 = [v4 watchListCardSection];

    if (v118)
    {
      v119 = [_SFPBWatchListCardSection alloc];
      v120 = [v4 watchListCardSection];
      v121 = [(_SFPBWatchListCardSection *)v119 initWithFacade:v120];
      [(_SFPBCardSectionValue *)v5 setWatchListCardSection:v121];
    }

    v122 = [v4 mapsDetailedRowCardSection];

    if (v122)
    {
      v123 = [_SFPBMapsDetailedRowCardSection alloc];
      v124 = [v4 mapsDetailedRowCardSection];
      v125 = [(_SFPBMapsDetailedRowCardSection *)v123 initWithFacade:v124];
      [(_SFPBCardSectionValue *)v5 setMapsDetailedRowCardSection:v125];
    }

    v126 = [v4 buttonCardSection];

    if (v126)
    {
      v127 = [_SFPBButtonCardSection alloc];
      v128 = [v4 buttonCardSection];
      v129 = [(_SFPBButtonCardSection *)v127 initWithFacade:v128];
      [(_SFPBCardSectionValue *)v5 setButtonCardSection:v129];
    }

    v130 = [v4 horizontalButtonCardSection];

    if (v130)
    {
      v131 = [_SFPBHorizontalButtonCardSection alloc];
      v132 = [v4 horizontalButtonCardSection];
      v133 = [(_SFPBHorizontalButtonCardSection *)v131 initWithFacade:v132];
      [(_SFPBCardSectionValue *)v5 setHorizontalButtonCardSection:v133];
    }

    v134 = [v4 verticalLayoutCardSection];

    if (v134)
    {
      v135 = [_SFPBVerticalLayoutCardSection alloc];
      v136 = [v4 verticalLayoutCardSection];
      v137 = [(_SFPBVerticalLayoutCardSection *)v135 initWithFacade:v136];
      [(_SFPBCardSectionValue *)v5 setVerticalLayoutCardSection:v137];
    }

    v138 = [v4 productCardSection];

    if (v138)
    {
      v139 = [_SFPBProductCardSection alloc];
      v140 = [v4 productCardSection];
      v141 = [(_SFPBProductCardSection *)v139 initWithFacade:v140];
      [(_SFPBCardSectionValue *)v5 setProductCardSection:v141];
    }

    v142 = [v4 horizontalScrollCardSection];

    if (v142)
    {
      v143 = [_SFPBHorizontalScrollCardSection alloc];
      v144 = [v4 horizontalScrollCardSection];
      v145 = [(_SFPBHorizontalScrollCardSection *)v143 initWithFacade:v144];
      [(_SFPBCardSectionValue *)v5 setHorizontalScrollCardSection:v145];
    }

    v146 = [v4 mediaRemoteControlCardSection];

    if (v146)
    {
      v147 = [_SFPBMediaRemoteControlCardSection alloc];
      v148 = [v4 mediaRemoteControlCardSection];
      v149 = [(_SFPBMediaRemoteControlCardSection *)v147 initWithFacade:v148];
      [(_SFPBCardSectionValue *)v5 setMediaRemoteControlCardSection:v149];
    }

    v150 = [v4 mapPlaceCardSection];

    if (v150)
    {
      v151 = [_SFPBMapPlaceCardSection alloc];
      v152 = [v4 mapPlaceCardSection];
      v153 = [(_SFPBMapPlaceCardSection *)v151 initWithFacade:v152];
      [(_SFPBCardSectionValue *)v5 setMapPlaceCardSection:v153];
    }

    v154 = [v4 compactRowCardSection];

    if (v154)
    {
      v155 = [_SFPBCompactRowCardSection alloc];
      v156 = [v4 compactRowCardSection];
      v157 = [(_SFPBCompactRowCardSection *)v155 initWithFacade:v156];
      [(_SFPBCardSectionValue *)v5 setCompactRowCardSection:v157];
    }

    v158 = [v4 worldMapCardSection];

    if (v158)
    {
      v159 = [_SFPBWorldMapCardSection alloc];
      v160 = [v4 worldMapCardSection];
      v161 = [(_SFPBWorldMapCardSection *)v159 initWithFacade:v160];
      [(_SFPBCardSectionValue *)v5 setWorldMapCardSection:v161];
    }

    v162 = [v4 attributionFooterCardSection];

    if (v162)
    {
      v163 = [_SFPBAttributionFooterCardSection alloc];
      v164 = [v4 attributionFooterCardSection];
      v165 = [(_SFPBAttributionFooterCardSection *)v163 initWithFacade:v164];
      [(_SFPBCardSectionValue *)v5 setAttributionFooterCardSection:v165];
    }

    v166 = [v4 gridCardSection];

    if (v166)
    {
      v167 = [_SFPBGridCardSection alloc];
      v168 = [v4 gridCardSection];
      v169 = [(_SFPBGridCardSection *)v167 initWithFacade:v168];
      [(_SFPBCardSectionValue *)v5 setGridCardSection:v169];
    }

    v170 = [v4 personHeaderCardSection];

    if (v170)
    {
      v171 = [_SFPBPersonHeaderCardSection alloc];
      v172 = [v4 personHeaderCardSection];
      v173 = [(_SFPBPersonHeaderCardSection *)v171 initWithFacade:v172];
      [(_SFPBCardSectionValue *)v5 setPersonHeaderCardSection:v173];
    }

    v174 = [v4 colorBarCardSection];

    if (v174)
    {
      v175 = [_SFPBColorBarCardSection alloc];
      v176 = [v4 colorBarCardSection];
      v177 = [(_SFPBColorBarCardSection *)v175 initWithFacade:v176];
      [(_SFPBCardSectionValue *)v5 setColorBarCardSection:v177];
    }

    v178 = [v4 splitCardSection];

    if (v178)
    {
      v179 = [_SFPBSplitCardSection alloc];
      v180 = [v4 splitCardSection];
      v181 = [(_SFPBSplitCardSection *)v179 initWithFacade:v180];
      [(_SFPBCardSectionValue *)v5 setSplitCardSection:v181];
    }

    v182 = [v4 linkPresentationCardSection];

    if (v182)
    {
      v183 = [_SFPBLinkPresentationCardSection alloc];
      v184 = [v4 linkPresentationCardSection];
      v185 = [(_SFPBLinkPresentationCardSection *)v183 initWithFacade:v184];
      [(_SFPBCardSectionValue *)v5 setLinkPresentationCardSection:v185];
    }

    v186 = [v4 findMyCardSection];

    if (v186)
    {
      v187 = [_SFPBFindMyCardSection alloc];
      v188 = [v4 findMyCardSection];
      v189 = [(_SFPBFindMyCardSection *)v187 initWithFacade:v188];
      [(_SFPBCardSectionValue *)v5 setFindMyCardSection:v189];
    }

    v190 = [v4 heroCardSection];

    if (v190)
    {
      v191 = [_SFPBHeroCardSection alloc];
      v192 = [v4 heroCardSection];
      v193 = [(_SFPBHeroCardSection *)v191 initWithFacade:v192];
      [(_SFPBCardSectionValue *)v5 setHeroCardSection:v193];
    }

    v194 = [v4 newsCardSection];

    if (v194)
    {
      v195 = [_SFPBNewsCardSection alloc];
      v196 = [v4 newsCardSection];
      v197 = [(_SFPBNewsCardSection *)v195 initWithFacade:v196];
      [(_SFPBCardSectionValue *)v5 setNewsCardSection:v197];
    }

    v198 = [v4 miniCardSection];

    if (v198)
    {
      v199 = [_SFPBMiniCardSection alloc];
      v200 = [v4 miniCardSection];
      v201 = [(_SFPBMiniCardSection *)v199 initWithFacade:v200];
      [(_SFPBCardSectionValue *)v5 setMiniCardSection:v201];
    }

    v202 = [v4 infoCardSection];

    if (v202)
    {
      v203 = [_SFPBInfoCardSection alloc];
      v204 = [v4 infoCardSection];
      v205 = [(_SFPBInfoCardSection *)v203 initWithFacade:v204];
      [(_SFPBCardSectionValue *)v5 setInfoCardSection:v205];
    }

    v206 = [v4 collectionCardSection];

    if (v206)
    {
      v207 = [_SFPBCollectionCardSection alloc];
      v208 = [v4 collectionCardSection];
      v209 = [(_SFPBCollectionCardSection *)v207 initWithFacade:v208];
      [(_SFPBCardSectionValue *)v5 setCollectionCardSection:v209];
    }

    v210 = [v4 combinedCardSection];

    if (v210)
    {
      v211 = [_SFPBCombinedCardSection alloc];
      v212 = [v4 combinedCardSection];
      v213 = [(_SFPBCombinedCardSection *)v211 initWithFacade:v212];
      [(_SFPBCardSectionValue *)v5 setCombinedCardSection:v213];
    }

    v214 = [v4 responseWrapperCardSection];

    if (v214)
    {
      v215 = [_SFPBResponseWrapperCardSection alloc];
      v216 = [v4 responseWrapperCardSection];
      v217 = [(_SFPBResponseWrapperCardSection *)v215 initWithFacade:v216];
      [(_SFPBCardSectionValue *)v5 setResponseWrapperCardSection:v217];
    }

    v218 = [v4 listenToCardSection];

    if (v218)
    {
      v219 = [_SFPBListenToCardSection alloc];
      v220 = [v4 listenToCardSection];
      v221 = [(_SFPBListenToCardSection *)v219 initWithFacade:v220];
      [(_SFPBCardSectionValue *)v5 setListenToCardSection:v221];
    }

    v222 = [v4 watchNowCardSection];

    if (v222)
    {
      v223 = [_SFPBWatchNowCardSection alloc];
      v224 = [v4 watchNowCardSection];
      v225 = [(_SFPBWatchNowCardSection *)v223 initWithFacade:v224];
      [(_SFPBCardSectionValue *)v5 setWatchNowCardSection:v225];
    }

    v226 = [v4 strokeAnimationCardSection];

    if (v226)
    {
      v227 = [_SFPBStrokeAnimationCardSection alloc];
      v228 = [v4 strokeAnimationCardSection];
      v229 = [(_SFPBStrokeAnimationCardSection *)v227 initWithFacade:v228];
      [(_SFPBCardSectionValue *)v5 setStrokeAnimationCardSection:v229];
    }

    v230 = [v4 buttonListCardSection];

    if (v230)
    {
      v231 = [_SFPBButtonListCardSection alloc];
      v232 = [v4 buttonListCardSection];
      v233 = [(_SFPBButtonListCardSection *)v231 initWithFacade:v232];
      [(_SFPBCardSectionValue *)v5 setButtonListCardSection:v233];
    }

    v234 = [v4 commandRowCardSection];

    if (v234)
    {
      v235 = [_SFPBCommandRowCardSection alloc];
      v236 = [v4 commandRowCardSection];
      v237 = [(_SFPBCommandRowCardSection *)v235 initWithFacade:v236];
      [(_SFPBCardSectionValue *)v5 setCommandRowCardSection:v237];
    }

    v238 = [v4 leadingTrailingCardSection];

    if (v238)
    {
      v239 = [_SFPBLeadingTrailingCardSection alloc];
      v240 = [v4 leadingTrailingCardSection];
      v241 = [(_SFPBLeadingTrailingCardSection *)v239 initWithFacade:v240];
      [(_SFPBCardSectionValue *)v5 setLeadingTrailingCardSection:v241];
    }

    v242 = [v4 heroTitleCardSection];

    if (v242)
    {
      v243 = [_SFPBHeroTitleCardSection alloc];
      v244 = [v4 heroTitleCardSection];
      v245 = [(_SFPBHeroTitleCardSection *)v243 initWithFacade:v244];
      [(_SFPBCardSectionValue *)v5 setHeroTitleCardSection:v245];
    }

    v246 = [v4 archiveViewCardSection];

    if (v246)
    {
      v247 = [_SFPBArchiveViewCardSection alloc];
      v248 = [v4 archiveViewCardSection];
      v249 = [(_SFPBArchiveViewCardSection *)v247 initWithFacade:v248];
      [(_SFPBCardSectionValue *)v5 setArchiveViewCardSection:v249];
    }

    v250 = [v4 appIconCardSection];

    if (v250)
    {
      v251 = [_SFPBAppIconCardSection alloc];
      v252 = [v4 appIconCardSection];
      v253 = [(_SFPBAppIconCardSection *)v251 initWithFacade:v252];
      [(_SFPBCardSectionValue *)v5 setAppIconCardSection:v253];
    }

    v254 = [v4 largeTitleDetailedRowCardSection];

    if (v254)
    {
      v255 = [_SFPBLargeTitleDetailedRowCardSection alloc];
      v256 = [v4 largeTitleDetailedRowCardSection];
      v257 = [(_SFPBLargeTitleDetailedRowCardSection *)v255 initWithFacade:v256];
      [(_SFPBCardSectionValue *)v5 setLargeTitleDetailedRowCardSection:v257];
    }

    v258 = [v4 safariTableOfContentsCardSection];

    if (v258)
    {
      v259 = [_SFPBSafariTableOfContentsCardSection alloc];
      v260 = [v4 safariTableOfContentsCardSection];
      v261 = [(_SFPBSafariTableOfContentsCardSection *)v259 initWithFacade:v260];
      [(_SFPBCardSectionValue *)v5 setSafariTableOfContentsCardSection:v261];
    }

    v262 = [v4 rfSummaryItemShortNumberCardSection];

    if (v262)
    {
      v263 = [_SFPBRFSummaryItemShortNumberCardSection alloc];
      v264 = [v4 rfSummaryItemShortNumberCardSection];
      v265 = [(_SFPBRFSummaryItemShortNumberCardSection *)v263 initWithFacade:v264];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemShortNumberCardSection:v265];
    }

    v266 = [v4 rfSummaryItemTextCardSection];

    if (v266)
    {
      v267 = [_SFPBRFSummaryItemTextCardSection alloc];
      v268 = [v4 rfSummaryItemTextCardSection];
      v269 = [(_SFPBRFSummaryItemTextCardSection *)v267 initWithFacade:v268];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemTextCardSection:v269];
    }

    v270 = [v4 rfSummaryItemStandardCardSection];

    if (v270)
    {
      v271 = [_SFPBRFSummaryItemStandardCardSection alloc];
      v272 = [v4 rfSummaryItemStandardCardSection];
      v273 = [(_SFPBRFSummaryItemStandardCardSection *)v271 initWithFacade:v272];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemStandardCardSection:v273];
    }

    v274 = [v4 rfFactItemShortNumberCardSection];

    if (v274)
    {
      v275 = [_SFPBRFFactItemShortNumberCardSection alloc];
      v276 = [v4 rfFactItemShortNumberCardSection];
      v277 = [(_SFPBRFFactItemShortNumberCardSection *)v275 initWithFacade:v276];
      [(_SFPBCardSectionValue *)v5 setRfFactItemShortNumberCardSection:v277];
    }

    v278 = [v4 rfFactItemStandardCardSection];

    if (v278)
    {
      v279 = [_SFPBRFFactItemStandardCardSection alloc];
      v280 = [v4 rfFactItemStandardCardSection];
      v281 = [(_SFPBRFFactItemStandardCardSection *)v279 initWithFacade:v280];
      [(_SFPBCardSectionValue *)v5 setRfFactItemStandardCardSection:v281];
    }

    v282 = [v4 rfLongItemStandardCardSection];

    if (v282)
    {
      v283 = [_SFPBRFLongItemStandardCardSection alloc];
      v284 = [v4 rfLongItemStandardCardSection];
      v285 = [(_SFPBRFLongItemStandardCardSection *)v283 initWithFacade:v284];
      [(_SFPBCardSectionValue *)v5 setRfLongItemStandardCardSection:v285];
    }

    v286 = [v4 rfPrimaryHeaderRichCardSection];

    if (v286)
    {
      v287 = [_SFPBRFPrimaryHeaderRichCardSection alloc];
      v288 = [v4 rfPrimaryHeaderRichCardSection];
      v289 = [(_SFPBRFPrimaryHeaderRichCardSection *)v287 initWithFacade:v288];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderRichCardSection:v289];
    }

    v290 = [v4 rfPrimaryHeaderStandardCardSection];

    if (v290)
    {
      v291 = [_SFPBRFPrimaryHeaderStandardCardSection alloc];
      v292 = [v4 rfPrimaryHeaderStandardCardSection];
      v293 = [(_SFPBRFPrimaryHeaderStandardCardSection *)v291 initWithFacade:v292];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderStandardCardSection:v293];
    }

    v294 = [v4 rfReferenceFootnoteCardSection];

    if (v294)
    {
      v295 = [_SFPBRFReferenceFootnoteCardSection alloc];
      v296 = [v4 rfReferenceFootnoteCardSection];
      v297 = [(_SFPBRFReferenceFootnoteCardSection *)v295 initWithFacade:v296];
      [(_SFPBCardSectionValue *)v5 setRfReferenceFootnoteCardSection:v297];
    }

    v298 = [v4 rfReferenceRichCardSection];

    if (v298)
    {
      v299 = [_SFPBRFReferenceRichCardSection alloc];
      v300 = [v4 rfReferenceRichCardSection];
      v301 = [(_SFPBRFReferenceRichCardSection *)v299 initWithFacade:v300];
      [(_SFPBCardSectionValue *)v5 setRfReferenceRichCardSection:v301];
    }

    v302 = [v4 rfSimpleItemRichCardSection];

    if (v302)
    {
      v303 = [_SFPBRFSimpleItemRichCardSection alloc];
      v304 = [v4 rfSimpleItemRichCardSection];
      v305 = [(_SFPBRFSimpleItemRichCardSection *)v303 initWithFacade:v304];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemRichCardSection:v305];
    }

    v306 = [v4 rfSimpleItemStandardCardSection];

    if (v306)
    {
      v307 = [_SFPBRFSimpleItemStandardCardSection alloc];
      v308 = [v4 rfSimpleItemStandardCardSection];
      v309 = [(_SFPBRFSimpleItemStandardCardSection *)v307 initWithFacade:v308];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemStandardCardSection:v309];
    }

    v310 = [v4 rfSummaryItemAlignedTextCardSection];

    if (v310)
    {
      v311 = [_SFPBRFSummaryItemAlignedTextCardSection alloc];
      v312 = [v4 rfSummaryItemAlignedTextCardSection];
      v313 = [(_SFPBRFSummaryItemAlignedTextCardSection *)v311 initWithFacade:v312];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemAlignedTextCardSection:v313];
    }

    v314 = [v4 rfExpandableStandardCardSection];

    if (v314)
    {
      v315 = [_SFPBRFExpandableStandardCardSection alloc];
      v316 = [v4 rfExpandableStandardCardSection];
      v317 = [(_SFPBRFExpandableStandardCardSection *)v315 initWithFacade:v316];
      [(_SFPBCardSectionValue *)v5 setRfExpandableStandardCardSection:v317];
    }

    v318 = [v4 rfFactItemButtonCardSection];

    if (v318)
    {
      v319 = [_SFPBRFFactItemButtonCardSection alloc];
      v320 = [v4 rfFactItemButtonCardSection];
      v321 = [(_SFPBRFFactItemButtonCardSection *)v319 initWithFacade:v320];
      [(_SFPBCardSectionValue *)v5 setRfFactItemButtonCardSection:v321];
    }

    v322 = [v4 rfFactItemHeroNumberCardSection];

    if (v322)
    {
      v323 = [_SFPBRFFactItemHeroNumberCardSection alloc];
      v324 = [v4 rfFactItemHeroNumberCardSection];
      v325 = [(_SFPBRFFactItemHeroNumberCardSection *)v323 initWithFacade:v324];
      [(_SFPBCardSectionValue *)v5 setRfFactItemHeroNumberCardSection:v325];
    }

    v326 = [v4 rfPrimaryHeaderMarqueeCardSection];

    if (v326)
    {
      v327 = [_SFPBRFPrimaryHeaderMarqueeCardSection alloc];
      v328 = [v4 rfPrimaryHeaderMarqueeCardSection];
      v329 = [(_SFPBRFPrimaryHeaderMarqueeCardSection *)v327 initWithFacade:v328];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderMarqueeCardSection:v329];
    }

    v330 = [v4 rfSummaryItemDetailedTextCardSection];

    if (v330)
    {
      v331 = [_SFPBRFSummaryItemDetailedTextCardSection alloc];
      v332 = [v4 rfSummaryItemDetailedTextCardSection];
      v333 = [(_SFPBRFSummaryItemDetailedTextCardSection *)v331 initWithFacade:v332];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemDetailedTextCardSection:v333];
    }

    v334 = [v4 rfSimpleItemPlayerCardSection];

    if (v334)
    {
      v335 = [_SFPBRFSimpleItemPlayerCardSection alloc];
      v336 = [v4 rfSimpleItemPlayerCardSection];
      v337 = [(_SFPBRFSimpleItemPlayerCardSection *)v335 initWithFacade:v336];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemPlayerCardSection:v337];
    }

    v338 = [v4 rfSummaryItemPairCardSection];

    if (v338)
    {
      v339 = [_SFPBRFSummaryItemPairCardSection alloc];
      v340 = [v4 rfSummaryItemPairCardSection];
      v341 = [(_SFPBRFSummaryItemPairCardSection *)v339 initWithFacade:v340];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPairCardSection:v341];
    }

    v342 = [v4 rfSummaryItemPairNumberCardSection];

    if (v342)
    {
      v343 = [_SFPBRFSummaryItemPairNumberCardSection alloc];
      v344 = [v4 rfSummaryItemPairNumberCardSection];
      v345 = [(_SFPBRFSummaryItemPairNumberCardSection *)v343 initWithFacade:v344];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPairNumberCardSection:v345];
    }

    v346 = [v4 rfFactItemShortHeroNumberCardSection];

    if (v346)
    {
      v347 = [_SFPBRFFactItemShortHeroNumberCardSection alloc];
      v348 = [v4 rfFactItemShortHeroNumberCardSection];
      v349 = [(_SFPBRFFactItemShortHeroNumberCardSection *)v347 initWithFacade:v348];
      [(_SFPBCardSectionValue *)v5 setRfFactItemShortHeroNumberCardSection:v349];
    }

    v350 = [v4 rfFactItemDetailedNumberCardSection];

    if (v350)
    {
      v351 = [_SFPBRFFactItemDetailedNumberCardSection alloc];
      v352 = [v4 rfFactItemDetailedNumberCardSection];
      v353 = [(_SFPBRFFactItemDetailedNumberCardSection *)v351 initWithFacade:v352];
      [(_SFPBCardSectionValue *)v5 setRfFactItemDetailedNumberCardSection:v353];
    }

    v354 = [v4 rfFactItemHeroButtonCardSection];

    if (v354)
    {
      v355 = [_SFPBRFFactItemHeroButtonCardSection alloc];
      v356 = [v4 rfFactItemHeroButtonCardSection];
      v357 = [(_SFPBRFFactItemHeroButtonCardSection *)v355 initWithFacade:v356];
      [(_SFPBCardSectionValue *)v5 setRfFactItemHeroButtonCardSection:v357];
    }

    v358 = [v4 rfFactItemImageRightCardSection];

    if (v358)
    {
      v359 = [_SFPBRFFactItemImageRightCardSection alloc];
      v360 = [v4 rfFactItemImageRightCardSection];
      v361 = [(_SFPBRFFactItemImageRightCardSection *)v359 initWithFacade:v360];
      [(_SFPBCardSectionValue *)v5 setRfFactItemImageRightCardSection:v361];
    }

    v362 = [v4 rfSummaryItemSwitchV2CardSection];

    if (v362)
    {
      v363 = [_SFPBRFSummaryItemSwitchV2CardSection alloc];
      v364 = [v4 rfSummaryItemSwitchV2CardSection];
      v365 = [(_SFPBRFSummaryItemSwitchV2CardSection *)v363 initWithFacade:v364];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemSwitchV2CardSection:v365];
    }

    v366 = [v4 rfTableHeaderCardSection];

    if (v366)
    {
      v367 = [_SFPBRFTableHeaderCardSection alloc];
      v368 = [v4 rfTableHeaderCardSection];
      v369 = [(_SFPBRFTableHeaderCardSection *)v367 initWithFacade:v368];
      [(_SFPBCardSectionValue *)v5 setRfTableHeaderCardSection:v369];
    }

    v370 = [v4 rfTableRowCardSection];

    if (v370)
    {
      v371 = [_SFPBRFTableRowCardSection alloc];
      v372 = [v4 rfTableRowCardSection];
      v373 = [(_SFPBRFTableRowCardSection *)v371 initWithFacade:v372];
      [(_SFPBCardSectionValue *)v5 setRfTableRowCardSection:v373];
    }

    v374 = [v4 rfSimpleItemVisualElementCardSection];

    if (v374)
    {
      v375 = [_SFPBRFSimpleItemVisualElementCardSection alloc];
      v376 = [v4 rfSimpleItemVisualElementCardSection];
      v377 = [(_SFPBRFSimpleItemVisualElementCardSection *)v375 initWithFacade:v376];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemVisualElementCardSection:v377];
    }

    v378 = [v4 rfSummaryItemPlayerCardSection];

    if (v378)
    {
      v379 = [_SFPBRFSummaryItemPlayerCardSection alloc];
      v380 = [v4 rfSummaryItemPlayerCardSection];
      v381 = [(_SFPBRFSummaryItemPlayerCardSection *)v379 initWithFacade:v380];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPlayerCardSection:v381];
    }

    v382 = [v4 rfSummaryItemImageRightCardSection];

    if (v382)
    {
      v383 = [_SFPBRFSummaryItemImageRightCardSection alloc];
      v384 = [v4 rfSummaryItemImageRightCardSection];
      v385 = [(_SFPBRFSummaryItemImageRightCardSection *)v383 initWithFacade:v384];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemImageRightCardSection:v385];
    }

    v386 = [v4 rfSummaryItemButtonCardSection];

    if (v386)
    {
      v387 = [_SFPBRFSummaryItemButtonCardSection alloc];
      v388 = [v4 rfSummaryItemButtonCardSection];
      v389 = [(_SFPBRFSummaryItemButtonCardSection *)v387 initWithFacade:v388];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemButtonCardSection:v389];
    }

    v390 = [v4 rfSimpleItemReverseRichCardSection];

    if (v390)
    {
      v391 = [_SFPBRFSimpleItemReverseRichCardSection alloc];
      v392 = [v4 rfSimpleItemReverseRichCardSection];
      v393 = [(_SFPBRFSimpleItemReverseRichCardSection *)v391 initWithFacade:v392];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemReverseRichCardSection:v393];
    }

    v394 = [v4 rfSimpleItemRichSearchResultCardSection];

    if (v394)
    {
      v395 = [_SFPBRFSimpleItemRichSearchResultCardSection alloc];
      v396 = [v4 rfSimpleItemRichSearchResultCardSection];
      v397 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)v395 initWithFacade:v396];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemRichSearchResultCardSection:v397];
    }

    v398 = [v4 rfPrimaryHeaderStackedImageCardSection];

    if (v398)
    {
      v399 = [_SFPBRFPrimaryHeaderStackedImageCardSection alloc];
      v400 = [v4 rfPrimaryHeaderStackedImageCardSection];
      v401 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v399 initWithFacade:v400];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderStackedImageCardSection:v401];
    }

    v402 = [v4 rfReferenceItemLogoCardSection];

    if (v402)
    {
      v403 = [_SFPBRFReferenceItemLogoCardSection alloc];
      v404 = [v4 rfReferenceItemLogoCardSection];
      v405 = [(_SFPBRFReferenceItemLogoCardSection *)v403 initWithFacade:v404];
      [(_SFPBCardSectionValue *)v5 setRfReferenceItemLogoCardSection:v405];
    }

    v406 = [v4 rfReferenceItemButtonCardSection];

    if (v406)
    {
      v407 = [_SFPBRFReferenceItemButtonCardSection alloc];
      v408 = [v4 rfReferenceItemButtonCardSection];
      v409 = [(_SFPBRFReferenceItemButtonCardSection *)v407 initWithFacade:v408];
      [(_SFPBCardSectionValue *)v5 setRfReferenceItemButtonCardSection:v409];
    }

    v410 = [v4 rfButtonCardSection];

    if (v410)
    {
      v411 = [_SFPBRFButtonCardSection alloc];
      v412 = [v4 rfButtonCardSection];
      v413 = [(_SFPBRFButtonCardSection *)v411 initWithFacade:v412];
      [(_SFPBCardSectionValue *)v5 setRfButtonCardSection:v413];
    }

    v414 = [v4 rfBinaryButtonCardSection];

    if (v414)
    {
      v415 = [_SFPBRFBinaryButtonCardSection alloc];
      v416 = [v4 rfBinaryButtonCardSection];
      v417 = [(_SFPBRFBinaryButtonCardSection *)v415 initWithFacade:v416];
      [(_SFPBCardSectionValue *)v5 setRfBinaryButtonCardSection:v417];
    }

    v418 = [v4 rfReferenceCenteredCardSection];

    if (v418)
    {
      v419 = [_SFPBRFReferenceCenteredCardSection alloc];
      v420 = [v4 rfReferenceCenteredCardSection];
      v421 = [(_SFPBRFReferenceCenteredCardSection *)v419 initWithFacade:v420];
      [(_SFPBCardSectionValue *)v5 setRfReferenceCenteredCardSection:v421];
    }

    v422 = [v4 rfSecondaryHeaderStandardCardSection];

    if (v422)
    {
      v423 = [_SFPBRFSecondaryHeaderStandardCardSection alloc];
      v424 = [v4 rfSecondaryHeaderStandardCardSection];
      v425 = [(_SFPBRFSecondaryHeaderStandardCardSection *)v423 initWithFacade:v424];
      [(_SFPBCardSectionValue *)v5 setRfSecondaryHeaderStandardCardSection:v425];
    }

    v426 = [v4 rfSecondaryHeaderEmphasizedCardSection];

    if (v426)
    {
      v427 = [_SFPBRFSecondaryHeaderEmphasizedCardSection alloc];
      v428 = [v4 rfSecondaryHeaderEmphasizedCardSection];
      v429 = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)v427 initWithFacade:v428];
      [(_SFPBCardSectionValue *)v5 setRfSecondaryHeaderEmphasizedCardSection:v429];
    }

    v430 = [v4 rfMapCardSection];

    if (v430)
    {
      v431 = [_SFPBRFMapCardSection alloc];
      v432 = [v4 rfMapCardSection];
      v433 = [(_SFPBRFMapCardSection *)v431 initWithFacade:v432];
      [(_SFPBCardSectionValue *)v5 setRfMapCardSection:v433];
    }

    v434 = [v4 rfReferenceStandardCardSection];

    if (v434)
    {
      v435 = [_SFPBRFReferenceStandardCardSection alloc];
      v436 = [v4 rfReferenceStandardCardSection];
      v437 = [(_SFPBRFReferenceStandardCardSection *)v435 initWithFacade:v436];
      [(_SFPBCardSectionValue *)v5 setRfReferenceStandardCardSection:v437];
    }

    v438 = [v4 rfMultiButtonCardSection];

    if (v438)
    {
      v439 = [_SFPBRFMultiButtonCardSection alloc];
      v440 = [v4 rfMultiButtonCardSection];
      v441 = [(_SFPBRFMultiButtonCardSection *)v439 initWithFacade:v440];
      [(_SFPBCardSectionValue *)v5 setRfMultiButtonCardSection:v441];
    }

    v442 = [v4 rfDisambiguationTitleCardSection];

    if (v442)
    {
      v443 = [_SFPBRFDisambiguationTitleCardSection alloc];
      v444 = [v4 rfDisambiguationTitleCardSection];
      v445 = [(_SFPBRFDisambiguationTitleCardSection *)v443 initWithFacade:v444];
      [(_SFPBCardSectionValue *)v5 setRfDisambiguationTitleCardSection:v445];
    }

    v446 = [v4 rfSummaryItemExpandableCardSection];

    if (v446)
    {
      v447 = [_SFPBRFSummaryItemExpandableCardSection alloc];
      v448 = [v4 rfSummaryItemExpandableCardSection];
      v449 = [(_SFPBRFSummaryItemExpandableCardSection *)v447 initWithFacade:v448];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemExpandableCardSection:v449];
    }

    v450 = v5;
  }

  return v5;
}

- (_SFPBCardSectionValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v334.receiver = self;
  v334.super_class = _SFPBCardSectionValue;
  v5 = [(_SFPBCardSectionValue *)&v334 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appLinkCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBAppLinkCardSection alloc] initWithDictionary:v6];
      [(_SFPBCardSectionValue *)v5 setAppLinkCardSection:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"descriptionCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBDescriptionCardSection alloc] initWithDictionary:v8];
      [(_SFPBCardSectionValue *)v5 setDescriptionCardSection:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"keyValueDataCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBKeyValueDataCardSection alloc] initWithDictionary:v10];
      [(_SFPBCardSectionValue *)v5 setKeyValueDataCardSection:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"mapCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBMapCardSection alloc] initWithDictionary:v12];
      [(_SFPBCardSectionValue *)v5 setMapCardSection:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"mediaInfoCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBMediaInfoCardSection alloc] initWithDictionary:v14];
      [(_SFPBCardSectionValue *)v5 setMediaInfoCardSection:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"mediaPlayerCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBMediaPlayerCardSection alloc] initWithDictionary:v16];
      [(_SFPBCardSectionValue *)v5 setMediaPlayerCardSection:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"nowPlayingCardSection"];
    objc_opt_class();
    v333 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBNowPlayingCardSection alloc] initWithDictionary:v18];
      [(_SFPBCardSectionValue *)v5 setNowPlayingCardSection:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"richTitleCardSection"];
    objc_opt_class();
    v332 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBRichTitleCardSection alloc] initWithDictionary:v20];
      [(_SFPBCardSectionValue *)v5 setRichTitleCardSection:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"rowCardSection"];
    objc_opt_class();
    v331 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBRowCardSection alloc] initWithDictionary:v22];
      [(_SFPBCardSectionValue *)v5 setRowCardSection:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"scoreboardCardSection"];
    objc_opt_class();
    v330 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBScoreboardCardSection alloc] initWithDictionary:v24];
      [(_SFPBCardSectionValue *)v5 setScoreboardCardSection:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"socialMediaPostCardSection"];
    objc_opt_class();
    v329 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBSocialMediaPostCardSection alloc] initWithDictionary:v26];
      [(_SFPBCardSectionValue *)v5 setSocialMediaPostCardSection:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"stockChartCardSection"];
    objc_opt_class();
    v328 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBStockChartCardSection alloc] initWithDictionary:v28];
      [(_SFPBCardSectionValue *)v5 setStockChartCardSection:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"tableHeaderRowCardSection"];
    objc_opt_class();
    v327 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBTableHeaderRowCardSection alloc] initWithDictionary:v30];
      [(_SFPBCardSectionValue *)v5 setTableHeaderRowCardSection:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"tableRowCardSection"];
    objc_opt_class();
    v326 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBTableRowCardSection alloc] initWithDictionary:v32];
      [(_SFPBCardSectionValue *)v5 setTableRowCardSection:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"textColumnsCardSection"];
    objc_opt_class();
    v325 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBTextColumnsCardSection alloc] initWithDictionary:v34];
      [(_SFPBCardSectionValue *)v5 setTextColumnsCardSection:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"titleCardSection"];
    objc_opt_class();
    v324 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBTitleCardSection alloc] initWithDictionary:v36];
      [(_SFPBCardSectionValue *)v5 setTitleCardSection:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"trackListCardSection"];
    objc_opt_class();
    v323 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBTrackListCardSection alloc] initWithDictionary:v38];
      [(_SFPBCardSectionValue *)v5 setTrackListCardSection:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"audioPlaybackCardSection"];
    objc_opt_class();
    v322 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBAudioPlaybackCardSection alloc] initWithDictionary:v40];
      [(_SFPBCardSectionValue *)v5 setAudioPlaybackCardSection:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"flightCardSection"];
    objc_opt_class();
    v321 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBFlightCardSection alloc] initWithDictionary:v42];
      [(_SFPBCardSectionValue *)v5 setFlightCardSection:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"activityIndicatorCardSection"];
    objc_opt_class();
    v320 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBActivityIndicatorCardSection alloc] initWithDictionary:v44];
      [(_SFPBCardSectionValue *)v5 setActivityIndicatorCardSection:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"webCardSection"];
    objc_opt_class();
    v319 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBWebCardSection alloc] initWithDictionary:v46];
      [(_SFPBCardSectionValue *)v5 setWebCardSection:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"messageCardSection"];
    objc_opt_class();
    v318 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBMessageCardSection alloc] initWithDictionary:v48];
      [(_SFPBCardSectionValue *)v5 setMessageCardSection:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"detailedRowCardSection"];
    objc_opt_class();
    v317 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBDetailedRowCardSection alloc] initWithDictionary:v50];
      [(_SFPBCardSectionValue *)v5 setDetailedRowCardSection:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"imagesCardSection"];
    objc_opt_class();
    v316 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBImagesCardSection alloc] initWithDictionary:v52];
      [(_SFPBCardSectionValue *)v5 setImagesCardSection:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"suggestionCardSection"];
    objc_opt_class();
    v315 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[_SFPBSuggestionCardSection alloc] initWithDictionary:v54];
      [(_SFPBCardSectionValue *)v5 setSuggestionCardSection:v55];
    }

    v56 = [v4 objectForKeyedSubscript:@"selectableGridCardSection"];
    objc_opt_class();
    v314 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[_SFPBSelectableGridCardSection alloc] initWithDictionary:v56];
      [(_SFPBCardSectionValue *)v5 setSelectableGridCardSection:v57];
    }

    v58 = [v4 objectForKeyedSubscript:@"sectionHeaderCardSection"];
    objc_opt_class();
    v313 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[_SFPBSectionHeaderCardSection alloc] initWithDictionary:v58];
      [(_SFPBCardSectionValue *)v5 setSectionHeaderCardSection:v59];
    }

    v60 = [v4 objectForKeyedSubscript:@"metaInfoCardSection"];
    objc_opt_class();
    v312 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[_SFPBMetaInfoCardSection alloc] initWithDictionary:v60];
      [(_SFPBCardSectionValue *)v5 setMetaInfoCardSection:v61];
    }

    v62 = [v4 objectForKeyedSubscript:@"watchListCardSection"];
    objc_opt_class();
    v311 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[_SFPBWatchListCardSection alloc] initWithDictionary:v62];
      [(_SFPBCardSectionValue *)v5 setWatchListCardSection:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"mapsDetailedRowCardSection"];
    objc_opt_class();
    v310 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[_SFPBMapsDetailedRowCardSection alloc] initWithDictionary:v64];
      [(_SFPBCardSectionValue *)v5 setMapsDetailedRowCardSection:v65];
    }

    v66 = [v4 objectForKeyedSubscript:@"buttonCardSection"];
    objc_opt_class();
    v309 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[_SFPBButtonCardSection alloc] initWithDictionary:v66];
      [(_SFPBCardSectionValue *)v5 setButtonCardSection:v67];
    }

    v68 = [v4 objectForKeyedSubscript:@"horizontalButtonCardSection"];
    objc_opt_class();
    v308 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[_SFPBHorizontalButtonCardSection alloc] initWithDictionary:v68];
      [(_SFPBCardSectionValue *)v5 setHorizontalButtonCardSection:v69];
    }

    v70 = [v4 objectForKeyedSubscript:@"verticalLayoutCardSection"];
    objc_opt_class();
    v307 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[_SFPBVerticalLayoutCardSection alloc] initWithDictionary:v70];
      [(_SFPBCardSectionValue *)v5 setVerticalLayoutCardSection:v71];
    }

    v72 = [v4 objectForKeyedSubscript:@"productCardSection"];
    objc_opt_class();
    v306 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[_SFPBProductCardSection alloc] initWithDictionary:v72];
      [(_SFPBCardSectionValue *)v5 setProductCardSection:v73];
    }

    v74 = [v4 objectForKeyedSubscript:@"horizontalScrollCardSection"];
    objc_opt_class();
    v305 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[_SFPBHorizontalScrollCardSection alloc] initWithDictionary:v74];
      [(_SFPBCardSectionValue *)v5 setHorizontalScrollCardSection:v75];
    }

    v76 = [v4 objectForKeyedSubscript:@"mediaRemoteControlCardSection"];
    objc_opt_class();
    v304 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[_SFPBMediaRemoteControlCardSection alloc] initWithDictionary:v76];
      [(_SFPBCardSectionValue *)v5 setMediaRemoteControlCardSection:v77];
    }

    v78 = [v4 objectForKeyedSubscript:@"mapPlaceCardSection"];
    objc_opt_class();
    v303 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[_SFPBMapPlaceCardSection alloc] initWithDictionary:v78];
      [(_SFPBCardSectionValue *)v5 setMapPlaceCardSection:v79];
    }

    v80 = [v4 objectForKeyedSubscript:@"compactRowCardSection"];
    objc_opt_class();
    v302 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [[_SFPBCompactRowCardSection alloc] initWithDictionary:v80];
      [(_SFPBCardSectionValue *)v5 setCompactRowCardSection:v81];
    }

    v82 = [v4 objectForKeyedSubscript:@"worldMapCardSection"];
    objc_opt_class();
    v301 = v82;
    if (objc_opt_isKindOfClass())
    {
      v83 = [[_SFPBWorldMapCardSection alloc] initWithDictionary:v82];
      [(_SFPBCardSectionValue *)v5 setWorldMapCardSection:v83];
    }

    v84 = [v4 objectForKeyedSubscript:@"attributionFooterCardSection"];
    objc_opt_class();
    v300 = v84;
    if (objc_opt_isKindOfClass())
    {
      v85 = [[_SFPBAttributionFooterCardSection alloc] initWithDictionary:v84];
      [(_SFPBCardSectionValue *)v5 setAttributionFooterCardSection:v85];
    }

    v86 = [v4 objectForKeyedSubscript:@"gridCardSection"];
    objc_opt_class();
    v299 = v86;
    if (objc_opt_isKindOfClass())
    {
      v87 = [[_SFPBGridCardSection alloc] initWithDictionary:v86];
      [(_SFPBCardSectionValue *)v5 setGridCardSection:v87];
    }

    v88 = [v4 objectForKeyedSubscript:@"personHeaderCardSection"];
    objc_opt_class();
    v298 = v88;
    if (objc_opt_isKindOfClass())
    {
      v89 = [[_SFPBPersonHeaderCardSection alloc] initWithDictionary:v88];
      [(_SFPBCardSectionValue *)v5 setPersonHeaderCardSection:v89];
    }

    v90 = [v4 objectForKeyedSubscript:@"colorBarCardSection"];
    objc_opt_class();
    v297 = v90;
    if (objc_opt_isKindOfClass())
    {
      v91 = [[_SFPBColorBarCardSection alloc] initWithDictionary:v90];
      [(_SFPBCardSectionValue *)v5 setColorBarCardSection:v91];
    }

    v92 = [v4 objectForKeyedSubscript:@"splitCardSection"];
    objc_opt_class();
    v296 = v92;
    if (objc_opt_isKindOfClass())
    {
      v93 = [[_SFPBSplitCardSection alloc] initWithDictionary:v92];
      [(_SFPBCardSectionValue *)v5 setSplitCardSection:v93];
    }

    v94 = [v4 objectForKeyedSubscript:@"linkPresentationCardSection"];
    objc_opt_class();
    v295 = v94;
    if (objc_opt_isKindOfClass())
    {
      v95 = [[_SFPBLinkPresentationCardSection alloc] initWithDictionary:v94];
      [(_SFPBCardSectionValue *)v5 setLinkPresentationCardSection:v95];
    }

    v96 = [v4 objectForKeyedSubscript:@"findMyCardSection"];
    objc_opt_class();
    v294 = v96;
    if (objc_opt_isKindOfClass())
    {
      v97 = [[_SFPBFindMyCardSection alloc] initWithDictionary:v96];
      [(_SFPBCardSectionValue *)v5 setFindMyCardSection:v97];
    }

    v98 = [v4 objectForKeyedSubscript:@"heroCardSection"];
    objc_opt_class();
    v293 = v98;
    if (objc_opt_isKindOfClass())
    {
      v99 = [[_SFPBHeroCardSection alloc] initWithDictionary:v98];
      [(_SFPBCardSectionValue *)v5 setHeroCardSection:v99];
    }

    v100 = [v4 objectForKeyedSubscript:@"newsCardSection"];
    objc_opt_class();
    v292 = v100;
    if (objc_opt_isKindOfClass())
    {
      v101 = [[_SFPBNewsCardSection alloc] initWithDictionary:v100];
      [(_SFPBCardSectionValue *)v5 setNewsCardSection:v101];
    }

    v102 = [v4 objectForKeyedSubscript:@"miniCardSection"];
    objc_opt_class();
    v291 = v102;
    if (objc_opt_isKindOfClass())
    {
      v103 = [[_SFPBMiniCardSection alloc] initWithDictionary:v102];
      [(_SFPBCardSectionValue *)v5 setMiniCardSection:v103];
    }

    v104 = [v4 objectForKeyedSubscript:@"infoCardSection"];
    objc_opt_class();
    v290 = v104;
    if (objc_opt_isKindOfClass())
    {
      v105 = [[_SFPBInfoCardSection alloc] initWithDictionary:v104];
      [(_SFPBCardSectionValue *)v5 setInfoCardSection:v105];
    }

    v106 = [v4 objectForKeyedSubscript:@"collectionCardSection"];
    objc_opt_class();
    v289 = v106;
    if (objc_opt_isKindOfClass())
    {
      v107 = [[_SFPBCollectionCardSection alloc] initWithDictionary:v106];
      [(_SFPBCardSectionValue *)v5 setCollectionCardSection:v107];
    }

    v108 = [v4 objectForKeyedSubscript:@"combinedCardSection"];
    objc_opt_class();
    v288 = v108;
    if (objc_opt_isKindOfClass())
    {
      v109 = [[_SFPBCombinedCardSection alloc] initWithDictionary:v108];
      [(_SFPBCardSectionValue *)v5 setCombinedCardSection:v109];
    }

    v110 = [v4 objectForKeyedSubscript:@"responseWrapperCardSection"];
    objc_opt_class();
    v287 = v110;
    if (objc_opt_isKindOfClass())
    {
      v111 = [[_SFPBResponseWrapperCardSection alloc] initWithDictionary:v110];
      [(_SFPBCardSectionValue *)v5 setResponseWrapperCardSection:v111];
    }

    v112 = [v4 objectForKeyedSubscript:@"listenToCardSection"];
    objc_opt_class();
    v286 = v112;
    if (objc_opt_isKindOfClass())
    {
      v113 = [[_SFPBListenToCardSection alloc] initWithDictionary:v112];
      [(_SFPBCardSectionValue *)v5 setListenToCardSection:v113];
    }

    v114 = [v4 objectForKeyedSubscript:@"watchNowCardSection"];
    objc_opt_class();
    v285 = v114;
    if (objc_opt_isKindOfClass())
    {
      v115 = [[_SFPBWatchNowCardSection alloc] initWithDictionary:v114];
      [(_SFPBCardSectionValue *)v5 setWatchNowCardSection:v115];
    }

    v116 = [v4 objectForKeyedSubscript:@"strokeAnimationCardSection"];
    objc_opt_class();
    v284 = v116;
    if (objc_opt_isKindOfClass())
    {
      v117 = [[_SFPBStrokeAnimationCardSection alloc] initWithDictionary:v116];
      [(_SFPBCardSectionValue *)v5 setStrokeAnimationCardSection:v117];
    }

    v118 = [v4 objectForKeyedSubscript:@"buttonListCardSection"];
    objc_opt_class();
    v283 = v118;
    if (objc_opt_isKindOfClass())
    {
      v119 = [[_SFPBButtonListCardSection alloc] initWithDictionary:v118];
      [(_SFPBCardSectionValue *)v5 setButtonListCardSection:v119];
    }

    v120 = [v4 objectForKeyedSubscript:@"commandRowCardSection"];
    objc_opt_class();
    v282 = v120;
    if (objc_opt_isKindOfClass())
    {
      v121 = [[_SFPBCommandRowCardSection alloc] initWithDictionary:v120];
      [(_SFPBCardSectionValue *)v5 setCommandRowCardSection:v121];
    }

    v122 = [v4 objectForKeyedSubscript:@"leadingTrailingCardSection"];
    objc_opt_class();
    v281 = v122;
    if (objc_opt_isKindOfClass())
    {
      v123 = [[_SFPBLeadingTrailingCardSection alloc] initWithDictionary:v122];
      [(_SFPBCardSectionValue *)v5 setLeadingTrailingCardSection:v123];
    }

    v124 = [v4 objectForKeyedSubscript:@"heroTitleCardSection"];
    objc_opt_class();
    v280 = v124;
    if (objc_opt_isKindOfClass())
    {
      v125 = [[_SFPBHeroTitleCardSection alloc] initWithDictionary:v124];
      [(_SFPBCardSectionValue *)v5 setHeroTitleCardSection:v125];
    }

    v126 = [v4 objectForKeyedSubscript:@"archiveViewCardSection"];
    objc_opt_class();
    v279 = v126;
    if (objc_opt_isKindOfClass())
    {
      v127 = [[_SFPBArchiveViewCardSection alloc] initWithDictionary:v126];
      [(_SFPBCardSectionValue *)v5 setArchiveViewCardSection:v127];
    }

    v128 = [v4 objectForKeyedSubscript:@"appIconCardSection"];
    objc_opt_class();
    v278 = v128;
    if (objc_opt_isKindOfClass())
    {
      v129 = [[_SFPBAppIconCardSection alloc] initWithDictionary:v128];
      [(_SFPBCardSectionValue *)v5 setAppIconCardSection:v129];
    }

    v130 = [v4 objectForKeyedSubscript:@"largeTitleDetailedRowCardSection"];
    objc_opt_class();
    v277 = v130;
    if (objc_opt_isKindOfClass())
    {
      v131 = [[_SFPBLargeTitleDetailedRowCardSection alloc] initWithDictionary:v130];
      [(_SFPBCardSectionValue *)v5 setLargeTitleDetailedRowCardSection:v131];
    }

    v132 = [v4 objectForKeyedSubscript:@"safariTableOfContentsCardSection"];
    objc_opt_class();
    v276 = v132;
    if (objc_opt_isKindOfClass())
    {
      v133 = [[_SFPBSafariTableOfContentsCardSection alloc] initWithDictionary:v132];
      [(_SFPBCardSectionValue *)v5 setSafariTableOfContentsCardSection:v133];
    }

    v134 = [v4 objectForKeyedSubscript:@"rfSummaryItemShortNumberCardSection"];
    objc_opt_class();
    v275 = v134;
    if (objc_opt_isKindOfClass())
    {
      v135 = [[_SFPBRFSummaryItemShortNumberCardSection alloc] initWithDictionary:v134];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemShortNumberCardSection:v135];
    }

    v136 = [v4 objectForKeyedSubscript:@"rfSummaryItemTextCardSection"];
    objc_opt_class();
    v274 = v136;
    if (objc_opt_isKindOfClass())
    {
      v137 = [[_SFPBRFSummaryItemTextCardSection alloc] initWithDictionary:v136];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemTextCardSection:v137];
    }

    v138 = [v4 objectForKeyedSubscript:@"rfSummaryItemStandardCardSection"];
    objc_opt_class();
    v273 = v138;
    if (objc_opt_isKindOfClass())
    {
      v139 = [[_SFPBRFSummaryItemStandardCardSection alloc] initWithDictionary:v138];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemStandardCardSection:v139];
    }

    v140 = [v4 objectForKeyedSubscript:@"rfFactItemShortNumberCardSection"];
    objc_opt_class();
    v272 = v140;
    if (objc_opt_isKindOfClass())
    {
      v141 = [[_SFPBRFFactItemShortNumberCardSection alloc] initWithDictionary:v140];
      [(_SFPBCardSectionValue *)v5 setRfFactItemShortNumberCardSection:v141];
    }

    v142 = [v4 objectForKeyedSubscript:@"rfFactItemStandardCardSection"];
    objc_opt_class();
    v271 = v142;
    if (objc_opt_isKindOfClass())
    {
      v143 = [[_SFPBRFFactItemStandardCardSection alloc] initWithDictionary:v142];
      [(_SFPBCardSectionValue *)v5 setRfFactItemStandardCardSection:v143];
    }

    v144 = [v4 objectForKeyedSubscript:@"rfLongItemStandardCardSection"];
    objc_opt_class();
    v270 = v144;
    if (objc_opt_isKindOfClass())
    {
      v145 = [[_SFPBRFLongItemStandardCardSection alloc] initWithDictionary:v144];
      [(_SFPBCardSectionValue *)v5 setRfLongItemStandardCardSection:v145];
    }

    v146 = [v4 objectForKeyedSubscript:@"rfPrimaryHeaderRichCardSection"];
    objc_opt_class();
    v269 = v146;
    if (objc_opt_isKindOfClass())
    {
      v147 = [[_SFPBRFPrimaryHeaderRichCardSection alloc] initWithDictionary:v146];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderRichCardSection:v147];
    }

    v148 = [v4 objectForKeyedSubscript:@"rfPrimaryHeaderStandardCardSection"];
    objc_opt_class();
    v268 = v148;
    if (objc_opt_isKindOfClass())
    {
      v149 = [[_SFPBRFPrimaryHeaderStandardCardSection alloc] initWithDictionary:v148];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderStandardCardSection:v149];
    }

    v150 = [v4 objectForKeyedSubscript:@"rfReferenceFootnoteCardSection"];
    objc_opt_class();
    v267 = v150;
    if (objc_opt_isKindOfClass())
    {
      v151 = [[_SFPBRFReferenceFootnoteCardSection alloc] initWithDictionary:v150];
      [(_SFPBCardSectionValue *)v5 setRfReferenceFootnoteCardSection:v151];
    }

    v152 = [v4 objectForKeyedSubscript:@"rfReferenceRichCardSection"];
    objc_opt_class();
    v266 = v152;
    if (objc_opt_isKindOfClass())
    {
      v153 = [[_SFPBRFReferenceRichCardSection alloc] initWithDictionary:v152];
      [(_SFPBCardSectionValue *)v5 setRfReferenceRichCardSection:v153];
    }

    v154 = [v4 objectForKeyedSubscript:@"rfSimpleItemRichCardSection"];
    objc_opt_class();
    v265 = v154;
    if (objc_opt_isKindOfClass())
    {
      v155 = [[_SFPBRFSimpleItemRichCardSection alloc] initWithDictionary:v154];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemRichCardSection:v155];
    }

    v156 = [v4 objectForKeyedSubscript:@"rfSimpleItemStandardCardSection"];
    objc_opt_class();
    v264 = v156;
    if (objc_opt_isKindOfClass())
    {
      v157 = [[_SFPBRFSimpleItemStandardCardSection alloc] initWithDictionary:v156];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemStandardCardSection:v157];
    }

    v158 = [v4 objectForKeyedSubscript:@"rfSummaryItemAlignedTextCardSection"];
    objc_opt_class();
    v263 = v158;
    if (objc_opt_isKindOfClass())
    {
      v159 = [[_SFPBRFSummaryItemAlignedTextCardSection alloc] initWithDictionary:v158];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemAlignedTextCardSection:v159];
    }

    v160 = [v4 objectForKeyedSubscript:@"rfExpandableStandardCardSection"];
    objc_opt_class();
    v262 = v160;
    if (objc_opt_isKindOfClass())
    {
      v161 = [[_SFPBRFExpandableStandardCardSection alloc] initWithDictionary:v160];
      [(_SFPBCardSectionValue *)v5 setRfExpandableStandardCardSection:v161];
    }

    v162 = [v4 objectForKeyedSubscript:@"rfFactItemButtonCardSection"];
    objc_opt_class();
    v261 = v162;
    if (objc_opt_isKindOfClass())
    {
      v163 = [[_SFPBRFFactItemButtonCardSection alloc] initWithDictionary:v162];
      [(_SFPBCardSectionValue *)v5 setRfFactItemButtonCardSection:v163];
    }

    v164 = [v4 objectForKeyedSubscript:@"rfFactItemHeroNumberCardSection"];
    objc_opt_class();
    v260 = v164;
    if (objc_opt_isKindOfClass())
    {
      v165 = [[_SFPBRFFactItemHeroNumberCardSection alloc] initWithDictionary:v164];
      [(_SFPBCardSectionValue *)v5 setRfFactItemHeroNumberCardSection:v165];
    }

    v166 = [v4 objectForKeyedSubscript:@"rfPrimaryHeaderMarqueeCardSection"];
    objc_opt_class();
    v259 = v166;
    if (objc_opt_isKindOfClass())
    {
      v167 = [[_SFPBRFPrimaryHeaderMarqueeCardSection alloc] initWithDictionary:v166];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderMarqueeCardSection:v167];
    }

    v168 = [v4 objectForKeyedSubscript:@"rfSummaryItemDetailedTextCardSection"];
    objc_opt_class();
    v258 = v168;
    if (objc_opt_isKindOfClass())
    {
      v169 = [[_SFPBRFSummaryItemDetailedTextCardSection alloc] initWithDictionary:v168];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemDetailedTextCardSection:v169];
    }

    v170 = [v4 objectForKeyedSubscript:@"rfSimpleItemPlayerCardSection"];
    objc_opt_class();
    v257 = v170;
    if (objc_opt_isKindOfClass())
    {
      v171 = [[_SFPBRFSimpleItemPlayerCardSection alloc] initWithDictionary:v170];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemPlayerCardSection:v171];
    }

    v172 = [v4 objectForKeyedSubscript:@"rfSummaryItemPairCardSection"];
    objc_opt_class();
    v256 = v172;
    if (objc_opt_isKindOfClass())
    {
      v173 = [[_SFPBRFSummaryItemPairCardSection alloc] initWithDictionary:v172];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPairCardSection:v173];
    }

    v174 = [v4 objectForKeyedSubscript:@"rfSummaryItemPairNumberCardSection"];
    objc_opt_class();
    v255 = v174;
    if (objc_opt_isKindOfClass())
    {
      v175 = [[_SFPBRFSummaryItemPairNumberCardSection alloc] initWithDictionary:v174];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPairNumberCardSection:v175];
    }

    v176 = [v4 objectForKeyedSubscript:@"rfFactItemShortHeroNumberCardSection"];
    objc_opt_class();
    v254 = v176;
    if (objc_opt_isKindOfClass())
    {
      v177 = [[_SFPBRFFactItemShortHeroNumberCardSection alloc] initWithDictionary:v176];
      [(_SFPBCardSectionValue *)v5 setRfFactItemShortHeroNumberCardSection:v177];
    }

    v178 = [v4 objectForKeyedSubscript:@"rfFactItemDetailedNumberCardSection"];
    objc_opt_class();
    v253 = v178;
    if (objc_opt_isKindOfClass())
    {
      v179 = [[_SFPBRFFactItemDetailedNumberCardSection alloc] initWithDictionary:v178];
      [(_SFPBCardSectionValue *)v5 setRfFactItemDetailedNumberCardSection:v179];
    }

    v180 = [v4 objectForKeyedSubscript:@"rfFactItemHeroButtonCardSection"];
    objc_opt_class();
    v252 = v180;
    if (objc_opt_isKindOfClass())
    {
      v181 = [[_SFPBRFFactItemHeroButtonCardSection alloc] initWithDictionary:v180];
      [(_SFPBCardSectionValue *)v5 setRfFactItemHeroButtonCardSection:v181];
    }

    v182 = [v4 objectForKeyedSubscript:@"rfFactItemImageRightCardSection"];
    objc_opt_class();
    v251 = v182;
    if (objc_opt_isKindOfClass())
    {
      v183 = [[_SFPBRFFactItemImageRightCardSection alloc] initWithDictionary:v182];
      [(_SFPBCardSectionValue *)v5 setRfFactItemImageRightCardSection:v183];
    }

    v184 = [v4 objectForKeyedSubscript:@"rfSummaryItemSwitchV2CardSection"];
    objc_opt_class();
    v250 = v184;
    if (objc_opt_isKindOfClass())
    {
      v185 = [[_SFPBRFSummaryItemSwitchV2CardSection alloc] initWithDictionary:v184];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemSwitchV2CardSection:v185];
    }

    v186 = [v4 objectForKeyedSubscript:@"rfTableHeaderCardSection"];
    objc_opt_class();
    v249 = v186;
    if (objc_opt_isKindOfClass())
    {
      v187 = [[_SFPBRFTableHeaderCardSection alloc] initWithDictionary:v186];
      [(_SFPBCardSectionValue *)v5 setRfTableHeaderCardSection:v187];
    }

    v188 = [v4 objectForKeyedSubscript:@"rfTableRowCardSection"];
    objc_opt_class();
    v248 = v188;
    if (objc_opt_isKindOfClass())
    {
      v189 = [[_SFPBRFTableRowCardSection alloc] initWithDictionary:v188];
      [(_SFPBCardSectionValue *)v5 setRfTableRowCardSection:v189];
    }

    v190 = [v4 objectForKeyedSubscript:@"rfSimpleItemVisualElementCardSection"];
    objc_opt_class();
    v247 = v190;
    if (objc_opt_isKindOfClass())
    {
      v191 = [[_SFPBRFSimpleItemVisualElementCardSection alloc] initWithDictionary:v190];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemVisualElementCardSection:v191];
    }

    v192 = [v4 objectForKeyedSubscript:@"rfSummaryItemPlayerCardSection"];
    objc_opt_class();
    v246 = v192;
    if (objc_opt_isKindOfClass())
    {
      v193 = [[_SFPBRFSummaryItemPlayerCardSection alloc] initWithDictionary:v192];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPlayerCardSection:v193];
    }

    v194 = [v4 objectForKeyedSubscript:@"rfSummaryItemImageRightCardSection"];
    objc_opt_class();
    v245 = v194;
    if (objc_opt_isKindOfClass())
    {
      v195 = [[_SFPBRFSummaryItemImageRightCardSection alloc] initWithDictionary:v194];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemImageRightCardSection:v195];
    }

    v196 = [v4 objectForKeyedSubscript:@"rfSummaryItemButtonCardSection"];
    objc_opt_class();
    v244 = v196;
    if (objc_opt_isKindOfClass())
    {
      v197 = [[_SFPBRFSummaryItemButtonCardSection alloc] initWithDictionary:v196];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemButtonCardSection:v197];
    }

    v198 = [v4 objectForKeyedSubscript:@"rfSimpleItemReverseRichCardSection"];
    objc_opt_class();
    v243 = v198;
    if (objc_opt_isKindOfClass())
    {
      v199 = [[_SFPBRFSimpleItemReverseRichCardSection alloc] initWithDictionary:v198];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemReverseRichCardSection:v199];
    }

    v200 = [v4 objectForKeyedSubscript:@"rfSimpleItemRichSearchResultCardSection"];
    objc_opt_class();
    v242 = v200;
    if (objc_opt_isKindOfClass())
    {
      v201 = [[_SFPBRFSimpleItemRichSearchResultCardSection alloc] initWithDictionary:v200];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemRichSearchResultCardSection:v201];
    }

    v202 = [v4 objectForKeyedSubscript:@"rfPrimaryHeaderStackedImageCardSection"];
    objc_opt_class();
    v241 = v202;
    if (objc_opt_isKindOfClass())
    {
      v203 = [[_SFPBRFPrimaryHeaderStackedImageCardSection alloc] initWithDictionary:v202];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderStackedImageCardSection:v203];
    }

    v204 = [v4 objectForKeyedSubscript:@"rfReferenceItemLogoCardSection"];
    objc_opt_class();
    v240 = v204;
    if (objc_opt_isKindOfClass())
    {
      v205 = [[_SFPBRFReferenceItemLogoCardSection alloc] initWithDictionary:v204];
      [(_SFPBCardSectionValue *)v5 setRfReferenceItemLogoCardSection:v205];
    }

    v206 = [v4 objectForKeyedSubscript:@"rfReferenceItemButtonCardSection"];
    objc_opt_class();
    v239 = v206;
    if (objc_opt_isKindOfClass())
    {
      v207 = [[_SFPBRFReferenceItemButtonCardSection alloc] initWithDictionary:v206];
      [(_SFPBCardSectionValue *)v5 setRfReferenceItemButtonCardSection:v207];
    }

    v208 = [v4 objectForKeyedSubscript:@"rfButtonCardSection"];
    objc_opt_class();
    v238 = v208;
    if (objc_opt_isKindOfClass())
    {
      v209 = [[_SFPBRFButtonCardSection alloc] initWithDictionary:v208];
      [(_SFPBCardSectionValue *)v5 setRfButtonCardSection:v209];
    }

    v210 = [v4 objectForKeyedSubscript:@"rfBinaryButtonCardSection"];
    objc_opt_class();
    v237 = v210;
    if (objc_opt_isKindOfClass())
    {
      v211 = [[_SFPBRFBinaryButtonCardSection alloc] initWithDictionary:v210];
      [(_SFPBCardSectionValue *)v5 setRfBinaryButtonCardSection:v211];
    }

    v236 = v6;
    v212 = [v4 objectForKeyedSubscript:@"rfReferenceCenteredCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v213 = [[_SFPBRFReferenceCenteredCardSection alloc] initWithDictionary:v212];
      [(_SFPBCardSectionValue *)v5 setRfReferenceCenteredCardSection:v213];
    }

    v230 = v212;
    v235 = v8;
    v214 = [v4 objectForKeyedSubscript:@"rfSecondaryHeaderStandardCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v215 = [[_SFPBRFSecondaryHeaderStandardCardSection alloc] initWithDictionary:v214];
      [(_SFPBCardSectionValue *)v5 setRfSecondaryHeaderStandardCardSection:v215];
    }

    v234 = v10;
    v216 = [v4 objectForKeyedSubscript:@"rfSecondaryHeaderEmphasizedCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v217 = [[_SFPBRFSecondaryHeaderEmphasizedCardSection alloc] initWithDictionary:v216];
      [(_SFPBCardSectionValue *)v5 setRfSecondaryHeaderEmphasizedCardSection:v217];
    }

    v233 = v12;
    v218 = [v4 objectForKeyedSubscript:@"rfMapCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v219 = [[_SFPBRFMapCardSection alloc] initWithDictionary:v218];
      [(_SFPBCardSectionValue *)v5 setRfMapCardSection:v219];
    }

    v232 = v14;
    v220 = [v4 objectForKeyedSubscript:@"rfReferenceStandardCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v221 = [[_SFPBRFReferenceStandardCardSection alloc] initWithDictionary:v220];
      [(_SFPBCardSectionValue *)v5 setRfReferenceStandardCardSection:v221];
    }

    v231 = v16;
    v222 = [v4 objectForKeyedSubscript:@"rfMultiButtonCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v223 = [[_SFPBRFMultiButtonCardSection alloc] initWithDictionary:v222];
      [(_SFPBCardSectionValue *)v5 setRfMultiButtonCardSection:v223];
    }

    v224 = [v4 objectForKeyedSubscript:@"rfDisambiguationTitleCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v225 = [[_SFPBRFDisambiguationTitleCardSection alloc] initWithDictionary:v224];
      [(_SFPBCardSectionValue *)v5 setRfDisambiguationTitleCardSection:v225];
    }

    v226 = [v4 objectForKeyedSubscript:@"rfSummaryItemExpandableCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v227 = [[_SFPBRFSummaryItemExpandableCardSection alloc] initWithDictionary:v226];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemExpandableCardSection:v227];
    }

    v228 = v5;
  }

  return v5;
}

- (_SFPBCardSectionValue)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCardSectionValue *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCardSectionValue *)self dictionaryRepresentation];
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

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_activityIndicatorCardSection)
  {
    v4 = [(_SFPBCardSectionValue *)self activityIndicatorCardSection];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"activityIndicatorCardSection"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"activityIndicatorCardSection"];
    }
  }

  if (self->_appIconCardSection)
  {
    v7 = [(_SFPBCardSectionValue *)self appIconCardSection];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"appIconCardSection"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"appIconCardSection"];
    }
  }

  if (self->_appLinkCardSection)
  {
    v10 = [(_SFPBCardSectionValue *)self appLinkCardSection];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"appLinkCardSection"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"appLinkCardSection"];
    }
  }

  if (self->_archiveViewCardSection)
  {
    v13 = [(_SFPBCardSectionValue *)self archiveViewCardSection];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"archiveViewCardSection"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"archiveViewCardSection"];
    }
  }

  if (self->_attributionFooterCardSection)
  {
    v16 = [(_SFPBCardSectionValue *)self attributionFooterCardSection];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"attributionFooterCardSection"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"attributionFooterCardSection"];
    }
  }

  if (self->_audioPlaybackCardSection)
  {
    v19 = [(_SFPBCardSectionValue *)self audioPlaybackCardSection];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"audioPlaybackCardSection"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"audioPlaybackCardSection"];
    }
  }

  if (self->_buttonCardSection)
  {
    v22 = [(_SFPBCardSectionValue *)self buttonCardSection];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"buttonCardSection"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"buttonCardSection"];
    }
  }

  if (self->_buttonListCardSection)
  {
    v25 = [(_SFPBCardSectionValue *)self buttonListCardSection];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"buttonListCardSection"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"buttonListCardSection"];
    }
  }

  if (self->_collectionCardSection)
  {
    v28 = [(_SFPBCardSectionValue *)self collectionCardSection];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"collectionCardSection"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"collectionCardSection"];
    }
  }

  if (self->_colorBarCardSection)
  {
    v31 = [(_SFPBCardSectionValue *)self colorBarCardSection];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"colorBarCardSection"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"colorBarCardSection"];
    }
  }

  if (self->_combinedCardSection)
  {
    v34 = [(_SFPBCardSectionValue *)self combinedCardSection];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"combinedCardSection"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"combinedCardSection"];
    }
  }

  if (self->_commandRowCardSection)
  {
    v37 = [(_SFPBCardSectionValue *)self commandRowCardSection];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"commandRowCardSection"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"commandRowCardSection"];
    }
  }

  if (self->_compactRowCardSection)
  {
    v40 = [(_SFPBCardSectionValue *)self compactRowCardSection];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"compactRowCardSection"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"compactRowCardSection"];
    }
  }

  if (self->_descriptionCardSection)
  {
    v43 = [(_SFPBCardSectionValue *)self descriptionCardSection];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"descriptionCardSection"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"descriptionCardSection"];
    }
  }

  if (self->_detailedRowCardSection)
  {
    v46 = [(_SFPBCardSectionValue *)self detailedRowCardSection];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"detailedRowCardSection"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"detailedRowCardSection"];
    }
  }

  if (self->_findMyCardSection)
  {
    v49 = [(_SFPBCardSectionValue *)self findMyCardSection];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"findMyCardSection"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"findMyCardSection"];
    }
  }

  if (self->_flightCardSection)
  {
    v52 = [(_SFPBCardSectionValue *)self flightCardSection];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"flightCardSection"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"flightCardSection"];
    }
  }

  if (self->_gridCardSection)
  {
    v55 = [(_SFPBCardSectionValue *)self gridCardSection];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"gridCardSection"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"gridCardSection"];
    }
  }

  if (self->_heroCardSection)
  {
    v58 = [(_SFPBCardSectionValue *)self heroCardSection];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"heroCardSection"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"heroCardSection"];
    }
  }

  if (self->_heroTitleCardSection)
  {
    v61 = [(_SFPBCardSectionValue *)self heroTitleCardSection];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"heroTitleCardSection"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"heroTitleCardSection"];
    }
  }

  if (self->_horizontalButtonCardSection)
  {
    v64 = [(_SFPBCardSectionValue *)self horizontalButtonCardSection];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"horizontalButtonCardSection"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"horizontalButtonCardSection"];
    }
  }

  if (self->_horizontalScrollCardSection)
  {
    v67 = [(_SFPBCardSectionValue *)self horizontalScrollCardSection];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"horizontalScrollCardSection"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"horizontalScrollCardSection"];
    }
  }

  if (self->_imagesCardSection)
  {
    v70 = [(_SFPBCardSectionValue *)self imagesCardSection];
    v71 = [v70 dictionaryRepresentation];
    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"imagesCardSection"];
    }

    else
    {
      v72 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v72 forKeyedSubscript:@"imagesCardSection"];
    }
  }

  if (self->_infoCardSection)
  {
    v73 = [(_SFPBCardSectionValue *)self infoCardSection];
    v74 = [v73 dictionaryRepresentation];
    if (v74)
    {
      [v3 setObject:v74 forKeyedSubscript:@"infoCardSection"];
    }

    else
    {
      v75 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v75 forKeyedSubscript:@"infoCardSection"];
    }
  }

  if (self->_keyValueDataCardSection)
  {
    v76 = [(_SFPBCardSectionValue *)self keyValueDataCardSection];
    v77 = [v76 dictionaryRepresentation];
    if (v77)
    {
      [v3 setObject:v77 forKeyedSubscript:@"keyValueDataCardSection"];
    }

    else
    {
      v78 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v78 forKeyedSubscript:@"keyValueDataCardSection"];
    }
  }

  if (self->_largeTitleDetailedRowCardSection)
  {
    v79 = [(_SFPBCardSectionValue *)self largeTitleDetailedRowCardSection];
    v80 = [v79 dictionaryRepresentation];
    if (v80)
    {
      [v3 setObject:v80 forKeyedSubscript:@"largeTitleDetailedRowCardSection"];
    }

    else
    {
      v81 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v81 forKeyedSubscript:@"largeTitleDetailedRowCardSection"];
    }
  }

  if (self->_leadingTrailingCardSection)
  {
    v82 = [(_SFPBCardSectionValue *)self leadingTrailingCardSection];
    v83 = [v82 dictionaryRepresentation];
    if (v83)
    {
      [v3 setObject:v83 forKeyedSubscript:@"leadingTrailingCardSection"];
    }

    else
    {
      v84 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v84 forKeyedSubscript:@"leadingTrailingCardSection"];
    }
  }

  if (self->_linkPresentationCardSection)
  {
    v85 = [(_SFPBCardSectionValue *)self linkPresentationCardSection];
    v86 = [v85 dictionaryRepresentation];
    if (v86)
    {
      [v3 setObject:v86 forKeyedSubscript:@"linkPresentationCardSection"];
    }

    else
    {
      v87 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v87 forKeyedSubscript:@"linkPresentationCardSection"];
    }
  }

  if (self->_listenToCardSection)
  {
    v88 = [(_SFPBCardSectionValue *)self listenToCardSection];
    v89 = [v88 dictionaryRepresentation];
    if (v89)
    {
      [v3 setObject:v89 forKeyedSubscript:@"listenToCardSection"];
    }

    else
    {
      v90 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v90 forKeyedSubscript:@"listenToCardSection"];
    }
  }

  if (self->_mapCardSection)
  {
    v91 = [(_SFPBCardSectionValue *)self mapCardSection];
    v92 = [v91 dictionaryRepresentation];
    if (v92)
    {
      [v3 setObject:v92 forKeyedSubscript:@"mapCardSection"];
    }

    else
    {
      v93 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v93 forKeyedSubscript:@"mapCardSection"];
    }
  }

  if (self->_mapPlaceCardSection)
  {
    v94 = [(_SFPBCardSectionValue *)self mapPlaceCardSection];
    v95 = [v94 dictionaryRepresentation];
    if (v95)
    {
      [v3 setObject:v95 forKeyedSubscript:@"mapPlaceCardSection"];
    }

    else
    {
      v96 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v96 forKeyedSubscript:@"mapPlaceCardSection"];
    }
  }

  if (self->_mapsDetailedRowCardSection)
  {
    v97 = [(_SFPBCardSectionValue *)self mapsDetailedRowCardSection];
    v98 = [v97 dictionaryRepresentation];
    if (v98)
    {
      [v3 setObject:v98 forKeyedSubscript:@"mapsDetailedRowCardSection"];
    }

    else
    {
      v99 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v99 forKeyedSubscript:@"mapsDetailedRowCardSection"];
    }
  }

  if (self->_mediaInfoCardSection)
  {
    v100 = [(_SFPBCardSectionValue *)self mediaInfoCardSection];
    v101 = [v100 dictionaryRepresentation];
    if (v101)
    {
      [v3 setObject:v101 forKeyedSubscript:@"mediaInfoCardSection"];
    }

    else
    {
      v102 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v102 forKeyedSubscript:@"mediaInfoCardSection"];
    }
  }

  if (self->_mediaPlayerCardSection)
  {
    v103 = [(_SFPBCardSectionValue *)self mediaPlayerCardSection];
    v104 = [v103 dictionaryRepresentation];
    if (v104)
    {
      [v3 setObject:v104 forKeyedSubscript:@"mediaPlayerCardSection"];
    }

    else
    {
      v105 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v105 forKeyedSubscript:@"mediaPlayerCardSection"];
    }
  }

  if (self->_mediaRemoteControlCardSection)
  {
    v106 = [(_SFPBCardSectionValue *)self mediaRemoteControlCardSection];
    v107 = [v106 dictionaryRepresentation];
    if (v107)
    {
      [v3 setObject:v107 forKeyedSubscript:@"mediaRemoteControlCardSection"];
    }

    else
    {
      v108 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v108 forKeyedSubscript:@"mediaRemoteControlCardSection"];
    }
  }

  if (self->_messageCardSection)
  {
    v109 = [(_SFPBCardSectionValue *)self messageCardSection];
    v110 = [v109 dictionaryRepresentation];
    if (v110)
    {
      [v3 setObject:v110 forKeyedSubscript:@"messageCardSection"];
    }

    else
    {
      v111 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v111 forKeyedSubscript:@"messageCardSection"];
    }
  }

  if (self->_metaInfoCardSection)
  {
    v112 = [(_SFPBCardSectionValue *)self metaInfoCardSection];
    v113 = [v112 dictionaryRepresentation];
    if (v113)
    {
      [v3 setObject:v113 forKeyedSubscript:@"metaInfoCardSection"];
    }

    else
    {
      v114 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v114 forKeyedSubscript:@"metaInfoCardSection"];
    }
  }

  if (self->_miniCardSection)
  {
    v115 = [(_SFPBCardSectionValue *)self miniCardSection];
    v116 = [v115 dictionaryRepresentation];
    if (v116)
    {
      [v3 setObject:v116 forKeyedSubscript:@"miniCardSection"];
    }

    else
    {
      v117 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v117 forKeyedSubscript:@"miniCardSection"];
    }
  }

  if (self->_newsCardSection)
  {
    v118 = [(_SFPBCardSectionValue *)self newsCardSection];
    v119 = [v118 dictionaryRepresentation];
    if (v119)
    {
      [v3 setObject:v119 forKeyedSubscript:@"newsCardSection"];
    }

    else
    {
      v120 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v120 forKeyedSubscript:@"newsCardSection"];
    }
  }

  if (self->_nowPlayingCardSection)
  {
    v121 = [(_SFPBCardSectionValue *)self nowPlayingCardSection];
    v122 = [v121 dictionaryRepresentation];
    if (v122)
    {
      [v3 setObject:v122 forKeyedSubscript:@"nowPlayingCardSection"];
    }

    else
    {
      v123 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v123 forKeyedSubscript:@"nowPlayingCardSection"];
    }
  }

  if (self->_personHeaderCardSection)
  {
    v124 = [(_SFPBCardSectionValue *)self personHeaderCardSection];
    v125 = [v124 dictionaryRepresentation];
    if (v125)
    {
      [v3 setObject:v125 forKeyedSubscript:@"personHeaderCardSection"];
    }

    else
    {
      v126 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v126 forKeyedSubscript:@"personHeaderCardSection"];
    }
  }

  if (self->_productCardSection)
  {
    v127 = [(_SFPBCardSectionValue *)self productCardSection];
    v128 = [v127 dictionaryRepresentation];
    if (v128)
    {
      [v3 setObject:v128 forKeyedSubscript:@"productCardSection"];
    }

    else
    {
      v129 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v129 forKeyedSubscript:@"productCardSection"];
    }
  }

  if (self->_responseWrapperCardSection)
  {
    v130 = [(_SFPBCardSectionValue *)self responseWrapperCardSection];
    v131 = [v130 dictionaryRepresentation];
    if (v131)
    {
      [v3 setObject:v131 forKeyedSubscript:@"responseWrapperCardSection"];
    }

    else
    {
      v132 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v132 forKeyedSubscript:@"responseWrapperCardSection"];
    }
  }

  if (self->_rfBinaryButtonCardSection)
  {
    v133 = [(_SFPBCardSectionValue *)self rfBinaryButtonCardSection];
    v134 = [v133 dictionaryRepresentation];
    if (v134)
    {
      [v3 setObject:v134 forKeyedSubscript:@"rfBinaryButtonCardSection"];
    }

    else
    {
      v135 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v135 forKeyedSubscript:@"rfBinaryButtonCardSection"];
    }
  }

  if (self->_rfButtonCardSection)
  {
    v136 = [(_SFPBCardSectionValue *)self rfButtonCardSection];
    v137 = [v136 dictionaryRepresentation];
    if (v137)
    {
      [v3 setObject:v137 forKeyedSubscript:@"rfButtonCardSection"];
    }

    else
    {
      v138 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v138 forKeyedSubscript:@"rfButtonCardSection"];
    }
  }

  if (self->_rfDisambiguationTitleCardSection)
  {
    v139 = [(_SFPBCardSectionValue *)self rfDisambiguationTitleCardSection];
    v140 = [v139 dictionaryRepresentation];
    if (v140)
    {
      [v3 setObject:v140 forKeyedSubscript:@"rfDisambiguationTitleCardSection"];
    }

    else
    {
      v141 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v141 forKeyedSubscript:@"rfDisambiguationTitleCardSection"];
    }
  }

  if (self->_rfExpandableStandardCardSection)
  {
    v142 = [(_SFPBCardSectionValue *)self rfExpandableStandardCardSection];
    v143 = [v142 dictionaryRepresentation];
    if (v143)
    {
      [v3 setObject:v143 forKeyedSubscript:@"rfExpandableStandardCardSection"];
    }

    else
    {
      v144 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v144 forKeyedSubscript:@"rfExpandableStandardCardSection"];
    }
  }

  if (self->_rfFactItemButtonCardSection)
  {
    v145 = [(_SFPBCardSectionValue *)self rfFactItemButtonCardSection];
    v146 = [v145 dictionaryRepresentation];
    if (v146)
    {
      [v3 setObject:v146 forKeyedSubscript:@"rfFactItemButtonCardSection"];
    }

    else
    {
      v147 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v147 forKeyedSubscript:@"rfFactItemButtonCardSection"];
    }
  }

  if (self->_rfFactItemDetailedNumberCardSection)
  {
    v148 = [(_SFPBCardSectionValue *)self rfFactItemDetailedNumberCardSection];
    v149 = [v148 dictionaryRepresentation];
    if (v149)
    {
      [v3 setObject:v149 forKeyedSubscript:@"rfFactItemDetailedNumberCardSection"];
    }

    else
    {
      v150 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v150 forKeyedSubscript:@"rfFactItemDetailedNumberCardSection"];
    }
  }

  if (self->_rfFactItemHeroButtonCardSection)
  {
    v151 = [(_SFPBCardSectionValue *)self rfFactItemHeroButtonCardSection];
    v152 = [v151 dictionaryRepresentation];
    if (v152)
    {
      [v3 setObject:v152 forKeyedSubscript:@"rfFactItemHeroButtonCardSection"];
    }

    else
    {
      v153 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v153 forKeyedSubscript:@"rfFactItemHeroButtonCardSection"];
    }
  }

  if (self->_rfFactItemHeroNumberCardSection)
  {
    v154 = [(_SFPBCardSectionValue *)self rfFactItemHeroNumberCardSection];
    v155 = [v154 dictionaryRepresentation];
    if (v155)
    {
      [v3 setObject:v155 forKeyedSubscript:@"rfFactItemHeroNumberCardSection"];
    }

    else
    {
      v156 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v156 forKeyedSubscript:@"rfFactItemHeroNumberCardSection"];
    }
  }

  if (self->_rfFactItemImageRightCardSection)
  {
    v157 = [(_SFPBCardSectionValue *)self rfFactItemImageRightCardSection];
    v158 = [v157 dictionaryRepresentation];
    if (v158)
    {
      [v3 setObject:v158 forKeyedSubscript:@"rfFactItemImageRightCardSection"];
    }

    else
    {
      v159 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v159 forKeyedSubscript:@"rfFactItemImageRightCardSection"];
    }
  }

  if (self->_rfFactItemShortHeroNumberCardSection)
  {
    v160 = [(_SFPBCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
    v161 = [v160 dictionaryRepresentation];
    if (v161)
    {
      [v3 setObject:v161 forKeyedSubscript:@"rfFactItemShortHeroNumberCardSection"];
    }

    else
    {
      v162 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v162 forKeyedSubscript:@"rfFactItemShortHeroNumberCardSection"];
    }
  }

  if (self->_rfFactItemShortNumberCardSection)
  {
    v163 = [(_SFPBCardSectionValue *)self rfFactItemShortNumberCardSection];
    v164 = [v163 dictionaryRepresentation];
    if (v164)
    {
      [v3 setObject:v164 forKeyedSubscript:@"rfFactItemShortNumberCardSection"];
    }

    else
    {
      v165 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v165 forKeyedSubscript:@"rfFactItemShortNumberCardSection"];
    }
  }

  if (self->_rfFactItemStandardCardSection)
  {
    v166 = [(_SFPBCardSectionValue *)self rfFactItemStandardCardSection];
    v167 = [v166 dictionaryRepresentation];
    if (v167)
    {
      [v3 setObject:v167 forKeyedSubscript:@"rfFactItemStandardCardSection"];
    }

    else
    {
      v168 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v168 forKeyedSubscript:@"rfFactItemStandardCardSection"];
    }
  }

  if (self->_rfLongItemStandardCardSection)
  {
    v169 = [(_SFPBCardSectionValue *)self rfLongItemStandardCardSection];
    v170 = [v169 dictionaryRepresentation];
    if (v170)
    {
      [v3 setObject:v170 forKeyedSubscript:@"rfLongItemStandardCardSection"];
    }

    else
    {
      v171 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v171 forKeyedSubscript:@"rfLongItemStandardCardSection"];
    }
  }

  if (self->_rfMapCardSection)
  {
    v172 = [(_SFPBCardSectionValue *)self rfMapCardSection];
    v173 = [v172 dictionaryRepresentation];
    if (v173)
    {
      [v3 setObject:v173 forKeyedSubscript:@"rfMapCardSection"];
    }

    else
    {
      v174 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v174 forKeyedSubscript:@"rfMapCardSection"];
    }
  }

  if (self->_rfMultiButtonCardSection)
  {
    v175 = [(_SFPBCardSectionValue *)self rfMultiButtonCardSection];
    v176 = [v175 dictionaryRepresentation];
    if (v176)
    {
      [v3 setObject:v176 forKeyedSubscript:@"rfMultiButtonCardSection"];
    }

    else
    {
      v177 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v177 forKeyedSubscript:@"rfMultiButtonCardSection"];
    }
  }

  if (self->_rfPrimaryHeaderMarqueeCardSection)
  {
    v178 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
    v179 = [v178 dictionaryRepresentation];
    if (v179)
    {
      [v3 setObject:v179 forKeyedSubscript:@"rfPrimaryHeaderMarqueeCardSection"];
    }

    else
    {
      v180 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v180 forKeyedSubscript:@"rfPrimaryHeaderMarqueeCardSection"];
    }
  }

  if (self->_rfPrimaryHeaderRichCardSection)
  {
    v181 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderRichCardSection];
    v182 = [v181 dictionaryRepresentation];
    if (v182)
    {
      [v3 setObject:v182 forKeyedSubscript:@"rfPrimaryHeaderRichCardSection"];
    }

    else
    {
      v183 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v183 forKeyedSubscript:@"rfPrimaryHeaderRichCardSection"];
    }
  }

  if (self->_rfPrimaryHeaderStackedImageCardSection)
  {
    v184 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
    v185 = [v184 dictionaryRepresentation];
    if (v185)
    {
      [v3 setObject:v185 forKeyedSubscript:@"rfPrimaryHeaderStackedImageCardSection"];
    }

    else
    {
      v186 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v186 forKeyedSubscript:@"rfPrimaryHeaderStackedImageCardSection"];
    }
  }

  if (self->_rfPrimaryHeaderStandardCardSection)
  {
    v187 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
    v188 = [v187 dictionaryRepresentation];
    if (v188)
    {
      [v3 setObject:v188 forKeyedSubscript:@"rfPrimaryHeaderStandardCardSection"];
    }

    else
    {
      v189 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v189 forKeyedSubscript:@"rfPrimaryHeaderStandardCardSection"];
    }
  }

  if (self->_rfReferenceCenteredCardSection)
  {
    v190 = [(_SFPBCardSectionValue *)self rfReferenceCenteredCardSection];
    v191 = [v190 dictionaryRepresentation];
    if (v191)
    {
      [v3 setObject:v191 forKeyedSubscript:@"rfReferenceCenteredCardSection"];
    }

    else
    {
      v192 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v192 forKeyedSubscript:@"rfReferenceCenteredCardSection"];
    }
  }

  if (self->_rfReferenceFootnoteCardSection)
  {
    v193 = [(_SFPBCardSectionValue *)self rfReferenceFootnoteCardSection];
    v194 = [v193 dictionaryRepresentation];
    if (v194)
    {
      [v3 setObject:v194 forKeyedSubscript:@"rfReferenceFootnoteCardSection"];
    }

    else
    {
      v195 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v195 forKeyedSubscript:@"rfReferenceFootnoteCardSection"];
    }
  }

  if (self->_rfReferenceItemButtonCardSection)
  {
    v196 = [(_SFPBCardSectionValue *)self rfReferenceItemButtonCardSection];
    v197 = [v196 dictionaryRepresentation];
    if (v197)
    {
      [v3 setObject:v197 forKeyedSubscript:@"rfReferenceItemButtonCardSection"];
    }

    else
    {
      v198 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v198 forKeyedSubscript:@"rfReferenceItemButtonCardSection"];
    }
  }

  if (self->_rfReferenceItemLogoCardSection)
  {
    v199 = [(_SFPBCardSectionValue *)self rfReferenceItemLogoCardSection];
    v200 = [v199 dictionaryRepresentation];
    if (v200)
    {
      [v3 setObject:v200 forKeyedSubscript:@"rfReferenceItemLogoCardSection"];
    }

    else
    {
      v201 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v201 forKeyedSubscript:@"rfReferenceItemLogoCardSection"];
    }
  }

  if (self->_rfReferenceRichCardSection)
  {
    v202 = [(_SFPBCardSectionValue *)self rfReferenceRichCardSection];
    v203 = [v202 dictionaryRepresentation];
    if (v203)
    {
      [v3 setObject:v203 forKeyedSubscript:@"rfReferenceRichCardSection"];
    }

    else
    {
      v204 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v204 forKeyedSubscript:@"rfReferenceRichCardSection"];
    }
  }

  if (self->_rfReferenceStandardCardSection)
  {
    v205 = [(_SFPBCardSectionValue *)self rfReferenceStandardCardSection];
    v206 = [v205 dictionaryRepresentation];
    if (v206)
    {
      [v3 setObject:v206 forKeyedSubscript:@"rfReferenceStandardCardSection"];
    }

    else
    {
      v207 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v207 forKeyedSubscript:@"rfReferenceStandardCardSection"];
    }
  }

  if (self->_rfSecondaryHeaderEmphasizedCardSection)
  {
    v208 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
    v209 = [v208 dictionaryRepresentation];
    if (v209)
    {
      [v3 setObject:v209 forKeyedSubscript:@"rfSecondaryHeaderEmphasizedCardSection"];
    }

    else
    {
      v210 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v210 forKeyedSubscript:@"rfSecondaryHeaderEmphasizedCardSection"];
    }
  }

  if (self->_rfSecondaryHeaderStandardCardSection)
  {
    v211 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
    v212 = [v211 dictionaryRepresentation];
    if (v212)
    {
      [v3 setObject:v212 forKeyedSubscript:@"rfSecondaryHeaderStandardCardSection"];
    }

    else
    {
      v213 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v213 forKeyedSubscript:@"rfSecondaryHeaderStandardCardSection"];
    }
  }

  if (self->_rfSimpleItemPlayerCardSection)
  {
    v214 = [(_SFPBCardSectionValue *)self rfSimpleItemPlayerCardSection];
    v215 = [v214 dictionaryRepresentation];
    if (v215)
    {
      [v3 setObject:v215 forKeyedSubscript:@"rfSimpleItemPlayerCardSection"];
    }

    else
    {
      v216 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v216 forKeyedSubscript:@"rfSimpleItemPlayerCardSection"];
    }
  }

  if (self->_rfSimpleItemReverseRichCardSection)
  {
    v217 = [(_SFPBCardSectionValue *)self rfSimpleItemReverseRichCardSection];
    v218 = [v217 dictionaryRepresentation];
    if (v218)
    {
      [v3 setObject:v218 forKeyedSubscript:@"rfSimpleItemReverseRichCardSection"];
    }

    else
    {
      v219 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v219 forKeyedSubscript:@"rfSimpleItemReverseRichCardSection"];
    }
  }

  if (self->_rfSimpleItemRichCardSection)
  {
    v220 = [(_SFPBCardSectionValue *)self rfSimpleItemRichCardSection];
    v221 = [v220 dictionaryRepresentation];
    if (v221)
    {
      [v3 setObject:v221 forKeyedSubscript:@"rfSimpleItemRichCardSection"];
    }

    else
    {
      v222 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v222 forKeyedSubscript:@"rfSimpleItemRichCardSection"];
    }
  }

  if (self->_rfSimpleItemRichSearchResultCardSection)
  {
    v223 = [(_SFPBCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
    v224 = [v223 dictionaryRepresentation];
    if (v224)
    {
      [v3 setObject:v224 forKeyedSubscript:@"rfSimpleItemRichSearchResultCardSection"];
    }

    else
    {
      v225 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v225 forKeyedSubscript:@"rfSimpleItemRichSearchResultCardSection"];
    }
  }

  if (self->_rfSimpleItemStandardCardSection)
  {
    v226 = [(_SFPBCardSectionValue *)self rfSimpleItemStandardCardSection];
    v227 = [v226 dictionaryRepresentation];
    if (v227)
    {
      [v3 setObject:v227 forKeyedSubscript:@"rfSimpleItemStandardCardSection"];
    }

    else
    {
      v228 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v228 forKeyedSubscript:@"rfSimpleItemStandardCardSection"];
    }
  }

  if (self->_rfSimpleItemVisualElementCardSection)
  {
    v229 = [(_SFPBCardSectionValue *)self rfSimpleItemVisualElementCardSection];
    v230 = [v229 dictionaryRepresentation];
    if (v230)
    {
      [v3 setObject:v230 forKeyedSubscript:@"rfSimpleItemVisualElementCardSection"];
    }

    else
    {
      v231 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v231 forKeyedSubscript:@"rfSimpleItemVisualElementCardSection"];
    }
  }

  if (self->_rfSummaryItemAlignedTextCardSection)
  {
    v232 = [(_SFPBCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
    v233 = [v232 dictionaryRepresentation];
    if (v233)
    {
      [v3 setObject:v233 forKeyedSubscript:@"rfSummaryItemAlignedTextCardSection"];
    }

    else
    {
      v234 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v234 forKeyedSubscript:@"rfSummaryItemAlignedTextCardSection"];
    }
  }

  if (self->_rfSummaryItemButtonCardSection)
  {
    v235 = [(_SFPBCardSectionValue *)self rfSummaryItemButtonCardSection];
    v236 = [v235 dictionaryRepresentation];
    if (v236)
    {
      [v3 setObject:v236 forKeyedSubscript:@"rfSummaryItemButtonCardSection"];
    }

    else
    {
      v237 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v237 forKeyedSubscript:@"rfSummaryItemButtonCardSection"];
    }
  }

  if (self->_rfSummaryItemDetailedTextCardSection)
  {
    v238 = [(_SFPBCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
    v239 = [v238 dictionaryRepresentation];
    if (v239)
    {
      [v3 setObject:v239 forKeyedSubscript:@"rfSummaryItemDetailedTextCardSection"];
    }

    else
    {
      v240 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v240 forKeyedSubscript:@"rfSummaryItemDetailedTextCardSection"];
    }
  }

  if (self->_rfSummaryItemExpandableCardSection)
  {
    v241 = [(_SFPBCardSectionValue *)self rfSummaryItemExpandableCardSection];
    v242 = [v241 dictionaryRepresentation];
    if (v242)
    {
      [v3 setObject:v242 forKeyedSubscript:@"rfSummaryItemExpandableCardSection"];
    }

    else
    {
      v243 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v243 forKeyedSubscript:@"rfSummaryItemExpandableCardSection"];
    }
  }

  if (self->_rfSummaryItemImageRightCardSection)
  {
    v244 = [(_SFPBCardSectionValue *)self rfSummaryItemImageRightCardSection];
    v245 = [v244 dictionaryRepresentation];
    if (v245)
    {
      [v3 setObject:v245 forKeyedSubscript:@"rfSummaryItemImageRightCardSection"];
    }

    else
    {
      v246 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v246 forKeyedSubscript:@"rfSummaryItemImageRightCardSection"];
    }
  }

  if (self->_rfSummaryItemPairCardSection)
  {
    v247 = [(_SFPBCardSectionValue *)self rfSummaryItemPairCardSection];
    v248 = [v247 dictionaryRepresentation];
    if (v248)
    {
      [v3 setObject:v248 forKeyedSubscript:@"rfSummaryItemPairCardSection"];
    }

    else
    {
      v249 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v249 forKeyedSubscript:@"rfSummaryItemPairCardSection"];
    }
  }

  if (self->_rfSummaryItemPairNumberCardSection)
  {
    v250 = [(_SFPBCardSectionValue *)self rfSummaryItemPairNumberCardSection];
    v251 = [v250 dictionaryRepresentation];
    if (v251)
    {
      [v3 setObject:v251 forKeyedSubscript:@"rfSummaryItemPairNumberCardSection"];
    }

    else
    {
      v252 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v252 forKeyedSubscript:@"rfSummaryItemPairNumberCardSection"];
    }
  }

  if (self->_rfSummaryItemPlayerCardSection)
  {
    v253 = [(_SFPBCardSectionValue *)self rfSummaryItemPlayerCardSection];
    v254 = [v253 dictionaryRepresentation];
    if (v254)
    {
      [v3 setObject:v254 forKeyedSubscript:@"rfSummaryItemPlayerCardSection"];
    }

    else
    {
      v255 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v255 forKeyedSubscript:@"rfSummaryItemPlayerCardSection"];
    }
  }

  if (self->_rfSummaryItemShortNumberCardSection)
  {
    v256 = [(_SFPBCardSectionValue *)self rfSummaryItemShortNumberCardSection];
    v257 = [v256 dictionaryRepresentation];
    if (v257)
    {
      [v3 setObject:v257 forKeyedSubscript:@"rfSummaryItemShortNumberCardSection"];
    }

    else
    {
      v258 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v258 forKeyedSubscript:@"rfSummaryItemShortNumberCardSection"];
    }
  }

  if (self->_rfSummaryItemStandardCardSection)
  {
    v259 = [(_SFPBCardSectionValue *)self rfSummaryItemStandardCardSection];
    v260 = [v259 dictionaryRepresentation];
    if (v260)
    {
      [v3 setObject:v260 forKeyedSubscript:@"rfSummaryItemStandardCardSection"];
    }

    else
    {
      v261 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v261 forKeyedSubscript:@"rfSummaryItemStandardCardSection"];
    }
  }

  if (self->_rfSummaryItemSwitchV2CardSection)
  {
    v262 = [(_SFPBCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
    v263 = [v262 dictionaryRepresentation];
    if (v263)
    {
      [v3 setObject:v263 forKeyedSubscript:@"rfSummaryItemSwitchV2CardSection"];
    }

    else
    {
      v264 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v264 forKeyedSubscript:@"rfSummaryItemSwitchV2CardSection"];
    }
  }

  if (self->_rfSummaryItemTextCardSection)
  {
    v265 = [(_SFPBCardSectionValue *)self rfSummaryItemTextCardSection];
    v266 = [v265 dictionaryRepresentation];
    if (v266)
    {
      [v3 setObject:v266 forKeyedSubscript:@"rfSummaryItemTextCardSection"];
    }

    else
    {
      v267 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v267 forKeyedSubscript:@"rfSummaryItemTextCardSection"];
    }
  }

  if (self->_rfTableHeaderCardSection)
  {
    v268 = [(_SFPBCardSectionValue *)self rfTableHeaderCardSection];
    v269 = [v268 dictionaryRepresentation];
    if (v269)
    {
      [v3 setObject:v269 forKeyedSubscript:@"rfTableHeaderCardSection"];
    }

    else
    {
      v270 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v270 forKeyedSubscript:@"rfTableHeaderCardSection"];
    }
  }

  if (self->_rfTableRowCardSection)
  {
    v271 = [(_SFPBCardSectionValue *)self rfTableRowCardSection];
    v272 = [v271 dictionaryRepresentation];
    if (v272)
    {
      [v3 setObject:v272 forKeyedSubscript:@"rfTableRowCardSection"];
    }

    else
    {
      v273 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v273 forKeyedSubscript:@"rfTableRowCardSection"];
    }
  }

  if (self->_richTitleCardSection)
  {
    v274 = [(_SFPBCardSectionValue *)self richTitleCardSection];
    v275 = [v274 dictionaryRepresentation];
    if (v275)
    {
      [v3 setObject:v275 forKeyedSubscript:@"richTitleCardSection"];
    }

    else
    {
      v276 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v276 forKeyedSubscript:@"richTitleCardSection"];
    }
  }

  if (self->_rowCardSection)
  {
    v277 = [(_SFPBCardSectionValue *)self rowCardSection];
    v278 = [v277 dictionaryRepresentation];
    if (v278)
    {
      [v3 setObject:v278 forKeyedSubscript:@"rowCardSection"];
    }

    else
    {
      v279 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v279 forKeyedSubscript:@"rowCardSection"];
    }
  }

  if (self->_safariTableOfContentsCardSection)
  {
    v280 = [(_SFPBCardSectionValue *)self safariTableOfContentsCardSection];
    v281 = [v280 dictionaryRepresentation];
    if (v281)
    {
      [v3 setObject:v281 forKeyedSubscript:@"safariTableOfContentsCardSection"];
    }

    else
    {
      v282 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v282 forKeyedSubscript:@"safariTableOfContentsCardSection"];
    }
  }

  if (self->_scoreboardCardSection)
  {
    v283 = [(_SFPBCardSectionValue *)self scoreboardCardSection];
    v284 = [v283 dictionaryRepresentation];
    if (v284)
    {
      [v3 setObject:v284 forKeyedSubscript:@"scoreboardCardSection"];
    }

    else
    {
      v285 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v285 forKeyedSubscript:@"scoreboardCardSection"];
    }
  }

  if (self->_sectionHeaderCardSection)
  {
    v286 = [(_SFPBCardSectionValue *)self sectionHeaderCardSection];
    v287 = [v286 dictionaryRepresentation];
    if (v287)
    {
      [v3 setObject:v287 forKeyedSubscript:@"sectionHeaderCardSection"];
    }

    else
    {
      v288 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v288 forKeyedSubscript:@"sectionHeaderCardSection"];
    }
  }

  if (self->_selectableGridCardSection)
  {
    v289 = [(_SFPBCardSectionValue *)self selectableGridCardSection];
    v290 = [v289 dictionaryRepresentation];
    if (v290)
    {
      [v3 setObject:v290 forKeyedSubscript:@"selectableGridCardSection"];
    }

    else
    {
      v291 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v291 forKeyedSubscript:@"selectableGridCardSection"];
    }
  }

  if (self->_socialMediaPostCardSection)
  {
    v292 = [(_SFPBCardSectionValue *)self socialMediaPostCardSection];
    v293 = [v292 dictionaryRepresentation];
    if (v293)
    {
      [v3 setObject:v293 forKeyedSubscript:@"socialMediaPostCardSection"];
    }

    else
    {
      v294 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v294 forKeyedSubscript:@"socialMediaPostCardSection"];
    }
  }

  if (self->_splitCardSection)
  {
    v295 = [(_SFPBCardSectionValue *)self splitCardSection];
    v296 = [v295 dictionaryRepresentation];
    if (v296)
    {
      [v3 setObject:v296 forKeyedSubscript:@"splitCardSection"];
    }

    else
    {
      v297 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v297 forKeyedSubscript:@"splitCardSection"];
    }
  }

  if (self->_stockChartCardSection)
  {
    v298 = [(_SFPBCardSectionValue *)self stockChartCardSection];
    v299 = [v298 dictionaryRepresentation];
    if (v299)
    {
      [v3 setObject:v299 forKeyedSubscript:@"stockChartCardSection"];
    }

    else
    {
      v300 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v300 forKeyedSubscript:@"stockChartCardSection"];
    }
  }

  if (self->_strokeAnimationCardSection)
  {
    v301 = [(_SFPBCardSectionValue *)self strokeAnimationCardSection];
    v302 = [v301 dictionaryRepresentation];
    if (v302)
    {
      [v3 setObject:v302 forKeyedSubscript:@"strokeAnimationCardSection"];
    }

    else
    {
      v303 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v303 forKeyedSubscript:@"strokeAnimationCardSection"];
    }
  }

  if (self->_suggestionCardSection)
  {
    v304 = [(_SFPBCardSectionValue *)self suggestionCardSection];
    v305 = [v304 dictionaryRepresentation];
    if (v305)
    {
      [v3 setObject:v305 forKeyedSubscript:@"suggestionCardSection"];
    }

    else
    {
      v306 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v306 forKeyedSubscript:@"suggestionCardSection"];
    }
  }

  if (self->_tableHeaderRowCardSection)
  {
    v307 = [(_SFPBCardSectionValue *)self tableHeaderRowCardSection];
    v308 = [v307 dictionaryRepresentation];
    if (v308)
    {
      [v3 setObject:v308 forKeyedSubscript:@"tableHeaderRowCardSection"];
    }

    else
    {
      v309 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v309 forKeyedSubscript:@"tableHeaderRowCardSection"];
    }
  }

  if (self->_tableRowCardSection)
  {
    v310 = [(_SFPBCardSectionValue *)self tableRowCardSection];
    v311 = [v310 dictionaryRepresentation];
    if (v311)
    {
      [v3 setObject:v311 forKeyedSubscript:@"tableRowCardSection"];
    }

    else
    {
      v312 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v312 forKeyedSubscript:@"tableRowCardSection"];
    }
  }

  if (self->_textColumnsCardSection)
  {
    v313 = [(_SFPBCardSectionValue *)self textColumnsCardSection];
    v314 = [v313 dictionaryRepresentation];
    if (v314)
    {
      [v3 setObject:v314 forKeyedSubscript:@"textColumnsCardSection"];
    }

    else
    {
      v315 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v315 forKeyedSubscript:@"textColumnsCardSection"];
    }
  }

  if (self->_titleCardSection)
  {
    v316 = [(_SFPBCardSectionValue *)self titleCardSection];
    v317 = [v316 dictionaryRepresentation];
    if (v317)
    {
      [v3 setObject:v317 forKeyedSubscript:@"titleCardSection"];
    }

    else
    {
      v318 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v318 forKeyedSubscript:@"titleCardSection"];
    }
  }

  if (self->_trackListCardSection)
  {
    v319 = [(_SFPBCardSectionValue *)self trackListCardSection];
    v320 = [v319 dictionaryRepresentation];
    if (v320)
    {
      [v3 setObject:v320 forKeyedSubscript:@"trackListCardSection"];
    }

    else
    {
      v321 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v321 forKeyedSubscript:@"trackListCardSection"];
    }
  }

  if (self->_verticalLayoutCardSection)
  {
    v322 = [(_SFPBCardSectionValue *)self verticalLayoutCardSection];
    v323 = [v322 dictionaryRepresentation];
    if (v323)
    {
      [v3 setObject:v323 forKeyedSubscript:@"verticalLayoutCardSection"];
    }

    else
    {
      v324 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v324 forKeyedSubscript:@"verticalLayoutCardSection"];
    }
  }

  if (self->_watchListCardSection)
  {
    v325 = [(_SFPBCardSectionValue *)self watchListCardSection];
    v326 = [v325 dictionaryRepresentation];
    if (v326)
    {
      [v3 setObject:v326 forKeyedSubscript:@"watchListCardSection"];
    }

    else
    {
      v327 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v327 forKeyedSubscript:@"watchListCardSection"];
    }
  }

  if (self->_watchNowCardSection)
  {
    v328 = [(_SFPBCardSectionValue *)self watchNowCardSection];
    v329 = [v328 dictionaryRepresentation];
    if (v329)
    {
      [v3 setObject:v329 forKeyedSubscript:@"watchNowCardSection"];
    }

    else
    {
      v330 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v330 forKeyedSubscript:@"watchNowCardSection"];
    }
  }

  if (self->_webCardSection)
  {
    v331 = [(_SFPBCardSectionValue *)self webCardSection];
    v332 = [v331 dictionaryRepresentation];
    if (v332)
    {
      [v3 setObject:v332 forKeyedSubscript:@"webCardSection"];
    }

    else
    {
      v333 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v333 forKeyedSubscript:@"webCardSection"];
    }
  }

  if (self->_worldMapCardSection)
  {
    v334 = [(_SFPBCardSectionValue *)self worldMapCardSection];
    v335 = [v334 dictionaryRepresentation];
    if (v335)
    {
      [v3 setObject:v335 forKeyedSubscript:@"worldMapCardSection"];
    }

    else
    {
      v336 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v336 forKeyedSubscript:@"worldMapCardSection"];
    }
  }

  v337 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBAppLinkCardSection *)self->_appLinkCardSection hash];
  v4 = [(_SFPBDescriptionCardSection *)self->_descriptionCardSection hash]^ v3;
  v5 = [(_SFPBKeyValueDataCardSection *)self->_keyValueDataCardSection hash];
  v6 = v4 ^ v5 ^ [(_SFPBMapCardSection *)self->_mapCardSection hash];
  v7 = [(_SFPBMediaInfoCardSection *)self->_mediaInfoCardSection hash];
  v8 = v7 ^ [(_SFPBMediaPlayerCardSection *)self->_mediaPlayerCardSection hash];
  v9 = v6 ^ v8 ^ [(_SFPBNowPlayingCardSection *)self->_nowPlayingCardSection hash];
  v10 = [(_SFPBRichTitleCardSection *)self->_richTitleCardSection hash];
  v11 = v10 ^ [(_SFPBRowCardSection *)self->_rowCardSection hash];
  v12 = v11 ^ [(_SFPBScoreboardCardSection *)self->_scoreboardCardSection hash];
  v13 = v9 ^ v12 ^ [(_SFPBSocialMediaPostCardSection *)self->_socialMediaPostCardSection hash];
  v14 = [(_SFPBStockChartCardSection *)self->_stockChartCardSection hash];
  v15 = v14 ^ [(_SFPBTableHeaderRowCardSection *)self->_tableHeaderRowCardSection hash];
  v16 = v15 ^ [(_SFPBTableRowCardSection *)self->_tableRowCardSection hash];
  v17 = v16 ^ [(_SFPBTextColumnsCardSection *)self->_textColumnsCardSection hash];
  v18 = v13 ^ v17 ^ [(_SFPBTitleCardSection *)self->_titleCardSection hash];
  v19 = [(_SFPBTrackListCardSection *)self->_trackListCardSection hash];
  v20 = v19 ^ [(_SFPBAudioPlaybackCardSection *)self->_audioPlaybackCardSection hash];
  v21 = v20 ^ [(_SFPBFlightCardSection *)self->_flightCardSection hash];
  v22 = v21 ^ [(_SFPBActivityIndicatorCardSection *)self->_activityIndicatorCardSection hash];
  v23 = v22 ^ [(_SFPBWebCardSection *)self->_webCardSection hash];
  v24 = v18 ^ v23 ^ [(_SFPBMessageCardSection *)self->_messageCardSection hash];
  v25 = [(_SFPBDetailedRowCardSection *)self->_detailedRowCardSection hash];
  v26 = v25 ^ [(_SFPBImagesCardSection *)self->_imagesCardSection hash];
  v27 = v26 ^ [(_SFPBSuggestionCardSection *)self->_suggestionCardSection hash];
  v28 = v27 ^ [(_SFPBSelectableGridCardSection *)self->_selectableGridCardSection hash];
  v29 = v28 ^ [(_SFPBSectionHeaderCardSection *)self->_sectionHeaderCardSection hash];
  v30 = v29 ^ [(_SFPBMetaInfoCardSection *)self->_metaInfoCardSection hash];
  v31 = v24 ^ v30 ^ [(_SFPBWatchListCardSection *)self->_watchListCardSection hash];
  v32 = [(_SFPBMapsDetailedRowCardSection *)self->_mapsDetailedRowCardSection hash];
  v33 = v32 ^ [(_SFPBButtonCardSection *)self->_buttonCardSection hash];
  v34 = v33 ^ [(_SFPBHorizontalButtonCardSection *)self->_horizontalButtonCardSection hash];
  v35 = v34 ^ [(_SFPBVerticalLayoutCardSection *)self->_verticalLayoutCardSection hash];
  v36 = v35 ^ [(_SFPBProductCardSection *)self->_productCardSection hash];
  v37 = v36 ^ [(_SFPBHorizontalScrollCardSection *)self->_horizontalScrollCardSection hash];
  v38 = v37 ^ [(_SFPBMediaRemoteControlCardSection *)self->_mediaRemoteControlCardSection hash];
  v39 = v31 ^ v38 ^ [(_SFPBMapPlaceCardSection *)self->_mapPlaceCardSection hash];
  v40 = [(_SFPBCompactRowCardSection *)self->_compactRowCardSection hash];
  v41 = v40 ^ [(_SFPBWorldMapCardSection *)self->_worldMapCardSection hash];
  v42 = v41 ^ [(_SFPBAttributionFooterCardSection *)self->_attributionFooterCardSection hash];
  v43 = v42 ^ [(_SFPBGridCardSection *)self->_gridCardSection hash];
  v44 = v43 ^ [(_SFPBPersonHeaderCardSection *)self->_personHeaderCardSection hash];
  v45 = v44 ^ [(_SFPBColorBarCardSection *)self->_colorBarCardSection hash];
  v46 = v45 ^ [(_SFPBSplitCardSection *)self->_splitCardSection hash];
  v47 = v46 ^ [(_SFPBLinkPresentationCardSection *)self->_linkPresentationCardSection hash];
  v48 = v39 ^ v47 ^ [(_SFPBFindMyCardSection *)self->_findMyCardSection hash];
  v49 = [(_SFPBHeroCardSection *)self->_heroCardSection hash];
  v50 = v49 ^ [(_SFPBNewsCardSection *)self->_newsCardSection hash];
  v51 = v50 ^ [(_SFPBMiniCardSection *)self->_miniCardSection hash];
  v52 = v51 ^ [(_SFPBInfoCardSection *)self->_infoCardSection hash];
  v53 = v52 ^ [(_SFPBCollectionCardSection *)self->_collectionCardSection hash];
  v54 = v53 ^ [(_SFPBCombinedCardSection *)self->_combinedCardSection hash];
  v55 = v54 ^ [(_SFPBResponseWrapperCardSection *)self->_responseWrapperCardSection hash];
  v56 = v55 ^ [(_SFPBListenToCardSection *)self->_listenToCardSection hash];
  v57 = v56 ^ [(_SFPBWatchNowCardSection *)self->_watchNowCardSection hash];
  v58 = v48 ^ v57 ^ [(_SFPBStrokeAnimationCardSection *)self->_strokeAnimationCardSection hash];
  v59 = [(_SFPBButtonListCardSection *)self->_buttonListCardSection hash];
  v60 = v59 ^ [(_SFPBCommandRowCardSection *)self->_commandRowCardSection hash];
  v61 = v60 ^ [(_SFPBLeadingTrailingCardSection *)self->_leadingTrailingCardSection hash];
  v62 = v61 ^ [(_SFPBHeroTitleCardSection *)self->_heroTitleCardSection hash];
  v63 = v62 ^ [(_SFPBArchiveViewCardSection *)self->_archiveViewCardSection hash];
  v64 = v63 ^ [(_SFPBAppIconCardSection *)self->_appIconCardSection hash];
  v65 = v64 ^ [(_SFPBLargeTitleDetailedRowCardSection *)self->_largeTitleDetailedRowCardSection hash];
  v66 = v65 ^ [(_SFPBSafariTableOfContentsCardSection *)self->_safariTableOfContentsCardSection hash];
  v67 = v66 ^ [(_SFPBRFSummaryItemShortNumberCardSection *)self->_rfSummaryItemShortNumberCardSection hash];
  v68 = v67 ^ [(_SFPBRFSummaryItemTextCardSection *)self->_rfSummaryItemTextCardSection hash];
  v69 = v58 ^ v68 ^ [(_SFPBRFSummaryItemStandardCardSection *)self->_rfSummaryItemStandardCardSection hash];
  v70 = [(_SFPBRFFactItemShortNumberCardSection *)self->_rfFactItemShortNumberCardSection hash];
  v71 = v70 ^ [(_SFPBRFFactItemStandardCardSection *)self->_rfFactItemStandardCardSection hash];
  v72 = v71 ^ [(_SFPBRFLongItemStandardCardSection *)self->_rfLongItemStandardCardSection hash];
  v73 = v72 ^ [(_SFPBRFPrimaryHeaderRichCardSection *)self->_rfPrimaryHeaderRichCardSection hash];
  v74 = v73 ^ [(_SFPBRFPrimaryHeaderStandardCardSection *)self->_rfPrimaryHeaderStandardCardSection hash];
  v75 = v74 ^ [(_SFPBRFReferenceFootnoteCardSection *)self->_rfReferenceFootnoteCardSection hash];
  v76 = v75 ^ [(_SFPBRFReferenceRichCardSection *)self->_rfReferenceRichCardSection hash];
  v77 = v76 ^ [(_SFPBRFSimpleItemRichCardSection *)self->_rfSimpleItemRichCardSection hash];
  v78 = v77 ^ [(_SFPBRFSimpleItemStandardCardSection *)self->_rfSimpleItemStandardCardSection hash];
  v79 = v78 ^ [(_SFPBRFSummaryItemAlignedTextCardSection *)self->_rfSummaryItemAlignedTextCardSection hash];
  v80 = v79 ^ [(_SFPBRFExpandableStandardCardSection *)self->_rfExpandableStandardCardSection hash];
  v81 = v69 ^ v80 ^ [(_SFPBRFFactItemButtonCardSection *)self->_rfFactItemButtonCardSection hash];
  v82 = [(_SFPBRFFactItemHeroNumberCardSection *)self->_rfFactItemHeroNumberCardSection hash];
  v83 = v82 ^ [(_SFPBRFPrimaryHeaderMarqueeCardSection *)self->_rfPrimaryHeaderMarqueeCardSection hash];
  v84 = v83 ^ [(_SFPBRFSummaryItemDetailedTextCardSection *)self->_rfSummaryItemDetailedTextCardSection hash];
  v85 = v84 ^ [(_SFPBRFSimpleItemPlayerCardSection *)self->_rfSimpleItemPlayerCardSection hash];
  v86 = v85 ^ [(_SFPBRFSummaryItemPairCardSection *)self->_rfSummaryItemPairCardSection hash];
  v87 = v86 ^ [(_SFPBRFSummaryItemPairNumberCardSection *)self->_rfSummaryItemPairNumberCardSection hash];
  v88 = v87 ^ [(_SFPBRFFactItemShortHeroNumberCardSection *)self->_rfFactItemShortHeroNumberCardSection hash];
  v89 = v88 ^ [(_SFPBRFFactItemDetailedNumberCardSection *)self->_rfFactItemDetailedNumberCardSection hash];
  v90 = v89 ^ [(_SFPBRFFactItemHeroButtonCardSection *)self->_rfFactItemHeroButtonCardSection hash];
  v91 = v90 ^ [(_SFPBRFFactItemImageRightCardSection *)self->_rfFactItemImageRightCardSection hash];
  v92 = v91 ^ [(_SFPBRFSummaryItemSwitchV2CardSection *)self->_rfSummaryItemSwitchV2CardSection hash];
  v93 = v92 ^ [(_SFPBRFTableHeaderCardSection *)self->_rfTableHeaderCardSection hash];
  v94 = v81 ^ v93 ^ [(_SFPBRFTableRowCardSection *)self->_rfTableRowCardSection hash];
  v95 = [(_SFPBRFSimpleItemVisualElementCardSection *)self->_rfSimpleItemVisualElementCardSection hash];
  v96 = v95 ^ [(_SFPBRFSummaryItemPlayerCardSection *)self->_rfSummaryItemPlayerCardSection hash];
  v97 = v96 ^ [(_SFPBRFSummaryItemImageRightCardSection *)self->_rfSummaryItemImageRightCardSection hash];
  v98 = v97 ^ [(_SFPBRFSummaryItemButtonCardSection *)self->_rfSummaryItemButtonCardSection hash];
  v99 = v98 ^ [(_SFPBRFSimpleItemReverseRichCardSection *)self->_rfSimpleItemReverseRichCardSection hash];
  v100 = v99 ^ [(_SFPBRFSimpleItemRichSearchResultCardSection *)self->_rfSimpleItemRichSearchResultCardSection hash];
  v101 = v100 ^ [(_SFPBRFPrimaryHeaderStackedImageCardSection *)self->_rfPrimaryHeaderStackedImageCardSection hash];
  v102 = v101 ^ [(_SFPBRFReferenceItemLogoCardSection *)self->_rfReferenceItemLogoCardSection hash];
  v103 = v102 ^ [(_SFPBRFReferenceItemButtonCardSection *)self->_rfReferenceItemButtonCardSection hash];
  v104 = v103 ^ [(_SFPBRFButtonCardSection *)self->_rfButtonCardSection hash];
  v105 = v104 ^ [(_SFPBRFBinaryButtonCardSection *)self->_rfBinaryButtonCardSection hash];
  v106 = v105 ^ [(_SFPBRFReferenceCenteredCardSection *)self->_rfReferenceCenteredCardSection hash];
  v107 = v106 ^ [(_SFPBRFSecondaryHeaderStandardCardSection *)self->_rfSecondaryHeaderStandardCardSection hash];
  v108 = v94 ^ v107 ^ [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)self->_rfSecondaryHeaderEmphasizedCardSection hash];
  v109 = [(_SFPBRFMapCardSection *)self->_rfMapCardSection hash];
  v110 = v109 ^ [(_SFPBRFReferenceStandardCardSection *)self->_rfReferenceStandardCardSection hash];
  v111 = v110 ^ [(_SFPBRFMultiButtonCardSection *)self->_rfMultiButtonCardSection hash];
  v112 = v111 ^ [(_SFPBRFDisambiguationTitleCardSection *)self->_rfDisambiguationTitleCardSection hash];
  return v108 ^ v112 ^ [(_SFPBRFSummaryItemExpandableCardSection *)self->_rfSummaryItemExpandableCardSection hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_557;
  }

  v5 = [(_SFPBCardSectionValue *)self appLinkCardSection];
  v6 = [v4 appLinkCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v7 = [(_SFPBCardSectionValue *)self appLinkCardSection];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCardSectionValue *)self appLinkCardSection];
    v10 = [v4 appLinkCardSection];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self descriptionCardSection];
  v6 = [v4 descriptionCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v12 = [(_SFPBCardSectionValue *)self descriptionCardSection];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCardSectionValue *)self descriptionCardSection];
    v15 = [v4 descriptionCardSection];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self keyValueDataCardSection];
  v6 = [v4 keyValueDataCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v17 = [(_SFPBCardSectionValue *)self keyValueDataCardSection];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBCardSectionValue *)self keyValueDataCardSection];
    v20 = [v4 keyValueDataCardSection];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self mapCardSection];
  v6 = [v4 mapCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v22 = [(_SFPBCardSectionValue *)self mapCardSection];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBCardSectionValue *)self mapCardSection];
    v25 = [v4 mapCardSection];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self mediaInfoCardSection];
  v6 = [v4 mediaInfoCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v27 = [(_SFPBCardSectionValue *)self mediaInfoCardSection];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBCardSectionValue *)self mediaInfoCardSection];
    v30 = [v4 mediaInfoCardSection];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self mediaPlayerCardSection];
  v6 = [v4 mediaPlayerCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v32 = [(_SFPBCardSectionValue *)self mediaPlayerCardSection];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBCardSectionValue *)self mediaPlayerCardSection];
    v35 = [v4 mediaPlayerCardSection];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self nowPlayingCardSection];
  v6 = [v4 nowPlayingCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v37 = [(_SFPBCardSectionValue *)self nowPlayingCardSection];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBCardSectionValue *)self nowPlayingCardSection];
    v40 = [v4 nowPlayingCardSection];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self richTitleCardSection];
  v6 = [v4 richTitleCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v42 = [(_SFPBCardSectionValue *)self richTitleCardSection];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBCardSectionValue *)self richTitleCardSection];
    v45 = [v4 richTitleCardSection];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rowCardSection];
  v6 = [v4 rowCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v47 = [(_SFPBCardSectionValue *)self rowCardSection];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBCardSectionValue *)self rowCardSection];
    v50 = [v4 rowCardSection];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self scoreboardCardSection];
  v6 = [v4 scoreboardCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v52 = [(_SFPBCardSectionValue *)self scoreboardCardSection];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBCardSectionValue *)self scoreboardCardSection];
    v55 = [v4 scoreboardCardSection];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self socialMediaPostCardSection];
  v6 = [v4 socialMediaPostCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v57 = [(_SFPBCardSectionValue *)self socialMediaPostCardSection];
  if (v57)
  {
    v58 = v57;
    v59 = [(_SFPBCardSectionValue *)self socialMediaPostCardSection];
    v60 = [v4 socialMediaPostCardSection];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self stockChartCardSection];
  v6 = [v4 stockChartCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v62 = [(_SFPBCardSectionValue *)self stockChartCardSection];
  if (v62)
  {
    v63 = v62;
    v64 = [(_SFPBCardSectionValue *)self stockChartCardSection];
    v65 = [v4 stockChartCardSection];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self tableHeaderRowCardSection];
  v6 = [v4 tableHeaderRowCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v67 = [(_SFPBCardSectionValue *)self tableHeaderRowCardSection];
  if (v67)
  {
    v68 = v67;
    v69 = [(_SFPBCardSectionValue *)self tableHeaderRowCardSection];
    v70 = [v4 tableHeaderRowCardSection];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self tableRowCardSection];
  v6 = [v4 tableRowCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v72 = [(_SFPBCardSectionValue *)self tableRowCardSection];
  if (v72)
  {
    v73 = v72;
    v74 = [(_SFPBCardSectionValue *)self tableRowCardSection];
    v75 = [v4 tableRowCardSection];
    v76 = [v74 isEqual:v75];

    if (!v76)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self textColumnsCardSection];
  v6 = [v4 textColumnsCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v77 = [(_SFPBCardSectionValue *)self textColumnsCardSection];
  if (v77)
  {
    v78 = v77;
    v79 = [(_SFPBCardSectionValue *)self textColumnsCardSection];
    v80 = [v4 textColumnsCardSection];
    v81 = [v79 isEqual:v80];

    if (!v81)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self titleCardSection];
  v6 = [v4 titleCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v82 = [(_SFPBCardSectionValue *)self titleCardSection];
  if (v82)
  {
    v83 = v82;
    v84 = [(_SFPBCardSectionValue *)self titleCardSection];
    v85 = [v4 titleCardSection];
    v86 = [v84 isEqual:v85];

    if (!v86)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self trackListCardSection];
  v6 = [v4 trackListCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v87 = [(_SFPBCardSectionValue *)self trackListCardSection];
  if (v87)
  {
    v88 = v87;
    v89 = [(_SFPBCardSectionValue *)self trackListCardSection];
    v90 = [v4 trackListCardSection];
    v91 = [v89 isEqual:v90];

    if (!v91)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self audioPlaybackCardSection];
  v6 = [v4 audioPlaybackCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v92 = [(_SFPBCardSectionValue *)self audioPlaybackCardSection];
  if (v92)
  {
    v93 = v92;
    v94 = [(_SFPBCardSectionValue *)self audioPlaybackCardSection];
    v95 = [v4 audioPlaybackCardSection];
    v96 = [v94 isEqual:v95];

    if (!v96)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self flightCardSection];
  v6 = [v4 flightCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v97 = [(_SFPBCardSectionValue *)self flightCardSection];
  if (v97)
  {
    v98 = v97;
    v99 = [(_SFPBCardSectionValue *)self flightCardSection];
    v100 = [v4 flightCardSection];
    v101 = [v99 isEqual:v100];

    if (!v101)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self activityIndicatorCardSection];
  v6 = [v4 activityIndicatorCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v102 = [(_SFPBCardSectionValue *)self activityIndicatorCardSection];
  if (v102)
  {
    v103 = v102;
    v104 = [(_SFPBCardSectionValue *)self activityIndicatorCardSection];
    v105 = [v4 activityIndicatorCardSection];
    v106 = [v104 isEqual:v105];

    if (!v106)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self webCardSection];
  v6 = [v4 webCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v107 = [(_SFPBCardSectionValue *)self webCardSection];
  if (v107)
  {
    v108 = v107;
    v109 = [(_SFPBCardSectionValue *)self webCardSection];
    v110 = [v4 webCardSection];
    v111 = [v109 isEqual:v110];

    if (!v111)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self messageCardSection];
  v6 = [v4 messageCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v112 = [(_SFPBCardSectionValue *)self messageCardSection];
  if (v112)
  {
    v113 = v112;
    v114 = [(_SFPBCardSectionValue *)self messageCardSection];
    v115 = [v4 messageCardSection];
    v116 = [v114 isEqual:v115];

    if (!v116)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self detailedRowCardSection];
  v6 = [v4 detailedRowCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v117 = [(_SFPBCardSectionValue *)self detailedRowCardSection];
  if (v117)
  {
    v118 = v117;
    v119 = [(_SFPBCardSectionValue *)self detailedRowCardSection];
    v120 = [v4 detailedRowCardSection];
    v121 = [v119 isEqual:v120];

    if (!v121)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self imagesCardSection];
  v6 = [v4 imagesCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v122 = [(_SFPBCardSectionValue *)self imagesCardSection];
  if (v122)
  {
    v123 = v122;
    v124 = [(_SFPBCardSectionValue *)self imagesCardSection];
    v125 = [v4 imagesCardSection];
    v126 = [v124 isEqual:v125];

    if (!v126)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self suggestionCardSection];
  v6 = [v4 suggestionCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v127 = [(_SFPBCardSectionValue *)self suggestionCardSection];
  if (v127)
  {
    v128 = v127;
    v129 = [(_SFPBCardSectionValue *)self suggestionCardSection];
    v130 = [v4 suggestionCardSection];
    v131 = [v129 isEqual:v130];

    if (!v131)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self selectableGridCardSection];
  v6 = [v4 selectableGridCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v132 = [(_SFPBCardSectionValue *)self selectableGridCardSection];
  if (v132)
  {
    v133 = v132;
    v134 = [(_SFPBCardSectionValue *)self selectableGridCardSection];
    v135 = [v4 selectableGridCardSection];
    v136 = [v134 isEqual:v135];

    if (!v136)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self sectionHeaderCardSection];
  v6 = [v4 sectionHeaderCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v137 = [(_SFPBCardSectionValue *)self sectionHeaderCardSection];
  if (v137)
  {
    v138 = v137;
    v139 = [(_SFPBCardSectionValue *)self sectionHeaderCardSection];
    v140 = [v4 sectionHeaderCardSection];
    v141 = [v139 isEqual:v140];

    if (!v141)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self metaInfoCardSection];
  v6 = [v4 metaInfoCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v142 = [(_SFPBCardSectionValue *)self metaInfoCardSection];
  if (v142)
  {
    v143 = v142;
    v144 = [(_SFPBCardSectionValue *)self metaInfoCardSection];
    v145 = [v4 metaInfoCardSection];
    v146 = [v144 isEqual:v145];

    if (!v146)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self watchListCardSection];
  v6 = [v4 watchListCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v147 = [(_SFPBCardSectionValue *)self watchListCardSection];
  if (v147)
  {
    v148 = v147;
    v149 = [(_SFPBCardSectionValue *)self watchListCardSection];
    v150 = [v4 watchListCardSection];
    v151 = [v149 isEqual:v150];

    if (!v151)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self mapsDetailedRowCardSection];
  v6 = [v4 mapsDetailedRowCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v152 = [(_SFPBCardSectionValue *)self mapsDetailedRowCardSection];
  if (v152)
  {
    v153 = v152;
    v154 = [(_SFPBCardSectionValue *)self mapsDetailedRowCardSection];
    v155 = [v4 mapsDetailedRowCardSection];
    v156 = [v154 isEqual:v155];

    if (!v156)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self buttonCardSection];
  v6 = [v4 buttonCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v157 = [(_SFPBCardSectionValue *)self buttonCardSection];
  if (v157)
  {
    v158 = v157;
    v159 = [(_SFPBCardSectionValue *)self buttonCardSection];
    v160 = [v4 buttonCardSection];
    v161 = [v159 isEqual:v160];

    if (!v161)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self horizontalButtonCardSection];
  v6 = [v4 horizontalButtonCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v162 = [(_SFPBCardSectionValue *)self horizontalButtonCardSection];
  if (v162)
  {
    v163 = v162;
    v164 = [(_SFPBCardSectionValue *)self horizontalButtonCardSection];
    v165 = [v4 horizontalButtonCardSection];
    v166 = [v164 isEqual:v165];

    if (!v166)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self verticalLayoutCardSection];
  v6 = [v4 verticalLayoutCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v167 = [(_SFPBCardSectionValue *)self verticalLayoutCardSection];
  if (v167)
  {
    v168 = v167;
    v169 = [(_SFPBCardSectionValue *)self verticalLayoutCardSection];
    v170 = [v4 verticalLayoutCardSection];
    v171 = [v169 isEqual:v170];

    if (!v171)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self productCardSection];
  v6 = [v4 productCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v172 = [(_SFPBCardSectionValue *)self productCardSection];
  if (v172)
  {
    v173 = v172;
    v174 = [(_SFPBCardSectionValue *)self productCardSection];
    v175 = [v4 productCardSection];
    v176 = [v174 isEqual:v175];

    if (!v176)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self horizontalScrollCardSection];
  v6 = [v4 horizontalScrollCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v177 = [(_SFPBCardSectionValue *)self horizontalScrollCardSection];
  if (v177)
  {
    v178 = v177;
    v179 = [(_SFPBCardSectionValue *)self horizontalScrollCardSection];
    v180 = [v4 horizontalScrollCardSection];
    v181 = [v179 isEqual:v180];

    if (!v181)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self mediaRemoteControlCardSection];
  v6 = [v4 mediaRemoteControlCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v182 = [(_SFPBCardSectionValue *)self mediaRemoteControlCardSection];
  if (v182)
  {
    v183 = v182;
    v184 = [(_SFPBCardSectionValue *)self mediaRemoteControlCardSection];
    v185 = [v4 mediaRemoteControlCardSection];
    v186 = [v184 isEqual:v185];

    if (!v186)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self mapPlaceCardSection];
  v6 = [v4 mapPlaceCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v187 = [(_SFPBCardSectionValue *)self mapPlaceCardSection];
  if (v187)
  {
    v188 = v187;
    v189 = [(_SFPBCardSectionValue *)self mapPlaceCardSection];
    v190 = [v4 mapPlaceCardSection];
    v191 = [v189 isEqual:v190];

    if (!v191)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self compactRowCardSection];
  v6 = [v4 compactRowCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v192 = [(_SFPBCardSectionValue *)self compactRowCardSection];
  if (v192)
  {
    v193 = v192;
    v194 = [(_SFPBCardSectionValue *)self compactRowCardSection];
    v195 = [v4 compactRowCardSection];
    v196 = [v194 isEqual:v195];

    if (!v196)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self worldMapCardSection];
  v6 = [v4 worldMapCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v197 = [(_SFPBCardSectionValue *)self worldMapCardSection];
  if (v197)
  {
    v198 = v197;
    v199 = [(_SFPBCardSectionValue *)self worldMapCardSection];
    v200 = [v4 worldMapCardSection];
    v201 = [v199 isEqual:v200];

    if (!v201)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self attributionFooterCardSection];
  v6 = [v4 attributionFooterCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v202 = [(_SFPBCardSectionValue *)self attributionFooterCardSection];
  if (v202)
  {
    v203 = v202;
    v204 = [(_SFPBCardSectionValue *)self attributionFooterCardSection];
    v205 = [v4 attributionFooterCardSection];
    v206 = [v204 isEqual:v205];

    if (!v206)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self gridCardSection];
  v6 = [v4 gridCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v207 = [(_SFPBCardSectionValue *)self gridCardSection];
  if (v207)
  {
    v208 = v207;
    v209 = [(_SFPBCardSectionValue *)self gridCardSection];
    v210 = [v4 gridCardSection];
    v211 = [v209 isEqual:v210];

    if (!v211)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self personHeaderCardSection];
  v6 = [v4 personHeaderCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v212 = [(_SFPBCardSectionValue *)self personHeaderCardSection];
  if (v212)
  {
    v213 = v212;
    v214 = [(_SFPBCardSectionValue *)self personHeaderCardSection];
    v215 = [v4 personHeaderCardSection];
    v216 = [v214 isEqual:v215];

    if (!v216)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self colorBarCardSection];
  v6 = [v4 colorBarCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v217 = [(_SFPBCardSectionValue *)self colorBarCardSection];
  if (v217)
  {
    v218 = v217;
    v219 = [(_SFPBCardSectionValue *)self colorBarCardSection];
    v220 = [v4 colorBarCardSection];
    v221 = [v219 isEqual:v220];

    if (!v221)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self splitCardSection];
  v6 = [v4 splitCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v222 = [(_SFPBCardSectionValue *)self splitCardSection];
  if (v222)
  {
    v223 = v222;
    v224 = [(_SFPBCardSectionValue *)self splitCardSection];
    v225 = [v4 splitCardSection];
    v226 = [v224 isEqual:v225];

    if (!v226)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self linkPresentationCardSection];
  v6 = [v4 linkPresentationCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v227 = [(_SFPBCardSectionValue *)self linkPresentationCardSection];
  if (v227)
  {
    v228 = v227;
    v229 = [(_SFPBCardSectionValue *)self linkPresentationCardSection];
    v230 = [v4 linkPresentationCardSection];
    v231 = [v229 isEqual:v230];

    if (!v231)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self findMyCardSection];
  v6 = [v4 findMyCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v232 = [(_SFPBCardSectionValue *)self findMyCardSection];
  if (v232)
  {
    v233 = v232;
    v234 = [(_SFPBCardSectionValue *)self findMyCardSection];
    v235 = [v4 findMyCardSection];
    v236 = [v234 isEqual:v235];

    if (!v236)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self heroCardSection];
  v6 = [v4 heroCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v237 = [(_SFPBCardSectionValue *)self heroCardSection];
  if (v237)
  {
    v238 = v237;
    v239 = [(_SFPBCardSectionValue *)self heroCardSection];
    v240 = [v4 heroCardSection];
    v241 = [v239 isEqual:v240];

    if (!v241)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self newsCardSection];
  v6 = [v4 newsCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v242 = [(_SFPBCardSectionValue *)self newsCardSection];
  if (v242)
  {
    v243 = v242;
    v244 = [(_SFPBCardSectionValue *)self newsCardSection];
    v245 = [v4 newsCardSection];
    v246 = [v244 isEqual:v245];

    if (!v246)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self miniCardSection];
  v6 = [v4 miniCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v247 = [(_SFPBCardSectionValue *)self miniCardSection];
  if (v247)
  {
    v248 = v247;
    v249 = [(_SFPBCardSectionValue *)self miniCardSection];
    v250 = [v4 miniCardSection];
    v251 = [v249 isEqual:v250];

    if (!v251)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self infoCardSection];
  v6 = [v4 infoCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v252 = [(_SFPBCardSectionValue *)self infoCardSection];
  if (v252)
  {
    v253 = v252;
    v254 = [(_SFPBCardSectionValue *)self infoCardSection];
    v255 = [v4 infoCardSection];
    v256 = [v254 isEqual:v255];

    if (!v256)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self collectionCardSection];
  v6 = [v4 collectionCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v257 = [(_SFPBCardSectionValue *)self collectionCardSection];
  if (v257)
  {
    v258 = v257;
    v259 = [(_SFPBCardSectionValue *)self collectionCardSection];
    v260 = [v4 collectionCardSection];
    v261 = [v259 isEqual:v260];

    if (!v261)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self combinedCardSection];
  v6 = [v4 combinedCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v262 = [(_SFPBCardSectionValue *)self combinedCardSection];
  if (v262)
  {
    v263 = v262;
    v264 = [(_SFPBCardSectionValue *)self combinedCardSection];
    v265 = [v4 combinedCardSection];
    v266 = [v264 isEqual:v265];

    if (!v266)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self responseWrapperCardSection];
  v6 = [v4 responseWrapperCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v267 = [(_SFPBCardSectionValue *)self responseWrapperCardSection];
  if (v267)
  {
    v268 = v267;
    v269 = [(_SFPBCardSectionValue *)self responseWrapperCardSection];
    v270 = [v4 responseWrapperCardSection];
    v271 = [v269 isEqual:v270];

    if (!v271)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self listenToCardSection];
  v6 = [v4 listenToCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v272 = [(_SFPBCardSectionValue *)self listenToCardSection];
  if (v272)
  {
    v273 = v272;
    v274 = [(_SFPBCardSectionValue *)self listenToCardSection];
    v275 = [v4 listenToCardSection];
    v276 = [v274 isEqual:v275];

    if (!v276)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self watchNowCardSection];
  v6 = [v4 watchNowCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v277 = [(_SFPBCardSectionValue *)self watchNowCardSection];
  if (v277)
  {
    v278 = v277;
    v279 = [(_SFPBCardSectionValue *)self watchNowCardSection];
    v280 = [v4 watchNowCardSection];
    v281 = [v279 isEqual:v280];

    if (!v281)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self strokeAnimationCardSection];
  v6 = [v4 strokeAnimationCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v282 = [(_SFPBCardSectionValue *)self strokeAnimationCardSection];
  if (v282)
  {
    v283 = v282;
    v284 = [(_SFPBCardSectionValue *)self strokeAnimationCardSection];
    v285 = [v4 strokeAnimationCardSection];
    v286 = [v284 isEqual:v285];

    if (!v286)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self buttonListCardSection];
  v6 = [v4 buttonListCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v287 = [(_SFPBCardSectionValue *)self buttonListCardSection];
  if (v287)
  {
    v288 = v287;
    v289 = [(_SFPBCardSectionValue *)self buttonListCardSection];
    v290 = [v4 buttonListCardSection];
    v291 = [v289 isEqual:v290];

    if (!v291)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self commandRowCardSection];
  v6 = [v4 commandRowCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v292 = [(_SFPBCardSectionValue *)self commandRowCardSection];
  if (v292)
  {
    v293 = v292;
    v294 = [(_SFPBCardSectionValue *)self commandRowCardSection];
    v295 = [v4 commandRowCardSection];
    v296 = [v294 isEqual:v295];

    if (!v296)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self leadingTrailingCardSection];
  v6 = [v4 leadingTrailingCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v297 = [(_SFPBCardSectionValue *)self leadingTrailingCardSection];
  if (v297)
  {
    v298 = v297;
    v299 = [(_SFPBCardSectionValue *)self leadingTrailingCardSection];
    v300 = [v4 leadingTrailingCardSection];
    v301 = [v299 isEqual:v300];

    if (!v301)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self heroTitleCardSection];
  v6 = [v4 heroTitleCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v302 = [(_SFPBCardSectionValue *)self heroTitleCardSection];
  if (v302)
  {
    v303 = v302;
    v304 = [(_SFPBCardSectionValue *)self heroTitleCardSection];
    v305 = [v4 heroTitleCardSection];
    v306 = [v304 isEqual:v305];

    if (!v306)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self archiveViewCardSection];
  v6 = [v4 archiveViewCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v307 = [(_SFPBCardSectionValue *)self archiveViewCardSection];
  if (v307)
  {
    v308 = v307;
    v309 = [(_SFPBCardSectionValue *)self archiveViewCardSection];
    v310 = [v4 archiveViewCardSection];
    v311 = [v309 isEqual:v310];

    if (!v311)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self appIconCardSection];
  v6 = [v4 appIconCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v312 = [(_SFPBCardSectionValue *)self appIconCardSection];
  if (v312)
  {
    v313 = v312;
    v314 = [(_SFPBCardSectionValue *)self appIconCardSection];
    v315 = [v4 appIconCardSection];
    v316 = [v314 isEqual:v315];

    if (!v316)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self largeTitleDetailedRowCardSection];
  v6 = [v4 largeTitleDetailedRowCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v317 = [(_SFPBCardSectionValue *)self largeTitleDetailedRowCardSection];
  if (v317)
  {
    v318 = v317;
    v319 = [(_SFPBCardSectionValue *)self largeTitleDetailedRowCardSection];
    v320 = [v4 largeTitleDetailedRowCardSection];
    v321 = [v319 isEqual:v320];

    if (!v321)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self safariTableOfContentsCardSection];
  v6 = [v4 safariTableOfContentsCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v322 = [(_SFPBCardSectionValue *)self safariTableOfContentsCardSection];
  if (v322)
  {
    v323 = v322;
    v324 = [(_SFPBCardSectionValue *)self safariTableOfContentsCardSection];
    v325 = [v4 safariTableOfContentsCardSection];
    v326 = [v324 isEqual:v325];

    if (!v326)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemShortNumberCardSection];
  v6 = [v4 rfSummaryItemShortNumberCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v327 = [(_SFPBCardSectionValue *)self rfSummaryItemShortNumberCardSection];
  if (v327)
  {
    v328 = v327;
    v329 = [(_SFPBCardSectionValue *)self rfSummaryItemShortNumberCardSection];
    v330 = [v4 rfSummaryItemShortNumberCardSection];
    v331 = [v329 isEqual:v330];

    if (!v331)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemTextCardSection];
  v6 = [v4 rfSummaryItemTextCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v332 = [(_SFPBCardSectionValue *)self rfSummaryItemTextCardSection];
  if (v332)
  {
    v333 = v332;
    v334 = [(_SFPBCardSectionValue *)self rfSummaryItemTextCardSection];
    v335 = [v4 rfSummaryItemTextCardSection];
    v336 = [v334 isEqual:v335];

    if (!v336)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemStandardCardSection];
  v6 = [v4 rfSummaryItemStandardCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v337 = [(_SFPBCardSectionValue *)self rfSummaryItemStandardCardSection];
  if (v337)
  {
    v338 = v337;
    v339 = [(_SFPBCardSectionValue *)self rfSummaryItemStandardCardSection];
    v340 = [v4 rfSummaryItemStandardCardSection];
    v341 = [v339 isEqual:v340];

    if (!v341)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfFactItemShortNumberCardSection];
  v6 = [v4 rfFactItemShortNumberCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v342 = [(_SFPBCardSectionValue *)self rfFactItemShortNumberCardSection];
  if (v342)
  {
    v343 = v342;
    v344 = [(_SFPBCardSectionValue *)self rfFactItemShortNumberCardSection];
    v345 = [v4 rfFactItemShortNumberCardSection];
    v346 = [v344 isEqual:v345];

    if (!v346)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfFactItemStandardCardSection];
  v6 = [v4 rfFactItemStandardCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v347 = [(_SFPBCardSectionValue *)self rfFactItemStandardCardSection];
  if (v347)
  {
    v348 = v347;
    v349 = [(_SFPBCardSectionValue *)self rfFactItemStandardCardSection];
    v350 = [v4 rfFactItemStandardCardSection];
    v351 = [v349 isEqual:v350];

    if (!v351)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfLongItemStandardCardSection];
  v6 = [v4 rfLongItemStandardCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v352 = [(_SFPBCardSectionValue *)self rfLongItemStandardCardSection];
  if (v352)
  {
    v353 = v352;
    v354 = [(_SFPBCardSectionValue *)self rfLongItemStandardCardSection];
    v355 = [v4 rfLongItemStandardCardSection];
    v356 = [v354 isEqual:v355];

    if (!v356)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderRichCardSection];
  v6 = [v4 rfPrimaryHeaderRichCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v357 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderRichCardSection];
  if (v357)
  {
    v358 = v357;
    v359 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderRichCardSection];
    v360 = [v4 rfPrimaryHeaderRichCardSection];
    v361 = [v359 isEqual:v360];

    if (!v361)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
  v6 = [v4 rfPrimaryHeaderStandardCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v362 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
  if (v362)
  {
    v363 = v362;
    v364 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
    v365 = [v4 rfPrimaryHeaderStandardCardSection];
    v366 = [v364 isEqual:v365];

    if (!v366)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfReferenceFootnoteCardSection];
  v6 = [v4 rfReferenceFootnoteCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v367 = [(_SFPBCardSectionValue *)self rfReferenceFootnoteCardSection];
  if (v367)
  {
    v368 = v367;
    v369 = [(_SFPBCardSectionValue *)self rfReferenceFootnoteCardSection];
    v370 = [v4 rfReferenceFootnoteCardSection];
    v371 = [v369 isEqual:v370];

    if (!v371)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfReferenceRichCardSection];
  v6 = [v4 rfReferenceRichCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v372 = [(_SFPBCardSectionValue *)self rfReferenceRichCardSection];
  if (v372)
  {
    v373 = v372;
    v374 = [(_SFPBCardSectionValue *)self rfReferenceRichCardSection];
    v375 = [v4 rfReferenceRichCardSection];
    v376 = [v374 isEqual:v375];

    if (!v376)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSimpleItemRichCardSection];
  v6 = [v4 rfSimpleItemRichCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v377 = [(_SFPBCardSectionValue *)self rfSimpleItemRichCardSection];
  if (v377)
  {
    v378 = v377;
    v379 = [(_SFPBCardSectionValue *)self rfSimpleItemRichCardSection];
    v380 = [v4 rfSimpleItemRichCardSection];
    v381 = [v379 isEqual:v380];

    if (!v381)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSimpleItemStandardCardSection];
  v6 = [v4 rfSimpleItemStandardCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v382 = [(_SFPBCardSectionValue *)self rfSimpleItemStandardCardSection];
  if (v382)
  {
    v383 = v382;
    v384 = [(_SFPBCardSectionValue *)self rfSimpleItemStandardCardSection];
    v385 = [v4 rfSimpleItemStandardCardSection];
    v386 = [v384 isEqual:v385];

    if (!v386)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
  v6 = [v4 rfSummaryItemAlignedTextCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v387 = [(_SFPBCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
  if (v387)
  {
    v388 = v387;
    v389 = [(_SFPBCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
    v390 = [v4 rfSummaryItemAlignedTextCardSection];
    v391 = [v389 isEqual:v390];

    if (!v391)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfExpandableStandardCardSection];
  v6 = [v4 rfExpandableStandardCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v392 = [(_SFPBCardSectionValue *)self rfExpandableStandardCardSection];
  if (v392)
  {
    v393 = v392;
    v394 = [(_SFPBCardSectionValue *)self rfExpandableStandardCardSection];
    v395 = [v4 rfExpandableStandardCardSection];
    v396 = [v394 isEqual:v395];

    if (!v396)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfFactItemButtonCardSection];
  v6 = [v4 rfFactItemButtonCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v397 = [(_SFPBCardSectionValue *)self rfFactItemButtonCardSection];
  if (v397)
  {
    v398 = v397;
    v399 = [(_SFPBCardSectionValue *)self rfFactItemButtonCardSection];
    v400 = [v4 rfFactItemButtonCardSection];
    v401 = [v399 isEqual:v400];

    if (!v401)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfFactItemHeroNumberCardSection];
  v6 = [v4 rfFactItemHeroNumberCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v402 = [(_SFPBCardSectionValue *)self rfFactItemHeroNumberCardSection];
  if (v402)
  {
    v403 = v402;
    v404 = [(_SFPBCardSectionValue *)self rfFactItemHeroNumberCardSection];
    v405 = [v4 rfFactItemHeroNumberCardSection];
    v406 = [v404 isEqual:v405];

    if (!v406)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
  v6 = [v4 rfPrimaryHeaderMarqueeCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v407 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
  if (v407)
  {
    v408 = v407;
    v409 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
    v410 = [v4 rfPrimaryHeaderMarqueeCardSection];
    v411 = [v409 isEqual:v410];

    if (!v411)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
  v6 = [v4 rfSummaryItemDetailedTextCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v412 = [(_SFPBCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
  if (v412)
  {
    v413 = v412;
    v414 = [(_SFPBCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
    v415 = [v4 rfSummaryItemDetailedTextCardSection];
    v416 = [v414 isEqual:v415];

    if (!v416)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSimpleItemPlayerCardSection];
  v6 = [v4 rfSimpleItemPlayerCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v417 = [(_SFPBCardSectionValue *)self rfSimpleItemPlayerCardSection];
  if (v417)
  {
    v418 = v417;
    v419 = [(_SFPBCardSectionValue *)self rfSimpleItemPlayerCardSection];
    v420 = [v4 rfSimpleItemPlayerCardSection];
    v421 = [v419 isEqual:v420];

    if (!v421)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemPairCardSection];
  v6 = [v4 rfSummaryItemPairCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v422 = [(_SFPBCardSectionValue *)self rfSummaryItemPairCardSection];
  if (v422)
  {
    v423 = v422;
    v424 = [(_SFPBCardSectionValue *)self rfSummaryItemPairCardSection];
    v425 = [v4 rfSummaryItemPairCardSection];
    v426 = [v424 isEqual:v425];

    if (!v426)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemPairNumberCardSection];
  v6 = [v4 rfSummaryItemPairNumberCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v427 = [(_SFPBCardSectionValue *)self rfSummaryItemPairNumberCardSection];
  if (v427)
  {
    v428 = v427;
    v429 = [(_SFPBCardSectionValue *)self rfSummaryItemPairNumberCardSection];
    v430 = [v4 rfSummaryItemPairNumberCardSection];
    v431 = [v429 isEqual:v430];

    if (!v431)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
  v6 = [v4 rfFactItemShortHeroNumberCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v432 = [(_SFPBCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
  if (v432)
  {
    v433 = v432;
    v434 = [(_SFPBCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
    v435 = [v4 rfFactItemShortHeroNumberCardSection];
    v436 = [v434 isEqual:v435];

    if (!v436)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfFactItemDetailedNumberCardSection];
  v6 = [v4 rfFactItemDetailedNumberCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v437 = [(_SFPBCardSectionValue *)self rfFactItemDetailedNumberCardSection];
  if (v437)
  {
    v438 = v437;
    v439 = [(_SFPBCardSectionValue *)self rfFactItemDetailedNumberCardSection];
    v440 = [v4 rfFactItemDetailedNumberCardSection];
    v441 = [v439 isEqual:v440];

    if (!v441)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfFactItemHeroButtonCardSection];
  v6 = [v4 rfFactItemHeroButtonCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v442 = [(_SFPBCardSectionValue *)self rfFactItemHeroButtonCardSection];
  if (v442)
  {
    v443 = v442;
    v444 = [(_SFPBCardSectionValue *)self rfFactItemHeroButtonCardSection];
    v445 = [v4 rfFactItemHeroButtonCardSection];
    v446 = [v444 isEqual:v445];

    if (!v446)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfFactItemImageRightCardSection];
  v6 = [v4 rfFactItemImageRightCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v447 = [(_SFPBCardSectionValue *)self rfFactItemImageRightCardSection];
  if (v447)
  {
    v448 = v447;
    v449 = [(_SFPBCardSectionValue *)self rfFactItemImageRightCardSection];
    v450 = [v4 rfFactItemImageRightCardSection];
    v451 = [v449 isEqual:v450];

    if (!v451)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
  v6 = [v4 rfSummaryItemSwitchV2CardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v452 = [(_SFPBCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
  if (v452)
  {
    v453 = v452;
    v454 = [(_SFPBCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
    v455 = [v4 rfSummaryItemSwitchV2CardSection];
    v456 = [v454 isEqual:v455];

    if (!v456)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfTableHeaderCardSection];
  v6 = [v4 rfTableHeaderCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v457 = [(_SFPBCardSectionValue *)self rfTableHeaderCardSection];
  if (v457)
  {
    v458 = v457;
    v459 = [(_SFPBCardSectionValue *)self rfTableHeaderCardSection];
    v460 = [v4 rfTableHeaderCardSection];
    v461 = [v459 isEqual:v460];

    if (!v461)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfTableRowCardSection];
  v6 = [v4 rfTableRowCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v462 = [(_SFPBCardSectionValue *)self rfTableRowCardSection];
  if (v462)
  {
    v463 = v462;
    v464 = [(_SFPBCardSectionValue *)self rfTableRowCardSection];
    v465 = [v4 rfTableRowCardSection];
    v466 = [v464 isEqual:v465];

    if (!v466)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSimpleItemVisualElementCardSection];
  v6 = [v4 rfSimpleItemVisualElementCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v467 = [(_SFPBCardSectionValue *)self rfSimpleItemVisualElementCardSection];
  if (v467)
  {
    v468 = v467;
    v469 = [(_SFPBCardSectionValue *)self rfSimpleItemVisualElementCardSection];
    v470 = [v4 rfSimpleItemVisualElementCardSection];
    v471 = [v469 isEqual:v470];

    if (!v471)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemPlayerCardSection];
  v6 = [v4 rfSummaryItemPlayerCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v472 = [(_SFPBCardSectionValue *)self rfSummaryItemPlayerCardSection];
  if (v472)
  {
    v473 = v472;
    v474 = [(_SFPBCardSectionValue *)self rfSummaryItemPlayerCardSection];
    v475 = [v4 rfSummaryItemPlayerCardSection];
    v476 = [v474 isEqual:v475];

    if (!v476)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemImageRightCardSection];
  v6 = [v4 rfSummaryItemImageRightCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v477 = [(_SFPBCardSectionValue *)self rfSummaryItemImageRightCardSection];
  if (v477)
  {
    v478 = v477;
    v479 = [(_SFPBCardSectionValue *)self rfSummaryItemImageRightCardSection];
    v480 = [v4 rfSummaryItemImageRightCardSection];
    v481 = [v479 isEqual:v480];

    if (!v481)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemButtonCardSection];
  v6 = [v4 rfSummaryItemButtonCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v482 = [(_SFPBCardSectionValue *)self rfSummaryItemButtonCardSection];
  if (v482)
  {
    v483 = v482;
    v484 = [(_SFPBCardSectionValue *)self rfSummaryItemButtonCardSection];
    v485 = [v4 rfSummaryItemButtonCardSection];
    v486 = [v484 isEqual:v485];

    if (!v486)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSimpleItemReverseRichCardSection];
  v6 = [v4 rfSimpleItemReverseRichCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v487 = [(_SFPBCardSectionValue *)self rfSimpleItemReverseRichCardSection];
  if (v487)
  {
    v488 = v487;
    v489 = [(_SFPBCardSectionValue *)self rfSimpleItemReverseRichCardSection];
    v490 = [v4 rfSimpleItemReverseRichCardSection];
    v491 = [v489 isEqual:v490];

    if (!v491)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
  v6 = [v4 rfSimpleItemRichSearchResultCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v492 = [(_SFPBCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
  if (v492)
  {
    v493 = v492;
    v494 = [(_SFPBCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
    v495 = [v4 rfSimpleItemRichSearchResultCardSection];
    v496 = [v494 isEqual:v495];

    if (!v496)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
  v6 = [v4 rfPrimaryHeaderStackedImageCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v497 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
  if (v497)
  {
    v498 = v497;
    v499 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
    v500 = [v4 rfPrimaryHeaderStackedImageCardSection];
    v501 = [v499 isEqual:v500];

    if (!v501)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfReferenceItemLogoCardSection];
  v6 = [v4 rfReferenceItemLogoCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v502 = [(_SFPBCardSectionValue *)self rfReferenceItemLogoCardSection];
  if (v502)
  {
    v503 = v502;
    v504 = [(_SFPBCardSectionValue *)self rfReferenceItemLogoCardSection];
    v505 = [v4 rfReferenceItemLogoCardSection];
    v506 = [v504 isEqual:v505];

    if (!v506)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfReferenceItemButtonCardSection];
  v6 = [v4 rfReferenceItemButtonCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v507 = [(_SFPBCardSectionValue *)self rfReferenceItemButtonCardSection];
  if (v507)
  {
    v508 = v507;
    v509 = [(_SFPBCardSectionValue *)self rfReferenceItemButtonCardSection];
    v510 = [v4 rfReferenceItemButtonCardSection];
    v511 = [v509 isEqual:v510];

    if (!v511)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfButtonCardSection];
  v6 = [v4 rfButtonCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v512 = [(_SFPBCardSectionValue *)self rfButtonCardSection];
  if (v512)
  {
    v513 = v512;
    v514 = [(_SFPBCardSectionValue *)self rfButtonCardSection];
    v515 = [v4 rfButtonCardSection];
    v516 = [v514 isEqual:v515];

    if (!v516)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfBinaryButtonCardSection];
  v6 = [v4 rfBinaryButtonCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v517 = [(_SFPBCardSectionValue *)self rfBinaryButtonCardSection];
  if (v517)
  {
    v518 = v517;
    v519 = [(_SFPBCardSectionValue *)self rfBinaryButtonCardSection];
    v520 = [v4 rfBinaryButtonCardSection];
    v521 = [v519 isEqual:v520];

    if (!v521)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfReferenceCenteredCardSection];
  v6 = [v4 rfReferenceCenteredCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v522 = [(_SFPBCardSectionValue *)self rfReferenceCenteredCardSection];
  if (v522)
  {
    v523 = v522;
    v524 = [(_SFPBCardSectionValue *)self rfReferenceCenteredCardSection];
    v525 = [v4 rfReferenceCenteredCardSection];
    v526 = [v524 isEqual:v525];

    if (!v526)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
  v6 = [v4 rfSecondaryHeaderStandardCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v527 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
  if (v527)
  {
    v528 = v527;
    v529 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
    v530 = [v4 rfSecondaryHeaderStandardCardSection];
    v531 = [v529 isEqual:v530];

    if (!v531)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
  v6 = [v4 rfSecondaryHeaderEmphasizedCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v532 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
  if (v532)
  {
    v533 = v532;
    v534 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
    v535 = [v4 rfSecondaryHeaderEmphasizedCardSection];
    v536 = [v534 isEqual:v535];

    if (!v536)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfMapCardSection];
  v6 = [v4 rfMapCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v537 = [(_SFPBCardSectionValue *)self rfMapCardSection];
  if (v537)
  {
    v538 = v537;
    v539 = [(_SFPBCardSectionValue *)self rfMapCardSection];
    v540 = [v4 rfMapCardSection];
    v541 = [v539 isEqual:v540];

    if (!v541)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfReferenceStandardCardSection];
  v6 = [v4 rfReferenceStandardCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v542 = [(_SFPBCardSectionValue *)self rfReferenceStandardCardSection];
  if (v542)
  {
    v543 = v542;
    v544 = [(_SFPBCardSectionValue *)self rfReferenceStandardCardSection];
    v545 = [v4 rfReferenceStandardCardSection];
    v546 = [v544 isEqual:v545];

    if (!v546)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfMultiButtonCardSection];
  v6 = [v4 rfMultiButtonCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v547 = [(_SFPBCardSectionValue *)self rfMultiButtonCardSection];
  if (v547)
  {
    v548 = v547;
    v549 = [(_SFPBCardSectionValue *)self rfMultiButtonCardSection];
    v550 = [v4 rfMultiButtonCardSection];
    v551 = [v549 isEqual:v550];

    if (!v551)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfDisambiguationTitleCardSection];
  v6 = [v4 rfDisambiguationTitleCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_556;
  }

  v552 = [(_SFPBCardSectionValue *)self rfDisambiguationTitleCardSection];
  if (v552)
  {
    v553 = v552;
    v554 = [(_SFPBCardSectionValue *)self rfDisambiguationTitleCardSection];
    v555 = [v4 rfDisambiguationTitleCardSection];
    v556 = [v554 isEqual:v555];

    if (!v556)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCardSectionValue *)self rfSummaryItemExpandableCardSection];
  v6 = [v4 rfSummaryItemExpandableCardSection];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_556:

    goto LABEL_557;
  }

  v557 = [(_SFPBCardSectionValue *)self rfSummaryItemExpandableCardSection];
  if (!v557)
  {

LABEL_560:
    v562 = 1;
    goto LABEL_558;
  }

  v558 = v557;
  v559 = [(_SFPBCardSectionValue *)self rfSummaryItemExpandableCardSection];
  v560 = [v4 rfSummaryItemExpandableCardSection];
  v561 = [v559 isEqual:v560];

  if (v561)
  {
    goto LABEL_560;
  }

LABEL_557:
  v562 = 0;
LABEL_558:

  return v562;
}

- (void)writeTo:(id)a3
{
  v115 = a3;
  v4 = [(_SFPBCardSectionValue *)self appLinkCardSection];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBCardSectionValue *)self descriptionCardSection];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBCardSectionValue *)self keyValueDataCardSection];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBCardSectionValue *)self mapCardSection];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBCardSectionValue *)self mediaInfoCardSection];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBCardSectionValue *)self mediaPlayerCardSection];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBCardSectionValue *)self nowPlayingCardSection];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBCardSectionValue *)self richTitleCardSection];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_SFPBCardSectionValue *)self rowCardSection];
  if (v12)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_SFPBCardSectionValue *)self scoreboardCardSection];
  if (v13)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_SFPBCardSectionValue *)self socialMediaPostCardSection];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBCardSectionValue *)self stockChartCardSection];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBCardSectionValue *)self tableHeaderRowCardSection];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBCardSectionValue *)self tableRowCardSection];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBCardSectionValue *)self textColumnsCardSection];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBCardSectionValue *)self titleCardSection];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_SFPBCardSectionValue *)self trackListCardSection];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBCardSectionValue *)self audioPlaybackCardSection];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBCardSectionValue *)self flightCardSection];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBCardSectionValue *)self activityIndicatorCardSection];
  if (v23)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_SFPBCardSectionValue *)self webCardSection];
  if (v24)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = [(_SFPBCardSectionValue *)self messageCardSection];
  if (v25)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = [(_SFPBCardSectionValue *)self detailedRowCardSection];
  if (v26)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = [(_SFPBCardSectionValue *)self imagesCardSection];
  if (v27)
  {
    PBDataWriterWriteSubmessage();
  }

  v28 = [(_SFPBCardSectionValue *)self suggestionCardSection];
  if (v28)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = [(_SFPBCardSectionValue *)self selectableGridCardSection];
  if (v29)
  {
    PBDataWriterWriteSubmessage();
  }

  v30 = [(_SFPBCardSectionValue *)self sectionHeaderCardSection];
  if (v30)
  {
    PBDataWriterWriteSubmessage();
  }

  v31 = [(_SFPBCardSectionValue *)self metaInfoCardSection];
  if (v31)
  {
    PBDataWriterWriteSubmessage();
  }

  v32 = [(_SFPBCardSectionValue *)self watchListCardSection];
  if (v32)
  {
    PBDataWriterWriteSubmessage();
  }

  v33 = [(_SFPBCardSectionValue *)self mapsDetailedRowCardSection];
  if (v33)
  {
    PBDataWriterWriteSubmessage();
  }

  v34 = [(_SFPBCardSectionValue *)self buttonCardSection];
  if (v34)
  {
    PBDataWriterWriteSubmessage();
  }

  v35 = [(_SFPBCardSectionValue *)self horizontalButtonCardSection];
  if (v35)
  {
    PBDataWriterWriteSubmessage();
  }

  v36 = [(_SFPBCardSectionValue *)self verticalLayoutCardSection];
  if (v36)
  {
    PBDataWriterWriteSubmessage();
  }

  v37 = [(_SFPBCardSectionValue *)self productCardSection];
  if (v37)
  {
    PBDataWriterWriteSubmessage();
  }

  v38 = [(_SFPBCardSectionValue *)self horizontalScrollCardSection];
  if (v38)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = [(_SFPBCardSectionValue *)self mediaRemoteControlCardSection];
  if (v39)
  {
    PBDataWriterWriteSubmessage();
  }

  v40 = [(_SFPBCardSectionValue *)self mapPlaceCardSection];
  if (v40)
  {
    PBDataWriterWriteSubmessage();
  }

  v41 = [(_SFPBCardSectionValue *)self compactRowCardSection];
  if (v41)
  {
    PBDataWriterWriteSubmessage();
  }

  v42 = [(_SFPBCardSectionValue *)self worldMapCardSection];
  if (v42)
  {
    PBDataWriterWriteSubmessage();
  }

  v43 = [(_SFPBCardSectionValue *)self attributionFooterCardSection];
  if (v43)
  {
    PBDataWriterWriteSubmessage();
  }

  v44 = [(_SFPBCardSectionValue *)self gridCardSection];
  if (v44)
  {
    PBDataWriterWriteSubmessage();
  }

  v45 = [(_SFPBCardSectionValue *)self personHeaderCardSection];
  if (v45)
  {
    PBDataWriterWriteSubmessage();
  }

  v46 = [(_SFPBCardSectionValue *)self colorBarCardSection];
  if (v46)
  {
    PBDataWriterWriteSubmessage();
  }

  v47 = [(_SFPBCardSectionValue *)self splitCardSection];
  if (v47)
  {
    PBDataWriterWriteSubmessage();
  }

  v48 = [(_SFPBCardSectionValue *)self linkPresentationCardSection];
  if (v48)
  {
    PBDataWriterWriteSubmessage();
  }

  v49 = [(_SFPBCardSectionValue *)self findMyCardSection];
  if (v49)
  {
    PBDataWriterWriteSubmessage();
  }

  v50 = [(_SFPBCardSectionValue *)self heroCardSection];
  if (v50)
  {
    PBDataWriterWriteSubmessage();
  }

  v51 = [(_SFPBCardSectionValue *)self newsCardSection];
  if (v51)
  {
    PBDataWriterWriteSubmessage();
  }

  v52 = [(_SFPBCardSectionValue *)self miniCardSection];
  if (v52)
  {
    PBDataWriterWriteSubmessage();
  }

  v53 = [(_SFPBCardSectionValue *)self infoCardSection];
  if (v53)
  {
    PBDataWriterWriteSubmessage();
  }

  v54 = [(_SFPBCardSectionValue *)self collectionCardSection];
  if (v54)
  {
    PBDataWriterWriteSubmessage();
  }

  v55 = [(_SFPBCardSectionValue *)self combinedCardSection];
  if (v55)
  {
    PBDataWriterWriteSubmessage();
  }

  v56 = [(_SFPBCardSectionValue *)self responseWrapperCardSection];
  if (v56)
  {
    PBDataWriterWriteSubmessage();
  }

  v57 = [(_SFPBCardSectionValue *)self listenToCardSection];
  if (v57)
  {
    PBDataWriterWriteSubmessage();
  }

  v58 = [(_SFPBCardSectionValue *)self watchNowCardSection];
  if (v58)
  {
    PBDataWriterWriteSubmessage();
  }

  v59 = [(_SFPBCardSectionValue *)self strokeAnimationCardSection];
  if (v59)
  {
    PBDataWriterWriteSubmessage();
  }

  v60 = [(_SFPBCardSectionValue *)self buttonListCardSection];
  if (v60)
  {
    PBDataWriterWriteSubmessage();
  }

  v61 = [(_SFPBCardSectionValue *)self commandRowCardSection];
  if (v61)
  {
    PBDataWriterWriteSubmessage();
  }

  v62 = [(_SFPBCardSectionValue *)self leadingTrailingCardSection];
  if (v62)
  {
    PBDataWriterWriteSubmessage();
  }

  v63 = [(_SFPBCardSectionValue *)self heroTitleCardSection];
  if (v63)
  {
    PBDataWriterWriteSubmessage();
  }

  v64 = [(_SFPBCardSectionValue *)self archiveViewCardSection];
  if (v64)
  {
    PBDataWriterWriteSubmessage();
  }

  v65 = [(_SFPBCardSectionValue *)self appIconCardSection];
  if (v65)
  {
    PBDataWriterWriteSubmessage();
  }

  v66 = [(_SFPBCardSectionValue *)self largeTitleDetailedRowCardSection];
  if (v66)
  {
    PBDataWriterWriteSubmessage();
  }

  v67 = [(_SFPBCardSectionValue *)self safariTableOfContentsCardSection];
  if (v67)
  {
    PBDataWriterWriteSubmessage();
  }

  v68 = [(_SFPBCardSectionValue *)self rfSummaryItemShortNumberCardSection];
  if (v68)
  {
    PBDataWriterWriteSubmessage();
  }

  v69 = [(_SFPBCardSectionValue *)self rfSummaryItemTextCardSection];
  if (v69)
  {
    PBDataWriterWriteSubmessage();
  }

  v70 = [(_SFPBCardSectionValue *)self rfSummaryItemStandardCardSection];
  if (v70)
  {
    PBDataWriterWriteSubmessage();
  }

  v71 = [(_SFPBCardSectionValue *)self rfFactItemShortNumberCardSection];
  if (v71)
  {
    PBDataWriterWriteSubmessage();
  }

  v72 = [(_SFPBCardSectionValue *)self rfFactItemStandardCardSection];
  if (v72)
  {
    PBDataWriterWriteSubmessage();
  }

  v73 = [(_SFPBCardSectionValue *)self rfLongItemStandardCardSection];
  if (v73)
  {
    PBDataWriterWriteSubmessage();
  }

  v74 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderRichCardSection];
  if (v74)
  {
    PBDataWriterWriteSubmessage();
  }

  v75 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
  if (v75)
  {
    PBDataWriterWriteSubmessage();
  }

  v76 = [(_SFPBCardSectionValue *)self rfReferenceFootnoteCardSection];
  if (v76)
  {
    PBDataWriterWriteSubmessage();
  }

  v77 = [(_SFPBCardSectionValue *)self rfReferenceRichCardSection];
  if (v77)
  {
    PBDataWriterWriteSubmessage();
  }

  v78 = [(_SFPBCardSectionValue *)self rfSimpleItemRichCardSection];
  if (v78)
  {
    PBDataWriterWriteSubmessage();
  }

  v79 = [(_SFPBCardSectionValue *)self rfSimpleItemStandardCardSection];
  if (v79)
  {
    PBDataWriterWriteSubmessage();
  }

  v80 = [(_SFPBCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
  if (v80)
  {
    PBDataWriterWriteSubmessage();
  }

  v81 = [(_SFPBCardSectionValue *)self rfExpandableStandardCardSection];
  if (v81)
  {
    PBDataWriterWriteSubmessage();
  }

  v82 = [(_SFPBCardSectionValue *)self rfFactItemButtonCardSection];
  if (v82)
  {
    PBDataWriterWriteSubmessage();
  }

  v83 = [(_SFPBCardSectionValue *)self rfFactItemHeroNumberCardSection];
  if (v83)
  {
    PBDataWriterWriteSubmessage();
  }

  v84 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
  if (v84)
  {
    PBDataWriterWriteSubmessage();
  }

  v85 = [(_SFPBCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
  if (v85)
  {
    PBDataWriterWriteSubmessage();
  }

  v86 = [(_SFPBCardSectionValue *)self rfSimpleItemPlayerCardSection];
  if (v86)
  {
    PBDataWriterWriteSubmessage();
  }

  v87 = [(_SFPBCardSectionValue *)self rfSummaryItemPairCardSection];
  if (v87)
  {
    PBDataWriterWriteSubmessage();
  }

  v88 = [(_SFPBCardSectionValue *)self rfSummaryItemPairNumberCardSection];
  if (v88)
  {
    PBDataWriterWriteSubmessage();
  }

  v89 = [(_SFPBCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
  if (v89)
  {
    PBDataWriterWriteSubmessage();
  }

  v90 = [(_SFPBCardSectionValue *)self rfFactItemDetailedNumberCardSection];
  if (v90)
  {
    PBDataWriterWriteSubmessage();
  }

  v91 = [(_SFPBCardSectionValue *)self rfFactItemHeroButtonCardSection];
  if (v91)
  {
    PBDataWriterWriteSubmessage();
  }

  v92 = [(_SFPBCardSectionValue *)self rfFactItemImageRightCardSection];
  if (v92)
  {
    PBDataWriterWriteSubmessage();
  }

  v93 = [(_SFPBCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
  if (v93)
  {
    PBDataWriterWriteSubmessage();
  }

  v94 = [(_SFPBCardSectionValue *)self rfTableHeaderCardSection];
  if (v94)
  {
    PBDataWriterWriteSubmessage();
  }

  v95 = [(_SFPBCardSectionValue *)self rfTableRowCardSection];
  if (v95)
  {
    PBDataWriterWriteSubmessage();
  }

  v96 = [(_SFPBCardSectionValue *)self rfSimpleItemVisualElementCardSection];
  if (v96)
  {
    PBDataWriterWriteSubmessage();
  }

  v97 = [(_SFPBCardSectionValue *)self rfSummaryItemPlayerCardSection];
  if (v97)
  {
    PBDataWriterWriteSubmessage();
  }

  v98 = [(_SFPBCardSectionValue *)self rfSummaryItemImageRightCardSection];
  if (v98)
  {
    PBDataWriterWriteSubmessage();
  }

  v99 = [(_SFPBCardSectionValue *)self rfSummaryItemButtonCardSection];
  if (v99)
  {
    PBDataWriterWriteSubmessage();
  }

  v100 = [(_SFPBCardSectionValue *)self rfSimpleItemReverseRichCardSection];
  if (v100)
  {
    PBDataWriterWriteSubmessage();
  }

  v101 = [(_SFPBCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
  if (v101)
  {
    PBDataWriterWriteSubmessage();
  }

  v102 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
  if (v102)
  {
    PBDataWriterWriteSubmessage();
  }

  v103 = [(_SFPBCardSectionValue *)self rfReferenceItemLogoCardSection];
  if (v103)
  {
    PBDataWriterWriteSubmessage();
  }

  v104 = [(_SFPBCardSectionValue *)self rfReferenceItemButtonCardSection];
  if (v104)
  {
    PBDataWriterWriteSubmessage();
  }

  v105 = [(_SFPBCardSectionValue *)self rfButtonCardSection];
  if (v105)
  {
    PBDataWriterWriteSubmessage();
  }

  v106 = [(_SFPBCardSectionValue *)self rfBinaryButtonCardSection];
  if (v106)
  {
    PBDataWriterWriteSubmessage();
  }

  v107 = [(_SFPBCardSectionValue *)self rfReferenceCenteredCardSection];
  if (v107)
  {
    PBDataWriterWriteSubmessage();
  }

  v108 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
  if (v108)
  {
    PBDataWriterWriteSubmessage();
  }

  v109 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
  if (v109)
  {
    PBDataWriterWriteSubmessage();
  }

  v110 = [(_SFPBCardSectionValue *)self rfMapCardSection];
  if (v110)
  {
    PBDataWriterWriteSubmessage();
  }

  v111 = [(_SFPBCardSectionValue *)self rfReferenceStandardCardSection];
  if (v111)
  {
    PBDataWriterWriteSubmessage();
  }

  v112 = [(_SFPBCardSectionValue *)self rfMultiButtonCardSection];
  if (v112)
  {
    PBDataWriterWriteSubmessage();
  }

  v113 = [(_SFPBCardSectionValue *)self rfDisambiguationTitleCardSection];
  if (v113)
  {
    PBDataWriterWriteSubmessage();
  }

  v114 = [(_SFPBCardSectionValue *)self rfSummaryItemExpandableCardSection];
  if (v114)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end