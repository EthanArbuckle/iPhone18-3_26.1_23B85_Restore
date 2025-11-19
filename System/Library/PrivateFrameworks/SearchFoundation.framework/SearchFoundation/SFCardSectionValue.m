@interface SFCardSectionValue
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCardSectionValue)initWithCoder:(id)a3;
- (SFCardSectionValue)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCardSectionValue

- (SFCardSectionValue)initWithProtobuf:(id)a3
{
  v4 = a3;
  v452.receiver = self;
  v452.super_class = SFCardSectionValue;
  v5 = [(SFCardSectionValue *)&v452 init];

  if (v5)
  {
    v6 = [v4 appLinkCardSection];

    if (v6)
    {
      v7 = [SFAppLinkCardSection alloc];
      v8 = [v4 appLinkCardSection];
      v9 = [(SFAppLinkCardSection *)v7 initWithProtobuf:v8];
      [(SFCardSectionValue *)v5 setAppLinkCardSection:v9];
    }

    v10 = [v4 descriptionCardSection];

    if (v10)
    {
      v11 = [SFDescriptionCardSection alloc];
      v12 = [v4 descriptionCardSection];
      v13 = [(SFDescriptionCardSection *)v11 initWithProtobuf:v12];
      [(SFCardSectionValue *)v5 setDescriptionCardSection:v13];
    }

    v14 = [v4 keyValueDataCardSection];

    if (v14)
    {
      v15 = [SFKeyValueDataCardSection alloc];
      v16 = [v4 keyValueDataCardSection];
      v17 = [(SFKeyValueDataCardSection *)v15 initWithProtobuf:v16];
      [(SFCardSectionValue *)v5 setKeyValueDataCardSection:v17];
    }

    v18 = [v4 mapCardSection];

    if (v18)
    {
      v19 = [SFMapCardSection alloc];
      v20 = [v4 mapCardSection];
      v21 = [(SFMapCardSection *)v19 initWithProtobuf:v20];
      [(SFCardSectionValue *)v5 setMapCardSection:v21];
    }

    v22 = [v4 mediaInfoCardSection];

    if (v22)
    {
      v23 = [SFMediaInfoCardSection alloc];
      v24 = [v4 mediaInfoCardSection];
      v25 = [(SFMediaInfoCardSection *)v23 initWithProtobuf:v24];
      [(SFCardSectionValue *)v5 setMediaInfoCardSection:v25];
    }

    v26 = [v4 mediaPlayerCardSection];

    if (v26)
    {
      v27 = [SFMediaPlayerCardSection alloc];
      v28 = [v4 mediaPlayerCardSection];
      v29 = [(SFMediaPlayerCardSection *)v27 initWithProtobuf:v28];
      [(SFCardSectionValue *)v5 setMediaPlayerCardSection:v29];
    }

    v30 = [v4 nowPlayingCardSection];

    if (v30)
    {
      v31 = [SFNowPlayingCardSection alloc];
      v32 = [v4 nowPlayingCardSection];
      v33 = [(SFNowPlayingCardSection *)v31 initWithProtobuf:v32];
      [(SFCardSectionValue *)v5 setNowPlayingCardSection:v33];
    }

    v34 = [v4 richTitleCardSection];

    if (v34)
    {
      v35 = [SFRichTitleCardSection alloc];
      v36 = [v4 richTitleCardSection];
      v37 = [(SFRichTitleCardSection *)v35 initWithProtobuf:v36];
      [(SFCardSectionValue *)v5 setRichTitleCardSection:v37];
    }

    v38 = [v4 rowCardSection];

    if (v38)
    {
      v39 = [SFRowCardSection alloc];
      v40 = [v4 rowCardSection];
      v41 = [(SFRowCardSection *)v39 initWithProtobuf:v40];
      [(SFCardSectionValue *)v5 setRowCardSection:v41];
    }

    v42 = [v4 scoreboardCardSection];

    if (v42)
    {
      v43 = [SFScoreboardCardSection alloc];
      v44 = [v4 scoreboardCardSection];
      v45 = [(SFScoreboardCardSection *)v43 initWithProtobuf:v44];
      [(SFCardSectionValue *)v5 setScoreboardCardSection:v45];
    }

    v46 = [v4 socialMediaPostCardSection];

    if (v46)
    {
      v47 = [SFSocialMediaPostCardSection alloc];
      v48 = [v4 socialMediaPostCardSection];
      v49 = [(SFSocialMediaPostCardSection *)v47 initWithProtobuf:v48];
      [(SFCardSectionValue *)v5 setSocialMediaPostCardSection:v49];
    }

    v50 = [v4 stockChartCardSection];

    if (v50)
    {
      v51 = [SFStockChartCardSection alloc];
      v52 = [v4 stockChartCardSection];
      v53 = [(SFStockChartCardSection *)v51 initWithProtobuf:v52];
      [(SFCardSectionValue *)v5 setStockChartCardSection:v53];
    }

    v54 = [v4 tableHeaderRowCardSection];

    if (v54)
    {
      v55 = [SFTableHeaderRowCardSection alloc];
      v56 = [v4 tableHeaderRowCardSection];
      v57 = [(SFTableHeaderRowCardSection *)v55 initWithProtobuf:v56];
      [(SFCardSectionValue *)v5 setTableHeaderRowCardSection:v57];
    }

    v58 = [v4 tableRowCardSection];

    if (v58)
    {
      v59 = [SFTableRowCardSection alloc];
      v60 = [v4 tableRowCardSection];
      v61 = [(SFTableRowCardSection *)v59 initWithProtobuf:v60];
      [(SFCardSectionValue *)v5 setTableRowCardSection:v61];
    }

    v62 = [v4 textColumnsCardSection];

    if (v62)
    {
      v63 = [SFTextColumnsCardSection alloc];
      v64 = [v4 textColumnsCardSection];
      v65 = [(SFTextColumnsCardSection *)v63 initWithProtobuf:v64];
      [(SFCardSectionValue *)v5 setTextColumnsCardSection:v65];
    }

    v66 = [v4 titleCardSection];

    if (v66)
    {
      v67 = [SFTitleCardSection alloc];
      v68 = [v4 titleCardSection];
      v69 = [(SFTitleCardSection *)v67 initWithProtobuf:v68];
      [(SFCardSectionValue *)v5 setTitleCardSection:v69];
    }

    v70 = [v4 trackListCardSection];

    if (v70)
    {
      v71 = [SFTrackListCardSection alloc];
      v72 = [v4 trackListCardSection];
      v73 = [(SFTrackListCardSection *)v71 initWithProtobuf:v72];
      [(SFCardSectionValue *)v5 setTrackListCardSection:v73];
    }

    v74 = [v4 audioPlaybackCardSection];

    if (v74)
    {
      v75 = [SFAudioPlaybackCardSection alloc];
      v76 = [v4 audioPlaybackCardSection];
      v77 = [(SFAudioPlaybackCardSection *)v75 initWithProtobuf:v76];
      [(SFCardSectionValue *)v5 setAudioPlaybackCardSection:v77];
    }

    v78 = [v4 flightCardSection];

    if (v78)
    {
      v79 = [SFFlightCardSection alloc];
      v80 = [v4 flightCardSection];
      v81 = [(SFFlightCardSection *)v79 initWithProtobuf:v80];
      [(SFCardSectionValue *)v5 setFlightCardSection:v81];
    }

    v82 = [v4 activityIndicatorCardSection];

    if (v82)
    {
      v83 = [SFActivityIndicatorCardSection alloc];
      v84 = [v4 activityIndicatorCardSection];
      v85 = [(SFActivityIndicatorCardSection *)v83 initWithProtobuf:v84];
      [(SFCardSectionValue *)v5 setActivityIndicatorCardSection:v85];
    }

    v86 = [v4 webCardSection];

    if (v86)
    {
      v87 = [SFWebCardSection alloc];
      v88 = [v4 webCardSection];
      v89 = [(SFWebCardSection *)v87 initWithProtobuf:v88];
      [(SFCardSectionValue *)v5 setWebCardSection:v89];
    }

    v90 = [v4 messageCardSection];

    if (v90)
    {
      v91 = [SFMessageCardSection alloc];
      v92 = [v4 messageCardSection];
      v93 = [(SFMessageCardSection *)v91 initWithProtobuf:v92];
      [(SFCardSectionValue *)v5 setMessageCardSection:v93];
    }

    v94 = [v4 detailedRowCardSection];

    if (v94)
    {
      v95 = [SFDetailedRowCardSection alloc];
      v96 = [v4 detailedRowCardSection];
      v97 = [(SFDetailedRowCardSection *)v95 initWithProtobuf:v96];
      [(SFCardSectionValue *)v5 setDetailedRowCardSection:v97];
    }

    v98 = [v4 imagesCardSection];

    if (v98)
    {
      v99 = [SFImagesCardSection alloc];
      v100 = [v4 imagesCardSection];
      v101 = [(SFImagesCardSection *)v99 initWithProtobuf:v100];
      [(SFCardSectionValue *)v5 setImagesCardSection:v101];
    }

    v102 = [v4 suggestionCardSection];

    if (v102)
    {
      v103 = [SFSuggestionCardSection alloc];
      v104 = [v4 suggestionCardSection];
      v105 = [(SFSuggestionCardSection *)v103 initWithProtobuf:v104];
      [(SFCardSectionValue *)v5 setSuggestionCardSection:v105];
    }

    v106 = [v4 selectableGridCardSection];

    if (v106)
    {
      v107 = [SFSelectableGridCardSection alloc];
      v108 = [v4 selectableGridCardSection];
      v109 = [(SFSelectableGridCardSection *)v107 initWithProtobuf:v108];
      [(SFCardSectionValue *)v5 setSelectableGridCardSection:v109];
    }

    v110 = [v4 sectionHeaderCardSection];

    if (v110)
    {
      v111 = [SFSectionHeaderCardSection alloc];
      v112 = [v4 sectionHeaderCardSection];
      v113 = [(SFSectionHeaderCardSection *)v111 initWithProtobuf:v112];
      [(SFCardSectionValue *)v5 setSectionHeaderCardSection:v113];
    }

    v114 = [v4 metaInfoCardSection];

    if (v114)
    {
      v115 = [SFMetaInfoCardSection alloc];
      v116 = [v4 metaInfoCardSection];
      v117 = [(SFMetaInfoCardSection *)v115 initWithProtobuf:v116];
      [(SFCardSectionValue *)v5 setMetaInfoCardSection:v117];
    }

    v118 = [v4 watchListCardSection];

    if (v118)
    {
      v119 = [SFWatchListCardSection alloc];
      v120 = [v4 watchListCardSection];
      v121 = [(SFWatchListCardSection *)v119 initWithProtobuf:v120];
      [(SFCardSectionValue *)v5 setWatchListCardSection:v121];
    }

    v122 = [v4 mapsDetailedRowCardSection];

    if (v122)
    {
      v123 = [SFMapsDetailedRowCardSection alloc];
      v124 = [v4 mapsDetailedRowCardSection];
      v125 = [(SFMapsDetailedRowCardSection *)v123 initWithProtobuf:v124];
      [(SFCardSectionValue *)v5 setMapsDetailedRowCardSection:v125];
    }

    v126 = [v4 buttonCardSection];

    if (v126)
    {
      v127 = [SFButtonCardSection alloc];
      v128 = [v4 buttonCardSection];
      v129 = [(SFButtonCardSection *)v127 initWithProtobuf:v128];
      [(SFCardSectionValue *)v5 setButtonCardSection:v129];
    }

    v130 = [v4 horizontalButtonCardSection];

    if (v130)
    {
      v131 = [SFHorizontalButtonCardSection alloc];
      v132 = [v4 horizontalButtonCardSection];
      v133 = [(SFHorizontalButtonCardSection *)v131 initWithProtobuf:v132];
      [(SFCardSectionValue *)v5 setHorizontalButtonCardSection:v133];
    }

    v134 = [v4 verticalLayoutCardSection];

    if (v134)
    {
      v135 = [SFVerticalLayoutCardSection alloc];
      v136 = [v4 verticalLayoutCardSection];
      v137 = [(SFVerticalLayoutCardSection *)v135 initWithProtobuf:v136];
      [(SFCardSectionValue *)v5 setVerticalLayoutCardSection:v137];
    }

    v138 = [v4 productCardSection];

    if (v138)
    {
      v139 = [SFProductCardSection alloc];
      v140 = [v4 productCardSection];
      v141 = [(SFProductCardSection *)v139 initWithProtobuf:v140];
      [(SFCardSectionValue *)v5 setProductCardSection:v141];
    }

    v142 = [v4 horizontalScrollCardSection];

    if (v142)
    {
      v143 = [SFHorizontalScrollCardSection alloc];
      v144 = [v4 horizontalScrollCardSection];
      v145 = [(SFHorizontalScrollCardSection *)v143 initWithProtobuf:v144];
      [(SFCardSectionValue *)v5 setHorizontalScrollCardSection:v145];
    }

    v146 = [v4 mediaRemoteControlCardSection];

    if (v146)
    {
      v147 = [SFMediaRemoteControlCardSection alloc];
      v148 = [v4 mediaRemoteControlCardSection];
      v149 = [(SFMediaRemoteControlCardSection *)v147 initWithProtobuf:v148];
      [(SFCardSectionValue *)v5 setMediaRemoteControlCardSection:v149];
    }

    v150 = [v4 mapPlaceCardSection];

    if (v150)
    {
      v151 = [SFMapPlaceCardSection alloc];
      v152 = [v4 mapPlaceCardSection];
      v153 = [(SFMapPlaceCardSection *)v151 initWithProtobuf:v152];
      [(SFCardSectionValue *)v5 setMapPlaceCardSection:v153];
    }

    v154 = [v4 compactRowCardSection];

    if (v154)
    {
      v155 = [SFCompactRowCardSection alloc];
      v156 = [v4 compactRowCardSection];
      v157 = [(SFCompactRowCardSection *)v155 initWithProtobuf:v156];
      [(SFCardSectionValue *)v5 setCompactRowCardSection:v157];
    }

    v158 = [v4 worldMapCardSection];

    if (v158)
    {
      v159 = [SFWorldMapCardSection alloc];
      v160 = [v4 worldMapCardSection];
      v161 = [(SFWorldMapCardSection *)v159 initWithProtobuf:v160];
      [(SFCardSectionValue *)v5 setWorldMapCardSection:v161];
    }

    v162 = [v4 attributionFooterCardSection];

    if (v162)
    {
      v163 = [SFAttributionFooterCardSection alloc];
      v164 = [v4 attributionFooterCardSection];
      v165 = [(SFAttributionFooterCardSection *)v163 initWithProtobuf:v164];
      [(SFCardSectionValue *)v5 setAttributionFooterCardSection:v165];
    }

    v166 = [v4 gridCardSection];

    if (v166)
    {
      v167 = [SFGridCardSection alloc];
      v168 = [v4 gridCardSection];
      v169 = [(SFGridCardSection *)v167 initWithProtobuf:v168];
      [(SFCardSectionValue *)v5 setGridCardSection:v169];
    }

    v170 = [v4 personHeaderCardSection];

    if (v170)
    {
      v171 = [SFPersonHeaderCardSection alloc];
      v172 = [v4 personHeaderCardSection];
      v173 = [(SFPersonHeaderCardSection *)v171 initWithProtobuf:v172];
      [(SFCardSectionValue *)v5 setPersonHeaderCardSection:v173];
    }

    v174 = [v4 colorBarCardSection];

    if (v174)
    {
      v175 = [SFColorBarCardSection alloc];
      v176 = [v4 colorBarCardSection];
      v177 = [(SFColorBarCardSection *)v175 initWithProtobuf:v176];
      [(SFCardSectionValue *)v5 setColorBarCardSection:v177];
    }

    v178 = [v4 splitCardSection];

    if (v178)
    {
      v179 = [SFSplitCardSection alloc];
      v180 = [v4 splitCardSection];
      v181 = [(SFSplitCardSection *)v179 initWithProtobuf:v180];
      [(SFCardSectionValue *)v5 setSplitCardSection:v181];
    }

    v182 = [v4 linkPresentationCardSection];

    if (v182)
    {
      v183 = [SFLinkPresentationCardSection alloc];
      v184 = [v4 linkPresentationCardSection];
      v185 = [(SFLinkPresentationCardSection *)v183 initWithProtobuf:v184];
      [(SFCardSectionValue *)v5 setLinkPresentationCardSection:v185];
    }

    v186 = [v4 findMyCardSection];

    if (v186)
    {
      v187 = [SFFindMyCardSection alloc];
      v188 = [v4 findMyCardSection];
      v189 = [(SFFindMyCardSection *)v187 initWithProtobuf:v188];
      [(SFCardSectionValue *)v5 setFindMyCardSection:v189];
    }

    v190 = [v4 heroCardSection];

    if (v190)
    {
      v191 = [SFHeroCardSection alloc];
      v192 = [v4 heroCardSection];
      v193 = [(SFHeroCardSection *)v191 initWithProtobuf:v192];
      [(SFCardSectionValue *)v5 setHeroCardSection:v193];
    }

    v194 = [v4 newsCardSection];

    if (v194)
    {
      v195 = [SFNewsCardSection alloc];
      v196 = [v4 newsCardSection];
      v197 = [(SFNewsCardSection *)v195 initWithProtobuf:v196];
      [(SFCardSectionValue *)v5 setNewsCardSection:v197];
    }

    v198 = [v4 miniCardSection];

    if (v198)
    {
      v199 = [SFMiniCardSection alloc];
      v200 = [v4 miniCardSection];
      v201 = [(SFMiniCardSection *)v199 initWithProtobuf:v200];
      [(SFCardSectionValue *)v5 setMiniCardSection:v201];
    }

    v202 = [v4 infoCardSection];

    if (v202)
    {
      v203 = [SFInfoCardSection alloc];
      v204 = [v4 infoCardSection];
      v205 = [(SFInfoCardSection *)v203 initWithProtobuf:v204];
      [(SFCardSectionValue *)v5 setInfoCardSection:v205];
    }

    v206 = [v4 collectionCardSection];

    if (v206)
    {
      v207 = [SFCollectionCardSection alloc];
      v208 = [v4 collectionCardSection];
      v209 = [(SFCollectionCardSection *)v207 initWithProtobuf:v208];
      [(SFCardSectionValue *)v5 setCollectionCardSection:v209];
    }

    v210 = [v4 combinedCardSection];

    if (v210)
    {
      v211 = [SFCombinedCardSection alloc];
      v212 = [v4 combinedCardSection];
      v213 = [(SFCombinedCardSection *)v211 initWithProtobuf:v212];
      [(SFCardSectionValue *)v5 setCombinedCardSection:v213];
    }

    v214 = [v4 responseWrapperCardSection];

    if (v214)
    {
      v215 = [SFResponseWrapperCardSection alloc];
      v216 = [v4 responseWrapperCardSection];
      v217 = [(SFResponseWrapperCardSection *)v215 initWithProtobuf:v216];
      [(SFCardSectionValue *)v5 setResponseWrapperCardSection:v217];
    }

    v218 = [v4 listenToCardSection];

    if (v218)
    {
      v219 = [SFListenToCardSection alloc];
      v220 = [v4 listenToCardSection];
      v221 = [(SFListenToCardSection *)v219 initWithProtobuf:v220];
      [(SFCardSectionValue *)v5 setListenToCardSection:v221];
    }

    v222 = [v4 watchNowCardSection];

    if (v222)
    {
      v223 = [SFWatchNowCardSection alloc];
      v224 = [v4 watchNowCardSection];
      v225 = [(SFWatchNowCardSection *)v223 initWithProtobuf:v224];
      [(SFCardSectionValue *)v5 setWatchNowCardSection:v225];
    }

    v226 = [v4 strokeAnimationCardSection];

    if (v226)
    {
      v227 = [SFStrokeAnimationCardSection alloc];
      v228 = [v4 strokeAnimationCardSection];
      v229 = [(SFStrokeAnimationCardSection *)v227 initWithProtobuf:v228];
      [(SFCardSectionValue *)v5 setStrokeAnimationCardSection:v229];
    }

    v230 = [v4 buttonListCardSection];

    if (v230)
    {
      v231 = [SFButtonListCardSection alloc];
      v232 = [v4 buttonListCardSection];
      v233 = [(SFButtonListCardSection *)v231 initWithProtobuf:v232];
      [(SFCardSectionValue *)v5 setButtonListCardSection:v233];
    }

    v234 = [v4 commandRowCardSection];

    if (v234)
    {
      v235 = [SFCommandRowCardSection alloc];
      v236 = [v4 commandRowCardSection];
      v237 = [(SFCommandRowCardSection *)v235 initWithProtobuf:v236];
      [(SFCardSectionValue *)v5 setCommandRowCardSection:v237];
    }

    v238 = [v4 leadingTrailingCardSection];

    if (v238)
    {
      v239 = [SFLeadingTrailingCardSection alloc];
      v240 = [v4 leadingTrailingCardSection];
      v241 = [(SFLeadingTrailingCardSection *)v239 initWithProtobuf:v240];
      [(SFCardSectionValue *)v5 setLeadingTrailingCardSection:v241];
    }

    v242 = [v4 heroTitleCardSection];

    if (v242)
    {
      v243 = [SFHeroTitleCardSection alloc];
      v244 = [v4 heroTitleCardSection];
      v245 = [(SFHeroTitleCardSection *)v243 initWithProtobuf:v244];
      [(SFCardSectionValue *)v5 setHeroTitleCardSection:v245];
    }

    v246 = [v4 archiveViewCardSection];

    if (v246)
    {
      v247 = [SFArchiveViewCardSection alloc];
      v248 = [v4 archiveViewCardSection];
      v249 = [(SFArchiveViewCardSection *)v247 initWithProtobuf:v248];
      [(SFCardSectionValue *)v5 setArchiveViewCardSection:v249];
    }

    v250 = [v4 appIconCardSection];

    if (v250)
    {
      v251 = [SFAppIconCardSection alloc];
      v252 = [v4 appIconCardSection];
      v253 = [(SFAppIconCardSection *)v251 initWithProtobuf:v252];
      [(SFCardSectionValue *)v5 setAppIconCardSection:v253];
    }

    v254 = [v4 largeTitleDetailedRowCardSection];

    if (v254)
    {
      v255 = [SFLargeTitleDetailedRowCardSection alloc];
      v256 = [v4 largeTitleDetailedRowCardSection];
      v257 = [(SFLargeTitleDetailedRowCardSection *)v255 initWithProtobuf:v256];
      [(SFCardSectionValue *)v5 setLargeTitleDetailedRowCardSection:v257];
    }

    v258 = [v4 safariTableOfContentsCardSection];

    if (v258)
    {
      v259 = [SFSafariTableOfContentsCardSection alloc];
      v260 = [v4 safariTableOfContentsCardSection];
      v261 = [(SFSafariTableOfContentsCardSection *)v259 initWithProtobuf:v260];
      [(SFCardSectionValue *)v5 setSafariTableOfContentsCardSection:v261];
    }

    v262 = [v4 rfSummaryItemShortNumberCardSection];

    if (v262)
    {
      v263 = [RFSummaryItemShortNumberCardSection alloc];
      v264 = [v4 rfSummaryItemShortNumberCardSection];
      v265 = [(RFSummaryItemShortNumberCardSection *)v263 initWithProtobuf:v264];
      [(SFCardSectionValue *)v5 setRfSummaryItemShortNumberCardSection:v265];
    }

    v266 = [v4 rfSummaryItemTextCardSection];

    if (v266)
    {
      v267 = [RFSummaryItemTextCardSection alloc];
      v268 = [v4 rfSummaryItemTextCardSection];
      v269 = [(RFSummaryItemTextCardSection *)v267 initWithProtobuf:v268];
      [(SFCardSectionValue *)v5 setRfSummaryItemTextCardSection:v269];
    }

    v270 = [v4 rfSummaryItemStandardCardSection];

    if (v270)
    {
      v271 = [RFSummaryItemStandardCardSection alloc];
      v272 = [v4 rfSummaryItemStandardCardSection];
      v273 = [(RFSummaryItemStandardCardSection *)v271 initWithProtobuf:v272];
      [(SFCardSectionValue *)v5 setRfSummaryItemStandardCardSection:v273];
    }

    v274 = [v4 rfFactItemShortNumberCardSection];

    if (v274)
    {
      v275 = [RFFactItemShortNumberCardSection alloc];
      v276 = [v4 rfFactItemShortNumberCardSection];
      v277 = [(RFFactItemShortNumberCardSection *)v275 initWithProtobuf:v276];
      [(SFCardSectionValue *)v5 setRfFactItemShortNumberCardSection:v277];
    }

    v278 = [v4 rfFactItemStandardCardSection];

    if (v278)
    {
      v279 = [RFFactItemStandardCardSection alloc];
      v280 = [v4 rfFactItemStandardCardSection];
      v281 = [(RFFactItemStandardCardSection *)v279 initWithProtobuf:v280];
      [(SFCardSectionValue *)v5 setRfFactItemStandardCardSection:v281];
    }

    v282 = [v4 rfLongItemStandardCardSection];

    if (v282)
    {
      v283 = [RFLongItemStandardCardSection alloc];
      v284 = [v4 rfLongItemStandardCardSection];
      v285 = [(RFLongItemStandardCardSection *)v283 initWithProtobuf:v284];
      [(SFCardSectionValue *)v5 setRfLongItemStandardCardSection:v285];
    }

    v286 = [v4 rfPrimaryHeaderRichCardSection];

    if (v286)
    {
      v287 = [RFPrimaryHeaderRichCardSection alloc];
      v288 = [v4 rfPrimaryHeaderRichCardSection];
      v289 = [(RFPrimaryHeaderRichCardSection *)v287 initWithProtobuf:v288];
      [(SFCardSectionValue *)v5 setRfPrimaryHeaderRichCardSection:v289];
    }

    v290 = [v4 rfPrimaryHeaderStandardCardSection];

    if (v290)
    {
      v291 = [RFPrimaryHeaderStandardCardSection alloc];
      v292 = [v4 rfPrimaryHeaderStandardCardSection];
      v293 = [(RFPrimaryHeaderStandardCardSection *)v291 initWithProtobuf:v292];
      [(SFCardSectionValue *)v5 setRfPrimaryHeaderStandardCardSection:v293];
    }

    v294 = [v4 rfReferenceFootnoteCardSection];

    if (v294)
    {
      v295 = [RFReferenceFootnoteCardSection alloc];
      v296 = [v4 rfReferenceFootnoteCardSection];
      v297 = [(RFReferenceFootnoteCardSection *)v295 initWithProtobuf:v296];
      [(SFCardSectionValue *)v5 setRfReferenceFootnoteCardSection:v297];
    }

    v298 = [v4 rfReferenceRichCardSection];

    if (v298)
    {
      v299 = [RFReferenceRichCardSection alloc];
      v300 = [v4 rfReferenceRichCardSection];
      v301 = [(RFReferenceRichCardSection *)v299 initWithProtobuf:v300];
      [(SFCardSectionValue *)v5 setRfReferenceRichCardSection:v301];
    }

    v302 = [v4 rfSimpleItemRichCardSection];

    if (v302)
    {
      v303 = [RFSimpleItemRichCardSection alloc];
      v304 = [v4 rfSimpleItemRichCardSection];
      v305 = [(RFSimpleItemRichCardSection *)v303 initWithProtobuf:v304];
      [(SFCardSectionValue *)v5 setRfSimpleItemRichCardSection:v305];
    }

    v306 = [v4 rfSimpleItemStandardCardSection];

    if (v306)
    {
      v307 = [RFSimpleItemStandardCardSection alloc];
      v308 = [v4 rfSimpleItemStandardCardSection];
      v309 = [(RFSimpleItemStandardCardSection *)v307 initWithProtobuf:v308];
      [(SFCardSectionValue *)v5 setRfSimpleItemStandardCardSection:v309];
    }

    v310 = [v4 rfSummaryItemAlignedTextCardSection];

    if (v310)
    {
      v311 = [RFSummaryItemAlignedTextCardSection alloc];
      v312 = [v4 rfSummaryItemAlignedTextCardSection];
      v313 = [(RFSummaryItemAlignedTextCardSection *)v311 initWithProtobuf:v312];
      [(SFCardSectionValue *)v5 setRfSummaryItemAlignedTextCardSection:v313];
    }

    v314 = [v4 rfExpandableStandardCardSection];

    if (v314)
    {
      v315 = [RFExpandableStandardCardSection alloc];
      v316 = [v4 rfExpandableStandardCardSection];
      v317 = [(RFExpandableStandardCardSection *)v315 initWithProtobuf:v316];
      [(SFCardSectionValue *)v5 setRfExpandableStandardCardSection:v317];
    }

    v318 = [v4 rfFactItemButtonCardSection];

    if (v318)
    {
      v319 = [RFFactItemButtonCardSection alloc];
      v320 = [v4 rfFactItemButtonCardSection];
      v321 = [(RFFactItemButtonCardSection *)v319 initWithProtobuf:v320];
      [(SFCardSectionValue *)v5 setRfFactItemButtonCardSection:v321];
    }

    v322 = [v4 rfFactItemHeroNumberCardSection];

    if (v322)
    {
      v323 = [RFFactItemHeroNumberCardSection alloc];
      v324 = [v4 rfFactItemHeroNumberCardSection];
      v325 = [(RFFactItemHeroNumberCardSection *)v323 initWithProtobuf:v324];
      [(SFCardSectionValue *)v5 setRfFactItemHeroNumberCardSection:v325];
    }

    v326 = [v4 rfPrimaryHeaderMarqueeCardSection];

    if (v326)
    {
      v327 = [RFPrimaryHeaderMarqueeCardSection alloc];
      v328 = [v4 rfPrimaryHeaderMarqueeCardSection];
      v329 = [(RFPrimaryHeaderMarqueeCardSection *)v327 initWithProtobuf:v328];
      [(SFCardSectionValue *)v5 setRfPrimaryHeaderMarqueeCardSection:v329];
    }

    v330 = [v4 rfSummaryItemDetailedTextCardSection];

    if (v330)
    {
      v331 = [RFSummaryItemDetailedTextCardSection alloc];
      v332 = [v4 rfSummaryItemDetailedTextCardSection];
      v333 = [(RFSummaryItemDetailedTextCardSection *)v331 initWithProtobuf:v332];
      [(SFCardSectionValue *)v5 setRfSummaryItemDetailedTextCardSection:v333];
    }

    v334 = [v4 rfSimpleItemPlayerCardSection];

    if (v334)
    {
      v335 = [RFSimpleItemPlayerCardSection alloc];
      v336 = [v4 rfSimpleItemPlayerCardSection];
      v337 = [(RFSimpleItemPlayerCardSection *)v335 initWithProtobuf:v336];
      [(SFCardSectionValue *)v5 setRfSimpleItemPlayerCardSection:v337];
    }

    v338 = [v4 rfSummaryItemPairCardSection];

    if (v338)
    {
      v339 = [RFSummaryItemPairCardSection alloc];
      v340 = [v4 rfSummaryItemPairCardSection];
      v341 = [(RFSummaryItemPairCardSection *)v339 initWithProtobuf:v340];
      [(SFCardSectionValue *)v5 setRfSummaryItemPairCardSection:v341];
    }

    v342 = [v4 rfSummaryItemPairNumberCardSection];

    if (v342)
    {
      v343 = [RFSummaryItemPairNumberCardSection alloc];
      v344 = [v4 rfSummaryItemPairNumberCardSection];
      v345 = [(RFSummaryItemPairNumberCardSection *)v343 initWithProtobuf:v344];
      [(SFCardSectionValue *)v5 setRfSummaryItemPairNumberCardSection:v345];
    }

    v346 = [v4 rfFactItemShortHeroNumberCardSection];

    if (v346)
    {
      v347 = [RFFactItemShortHeroNumberCardSection alloc];
      v348 = [v4 rfFactItemShortHeroNumberCardSection];
      v349 = [(RFFactItemShortHeroNumberCardSection *)v347 initWithProtobuf:v348];
      [(SFCardSectionValue *)v5 setRfFactItemShortHeroNumberCardSection:v349];
    }

    v350 = [v4 rfFactItemDetailedNumberCardSection];

    if (v350)
    {
      v351 = [RFFactItemDetailedNumberCardSection alloc];
      v352 = [v4 rfFactItemDetailedNumberCardSection];
      v353 = [(RFFactItemDetailedNumberCardSection *)v351 initWithProtobuf:v352];
      [(SFCardSectionValue *)v5 setRfFactItemDetailedNumberCardSection:v353];
    }

    v354 = [v4 rfFactItemHeroButtonCardSection];

    if (v354)
    {
      v355 = [RFFactItemHeroButtonCardSection alloc];
      v356 = [v4 rfFactItemHeroButtonCardSection];
      v357 = [(RFFactItemHeroButtonCardSection *)v355 initWithProtobuf:v356];
      [(SFCardSectionValue *)v5 setRfFactItemHeroButtonCardSection:v357];
    }

    v358 = [v4 rfFactItemImageRightCardSection];

    if (v358)
    {
      v359 = [RFFactItemImageRightCardSection alloc];
      v360 = [v4 rfFactItemImageRightCardSection];
      v361 = [(RFFactItemImageRightCardSection *)v359 initWithProtobuf:v360];
      [(SFCardSectionValue *)v5 setRfFactItemImageRightCardSection:v361];
    }

    v362 = [v4 rfSummaryItemSwitchV2CardSection];

    if (v362)
    {
      v363 = [RFSummaryItemSwitchV2CardSection alloc];
      v364 = [v4 rfSummaryItemSwitchV2CardSection];
      v365 = [(RFSummaryItemSwitchV2CardSection *)v363 initWithProtobuf:v364];
      [(SFCardSectionValue *)v5 setRfSummaryItemSwitchV2CardSection:v365];
    }

    v366 = [v4 rfTableHeaderCardSection];

    if (v366)
    {
      v367 = [RFTableHeaderCardSection alloc];
      v368 = [v4 rfTableHeaderCardSection];
      v369 = [(RFTableHeaderCardSection *)v367 initWithProtobuf:v368];
      [(SFCardSectionValue *)v5 setRfTableHeaderCardSection:v369];
    }

    v370 = [v4 rfTableRowCardSection];

    if (v370)
    {
      v371 = [RFTableRowCardSection alloc];
      v372 = [v4 rfTableRowCardSection];
      v373 = [(RFTableRowCardSection *)v371 initWithProtobuf:v372];
      [(SFCardSectionValue *)v5 setRfTableRowCardSection:v373];
    }

    v374 = [v4 rfSimpleItemVisualElementCardSection];

    if (v374)
    {
      v375 = [RFSimpleItemVisualElementCardSection alloc];
      v376 = [v4 rfSimpleItemVisualElementCardSection];
      v377 = [(RFSimpleItemVisualElementCardSection *)v375 initWithProtobuf:v376];
      [(SFCardSectionValue *)v5 setRfSimpleItemVisualElementCardSection:v377];
    }

    v378 = [v4 rfSummaryItemPlayerCardSection];

    if (v378)
    {
      v379 = [RFSummaryItemPlayerCardSection alloc];
      v380 = [v4 rfSummaryItemPlayerCardSection];
      v381 = [(RFSummaryItemPlayerCardSection *)v379 initWithProtobuf:v380];
      [(SFCardSectionValue *)v5 setRfSummaryItemPlayerCardSection:v381];
    }

    v382 = [v4 rfSummaryItemImageRightCardSection];

    if (v382)
    {
      v383 = [RFSummaryItemImageRightCardSection alloc];
      v384 = [v4 rfSummaryItemImageRightCardSection];
      v385 = [(RFSummaryItemImageRightCardSection *)v383 initWithProtobuf:v384];
      [(SFCardSectionValue *)v5 setRfSummaryItemImageRightCardSection:v385];
    }

    v386 = [v4 rfSummaryItemButtonCardSection];

    if (v386)
    {
      v387 = [RFSummaryItemButtonCardSection alloc];
      v388 = [v4 rfSummaryItemButtonCardSection];
      v389 = [(RFSummaryItemButtonCardSection *)v387 initWithProtobuf:v388];
      [(SFCardSectionValue *)v5 setRfSummaryItemButtonCardSection:v389];
    }

    v390 = [v4 rfSimpleItemReverseRichCardSection];

    if (v390)
    {
      v391 = [RFSimpleItemReverseRichCardSection alloc];
      v392 = [v4 rfSimpleItemReverseRichCardSection];
      v393 = [(RFSimpleItemReverseRichCardSection *)v391 initWithProtobuf:v392];
      [(SFCardSectionValue *)v5 setRfSimpleItemReverseRichCardSection:v393];
    }

    v394 = [v4 rfSimpleItemRichSearchResultCardSection];

    if (v394)
    {
      v395 = [RFSimpleItemRichSearchResultCardSection alloc];
      v396 = [v4 rfSimpleItemRichSearchResultCardSection];
      v397 = [(RFSimpleItemRichSearchResultCardSection *)v395 initWithProtobuf:v396];
      [(SFCardSectionValue *)v5 setRfSimpleItemRichSearchResultCardSection:v397];
    }

    v398 = [v4 rfPrimaryHeaderStackedImageCardSection];

    if (v398)
    {
      v399 = [RFPrimaryHeaderStackedImageCardSection alloc];
      v400 = [v4 rfPrimaryHeaderStackedImageCardSection];
      v401 = [(RFPrimaryHeaderStackedImageCardSection *)v399 initWithProtobuf:v400];
      [(SFCardSectionValue *)v5 setRfPrimaryHeaderStackedImageCardSection:v401];
    }

    v402 = [v4 rfReferenceItemLogoCardSection];

    if (v402)
    {
      v403 = [RFReferenceItemLogoCardSection alloc];
      v404 = [v4 rfReferenceItemLogoCardSection];
      v405 = [(RFReferenceItemLogoCardSection *)v403 initWithProtobuf:v404];
      [(SFCardSectionValue *)v5 setRfReferenceItemLogoCardSection:v405];
    }

    v406 = [v4 rfReferenceItemButtonCardSection];

    if (v406)
    {
      v407 = [RFReferenceItemButtonCardSection alloc];
      v408 = [v4 rfReferenceItemButtonCardSection];
      v409 = [(RFReferenceItemButtonCardSection *)v407 initWithProtobuf:v408];
      [(SFCardSectionValue *)v5 setRfReferenceItemButtonCardSection:v409];
    }

    v410 = [v4 rfButtonCardSection];

    if (v410)
    {
      v411 = [RFButtonCardSection alloc];
      v412 = [v4 rfButtonCardSection];
      v413 = [(RFButtonCardSection *)v411 initWithProtobuf:v412];
      [(SFCardSectionValue *)v5 setRfButtonCardSection:v413];
    }

    v414 = [v4 rfBinaryButtonCardSection];

    if (v414)
    {
      v415 = [RFBinaryButtonCardSection alloc];
      v416 = [v4 rfBinaryButtonCardSection];
      v417 = [(RFBinaryButtonCardSection *)v415 initWithProtobuf:v416];
      [(SFCardSectionValue *)v5 setRfBinaryButtonCardSection:v417];
    }

    v418 = [v4 rfReferenceCenteredCardSection];

    if (v418)
    {
      v419 = [RFReferenceCenteredCardSection alloc];
      v420 = [v4 rfReferenceCenteredCardSection];
      v421 = [(RFReferenceCenteredCardSection *)v419 initWithProtobuf:v420];
      [(SFCardSectionValue *)v5 setRfReferenceCenteredCardSection:v421];
    }

    v422 = [v4 rfSecondaryHeaderStandardCardSection];

    if (v422)
    {
      v423 = [RFSecondaryHeaderStandardCardSection alloc];
      v424 = [v4 rfSecondaryHeaderStandardCardSection];
      v425 = [(RFSecondaryHeaderStandardCardSection *)v423 initWithProtobuf:v424];
      [(SFCardSectionValue *)v5 setRfSecondaryHeaderStandardCardSection:v425];
    }

    v426 = [v4 rfSecondaryHeaderEmphasizedCardSection];

    if (v426)
    {
      v427 = [RFSecondaryHeaderEmphasizedCardSection alloc];
      v428 = [v4 rfSecondaryHeaderEmphasizedCardSection];
      v429 = [(RFSecondaryHeaderEmphasizedCardSection *)v427 initWithProtobuf:v428];
      [(SFCardSectionValue *)v5 setRfSecondaryHeaderEmphasizedCardSection:v429];
    }

    v430 = [v4 rfMapCardSection];

    if (v430)
    {
      v431 = [RFMapCardSection alloc];
      v432 = [v4 rfMapCardSection];
      v433 = [(RFMapCardSection *)v431 initWithProtobuf:v432];
      [(SFCardSectionValue *)v5 setRfMapCardSection:v433];
    }

    v434 = [v4 rfReferenceStandardCardSection];

    if (v434)
    {
      v435 = [RFReferenceStandardCardSection alloc];
      v436 = [v4 rfReferenceStandardCardSection];
      v437 = [(RFReferenceStandardCardSection *)v435 initWithProtobuf:v436];
      [(SFCardSectionValue *)v5 setRfReferenceStandardCardSection:v437];
    }

    v438 = [v4 rfMultiButtonCardSection];

    if (v438)
    {
      v439 = [RFMultiButtonCardSection alloc];
      v440 = [v4 rfMultiButtonCardSection];
      v441 = [(RFMultiButtonCardSection *)v439 initWithProtobuf:v440];
      [(SFCardSectionValue *)v5 setRfMultiButtonCardSection:v441];
    }

    v442 = [v4 rfDisambiguationTitleCardSection];

    if (v442)
    {
      v443 = [RFDisambiguationTitleCardSection alloc];
      v444 = [v4 rfDisambiguationTitleCardSection];
      v445 = [(RFDisambiguationTitleCardSection *)v443 initWithProtobuf:v444];
      [(SFCardSectionValue *)v5 setRfDisambiguationTitleCardSection:v445];
    }

    v446 = [v4 rfSummaryItemExpandableCardSection];

    if (v446)
    {
      v447 = [RFSummaryItemExpandableCardSection alloc];
      v448 = [v4 rfSummaryItemExpandableCardSection];
      v449 = [(RFSummaryItemExpandableCardSection *)v447 initWithProtobuf:v448];
      [(SFCardSectionValue *)v5 setRfSummaryItemExpandableCardSection:v449];
    }

    v450 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v225 = [(SFCardSectionValue *)self appLinkCardSection];
  v3 = [v225 hash];
  v224 = [(SFCardSectionValue *)self descriptionCardSection];
  v4 = [v224 hash] ^ v3;
  v223 = [(SFCardSectionValue *)self keyValueDataCardSection];
  v5 = [v223 hash];
  v222 = [(SFCardSectionValue *)self mapCardSection];
  v6 = v4 ^ v5 ^ [v222 hash];
  v221 = [(SFCardSectionValue *)self mediaInfoCardSection];
  v7 = [v221 hash];
  v220 = [(SFCardSectionValue *)self mediaPlayerCardSection];
  v8 = v7 ^ [v220 hash];
  v219 = [(SFCardSectionValue *)self nowPlayingCardSection];
  v9 = v6 ^ v8 ^ [v219 hash];
  v218 = [(SFCardSectionValue *)self richTitleCardSection];
  v10 = [v218 hash];
  v217 = [(SFCardSectionValue *)self rowCardSection];
  v11 = v10 ^ [v217 hash];
  v216 = [(SFCardSectionValue *)self scoreboardCardSection];
  v12 = v11 ^ [v216 hash];
  v215 = [(SFCardSectionValue *)self socialMediaPostCardSection];
  v13 = v9 ^ v12 ^ [v215 hash];
  v214 = [(SFCardSectionValue *)self stockChartCardSection];
  v14 = [v214 hash];
  v213 = [(SFCardSectionValue *)self tableHeaderRowCardSection];
  v15 = v14 ^ [v213 hash];
  v212 = [(SFCardSectionValue *)self tableRowCardSection];
  v16 = v15 ^ [v212 hash];
  v211 = [(SFCardSectionValue *)self textColumnsCardSection];
  v17 = v16 ^ [v211 hash];
  v210 = [(SFCardSectionValue *)self titleCardSection];
  v18 = v13 ^ v17 ^ [v210 hash];
  v209 = [(SFCardSectionValue *)self trackListCardSection];
  v19 = [v209 hash];
  v208 = [(SFCardSectionValue *)self audioPlaybackCardSection];
  v20 = v19 ^ [v208 hash];
  v207 = [(SFCardSectionValue *)self flightCardSection];
  v21 = v20 ^ [v207 hash];
  v206 = [(SFCardSectionValue *)self activityIndicatorCardSection];
  v22 = v21 ^ [v206 hash];
  v205 = [(SFCardSectionValue *)self webCardSection];
  v23 = v22 ^ [v205 hash];
  v204 = [(SFCardSectionValue *)self messageCardSection];
  v24 = v18 ^ v23 ^ [v204 hash];
  v203 = [(SFCardSectionValue *)self detailedRowCardSection];
  v25 = [v203 hash];
  v202 = [(SFCardSectionValue *)self imagesCardSection];
  v26 = v25 ^ [v202 hash];
  v201 = [(SFCardSectionValue *)self suggestionCardSection];
  v27 = v26 ^ [v201 hash];
  v200 = [(SFCardSectionValue *)self selectableGridCardSection];
  v28 = v27 ^ [v200 hash];
  v199 = [(SFCardSectionValue *)self sectionHeaderCardSection];
  v29 = v28 ^ [v199 hash];
  v198 = [(SFCardSectionValue *)self metaInfoCardSection];
  v30 = v29 ^ [v198 hash];
  v197 = [(SFCardSectionValue *)self watchListCardSection];
  v31 = v24 ^ v30 ^ [v197 hash];
  v196 = [(SFCardSectionValue *)self mapsDetailedRowCardSection];
  v32 = [v196 hash];
  v195 = [(SFCardSectionValue *)self buttonCardSection];
  v33 = v32 ^ [v195 hash];
  v194 = [(SFCardSectionValue *)self horizontalButtonCardSection];
  v34 = v33 ^ [v194 hash];
  v193 = [(SFCardSectionValue *)self verticalLayoutCardSection];
  v35 = v34 ^ [v193 hash];
  v192 = [(SFCardSectionValue *)self productCardSection];
  v36 = v35 ^ [v192 hash];
  v191 = [(SFCardSectionValue *)self horizontalScrollCardSection];
  v37 = v36 ^ [v191 hash];
  v190 = [(SFCardSectionValue *)self mediaRemoteControlCardSection];
  v38 = v37 ^ [v190 hash];
  v189 = [(SFCardSectionValue *)self mapPlaceCardSection];
  v39 = v31 ^ v38 ^ [v189 hash];
  v188 = [(SFCardSectionValue *)self compactRowCardSection];
  v40 = [v188 hash];
  v187 = [(SFCardSectionValue *)self worldMapCardSection];
  v41 = v40 ^ [v187 hash];
  v186 = [(SFCardSectionValue *)self attributionFooterCardSection];
  v42 = v41 ^ [v186 hash];
  v185 = [(SFCardSectionValue *)self gridCardSection];
  v43 = v42 ^ [v185 hash];
  v184 = [(SFCardSectionValue *)self personHeaderCardSection];
  v44 = v43 ^ [v184 hash];
  v183 = [(SFCardSectionValue *)self colorBarCardSection];
  v45 = v44 ^ [v183 hash];
  v182 = [(SFCardSectionValue *)self splitCardSection];
  v46 = v45 ^ [v182 hash];
  v181 = [(SFCardSectionValue *)self linkPresentationCardSection];
  v47 = v46 ^ [v181 hash];
  v180 = [(SFCardSectionValue *)self findMyCardSection];
  v48 = v39 ^ v47 ^ [v180 hash];
  v179 = [(SFCardSectionValue *)self heroCardSection];
  v49 = [v179 hash];
  v178 = [(SFCardSectionValue *)self newsCardSection];
  v50 = v49 ^ [v178 hash];
  v177 = [(SFCardSectionValue *)self miniCardSection];
  v51 = v50 ^ [v177 hash];
  v176 = [(SFCardSectionValue *)self infoCardSection];
  v52 = v51 ^ [v176 hash];
  v175 = [(SFCardSectionValue *)self collectionCardSection];
  v53 = v52 ^ [v175 hash];
  v174 = [(SFCardSectionValue *)self combinedCardSection];
  v54 = v53 ^ [v174 hash];
  v173 = [(SFCardSectionValue *)self responseWrapperCardSection];
  v55 = v54 ^ [v173 hash];
  v172 = [(SFCardSectionValue *)self listenToCardSection];
  v56 = v55 ^ [v172 hash];
  v171 = [(SFCardSectionValue *)self watchNowCardSection];
  v57 = v56 ^ [v171 hash];
  v170 = [(SFCardSectionValue *)self strokeAnimationCardSection];
  v58 = v48 ^ v57 ^ [v170 hash];
  v169 = [(SFCardSectionValue *)self buttonListCardSection];
  v59 = [v169 hash];
  v168 = [(SFCardSectionValue *)self commandRowCardSection];
  v60 = v59 ^ [v168 hash];
  v167 = [(SFCardSectionValue *)self leadingTrailingCardSection];
  v61 = v60 ^ [v167 hash];
  v166 = [(SFCardSectionValue *)self heroTitleCardSection];
  v62 = v61 ^ [v166 hash];
  v165 = [(SFCardSectionValue *)self archiveViewCardSection];
  v63 = v62 ^ [v165 hash];
  v164 = [(SFCardSectionValue *)self appIconCardSection];
  v64 = v63 ^ [v164 hash];
  v163 = [(SFCardSectionValue *)self largeTitleDetailedRowCardSection];
  v65 = v64 ^ [v163 hash];
  v162 = [(SFCardSectionValue *)self safariTableOfContentsCardSection];
  v66 = v65 ^ [v162 hash];
  v161 = [(SFCardSectionValue *)self rfSummaryItemShortNumberCardSection];
  v67 = v66 ^ [v161 hash];
  v160 = [(SFCardSectionValue *)self rfSummaryItemTextCardSection];
  v68 = v67 ^ [v160 hash];
  v159 = [(SFCardSectionValue *)self rfSummaryItemStandardCardSection];
  v69 = v58 ^ v68 ^ [v159 hash];
  v158 = [(SFCardSectionValue *)self rfFactItemShortNumberCardSection];
  v70 = [v158 hash];
  v157 = [(SFCardSectionValue *)self rfFactItemStandardCardSection];
  v71 = v70 ^ [v157 hash];
  v156 = [(SFCardSectionValue *)self rfLongItemStandardCardSection];
  v72 = v71 ^ [v156 hash];
  v155 = [(SFCardSectionValue *)self rfPrimaryHeaderRichCardSection];
  v73 = v72 ^ [v155 hash];
  v154 = [(SFCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
  v74 = v73 ^ [v154 hash];
  v153 = [(SFCardSectionValue *)self rfReferenceFootnoteCardSection];
  v75 = v74 ^ [v153 hash];
  v152 = [(SFCardSectionValue *)self rfReferenceRichCardSection];
  v76 = v75 ^ [v152 hash];
  v151 = [(SFCardSectionValue *)self rfSimpleItemRichCardSection];
  v77 = v76 ^ [v151 hash];
  v150 = [(SFCardSectionValue *)self rfSimpleItemStandardCardSection];
  v78 = v77 ^ [v150 hash];
  v149 = [(SFCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
  v79 = v78 ^ [v149 hash];
  v148 = [(SFCardSectionValue *)self rfExpandableStandardCardSection];
  v80 = v79 ^ [v148 hash];
  v146 = [(SFCardSectionValue *)self rfFactItemButtonCardSection];
  v81 = v69 ^ v80 ^ [v146 hash];
  v145 = [(SFCardSectionValue *)self rfFactItemHeroNumberCardSection];
  v82 = [v145 hash];
  v144 = [(SFCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
  v83 = v82 ^ [v144 hash];
  v143 = [(SFCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
  v84 = v83 ^ [v143 hash];
  v142 = [(SFCardSectionValue *)self rfSimpleItemPlayerCardSection];
  v85 = v84 ^ [v142 hash];
  v141 = [(SFCardSectionValue *)self rfSummaryItemPairCardSection];
  v86 = v85 ^ [v141 hash];
  v140 = [(SFCardSectionValue *)self rfSummaryItemPairNumberCardSection];
  v87 = v86 ^ [v140 hash];
  v139 = [(SFCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
  v88 = v87 ^ [v139 hash];
  v138 = [(SFCardSectionValue *)self rfFactItemDetailedNumberCardSection];
  v89 = v88 ^ [v138 hash];
  v137 = [(SFCardSectionValue *)self rfFactItemHeroButtonCardSection];
  v90 = v89 ^ [v137 hash];
  v136 = [(SFCardSectionValue *)self rfFactItemImageRightCardSection];
  v91 = v90 ^ [v136 hash];
  v135 = [(SFCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
  v92 = v91 ^ [v135 hash];
  v134 = [(SFCardSectionValue *)self rfTableHeaderCardSection];
  v93 = v92 ^ [v134 hash];
  v133 = [(SFCardSectionValue *)self rfTableRowCardSection];
  v94 = v81 ^ v93 ^ [v133 hash];
  v132 = [(SFCardSectionValue *)self rfSimpleItemVisualElementCardSection];
  v95 = [v132 hash];
  v131 = [(SFCardSectionValue *)self rfSummaryItemPlayerCardSection];
  v96 = v95 ^ [v131 hash];
  v130 = [(SFCardSectionValue *)self rfSummaryItemImageRightCardSection];
  v97 = v96 ^ [v130 hash];
  v129 = [(SFCardSectionValue *)self rfSummaryItemButtonCardSection];
  v98 = v97 ^ [v129 hash];
  v128 = [(SFCardSectionValue *)self rfSimpleItemReverseRichCardSection];
  v99 = v98 ^ [v128 hash];
  v127 = [(SFCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
  v100 = v99 ^ [v127 hash];
  v126 = [(SFCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
  v101 = v100 ^ [v126 hash];
  v125 = [(SFCardSectionValue *)self rfReferenceItemLogoCardSection];
  v102 = v101 ^ [v125 hash];
  v124 = [(SFCardSectionValue *)self rfReferenceItemButtonCardSection];
  v103 = v102 ^ [v124 hash];
  v123 = [(SFCardSectionValue *)self rfButtonCardSection];
  v104 = v103 ^ [v123 hash];
  v105 = [(SFCardSectionValue *)self rfBinaryButtonCardSection];
  v106 = v104 ^ [v105 hash];
  v107 = [(SFCardSectionValue *)self rfReferenceCenteredCardSection];
  v108 = v106 ^ [v107 hash];
  v109 = [(SFCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
  v110 = v108 ^ [v109 hash];
  v111 = [(SFCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
  v147 = v94 ^ v110 ^ [v111 hash];
  v112 = [(SFCardSectionValue *)self rfMapCardSection];
  v113 = [v112 hash];
  v114 = [(SFCardSectionValue *)self rfReferenceStandardCardSection];
  v115 = v113 ^ [v114 hash];
  v116 = [(SFCardSectionValue *)self rfMultiButtonCardSection];
  v117 = v115 ^ [v116 hash];
  v118 = [(SFCardSectionValue *)self rfDisambiguationTitleCardSection];
  v119 = v117 ^ [v118 hash];
  v120 = [(SFCardSectionValue *)self rfSummaryItemExpandableCardSection];
  v121 = v119 ^ [v120 hash];

  return v147 ^ v121;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFCardSectionValue *)self appLinkCardSection];
  v6 = [v5 copy];
  [v4 setAppLinkCardSection:v6];

  v7 = [(SFCardSectionValue *)self descriptionCardSection];
  v8 = [v7 copy];
  [v4 setDescriptionCardSection:v8];

  v9 = [(SFCardSectionValue *)self keyValueDataCardSection];
  v10 = [v9 copy];
  [v4 setKeyValueDataCardSection:v10];

  v11 = [(SFCardSectionValue *)self mapCardSection];
  v12 = [v11 copy];
  [v4 setMapCardSection:v12];

  v13 = [(SFCardSectionValue *)self mediaInfoCardSection];
  v14 = [v13 copy];
  [v4 setMediaInfoCardSection:v14];

  v15 = [(SFCardSectionValue *)self mediaPlayerCardSection];
  v16 = [v15 copy];
  [v4 setMediaPlayerCardSection:v16];

  v17 = [(SFCardSectionValue *)self nowPlayingCardSection];
  v18 = [v17 copy];
  [v4 setNowPlayingCardSection:v18];

  v19 = [(SFCardSectionValue *)self richTitleCardSection];
  v20 = [v19 copy];
  [v4 setRichTitleCardSection:v20];

  v21 = [(SFCardSectionValue *)self rowCardSection];
  v22 = [v21 copy];
  [v4 setRowCardSection:v22];

  v23 = [(SFCardSectionValue *)self scoreboardCardSection];
  v24 = [v23 copy];
  [v4 setScoreboardCardSection:v24];

  v25 = [(SFCardSectionValue *)self socialMediaPostCardSection];
  v26 = [v25 copy];
  [v4 setSocialMediaPostCardSection:v26];

  v27 = [(SFCardSectionValue *)self stockChartCardSection];
  v28 = [v27 copy];
  [v4 setStockChartCardSection:v28];

  v29 = [(SFCardSectionValue *)self tableHeaderRowCardSection];
  v30 = [v29 copy];
  [v4 setTableHeaderRowCardSection:v30];

  v31 = [(SFCardSectionValue *)self tableRowCardSection];
  v32 = [v31 copy];
  [v4 setTableRowCardSection:v32];

  v33 = [(SFCardSectionValue *)self textColumnsCardSection];
  v34 = [v33 copy];
  [v4 setTextColumnsCardSection:v34];

  v35 = [(SFCardSectionValue *)self titleCardSection];
  v36 = [v35 copy];
  [v4 setTitleCardSection:v36];

  v37 = [(SFCardSectionValue *)self trackListCardSection];
  v38 = [v37 copy];
  [v4 setTrackListCardSection:v38];

  v39 = [(SFCardSectionValue *)self audioPlaybackCardSection];
  v40 = [v39 copy];
  [v4 setAudioPlaybackCardSection:v40];

  v41 = [(SFCardSectionValue *)self flightCardSection];
  v42 = [v41 copy];
  [v4 setFlightCardSection:v42];

  v43 = [(SFCardSectionValue *)self activityIndicatorCardSection];
  v44 = [v43 copy];
  [v4 setActivityIndicatorCardSection:v44];

  v45 = [(SFCardSectionValue *)self webCardSection];
  v46 = [v45 copy];
  [v4 setWebCardSection:v46];

  v47 = [(SFCardSectionValue *)self messageCardSection];
  v48 = [v47 copy];
  [v4 setMessageCardSection:v48];

  v49 = [(SFCardSectionValue *)self detailedRowCardSection];
  v50 = [v49 copy];
  [v4 setDetailedRowCardSection:v50];

  v51 = [(SFCardSectionValue *)self imagesCardSection];
  v52 = [v51 copy];
  [v4 setImagesCardSection:v52];

  v53 = [(SFCardSectionValue *)self suggestionCardSection];
  v54 = [v53 copy];
  [v4 setSuggestionCardSection:v54];

  v55 = [(SFCardSectionValue *)self selectableGridCardSection];
  v56 = [v55 copy];
  [v4 setSelectableGridCardSection:v56];

  v57 = [(SFCardSectionValue *)self sectionHeaderCardSection];
  v58 = [v57 copy];
  [v4 setSectionHeaderCardSection:v58];

  v59 = [(SFCardSectionValue *)self metaInfoCardSection];
  v60 = [v59 copy];
  [v4 setMetaInfoCardSection:v60];

  v61 = [(SFCardSectionValue *)self watchListCardSection];
  v62 = [v61 copy];
  [v4 setWatchListCardSection:v62];

  v63 = [(SFCardSectionValue *)self mapsDetailedRowCardSection];
  v64 = [v63 copy];
  [v4 setMapsDetailedRowCardSection:v64];

  v65 = [(SFCardSectionValue *)self buttonCardSection];
  v66 = [v65 copy];
  [v4 setButtonCardSection:v66];

  v67 = [(SFCardSectionValue *)self horizontalButtonCardSection];
  v68 = [v67 copy];
  [v4 setHorizontalButtonCardSection:v68];

  v69 = [(SFCardSectionValue *)self verticalLayoutCardSection];
  v70 = [v69 copy];
  [v4 setVerticalLayoutCardSection:v70];

  v71 = [(SFCardSectionValue *)self productCardSection];
  v72 = [v71 copy];
  [v4 setProductCardSection:v72];

  v73 = [(SFCardSectionValue *)self horizontalScrollCardSection];
  v74 = [v73 copy];
  [v4 setHorizontalScrollCardSection:v74];

  v75 = [(SFCardSectionValue *)self mediaRemoteControlCardSection];
  v76 = [v75 copy];
  [v4 setMediaRemoteControlCardSection:v76];

  v77 = [(SFCardSectionValue *)self mapPlaceCardSection];
  v78 = [v77 copy];
  [v4 setMapPlaceCardSection:v78];

  v79 = [(SFCardSectionValue *)self compactRowCardSection];
  v80 = [v79 copy];
  [v4 setCompactRowCardSection:v80];

  v81 = [(SFCardSectionValue *)self worldMapCardSection];
  v82 = [v81 copy];
  [v4 setWorldMapCardSection:v82];

  v83 = [(SFCardSectionValue *)self attributionFooterCardSection];
  v84 = [v83 copy];
  [v4 setAttributionFooterCardSection:v84];

  v85 = [(SFCardSectionValue *)self gridCardSection];
  v86 = [v85 copy];
  [v4 setGridCardSection:v86];

  v87 = [(SFCardSectionValue *)self personHeaderCardSection];
  v88 = [v87 copy];
  [v4 setPersonHeaderCardSection:v88];

  v89 = [(SFCardSectionValue *)self colorBarCardSection];
  v90 = [v89 copy];
  [v4 setColorBarCardSection:v90];

  v91 = [(SFCardSectionValue *)self splitCardSection];
  v92 = [v91 copy];
  [v4 setSplitCardSection:v92];

  v93 = [(SFCardSectionValue *)self linkPresentationCardSection];
  v94 = [v93 copy];
  [v4 setLinkPresentationCardSection:v94];

  v95 = [(SFCardSectionValue *)self findMyCardSection];
  v96 = [v95 copy];
  [v4 setFindMyCardSection:v96];

  v97 = [(SFCardSectionValue *)self heroCardSection];
  v98 = [v97 copy];
  [v4 setHeroCardSection:v98];

  v99 = [(SFCardSectionValue *)self newsCardSection];
  v100 = [v99 copy];
  [v4 setNewsCardSection:v100];

  v101 = [(SFCardSectionValue *)self miniCardSection];
  v102 = [v101 copy];
  [v4 setMiniCardSection:v102];

  v103 = [(SFCardSectionValue *)self infoCardSection];
  v104 = [v103 copy];
  [v4 setInfoCardSection:v104];

  v105 = [(SFCardSectionValue *)self collectionCardSection];
  v106 = [v105 copy];
  [v4 setCollectionCardSection:v106];

  v107 = [(SFCardSectionValue *)self combinedCardSection];
  v108 = [v107 copy];
  [v4 setCombinedCardSection:v108];

  v109 = [(SFCardSectionValue *)self responseWrapperCardSection];
  v110 = [v109 copy];
  [v4 setResponseWrapperCardSection:v110];

  v111 = [(SFCardSectionValue *)self listenToCardSection];
  v112 = [v111 copy];
  [v4 setListenToCardSection:v112];

  v113 = [(SFCardSectionValue *)self watchNowCardSection];
  v114 = [v113 copy];
  [v4 setWatchNowCardSection:v114];

  v115 = [(SFCardSectionValue *)self strokeAnimationCardSection];
  v116 = [v115 copy];
  [v4 setStrokeAnimationCardSection:v116];

  v117 = [(SFCardSectionValue *)self buttonListCardSection];
  v118 = [v117 copy];
  [v4 setButtonListCardSection:v118];

  v119 = [(SFCardSectionValue *)self commandRowCardSection];
  v120 = [v119 copy];
  [v4 setCommandRowCardSection:v120];

  v121 = [(SFCardSectionValue *)self leadingTrailingCardSection];
  v122 = [v121 copy];
  [v4 setLeadingTrailingCardSection:v122];

  v123 = [(SFCardSectionValue *)self heroTitleCardSection];
  v124 = [v123 copy];
  [v4 setHeroTitleCardSection:v124];

  v125 = [(SFCardSectionValue *)self archiveViewCardSection];
  v126 = [v125 copy];
  [v4 setArchiveViewCardSection:v126];

  v127 = [(SFCardSectionValue *)self appIconCardSection];
  v128 = [v127 copy];
  [v4 setAppIconCardSection:v128];

  v129 = [(SFCardSectionValue *)self largeTitleDetailedRowCardSection];
  v130 = [v129 copy];
  [v4 setLargeTitleDetailedRowCardSection:v130];

  v131 = [(SFCardSectionValue *)self safariTableOfContentsCardSection];
  v132 = [v131 copy];
  [v4 setSafariTableOfContentsCardSection:v132];

  v133 = [(SFCardSectionValue *)self rfSummaryItemShortNumberCardSection];
  v134 = [v133 copy];
  [v4 setRfSummaryItemShortNumberCardSection:v134];

  v135 = [(SFCardSectionValue *)self rfSummaryItemTextCardSection];
  v136 = [v135 copy];
  [v4 setRfSummaryItemTextCardSection:v136];

  v137 = [(SFCardSectionValue *)self rfSummaryItemStandardCardSection];
  v138 = [v137 copy];
  [v4 setRfSummaryItemStandardCardSection:v138];

  v139 = [(SFCardSectionValue *)self rfFactItemShortNumberCardSection];
  v140 = [v139 copy];
  [v4 setRfFactItemShortNumberCardSection:v140];

  v141 = [(SFCardSectionValue *)self rfFactItemStandardCardSection];
  v142 = [v141 copy];
  [v4 setRfFactItemStandardCardSection:v142];

  v143 = [(SFCardSectionValue *)self rfLongItemStandardCardSection];
  v144 = [v143 copy];
  [v4 setRfLongItemStandardCardSection:v144];

  v145 = [(SFCardSectionValue *)self rfPrimaryHeaderRichCardSection];
  v146 = [v145 copy];
  [v4 setRfPrimaryHeaderRichCardSection:v146];

  v147 = [(SFCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
  v148 = [v147 copy];
  [v4 setRfPrimaryHeaderStandardCardSection:v148];

  v149 = [(SFCardSectionValue *)self rfReferenceFootnoteCardSection];
  v150 = [v149 copy];
  [v4 setRfReferenceFootnoteCardSection:v150];

  v151 = [(SFCardSectionValue *)self rfReferenceRichCardSection];
  v152 = [v151 copy];
  [v4 setRfReferenceRichCardSection:v152];

  v153 = [(SFCardSectionValue *)self rfSimpleItemRichCardSection];
  v154 = [v153 copy];
  [v4 setRfSimpleItemRichCardSection:v154];

  v155 = [(SFCardSectionValue *)self rfSimpleItemStandardCardSection];
  v156 = [v155 copy];
  [v4 setRfSimpleItemStandardCardSection:v156];

  v157 = [(SFCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
  v158 = [v157 copy];
  [v4 setRfSummaryItemAlignedTextCardSection:v158];

  v159 = [(SFCardSectionValue *)self rfExpandableStandardCardSection];
  v160 = [v159 copy];
  [v4 setRfExpandableStandardCardSection:v160];

  v161 = [(SFCardSectionValue *)self rfFactItemButtonCardSection];
  v162 = [v161 copy];
  [v4 setRfFactItemButtonCardSection:v162];

  v163 = [(SFCardSectionValue *)self rfFactItemHeroNumberCardSection];
  v164 = [v163 copy];
  [v4 setRfFactItemHeroNumberCardSection:v164];

  v165 = [(SFCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
  v166 = [v165 copy];
  [v4 setRfPrimaryHeaderMarqueeCardSection:v166];

  v167 = [(SFCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
  v168 = [v167 copy];
  [v4 setRfSummaryItemDetailedTextCardSection:v168];

  v169 = [(SFCardSectionValue *)self rfSimpleItemPlayerCardSection];
  v170 = [v169 copy];
  [v4 setRfSimpleItemPlayerCardSection:v170];

  v171 = [(SFCardSectionValue *)self rfSummaryItemPairCardSection];
  v172 = [v171 copy];
  [v4 setRfSummaryItemPairCardSection:v172];

  v173 = [(SFCardSectionValue *)self rfSummaryItemPairNumberCardSection];
  v174 = [v173 copy];
  [v4 setRfSummaryItemPairNumberCardSection:v174];

  v175 = [(SFCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
  v176 = [v175 copy];
  [v4 setRfFactItemShortHeroNumberCardSection:v176];

  v177 = [(SFCardSectionValue *)self rfFactItemDetailedNumberCardSection];
  v178 = [v177 copy];
  [v4 setRfFactItemDetailedNumberCardSection:v178];

  v179 = [(SFCardSectionValue *)self rfFactItemHeroButtonCardSection];
  v180 = [v179 copy];
  [v4 setRfFactItemHeroButtonCardSection:v180];

  v181 = [(SFCardSectionValue *)self rfFactItemImageRightCardSection];
  v182 = [v181 copy];
  [v4 setRfFactItemImageRightCardSection:v182];

  v183 = [(SFCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
  v184 = [v183 copy];
  [v4 setRfSummaryItemSwitchV2CardSection:v184];

  v185 = [(SFCardSectionValue *)self rfTableHeaderCardSection];
  v186 = [v185 copy];
  [v4 setRfTableHeaderCardSection:v186];

  v187 = [(SFCardSectionValue *)self rfTableRowCardSection];
  v188 = [v187 copy];
  [v4 setRfTableRowCardSection:v188];

  v189 = [(SFCardSectionValue *)self rfSimpleItemVisualElementCardSection];
  v190 = [v189 copy];
  [v4 setRfSimpleItemVisualElementCardSection:v190];

  v191 = [(SFCardSectionValue *)self rfSummaryItemPlayerCardSection];
  v192 = [v191 copy];
  [v4 setRfSummaryItemPlayerCardSection:v192];

  v193 = [(SFCardSectionValue *)self rfSummaryItemImageRightCardSection];
  v194 = [v193 copy];
  [v4 setRfSummaryItemImageRightCardSection:v194];

  v195 = [(SFCardSectionValue *)self rfSummaryItemButtonCardSection];
  v196 = [v195 copy];
  [v4 setRfSummaryItemButtonCardSection:v196];

  v197 = [(SFCardSectionValue *)self rfSimpleItemReverseRichCardSection];
  v198 = [v197 copy];
  [v4 setRfSimpleItemReverseRichCardSection:v198];

  v199 = [(SFCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
  v200 = [v199 copy];
  [v4 setRfSimpleItemRichSearchResultCardSection:v200];

  v201 = [(SFCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
  v202 = [v201 copy];
  [v4 setRfPrimaryHeaderStackedImageCardSection:v202];

  v203 = [(SFCardSectionValue *)self rfReferenceItemLogoCardSection];
  v204 = [v203 copy];
  [v4 setRfReferenceItemLogoCardSection:v204];

  v205 = [(SFCardSectionValue *)self rfReferenceItemButtonCardSection];
  v206 = [v205 copy];
  [v4 setRfReferenceItemButtonCardSection:v206];

  v207 = [(SFCardSectionValue *)self rfButtonCardSection];
  v208 = [v207 copy];
  [v4 setRfButtonCardSection:v208];

  v209 = [(SFCardSectionValue *)self rfBinaryButtonCardSection];
  v210 = [v209 copy];
  [v4 setRfBinaryButtonCardSection:v210];

  v211 = [(SFCardSectionValue *)self rfReferenceCenteredCardSection];
  v212 = [v211 copy];
  [v4 setRfReferenceCenteredCardSection:v212];

  v213 = [(SFCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
  v214 = [v213 copy];
  [v4 setRfSecondaryHeaderStandardCardSection:v214];

  v215 = [(SFCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
  v216 = [v215 copy];
  [v4 setRfSecondaryHeaderEmphasizedCardSection:v216];

  v217 = [(SFCardSectionValue *)self rfMapCardSection];
  v218 = [v217 copy];
  [v4 setRfMapCardSection:v218];

  v219 = [(SFCardSectionValue *)self rfReferenceStandardCardSection];
  v220 = [v219 copy];
  [v4 setRfReferenceStandardCardSection:v220];

  v221 = [(SFCardSectionValue *)self rfMultiButtonCardSection];
  v222 = [v221 copy];
  [v4 setRfMultiButtonCardSection:v222];

  v223 = [(SFCardSectionValue *)self rfDisambiguationTitleCardSection];
  v224 = [v223 copy];
  [v4 setRfDisambiguationTitleCardSection:v224];

  v225 = [(SFCardSectionValue *)self rfSummaryItemExpandableCardSection];
  v226 = [v225 copy];
  [v4 setRfSummaryItemExpandableCardSection:v226];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCardSectionValue alloc] initWithFacade:self];
  v3 = [(_SFPBCardSectionValue *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCardSectionValue alloc] initWithFacade:self];
  v3 = [(_SFPBCardSectionValue *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCardSectionValue alloc] initWithFacade:self];
  v5 = [(_SFPBCardSectionValue *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCardSectionValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCardSectionValue alloc] initWithData:v5];
  v7 = [(SFCardSectionValue *)self initWithProtobuf:v6];

  return v7;
}

@end