@interface _SFPBCardSectionValue
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCardSectionValue)initWithDictionary:(id)dictionary;
- (_SFPBCardSectionValue)initWithFacade:(id)facade;
- (_SFPBCardSectionValue)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCardSectionValue

- (_SFPBCardSectionValue)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCardSectionValue *)self init];

  if (v5)
  {
    appLinkCardSection = [facadeCopy appLinkCardSection];

    if (appLinkCardSection)
    {
      v7 = [_SFPBAppLinkCardSection alloc];
      appLinkCardSection2 = [facadeCopy appLinkCardSection];
      v9 = [(_SFPBAppLinkCardSection *)v7 initWithFacade:appLinkCardSection2];
      [(_SFPBCardSectionValue *)v5 setAppLinkCardSection:v9];
    }

    descriptionCardSection = [facadeCopy descriptionCardSection];

    if (descriptionCardSection)
    {
      v11 = [_SFPBDescriptionCardSection alloc];
      descriptionCardSection2 = [facadeCopy descriptionCardSection];
      v13 = [(_SFPBDescriptionCardSection *)v11 initWithFacade:descriptionCardSection2];
      [(_SFPBCardSectionValue *)v5 setDescriptionCardSection:v13];
    }

    keyValueDataCardSection = [facadeCopy keyValueDataCardSection];

    if (keyValueDataCardSection)
    {
      v15 = [_SFPBKeyValueDataCardSection alloc];
      keyValueDataCardSection2 = [facadeCopy keyValueDataCardSection];
      v17 = [(_SFPBKeyValueDataCardSection *)v15 initWithFacade:keyValueDataCardSection2];
      [(_SFPBCardSectionValue *)v5 setKeyValueDataCardSection:v17];
    }

    mapCardSection = [facadeCopy mapCardSection];

    if (mapCardSection)
    {
      v19 = [_SFPBMapCardSection alloc];
      mapCardSection2 = [facadeCopy mapCardSection];
      v21 = [(_SFPBMapCardSection *)v19 initWithFacade:mapCardSection2];
      [(_SFPBCardSectionValue *)v5 setMapCardSection:v21];
    }

    mediaInfoCardSection = [facadeCopy mediaInfoCardSection];

    if (mediaInfoCardSection)
    {
      v23 = [_SFPBMediaInfoCardSection alloc];
      mediaInfoCardSection2 = [facadeCopy mediaInfoCardSection];
      v25 = [(_SFPBMediaInfoCardSection *)v23 initWithFacade:mediaInfoCardSection2];
      [(_SFPBCardSectionValue *)v5 setMediaInfoCardSection:v25];
    }

    mediaPlayerCardSection = [facadeCopy mediaPlayerCardSection];

    if (mediaPlayerCardSection)
    {
      v27 = [_SFPBMediaPlayerCardSection alloc];
      mediaPlayerCardSection2 = [facadeCopy mediaPlayerCardSection];
      v29 = [(_SFPBMediaPlayerCardSection *)v27 initWithFacade:mediaPlayerCardSection2];
      [(_SFPBCardSectionValue *)v5 setMediaPlayerCardSection:v29];
    }

    nowPlayingCardSection = [facadeCopy nowPlayingCardSection];

    if (nowPlayingCardSection)
    {
      v31 = [_SFPBNowPlayingCardSection alloc];
      nowPlayingCardSection2 = [facadeCopy nowPlayingCardSection];
      v33 = [(_SFPBNowPlayingCardSection *)v31 initWithFacade:nowPlayingCardSection2];
      [(_SFPBCardSectionValue *)v5 setNowPlayingCardSection:v33];
    }

    richTitleCardSection = [facadeCopy richTitleCardSection];

    if (richTitleCardSection)
    {
      v35 = [_SFPBRichTitleCardSection alloc];
      richTitleCardSection2 = [facadeCopy richTitleCardSection];
      v37 = [(_SFPBRichTitleCardSection *)v35 initWithFacade:richTitleCardSection2];
      [(_SFPBCardSectionValue *)v5 setRichTitleCardSection:v37];
    }

    rowCardSection = [facadeCopy rowCardSection];

    if (rowCardSection)
    {
      v39 = [_SFPBRowCardSection alloc];
      rowCardSection2 = [facadeCopy rowCardSection];
      v41 = [(_SFPBRowCardSection *)v39 initWithFacade:rowCardSection2];
      [(_SFPBCardSectionValue *)v5 setRowCardSection:v41];
    }

    scoreboardCardSection = [facadeCopy scoreboardCardSection];

    if (scoreboardCardSection)
    {
      v43 = [_SFPBScoreboardCardSection alloc];
      scoreboardCardSection2 = [facadeCopy scoreboardCardSection];
      v45 = [(_SFPBScoreboardCardSection *)v43 initWithFacade:scoreboardCardSection2];
      [(_SFPBCardSectionValue *)v5 setScoreboardCardSection:v45];
    }

    socialMediaPostCardSection = [facadeCopy socialMediaPostCardSection];

    if (socialMediaPostCardSection)
    {
      v47 = [_SFPBSocialMediaPostCardSection alloc];
      socialMediaPostCardSection2 = [facadeCopy socialMediaPostCardSection];
      v49 = [(_SFPBSocialMediaPostCardSection *)v47 initWithFacade:socialMediaPostCardSection2];
      [(_SFPBCardSectionValue *)v5 setSocialMediaPostCardSection:v49];
    }

    stockChartCardSection = [facadeCopy stockChartCardSection];

    if (stockChartCardSection)
    {
      v51 = [_SFPBStockChartCardSection alloc];
      stockChartCardSection2 = [facadeCopy stockChartCardSection];
      v53 = [(_SFPBStockChartCardSection *)v51 initWithFacade:stockChartCardSection2];
      [(_SFPBCardSectionValue *)v5 setStockChartCardSection:v53];
    }

    tableHeaderRowCardSection = [facadeCopy tableHeaderRowCardSection];

    if (tableHeaderRowCardSection)
    {
      v55 = [_SFPBTableHeaderRowCardSection alloc];
      tableHeaderRowCardSection2 = [facadeCopy tableHeaderRowCardSection];
      v57 = [(_SFPBTableHeaderRowCardSection *)v55 initWithFacade:tableHeaderRowCardSection2];
      [(_SFPBCardSectionValue *)v5 setTableHeaderRowCardSection:v57];
    }

    tableRowCardSection = [facadeCopy tableRowCardSection];

    if (tableRowCardSection)
    {
      v59 = [_SFPBTableRowCardSection alloc];
      tableRowCardSection2 = [facadeCopy tableRowCardSection];
      v61 = [(_SFPBTableRowCardSection *)v59 initWithFacade:tableRowCardSection2];
      [(_SFPBCardSectionValue *)v5 setTableRowCardSection:v61];
    }

    textColumnsCardSection = [facadeCopy textColumnsCardSection];

    if (textColumnsCardSection)
    {
      v63 = [_SFPBTextColumnsCardSection alloc];
      textColumnsCardSection2 = [facadeCopy textColumnsCardSection];
      v65 = [(_SFPBTextColumnsCardSection *)v63 initWithFacade:textColumnsCardSection2];
      [(_SFPBCardSectionValue *)v5 setTextColumnsCardSection:v65];
    }

    titleCardSection = [facadeCopy titleCardSection];

    if (titleCardSection)
    {
      v67 = [_SFPBTitleCardSection alloc];
      titleCardSection2 = [facadeCopy titleCardSection];
      v69 = [(_SFPBTitleCardSection *)v67 initWithFacade:titleCardSection2];
      [(_SFPBCardSectionValue *)v5 setTitleCardSection:v69];
    }

    trackListCardSection = [facadeCopy trackListCardSection];

    if (trackListCardSection)
    {
      v71 = [_SFPBTrackListCardSection alloc];
      trackListCardSection2 = [facadeCopy trackListCardSection];
      v73 = [(_SFPBTrackListCardSection *)v71 initWithFacade:trackListCardSection2];
      [(_SFPBCardSectionValue *)v5 setTrackListCardSection:v73];
    }

    audioPlaybackCardSection = [facadeCopy audioPlaybackCardSection];

    if (audioPlaybackCardSection)
    {
      v75 = [_SFPBAudioPlaybackCardSection alloc];
      audioPlaybackCardSection2 = [facadeCopy audioPlaybackCardSection];
      v77 = [(_SFPBAudioPlaybackCardSection *)v75 initWithFacade:audioPlaybackCardSection2];
      [(_SFPBCardSectionValue *)v5 setAudioPlaybackCardSection:v77];
    }

    flightCardSection = [facadeCopy flightCardSection];

    if (flightCardSection)
    {
      v79 = [_SFPBFlightCardSection alloc];
      flightCardSection2 = [facadeCopy flightCardSection];
      v81 = [(_SFPBFlightCardSection *)v79 initWithFacade:flightCardSection2];
      [(_SFPBCardSectionValue *)v5 setFlightCardSection:v81];
    }

    activityIndicatorCardSection = [facadeCopy activityIndicatorCardSection];

    if (activityIndicatorCardSection)
    {
      v83 = [_SFPBActivityIndicatorCardSection alloc];
      activityIndicatorCardSection2 = [facadeCopy activityIndicatorCardSection];
      v85 = [(_SFPBActivityIndicatorCardSection *)v83 initWithFacade:activityIndicatorCardSection2];
      [(_SFPBCardSectionValue *)v5 setActivityIndicatorCardSection:v85];
    }

    webCardSection = [facadeCopy webCardSection];

    if (webCardSection)
    {
      v87 = [_SFPBWebCardSection alloc];
      webCardSection2 = [facadeCopy webCardSection];
      v89 = [(_SFPBWebCardSection *)v87 initWithFacade:webCardSection2];
      [(_SFPBCardSectionValue *)v5 setWebCardSection:v89];
    }

    messageCardSection = [facadeCopy messageCardSection];

    if (messageCardSection)
    {
      v91 = [_SFPBMessageCardSection alloc];
      messageCardSection2 = [facadeCopy messageCardSection];
      v93 = [(_SFPBMessageCardSection *)v91 initWithFacade:messageCardSection2];
      [(_SFPBCardSectionValue *)v5 setMessageCardSection:v93];
    }

    detailedRowCardSection = [facadeCopy detailedRowCardSection];

    if (detailedRowCardSection)
    {
      v95 = [_SFPBDetailedRowCardSection alloc];
      detailedRowCardSection2 = [facadeCopy detailedRowCardSection];
      v97 = [(_SFPBDetailedRowCardSection *)v95 initWithFacade:detailedRowCardSection2];
      [(_SFPBCardSectionValue *)v5 setDetailedRowCardSection:v97];
    }

    imagesCardSection = [facadeCopy imagesCardSection];

    if (imagesCardSection)
    {
      v99 = [_SFPBImagesCardSection alloc];
      imagesCardSection2 = [facadeCopy imagesCardSection];
      v101 = [(_SFPBImagesCardSection *)v99 initWithFacade:imagesCardSection2];
      [(_SFPBCardSectionValue *)v5 setImagesCardSection:v101];
    }

    suggestionCardSection = [facadeCopy suggestionCardSection];

    if (suggestionCardSection)
    {
      v103 = [_SFPBSuggestionCardSection alloc];
      suggestionCardSection2 = [facadeCopy suggestionCardSection];
      v105 = [(_SFPBSuggestionCardSection *)v103 initWithFacade:suggestionCardSection2];
      [(_SFPBCardSectionValue *)v5 setSuggestionCardSection:v105];
    }

    selectableGridCardSection = [facadeCopy selectableGridCardSection];

    if (selectableGridCardSection)
    {
      v107 = [_SFPBSelectableGridCardSection alloc];
      selectableGridCardSection2 = [facadeCopy selectableGridCardSection];
      v109 = [(_SFPBSelectableGridCardSection *)v107 initWithFacade:selectableGridCardSection2];
      [(_SFPBCardSectionValue *)v5 setSelectableGridCardSection:v109];
    }

    sectionHeaderCardSection = [facadeCopy sectionHeaderCardSection];

    if (sectionHeaderCardSection)
    {
      v111 = [_SFPBSectionHeaderCardSection alloc];
      sectionHeaderCardSection2 = [facadeCopy sectionHeaderCardSection];
      v113 = [(_SFPBSectionHeaderCardSection *)v111 initWithFacade:sectionHeaderCardSection2];
      [(_SFPBCardSectionValue *)v5 setSectionHeaderCardSection:v113];
    }

    metaInfoCardSection = [facadeCopy metaInfoCardSection];

    if (metaInfoCardSection)
    {
      v115 = [_SFPBMetaInfoCardSection alloc];
      metaInfoCardSection2 = [facadeCopy metaInfoCardSection];
      v117 = [(_SFPBMetaInfoCardSection *)v115 initWithFacade:metaInfoCardSection2];
      [(_SFPBCardSectionValue *)v5 setMetaInfoCardSection:v117];
    }

    watchListCardSection = [facadeCopy watchListCardSection];

    if (watchListCardSection)
    {
      v119 = [_SFPBWatchListCardSection alloc];
      watchListCardSection2 = [facadeCopy watchListCardSection];
      v121 = [(_SFPBWatchListCardSection *)v119 initWithFacade:watchListCardSection2];
      [(_SFPBCardSectionValue *)v5 setWatchListCardSection:v121];
    }

    mapsDetailedRowCardSection = [facadeCopy mapsDetailedRowCardSection];

    if (mapsDetailedRowCardSection)
    {
      v123 = [_SFPBMapsDetailedRowCardSection alloc];
      mapsDetailedRowCardSection2 = [facadeCopy mapsDetailedRowCardSection];
      v125 = [(_SFPBMapsDetailedRowCardSection *)v123 initWithFacade:mapsDetailedRowCardSection2];
      [(_SFPBCardSectionValue *)v5 setMapsDetailedRowCardSection:v125];
    }

    buttonCardSection = [facadeCopy buttonCardSection];

    if (buttonCardSection)
    {
      v127 = [_SFPBButtonCardSection alloc];
      buttonCardSection2 = [facadeCopy buttonCardSection];
      v129 = [(_SFPBButtonCardSection *)v127 initWithFacade:buttonCardSection2];
      [(_SFPBCardSectionValue *)v5 setButtonCardSection:v129];
    }

    horizontalButtonCardSection = [facadeCopy horizontalButtonCardSection];

    if (horizontalButtonCardSection)
    {
      v131 = [_SFPBHorizontalButtonCardSection alloc];
      horizontalButtonCardSection2 = [facadeCopy horizontalButtonCardSection];
      v133 = [(_SFPBHorizontalButtonCardSection *)v131 initWithFacade:horizontalButtonCardSection2];
      [(_SFPBCardSectionValue *)v5 setHorizontalButtonCardSection:v133];
    }

    verticalLayoutCardSection = [facadeCopy verticalLayoutCardSection];

    if (verticalLayoutCardSection)
    {
      v135 = [_SFPBVerticalLayoutCardSection alloc];
      verticalLayoutCardSection2 = [facadeCopy verticalLayoutCardSection];
      v137 = [(_SFPBVerticalLayoutCardSection *)v135 initWithFacade:verticalLayoutCardSection2];
      [(_SFPBCardSectionValue *)v5 setVerticalLayoutCardSection:v137];
    }

    productCardSection = [facadeCopy productCardSection];

    if (productCardSection)
    {
      v139 = [_SFPBProductCardSection alloc];
      productCardSection2 = [facadeCopy productCardSection];
      v141 = [(_SFPBProductCardSection *)v139 initWithFacade:productCardSection2];
      [(_SFPBCardSectionValue *)v5 setProductCardSection:v141];
    }

    horizontalScrollCardSection = [facadeCopy horizontalScrollCardSection];

    if (horizontalScrollCardSection)
    {
      v143 = [_SFPBHorizontalScrollCardSection alloc];
      horizontalScrollCardSection2 = [facadeCopy horizontalScrollCardSection];
      v145 = [(_SFPBHorizontalScrollCardSection *)v143 initWithFacade:horizontalScrollCardSection2];
      [(_SFPBCardSectionValue *)v5 setHorizontalScrollCardSection:v145];
    }

    mediaRemoteControlCardSection = [facadeCopy mediaRemoteControlCardSection];

    if (mediaRemoteControlCardSection)
    {
      v147 = [_SFPBMediaRemoteControlCardSection alloc];
      mediaRemoteControlCardSection2 = [facadeCopy mediaRemoteControlCardSection];
      v149 = [(_SFPBMediaRemoteControlCardSection *)v147 initWithFacade:mediaRemoteControlCardSection2];
      [(_SFPBCardSectionValue *)v5 setMediaRemoteControlCardSection:v149];
    }

    mapPlaceCardSection = [facadeCopy mapPlaceCardSection];

    if (mapPlaceCardSection)
    {
      v151 = [_SFPBMapPlaceCardSection alloc];
      mapPlaceCardSection2 = [facadeCopy mapPlaceCardSection];
      v153 = [(_SFPBMapPlaceCardSection *)v151 initWithFacade:mapPlaceCardSection2];
      [(_SFPBCardSectionValue *)v5 setMapPlaceCardSection:v153];
    }

    compactRowCardSection = [facadeCopy compactRowCardSection];

    if (compactRowCardSection)
    {
      v155 = [_SFPBCompactRowCardSection alloc];
      compactRowCardSection2 = [facadeCopy compactRowCardSection];
      v157 = [(_SFPBCompactRowCardSection *)v155 initWithFacade:compactRowCardSection2];
      [(_SFPBCardSectionValue *)v5 setCompactRowCardSection:v157];
    }

    worldMapCardSection = [facadeCopy worldMapCardSection];

    if (worldMapCardSection)
    {
      v159 = [_SFPBWorldMapCardSection alloc];
      worldMapCardSection2 = [facadeCopy worldMapCardSection];
      v161 = [(_SFPBWorldMapCardSection *)v159 initWithFacade:worldMapCardSection2];
      [(_SFPBCardSectionValue *)v5 setWorldMapCardSection:v161];
    }

    attributionFooterCardSection = [facadeCopy attributionFooterCardSection];

    if (attributionFooterCardSection)
    {
      v163 = [_SFPBAttributionFooterCardSection alloc];
      attributionFooterCardSection2 = [facadeCopy attributionFooterCardSection];
      v165 = [(_SFPBAttributionFooterCardSection *)v163 initWithFacade:attributionFooterCardSection2];
      [(_SFPBCardSectionValue *)v5 setAttributionFooterCardSection:v165];
    }

    gridCardSection = [facadeCopy gridCardSection];

    if (gridCardSection)
    {
      v167 = [_SFPBGridCardSection alloc];
      gridCardSection2 = [facadeCopy gridCardSection];
      v169 = [(_SFPBGridCardSection *)v167 initWithFacade:gridCardSection2];
      [(_SFPBCardSectionValue *)v5 setGridCardSection:v169];
    }

    personHeaderCardSection = [facadeCopy personHeaderCardSection];

    if (personHeaderCardSection)
    {
      v171 = [_SFPBPersonHeaderCardSection alloc];
      personHeaderCardSection2 = [facadeCopy personHeaderCardSection];
      v173 = [(_SFPBPersonHeaderCardSection *)v171 initWithFacade:personHeaderCardSection2];
      [(_SFPBCardSectionValue *)v5 setPersonHeaderCardSection:v173];
    }

    colorBarCardSection = [facadeCopy colorBarCardSection];

    if (colorBarCardSection)
    {
      v175 = [_SFPBColorBarCardSection alloc];
      colorBarCardSection2 = [facadeCopy colorBarCardSection];
      v177 = [(_SFPBColorBarCardSection *)v175 initWithFacade:colorBarCardSection2];
      [(_SFPBCardSectionValue *)v5 setColorBarCardSection:v177];
    }

    splitCardSection = [facadeCopy splitCardSection];

    if (splitCardSection)
    {
      v179 = [_SFPBSplitCardSection alloc];
      splitCardSection2 = [facadeCopy splitCardSection];
      v181 = [(_SFPBSplitCardSection *)v179 initWithFacade:splitCardSection2];
      [(_SFPBCardSectionValue *)v5 setSplitCardSection:v181];
    }

    linkPresentationCardSection = [facadeCopy linkPresentationCardSection];

    if (linkPresentationCardSection)
    {
      v183 = [_SFPBLinkPresentationCardSection alloc];
      linkPresentationCardSection2 = [facadeCopy linkPresentationCardSection];
      v185 = [(_SFPBLinkPresentationCardSection *)v183 initWithFacade:linkPresentationCardSection2];
      [(_SFPBCardSectionValue *)v5 setLinkPresentationCardSection:v185];
    }

    findMyCardSection = [facadeCopy findMyCardSection];

    if (findMyCardSection)
    {
      v187 = [_SFPBFindMyCardSection alloc];
      findMyCardSection2 = [facadeCopy findMyCardSection];
      v189 = [(_SFPBFindMyCardSection *)v187 initWithFacade:findMyCardSection2];
      [(_SFPBCardSectionValue *)v5 setFindMyCardSection:v189];
    }

    heroCardSection = [facadeCopy heroCardSection];

    if (heroCardSection)
    {
      v191 = [_SFPBHeroCardSection alloc];
      heroCardSection2 = [facadeCopy heroCardSection];
      v193 = [(_SFPBHeroCardSection *)v191 initWithFacade:heroCardSection2];
      [(_SFPBCardSectionValue *)v5 setHeroCardSection:v193];
    }

    newsCardSection = [facadeCopy newsCardSection];

    if (newsCardSection)
    {
      v195 = [_SFPBNewsCardSection alloc];
      newsCardSection2 = [facadeCopy newsCardSection];
      v197 = [(_SFPBNewsCardSection *)v195 initWithFacade:newsCardSection2];
      [(_SFPBCardSectionValue *)v5 setNewsCardSection:v197];
    }

    miniCardSection = [facadeCopy miniCardSection];

    if (miniCardSection)
    {
      v199 = [_SFPBMiniCardSection alloc];
      miniCardSection2 = [facadeCopy miniCardSection];
      v201 = [(_SFPBMiniCardSection *)v199 initWithFacade:miniCardSection2];
      [(_SFPBCardSectionValue *)v5 setMiniCardSection:v201];
    }

    infoCardSection = [facadeCopy infoCardSection];

    if (infoCardSection)
    {
      v203 = [_SFPBInfoCardSection alloc];
      infoCardSection2 = [facadeCopy infoCardSection];
      v205 = [(_SFPBInfoCardSection *)v203 initWithFacade:infoCardSection2];
      [(_SFPBCardSectionValue *)v5 setInfoCardSection:v205];
    }

    collectionCardSection = [facadeCopy collectionCardSection];

    if (collectionCardSection)
    {
      v207 = [_SFPBCollectionCardSection alloc];
      collectionCardSection2 = [facadeCopy collectionCardSection];
      v209 = [(_SFPBCollectionCardSection *)v207 initWithFacade:collectionCardSection2];
      [(_SFPBCardSectionValue *)v5 setCollectionCardSection:v209];
    }

    combinedCardSection = [facadeCopy combinedCardSection];

    if (combinedCardSection)
    {
      v211 = [_SFPBCombinedCardSection alloc];
      combinedCardSection2 = [facadeCopy combinedCardSection];
      v213 = [(_SFPBCombinedCardSection *)v211 initWithFacade:combinedCardSection2];
      [(_SFPBCardSectionValue *)v5 setCombinedCardSection:v213];
    }

    responseWrapperCardSection = [facadeCopy responseWrapperCardSection];

    if (responseWrapperCardSection)
    {
      v215 = [_SFPBResponseWrapperCardSection alloc];
      responseWrapperCardSection2 = [facadeCopy responseWrapperCardSection];
      v217 = [(_SFPBResponseWrapperCardSection *)v215 initWithFacade:responseWrapperCardSection2];
      [(_SFPBCardSectionValue *)v5 setResponseWrapperCardSection:v217];
    }

    listenToCardSection = [facadeCopy listenToCardSection];

    if (listenToCardSection)
    {
      v219 = [_SFPBListenToCardSection alloc];
      listenToCardSection2 = [facadeCopy listenToCardSection];
      v221 = [(_SFPBListenToCardSection *)v219 initWithFacade:listenToCardSection2];
      [(_SFPBCardSectionValue *)v5 setListenToCardSection:v221];
    }

    watchNowCardSection = [facadeCopy watchNowCardSection];

    if (watchNowCardSection)
    {
      v223 = [_SFPBWatchNowCardSection alloc];
      watchNowCardSection2 = [facadeCopy watchNowCardSection];
      v225 = [(_SFPBWatchNowCardSection *)v223 initWithFacade:watchNowCardSection2];
      [(_SFPBCardSectionValue *)v5 setWatchNowCardSection:v225];
    }

    strokeAnimationCardSection = [facadeCopy strokeAnimationCardSection];

    if (strokeAnimationCardSection)
    {
      v227 = [_SFPBStrokeAnimationCardSection alloc];
      strokeAnimationCardSection2 = [facadeCopy strokeAnimationCardSection];
      v229 = [(_SFPBStrokeAnimationCardSection *)v227 initWithFacade:strokeAnimationCardSection2];
      [(_SFPBCardSectionValue *)v5 setStrokeAnimationCardSection:v229];
    }

    buttonListCardSection = [facadeCopy buttonListCardSection];

    if (buttonListCardSection)
    {
      v231 = [_SFPBButtonListCardSection alloc];
      buttonListCardSection2 = [facadeCopy buttonListCardSection];
      v233 = [(_SFPBButtonListCardSection *)v231 initWithFacade:buttonListCardSection2];
      [(_SFPBCardSectionValue *)v5 setButtonListCardSection:v233];
    }

    commandRowCardSection = [facadeCopy commandRowCardSection];

    if (commandRowCardSection)
    {
      v235 = [_SFPBCommandRowCardSection alloc];
      commandRowCardSection2 = [facadeCopy commandRowCardSection];
      v237 = [(_SFPBCommandRowCardSection *)v235 initWithFacade:commandRowCardSection2];
      [(_SFPBCardSectionValue *)v5 setCommandRowCardSection:v237];
    }

    leadingTrailingCardSection = [facadeCopy leadingTrailingCardSection];

    if (leadingTrailingCardSection)
    {
      v239 = [_SFPBLeadingTrailingCardSection alloc];
      leadingTrailingCardSection2 = [facadeCopy leadingTrailingCardSection];
      v241 = [(_SFPBLeadingTrailingCardSection *)v239 initWithFacade:leadingTrailingCardSection2];
      [(_SFPBCardSectionValue *)v5 setLeadingTrailingCardSection:v241];
    }

    heroTitleCardSection = [facadeCopy heroTitleCardSection];

    if (heroTitleCardSection)
    {
      v243 = [_SFPBHeroTitleCardSection alloc];
      heroTitleCardSection2 = [facadeCopy heroTitleCardSection];
      v245 = [(_SFPBHeroTitleCardSection *)v243 initWithFacade:heroTitleCardSection2];
      [(_SFPBCardSectionValue *)v5 setHeroTitleCardSection:v245];
    }

    archiveViewCardSection = [facadeCopy archiveViewCardSection];

    if (archiveViewCardSection)
    {
      v247 = [_SFPBArchiveViewCardSection alloc];
      archiveViewCardSection2 = [facadeCopy archiveViewCardSection];
      v249 = [(_SFPBArchiveViewCardSection *)v247 initWithFacade:archiveViewCardSection2];
      [(_SFPBCardSectionValue *)v5 setArchiveViewCardSection:v249];
    }

    appIconCardSection = [facadeCopy appIconCardSection];

    if (appIconCardSection)
    {
      v251 = [_SFPBAppIconCardSection alloc];
      appIconCardSection2 = [facadeCopy appIconCardSection];
      v253 = [(_SFPBAppIconCardSection *)v251 initWithFacade:appIconCardSection2];
      [(_SFPBCardSectionValue *)v5 setAppIconCardSection:v253];
    }

    largeTitleDetailedRowCardSection = [facadeCopy largeTitleDetailedRowCardSection];

    if (largeTitleDetailedRowCardSection)
    {
      v255 = [_SFPBLargeTitleDetailedRowCardSection alloc];
      largeTitleDetailedRowCardSection2 = [facadeCopy largeTitleDetailedRowCardSection];
      v257 = [(_SFPBLargeTitleDetailedRowCardSection *)v255 initWithFacade:largeTitleDetailedRowCardSection2];
      [(_SFPBCardSectionValue *)v5 setLargeTitleDetailedRowCardSection:v257];
    }

    safariTableOfContentsCardSection = [facadeCopy safariTableOfContentsCardSection];

    if (safariTableOfContentsCardSection)
    {
      v259 = [_SFPBSafariTableOfContentsCardSection alloc];
      safariTableOfContentsCardSection2 = [facadeCopy safariTableOfContentsCardSection];
      v261 = [(_SFPBSafariTableOfContentsCardSection *)v259 initWithFacade:safariTableOfContentsCardSection2];
      [(_SFPBCardSectionValue *)v5 setSafariTableOfContentsCardSection:v261];
    }

    rfSummaryItemShortNumberCardSection = [facadeCopy rfSummaryItemShortNumberCardSection];

    if (rfSummaryItemShortNumberCardSection)
    {
      v263 = [_SFPBRFSummaryItemShortNumberCardSection alloc];
      rfSummaryItemShortNumberCardSection2 = [facadeCopy rfSummaryItemShortNumberCardSection];
      v265 = [(_SFPBRFSummaryItemShortNumberCardSection *)v263 initWithFacade:rfSummaryItemShortNumberCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemShortNumberCardSection:v265];
    }

    rfSummaryItemTextCardSection = [facadeCopy rfSummaryItemTextCardSection];

    if (rfSummaryItemTextCardSection)
    {
      v267 = [_SFPBRFSummaryItemTextCardSection alloc];
      rfSummaryItemTextCardSection2 = [facadeCopy rfSummaryItemTextCardSection];
      v269 = [(_SFPBRFSummaryItemTextCardSection *)v267 initWithFacade:rfSummaryItemTextCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemTextCardSection:v269];
    }

    rfSummaryItemStandardCardSection = [facadeCopy rfSummaryItemStandardCardSection];

    if (rfSummaryItemStandardCardSection)
    {
      v271 = [_SFPBRFSummaryItemStandardCardSection alloc];
      rfSummaryItemStandardCardSection2 = [facadeCopy rfSummaryItemStandardCardSection];
      v273 = [(_SFPBRFSummaryItemStandardCardSection *)v271 initWithFacade:rfSummaryItemStandardCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemStandardCardSection:v273];
    }

    rfFactItemShortNumberCardSection = [facadeCopy rfFactItemShortNumberCardSection];

    if (rfFactItemShortNumberCardSection)
    {
      v275 = [_SFPBRFFactItemShortNumberCardSection alloc];
      rfFactItemShortNumberCardSection2 = [facadeCopy rfFactItemShortNumberCardSection];
      v277 = [(_SFPBRFFactItemShortNumberCardSection *)v275 initWithFacade:rfFactItemShortNumberCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfFactItemShortNumberCardSection:v277];
    }

    rfFactItemStandardCardSection = [facadeCopy rfFactItemStandardCardSection];

    if (rfFactItemStandardCardSection)
    {
      v279 = [_SFPBRFFactItemStandardCardSection alloc];
      rfFactItemStandardCardSection2 = [facadeCopy rfFactItemStandardCardSection];
      v281 = [(_SFPBRFFactItemStandardCardSection *)v279 initWithFacade:rfFactItemStandardCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfFactItemStandardCardSection:v281];
    }

    rfLongItemStandardCardSection = [facadeCopy rfLongItemStandardCardSection];

    if (rfLongItemStandardCardSection)
    {
      v283 = [_SFPBRFLongItemStandardCardSection alloc];
      rfLongItemStandardCardSection2 = [facadeCopy rfLongItemStandardCardSection];
      v285 = [(_SFPBRFLongItemStandardCardSection *)v283 initWithFacade:rfLongItemStandardCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfLongItemStandardCardSection:v285];
    }

    rfPrimaryHeaderRichCardSection = [facadeCopy rfPrimaryHeaderRichCardSection];

    if (rfPrimaryHeaderRichCardSection)
    {
      v287 = [_SFPBRFPrimaryHeaderRichCardSection alloc];
      rfPrimaryHeaderRichCardSection2 = [facadeCopy rfPrimaryHeaderRichCardSection];
      v289 = [(_SFPBRFPrimaryHeaderRichCardSection *)v287 initWithFacade:rfPrimaryHeaderRichCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderRichCardSection:v289];
    }

    rfPrimaryHeaderStandardCardSection = [facadeCopy rfPrimaryHeaderStandardCardSection];

    if (rfPrimaryHeaderStandardCardSection)
    {
      v291 = [_SFPBRFPrimaryHeaderStandardCardSection alloc];
      rfPrimaryHeaderStandardCardSection2 = [facadeCopy rfPrimaryHeaderStandardCardSection];
      v293 = [(_SFPBRFPrimaryHeaderStandardCardSection *)v291 initWithFacade:rfPrimaryHeaderStandardCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderStandardCardSection:v293];
    }

    rfReferenceFootnoteCardSection = [facadeCopy rfReferenceFootnoteCardSection];

    if (rfReferenceFootnoteCardSection)
    {
      v295 = [_SFPBRFReferenceFootnoteCardSection alloc];
      rfReferenceFootnoteCardSection2 = [facadeCopy rfReferenceFootnoteCardSection];
      v297 = [(_SFPBRFReferenceFootnoteCardSection *)v295 initWithFacade:rfReferenceFootnoteCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfReferenceFootnoteCardSection:v297];
    }

    rfReferenceRichCardSection = [facadeCopy rfReferenceRichCardSection];

    if (rfReferenceRichCardSection)
    {
      v299 = [_SFPBRFReferenceRichCardSection alloc];
      rfReferenceRichCardSection2 = [facadeCopy rfReferenceRichCardSection];
      v301 = [(_SFPBRFReferenceRichCardSection *)v299 initWithFacade:rfReferenceRichCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfReferenceRichCardSection:v301];
    }

    rfSimpleItemRichCardSection = [facadeCopy rfSimpleItemRichCardSection];

    if (rfSimpleItemRichCardSection)
    {
      v303 = [_SFPBRFSimpleItemRichCardSection alloc];
      rfSimpleItemRichCardSection2 = [facadeCopy rfSimpleItemRichCardSection];
      v305 = [(_SFPBRFSimpleItemRichCardSection *)v303 initWithFacade:rfSimpleItemRichCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemRichCardSection:v305];
    }

    rfSimpleItemStandardCardSection = [facadeCopy rfSimpleItemStandardCardSection];

    if (rfSimpleItemStandardCardSection)
    {
      v307 = [_SFPBRFSimpleItemStandardCardSection alloc];
      rfSimpleItemStandardCardSection2 = [facadeCopy rfSimpleItemStandardCardSection];
      v309 = [(_SFPBRFSimpleItemStandardCardSection *)v307 initWithFacade:rfSimpleItemStandardCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemStandardCardSection:v309];
    }

    rfSummaryItemAlignedTextCardSection = [facadeCopy rfSummaryItemAlignedTextCardSection];

    if (rfSummaryItemAlignedTextCardSection)
    {
      v311 = [_SFPBRFSummaryItemAlignedTextCardSection alloc];
      rfSummaryItemAlignedTextCardSection2 = [facadeCopy rfSummaryItemAlignedTextCardSection];
      v313 = [(_SFPBRFSummaryItemAlignedTextCardSection *)v311 initWithFacade:rfSummaryItemAlignedTextCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemAlignedTextCardSection:v313];
    }

    rfExpandableStandardCardSection = [facadeCopy rfExpandableStandardCardSection];

    if (rfExpandableStandardCardSection)
    {
      v315 = [_SFPBRFExpandableStandardCardSection alloc];
      rfExpandableStandardCardSection2 = [facadeCopy rfExpandableStandardCardSection];
      v317 = [(_SFPBRFExpandableStandardCardSection *)v315 initWithFacade:rfExpandableStandardCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfExpandableStandardCardSection:v317];
    }

    rfFactItemButtonCardSection = [facadeCopy rfFactItemButtonCardSection];

    if (rfFactItemButtonCardSection)
    {
      v319 = [_SFPBRFFactItemButtonCardSection alloc];
      rfFactItemButtonCardSection2 = [facadeCopy rfFactItemButtonCardSection];
      v321 = [(_SFPBRFFactItemButtonCardSection *)v319 initWithFacade:rfFactItemButtonCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfFactItemButtonCardSection:v321];
    }

    rfFactItemHeroNumberCardSection = [facadeCopy rfFactItemHeroNumberCardSection];

    if (rfFactItemHeroNumberCardSection)
    {
      v323 = [_SFPBRFFactItemHeroNumberCardSection alloc];
      rfFactItemHeroNumberCardSection2 = [facadeCopy rfFactItemHeroNumberCardSection];
      v325 = [(_SFPBRFFactItemHeroNumberCardSection *)v323 initWithFacade:rfFactItemHeroNumberCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfFactItemHeroNumberCardSection:v325];
    }

    rfPrimaryHeaderMarqueeCardSection = [facadeCopy rfPrimaryHeaderMarqueeCardSection];

    if (rfPrimaryHeaderMarqueeCardSection)
    {
      v327 = [_SFPBRFPrimaryHeaderMarqueeCardSection alloc];
      rfPrimaryHeaderMarqueeCardSection2 = [facadeCopy rfPrimaryHeaderMarqueeCardSection];
      v329 = [(_SFPBRFPrimaryHeaderMarqueeCardSection *)v327 initWithFacade:rfPrimaryHeaderMarqueeCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderMarqueeCardSection:v329];
    }

    rfSummaryItemDetailedTextCardSection = [facadeCopy rfSummaryItemDetailedTextCardSection];

    if (rfSummaryItemDetailedTextCardSection)
    {
      v331 = [_SFPBRFSummaryItemDetailedTextCardSection alloc];
      rfSummaryItemDetailedTextCardSection2 = [facadeCopy rfSummaryItemDetailedTextCardSection];
      v333 = [(_SFPBRFSummaryItemDetailedTextCardSection *)v331 initWithFacade:rfSummaryItemDetailedTextCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemDetailedTextCardSection:v333];
    }

    rfSimpleItemPlayerCardSection = [facadeCopy rfSimpleItemPlayerCardSection];

    if (rfSimpleItemPlayerCardSection)
    {
      v335 = [_SFPBRFSimpleItemPlayerCardSection alloc];
      rfSimpleItemPlayerCardSection2 = [facadeCopy rfSimpleItemPlayerCardSection];
      v337 = [(_SFPBRFSimpleItemPlayerCardSection *)v335 initWithFacade:rfSimpleItemPlayerCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemPlayerCardSection:v337];
    }

    rfSummaryItemPairCardSection = [facadeCopy rfSummaryItemPairCardSection];

    if (rfSummaryItemPairCardSection)
    {
      v339 = [_SFPBRFSummaryItemPairCardSection alloc];
      rfSummaryItemPairCardSection2 = [facadeCopy rfSummaryItemPairCardSection];
      v341 = [(_SFPBRFSummaryItemPairCardSection *)v339 initWithFacade:rfSummaryItemPairCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPairCardSection:v341];
    }

    rfSummaryItemPairNumberCardSection = [facadeCopy rfSummaryItemPairNumberCardSection];

    if (rfSummaryItemPairNumberCardSection)
    {
      v343 = [_SFPBRFSummaryItemPairNumberCardSection alloc];
      rfSummaryItemPairNumberCardSection2 = [facadeCopy rfSummaryItemPairNumberCardSection];
      v345 = [(_SFPBRFSummaryItemPairNumberCardSection *)v343 initWithFacade:rfSummaryItemPairNumberCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPairNumberCardSection:v345];
    }

    rfFactItemShortHeroNumberCardSection = [facadeCopy rfFactItemShortHeroNumberCardSection];

    if (rfFactItemShortHeroNumberCardSection)
    {
      v347 = [_SFPBRFFactItemShortHeroNumberCardSection alloc];
      rfFactItemShortHeroNumberCardSection2 = [facadeCopy rfFactItemShortHeroNumberCardSection];
      v349 = [(_SFPBRFFactItemShortHeroNumberCardSection *)v347 initWithFacade:rfFactItemShortHeroNumberCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfFactItemShortHeroNumberCardSection:v349];
    }

    rfFactItemDetailedNumberCardSection = [facadeCopy rfFactItemDetailedNumberCardSection];

    if (rfFactItemDetailedNumberCardSection)
    {
      v351 = [_SFPBRFFactItemDetailedNumberCardSection alloc];
      rfFactItemDetailedNumberCardSection2 = [facadeCopy rfFactItemDetailedNumberCardSection];
      v353 = [(_SFPBRFFactItemDetailedNumberCardSection *)v351 initWithFacade:rfFactItemDetailedNumberCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfFactItemDetailedNumberCardSection:v353];
    }

    rfFactItemHeroButtonCardSection = [facadeCopy rfFactItemHeroButtonCardSection];

    if (rfFactItemHeroButtonCardSection)
    {
      v355 = [_SFPBRFFactItemHeroButtonCardSection alloc];
      rfFactItemHeroButtonCardSection2 = [facadeCopy rfFactItemHeroButtonCardSection];
      v357 = [(_SFPBRFFactItemHeroButtonCardSection *)v355 initWithFacade:rfFactItemHeroButtonCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfFactItemHeroButtonCardSection:v357];
    }

    rfFactItemImageRightCardSection = [facadeCopy rfFactItemImageRightCardSection];

    if (rfFactItemImageRightCardSection)
    {
      v359 = [_SFPBRFFactItemImageRightCardSection alloc];
      rfFactItemImageRightCardSection2 = [facadeCopy rfFactItemImageRightCardSection];
      v361 = [(_SFPBRFFactItemImageRightCardSection *)v359 initWithFacade:rfFactItemImageRightCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfFactItemImageRightCardSection:v361];
    }

    rfSummaryItemSwitchV2CardSection = [facadeCopy rfSummaryItemSwitchV2CardSection];

    if (rfSummaryItemSwitchV2CardSection)
    {
      v363 = [_SFPBRFSummaryItemSwitchV2CardSection alloc];
      rfSummaryItemSwitchV2CardSection2 = [facadeCopy rfSummaryItemSwitchV2CardSection];
      v365 = [(_SFPBRFSummaryItemSwitchV2CardSection *)v363 initWithFacade:rfSummaryItemSwitchV2CardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemSwitchV2CardSection:v365];
    }

    rfTableHeaderCardSection = [facadeCopy rfTableHeaderCardSection];

    if (rfTableHeaderCardSection)
    {
      v367 = [_SFPBRFTableHeaderCardSection alloc];
      rfTableHeaderCardSection2 = [facadeCopy rfTableHeaderCardSection];
      v369 = [(_SFPBRFTableHeaderCardSection *)v367 initWithFacade:rfTableHeaderCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfTableHeaderCardSection:v369];
    }

    rfTableRowCardSection = [facadeCopy rfTableRowCardSection];

    if (rfTableRowCardSection)
    {
      v371 = [_SFPBRFTableRowCardSection alloc];
      rfTableRowCardSection2 = [facadeCopy rfTableRowCardSection];
      v373 = [(_SFPBRFTableRowCardSection *)v371 initWithFacade:rfTableRowCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfTableRowCardSection:v373];
    }

    rfSimpleItemVisualElementCardSection = [facadeCopy rfSimpleItemVisualElementCardSection];

    if (rfSimpleItemVisualElementCardSection)
    {
      v375 = [_SFPBRFSimpleItemVisualElementCardSection alloc];
      rfSimpleItemVisualElementCardSection2 = [facadeCopy rfSimpleItemVisualElementCardSection];
      v377 = [(_SFPBRFSimpleItemVisualElementCardSection *)v375 initWithFacade:rfSimpleItemVisualElementCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemVisualElementCardSection:v377];
    }

    rfSummaryItemPlayerCardSection = [facadeCopy rfSummaryItemPlayerCardSection];

    if (rfSummaryItemPlayerCardSection)
    {
      v379 = [_SFPBRFSummaryItemPlayerCardSection alloc];
      rfSummaryItemPlayerCardSection2 = [facadeCopy rfSummaryItemPlayerCardSection];
      v381 = [(_SFPBRFSummaryItemPlayerCardSection *)v379 initWithFacade:rfSummaryItemPlayerCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPlayerCardSection:v381];
    }

    rfSummaryItemImageRightCardSection = [facadeCopy rfSummaryItemImageRightCardSection];

    if (rfSummaryItemImageRightCardSection)
    {
      v383 = [_SFPBRFSummaryItemImageRightCardSection alloc];
      rfSummaryItemImageRightCardSection2 = [facadeCopy rfSummaryItemImageRightCardSection];
      v385 = [(_SFPBRFSummaryItemImageRightCardSection *)v383 initWithFacade:rfSummaryItemImageRightCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemImageRightCardSection:v385];
    }

    rfSummaryItemButtonCardSection = [facadeCopy rfSummaryItemButtonCardSection];

    if (rfSummaryItemButtonCardSection)
    {
      v387 = [_SFPBRFSummaryItemButtonCardSection alloc];
      rfSummaryItemButtonCardSection2 = [facadeCopy rfSummaryItemButtonCardSection];
      v389 = [(_SFPBRFSummaryItemButtonCardSection *)v387 initWithFacade:rfSummaryItemButtonCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemButtonCardSection:v389];
    }

    rfSimpleItemReverseRichCardSection = [facadeCopy rfSimpleItemReverseRichCardSection];

    if (rfSimpleItemReverseRichCardSection)
    {
      v391 = [_SFPBRFSimpleItemReverseRichCardSection alloc];
      rfSimpleItemReverseRichCardSection2 = [facadeCopy rfSimpleItemReverseRichCardSection];
      v393 = [(_SFPBRFSimpleItemReverseRichCardSection *)v391 initWithFacade:rfSimpleItemReverseRichCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemReverseRichCardSection:v393];
    }

    rfSimpleItemRichSearchResultCardSection = [facadeCopy rfSimpleItemRichSearchResultCardSection];

    if (rfSimpleItemRichSearchResultCardSection)
    {
      v395 = [_SFPBRFSimpleItemRichSearchResultCardSection alloc];
      rfSimpleItemRichSearchResultCardSection2 = [facadeCopy rfSimpleItemRichSearchResultCardSection];
      v397 = [(_SFPBRFSimpleItemRichSearchResultCardSection *)v395 initWithFacade:rfSimpleItemRichSearchResultCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemRichSearchResultCardSection:v397];
    }

    rfPrimaryHeaderStackedImageCardSection = [facadeCopy rfPrimaryHeaderStackedImageCardSection];

    if (rfPrimaryHeaderStackedImageCardSection)
    {
      v399 = [_SFPBRFPrimaryHeaderStackedImageCardSection alloc];
      rfPrimaryHeaderStackedImageCardSection2 = [facadeCopy rfPrimaryHeaderStackedImageCardSection];
      v401 = [(_SFPBRFPrimaryHeaderStackedImageCardSection *)v399 initWithFacade:rfPrimaryHeaderStackedImageCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderStackedImageCardSection:v401];
    }

    rfReferenceItemLogoCardSection = [facadeCopy rfReferenceItemLogoCardSection];

    if (rfReferenceItemLogoCardSection)
    {
      v403 = [_SFPBRFReferenceItemLogoCardSection alloc];
      rfReferenceItemLogoCardSection2 = [facadeCopy rfReferenceItemLogoCardSection];
      v405 = [(_SFPBRFReferenceItemLogoCardSection *)v403 initWithFacade:rfReferenceItemLogoCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfReferenceItemLogoCardSection:v405];
    }

    rfReferenceItemButtonCardSection = [facadeCopy rfReferenceItemButtonCardSection];

    if (rfReferenceItemButtonCardSection)
    {
      v407 = [_SFPBRFReferenceItemButtonCardSection alloc];
      rfReferenceItemButtonCardSection2 = [facadeCopy rfReferenceItemButtonCardSection];
      v409 = [(_SFPBRFReferenceItemButtonCardSection *)v407 initWithFacade:rfReferenceItemButtonCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfReferenceItemButtonCardSection:v409];
    }

    rfButtonCardSection = [facadeCopy rfButtonCardSection];

    if (rfButtonCardSection)
    {
      v411 = [_SFPBRFButtonCardSection alloc];
      rfButtonCardSection2 = [facadeCopy rfButtonCardSection];
      v413 = [(_SFPBRFButtonCardSection *)v411 initWithFacade:rfButtonCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfButtonCardSection:v413];
    }

    rfBinaryButtonCardSection = [facadeCopy rfBinaryButtonCardSection];

    if (rfBinaryButtonCardSection)
    {
      v415 = [_SFPBRFBinaryButtonCardSection alloc];
      rfBinaryButtonCardSection2 = [facadeCopy rfBinaryButtonCardSection];
      v417 = [(_SFPBRFBinaryButtonCardSection *)v415 initWithFacade:rfBinaryButtonCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfBinaryButtonCardSection:v417];
    }

    rfReferenceCenteredCardSection = [facadeCopy rfReferenceCenteredCardSection];

    if (rfReferenceCenteredCardSection)
    {
      v419 = [_SFPBRFReferenceCenteredCardSection alloc];
      rfReferenceCenteredCardSection2 = [facadeCopy rfReferenceCenteredCardSection];
      v421 = [(_SFPBRFReferenceCenteredCardSection *)v419 initWithFacade:rfReferenceCenteredCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfReferenceCenteredCardSection:v421];
    }

    rfSecondaryHeaderStandardCardSection = [facadeCopy rfSecondaryHeaderStandardCardSection];

    if (rfSecondaryHeaderStandardCardSection)
    {
      v423 = [_SFPBRFSecondaryHeaderStandardCardSection alloc];
      rfSecondaryHeaderStandardCardSection2 = [facadeCopy rfSecondaryHeaderStandardCardSection];
      v425 = [(_SFPBRFSecondaryHeaderStandardCardSection *)v423 initWithFacade:rfSecondaryHeaderStandardCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSecondaryHeaderStandardCardSection:v425];
    }

    rfSecondaryHeaderEmphasizedCardSection = [facadeCopy rfSecondaryHeaderEmphasizedCardSection];

    if (rfSecondaryHeaderEmphasizedCardSection)
    {
      v427 = [_SFPBRFSecondaryHeaderEmphasizedCardSection alloc];
      rfSecondaryHeaderEmphasizedCardSection2 = [facadeCopy rfSecondaryHeaderEmphasizedCardSection];
      v429 = [(_SFPBRFSecondaryHeaderEmphasizedCardSection *)v427 initWithFacade:rfSecondaryHeaderEmphasizedCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSecondaryHeaderEmphasizedCardSection:v429];
    }

    rfMapCardSection = [facadeCopy rfMapCardSection];

    if (rfMapCardSection)
    {
      v431 = [_SFPBRFMapCardSection alloc];
      rfMapCardSection2 = [facadeCopy rfMapCardSection];
      v433 = [(_SFPBRFMapCardSection *)v431 initWithFacade:rfMapCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfMapCardSection:v433];
    }

    rfReferenceStandardCardSection = [facadeCopy rfReferenceStandardCardSection];

    if (rfReferenceStandardCardSection)
    {
      v435 = [_SFPBRFReferenceStandardCardSection alloc];
      rfReferenceStandardCardSection2 = [facadeCopy rfReferenceStandardCardSection];
      v437 = [(_SFPBRFReferenceStandardCardSection *)v435 initWithFacade:rfReferenceStandardCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfReferenceStandardCardSection:v437];
    }

    rfMultiButtonCardSection = [facadeCopy rfMultiButtonCardSection];

    if (rfMultiButtonCardSection)
    {
      v439 = [_SFPBRFMultiButtonCardSection alloc];
      rfMultiButtonCardSection2 = [facadeCopy rfMultiButtonCardSection];
      v441 = [(_SFPBRFMultiButtonCardSection *)v439 initWithFacade:rfMultiButtonCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfMultiButtonCardSection:v441];
    }

    rfDisambiguationTitleCardSection = [facadeCopy rfDisambiguationTitleCardSection];

    if (rfDisambiguationTitleCardSection)
    {
      v443 = [_SFPBRFDisambiguationTitleCardSection alloc];
      rfDisambiguationTitleCardSection2 = [facadeCopy rfDisambiguationTitleCardSection];
      v445 = [(_SFPBRFDisambiguationTitleCardSection *)v443 initWithFacade:rfDisambiguationTitleCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfDisambiguationTitleCardSection:v445];
    }

    rfSummaryItemExpandableCardSection = [facadeCopy rfSummaryItemExpandableCardSection];

    if (rfSummaryItemExpandableCardSection)
    {
      v447 = [_SFPBRFSummaryItemExpandableCardSection alloc];
      rfSummaryItemExpandableCardSection2 = [facadeCopy rfSummaryItemExpandableCardSection];
      v449 = [(_SFPBRFSummaryItemExpandableCardSection *)v447 initWithFacade:rfSummaryItemExpandableCardSection2];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemExpandableCardSection:v449];
    }

    v450 = v5;
  }

  return v5;
}

- (_SFPBCardSectionValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v334.receiver = self;
  v334.super_class = _SFPBCardSectionValue;
  v5 = [(_SFPBCardSectionValue *)&v334 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appLinkCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBAppLinkCardSection alloc] initWithDictionary:v6];
      [(_SFPBCardSectionValue *)v5 setAppLinkCardSection:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"descriptionCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBDescriptionCardSection alloc] initWithDictionary:v8];
      [(_SFPBCardSectionValue *)v5 setDescriptionCardSection:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"keyValueDataCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBKeyValueDataCardSection alloc] initWithDictionary:v10];
      [(_SFPBCardSectionValue *)v5 setKeyValueDataCardSection:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"mapCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBMapCardSection alloc] initWithDictionary:v12];
      [(_SFPBCardSectionValue *)v5 setMapCardSection:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"mediaInfoCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBMediaInfoCardSection alloc] initWithDictionary:v14];
      [(_SFPBCardSectionValue *)v5 setMediaInfoCardSection:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"mediaPlayerCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBMediaPlayerCardSection alloc] initWithDictionary:v16];
      [(_SFPBCardSectionValue *)v5 setMediaPlayerCardSection:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingCardSection"];
    objc_opt_class();
    v333 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBNowPlayingCardSection alloc] initWithDictionary:v18];
      [(_SFPBCardSectionValue *)v5 setNowPlayingCardSection:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"richTitleCardSection"];
    objc_opt_class();
    v332 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBRichTitleCardSection alloc] initWithDictionary:v20];
      [(_SFPBCardSectionValue *)v5 setRichTitleCardSection:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"rowCardSection"];
    objc_opt_class();
    v331 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBRowCardSection alloc] initWithDictionary:v22];
      [(_SFPBCardSectionValue *)v5 setRowCardSection:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"scoreboardCardSection"];
    objc_opt_class();
    v330 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBScoreboardCardSection alloc] initWithDictionary:v24];
      [(_SFPBCardSectionValue *)v5 setScoreboardCardSection:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"socialMediaPostCardSection"];
    objc_opt_class();
    v329 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBSocialMediaPostCardSection alloc] initWithDictionary:v26];
      [(_SFPBCardSectionValue *)v5 setSocialMediaPostCardSection:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"stockChartCardSection"];
    objc_opt_class();
    v328 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBStockChartCardSection alloc] initWithDictionary:v28];
      [(_SFPBCardSectionValue *)v5 setStockChartCardSection:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"tableHeaderRowCardSection"];
    objc_opt_class();
    v327 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBTableHeaderRowCardSection alloc] initWithDictionary:v30];
      [(_SFPBCardSectionValue *)v5 setTableHeaderRowCardSection:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"tableRowCardSection"];
    objc_opt_class();
    v326 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBTableRowCardSection alloc] initWithDictionary:v32];
      [(_SFPBCardSectionValue *)v5 setTableRowCardSection:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"textColumnsCardSection"];
    objc_opt_class();
    v325 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBTextColumnsCardSection alloc] initWithDictionary:v34];
      [(_SFPBCardSectionValue *)v5 setTextColumnsCardSection:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"titleCardSection"];
    objc_opt_class();
    v324 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBTitleCardSection alloc] initWithDictionary:v36];
      [(_SFPBCardSectionValue *)v5 setTitleCardSection:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"trackListCardSection"];
    objc_opt_class();
    v323 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBTrackListCardSection alloc] initWithDictionary:v38];
      [(_SFPBCardSectionValue *)v5 setTrackListCardSection:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"audioPlaybackCardSection"];
    objc_opt_class();
    v322 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBAudioPlaybackCardSection alloc] initWithDictionary:v40];
      [(_SFPBCardSectionValue *)v5 setAudioPlaybackCardSection:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"flightCardSection"];
    objc_opt_class();
    v321 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBFlightCardSection alloc] initWithDictionary:v42];
      [(_SFPBCardSectionValue *)v5 setFlightCardSection:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"activityIndicatorCardSection"];
    objc_opt_class();
    v320 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBActivityIndicatorCardSection alloc] initWithDictionary:v44];
      [(_SFPBCardSectionValue *)v5 setActivityIndicatorCardSection:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"webCardSection"];
    objc_opt_class();
    v319 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBWebCardSection alloc] initWithDictionary:v46];
      [(_SFPBCardSectionValue *)v5 setWebCardSection:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"messageCardSection"];
    objc_opt_class();
    v318 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBMessageCardSection alloc] initWithDictionary:v48];
      [(_SFPBCardSectionValue *)v5 setMessageCardSection:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"detailedRowCardSection"];
    objc_opt_class();
    v317 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBDetailedRowCardSection alloc] initWithDictionary:v50];
      [(_SFPBCardSectionValue *)v5 setDetailedRowCardSection:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"imagesCardSection"];
    objc_opt_class();
    v316 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBImagesCardSection alloc] initWithDictionary:v52];
      [(_SFPBCardSectionValue *)v5 setImagesCardSection:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"suggestionCardSection"];
    objc_opt_class();
    v315 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[_SFPBSuggestionCardSection alloc] initWithDictionary:v54];
      [(_SFPBCardSectionValue *)v5 setSuggestionCardSection:v55];
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"selectableGridCardSection"];
    objc_opt_class();
    v314 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[_SFPBSelectableGridCardSection alloc] initWithDictionary:v56];
      [(_SFPBCardSectionValue *)v5 setSelectableGridCardSection:v57];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"sectionHeaderCardSection"];
    objc_opt_class();
    v313 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[_SFPBSectionHeaderCardSection alloc] initWithDictionary:v58];
      [(_SFPBCardSectionValue *)v5 setSectionHeaderCardSection:v59];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"metaInfoCardSection"];
    objc_opt_class();
    v312 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[_SFPBMetaInfoCardSection alloc] initWithDictionary:v60];
      [(_SFPBCardSectionValue *)v5 setMetaInfoCardSection:v61];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"watchListCardSection"];
    objc_opt_class();
    v311 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[_SFPBWatchListCardSection alloc] initWithDictionary:v62];
      [(_SFPBCardSectionValue *)v5 setWatchListCardSection:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"mapsDetailedRowCardSection"];
    objc_opt_class();
    v310 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[_SFPBMapsDetailedRowCardSection alloc] initWithDictionary:v64];
      [(_SFPBCardSectionValue *)v5 setMapsDetailedRowCardSection:v65];
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"buttonCardSection"];
    objc_opt_class();
    v309 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[_SFPBButtonCardSection alloc] initWithDictionary:v66];
      [(_SFPBCardSectionValue *)v5 setButtonCardSection:v67];
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"horizontalButtonCardSection"];
    objc_opt_class();
    v308 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[_SFPBHorizontalButtonCardSection alloc] initWithDictionary:v68];
      [(_SFPBCardSectionValue *)v5 setHorizontalButtonCardSection:v69];
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"verticalLayoutCardSection"];
    objc_opt_class();
    v307 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[_SFPBVerticalLayoutCardSection alloc] initWithDictionary:v70];
      [(_SFPBCardSectionValue *)v5 setVerticalLayoutCardSection:v71];
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"productCardSection"];
    objc_opt_class();
    v306 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[_SFPBProductCardSection alloc] initWithDictionary:v72];
      [(_SFPBCardSectionValue *)v5 setProductCardSection:v73];
    }

    v74 = [dictionaryCopy objectForKeyedSubscript:@"horizontalScrollCardSection"];
    objc_opt_class();
    v305 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[_SFPBHorizontalScrollCardSection alloc] initWithDictionary:v74];
      [(_SFPBCardSectionValue *)v5 setHorizontalScrollCardSection:v75];
    }

    v76 = [dictionaryCopy objectForKeyedSubscript:@"mediaRemoteControlCardSection"];
    objc_opt_class();
    v304 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[_SFPBMediaRemoteControlCardSection alloc] initWithDictionary:v76];
      [(_SFPBCardSectionValue *)v5 setMediaRemoteControlCardSection:v77];
    }

    v78 = [dictionaryCopy objectForKeyedSubscript:@"mapPlaceCardSection"];
    objc_opt_class();
    v303 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[_SFPBMapPlaceCardSection alloc] initWithDictionary:v78];
      [(_SFPBCardSectionValue *)v5 setMapPlaceCardSection:v79];
    }

    v80 = [dictionaryCopy objectForKeyedSubscript:@"compactRowCardSection"];
    objc_opt_class();
    v302 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [[_SFPBCompactRowCardSection alloc] initWithDictionary:v80];
      [(_SFPBCardSectionValue *)v5 setCompactRowCardSection:v81];
    }

    v82 = [dictionaryCopy objectForKeyedSubscript:@"worldMapCardSection"];
    objc_opt_class();
    v301 = v82;
    if (objc_opt_isKindOfClass())
    {
      v83 = [[_SFPBWorldMapCardSection alloc] initWithDictionary:v82];
      [(_SFPBCardSectionValue *)v5 setWorldMapCardSection:v83];
    }

    v84 = [dictionaryCopy objectForKeyedSubscript:@"attributionFooterCardSection"];
    objc_opt_class();
    v300 = v84;
    if (objc_opt_isKindOfClass())
    {
      v85 = [[_SFPBAttributionFooterCardSection alloc] initWithDictionary:v84];
      [(_SFPBCardSectionValue *)v5 setAttributionFooterCardSection:v85];
    }

    v86 = [dictionaryCopy objectForKeyedSubscript:@"gridCardSection"];
    objc_opt_class();
    v299 = v86;
    if (objc_opt_isKindOfClass())
    {
      v87 = [[_SFPBGridCardSection alloc] initWithDictionary:v86];
      [(_SFPBCardSectionValue *)v5 setGridCardSection:v87];
    }

    v88 = [dictionaryCopy objectForKeyedSubscript:@"personHeaderCardSection"];
    objc_opt_class();
    v298 = v88;
    if (objc_opt_isKindOfClass())
    {
      v89 = [[_SFPBPersonHeaderCardSection alloc] initWithDictionary:v88];
      [(_SFPBCardSectionValue *)v5 setPersonHeaderCardSection:v89];
    }

    v90 = [dictionaryCopy objectForKeyedSubscript:@"colorBarCardSection"];
    objc_opt_class();
    v297 = v90;
    if (objc_opt_isKindOfClass())
    {
      v91 = [[_SFPBColorBarCardSection alloc] initWithDictionary:v90];
      [(_SFPBCardSectionValue *)v5 setColorBarCardSection:v91];
    }

    v92 = [dictionaryCopy objectForKeyedSubscript:@"splitCardSection"];
    objc_opt_class();
    v296 = v92;
    if (objc_opt_isKindOfClass())
    {
      v93 = [[_SFPBSplitCardSection alloc] initWithDictionary:v92];
      [(_SFPBCardSectionValue *)v5 setSplitCardSection:v93];
    }

    v94 = [dictionaryCopy objectForKeyedSubscript:@"linkPresentationCardSection"];
    objc_opt_class();
    v295 = v94;
    if (objc_opt_isKindOfClass())
    {
      v95 = [[_SFPBLinkPresentationCardSection alloc] initWithDictionary:v94];
      [(_SFPBCardSectionValue *)v5 setLinkPresentationCardSection:v95];
    }

    v96 = [dictionaryCopy objectForKeyedSubscript:@"findMyCardSection"];
    objc_opt_class();
    v294 = v96;
    if (objc_opt_isKindOfClass())
    {
      v97 = [[_SFPBFindMyCardSection alloc] initWithDictionary:v96];
      [(_SFPBCardSectionValue *)v5 setFindMyCardSection:v97];
    }

    v98 = [dictionaryCopy objectForKeyedSubscript:@"heroCardSection"];
    objc_opt_class();
    v293 = v98;
    if (objc_opt_isKindOfClass())
    {
      v99 = [[_SFPBHeroCardSection alloc] initWithDictionary:v98];
      [(_SFPBCardSectionValue *)v5 setHeroCardSection:v99];
    }

    v100 = [dictionaryCopy objectForKeyedSubscript:@"newsCardSection"];
    objc_opt_class();
    v292 = v100;
    if (objc_opt_isKindOfClass())
    {
      v101 = [[_SFPBNewsCardSection alloc] initWithDictionary:v100];
      [(_SFPBCardSectionValue *)v5 setNewsCardSection:v101];
    }

    v102 = [dictionaryCopy objectForKeyedSubscript:@"miniCardSection"];
    objc_opt_class();
    v291 = v102;
    if (objc_opt_isKindOfClass())
    {
      v103 = [[_SFPBMiniCardSection alloc] initWithDictionary:v102];
      [(_SFPBCardSectionValue *)v5 setMiniCardSection:v103];
    }

    v104 = [dictionaryCopy objectForKeyedSubscript:@"infoCardSection"];
    objc_opt_class();
    v290 = v104;
    if (objc_opt_isKindOfClass())
    {
      v105 = [[_SFPBInfoCardSection alloc] initWithDictionary:v104];
      [(_SFPBCardSectionValue *)v5 setInfoCardSection:v105];
    }

    v106 = [dictionaryCopy objectForKeyedSubscript:@"collectionCardSection"];
    objc_opt_class();
    v289 = v106;
    if (objc_opt_isKindOfClass())
    {
      v107 = [[_SFPBCollectionCardSection alloc] initWithDictionary:v106];
      [(_SFPBCardSectionValue *)v5 setCollectionCardSection:v107];
    }

    v108 = [dictionaryCopy objectForKeyedSubscript:@"combinedCardSection"];
    objc_opt_class();
    v288 = v108;
    if (objc_opt_isKindOfClass())
    {
      v109 = [[_SFPBCombinedCardSection alloc] initWithDictionary:v108];
      [(_SFPBCardSectionValue *)v5 setCombinedCardSection:v109];
    }

    v110 = [dictionaryCopy objectForKeyedSubscript:@"responseWrapperCardSection"];
    objc_opt_class();
    v287 = v110;
    if (objc_opt_isKindOfClass())
    {
      v111 = [[_SFPBResponseWrapperCardSection alloc] initWithDictionary:v110];
      [(_SFPBCardSectionValue *)v5 setResponseWrapperCardSection:v111];
    }

    v112 = [dictionaryCopy objectForKeyedSubscript:@"listenToCardSection"];
    objc_opt_class();
    v286 = v112;
    if (objc_opt_isKindOfClass())
    {
      v113 = [[_SFPBListenToCardSection alloc] initWithDictionary:v112];
      [(_SFPBCardSectionValue *)v5 setListenToCardSection:v113];
    }

    v114 = [dictionaryCopy objectForKeyedSubscript:@"watchNowCardSection"];
    objc_opt_class();
    v285 = v114;
    if (objc_opt_isKindOfClass())
    {
      v115 = [[_SFPBWatchNowCardSection alloc] initWithDictionary:v114];
      [(_SFPBCardSectionValue *)v5 setWatchNowCardSection:v115];
    }

    v116 = [dictionaryCopy objectForKeyedSubscript:@"strokeAnimationCardSection"];
    objc_opt_class();
    v284 = v116;
    if (objc_opt_isKindOfClass())
    {
      v117 = [[_SFPBStrokeAnimationCardSection alloc] initWithDictionary:v116];
      [(_SFPBCardSectionValue *)v5 setStrokeAnimationCardSection:v117];
    }

    v118 = [dictionaryCopy objectForKeyedSubscript:@"buttonListCardSection"];
    objc_opt_class();
    v283 = v118;
    if (objc_opt_isKindOfClass())
    {
      v119 = [[_SFPBButtonListCardSection alloc] initWithDictionary:v118];
      [(_SFPBCardSectionValue *)v5 setButtonListCardSection:v119];
    }

    v120 = [dictionaryCopy objectForKeyedSubscript:@"commandRowCardSection"];
    objc_opt_class();
    v282 = v120;
    if (objc_opt_isKindOfClass())
    {
      v121 = [[_SFPBCommandRowCardSection alloc] initWithDictionary:v120];
      [(_SFPBCardSectionValue *)v5 setCommandRowCardSection:v121];
    }

    v122 = [dictionaryCopy objectForKeyedSubscript:@"leadingTrailingCardSection"];
    objc_opt_class();
    v281 = v122;
    if (objc_opt_isKindOfClass())
    {
      v123 = [[_SFPBLeadingTrailingCardSection alloc] initWithDictionary:v122];
      [(_SFPBCardSectionValue *)v5 setLeadingTrailingCardSection:v123];
    }

    v124 = [dictionaryCopy objectForKeyedSubscript:@"heroTitleCardSection"];
    objc_opt_class();
    v280 = v124;
    if (objc_opt_isKindOfClass())
    {
      v125 = [[_SFPBHeroTitleCardSection alloc] initWithDictionary:v124];
      [(_SFPBCardSectionValue *)v5 setHeroTitleCardSection:v125];
    }

    v126 = [dictionaryCopy objectForKeyedSubscript:@"archiveViewCardSection"];
    objc_opt_class();
    v279 = v126;
    if (objc_opt_isKindOfClass())
    {
      v127 = [[_SFPBArchiveViewCardSection alloc] initWithDictionary:v126];
      [(_SFPBCardSectionValue *)v5 setArchiveViewCardSection:v127];
    }

    v128 = [dictionaryCopy objectForKeyedSubscript:@"appIconCardSection"];
    objc_opt_class();
    v278 = v128;
    if (objc_opt_isKindOfClass())
    {
      v129 = [[_SFPBAppIconCardSection alloc] initWithDictionary:v128];
      [(_SFPBCardSectionValue *)v5 setAppIconCardSection:v129];
    }

    v130 = [dictionaryCopy objectForKeyedSubscript:@"largeTitleDetailedRowCardSection"];
    objc_opt_class();
    v277 = v130;
    if (objc_opt_isKindOfClass())
    {
      v131 = [[_SFPBLargeTitleDetailedRowCardSection alloc] initWithDictionary:v130];
      [(_SFPBCardSectionValue *)v5 setLargeTitleDetailedRowCardSection:v131];
    }

    v132 = [dictionaryCopy objectForKeyedSubscript:@"safariTableOfContentsCardSection"];
    objc_opt_class();
    v276 = v132;
    if (objc_opt_isKindOfClass())
    {
      v133 = [[_SFPBSafariTableOfContentsCardSection alloc] initWithDictionary:v132];
      [(_SFPBCardSectionValue *)v5 setSafariTableOfContentsCardSection:v133];
    }

    v134 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemShortNumberCardSection"];
    objc_opt_class();
    v275 = v134;
    if (objc_opt_isKindOfClass())
    {
      v135 = [[_SFPBRFSummaryItemShortNumberCardSection alloc] initWithDictionary:v134];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemShortNumberCardSection:v135];
    }

    v136 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemTextCardSection"];
    objc_opt_class();
    v274 = v136;
    if (objc_opt_isKindOfClass())
    {
      v137 = [[_SFPBRFSummaryItemTextCardSection alloc] initWithDictionary:v136];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemTextCardSection:v137];
    }

    v138 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemStandardCardSection"];
    objc_opt_class();
    v273 = v138;
    if (objc_opt_isKindOfClass())
    {
      v139 = [[_SFPBRFSummaryItemStandardCardSection alloc] initWithDictionary:v138];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemStandardCardSection:v139];
    }

    v140 = [dictionaryCopy objectForKeyedSubscript:@"rfFactItemShortNumberCardSection"];
    objc_opt_class();
    v272 = v140;
    if (objc_opt_isKindOfClass())
    {
      v141 = [[_SFPBRFFactItemShortNumberCardSection alloc] initWithDictionary:v140];
      [(_SFPBCardSectionValue *)v5 setRfFactItemShortNumberCardSection:v141];
    }

    v142 = [dictionaryCopy objectForKeyedSubscript:@"rfFactItemStandardCardSection"];
    objc_opt_class();
    v271 = v142;
    if (objc_opt_isKindOfClass())
    {
      v143 = [[_SFPBRFFactItemStandardCardSection alloc] initWithDictionary:v142];
      [(_SFPBCardSectionValue *)v5 setRfFactItemStandardCardSection:v143];
    }

    v144 = [dictionaryCopy objectForKeyedSubscript:@"rfLongItemStandardCardSection"];
    objc_opt_class();
    v270 = v144;
    if (objc_opt_isKindOfClass())
    {
      v145 = [[_SFPBRFLongItemStandardCardSection alloc] initWithDictionary:v144];
      [(_SFPBCardSectionValue *)v5 setRfLongItemStandardCardSection:v145];
    }

    v146 = [dictionaryCopy objectForKeyedSubscript:@"rfPrimaryHeaderRichCardSection"];
    objc_opt_class();
    v269 = v146;
    if (objc_opt_isKindOfClass())
    {
      v147 = [[_SFPBRFPrimaryHeaderRichCardSection alloc] initWithDictionary:v146];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderRichCardSection:v147];
    }

    v148 = [dictionaryCopy objectForKeyedSubscript:@"rfPrimaryHeaderStandardCardSection"];
    objc_opt_class();
    v268 = v148;
    if (objc_opt_isKindOfClass())
    {
      v149 = [[_SFPBRFPrimaryHeaderStandardCardSection alloc] initWithDictionary:v148];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderStandardCardSection:v149];
    }

    v150 = [dictionaryCopy objectForKeyedSubscript:@"rfReferenceFootnoteCardSection"];
    objc_opt_class();
    v267 = v150;
    if (objc_opt_isKindOfClass())
    {
      v151 = [[_SFPBRFReferenceFootnoteCardSection alloc] initWithDictionary:v150];
      [(_SFPBCardSectionValue *)v5 setRfReferenceFootnoteCardSection:v151];
    }

    v152 = [dictionaryCopy objectForKeyedSubscript:@"rfReferenceRichCardSection"];
    objc_opt_class();
    v266 = v152;
    if (objc_opt_isKindOfClass())
    {
      v153 = [[_SFPBRFReferenceRichCardSection alloc] initWithDictionary:v152];
      [(_SFPBCardSectionValue *)v5 setRfReferenceRichCardSection:v153];
    }

    v154 = [dictionaryCopy objectForKeyedSubscript:@"rfSimpleItemRichCardSection"];
    objc_opt_class();
    v265 = v154;
    if (objc_opt_isKindOfClass())
    {
      v155 = [[_SFPBRFSimpleItemRichCardSection alloc] initWithDictionary:v154];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemRichCardSection:v155];
    }

    v156 = [dictionaryCopy objectForKeyedSubscript:@"rfSimpleItemStandardCardSection"];
    objc_opt_class();
    v264 = v156;
    if (objc_opt_isKindOfClass())
    {
      v157 = [[_SFPBRFSimpleItemStandardCardSection alloc] initWithDictionary:v156];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemStandardCardSection:v157];
    }

    v158 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemAlignedTextCardSection"];
    objc_opt_class();
    v263 = v158;
    if (objc_opt_isKindOfClass())
    {
      v159 = [[_SFPBRFSummaryItemAlignedTextCardSection alloc] initWithDictionary:v158];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemAlignedTextCardSection:v159];
    }

    v160 = [dictionaryCopy objectForKeyedSubscript:@"rfExpandableStandardCardSection"];
    objc_opt_class();
    v262 = v160;
    if (objc_opt_isKindOfClass())
    {
      v161 = [[_SFPBRFExpandableStandardCardSection alloc] initWithDictionary:v160];
      [(_SFPBCardSectionValue *)v5 setRfExpandableStandardCardSection:v161];
    }

    v162 = [dictionaryCopy objectForKeyedSubscript:@"rfFactItemButtonCardSection"];
    objc_opt_class();
    v261 = v162;
    if (objc_opt_isKindOfClass())
    {
      v163 = [[_SFPBRFFactItemButtonCardSection alloc] initWithDictionary:v162];
      [(_SFPBCardSectionValue *)v5 setRfFactItemButtonCardSection:v163];
    }

    v164 = [dictionaryCopy objectForKeyedSubscript:@"rfFactItemHeroNumberCardSection"];
    objc_opt_class();
    v260 = v164;
    if (objc_opt_isKindOfClass())
    {
      v165 = [[_SFPBRFFactItemHeroNumberCardSection alloc] initWithDictionary:v164];
      [(_SFPBCardSectionValue *)v5 setRfFactItemHeroNumberCardSection:v165];
    }

    v166 = [dictionaryCopy objectForKeyedSubscript:@"rfPrimaryHeaderMarqueeCardSection"];
    objc_opt_class();
    v259 = v166;
    if (objc_opt_isKindOfClass())
    {
      v167 = [[_SFPBRFPrimaryHeaderMarqueeCardSection alloc] initWithDictionary:v166];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderMarqueeCardSection:v167];
    }

    v168 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemDetailedTextCardSection"];
    objc_opt_class();
    v258 = v168;
    if (objc_opt_isKindOfClass())
    {
      v169 = [[_SFPBRFSummaryItemDetailedTextCardSection alloc] initWithDictionary:v168];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemDetailedTextCardSection:v169];
    }

    v170 = [dictionaryCopy objectForKeyedSubscript:@"rfSimpleItemPlayerCardSection"];
    objc_opt_class();
    v257 = v170;
    if (objc_opt_isKindOfClass())
    {
      v171 = [[_SFPBRFSimpleItemPlayerCardSection alloc] initWithDictionary:v170];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemPlayerCardSection:v171];
    }

    v172 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemPairCardSection"];
    objc_opt_class();
    v256 = v172;
    if (objc_opt_isKindOfClass())
    {
      v173 = [[_SFPBRFSummaryItemPairCardSection alloc] initWithDictionary:v172];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPairCardSection:v173];
    }

    v174 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemPairNumberCardSection"];
    objc_opt_class();
    v255 = v174;
    if (objc_opt_isKindOfClass())
    {
      v175 = [[_SFPBRFSummaryItemPairNumberCardSection alloc] initWithDictionary:v174];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPairNumberCardSection:v175];
    }

    v176 = [dictionaryCopy objectForKeyedSubscript:@"rfFactItemShortHeroNumberCardSection"];
    objc_opt_class();
    v254 = v176;
    if (objc_opt_isKindOfClass())
    {
      v177 = [[_SFPBRFFactItemShortHeroNumberCardSection alloc] initWithDictionary:v176];
      [(_SFPBCardSectionValue *)v5 setRfFactItemShortHeroNumberCardSection:v177];
    }

    v178 = [dictionaryCopy objectForKeyedSubscript:@"rfFactItemDetailedNumberCardSection"];
    objc_opt_class();
    v253 = v178;
    if (objc_opt_isKindOfClass())
    {
      v179 = [[_SFPBRFFactItemDetailedNumberCardSection alloc] initWithDictionary:v178];
      [(_SFPBCardSectionValue *)v5 setRfFactItemDetailedNumberCardSection:v179];
    }

    v180 = [dictionaryCopy objectForKeyedSubscript:@"rfFactItemHeroButtonCardSection"];
    objc_opt_class();
    v252 = v180;
    if (objc_opt_isKindOfClass())
    {
      v181 = [[_SFPBRFFactItemHeroButtonCardSection alloc] initWithDictionary:v180];
      [(_SFPBCardSectionValue *)v5 setRfFactItemHeroButtonCardSection:v181];
    }

    v182 = [dictionaryCopy objectForKeyedSubscript:@"rfFactItemImageRightCardSection"];
    objc_opt_class();
    v251 = v182;
    if (objc_opt_isKindOfClass())
    {
      v183 = [[_SFPBRFFactItemImageRightCardSection alloc] initWithDictionary:v182];
      [(_SFPBCardSectionValue *)v5 setRfFactItemImageRightCardSection:v183];
    }

    v184 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemSwitchV2CardSection"];
    objc_opt_class();
    v250 = v184;
    if (objc_opt_isKindOfClass())
    {
      v185 = [[_SFPBRFSummaryItemSwitchV2CardSection alloc] initWithDictionary:v184];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemSwitchV2CardSection:v185];
    }

    v186 = [dictionaryCopy objectForKeyedSubscript:@"rfTableHeaderCardSection"];
    objc_opt_class();
    v249 = v186;
    if (objc_opt_isKindOfClass())
    {
      v187 = [[_SFPBRFTableHeaderCardSection alloc] initWithDictionary:v186];
      [(_SFPBCardSectionValue *)v5 setRfTableHeaderCardSection:v187];
    }

    v188 = [dictionaryCopy objectForKeyedSubscript:@"rfTableRowCardSection"];
    objc_opt_class();
    v248 = v188;
    if (objc_opt_isKindOfClass())
    {
      v189 = [[_SFPBRFTableRowCardSection alloc] initWithDictionary:v188];
      [(_SFPBCardSectionValue *)v5 setRfTableRowCardSection:v189];
    }

    v190 = [dictionaryCopy objectForKeyedSubscript:@"rfSimpleItemVisualElementCardSection"];
    objc_opt_class();
    v247 = v190;
    if (objc_opt_isKindOfClass())
    {
      v191 = [[_SFPBRFSimpleItemVisualElementCardSection alloc] initWithDictionary:v190];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemVisualElementCardSection:v191];
    }

    v192 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemPlayerCardSection"];
    objc_opt_class();
    v246 = v192;
    if (objc_opt_isKindOfClass())
    {
      v193 = [[_SFPBRFSummaryItemPlayerCardSection alloc] initWithDictionary:v192];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemPlayerCardSection:v193];
    }

    v194 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemImageRightCardSection"];
    objc_opt_class();
    v245 = v194;
    if (objc_opt_isKindOfClass())
    {
      v195 = [[_SFPBRFSummaryItemImageRightCardSection alloc] initWithDictionary:v194];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemImageRightCardSection:v195];
    }

    v196 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemButtonCardSection"];
    objc_opt_class();
    v244 = v196;
    if (objc_opt_isKindOfClass())
    {
      v197 = [[_SFPBRFSummaryItemButtonCardSection alloc] initWithDictionary:v196];
      [(_SFPBCardSectionValue *)v5 setRfSummaryItemButtonCardSection:v197];
    }

    v198 = [dictionaryCopy objectForKeyedSubscript:@"rfSimpleItemReverseRichCardSection"];
    objc_opt_class();
    v243 = v198;
    if (objc_opt_isKindOfClass())
    {
      v199 = [[_SFPBRFSimpleItemReverseRichCardSection alloc] initWithDictionary:v198];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemReverseRichCardSection:v199];
    }

    v200 = [dictionaryCopy objectForKeyedSubscript:@"rfSimpleItemRichSearchResultCardSection"];
    objc_opt_class();
    v242 = v200;
    if (objc_opt_isKindOfClass())
    {
      v201 = [[_SFPBRFSimpleItemRichSearchResultCardSection alloc] initWithDictionary:v200];
      [(_SFPBCardSectionValue *)v5 setRfSimpleItemRichSearchResultCardSection:v201];
    }

    v202 = [dictionaryCopy objectForKeyedSubscript:@"rfPrimaryHeaderStackedImageCardSection"];
    objc_opt_class();
    v241 = v202;
    if (objc_opt_isKindOfClass())
    {
      v203 = [[_SFPBRFPrimaryHeaderStackedImageCardSection alloc] initWithDictionary:v202];
      [(_SFPBCardSectionValue *)v5 setRfPrimaryHeaderStackedImageCardSection:v203];
    }

    v204 = [dictionaryCopy objectForKeyedSubscript:@"rfReferenceItemLogoCardSection"];
    objc_opt_class();
    v240 = v204;
    if (objc_opt_isKindOfClass())
    {
      v205 = [[_SFPBRFReferenceItemLogoCardSection alloc] initWithDictionary:v204];
      [(_SFPBCardSectionValue *)v5 setRfReferenceItemLogoCardSection:v205];
    }

    v206 = [dictionaryCopy objectForKeyedSubscript:@"rfReferenceItemButtonCardSection"];
    objc_opt_class();
    v239 = v206;
    if (objc_opt_isKindOfClass())
    {
      v207 = [[_SFPBRFReferenceItemButtonCardSection alloc] initWithDictionary:v206];
      [(_SFPBCardSectionValue *)v5 setRfReferenceItemButtonCardSection:v207];
    }

    v208 = [dictionaryCopy objectForKeyedSubscript:@"rfButtonCardSection"];
    objc_opt_class();
    v238 = v208;
    if (objc_opt_isKindOfClass())
    {
      v209 = [[_SFPBRFButtonCardSection alloc] initWithDictionary:v208];
      [(_SFPBCardSectionValue *)v5 setRfButtonCardSection:v209];
    }

    v210 = [dictionaryCopy objectForKeyedSubscript:@"rfBinaryButtonCardSection"];
    objc_opt_class();
    v237 = v210;
    if (objc_opt_isKindOfClass())
    {
      v211 = [[_SFPBRFBinaryButtonCardSection alloc] initWithDictionary:v210];
      [(_SFPBCardSectionValue *)v5 setRfBinaryButtonCardSection:v211];
    }

    v236 = v6;
    v212 = [dictionaryCopy objectForKeyedSubscript:@"rfReferenceCenteredCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v213 = [[_SFPBRFReferenceCenteredCardSection alloc] initWithDictionary:v212];
      [(_SFPBCardSectionValue *)v5 setRfReferenceCenteredCardSection:v213];
    }

    v230 = v212;
    v235 = v8;
    v214 = [dictionaryCopy objectForKeyedSubscript:@"rfSecondaryHeaderStandardCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v215 = [[_SFPBRFSecondaryHeaderStandardCardSection alloc] initWithDictionary:v214];
      [(_SFPBCardSectionValue *)v5 setRfSecondaryHeaderStandardCardSection:v215];
    }

    v234 = v10;
    v216 = [dictionaryCopy objectForKeyedSubscript:@"rfSecondaryHeaderEmphasizedCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v217 = [[_SFPBRFSecondaryHeaderEmphasizedCardSection alloc] initWithDictionary:v216];
      [(_SFPBCardSectionValue *)v5 setRfSecondaryHeaderEmphasizedCardSection:v217];
    }

    v233 = v12;
    v218 = [dictionaryCopy objectForKeyedSubscript:@"rfMapCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v219 = [[_SFPBRFMapCardSection alloc] initWithDictionary:v218];
      [(_SFPBCardSectionValue *)v5 setRfMapCardSection:v219];
    }

    v232 = v14;
    v220 = [dictionaryCopy objectForKeyedSubscript:@"rfReferenceStandardCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v221 = [[_SFPBRFReferenceStandardCardSection alloc] initWithDictionary:v220];
      [(_SFPBCardSectionValue *)v5 setRfReferenceStandardCardSection:v221];
    }

    v231 = v16;
    v222 = [dictionaryCopy objectForKeyedSubscript:@"rfMultiButtonCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v223 = [[_SFPBRFMultiButtonCardSection alloc] initWithDictionary:v222];
      [(_SFPBCardSectionValue *)v5 setRfMultiButtonCardSection:v223];
    }

    v224 = [dictionaryCopy objectForKeyedSubscript:@"rfDisambiguationTitleCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v225 = [[_SFPBRFDisambiguationTitleCardSection alloc] initWithDictionary:v224];
      [(_SFPBCardSectionValue *)v5 setRfDisambiguationTitleCardSection:v225];
    }

    v226 = [dictionaryCopy objectForKeyedSubscript:@"rfSummaryItemExpandableCardSection"];
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

- (_SFPBCardSectionValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCardSectionValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCardSectionValue *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_activityIndicatorCardSection)
  {
    activityIndicatorCardSection = [(_SFPBCardSectionValue *)self activityIndicatorCardSection];
    dictionaryRepresentation = [activityIndicatorCardSection dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"activityIndicatorCardSection"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"activityIndicatorCardSection"];
    }
  }

  if (self->_appIconCardSection)
  {
    appIconCardSection = [(_SFPBCardSectionValue *)self appIconCardSection];
    dictionaryRepresentation2 = [appIconCardSection dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"appIconCardSection"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"appIconCardSection"];
    }
  }

  if (self->_appLinkCardSection)
  {
    appLinkCardSection = [(_SFPBCardSectionValue *)self appLinkCardSection];
    dictionaryRepresentation3 = [appLinkCardSection dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"appLinkCardSection"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"appLinkCardSection"];
    }
  }

  if (self->_archiveViewCardSection)
  {
    archiveViewCardSection = [(_SFPBCardSectionValue *)self archiveViewCardSection];
    dictionaryRepresentation4 = [archiveViewCardSection dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"archiveViewCardSection"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"archiveViewCardSection"];
    }
  }

  if (self->_attributionFooterCardSection)
  {
    attributionFooterCardSection = [(_SFPBCardSectionValue *)self attributionFooterCardSection];
    dictionaryRepresentation5 = [attributionFooterCardSection dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"attributionFooterCardSection"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"attributionFooterCardSection"];
    }
  }

  if (self->_audioPlaybackCardSection)
  {
    audioPlaybackCardSection = [(_SFPBCardSectionValue *)self audioPlaybackCardSection];
    dictionaryRepresentation6 = [audioPlaybackCardSection dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"audioPlaybackCardSection"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"audioPlaybackCardSection"];
    }
  }

  if (self->_buttonCardSection)
  {
    buttonCardSection = [(_SFPBCardSectionValue *)self buttonCardSection];
    dictionaryRepresentation7 = [buttonCardSection dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"buttonCardSection"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"buttonCardSection"];
    }
  }

  if (self->_buttonListCardSection)
  {
    buttonListCardSection = [(_SFPBCardSectionValue *)self buttonListCardSection];
    dictionaryRepresentation8 = [buttonListCardSection dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"buttonListCardSection"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"buttonListCardSection"];
    }
  }

  if (self->_collectionCardSection)
  {
    collectionCardSection = [(_SFPBCardSectionValue *)self collectionCardSection];
    dictionaryRepresentation9 = [collectionCardSection dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"collectionCardSection"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"collectionCardSection"];
    }
  }

  if (self->_colorBarCardSection)
  {
    colorBarCardSection = [(_SFPBCardSectionValue *)self colorBarCardSection];
    dictionaryRepresentation10 = [colorBarCardSection dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"colorBarCardSection"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"colorBarCardSection"];
    }
  }

  if (self->_combinedCardSection)
  {
    combinedCardSection = [(_SFPBCardSectionValue *)self combinedCardSection];
    dictionaryRepresentation11 = [combinedCardSection dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"combinedCardSection"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"combinedCardSection"];
    }
  }

  if (self->_commandRowCardSection)
  {
    commandRowCardSection = [(_SFPBCardSectionValue *)self commandRowCardSection];
    dictionaryRepresentation12 = [commandRowCardSection dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"commandRowCardSection"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"commandRowCardSection"];
    }
  }

  if (self->_compactRowCardSection)
  {
    compactRowCardSection = [(_SFPBCardSectionValue *)self compactRowCardSection];
    dictionaryRepresentation13 = [compactRowCardSection dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"compactRowCardSection"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"compactRowCardSection"];
    }
  }

  if (self->_descriptionCardSection)
  {
    descriptionCardSection = [(_SFPBCardSectionValue *)self descriptionCardSection];
    dictionaryRepresentation14 = [descriptionCardSection dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"descriptionCardSection"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"descriptionCardSection"];
    }
  }

  if (self->_detailedRowCardSection)
  {
    detailedRowCardSection = [(_SFPBCardSectionValue *)self detailedRowCardSection];
    dictionaryRepresentation15 = [detailedRowCardSection dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"detailedRowCardSection"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"detailedRowCardSection"];
    }
  }

  if (self->_findMyCardSection)
  {
    findMyCardSection = [(_SFPBCardSectionValue *)self findMyCardSection];
    dictionaryRepresentation16 = [findMyCardSection dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"findMyCardSection"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"findMyCardSection"];
    }
  }

  if (self->_flightCardSection)
  {
    flightCardSection = [(_SFPBCardSectionValue *)self flightCardSection];
    dictionaryRepresentation17 = [flightCardSection dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"flightCardSection"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"flightCardSection"];
    }
  }

  if (self->_gridCardSection)
  {
    gridCardSection = [(_SFPBCardSectionValue *)self gridCardSection];
    dictionaryRepresentation18 = [gridCardSection dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"gridCardSection"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"gridCardSection"];
    }
  }

  if (self->_heroCardSection)
  {
    heroCardSection = [(_SFPBCardSectionValue *)self heroCardSection];
    dictionaryRepresentation19 = [heroCardSection dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"heroCardSection"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"heroCardSection"];
    }
  }

  if (self->_heroTitleCardSection)
  {
    heroTitleCardSection = [(_SFPBCardSectionValue *)self heroTitleCardSection];
    dictionaryRepresentation20 = [heroTitleCardSection dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"heroTitleCardSection"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"heroTitleCardSection"];
    }
  }

  if (self->_horizontalButtonCardSection)
  {
    horizontalButtonCardSection = [(_SFPBCardSectionValue *)self horizontalButtonCardSection];
    dictionaryRepresentation21 = [horizontalButtonCardSection dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"horizontalButtonCardSection"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"horizontalButtonCardSection"];
    }
  }

  if (self->_horizontalScrollCardSection)
  {
    horizontalScrollCardSection = [(_SFPBCardSectionValue *)self horizontalScrollCardSection];
    dictionaryRepresentation22 = [horizontalScrollCardSection dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"horizontalScrollCardSection"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"horizontalScrollCardSection"];
    }
  }

  if (self->_imagesCardSection)
  {
    imagesCardSection = [(_SFPBCardSectionValue *)self imagesCardSection];
    dictionaryRepresentation23 = [imagesCardSection dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"imagesCardSection"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"imagesCardSection"];
    }
  }

  if (self->_infoCardSection)
  {
    infoCardSection = [(_SFPBCardSectionValue *)self infoCardSection];
    dictionaryRepresentation24 = [infoCardSection dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"infoCardSection"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"infoCardSection"];
    }
  }

  if (self->_keyValueDataCardSection)
  {
    keyValueDataCardSection = [(_SFPBCardSectionValue *)self keyValueDataCardSection];
    dictionaryRepresentation25 = [keyValueDataCardSection dictionaryRepresentation];
    if (dictionaryRepresentation25)
    {
      [dictionary setObject:dictionaryRepresentation25 forKeyedSubscript:@"keyValueDataCardSection"];
    }

    else
    {
      null25 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null25 forKeyedSubscript:@"keyValueDataCardSection"];
    }
  }

  if (self->_largeTitleDetailedRowCardSection)
  {
    largeTitleDetailedRowCardSection = [(_SFPBCardSectionValue *)self largeTitleDetailedRowCardSection];
    dictionaryRepresentation26 = [largeTitleDetailedRowCardSection dictionaryRepresentation];
    if (dictionaryRepresentation26)
    {
      [dictionary setObject:dictionaryRepresentation26 forKeyedSubscript:@"largeTitleDetailedRowCardSection"];
    }

    else
    {
      null26 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null26 forKeyedSubscript:@"largeTitleDetailedRowCardSection"];
    }
  }

  if (self->_leadingTrailingCardSection)
  {
    leadingTrailingCardSection = [(_SFPBCardSectionValue *)self leadingTrailingCardSection];
    dictionaryRepresentation27 = [leadingTrailingCardSection dictionaryRepresentation];
    if (dictionaryRepresentation27)
    {
      [dictionary setObject:dictionaryRepresentation27 forKeyedSubscript:@"leadingTrailingCardSection"];
    }

    else
    {
      null27 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null27 forKeyedSubscript:@"leadingTrailingCardSection"];
    }
  }

  if (self->_linkPresentationCardSection)
  {
    linkPresentationCardSection = [(_SFPBCardSectionValue *)self linkPresentationCardSection];
    dictionaryRepresentation28 = [linkPresentationCardSection dictionaryRepresentation];
    if (dictionaryRepresentation28)
    {
      [dictionary setObject:dictionaryRepresentation28 forKeyedSubscript:@"linkPresentationCardSection"];
    }

    else
    {
      null28 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null28 forKeyedSubscript:@"linkPresentationCardSection"];
    }
  }

  if (self->_listenToCardSection)
  {
    listenToCardSection = [(_SFPBCardSectionValue *)self listenToCardSection];
    dictionaryRepresentation29 = [listenToCardSection dictionaryRepresentation];
    if (dictionaryRepresentation29)
    {
      [dictionary setObject:dictionaryRepresentation29 forKeyedSubscript:@"listenToCardSection"];
    }

    else
    {
      null29 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null29 forKeyedSubscript:@"listenToCardSection"];
    }
  }

  if (self->_mapCardSection)
  {
    mapCardSection = [(_SFPBCardSectionValue *)self mapCardSection];
    dictionaryRepresentation30 = [mapCardSection dictionaryRepresentation];
    if (dictionaryRepresentation30)
    {
      [dictionary setObject:dictionaryRepresentation30 forKeyedSubscript:@"mapCardSection"];
    }

    else
    {
      null30 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null30 forKeyedSubscript:@"mapCardSection"];
    }
  }

  if (self->_mapPlaceCardSection)
  {
    mapPlaceCardSection = [(_SFPBCardSectionValue *)self mapPlaceCardSection];
    dictionaryRepresentation31 = [mapPlaceCardSection dictionaryRepresentation];
    if (dictionaryRepresentation31)
    {
      [dictionary setObject:dictionaryRepresentation31 forKeyedSubscript:@"mapPlaceCardSection"];
    }

    else
    {
      null31 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null31 forKeyedSubscript:@"mapPlaceCardSection"];
    }
  }

  if (self->_mapsDetailedRowCardSection)
  {
    mapsDetailedRowCardSection = [(_SFPBCardSectionValue *)self mapsDetailedRowCardSection];
    dictionaryRepresentation32 = [mapsDetailedRowCardSection dictionaryRepresentation];
    if (dictionaryRepresentation32)
    {
      [dictionary setObject:dictionaryRepresentation32 forKeyedSubscript:@"mapsDetailedRowCardSection"];
    }

    else
    {
      null32 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null32 forKeyedSubscript:@"mapsDetailedRowCardSection"];
    }
  }

  if (self->_mediaInfoCardSection)
  {
    mediaInfoCardSection = [(_SFPBCardSectionValue *)self mediaInfoCardSection];
    dictionaryRepresentation33 = [mediaInfoCardSection dictionaryRepresentation];
    if (dictionaryRepresentation33)
    {
      [dictionary setObject:dictionaryRepresentation33 forKeyedSubscript:@"mediaInfoCardSection"];
    }

    else
    {
      null33 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null33 forKeyedSubscript:@"mediaInfoCardSection"];
    }
  }

  if (self->_mediaPlayerCardSection)
  {
    mediaPlayerCardSection = [(_SFPBCardSectionValue *)self mediaPlayerCardSection];
    dictionaryRepresentation34 = [mediaPlayerCardSection dictionaryRepresentation];
    if (dictionaryRepresentation34)
    {
      [dictionary setObject:dictionaryRepresentation34 forKeyedSubscript:@"mediaPlayerCardSection"];
    }

    else
    {
      null34 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null34 forKeyedSubscript:@"mediaPlayerCardSection"];
    }
  }

  if (self->_mediaRemoteControlCardSection)
  {
    mediaRemoteControlCardSection = [(_SFPBCardSectionValue *)self mediaRemoteControlCardSection];
    dictionaryRepresentation35 = [mediaRemoteControlCardSection dictionaryRepresentation];
    if (dictionaryRepresentation35)
    {
      [dictionary setObject:dictionaryRepresentation35 forKeyedSubscript:@"mediaRemoteControlCardSection"];
    }

    else
    {
      null35 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null35 forKeyedSubscript:@"mediaRemoteControlCardSection"];
    }
  }

  if (self->_messageCardSection)
  {
    messageCardSection = [(_SFPBCardSectionValue *)self messageCardSection];
    dictionaryRepresentation36 = [messageCardSection dictionaryRepresentation];
    if (dictionaryRepresentation36)
    {
      [dictionary setObject:dictionaryRepresentation36 forKeyedSubscript:@"messageCardSection"];
    }

    else
    {
      null36 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null36 forKeyedSubscript:@"messageCardSection"];
    }
  }

  if (self->_metaInfoCardSection)
  {
    metaInfoCardSection = [(_SFPBCardSectionValue *)self metaInfoCardSection];
    dictionaryRepresentation37 = [metaInfoCardSection dictionaryRepresentation];
    if (dictionaryRepresentation37)
    {
      [dictionary setObject:dictionaryRepresentation37 forKeyedSubscript:@"metaInfoCardSection"];
    }

    else
    {
      null37 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null37 forKeyedSubscript:@"metaInfoCardSection"];
    }
  }

  if (self->_miniCardSection)
  {
    miniCardSection = [(_SFPBCardSectionValue *)self miniCardSection];
    dictionaryRepresentation38 = [miniCardSection dictionaryRepresentation];
    if (dictionaryRepresentation38)
    {
      [dictionary setObject:dictionaryRepresentation38 forKeyedSubscript:@"miniCardSection"];
    }

    else
    {
      null38 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null38 forKeyedSubscript:@"miniCardSection"];
    }
  }

  if (self->_newsCardSection)
  {
    newsCardSection = [(_SFPBCardSectionValue *)self newsCardSection];
    dictionaryRepresentation39 = [newsCardSection dictionaryRepresentation];
    if (dictionaryRepresentation39)
    {
      [dictionary setObject:dictionaryRepresentation39 forKeyedSubscript:@"newsCardSection"];
    }

    else
    {
      null39 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null39 forKeyedSubscript:@"newsCardSection"];
    }
  }

  if (self->_nowPlayingCardSection)
  {
    nowPlayingCardSection = [(_SFPBCardSectionValue *)self nowPlayingCardSection];
    dictionaryRepresentation40 = [nowPlayingCardSection dictionaryRepresentation];
    if (dictionaryRepresentation40)
    {
      [dictionary setObject:dictionaryRepresentation40 forKeyedSubscript:@"nowPlayingCardSection"];
    }

    else
    {
      null40 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null40 forKeyedSubscript:@"nowPlayingCardSection"];
    }
  }

  if (self->_personHeaderCardSection)
  {
    personHeaderCardSection = [(_SFPBCardSectionValue *)self personHeaderCardSection];
    dictionaryRepresentation41 = [personHeaderCardSection dictionaryRepresentation];
    if (dictionaryRepresentation41)
    {
      [dictionary setObject:dictionaryRepresentation41 forKeyedSubscript:@"personHeaderCardSection"];
    }

    else
    {
      null41 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null41 forKeyedSubscript:@"personHeaderCardSection"];
    }
  }

  if (self->_productCardSection)
  {
    productCardSection = [(_SFPBCardSectionValue *)self productCardSection];
    dictionaryRepresentation42 = [productCardSection dictionaryRepresentation];
    if (dictionaryRepresentation42)
    {
      [dictionary setObject:dictionaryRepresentation42 forKeyedSubscript:@"productCardSection"];
    }

    else
    {
      null42 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null42 forKeyedSubscript:@"productCardSection"];
    }
  }

  if (self->_responseWrapperCardSection)
  {
    responseWrapperCardSection = [(_SFPBCardSectionValue *)self responseWrapperCardSection];
    dictionaryRepresentation43 = [responseWrapperCardSection dictionaryRepresentation];
    if (dictionaryRepresentation43)
    {
      [dictionary setObject:dictionaryRepresentation43 forKeyedSubscript:@"responseWrapperCardSection"];
    }

    else
    {
      null43 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null43 forKeyedSubscript:@"responseWrapperCardSection"];
    }
  }

  if (self->_rfBinaryButtonCardSection)
  {
    rfBinaryButtonCardSection = [(_SFPBCardSectionValue *)self rfBinaryButtonCardSection];
    dictionaryRepresentation44 = [rfBinaryButtonCardSection dictionaryRepresentation];
    if (dictionaryRepresentation44)
    {
      [dictionary setObject:dictionaryRepresentation44 forKeyedSubscript:@"rfBinaryButtonCardSection"];
    }

    else
    {
      null44 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null44 forKeyedSubscript:@"rfBinaryButtonCardSection"];
    }
  }

  if (self->_rfButtonCardSection)
  {
    rfButtonCardSection = [(_SFPBCardSectionValue *)self rfButtonCardSection];
    dictionaryRepresentation45 = [rfButtonCardSection dictionaryRepresentation];
    if (dictionaryRepresentation45)
    {
      [dictionary setObject:dictionaryRepresentation45 forKeyedSubscript:@"rfButtonCardSection"];
    }

    else
    {
      null45 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null45 forKeyedSubscript:@"rfButtonCardSection"];
    }
  }

  if (self->_rfDisambiguationTitleCardSection)
  {
    rfDisambiguationTitleCardSection = [(_SFPBCardSectionValue *)self rfDisambiguationTitleCardSection];
    dictionaryRepresentation46 = [rfDisambiguationTitleCardSection dictionaryRepresentation];
    if (dictionaryRepresentation46)
    {
      [dictionary setObject:dictionaryRepresentation46 forKeyedSubscript:@"rfDisambiguationTitleCardSection"];
    }

    else
    {
      null46 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null46 forKeyedSubscript:@"rfDisambiguationTitleCardSection"];
    }
  }

  if (self->_rfExpandableStandardCardSection)
  {
    rfExpandableStandardCardSection = [(_SFPBCardSectionValue *)self rfExpandableStandardCardSection];
    dictionaryRepresentation47 = [rfExpandableStandardCardSection dictionaryRepresentation];
    if (dictionaryRepresentation47)
    {
      [dictionary setObject:dictionaryRepresentation47 forKeyedSubscript:@"rfExpandableStandardCardSection"];
    }

    else
    {
      null47 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null47 forKeyedSubscript:@"rfExpandableStandardCardSection"];
    }
  }

  if (self->_rfFactItemButtonCardSection)
  {
    rfFactItemButtonCardSection = [(_SFPBCardSectionValue *)self rfFactItemButtonCardSection];
    dictionaryRepresentation48 = [rfFactItemButtonCardSection dictionaryRepresentation];
    if (dictionaryRepresentation48)
    {
      [dictionary setObject:dictionaryRepresentation48 forKeyedSubscript:@"rfFactItemButtonCardSection"];
    }

    else
    {
      null48 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null48 forKeyedSubscript:@"rfFactItemButtonCardSection"];
    }
  }

  if (self->_rfFactItemDetailedNumberCardSection)
  {
    rfFactItemDetailedNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemDetailedNumberCardSection];
    dictionaryRepresentation49 = [rfFactItemDetailedNumberCardSection dictionaryRepresentation];
    if (dictionaryRepresentation49)
    {
      [dictionary setObject:dictionaryRepresentation49 forKeyedSubscript:@"rfFactItemDetailedNumberCardSection"];
    }

    else
    {
      null49 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null49 forKeyedSubscript:@"rfFactItemDetailedNumberCardSection"];
    }
  }

  if (self->_rfFactItemHeroButtonCardSection)
  {
    rfFactItemHeroButtonCardSection = [(_SFPBCardSectionValue *)self rfFactItemHeroButtonCardSection];
    dictionaryRepresentation50 = [rfFactItemHeroButtonCardSection dictionaryRepresentation];
    if (dictionaryRepresentation50)
    {
      [dictionary setObject:dictionaryRepresentation50 forKeyedSubscript:@"rfFactItemHeroButtonCardSection"];
    }

    else
    {
      null50 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null50 forKeyedSubscript:@"rfFactItemHeroButtonCardSection"];
    }
  }

  if (self->_rfFactItemHeroNumberCardSection)
  {
    rfFactItemHeroNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemHeroNumberCardSection];
    dictionaryRepresentation51 = [rfFactItemHeroNumberCardSection dictionaryRepresentation];
    if (dictionaryRepresentation51)
    {
      [dictionary setObject:dictionaryRepresentation51 forKeyedSubscript:@"rfFactItemHeroNumberCardSection"];
    }

    else
    {
      null51 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null51 forKeyedSubscript:@"rfFactItemHeroNumberCardSection"];
    }
  }

  if (self->_rfFactItemImageRightCardSection)
  {
    rfFactItemImageRightCardSection = [(_SFPBCardSectionValue *)self rfFactItemImageRightCardSection];
    dictionaryRepresentation52 = [rfFactItemImageRightCardSection dictionaryRepresentation];
    if (dictionaryRepresentation52)
    {
      [dictionary setObject:dictionaryRepresentation52 forKeyedSubscript:@"rfFactItemImageRightCardSection"];
    }

    else
    {
      null52 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null52 forKeyedSubscript:@"rfFactItemImageRightCardSection"];
    }
  }

  if (self->_rfFactItemShortHeroNumberCardSection)
  {
    rfFactItemShortHeroNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
    dictionaryRepresentation53 = [rfFactItemShortHeroNumberCardSection dictionaryRepresentation];
    if (dictionaryRepresentation53)
    {
      [dictionary setObject:dictionaryRepresentation53 forKeyedSubscript:@"rfFactItemShortHeroNumberCardSection"];
    }

    else
    {
      null53 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null53 forKeyedSubscript:@"rfFactItemShortHeroNumberCardSection"];
    }
  }

  if (self->_rfFactItemShortNumberCardSection)
  {
    rfFactItemShortNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemShortNumberCardSection];
    dictionaryRepresentation54 = [rfFactItemShortNumberCardSection dictionaryRepresentation];
    if (dictionaryRepresentation54)
    {
      [dictionary setObject:dictionaryRepresentation54 forKeyedSubscript:@"rfFactItemShortNumberCardSection"];
    }

    else
    {
      null54 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null54 forKeyedSubscript:@"rfFactItemShortNumberCardSection"];
    }
  }

  if (self->_rfFactItemStandardCardSection)
  {
    rfFactItemStandardCardSection = [(_SFPBCardSectionValue *)self rfFactItemStandardCardSection];
    dictionaryRepresentation55 = [rfFactItemStandardCardSection dictionaryRepresentation];
    if (dictionaryRepresentation55)
    {
      [dictionary setObject:dictionaryRepresentation55 forKeyedSubscript:@"rfFactItemStandardCardSection"];
    }

    else
    {
      null55 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null55 forKeyedSubscript:@"rfFactItemStandardCardSection"];
    }
  }

  if (self->_rfLongItemStandardCardSection)
  {
    rfLongItemStandardCardSection = [(_SFPBCardSectionValue *)self rfLongItemStandardCardSection];
    dictionaryRepresentation56 = [rfLongItemStandardCardSection dictionaryRepresentation];
    if (dictionaryRepresentation56)
    {
      [dictionary setObject:dictionaryRepresentation56 forKeyedSubscript:@"rfLongItemStandardCardSection"];
    }

    else
    {
      null56 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null56 forKeyedSubscript:@"rfLongItemStandardCardSection"];
    }
  }

  if (self->_rfMapCardSection)
  {
    rfMapCardSection = [(_SFPBCardSectionValue *)self rfMapCardSection];
    dictionaryRepresentation57 = [rfMapCardSection dictionaryRepresentation];
    if (dictionaryRepresentation57)
    {
      [dictionary setObject:dictionaryRepresentation57 forKeyedSubscript:@"rfMapCardSection"];
    }

    else
    {
      null57 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null57 forKeyedSubscript:@"rfMapCardSection"];
    }
  }

  if (self->_rfMultiButtonCardSection)
  {
    rfMultiButtonCardSection = [(_SFPBCardSectionValue *)self rfMultiButtonCardSection];
    dictionaryRepresentation58 = [rfMultiButtonCardSection dictionaryRepresentation];
    if (dictionaryRepresentation58)
    {
      [dictionary setObject:dictionaryRepresentation58 forKeyedSubscript:@"rfMultiButtonCardSection"];
    }

    else
    {
      null58 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null58 forKeyedSubscript:@"rfMultiButtonCardSection"];
    }
  }

  if (self->_rfPrimaryHeaderMarqueeCardSection)
  {
    rfPrimaryHeaderMarqueeCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
    dictionaryRepresentation59 = [rfPrimaryHeaderMarqueeCardSection dictionaryRepresentation];
    if (dictionaryRepresentation59)
    {
      [dictionary setObject:dictionaryRepresentation59 forKeyedSubscript:@"rfPrimaryHeaderMarqueeCardSection"];
    }

    else
    {
      null59 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null59 forKeyedSubscript:@"rfPrimaryHeaderMarqueeCardSection"];
    }
  }

  if (self->_rfPrimaryHeaderRichCardSection)
  {
    rfPrimaryHeaderRichCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderRichCardSection];
    dictionaryRepresentation60 = [rfPrimaryHeaderRichCardSection dictionaryRepresentation];
    if (dictionaryRepresentation60)
    {
      [dictionary setObject:dictionaryRepresentation60 forKeyedSubscript:@"rfPrimaryHeaderRichCardSection"];
    }

    else
    {
      null60 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null60 forKeyedSubscript:@"rfPrimaryHeaderRichCardSection"];
    }
  }

  if (self->_rfPrimaryHeaderStackedImageCardSection)
  {
    rfPrimaryHeaderStackedImageCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
    dictionaryRepresentation61 = [rfPrimaryHeaderStackedImageCardSection dictionaryRepresentation];
    if (dictionaryRepresentation61)
    {
      [dictionary setObject:dictionaryRepresentation61 forKeyedSubscript:@"rfPrimaryHeaderStackedImageCardSection"];
    }

    else
    {
      null61 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null61 forKeyedSubscript:@"rfPrimaryHeaderStackedImageCardSection"];
    }
  }

  if (self->_rfPrimaryHeaderStandardCardSection)
  {
    rfPrimaryHeaderStandardCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
    dictionaryRepresentation62 = [rfPrimaryHeaderStandardCardSection dictionaryRepresentation];
    if (dictionaryRepresentation62)
    {
      [dictionary setObject:dictionaryRepresentation62 forKeyedSubscript:@"rfPrimaryHeaderStandardCardSection"];
    }

    else
    {
      null62 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null62 forKeyedSubscript:@"rfPrimaryHeaderStandardCardSection"];
    }
  }

  if (self->_rfReferenceCenteredCardSection)
  {
    rfReferenceCenteredCardSection = [(_SFPBCardSectionValue *)self rfReferenceCenteredCardSection];
    dictionaryRepresentation63 = [rfReferenceCenteredCardSection dictionaryRepresentation];
    if (dictionaryRepresentation63)
    {
      [dictionary setObject:dictionaryRepresentation63 forKeyedSubscript:@"rfReferenceCenteredCardSection"];
    }

    else
    {
      null63 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null63 forKeyedSubscript:@"rfReferenceCenteredCardSection"];
    }
  }

  if (self->_rfReferenceFootnoteCardSection)
  {
    rfReferenceFootnoteCardSection = [(_SFPBCardSectionValue *)self rfReferenceFootnoteCardSection];
    dictionaryRepresentation64 = [rfReferenceFootnoteCardSection dictionaryRepresentation];
    if (dictionaryRepresentation64)
    {
      [dictionary setObject:dictionaryRepresentation64 forKeyedSubscript:@"rfReferenceFootnoteCardSection"];
    }

    else
    {
      null64 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null64 forKeyedSubscript:@"rfReferenceFootnoteCardSection"];
    }
  }

  if (self->_rfReferenceItemButtonCardSection)
  {
    rfReferenceItemButtonCardSection = [(_SFPBCardSectionValue *)self rfReferenceItemButtonCardSection];
    dictionaryRepresentation65 = [rfReferenceItemButtonCardSection dictionaryRepresentation];
    if (dictionaryRepresentation65)
    {
      [dictionary setObject:dictionaryRepresentation65 forKeyedSubscript:@"rfReferenceItemButtonCardSection"];
    }

    else
    {
      null65 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null65 forKeyedSubscript:@"rfReferenceItemButtonCardSection"];
    }
  }

  if (self->_rfReferenceItemLogoCardSection)
  {
    rfReferenceItemLogoCardSection = [(_SFPBCardSectionValue *)self rfReferenceItemLogoCardSection];
    dictionaryRepresentation66 = [rfReferenceItemLogoCardSection dictionaryRepresentation];
    if (dictionaryRepresentation66)
    {
      [dictionary setObject:dictionaryRepresentation66 forKeyedSubscript:@"rfReferenceItemLogoCardSection"];
    }

    else
    {
      null66 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null66 forKeyedSubscript:@"rfReferenceItemLogoCardSection"];
    }
  }

  if (self->_rfReferenceRichCardSection)
  {
    rfReferenceRichCardSection = [(_SFPBCardSectionValue *)self rfReferenceRichCardSection];
    dictionaryRepresentation67 = [rfReferenceRichCardSection dictionaryRepresentation];
    if (dictionaryRepresentation67)
    {
      [dictionary setObject:dictionaryRepresentation67 forKeyedSubscript:@"rfReferenceRichCardSection"];
    }

    else
    {
      null67 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null67 forKeyedSubscript:@"rfReferenceRichCardSection"];
    }
  }

  if (self->_rfReferenceStandardCardSection)
  {
    rfReferenceStandardCardSection = [(_SFPBCardSectionValue *)self rfReferenceStandardCardSection];
    dictionaryRepresentation68 = [rfReferenceStandardCardSection dictionaryRepresentation];
    if (dictionaryRepresentation68)
    {
      [dictionary setObject:dictionaryRepresentation68 forKeyedSubscript:@"rfReferenceStandardCardSection"];
    }

    else
    {
      null68 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null68 forKeyedSubscript:@"rfReferenceStandardCardSection"];
    }
  }

  if (self->_rfSecondaryHeaderEmphasizedCardSection)
  {
    rfSecondaryHeaderEmphasizedCardSection = [(_SFPBCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
    dictionaryRepresentation69 = [rfSecondaryHeaderEmphasizedCardSection dictionaryRepresentation];
    if (dictionaryRepresentation69)
    {
      [dictionary setObject:dictionaryRepresentation69 forKeyedSubscript:@"rfSecondaryHeaderEmphasizedCardSection"];
    }

    else
    {
      null69 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null69 forKeyedSubscript:@"rfSecondaryHeaderEmphasizedCardSection"];
    }
  }

  if (self->_rfSecondaryHeaderStandardCardSection)
  {
    rfSecondaryHeaderStandardCardSection = [(_SFPBCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
    dictionaryRepresentation70 = [rfSecondaryHeaderStandardCardSection dictionaryRepresentation];
    if (dictionaryRepresentation70)
    {
      [dictionary setObject:dictionaryRepresentation70 forKeyedSubscript:@"rfSecondaryHeaderStandardCardSection"];
    }

    else
    {
      null70 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null70 forKeyedSubscript:@"rfSecondaryHeaderStandardCardSection"];
    }
  }

  if (self->_rfSimpleItemPlayerCardSection)
  {
    rfSimpleItemPlayerCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemPlayerCardSection];
    dictionaryRepresentation71 = [rfSimpleItemPlayerCardSection dictionaryRepresentation];
    if (dictionaryRepresentation71)
    {
      [dictionary setObject:dictionaryRepresentation71 forKeyedSubscript:@"rfSimpleItemPlayerCardSection"];
    }

    else
    {
      null71 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null71 forKeyedSubscript:@"rfSimpleItemPlayerCardSection"];
    }
  }

  if (self->_rfSimpleItemReverseRichCardSection)
  {
    rfSimpleItemReverseRichCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemReverseRichCardSection];
    dictionaryRepresentation72 = [rfSimpleItemReverseRichCardSection dictionaryRepresentation];
    if (dictionaryRepresentation72)
    {
      [dictionary setObject:dictionaryRepresentation72 forKeyedSubscript:@"rfSimpleItemReverseRichCardSection"];
    }

    else
    {
      null72 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null72 forKeyedSubscript:@"rfSimpleItemReverseRichCardSection"];
    }
  }

  if (self->_rfSimpleItemRichCardSection)
  {
    rfSimpleItemRichCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemRichCardSection];
    dictionaryRepresentation73 = [rfSimpleItemRichCardSection dictionaryRepresentation];
    if (dictionaryRepresentation73)
    {
      [dictionary setObject:dictionaryRepresentation73 forKeyedSubscript:@"rfSimpleItemRichCardSection"];
    }

    else
    {
      null73 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null73 forKeyedSubscript:@"rfSimpleItemRichCardSection"];
    }
  }

  if (self->_rfSimpleItemRichSearchResultCardSection)
  {
    rfSimpleItemRichSearchResultCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
    dictionaryRepresentation74 = [rfSimpleItemRichSearchResultCardSection dictionaryRepresentation];
    if (dictionaryRepresentation74)
    {
      [dictionary setObject:dictionaryRepresentation74 forKeyedSubscript:@"rfSimpleItemRichSearchResultCardSection"];
    }

    else
    {
      null74 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null74 forKeyedSubscript:@"rfSimpleItemRichSearchResultCardSection"];
    }
  }

  if (self->_rfSimpleItemStandardCardSection)
  {
    rfSimpleItemStandardCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemStandardCardSection];
    dictionaryRepresentation75 = [rfSimpleItemStandardCardSection dictionaryRepresentation];
    if (dictionaryRepresentation75)
    {
      [dictionary setObject:dictionaryRepresentation75 forKeyedSubscript:@"rfSimpleItemStandardCardSection"];
    }

    else
    {
      null75 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null75 forKeyedSubscript:@"rfSimpleItemStandardCardSection"];
    }
  }

  if (self->_rfSimpleItemVisualElementCardSection)
  {
    rfSimpleItemVisualElementCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemVisualElementCardSection];
    dictionaryRepresentation76 = [rfSimpleItemVisualElementCardSection dictionaryRepresentation];
    if (dictionaryRepresentation76)
    {
      [dictionary setObject:dictionaryRepresentation76 forKeyedSubscript:@"rfSimpleItemVisualElementCardSection"];
    }

    else
    {
      null76 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null76 forKeyedSubscript:@"rfSimpleItemVisualElementCardSection"];
    }
  }

  if (self->_rfSummaryItemAlignedTextCardSection)
  {
    rfSummaryItemAlignedTextCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
    dictionaryRepresentation77 = [rfSummaryItemAlignedTextCardSection dictionaryRepresentation];
    if (dictionaryRepresentation77)
    {
      [dictionary setObject:dictionaryRepresentation77 forKeyedSubscript:@"rfSummaryItemAlignedTextCardSection"];
    }

    else
    {
      null77 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null77 forKeyedSubscript:@"rfSummaryItemAlignedTextCardSection"];
    }
  }

  if (self->_rfSummaryItemButtonCardSection)
  {
    rfSummaryItemButtonCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemButtonCardSection];
    dictionaryRepresentation78 = [rfSummaryItemButtonCardSection dictionaryRepresentation];
    if (dictionaryRepresentation78)
    {
      [dictionary setObject:dictionaryRepresentation78 forKeyedSubscript:@"rfSummaryItemButtonCardSection"];
    }

    else
    {
      null78 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null78 forKeyedSubscript:@"rfSummaryItemButtonCardSection"];
    }
  }

  if (self->_rfSummaryItemDetailedTextCardSection)
  {
    rfSummaryItemDetailedTextCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
    dictionaryRepresentation79 = [rfSummaryItemDetailedTextCardSection dictionaryRepresentation];
    if (dictionaryRepresentation79)
    {
      [dictionary setObject:dictionaryRepresentation79 forKeyedSubscript:@"rfSummaryItemDetailedTextCardSection"];
    }

    else
    {
      null79 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null79 forKeyedSubscript:@"rfSummaryItemDetailedTextCardSection"];
    }
  }

  if (self->_rfSummaryItemExpandableCardSection)
  {
    rfSummaryItemExpandableCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemExpandableCardSection];
    dictionaryRepresentation80 = [rfSummaryItemExpandableCardSection dictionaryRepresentation];
    if (dictionaryRepresentation80)
    {
      [dictionary setObject:dictionaryRepresentation80 forKeyedSubscript:@"rfSummaryItemExpandableCardSection"];
    }

    else
    {
      null80 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null80 forKeyedSubscript:@"rfSummaryItemExpandableCardSection"];
    }
  }

  if (self->_rfSummaryItemImageRightCardSection)
  {
    rfSummaryItemImageRightCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemImageRightCardSection];
    dictionaryRepresentation81 = [rfSummaryItemImageRightCardSection dictionaryRepresentation];
    if (dictionaryRepresentation81)
    {
      [dictionary setObject:dictionaryRepresentation81 forKeyedSubscript:@"rfSummaryItemImageRightCardSection"];
    }

    else
    {
      null81 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null81 forKeyedSubscript:@"rfSummaryItemImageRightCardSection"];
    }
  }

  if (self->_rfSummaryItemPairCardSection)
  {
    rfSummaryItemPairCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPairCardSection];
    dictionaryRepresentation82 = [rfSummaryItemPairCardSection dictionaryRepresentation];
    if (dictionaryRepresentation82)
    {
      [dictionary setObject:dictionaryRepresentation82 forKeyedSubscript:@"rfSummaryItemPairCardSection"];
    }

    else
    {
      null82 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null82 forKeyedSubscript:@"rfSummaryItemPairCardSection"];
    }
  }

  if (self->_rfSummaryItemPairNumberCardSection)
  {
    rfSummaryItemPairNumberCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPairNumberCardSection];
    dictionaryRepresentation83 = [rfSummaryItemPairNumberCardSection dictionaryRepresentation];
    if (dictionaryRepresentation83)
    {
      [dictionary setObject:dictionaryRepresentation83 forKeyedSubscript:@"rfSummaryItemPairNumberCardSection"];
    }

    else
    {
      null83 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null83 forKeyedSubscript:@"rfSummaryItemPairNumberCardSection"];
    }
  }

  if (self->_rfSummaryItemPlayerCardSection)
  {
    rfSummaryItemPlayerCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPlayerCardSection];
    dictionaryRepresentation84 = [rfSummaryItemPlayerCardSection dictionaryRepresentation];
    if (dictionaryRepresentation84)
    {
      [dictionary setObject:dictionaryRepresentation84 forKeyedSubscript:@"rfSummaryItemPlayerCardSection"];
    }

    else
    {
      null84 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null84 forKeyedSubscript:@"rfSummaryItemPlayerCardSection"];
    }
  }

  if (self->_rfSummaryItemShortNumberCardSection)
  {
    rfSummaryItemShortNumberCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemShortNumberCardSection];
    dictionaryRepresentation85 = [rfSummaryItemShortNumberCardSection dictionaryRepresentation];
    if (dictionaryRepresentation85)
    {
      [dictionary setObject:dictionaryRepresentation85 forKeyedSubscript:@"rfSummaryItemShortNumberCardSection"];
    }

    else
    {
      null85 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null85 forKeyedSubscript:@"rfSummaryItemShortNumberCardSection"];
    }
  }

  if (self->_rfSummaryItemStandardCardSection)
  {
    rfSummaryItemStandardCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemStandardCardSection];
    dictionaryRepresentation86 = [rfSummaryItemStandardCardSection dictionaryRepresentation];
    if (dictionaryRepresentation86)
    {
      [dictionary setObject:dictionaryRepresentation86 forKeyedSubscript:@"rfSummaryItemStandardCardSection"];
    }

    else
    {
      null86 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null86 forKeyedSubscript:@"rfSummaryItemStandardCardSection"];
    }
  }

  if (self->_rfSummaryItemSwitchV2CardSection)
  {
    rfSummaryItemSwitchV2CardSection = [(_SFPBCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
    dictionaryRepresentation87 = [rfSummaryItemSwitchV2CardSection dictionaryRepresentation];
    if (dictionaryRepresentation87)
    {
      [dictionary setObject:dictionaryRepresentation87 forKeyedSubscript:@"rfSummaryItemSwitchV2CardSection"];
    }

    else
    {
      null87 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null87 forKeyedSubscript:@"rfSummaryItemSwitchV2CardSection"];
    }
  }

  if (self->_rfSummaryItemTextCardSection)
  {
    rfSummaryItemTextCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemTextCardSection];
    dictionaryRepresentation88 = [rfSummaryItemTextCardSection dictionaryRepresentation];
    if (dictionaryRepresentation88)
    {
      [dictionary setObject:dictionaryRepresentation88 forKeyedSubscript:@"rfSummaryItemTextCardSection"];
    }

    else
    {
      null88 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null88 forKeyedSubscript:@"rfSummaryItemTextCardSection"];
    }
  }

  if (self->_rfTableHeaderCardSection)
  {
    rfTableHeaderCardSection = [(_SFPBCardSectionValue *)self rfTableHeaderCardSection];
    dictionaryRepresentation89 = [rfTableHeaderCardSection dictionaryRepresentation];
    if (dictionaryRepresentation89)
    {
      [dictionary setObject:dictionaryRepresentation89 forKeyedSubscript:@"rfTableHeaderCardSection"];
    }

    else
    {
      null89 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null89 forKeyedSubscript:@"rfTableHeaderCardSection"];
    }
  }

  if (self->_rfTableRowCardSection)
  {
    rfTableRowCardSection = [(_SFPBCardSectionValue *)self rfTableRowCardSection];
    dictionaryRepresentation90 = [rfTableRowCardSection dictionaryRepresentation];
    if (dictionaryRepresentation90)
    {
      [dictionary setObject:dictionaryRepresentation90 forKeyedSubscript:@"rfTableRowCardSection"];
    }

    else
    {
      null90 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null90 forKeyedSubscript:@"rfTableRowCardSection"];
    }
  }

  if (self->_richTitleCardSection)
  {
    richTitleCardSection = [(_SFPBCardSectionValue *)self richTitleCardSection];
    dictionaryRepresentation91 = [richTitleCardSection dictionaryRepresentation];
    if (dictionaryRepresentation91)
    {
      [dictionary setObject:dictionaryRepresentation91 forKeyedSubscript:@"richTitleCardSection"];
    }

    else
    {
      null91 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null91 forKeyedSubscript:@"richTitleCardSection"];
    }
  }

  if (self->_rowCardSection)
  {
    rowCardSection = [(_SFPBCardSectionValue *)self rowCardSection];
    dictionaryRepresentation92 = [rowCardSection dictionaryRepresentation];
    if (dictionaryRepresentation92)
    {
      [dictionary setObject:dictionaryRepresentation92 forKeyedSubscript:@"rowCardSection"];
    }

    else
    {
      null92 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null92 forKeyedSubscript:@"rowCardSection"];
    }
  }

  if (self->_safariTableOfContentsCardSection)
  {
    safariTableOfContentsCardSection = [(_SFPBCardSectionValue *)self safariTableOfContentsCardSection];
    dictionaryRepresentation93 = [safariTableOfContentsCardSection dictionaryRepresentation];
    if (dictionaryRepresentation93)
    {
      [dictionary setObject:dictionaryRepresentation93 forKeyedSubscript:@"safariTableOfContentsCardSection"];
    }

    else
    {
      null93 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null93 forKeyedSubscript:@"safariTableOfContentsCardSection"];
    }
  }

  if (self->_scoreboardCardSection)
  {
    scoreboardCardSection = [(_SFPBCardSectionValue *)self scoreboardCardSection];
    dictionaryRepresentation94 = [scoreboardCardSection dictionaryRepresentation];
    if (dictionaryRepresentation94)
    {
      [dictionary setObject:dictionaryRepresentation94 forKeyedSubscript:@"scoreboardCardSection"];
    }

    else
    {
      null94 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null94 forKeyedSubscript:@"scoreboardCardSection"];
    }
  }

  if (self->_sectionHeaderCardSection)
  {
    sectionHeaderCardSection = [(_SFPBCardSectionValue *)self sectionHeaderCardSection];
    dictionaryRepresentation95 = [sectionHeaderCardSection dictionaryRepresentation];
    if (dictionaryRepresentation95)
    {
      [dictionary setObject:dictionaryRepresentation95 forKeyedSubscript:@"sectionHeaderCardSection"];
    }

    else
    {
      null95 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null95 forKeyedSubscript:@"sectionHeaderCardSection"];
    }
  }

  if (self->_selectableGridCardSection)
  {
    selectableGridCardSection = [(_SFPBCardSectionValue *)self selectableGridCardSection];
    dictionaryRepresentation96 = [selectableGridCardSection dictionaryRepresentation];
    if (dictionaryRepresentation96)
    {
      [dictionary setObject:dictionaryRepresentation96 forKeyedSubscript:@"selectableGridCardSection"];
    }

    else
    {
      null96 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null96 forKeyedSubscript:@"selectableGridCardSection"];
    }
  }

  if (self->_socialMediaPostCardSection)
  {
    socialMediaPostCardSection = [(_SFPBCardSectionValue *)self socialMediaPostCardSection];
    dictionaryRepresentation97 = [socialMediaPostCardSection dictionaryRepresentation];
    if (dictionaryRepresentation97)
    {
      [dictionary setObject:dictionaryRepresentation97 forKeyedSubscript:@"socialMediaPostCardSection"];
    }

    else
    {
      null97 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null97 forKeyedSubscript:@"socialMediaPostCardSection"];
    }
  }

  if (self->_splitCardSection)
  {
    splitCardSection = [(_SFPBCardSectionValue *)self splitCardSection];
    dictionaryRepresentation98 = [splitCardSection dictionaryRepresentation];
    if (dictionaryRepresentation98)
    {
      [dictionary setObject:dictionaryRepresentation98 forKeyedSubscript:@"splitCardSection"];
    }

    else
    {
      null98 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null98 forKeyedSubscript:@"splitCardSection"];
    }
  }

  if (self->_stockChartCardSection)
  {
    stockChartCardSection = [(_SFPBCardSectionValue *)self stockChartCardSection];
    dictionaryRepresentation99 = [stockChartCardSection dictionaryRepresentation];
    if (dictionaryRepresentation99)
    {
      [dictionary setObject:dictionaryRepresentation99 forKeyedSubscript:@"stockChartCardSection"];
    }

    else
    {
      null99 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null99 forKeyedSubscript:@"stockChartCardSection"];
    }
  }

  if (self->_strokeAnimationCardSection)
  {
    strokeAnimationCardSection = [(_SFPBCardSectionValue *)self strokeAnimationCardSection];
    dictionaryRepresentation100 = [strokeAnimationCardSection dictionaryRepresentation];
    if (dictionaryRepresentation100)
    {
      [dictionary setObject:dictionaryRepresentation100 forKeyedSubscript:@"strokeAnimationCardSection"];
    }

    else
    {
      null100 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null100 forKeyedSubscript:@"strokeAnimationCardSection"];
    }
  }

  if (self->_suggestionCardSection)
  {
    suggestionCardSection = [(_SFPBCardSectionValue *)self suggestionCardSection];
    dictionaryRepresentation101 = [suggestionCardSection dictionaryRepresentation];
    if (dictionaryRepresentation101)
    {
      [dictionary setObject:dictionaryRepresentation101 forKeyedSubscript:@"suggestionCardSection"];
    }

    else
    {
      null101 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null101 forKeyedSubscript:@"suggestionCardSection"];
    }
  }

  if (self->_tableHeaderRowCardSection)
  {
    tableHeaderRowCardSection = [(_SFPBCardSectionValue *)self tableHeaderRowCardSection];
    dictionaryRepresentation102 = [tableHeaderRowCardSection dictionaryRepresentation];
    if (dictionaryRepresentation102)
    {
      [dictionary setObject:dictionaryRepresentation102 forKeyedSubscript:@"tableHeaderRowCardSection"];
    }

    else
    {
      null102 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null102 forKeyedSubscript:@"tableHeaderRowCardSection"];
    }
  }

  if (self->_tableRowCardSection)
  {
    tableRowCardSection = [(_SFPBCardSectionValue *)self tableRowCardSection];
    dictionaryRepresentation103 = [tableRowCardSection dictionaryRepresentation];
    if (dictionaryRepresentation103)
    {
      [dictionary setObject:dictionaryRepresentation103 forKeyedSubscript:@"tableRowCardSection"];
    }

    else
    {
      null103 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null103 forKeyedSubscript:@"tableRowCardSection"];
    }
  }

  if (self->_textColumnsCardSection)
  {
    textColumnsCardSection = [(_SFPBCardSectionValue *)self textColumnsCardSection];
    dictionaryRepresentation104 = [textColumnsCardSection dictionaryRepresentation];
    if (dictionaryRepresentation104)
    {
      [dictionary setObject:dictionaryRepresentation104 forKeyedSubscript:@"textColumnsCardSection"];
    }

    else
    {
      null104 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null104 forKeyedSubscript:@"textColumnsCardSection"];
    }
  }

  if (self->_titleCardSection)
  {
    titleCardSection = [(_SFPBCardSectionValue *)self titleCardSection];
    dictionaryRepresentation105 = [titleCardSection dictionaryRepresentation];
    if (dictionaryRepresentation105)
    {
      [dictionary setObject:dictionaryRepresentation105 forKeyedSubscript:@"titleCardSection"];
    }

    else
    {
      null105 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null105 forKeyedSubscript:@"titleCardSection"];
    }
  }

  if (self->_trackListCardSection)
  {
    trackListCardSection = [(_SFPBCardSectionValue *)self trackListCardSection];
    dictionaryRepresentation106 = [trackListCardSection dictionaryRepresentation];
    if (dictionaryRepresentation106)
    {
      [dictionary setObject:dictionaryRepresentation106 forKeyedSubscript:@"trackListCardSection"];
    }

    else
    {
      null106 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null106 forKeyedSubscript:@"trackListCardSection"];
    }
  }

  if (self->_verticalLayoutCardSection)
  {
    verticalLayoutCardSection = [(_SFPBCardSectionValue *)self verticalLayoutCardSection];
    dictionaryRepresentation107 = [verticalLayoutCardSection dictionaryRepresentation];
    if (dictionaryRepresentation107)
    {
      [dictionary setObject:dictionaryRepresentation107 forKeyedSubscript:@"verticalLayoutCardSection"];
    }

    else
    {
      null107 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null107 forKeyedSubscript:@"verticalLayoutCardSection"];
    }
  }

  if (self->_watchListCardSection)
  {
    watchListCardSection = [(_SFPBCardSectionValue *)self watchListCardSection];
    dictionaryRepresentation108 = [watchListCardSection dictionaryRepresentation];
    if (dictionaryRepresentation108)
    {
      [dictionary setObject:dictionaryRepresentation108 forKeyedSubscript:@"watchListCardSection"];
    }

    else
    {
      null108 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null108 forKeyedSubscript:@"watchListCardSection"];
    }
  }

  if (self->_watchNowCardSection)
  {
    watchNowCardSection = [(_SFPBCardSectionValue *)self watchNowCardSection];
    dictionaryRepresentation109 = [watchNowCardSection dictionaryRepresentation];
    if (dictionaryRepresentation109)
    {
      [dictionary setObject:dictionaryRepresentation109 forKeyedSubscript:@"watchNowCardSection"];
    }

    else
    {
      null109 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null109 forKeyedSubscript:@"watchNowCardSection"];
    }
  }

  if (self->_webCardSection)
  {
    webCardSection = [(_SFPBCardSectionValue *)self webCardSection];
    dictionaryRepresentation110 = [webCardSection dictionaryRepresentation];
    if (dictionaryRepresentation110)
    {
      [dictionary setObject:dictionaryRepresentation110 forKeyedSubscript:@"webCardSection"];
    }

    else
    {
      null110 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null110 forKeyedSubscript:@"webCardSection"];
    }
  }

  if (self->_worldMapCardSection)
  {
    worldMapCardSection = [(_SFPBCardSectionValue *)self worldMapCardSection];
    dictionaryRepresentation111 = [worldMapCardSection dictionaryRepresentation];
    if (dictionaryRepresentation111)
    {
      [dictionary setObject:dictionaryRepresentation111 forKeyedSubscript:@"worldMapCardSection"];
    }

    else
    {
      null111 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null111 forKeyedSubscript:@"worldMapCardSection"];
    }
  }

  v337 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_557;
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self appLinkCardSection];
  appLinkCardSection2 = [equalCopy appLinkCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  appLinkCardSection3 = [(_SFPBCardSectionValue *)self appLinkCardSection];
  if (appLinkCardSection3)
  {
    v8 = appLinkCardSection3;
    appLinkCardSection4 = [(_SFPBCardSectionValue *)self appLinkCardSection];
    appLinkCardSection5 = [equalCopy appLinkCardSection];
    v11 = [appLinkCardSection4 isEqual:appLinkCardSection5];

    if (!v11)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self descriptionCardSection];
  appLinkCardSection2 = [equalCopy descriptionCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  descriptionCardSection = [(_SFPBCardSectionValue *)self descriptionCardSection];
  if (descriptionCardSection)
  {
    v13 = descriptionCardSection;
    descriptionCardSection2 = [(_SFPBCardSectionValue *)self descriptionCardSection];
    descriptionCardSection3 = [equalCopy descriptionCardSection];
    v16 = [descriptionCardSection2 isEqual:descriptionCardSection3];

    if (!v16)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self keyValueDataCardSection];
  appLinkCardSection2 = [equalCopy keyValueDataCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  keyValueDataCardSection = [(_SFPBCardSectionValue *)self keyValueDataCardSection];
  if (keyValueDataCardSection)
  {
    v18 = keyValueDataCardSection;
    keyValueDataCardSection2 = [(_SFPBCardSectionValue *)self keyValueDataCardSection];
    keyValueDataCardSection3 = [equalCopy keyValueDataCardSection];
    v21 = [keyValueDataCardSection2 isEqual:keyValueDataCardSection3];

    if (!v21)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self mapCardSection];
  appLinkCardSection2 = [equalCopy mapCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  mapCardSection = [(_SFPBCardSectionValue *)self mapCardSection];
  if (mapCardSection)
  {
    v23 = mapCardSection;
    mapCardSection2 = [(_SFPBCardSectionValue *)self mapCardSection];
    mapCardSection3 = [equalCopy mapCardSection];
    v26 = [mapCardSection2 isEqual:mapCardSection3];

    if (!v26)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self mediaInfoCardSection];
  appLinkCardSection2 = [equalCopy mediaInfoCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  mediaInfoCardSection = [(_SFPBCardSectionValue *)self mediaInfoCardSection];
  if (mediaInfoCardSection)
  {
    v28 = mediaInfoCardSection;
    mediaInfoCardSection2 = [(_SFPBCardSectionValue *)self mediaInfoCardSection];
    mediaInfoCardSection3 = [equalCopy mediaInfoCardSection];
    v31 = [mediaInfoCardSection2 isEqual:mediaInfoCardSection3];

    if (!v31)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self mediaPlayerCardSection];
  appLinkCardSection2 = [equalCopy mediaPlayerCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  mediaPlayerCardSection = [(_SFPBCardSectionValue *)self mediaPlayerCardSection];
  if (mediaPlayerCardSection)
  {
    v33 = mediaPlayerCardSection;
    mediaPlayerCardSection2 = [(_SFPBCardSectionValue *)self mediaPlayerCardSection];
    mediaPlayerCardSection3 = [equalCopy mediaPlayerCardSection];
    v36 = [mediaPlayerCardSection2 isEqual:mediaPlayerCardSection3];

    if (!v36)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self nowPlayingCardSection];
  appLinkCardSection2 = [equalCopy nowPlayingCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  nowPlayingCardSection = [(_SFPBCardSectionValue *)self nowPlayingCardSection];
  if (nowPlayingCardSection)
  {
    v38 = nowPlayingCardSection;
    nowPlayingCardSection2 = [(_SFPBCardSectionValue *)self nowPlayingCardSection];
    nowPlayingCardSection3 = [equalCopy nowPlayingCardSection];
    v41 = [nowPlayingCardSection2 isEqual:nowPlayingCardSection3];

    if (!v41)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self richTitleCardSection];
  appLinkCardSection2 = [equalCopy richTitleCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  richTitleCardSection = [(_SFPBCardSectionValue *)self richTitleCardSection];
  if (richTitleCardSection)
  {
    v43 = richTitleCardSection;
    richTitleCardSection2 = [(_SFPBCardSectionValue *)self richTitleCardSection];
    richTitleCardSection3 = [equalCopy richTitleCardSection];
    v46 = [richTitleCardSection2 isEqual:richTitleCardSection3];

    if (!v46)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rowCardSection];
  appLinkCardSection2 = [equalCopy rowCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rowCardSection = [(_SFPBCardSectionValue *)self rowCardSection];
  if (rowCardSection)
  {
    v48 = rowCardSection;
    rowCardSection2 = [(_SFPBCardSectionValue *)self rowCardSection];
    rowCardSection3 = [equalCopy rowCardSection];
    v51 = [rowCardSection2 isEqual:rowCardSection3];

    if (!v51)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self scoreboardCardSection];
  appLinkCardSection2 = [equalCopy scoreboardCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  scoreboardCardSection = [(_SFPBCardSectionValue *)self scoreboardCardSection];
  if (scoreboardCardSection)
  {
    v53 = scoreboardCardSection;
    scoreboardCardSection2 = [(_SFPBCardSectionValue *)self scoreboardCardSection];
    scoreboardCardSection3 = [equalCopy scoreboardCardSection];
    v56 = [scoreboardCardSection2 isEqual:scoreboardCardSection3];

    if (!v56)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self socialMediaPostCardSection];
  appLinkCardSection2 = [equalCopy socialMediaPostCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  socialMediaPostCardSection = [(_SFPBCardSectionValue *)self socialMediaPostCardSection];
  if (socialMediaPostCardSection)
  {
    v58 = socialMediaPostCardSection;
    socialMediaPostCardSection2 = [(_SFPBCardSectionValue *)self socialMediaPostCardSection];
    socialMediaPostCardSection3 = [equalCopy socialMediaPostCardSection];
    v61 = [socialMediaPostCardSection2 isEqual:socialMediaPostCardSection3];

    if (!v61)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self stockChartCardSection];
  appLinkCardSection2 = [equalCopy stockChartCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  stockChartCardSection = [(_SFPBCardSectionValue *)self stockChartCardSection];
  if (stockChartCardSection)
  {
    v63 = stockChartCardSection;
    stockChartCardSection2 = [(_SFPBCardSectionValue *)self stockChartCardSection];
    stockChartCardSection3 = [equalCopy stockChartCardSection];
    v66 = [stockChartCardSection2 isEqual:stockChartCardSection3];

    if (!v66)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self tableHeaderRowCardSection];
  appLinkCardSection2 = [equalCopy tableHeaderRowCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  tableHeaderRowCardSection = [(_SFPBCardSectionValue *)self tableHeaderRowCardSection];
  if (tableHeaderRowCardSection)
  {
    v68 = tableHeaderRowCardSection;
    tableHeaderRowCardSection2 = [(_SFPBCardSectionValue *)self tableHeaderRowCardSection];
    tableHeaderRowCardSection3 = [equalCopy tableHeaderRowCardSection];
    v71 = [tableHeaderRowCardSection2 isEqual:tableHeaderRowCardSection3];

    if (!v71)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self tableRowCardSection];
  appLinkCardSection2 = [equalCopy tableRowCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  tableRowCardSection = [(_SFPBCardSectionValue *)self tableRowCardSection];
  if (tableRowCardSection)
  {
    v73 = tableRowCardSection;
    tableRowCardSection2 = [(_SFPBCardSectionValue *)self tableRowCardSection];
    tableRowCardSection3 = [equalCopy tableRowCardSection];
    v76 = [tableRowCardSection2 isEqual:tableRowCardSection3];

    if (!v76)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self textColumnsCardSection];
  appLinkCardSection2 = [equalCopy textColumnsCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  textColumnsCardSection = [(_SFPBCardSectionValue *)self textColumnsCardSection];
  if (textColumnsCardSection)
  {
    v78 = textColumnsCardSection;
    textColumnsCardSection2 = [(_SFPBCardSectionValue *)self textColumnsCardSection];
    textColumnsCardSection3 = [equalCopy textColumnsCardSection];
    v81 = [textColumnsCardSection2 isEqual:textColumnsCardSection3];

    if (!v81)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self titleCardSection];
  appLinkCardSection2 = [equalCopy titleCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  titleCardSection = [(_SFPBCardSectionValue *)self titleCardSection];
  if (titleCardSection)
  {
    v83 = titleCardSection;
    titleCardSection2 = [(_SFPBCardSectionValue *)self titleCardSection];
    titleCardSection3 = [equalCopy titleCardSection];
    v86 = [titleCardSection2 isEqual:titleCardSection3];

    if (!v86)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self trackListCardSection];
  appLinkCardSection2 = [equalCopy trackListCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  trackListCardSection = [(_SFPBCardSectionValue *)self trackListCardSection];
  if (trackListCardSection)
  {
    v88 = trackListCardSection;
    trackListCardSection2 = [(_SFPBCardSectionValue *)self trackListCardSection];
    trackListCardSection3 = [equalCopy trackListCardSection];
    v91 = [trackListCardSection2 isEqual:trackListCardSection3];

    if (!v91)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self audioPlaybackCardSection];
  appLinkCardSection2 = [equalCopy audioPlaybackCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  audioPlaybackCardSection = [(_SFPBCardSectionValue *)self audioPlaybackCardSection];
  if (audioPlaybackCardSection)
  {
    v93 = audioPlaybackCardSection;
    audioPlaybackCardSection2 = [(_SFPBCardSectionValue *)self audioPlaybackCardSection];
    audioPlaybackCardSection3 = [equalCopy audioPlaybackCardSection];
    v96 = [audioPlaybackCardSection2 isEqual:audioPlaybackCardSection3];

    if (!v96)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self flightCardSection];
  appLinkCardSection2 = [equalCopy flightCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  flightCardSection = [(_SFPBCardSectionValue *)self flightCardSection];
  if (flightCardSection)
  {
    v98 = flightCardSection;
    flightCardSection2 = [(_SFPBCardSectionValue *)self flightCardSection];
    flightCardSection3 = [equalCopy flightCardSection];
    v101 = [flightCardSection2 isEqual:flightCardSection3];

    if (!v101)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self activityIndicatorCardSection];
  appLinkCardSection2 = [equalCopy activityIndicatorCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  activityIndicatorCardSection = [(_SFPBCardSectionValue *)self activityIndicatorCardSection];
  if (activityIndicatorCardSection)
  {
    v103 = activityIndicatorCardSection;
    activityIndicatorCardSection2 = [(_SFPBCardSectionValue *)self activityIndicatorCardSection];
    activityIndicatorCardSection3 = [equalCopy activityIndicatorCardSection];
    v106 = [activityIndicatorCardSection2 isEqual:activityIndicatorCardSection3];

    if (!v106)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self webCardSection];
  appLinkCardSection2 = [equalCopy webCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  webCardSection = [(_SFPBCardSectionValue *)self webCardSection];
  if (webCardSection)
  {
    v108 = webCardSection;
    webCardSection2 = [(_SFPBCardSectionValue *)self webCardSection];
    webCardSection3 = [equalCopy webCardSection];
    v111 = [webCardSection2 isEqual:webCardSection3];

    if (!v111)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self messageCardSection];
  appLinkCardSection2 = [equalCopy messageCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  messageCardSection = [(_SFPBCardSectionValue *)self messageCardSection];
  if (messageCardSection)
  {
    v113 = messageCardSection;
    messageCardSection2 = [(_SFPBCardSectionValue *)self messageCardSection];
    messageCardSection3 = [equalCopy messageCardSection];
    v116 = [messageCardSection2 isEqual:messageCardSection3];

    if (!v116)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self detailedRowCardSection];
  appLinkCardSection2 = [equalCopy detailedRowCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  detailedRowCardSection = [(_SFPBCardSectionValue *)self detailedRowCardSection];
  if (detailedRowCardSection)
  {
    v118 = detailedRowCardSection;
    detailedRowCardSection2 = [(_SFPBCardSectionValue *)self detailedRowCardSection];
    detailedRowCardSection3 = [equalCopy detailedRowCardSection];
    v121 = [detailedRowCardSection2 isEqual:detailedRowCardSection3];

    if (!v121)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self imagesCardSection];
  appLinkCardSection2 = [equalCopy imagesCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  imagesCardSection = [(_SFPBCardSectionValue *)self imagesCardSection];
  if (imagesCardSection)
  {
    v123 = imagesCardSection;
    imagesCardSection2 = [(_SFPBCardSectionValue *)self imagesCardSection];
    imagesCardSection3 = [equalCopy imagesCardSection];
    v126 = [imagesCardSection2 isEqual:imagesCardSection3];

    if (!v126)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self suggestionCardSection];
  appLinkCardSection2 = [equalCopy suggestionCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  suggestionCardSection = [(_SFPBCardSectionValue *)self suggestionCardSection];
  if (suggestionCardSection)
  {
    v128 = suggestionCardSection;
    suggestionCardSection2 = [(_SFPBCardSectionValue *)self suggestionCardSection];
    suggestionCardSection3 = [equalCopy suggestionCardSection];
    v131 = [suggestionCardSection2 isEqual:suggestionCardSection3];

    if (!v131)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self selectableGridCardSection];
  appLinkCardSection2 = [equalCopy selectableGridCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  selectableGridCardSection = [(_SFPBCardSectionValue *)self selectableGridCardSection];
  if (selectableGridCardSection)
  {
    v133 = selectableGridCardSection;
    selectableGridCardSection2 = [(_SFPBCardSectionValue *)self selectableGridCardSection];
    selectableGridCardSection3 = [equalCopy selectableGridCardSection];
    v136 = [selectableGridCardSection2 isEqual:selectableGridCardSection3];

    if (!v136)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self sectionHeaderCardSection];
  appLinkCardSection2 = [equalCopy sectionHeaderCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  sectionHeaderCardSection = [(_SFPBCardSectionValue *)self sectionHeaderCardSection];
  if (sectionHeaderCardSection)
  {
    v138 = sectionHeaderCardSection;
    sectionHeaderCardSection2 = [(_SFPBCardSectionValue *)self sectionHeaderCardSection];
    sectionHeaderCardSection3 = [equalCopy sectionHeaderCardSection];
    v141 = [sectionHeaderCardSection2 isEqual:sectionHeaderCardSection3];

    if (!v141)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self metaInfoCardSection];
  appLinkCardSection2 = [equalCopy metaInfoCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  metaInfoCardSection = [(_SFPBCardSectionValue *)self metaInfoCardSection];
  if (metaInfoCardSection)
  {
    v143 = metaInfoCardSection;
    metaInfoCardSection2 = [(_SFPBCardSectionValue *)self metaInfoCardSection];
    metaInfoCardSection3 = [equalCopy metaInfoCardSection];
    v146 = [metaInfoCardSection2 isEqual:metaInfoCardSection3];

    if (!v146)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self watchListCardSection];
  appLinkCardSection2 = [equalCopy watchListCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  watchListCardSection = [(_SFPBCardSectionValue *)self watchListCardSection];
  if (watchListCardSection)
  {
    v148 = watchListCardSection;
    watchListCardSection2 = [(_SFPBCardSectionValue *)self watchListCardSection];
    watchListCardSection3 = [equalCopy watchListCardSection];
    v151 = [watchListCardSection2 isEqual:watchListCardSection3];

    if (!v151)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self mapsDetailedRowCardSection];
  appLinkCardSection2 = [equalCopy mapsDetailedRowCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  mapsDetailedRowCardSection = [(_SFPBCardSectionValue *)self mapsDetailedRowCardSection];
  if (mapsDetailedRowCardSection)
  {
    v153 = mapsDetailedRowCardSection;
    mapsDetailedRowCardSection2 = [(_SFPBCardSectionValue *)self mapsDetailedRowCardSection];
    mapsDetailedRowCardSection3 = [equalCopy mapsDetailedRowCardSection];
    v156 = [mapsDetailedRowCardSection2 isEqual:mapsDetailedRowCardSection3];

    if (!v156)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self buttonCardSection];
  appLinkCardSection2 = [equalCopy buttonCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  buttonCardSection = [(_SFPBCardSectionValue *)self buttonCardSection];
  if (buttonCardSection)
  {
    v158 = buttonCardSection;
    buttonCardSection2 = [(_SFPBCardSectionValue *)self buttonCardSection];
    buttonCardSection3 = [equalCopy buttonCardSection];
    v161 = [buttonCardSection2 isEqual:buttonCardSection3];

    if (!v161)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self horizontalButtonCardSection];
  appLinkCardSection2 = [equalCopy horizontalButtonCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  horizontalButtonCardSection = [(_SFPBCardSectionValue *)self horizontalButtonCardSection];
  if (horizontalButtonCardSection)
  {
    v163 = horizontalButtonCardSection;
    horizontalButtonCardSection2 = [(_SFPBCardSectionValue *)self horizontalButtonCardSection];
    horizontalButtonCardSection3 = [equalCopy horizontalButtonCardSection];
    v166 = [horizontalButtonCardSection2 isEqual:horizontalButtonCardSection3];

    if (!v166)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self verticalLayoutCardSection];
  appLinkCardSection2 = [equalCopy verticalLayoutCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  verticalLayoutCardSection = [(_SFPBCardSectionValue *)self verticalLayoutCardSection];
  if (verticalLayoutCardSection)
  {
    v168 = verticalLayoutCardSection;
    verticalLayoutCardSection2 = [(_SFPBCardSectionValue *)self verticalLayoutCardSection];
    verticalLayoutCardSection3 = [equalCopy verticalLayoutCardSection];
    v171 = [verticalLayoutCardSection2 isEqual:verticalLayoutCardSection3];

    if (!v171)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self productCardSection];
  appLinkCardSection2 = [equalCopy productCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  productCardSection = [(_SFPBCardSectionValue *)self productCardSection];
  if (productCardSection)
  {
    v173 = productCardSection;
    productCardSection2 = [(_SFPBCardSectionValue *)self productCardSection];
    productCardSection3 = [equalCopy productCardSection];
    v176 = [productCardSection2 isEqual:productCardSection3];

    if (!v176)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self horizontalScrollCardSection];
  appLinkCardSection2 = [equalCopy horizontalScrollCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  horizontalScrollCardSection = [(_SFPBCardSectionValue *)self horizontalScrollCardSection];
  if (horizontalScrollCardSection)
  {
    v178 = horizontalScrollCardSection;
    horizontalScrollCardSection2 = [(_SFPBCardSectionValue *)self horizontalScrollCardSection];
    horizontalScrollCardSection3 = [equalCopy horizontalScrollCardSection];
    v181 = [horizontalScrollCardSection2 isEqual:horizontalScrollCardSection3];

    if (!v181)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self mediaRemoteControlCardSection];
  appLinkCardSection2 = [equalCopy mediaRemoteControlCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  mediaRemoteControlCardSection = [(_SFPBCardSectionValue *)self mediaRemoteControlCardSection];
  if (mediaRemoteControlCardSection)
  {
    v183 = mediaRemoteControlCardSection;
    mediaRemoteControlCardSection2 = [(_SFPBCardSectionValue *)self mediaRemoteControlCardSection];
    mediaRemoteControlCardSection3 = [equalCopy mediaRemoteControlCardSection];
    v186 = [mediaRemoteControlCardSection2 isEqual:mediaRemoteControlCardSection3];

    if (!v186)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self mapPlaceCardSection];
  appLinkCardSection2 = [equalCopy mapPlaceCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  mapPlaceCardSection = [(_SFPBCardSectionValue *)self mapPlaceCardSection];
  if (mapPlaceCardSection)
  {
    v188 = mapPlaceCardSection;
    mapPlaceCardSection2 = [(_SFPBCardSectionValue *)self mapPlaceCardSection];
    mapPlaceCardSection3 = [equalCopy mapPlaceCardSection];
    v191 = [mapPlaceCardSection2 isEqual:mapPlaceCardSection3];

    if (!v191)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self compactRowCardSection];
  appLinkCardSection2 = [equalCopy compactRowCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  compactRowCardSection = [(_SFPBCardSectionValue *)self compactRowCardSection];
  if (compactRowCardSection)
  {
    v193 = compactRowCardSection;
    compactRowCardSection2 = [(_SFPBCardSectionValue *)self compactRowCardSection];
    compactRowCardSection3 = [equalCopy compactRowCardSection];
    v196 = [compactRowCardSection2 isEqual:compactRowCardSection3];

    if (!v196)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self worldMapCardSection];
  appLinkCardSection2 = [equalCopy worldMapCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  worldMapCardSection = [(_SFPBCardSectionValue *)self worldMapCardSection];
  if (worldMapCardSection)
  {
    v198 = worldMapCardSection;
    worldMapCardSection2 = [(_SFPBCardSectionValue *)self worldMapCardSection];
    worldMapCardSection3 = [equalCopy worldMapCardSection];
    v201 = [worldMapCardSection2 isEqual:worldMapCardSection3];

    if (!v201)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self attributionFooterCardSection];
  appLinkCardSection2 = [equalCopy attributionFooterCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  attributionFooterCardSection = [(_SFPBCardSectionValue *)self attributionFooterCardSection];
  if (attributionFooterCardSection)
  {
    v203 = attributionFooterCardSection;
    attributionFooterCardSection2 = [(_SFPBCardSectionValue *)self attributionFooterCardSection];
    attributionFooterCardSection3 = [equalCopy attributionFooterCardSection];
    v206 = [attributionFooterCardSection2 isEqual:attributionFooterCardSection3];

    if (!v206)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self gridCardSection];
  appLinkCardSection2 = [equalCopy gridCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  gridCardSection = [(_SFPBCardSectionValue *)self gridCardSection];
  if (gridCardSection)
  {
    v208 = gridCardSection;
    gridCardSection2 = [(_SFPBCardSectionValue *)self gridCardSection];
    gridCardSection3 = [equalCopy gridCardSection];
    v211 = [gridCardSection2 isEqual:gridCardSection3];

    if (!v211)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self personHeaderCardSection];
  appLinkCardSection2 = [equalCopy personHeaderCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  personHeaderCardSection = [(_SFPBCardSectionValue *)self personHeaderCardSection];
  if (personHeaderCardSection)
  {
    v213 = personHeaderCardSection;
    personHeaderCardSection2 = [(_SFPBCardSectionValue *)self personHeaderCardSection];
    personHeaderCardSection3 = [equalCopy personHeaderCardSection];
    v216 = [personHeaderCardSection2 isEqual:personHeaderCardSection3];

    if (!v216)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self colorBarCardSection];
  appLinkCardSection2 = [equalCopy colorBarCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  colorBarCardSection = [(_SFPBCardSectionValue *)self colorBarCardSection];
  if (colorBarCardSection)
  {
    v218 = colorBarCardSection;
    colorBarCardSection2 = [(_SFPBCardSectionValue *)self colorBarCardSection];
    colorBarCardSection3 = [equalCopy colorBarCardSection];
    v221 = [colorBarCardSection2 isEqual:colorBarCardSection3];

    if (!v221)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self splitCardSection];
  appLinkCardSection2 = [equalCopy splitCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  splitCardSection = [(_SFPBCardSectionValue *)self splitCardSection];
  if (splitCardSection)
  {
    v223 = splitCardSection;
    splitCardSection2 = [(_SFPBCardSectionValue *)self splitCardSection];
    splitCardSection3 = [equalCopy splitCardSection];
    v226 = [splitCardSection2 isEqual:splitCardSection3];

    if (!v226)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self linkPresentationCardSection];
  appLinkCardSection2 = [equalCopy linkPresentationCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  linkPresentationCardSection = [(_SFPBCardSectionValue *)self linkPresentationCardSection];
  if (linkPresentationCardSection)
  {
    v228 = linkPresentationCardSection;
    linkPresentationCardSection2 = [(_SFPBCardSectionValue *)self linkPresentationCardSection];
    linkPresentationCardSection3 = [equalCopy linkPresentationCardSection];
    v231 = [linkPresentationCardSection2 isEqual:linkPresentationCardSection3];

    if (!v231)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self findMyCardSection];
  appLinkCardSection2 = [equalCopy findMyCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  findMyCardSection = [(_SFPBCardSectionValue *)self findMyCardSection];
  if (findMyCardSection)
  {
    v233 = findMyCardSection;
    findMyCardSection2 = [(_SFPBCardSectionValue *)self findMyCardSection];
    findMyCardSection3 = [equalCopy findMyCardSection];
    v236 = [findMyCardSection2 isEqual:findMyCardSection3];

    if (!v236)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self heroCardSection];
  appLinkCardSection2 = [equalCopy heroCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  heroCardSection = [(_SFPBCardSectionValue *)self heroCardSection];
  if (heroCardSection)
  {
    v238 = heroCardSection;
    heroCardSection2 = [(_SFPBCardSectionValue *)self heroCardSection];
    heroCardSection3 = [equalCopy heroCardSection];
    v241 = [heroCardSection2 isEqual:heroCardSection3];

    if (!v241)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self newsCardSection];
  appLinkCardSection2 = [equalCopy newsCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  newsCardSection = [(_SFPBCardSectionValue *)self newsCardSection];
  if (newsCardSection)
  {
    v243 = newsCardSection;
    newsCardSection2 = [(_SFPBCardSectionValue *)self newsCardSection];
    newsCardSection3 = [equalCopy newsCardSection];
    v246 = [newsCardSection2 isEqual:newsCardSection3];

    if (!v246)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self miniCardSection];
  appLinkCardSection2 = [equalCopy miniCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  miniCardSection = [(_SFPBCardSectionValue *)self miniCardSection];
  if (miniCardSection)
  {
    v248 = miniCardSection;
    miniCardSection2 = [(_SFPBCardSectionValue *)self miniCardSection];
    miniCardSection3 = [equalCopy miniCardSection];
    v251 = [miniCardSection2 isEqual:miniCardSection3];

    if (!v251)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self infoCardSection];
  appLinkCardSection2 = [equalCopy infoCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  infoCardSection = [(_SFPBCardSectionValue *)self infoCardSection];
  if (infoCardSection)
  {
    v253 = infoCardSection;
    infoCardSection2 = [(_SFPBCardSectionValue *)self infoCardSection];
    infoCardSection3 = [equalCopy infoCardSection];
    v256 = [infoCardSection2 isEqual:infoCardSection3];

    if (!v256)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self collectionCardSection];
  appLinkCardSection2 = [equalCopy collectionCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  collectionCardSection = [(_SFPBCardSectionValue *)self collectionCardSection];
  if (collectionCardSection)
  {
    v258 = collectionCardSection;
    collectionCardSection2 = [(_SFPBCardSectionValue *)self collectionCardSection];
    collectionCardSection3 = [equalCopy collectionCardSection];
    v261 = [collectionCardSection2 isEqual:collectionCardSection3];

    if (!v261)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self combinedCardSection];
  appLinkCardSection2 = [equalCopy combinedCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  combinedCardSection = [(_SFPBCardSectionValue *)self combinedCardSection];
  if (combinedCardSection)
  {
    v263 = combinedCardSection;
    combinedCardSection2 = [(_SFPBCardSectionValue *)self combinedCardSection];
    combinedCardSection3 = [equalCopy combinedCardSection];
    v266 = [combinedCardSection2 isEqual:combinedCardSection3];

    if (!v266)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self responseWrapperCardSection];
  appLinkCardSection2 = [equalCopy responseWrapperCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  responseWrapperCardSection = [(_SFPBCardSectionValue *)self responseWrapperCardSection];
  if (responseWrapperCardSection)
  {
    v268 = responseWrapperCardSection;
    responseWrapperCardSection2 = [(_SFPBCardSectionValue *)self responseWrapperCardSection];
    responseWrapperCardSection3 = [equalCopy responseWrapperCardSection];
    v271 = [responseWrapperCardSection2 isEqual:responseWrapperCardSection3];

    if (!v271)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self listenToCardSection];
  appLinkCardSection2 = [equalCopy listenToCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  listenToCardSection = [(_SFPBCardSectionValue *)self listenToCardSection];
  if (listenToCardSection)
  {
    v273 = listenToCardSection;
    listenToCardSection2 = [(_SFPBCardSectionValue *)self listenToCardSection];
    listenToCardSection3 = [equalCopy listenToCardSection];
    v276 = [listenToCardSection2 isEqual:listenToCardSection3];

    if (!v276)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self watchNowCardSection];
  appLinkCardSection2 = [equalCopy watchNowCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  watchNowCardSection = [(_SFPBCardSectionValue *)self watchNowCardSection];
  if (watchNowCardSection)
  {
    v278 = watchNowCardSection;
    watchNowCardSection2 = [(_SFPBCardSectionValue *)self watchNowCardSection];
    watchNowCardSection3 = [equalCopy watchNowCardSection];
    v281 = [watchNowCardSection2 isEqual:watchNowCardSection3];

    if (!v281)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self strokeAnimationCardSection];
  appLinkCardSection2 = [equalCopy strokeAnimationCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  strokeAnimationCardSection = [(_SFPBCardSectionValue *)self strokeAnimationCardSection];
  if (strokeAnimationCardSection)
  {
    v283 = strokeAnimationCardSection;
    strokeAnimationCardSection2 = [(_SFPBCardSectionValue *)self strokeAnimationCardSection];
    strokeAnimationCardSection3 = [equalCopy strokeAnimationCardSection];
    v286 = [strokeAnimationCardSection2 isEqual:strokeAnimationCardSection3];

    if (!v286)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self buttonListCardSection];
  appLinkCardSection2 = [equalCopy buttonListCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  buttonListCardSection = [(_SFPBCardSectionValue *)self buttonListCardSection];
  if (buttonListCardSection)
  {
    v288 = buttonListCardSection;
    buttonListCardSection2 = [(_SFPBCardSectionValue *)self buttonListCardSection];
    buttonListCardSection3 = [equalCopy buttonListCardSection];
    v291 = [buttonListCardSection2 isEqual:buttonListCardSection3];

    if (!v291)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self commandRowCardSection];
  appLinkCardSection2 = [equalCopy commandRowCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  commandRowCardSection = [(_SFPBCardSectionValue *)self commandRowCardSection];
  if (commandRowCardSection)
  {
    v293 = commandRowCardSection;
    commandRowCardSection2 = [(_SFPBCardSectionValue *)self commandRowCardSection];
    commandRowCardSection3 = [equalCopy commandRowCardSection];
    v296 = [commandRowCardSection2 isEqual:commandRowCardSection3];

    if (!v296)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self leadingTrailingCardSection];
  appLinkCardSection2 = [equalCopy leadingTrailingCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  leadingTrailingCardSection = [(_SFPBCardSectionValue *)self leadingTrailingCardSection];
  if (leadingTrailingCardSection)
  {
    v298 = leadingTrailingCardSection;
    leadingTrailingCardSection2 = [(_SFPBCardSectionValue *)self leadingTrailingCardSection];
    leadingTrailingCardSection3 = [equalCopy leadingTrailingCardSection];
    v301 = [leadingTrailingCardSection2 isEqual:leadingTrailingCardSection3];

    if (!v301)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self heroTitleCardSection];
  appLinkCardSection2 = [equalCopy heroTitleCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  heroTitleCardSection = [(_SFPBCardSectionValue *)self heroTitleCardSection];
  if (heroTitleCardSection)
  {
    v303 = heroTitleCardSection;
    heroTitleCardSection2 = [(_SFPBCardSectionValue *)self heroTitleCardSection];
    heroTitleCardSection3 = [equalCopy heroTitleCardSection];
    v306 = [heroTitleCardSection2 isEqual:heroTitleCardSection3];

    if (!v306)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self archiveViewCardSection];
  appLinkCardSection2 = [equalCopy archiveViewCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  archiveViewCardSection = [(_SFPBCardSectionValue *)self archiveViewCardSection];
  if (archiveViewCardSection)
  {
    v308 = archiveViewCardSection;
    archiveViewCardSection2 = [(_SFPBCardSectionValue *)self archiveViewCardSection];
    archiveViewCardSection3 = [equalCopy archiveViewCardSection];
    v311 = [archiveViewCardSection2 isEqual:archiveViewCardSection3];

    if (!v311)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self appIconCardSection];
  appLinkCardSection2 = [equalCopy appIconCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  appIconCardSection = [(_SFPBCardSectionValue *)self appIconCardSection];
  if (appIconCardSection)
  {
    v313 = appIconCardSection;
    appIconCardSection2 = [(_SFPBCardSectionValue *)self appIconCardSection];
    appIconCardSection3 = [equalCopy appIconCardSection];
    v316 = [appIconCardSection2 isEqual:appIconCardSection3];

    if (!v316)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self largeTitleDetailedRowCardSection];
  appLinkCardSection2 = [equalCopy largeTitleDetailedRowCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  largeTitleDetailedRowCardSection = [(_SFPBCardSectionValue *)self largeTitleDetailedRowCardSection];
  if (largeTitleDetailedRowCardSection)
  {
    v318 = largeTitleDetailedRowCardSection;
    largeTitleDetailedRowCardSection2 = [(_SFPBCardSectionValue *)self largeTitleDetailedRowCardSection];
    largeTitleDetailedRowCardSection3 = [equalCopy largeTitleDetailedRowCardSection];
    v321 = [largeTitleDetailedRowCardSection2 isEqual:largeTitleDetailedRowCardSection3];

    if (!v321)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self safariTableOfContentsCardSection];
  appLinkCardSection2 = [equalCopy safariTableOfContentsCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  safariTableOfContentsCardSection = [(_SFPBCardSectionValue *)self safariTableOfContentsCardSection];
  if (safariTableOfContentsCardSection)
  {
    v323 = safariTableOfContentsCardSection;
    safariTableOfContentsCardSection2 = [(_SFPBCardSectionValue *)self safariTableOfContentsCardSection];
    safariTableOfContentsCardSection3 = [equalCopy safariTableOfContentsCardSection];
    v326 = [safariTableOfContentsCardSection2 isEqual:safariTableOfContentsCardSection3];

    if (!v326)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemShortNumberCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemShortNumberCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemShortNumberCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemShortNumberCardSection];
  if (rfSummaryItemShortNumberCardSection)
  {
    v328 = rfSummaryItemShortNumberCardSection;
    rfSummaryItemShortNumberCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemShortNumberCardSection];
    rfSummaryItemShortNumberCardSection3 = [equalCopy rfSummaryItemShortNumberCardSection];
    v331 = [rfSummaryItemShortNumberCardSection2 isEqual:rfSummaryItemShortNumberCardSection3];

    if (!v331)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemTextCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemTextCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemTextCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemTextCardSection];
  if (rfSummaryItemTextCardSection)
  {
    v333 = rfSummaryItemTextCardSection;
    rfSummaryItemTextCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemTextCardSection];
    rfSummaryItemTextCardSection3 = [equalCopy rfSummaryItemTextCardSection];
    v336 = [rfSummaryItemTextCardSection2 isEqual:rfSummaryItemTextCardSection3];

    if (!v336)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemStandardCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemStandardCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemStandardCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemStandardCardSection];
  if (rfSummaryItemStandardCardSection)
  {
    v338 = rfSummaryItemStandardCardSection;
    rfSummaryItemStandardCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemStandardCardSection];
    rfSummaryItemStandardCardSection3 = [equalCopy rfSummaryItemStandardCardSection];
    v341 = [rfSummaryItemStandardCardSection2 isEqual:rfSummaryItemStandardCardSection3];

    if (!v341)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfFactItemShortNumberCardSection];
  appLinkCardSection2 = [equalCopy rfFactItemShortNumberCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfFactItemShortNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemShortNumberCardSection];
  if (rfFactItemShortNumberCardSection)
  {
    v343 = rfFactItemShortNumberCardSection;
    rfFactItemShortNumberCardSection2 = [(_SFPBCardSectionValue *)self rfFactItemShortNumberCardSection];
    rfFactItemShortNumberCardSection3 = [equalCopy rfFactItemShortNumberCardSection];
    v346 = [rfFactItemShortNumberCardSection2 isEqual:rfFactItemShortNumberCardSection3];

    if (!v346)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfFactItemStandardCardSection];
  appLinkCardSection2 = [equalCopy rfFactItemStandardCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfFactItemStandardCardSection = [(_SFPBCardSectionValue *)self rfFactItemStandardCardSection];
  if (rfFactItemStandardCardSection)
  {
    v348 = rfFactItemStandardCardSection;
    rfFactItemStandardCardSection2 = [(_SFPBCardSectionValue *)self rfFactItemStandardCardSection];
    rfFactItemStandardCardSection3 = [equalCopy rfFactItemStandardCardSection];
    v351 = [rfFactItemStandardCardSection2 isEqual:rfFactItemStandardCardSection3];

    if (!v351)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfLongItemStandardCardSection];
  appLinkCardSection2 = [equalCopy rfLongItemStandardCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfLongItemStandardCardSection = [(_SFPBCardSectionValue *)self rfLongItemStandardCardSection];
  if (rfLongItemStandardCardSection)
  {
    v353 = rfLongItemStandardCardSection;
    rfLongItemStandardCardSection2 = [(_SFPBCardSectionValue *)self rfLongItemStandardCardSection];
    rfLongItemStandardCardSection3 = [equalCopy rfLongItemStandardCardSection];
    v356 = [rfLongItemStandardCardSection2 isEqual:rfLongItemStandardCardSection3];

    if (!v356)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderRichCardSection];
  appLinkCardSection2 = [equalCopy rfPrimaryHeaderRichCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfPrimaryHeaderRichCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderRichCardSection];
  if (rfPrimaryHeaderRichCardSection)
  {
    v358 = rfPrimaryHeaderRichCardSection;
    rfPrimaryHeaderRichCardSection2 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderRichCardSection];
    rfPrimaryHeaderRichCardSection3 = [equalCopy rfPrimaryHeaderRichCardSection];
    v361 = [rfPrimaryHeaderRichCardSection2 isEqual:rfPrimaryHeaderRichCardSection3];

    if (!v361)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
  appLinkCardSection2 = [equalCopy rfPrimaryHeaderStandardCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfPrimaryHeaderStandardCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
  if (rfPrimaryHeaderStandardCardSection)
  {
    v363 = rfPrimaryHeaderStandardCardSection;
    rfPrimaryHeaderStandardCardSection2 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
    rfPrimaryHeaderStandardCardSection3 = [equalCopy rfPrimaryHeaderStandardCardSection];
    v366 = [rfPrimaryHeaderStandardCardSection2 isEqual:rfPrimaryHeaderStandardCardSection3];

    if (!v366)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfReferenceFootnoteCardSection];
  appLinkCardSection2 = [equalCopy rfReferenceFootnoteCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfReferenceFootnoteCardSection = [(_SFPBCardSectionValue *)self rfReferenceFootnoteCardSection];
  if (rfReferenceFootnoteCardSection)
  {
    v368 = rfReferenceFootnoteCardSection;
    rfReferenceFootnoteCardSection2 = [(_SFPBCardSectionValue *)self rfReferenceFootnoteCardSection];
    rfReferenceFootnoteCardSection3 = [equalCopy rfReferenceFootnoteCardSection];
    v371 = [rfReferenceFootnoteCardSection2 isEqual:rfReferenceFootnoteCardSection3];

    if (!v371)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfReferenceRichCardSection];
  appLinkCardSection2 = [equalCopy rfReferenceRichCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfReferenceRichCardSection = [(_SFPBCardSectionValue *)self rfReferenceRichCardSection];
  if (rfReferenceRichCardSection)
  {
    v373 = rfReferenceRichCardSection;
    rfReferenceRichCardSection2 = [(_SFPBCardSectionValue *)self rfReferenceRichCardSection];
    rfReferenceRichCardSection3 = [equalCopy rfReferenceRichCardSection];
    v376 = [rfReferenceRichCardSection2 isEqual:rfReferenceRichCardSection3];

    if (!v376)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemRichCardSection];
  appLinkCardSection2 = [equalCopy rfSimpleItemRichCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSimpleItemRichCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemRichCardSection];
  if (rfSimpleItemRichCardSection)
  {
    v378 = rfSimpleItemRichCardSection;
    rfSimpleItemRichCardSection2 = [(_SFPBCardSectionValue *)self rfSimpleItemRichCardSection];
    rfSimpleItemRichCardSection3 = [equalCopy rfSimpleItemRichCardSection];
    v381 = [rfSimpleItemRichCardSection2 isEqual:rfSimpleItemRichCardSection3];

    if (!v381)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemStandardCardSection];
  appLinkCardSection2 = [equalCopy rfSimpleItemStandardCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSimpleItemStandardCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemStandardCardSection];
  if (rfSimpleItemStandardCardSection)
  {
    v383 = rfSimpleItemStandardCardSection;
    rfSimpleItemStandardCardSection2 = [(_SFPBCardSectionValue *)self rfSimpleItemStandardCardSection];
    rfSimpleItemStandardCardSection3 = [equalCopy rfSimpleItemStandardCardSection];
    v386 = [rfSimpleItemStandardCardSection2 isEqual:rfSimpleItemStandardCardSection3];

    if (!v386)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemAlignedTextCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemAlignedTextCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
  if (rfSummaryItemAlignedTextCardSection)
  {
    v388 = rfSummaryItemAlignedTextCardSection;
    rfSummaryItemAlignedTextCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
    rfSummaryItemAlignedTextCardSection3 = [equalCopy rfSummaryItemAlignedTextCardSection];
    v391 = [rfSummaryItemAlignedTextCardSection2 isEqual:rfSummaryItemAlignedTextCardSection3];

    if (!v391)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfExpandableStandardCardSection];
  appLinkCardSection2 = [equalCopy rfExpandableStandardCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfExpandableStandardCardSection = [(_SFPBCardSectionValue *)self rfExpandableStandardCardSection];
  if (rfExpandableStandardCardSection)
  {
    v393 = rfExpandableStandardCardSection;
    rfExpandableStandardCardSection2 = [(_SFPBCardSectionValue *)self rfExpandableStandardCardSection];
    rfExpandableStandardCardSection3 = [equalCopy rfExpandableStandardCardSection];
    v396 = [rfExpandableStandardCardSection2 isEqual:rfExpandableStandardCardSection3];

    if (!v396)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfFactItemButtonCardSection];
  appLinkCardSection2 = [equalCopy rfFactItemButtonCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfFactItemButtonCardSection = [(_SFPBCardSectionValue *)self rfFactItemButtonCardSection];
  if (rfFactItemButtonCardSection)
  {
    v398 = rfFactItemButtonCardSection;
    rfFactItemButtonCardSection2 = [(_SFPBCardSectionValue *)self rfFactItemButtonCardSection];
    rfFactItemButtonCardSection3 = [equalCopy rfFactItemButtonCardSection];
    v401 = [rfFactItemButtonCardSection2 isEqual:rfFactItemButtonCardSection3];

    if (!v401)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfFactItemHeroNumberCardSection];
  appLinkCardSection2 = [equalCopy rfFactItemHeroNumberCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfFactItemHeroNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemHeroNumberCardSection];
  if (rfFactItemHeroNumberCardSection)
  {
    v403 = rfFactItemHeroNumberCardSection;
    rfFactItemHeroNumberCardSection2 = [(_SFPBCardSectionValue *)self rfFactItemHeroNumberCardSection];
    rfFactItemHeroNumberCardSection3 = [equalCopy rfFactItemHeroNumberCardSection];
    v406 = [rfFactItemHeroNumberCardSection2 isEqual:rfFactItemHeroNumberCardSection3];

    if (!v406)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
  appLinkCardSection2 = [equalCopy rfPrimaryHeaderMarqueeCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfPrimaryHeaderMarqueeCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
  if (rfPrimaryHeaderMarqueeCardSection)
  {
    v408 = rfPrimaryHeaderMarqueeCardSection;
    rfPrimaryHeaderMarqueeCardSection2 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
    rfPrimaryHeaderMarqueeCardSection3 = [equalCopy rfPrimaryHeaderMarqueeCardSection];
    v411 = [rfPrimaryHeaderMarqueeCardSection2 isEqual:rfPrimaryHeaderMarqueeCardSection3];

    if (!v411)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemDetailedTextCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemDetailedTextCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
  if (rfSummaryItemDetailedTextCardSection)
  {
    v413 = rfSummaryItemDetailedTextCardSection;
    rfSummaryItemDetailedTextCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
    rfSummaryItemDetailedTextCardSection3 = [equalCopy rfSummaryItemDetailedTextCardSection];
    v416 = [rfSummaryItemDetailedTextCardSection2 isEqual:rfSummaryItemDetailedTextCardSection3];

    if (!v416)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemPlayerCardSection];
  appLinkCardSection2 = [equalCopy rfSimpleItemPlayerCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSimpleItemPlayerCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemPlayerCardSection];
  if (rfSimpleItemPlayerCardSection)
  {
    v418 = rfSimpleItemPlayerCardSection;
    rfSimpleItemPlayerCardSection2 = [(_SFPBCardSectionValue *)self rfSimpleItemPlayerCardSection];
    rfSimpleItemPlayerCardSection3 = [equalCopy rfSimpleItemPlayerCardSection];
    v421 = [rfSimpleItemPlayerCardSection2 isEqual:rfSimpleItemPlayerCardSection3];

    if (!v421)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPairCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemPairCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemPairCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPairCardSection];
  if (rfSummaryItemPairCardSection)
  {
    v423 = rfSummaryItemPairCardSection;
    rfSummaryItemPairCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemPairCardSection];
    rfSummaryItemPairCardSection3 = [equalCopy rfSummaryItemPairCardSection];
    v426 = [rfSummaryItemPairCardSection2 isEqual:rfSummaryItemPairCardSection3];

    if (!v426)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPairNumberCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemPairNumberCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemPairNumberCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPairNumberCardSection];
  if (rfSummaryItemPairNumberCardSection)
  {
    v428 = rfSummaryItemPairNumberCardSection;
    rfSummaryItemPairNumberCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemPairNumberCardSection];
    rfSummaryItemPairNumberCardSection3 = [equalCopy rfSummaryItemPairNumberCardSection];
    v431 = [rfSummaryItemPairNumberCardSection2 isEqual:rfSummaryItemPairNumberCardSection3];

    if (!v431)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
  appLinkCardSection2 = [equalCopy rfFactItemShortHeroNumberCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfFactItemShortHeroNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
  if (rfFactItemShortHeroNumberCardSection)
  {
    v433 = rfFactItemShortHeroNumberCardSection;
    rfFactItemShortHeroNumberCardSection2 = [(_SFPBCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
    rfFactItemShortHeroNumberCardSection3 = [equalCopy rfFactItemShortHeroNumberCardSection];
    v436 = [rfFactItemShortHeroNumberCardSection2 isEqual:rfFactItemShortHeroNumberCardSection3];

    if (!v436)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfFactItemDetailedNumberCardSection];
  appLinkCardSection2 = [equalCopy rfFactItemDetailedNumberCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfFactItemDetailedNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemDetailedNumberCardSection];
  if (rfFactItemDetailedNumberCardSection)
  {
    v438 = rfFactItemDetailedNumberCardSection;
    rfFactItemDetailedNumberCardSection2 = [(_SFPBCardSectionValue *)self rfFactItemDetailedNumberCardSection];
    rfFactItemDetailedNumberCardSection3 = [equalCopy rfFactItemDetailedNumberCardSection];
    v441 = [rfFactItemDetailedNumberCardSection2 isEqual:rfFactItemDetailedNumberCardSection3];

    if (!v441)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfFactItemHeroButtonCardSection];
  appLinkCardSection2 = [equalCopy rfFactItemHeroButtonCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfFactItemHeroButtonCardSection = [(_SFPBCardSectionValue *)self rfFactItemHeroButtonCardSection];
  if (rfFactItemHeroButtonCardSection)
  {
    v443 = rfFactItemHeroButtonCardSection;
    rfFactItemHeroButtonCardSection2 = [(_SFPBCardSectionValue *)self rfFactItemHeroButtonCardSection];
    rfFactItemHeroButtonCardSection3 = [equalCopy rfFactItemHeroButtonCardSection];
    v446 = [rfFactItemHeroButtonCardSection2 isEqual:rfFactItemHeroButtonCardSection3];

    if (!v446)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfFactItemImageRightCardSection];
  appLinkCardSection2 = [equalCopy rfFactItemImageRightCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfFactItemImageRightCardSection = [(_SFPBCardSectionValue *)self rfFactItemImageRightCardSection];
  if (rfFactItemImageRightCardSection)
  {
    v448 = rfFactItemImageRightCardSection;
    rfFactItemImageRightCardSection2 = [(_SFPBCardSectionValue *)self rfFactItemImageRightCardSection];
    rfFactItemImageRightCardSection3 = [equalCopy rfFactItemImageRightCardSection];
    v451 = [rfFactItemImageRightCardSection2 isEqual:rfFactItemImageRightCardSection3];

    if (!v451)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemSwitchV2CardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemSwitchV2CardSection = [(_SFPBCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
  if (rfSummaryItemSwitchV2CardSection)
  {
    v453 = rfSummaryItemSwitchV2CardSection;
    rfSummaryItemSwitchV2CardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
    rfSummaryItemSwitchV2CardSection3 = [equalCopy rfSummaryItemSwitchV2CardSection];
    v456 = [rfSummaryItemSwitchV2CardSection2 isEqual:rfSummaryItemSwitchV2CardSection3];

    if (!v456)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfTableHeaderCardSection];
  appLinkCardSection2 = [equalCopy rfTableHeaderCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfTableHeaderCardSection = [(_SFPBCardSectionValue *)self rfTableHeaderCardSection];
  if (rfTableHeaderCardSection)
  {
    v458 = rfTableHeaderCardSection;
    rfTableHeaderCardSection2 = [(_SFPBCardSectionValue *)self rfTableHeaderCardSection];
    rfTableHeaderCardSection3 = [equalCopy rfTableHeaderCardSection];
    v461 = [rfTableHeaderCardSection2 isEqual:rfTableHeaderCardSection3];

    if (!v461)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfTableRowCardSection];
  appLinkCardSection2 = [equalCopy rfTableRowCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfTableRowCardSection = [(_SFPBCardSectionValue *)self rfTableRowCardSection];
  if (rfTableRowCardSection)
  {
    v463 = rfTableRowCardSection;
    rfTableRowCardSection2 = [(_SFPBCardSectionValue *)self rfTableRowCardSection];
    rfTableRowCardSection3 = [equalCopy rfTableRowCardSection];
    v466 = [rfTableRowCardSection2 isEqual:rfTableRowCardSection3];

    if (!v466)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemVisualElementCardSection];
  appLinkCardSection2 = [equalCopy rfSimpleItemVisualElementCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSimpleItemVisualElementCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemVisualElementCardSection];
  if (rfSimpleItemVisualElementCardSection)
  {
    v468 = rfSimpleItemVisualElementCardSection;
    rfSimpleItemVisualElementCardSection2 = [(_SFPBCardSectionValue *)self rfSimpleItemVisualElementCardSection];
    rfSimpleItemVisualElementCardSection3 = [equalCopy rfSimpleItemVisualElementCardSection];
    v471 = [rfSimpleItemVisualElementCardSection2 isEqual:rfSimpleItemVisualElementCardSection3];

    if (!v471)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPlayerCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemPlayerCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemPlayerCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPlayerCardSection];
  if (rfSummaryItemPlayerCardSection)
  {
    v473 = rfSummaryItemPlayerCardSection;
    rfSummaryItemPlayerCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemPlayerCardSection];
    rfSummaryItemPlayerCardSection3 = [equalCopy rfSummaryItemPlayerCardSection];
    v476 = [rfSummaryItemPlayerCardSection2 isEqual:rfSummaryItemPlayerCardSection3];

    if (!v476)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemImageRightCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemImageRightCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemImageRightCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemImageRightCardSection];
  if (rfSummaryItemImageRightCardSection)
  {
    v478 = rfSummaryItemImageRightCardSection;
    rfSummaryItemImageRightCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemImageRightCardSection];
    rfSummaryItemImageRightCardSection3 = [equalCopy rfSummaryItemImageRightCardSection];
    v481 = [rfSummaryItemImageRightCardSection2 isEqual:rfSummaryItemImageRightCardSection3];

    if (!v481)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemButtonCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemButtonCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSummaryItemButtonCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemButtonCardSection];
  if (rfSummaryItemButtonCardSection)
  {
    v483 = rfSummaryItemButtonCardSection;
    rfSummaryItemButtonCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemButtonCardSection];
    rfSummaryItemButtonCardSection3 = [equalCopy rfSummaryItemButtonCardSection];
    v486 = [rfSummaryItemButtonCardSection2 isEqual:rfSummaryItemButtonCardSection3];

    if (!v486)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemReverseRichCardSection];
  appLinkCardSection2 = [equalCopy rfSimpleItemReverseRichCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSimpleItemReverseRichCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemReverseRichCardSection];
  if (rfSimpleItemReverseRichCardSection)
  {
    v488 = rfSimpleItemReverseRichCardSection;
    rfSimpleItemReverseRichCardSection2 = [(_SFPBCardSectionValue *)self rfSimpleItemReverseRichCardSection];
    rfSimpleItemReverseRichCardSection3 = [equalCopy rfSimpleItemReverseRichCardSection];
    v491 = [rfSimpleItemReverseRichCardSection2 isEqual:rfSimpleItemReverseRichCardSection3];

    if (!v491)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
  appLinkCardSection2 = [equalCopy rfSimpleItemRichSearchResultCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSimpleItemRichSearchResultCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
  if (rfSimpleItemRichSearchResultCardSection)
  {
    v493 = rfSimpleItemRichSearchResultCardSection;
    rfSimpleItemRichSearchResultCardSection2 = [(_SFPBCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
    rfSimpleItemRichSearchResultCardSection3 = [equalCopy rfSimpleItemRichSearchResultCardSection];
    v496 = [rfSimpleItemRichSearchResultCardSection2 isEqual:rfSimpleItemRichSearchResultCardSection3];

    if (!v496)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
  appLinkCardSection2 = [equalCopy rfPrimaryHeaderStackedImageCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfPrimaryHeaderStackedImageCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
  if (rfPrimaryHeaderStackedImageCardSection)
  {
    v498 = rfPrimaryHeaderStackedImageCardSection;
    rfPrimaryHeaderStackedImageCardSection2 = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
    rfPrimaryHeaderStackedImageCardSection3 = [equalCopy rfPrimaryHeaderStackedImageCardSection];
    v501 = [rfPrimaryHeaderStackedImageCardSection2 isEqual:rfPrimaryHeaderStackedImageCardSection3];

    if (!v501)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfReferenceItemLogoCardSection];
  appLinkCardSection2 = [equalCopy rfReferenceItemLogoCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfReferenceItemLogoCardSection = [(_SFPBCardSectionValue *)self rfReferenceItemLogoCardSection];
  if (rfReferenceItemLogoCardSection)
  {
    v503 = rfReferenceItemLogoCardSection;
    rfReferenceItemLogoCardSection2 = [(_SFPBCardSectionValue *)self rfReferenceItemLogoCardSection];
    rfReferenceItemLogoCardSection3 = [equalCopy rfReferenceItemLogoCardSection];
    v506 = [rfReferenceItemLogoCardSection2 isEqual:rfReferenceItemLogoCardSection3];

    if (!v506)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfReferenceItemButtonCardSection];
  appLinkCardSection2 = [equalCopy rfReferenceItemButtonCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfReferenceItemButtonCardSection = [(_SFPBCardSectionValue *)self rfReferenceItemButtonCardSection];
  if (rfReferenceItemButtonCardSection)
  {
    v508 = rfReferenceItemButtonCardSection;
    rfReferenceItemButtonCardSection2 = [(_SFPBCardSectionValue *)self rfReferenceItemButtonCardSection];
    rfReferenceItemButtonCardSection3 = [equalCopy rfReferenceItemButtonCardSection];
    v511 = [rfReferenceItemButtonCardSection2 isEqual:rfReferenceItemButtonCardSection3];

    if (!v511)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfButtonCardSection];
  appLinkCardSection2 = [equalCopy rfButtonCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfButtonCardSection = [(_SFPBCardSectionValue *)self rfButtonCardSection];
  if (rfButtonCardSection)
  {
    v513 = rfButtonCardSection;
    rfButtonCardSection2 = [(_SFPBCardSectionValue *)self rfButtonCardSection];
    rfButtonCardSection3 = [equalCopy rfButtonCardSection];
    v516 = [rfButtonCardSection2 isEqual:rfButtonCardSection3];

    if (!v516)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfBinaryButtonCardSection];
  appLinkCardSection2 = [equalCopy rfBinaryButtonCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfBinaryButtonCardSection = [(_SFPBCardSectionValue *)self rfBinaryButtonCardSection];
  if (rfBinaryButtonCardSection)
  {
    v518 = rfBinaryButtonCardSection;
    rfBinaryButtonCardSection2 = [(_SFPBCardSectionValue *)self rfBinaryButtonCardSection];
    rfBinaryButtonCardSection3 = [equalCopy rfBinaryButtonCardSection];
    v521 = [rfBinaryButtonCardSection2 isEqual:rfBinaryButtonCardSection3];

    if (!v521)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfReferenceCenteredCardSection];
  appLinkCardSection2 = [equalCopy rfReferenceCenteredCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfReferenceCenteredCardSection = [(_SFPBCardSectionValue *)self rfReferenceCenteredCardSection];
  if (rfReferenceCenteredCardSection)
  {
    v523 = rfReferenceCenteredCardSection;
    rfReferenceCenteredCardSection2 = [(_SFPBCardSectionValue *)self rfReferenceCenteredCardSection];
    rfReferenceCenteredCardSection3 = [equalCopy rfReferenceCenteredCardSection];
    v526 = [rfReferenceCenteredCardSection2 isEqual:rfReferenceCenteredCardSection3];

    if (!v526)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
  appLinkCardSection2 = [equalCopy rfSecondaryHeaderStandardCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSecondaryHeaderStandardCardSection = [(_SFPBCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
  if (rfSecondaryHeaderStandardCardSection)
  {
    v528 = rfSecondaryHeaderStandardCardSection;
    rfSecondaryHeaderStandardCardSection2 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
    rfSecondaryHeaderStandardCardSection3 = [equalCopy rfSecondaryHeaderStandardCardSection];
    v531 = [rfSecondaryHeaderStandardCardSection2 isEqual:rfSecondaryHeaderStandardCardSection3];

    if (!v531)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
  appLinkCardSection2 = [equalCopy rfSecondaryHeaderEmphasizedCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfSecondaryHeaderEmphasizedCardSection = [(_SFPBCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
  if (rfSecondaryHeaderEmphasizedCardSection)
  {
    v533 = rfSecondaryHeaderEmphasizedCardSection;
    rfSecondaryHeaderEmphasizedCardSection2 = [(_SFPBCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
    rfSecondaryHeaderEmphasizedCardSection3 = [equalCopy rfSecondaryHeaderEmphasizedCardSection];
    v536 = [rfSecondaryHeaderEmphasizedCardSection2 isEqual:rfSecondaryHeaderEmphasizedCardSection3];

    if (!v536)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfMapCardSection];
  appLinkCardSection2 = [equalCopy rfMapCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfMapCardSection = [(_SFPBCardSectionValue *)self rfMapCardSection];
  if (rfMapCardSection)
  {
    v538 = rfMapCardSection;
    rfMapCardSection2 = [(_SFPBCardSectionValue *)self rfMapCardSection];
    rfMapCardSection3 = [equalCopy rfMapCardSection];
    v541 = [rfMapCardSection2 isEqual:rfMapCardSection3];

    if (!v541)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfReferenceStandardCardSection];
  appLinkCardSection2 = [equalCopy rfReferenceStandardCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfReferenceStandardCardSection = [(_SFPBCardSectionValue *)self rfReferenceStandardCardSection];
  if (rfReferenceStandardCardSection)
  {
    v543 = rfReferenceStandardCardSection;
    rfReferenceStandardCardSection2 = [(_SFPBCardSectionValue *)self rfReferenceStandardCardSection];
    rfReferenceStandardCardSection3 = [equalCopy rfReferenceStandardCardSection];
    v546 = [rfReferenceStandardCardSection2 isEqual:rfReferenceStandardCardSection3];

    if (!v546)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfMultiButtonCardSection];
  appLinkCardSection2 = [equalCopy rfMultiButtonCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfMultiButtonCardSection = [(_SFPBCardSectionValue *)self rfMultiButtonCardSection];
  if (rfMultiButtonCardSection)
  {
    v548 = rfMultiButtonCardSection;
    rfMultiButtonCardSection2 = [(_SFPBCardSectionValue *)self rfMultiButtonCardSection];
    rfMultiButtonCardSection3 = [equalCopy rfMultiButtonCardSection];
    v551 = [rfMultiButtonCardSection2 isEqual:rfMultiButtonCardSection3];

    if (!v551)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfDisambiguationTitleCardSection];
  appLinkCardSection2 = [equalCopy rfDisambiguationTitleCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
    goto LABEL_556;
  }

  rfDisambiguationTitleCardSection = [(_SFPBCardSectionValue *)self rfDisambiguationTitleCardSection];
  if (rfDisambiguationTitleCardSection)
  {
    v553 = rfDisambiguationTitleCardSection;
    rfDisambiguationTitleCardSection2 = [(_SFPBCardSectionValue *)self rfDisambiguationTitleCardSection];
    rfDisambiguationTitleCardSection3 = [equalCopy rfDisambiguationTitleCardSection];
    v556 = [rfDisambiguationTitleCardSection2 isEqual:rfDisambiguationTitleCardSection3];

    if (!v556)
    {
      goto LABEL_557;
    }
  }

  else
  {
  }

  appLinkCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemExpandableCardSection];
  appLinkCardSection2 = [equalCopy rfSummaryItemExpandableCardSection];
  if ((appLinkCardSection != 0) == (appLinkCardSection2 == 0))
  {
LABEL_556:

    goto LABEL_557;
  }

  rfSummaryItemExpandableCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemExpandableCardSection];
  if (!rfSummaryItemExpandableCardSection)
  {

LABEL_560:
    v562 = 1;
    goto LABEL_558;
  }

  v558 = rfSummaryItemExpandableCardSection;
  rfSummaryItemExpandableCardSection2 = [(_SFPBCardSectionValue *)self rfSummaryItemExpandableCardSection];
  rfSummaryItemExpandableCardSection3 = [equalCopy rfSummaryItemExpandableCardSection];
  v561 = [rfSummaryItemExpandableCardSection2 isEqual:rfSummaryItemExpandableCardSection3];

  if (v561)
  {
    goto LABEL_560;
  }

LABEL_557:
  v562 = 0;
LABEL_558:

  return v562;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appLinkCardSection = [(_SFPBCardSectionValue *)self appLinkCardSection];
  if (appLinkCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  descriptionCardSection = [(_SFPBCardSectionValue *)self descriptionCardSection];
  if (descriptionCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  keyValueDataCardSection = [(_SFPBCardSectionValue *)self keyValueDataCardSection];
  if (keyValueDataCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  mapCardSection = [(_SFPBCardSectionValue *)self mapCardSection];
  if (mapCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  mediaInfoCardSection = [(_SFPBCardSectionValue *)self mediaInfoCardSection];
  if (mediaInfoCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  mediaPlayerCardSection = [(_SFPBCardSectionValue *)self mediaPlayerCardSection];
  if (mediaPlayerCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  nowPlayingCardSection = [(_SFPBCardSectionValue *)self nowPlayingCardSection];
  if (nowPlayingCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  richTitleCardSection = [(_SFPBCardSectionValue *)self richTitleCardSection];
  if (richTitleCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rowCardSection = [(_SFPBCardSectionValue *)self rowCardSection];
  if (rowCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  scoreboardCardSection = [(_SFPBCardSectionValue *)self scoreboardCardSection];
  if (scoreboardCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  socialMediaPostCardSection = [(_SFPBCardSectionValue *)self socialMediaPostCardSection];
  if (socialMediaPostCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  stockChartCardSection = [(_SFPBCardSectionValue *)self stockChartCardSection];
  if (stockChartCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  tableHeaderRowCardSection = [(_SFPBCardSectionValue *)self tableHeaderRowCardSection];
  if (tableHeaderRowCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  tableRowCardSection = [(_SFPBCardSectionValue *)self tableRowCardSection];
  if (tableRowCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  textColumnsCardSection = [(_SFPBCardSectionValue *)self textColumnsCardSection];
  if (textColumnsCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  titleCardSection = [(_SFPBCardSectionValue *)self titleCardSection];
  if (titleCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  trackListCardSection = [(_SFPBCardSectionValue *)self trackListCardSection];
  if (trackListCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  audioPlaybackCardSection = [(_SFPBCardSectionValue *)self audioPlaybackCardSection];
  if (audioPlaybackCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  flightCardSection = [(_SFPBCardSectionValue *)self flightCardSection];
  if (flightCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  activityIndicatorCardSection = [(_SFPBCardSectionValue *)self activityIndicatorCardSection];
  if (activityIndicatorCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  webCardSection = [(_SFPBCardSectionValue *)self webCardSection];
  if (webCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  messageCardSection = [(_SFPBCardSectionValue *)self messageCardSection];
  if (messageCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  detailedRowCardSection = [(_SFPBCardSectionValue *)self detailedRowCardSection];
  if (detailedRowCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  imagesCardSection = [(_SFPBCardSectionValue *)self imagesCardSection];
  if (imagesCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  suggestionCardSection = [(_SFPBCardSectionValue *)self suggestionCardSection];
  if (suggestionCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  selectableGridCardSection = [(_SFPBCardSectionValue *)self selectableGridCardSection];
  if (selectableGridCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  sectionHeaderCardSection = [(_SFPBCardSectionValue *)self sectionHeaderCardSection];
  if (sectionHeaderCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  metaInfoCardSection = [(_SFPBCardSectionValue *)self metaInfoCardSection];
  if (metaInfoCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  watchListCardSection = [(_SFPBCardSectionValue *)self watchListCardSection];
  if (watchListCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  mapsDetailedRowCardSection = [(_SFPBCardSectionValue *)self mapsDetailedRowCardSection];
  if (mapsDetailedRowCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  buttonCardSection = [(_SFPBCardSectionValue *)self buttonCardSection];
  if (buttonCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  horizontalButtonCardSection = [(_SFPBCardSectionValue *)self horizontalButtonCardSection];
  if (horizontalButtonCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  verticalLayoutCardSection = [(_SFPBCardSectionValue *)self verticalLayoutCardSection];
  if (verticalLayoutCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  productCardSection = [(_SFPBCardSectionValue *)self productCardSection];
  if (productCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  horizontalScrollCardSection = [(_SFPBCardSectionValue *)self horizontalScrollCardSection];
  if (horizontalScrollCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  mediaRemoteControlCardSection = [(_SFPBCardSectionValue *)self mediaRemoteControlCardSection];
  if (mediaRemoteControlCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  mapPlaceCardSection = [(_SFPBCardSectionValue *)self mapPlaceCardSection];
  if (mapPlaceCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  compactRowCardSection = [(_SFPBCardSectionValue *)self compactRowCardSection];
  if (compactRowCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  worldMapCardSection = [(_SFPBCardSectionValue *)self worldMapCardSection];
  if (worldMapCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  attributionFooterCardSection = [(_SFPBCardSectionValue *)self attributionFooterCardSection];
  if (attributionFooterCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  gridCardSection = [(_SFPBCardSectionValue *)self gridCardSection];
  if (gridCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  personHeaderCardSection = [(_SFPBCardSectionValue *)self personHeaderCardSection];
  if (personHeaderCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  colorBarCardSection = [(_SFPBCardSectionValue *)self colorBarCardSection];
  if (colorBarCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  splitCardSection = [(_SFPBCardSectionValue *)self splitCardSection];
  if (splitCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  linkPresentationCardSection = [(_SFPBCardSectionValue *)self linkPresentationCardSection];
  if (linkPresentationCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  findMyCardSection = [(_SFPBCardSectionValue *)self findMyCardSection];
  if (findMyCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  heroCardSection = [(_SFPBCardSectionValue *)self heroCardSection];
  if (heroCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  newsCardSection = [(_SFPBCardSectionValue *)self newsCardSection];
  if (newsCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  miniCardSection = [(_SFPBCardSectionValue *)self miniCardSection];
  if (miniCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  infoCardSection = [(_SFPBCardSectionValue *)self infoCardSection];
  if (infoCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  collectionCardSection = [(_SFPBCardSectionValue *)self collectionCardSection];
  if (collectionCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  combinedCardSection = [(_SFPBCardSectionValue *)self combinedCardSection];
  if (combinedCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  responseWrapperCardSection = [(_SFPBCardSectionValue *)self responseWrapperCardSection];
  if (responseWrapperCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  listenToCardSection = [(_SFPBCardSectionValue *)self listenToCardSection];
  if (listenToCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  watchNowCardSection = [(_SFPBCardSectionValue *)self watchNowCardSection];
  if (watchNowCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  strokeAnimationCardSection = [(_SFPBCardSectionValue *)self strokeAnimationCardSection];
  if (strokeAnimationCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  buttonListCardSection = [(_SFPBCardSectionValue *)self buttonListCardSection];
  if (buttonListCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  commandRowCardSection = [(_SFPBCardSectionValue *)self commandRowCardSection];
  if (commandRowCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  leadingTrailingCardSection = [(_SFPBCardSectionValue *)self leadingTrailingCardSection];
  if (leadingTrailingCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  heroTitleCardSection = [(_SFPBCardSectionValue *)self heroTitleCardSection];
  if (heroTitleCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  archiveViewCardSection = [(_SFPBCardSectionValue *)self archiveViewCardSection];
  if (archiveViewCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  appIconCardSection = [(_SFPBCardSectionValue *)self appIconCardSection];
  if (appIconCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  largeTitleDetailedRowCardSection = [(_SFPBCardSectionValue *)self largeTitleDetailedRowCardSection];
  if (largeTitleDetailedRowCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  safariTableOfContentsCardSection = [(_SFPBCardSectionValue *)self safariTableOfContentsCardSection];
  if (safariTableOfContentsCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemShortNumberCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemShortNumberCardSection];
  if (rfSummaryItemShortNumberCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemTextCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemTextCardSection];
  if (rfSummaryItemTextCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemStandardCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemStandardCardSection];
  if (rfSummaryItemStandardCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfFactItemShortNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemShortNumberCardSection];
  if (rfFactItemShortNumberCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfFactItemStandardCardSection = [(_SFPBCardSectionValue *)self rfFactItemStandardCardSection];
  if (rfFactItemStandardCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfLongItemStandardCardSection = [(_SFPBCardSectionValue *)self rfLongItemStandardCardSection];
  if (rfLongItemStandardCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfPrimaryHeaderRichCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderRichCardSection];
  if (rfPrimaryHeaderRichCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfPrimaryHeaderStandardCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
  if (rfPrimaryHeaderStandardCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfReferenceFootnoteCardSection = [(_SFPBCardSectionValue *)self rfReferenceFootnoteCardSection];
  if (rfReferenceFootnoteCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfReferenceRichCardSection = [(_SFPBCardSectionValue *)self rfReferenceRichCardSection];
  if (rfReferenceRichCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSimpleItemRichCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemRichCardSection];
  if (rfSimpleItemRichCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSimpleItemStandardCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemStandardCardSection];
  if (rfSimpleItemStandardCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemAlignedTextCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
  if (rfSummaryItemAlignedTextCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfExpandableStandardCardSection = [(_SFPBCardSectionValue *)self rfExpandableStandardCardSection];
  if (rfExpandableStandardCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfFactItemButtonCardSection = [(_SFPBCardSectionValue *)self rfFactItemButtonCardSection];
  if (rfFactItemButtonCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfFactItemHeroNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemHeroNumberCardSection];
  if (rfFactItemHeroNumberCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfPrimaryHeaderMarqueeCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
  if (rfPrimaryHeaderMarqueeCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemDetailedTextCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
  if (rfSummaryItemDetailedTextCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSimpleItemPlayerCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemPlayerCardSection];
  if (rfSimpleItemPlayerCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemPairCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPairCardSection];
  if (rfSummaryItemPairCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemPairNumberCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPairNumberCardSection];
  if (rfSummaryItemPairNumberCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfFactItemShortHeroNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
  if (rfFactItemShortHeroNumberCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfFactItemDetailedNumberCardSection = [(_SFPBCardSectionValue *)self rfFactItemDetailedNumberCardSection];
  if (rfFactItemDetailedNumberCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfFactItemHeroButtonCardSection = [(_SFPBCardSectionValue *)self rfFactItemHeroButtonCardSection];
  if (rfFactItemHeroButtonCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfFactItemImageRightCardSection = [(_SFPBCardSectionValue *)self rfFactItemImageRightCardSection];
  if (rfFactItemImageRightCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemSwitchV2CardSection = [(_SFPBCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
  if (rfSummaryItemSwitchV2CardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfTableHeaderCardSection = [(_SFPBCardSectionValue *)self rfTableHeaderCardSection];
  if (rfTableHeaderCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfTableRowCardSection = [(_SFPBCardSectionValue *)self rfTableRowCardSection];
  if (rfTableRowCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSimpleItemVisualElementCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemVisualElementCardSection];
  if (rfSimpleItemVisualElementCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemPlayerCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemPlayerCardSection];
  if (rfSummaryItemPlayerCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemImageRightCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemImageRightCardSection];
  if (rfSummaryItemImageRightCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemButtonCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemButtonCardSection];
  if (rfSummaryItemButtonCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSimpleItemReverseRichCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemReverseRichCardSection];
  if (rfSimpleItemReverseRichCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSimpleItemRichSearchResultCardSection = [(_SFPBCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
  if (rfSimpleItemRichSearchResultCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfPrimaryHeaderStackedImageCardSection = [(_SFPBCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
  if (rfPrimaryHeaderStackedImageCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfReferenceItemLogoCardSection = [(_SFPBCardSectionValue *)self rfReferenceItemLogoCardSection];
  if (rfReferenceItemLogoCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfReferenceItemButtonCardSection = [(_SFPBCardSectionValue *)self rfReferenceItemButtonCardSection];
  if (rfReferenceItemButtonCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfButtonCardSection = [(_SFPBCardSectionValue *)self rfButtonCardSection];
  if (rfButtonCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfBinaryButtonCardSection = [(_SFPBCardSectionValue *)self rfBinaryButtonCardSection];
  if (rfBinaryButtonCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfReferenceCenteredCardSection = [(_SFPBCardSectionValue *)self rfReferenceCenteredCardSection];
  if (rfReferenceCenteredCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSecondaryHeaderStandardCardSection = [(_SFPBCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
  if (rfSecondaryHeaderStandardCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSecondaryHeaderEmphasizedCardSection = [(_SFPBCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
  if (rfSecondaryHeaderEmphasizedCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfMapCardSection = [(_SFPBCardSectionValue *)self rfMapCardSection];
  if (rfMapCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfReferenceStandardCardSection = [(_SFPBCardSectionValue *)self rfReferenceStandardCardSection];
  if (rfReferenceStandardCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfMultiButtonCardSection = [(_SFPBCardSectionValue *)self rfMultiButtonCardSection];
  if (rfMultiButtonCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfDisambiguationTitleCardSection = [(_SFPBCardSectionValue *)self rfDisambiguationTitleCardSection];
  if (rfDisambiguationTitleCardSection)
  {
    PBDataWriterWriteSubmessage();
  }

  rfSummaryItemExpandableCardSection = [(_SFPBCardSectionValue *)self rfSummaryItemExpandableCardSection];
  if (rfSummaryItemExpandableCardSection)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end