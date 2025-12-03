@interface SFCardSectionValue
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCardSectionValue)initWithCoder:(id)coder;
- (SFCardSectionValue)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCardSectionValue

- (SFCardSectionValue)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v452.receiver = self;
  v452.super_class = SFCardSectionValue;
  v5 = [(SFCardSectionValue *)&v452 init];

  if (v5)
  {
    appLinkCardSection = [protobufCopy appLinkCardSection];

    if (appLinkCardSection)
    {
      v7 = [SFAppLinkCardSection alloc];
      appLinkCardSection2 = [protobufCopy appLinkCardSection];
      v9 = [(SFAppLinkCardSection *)v7 initWithProtobuf:appLinkCardSection2];
      [(SFCardSectionValue *)v5 setAppLinkCardSection:v9];
    }

    descriptionCardSection = [protobufCopy descriptionCardSection];

    if (descriptionCardSection)
    {
      v11 = [SFDescriptionCardSection alloc];
      descriptionCardSection2 = [protobufCopy descriptionCardSection];
      v13 = [(SFDescriptionCardSection *)v11 initWithProtobuf:descriptionCardSection2];
      [(SFCardSectionValue *)v5 setDescriptionCardSection:v13];
    }

    keyValueDataCardSection = [protobufCopy keyValueDataCardSection];

    if (keyValueDataCardSection)
    {
      v15 = [SFKeyValueDataCardSection alloc];
      keyValueDataCardSection2 = [protobufCopy keyValueDataCardSection];
      v17 = [(SFKeyValueDataCardSection *)v15 initWithProtobuf:keyValueDataCardSection2];
      [(SFCardSectionValue *)v5 setKeyValueDataCardSection:v17];
    }

    mapCardSection = [protobufCopy mapCardSection];

    if (mapCardSection)
    {
      v19 = [SFMapCardSection alloc];
      mapCardSection2 = [protobufCopy mapCardSection];
      v21 = [(SFMapCardSection *)v19 initWithProtobuf:mapCardSection2];
      [(SFCardSectionValue *)v5 setMapCardSection:v21];
    }

    mediaInfoCardSection = [protobufCopy mediaInfoCardSection];

    if (mediaInfoCardSection)
    {
      v23 = [SFMediaInfoCardSection alloc];
      mediaInfoCardSection2 = [protobufCopy mediaInfoCardSection];
      v25 = [(SFMediaInfoCardSection *)v23 initWithProtobuf:mediaInfoCardSection2];
      [(SFCardSectionValue *)v5 setMediaInfoCardSection:v25];
    }

    mediaPlayerCardSection = [protobufCopy mediaPlayerCardSection];

    if (mediaPlayerCardSection)
    {
      v27 = [SFMediaPlayerCardSection alloc];
      mediaPlayerCardSection2 = [protobufCopy mediaPlayerCardSection];
      v29 = [(SFMediaPlayerCardSection *)v27 initWithProtobuf:mediaPlayerCardSection2];
      [(SFCardSectionValue *)v5 setMediaPlayerCardSection:v29];
    }

    nowPlayingCardSection = [protobufCopy nowPlayingCardSection];

    if (nowPlayingCardSection)
    {
      v31 = [SFNowPlayingCardSection alloc];
      nowPlayingCardSection2 = [protobufCopy nowPlayingCardSection];
      v33 = [(SFNowPlayingCardSection *)v31 initWithProtobuf:nowPlayingCardSection2];
      [(SFCardSectionValue *)v5 setNowPlayingCardSection:v33];
    }

    richTitleCardSection = [protobufCopy richTitleCardSection];

    if (richTitleCardSection)
    {
      v35 = [SFRichTitleCardSection alloc];
      richTitleCardSection2 = [protobufCopy richTitleCardSection];
      v37 = [(SFRichTitleCardSection *)v35 initWithProtobuf:richTitleCardSection2];
      [(SFCardSectionValue *)v5 setRichTitleCardSection:v37];
    }

    rowCardSection = [protobufCopy rowCardSection];

    if (rowCardSection)
    {
      v39 = [SFRowCardSection alloc];
      rowCardSection2 = [protobufCopy rowCardSection];
      v41 = [(SFRowCardSection *)v39 initWithProtobuf:rowCardSection2];
      [(SFCardSectionValue *)v5 setRowCardSection:v41];
    }

    scoreboardCardSection = [protobufCopy scoreboardCardSection];

    if (scoreboardCardSection)
    {
      v43 = [SFScoreboardCardSection alloc];
      scoreboardCardSection2 = [protobufCopy scoreboardCardSection];
      v45 = [(SFScoreboardCardSection *)v43 initWithProtobuf:scoreboardCardSection2];
      [(SFCardSectionValue *)v5 setScoreboardCardSection:v45];
    }

    socialMediaPostCardSection = [protobufCopy socialMediaPostCardSection];

    if (socialMediaPostCardSection)
    {
      v47 = [SFSocialMediaPostCardSection alloc];
      socialMediaPostCardSection2 = [protobufCopy socialMediaPostCardSection];
      v49 = [(SFSocialMediaPostCardSection *)v47 initWithProtobuf:socialMediaPostCardSection2];
      [(SFCardSectionValue *)v5 setSocialMediaPostCardSection:v49];
    }

    stockChartCardSection = [protobufCopy stockChartCardSection];

    if (stockChartCardSection)
    {
      v51 = [SFStockChartCardSection alloc];
      stockChartCardSection2 = [protobufCopy stockChartCardSection];
      v53 = [(SFStockChartCardSection *)v51 initWithProtobuf:stockChartCardSection2];
      [(SFCardSectionValue *)v5 setStockChartCardSection:v53];
    }

    tableHeaderRowCardSection = [protobufCopy tableHeaderRowCardSection];

    if (tableHeaderRowCardSection)
    {
      v55 = [SFTableHeaderRowCardSection alloc];
      tableHeaderRowCardSection2 = [protobufCopy tableHeaderRowCardSection];
      v57 = [(SFTableHeaderRowCardSection *)v55 initWithProtobuf:tableHeaderRowCardSection2];
      [(SFCardSectionValue *)v5 setTableHeaderRowCardSection:v57];
    }

    tableRowCardSection = [protobufCopy tableRowCardSection];

    if (tableRowCardSection)
    {
      v59 = [SFTableRowCardSection alloc];
      tableRowCardSection2 = [protobufCopy tableRowCardSection];
      v61 = [(SFTableRowCardSection *)v59 initWithProtobuf:tableRowCardSection2];
      [(SFCardSectionValue *)v5 setTableRowCardSection:v61];
    }

    textColumnsCardSection = [protobufCopy textColumnsCardSection];

    if (textColumnsCardSection)
    {
      v63 = [SFTextColumnsCardSection alloc];
      textColumnsCardSection2 = [protobufCopy textColumnsCardSection];
      v65 = [(SFTextColumnsCardSection *)v63 initWithProtobuf:textColumnsCardSection2];
      [(SFCardSectionValue *)v5 setTextColumnsCardSection:v65];
    }

    titleCardSection = [protobufCopy titleCardSection];

    if (titleCardSection)
    {
      v67 = [SFTitleCardSection alloc];
      titleCardSection2 = [protobufCopy titleCardSection];
      v69 = [(SFTitleCardSection *)v67 initWithProtobuf:titleCardSection2];
      [(SFCardSectionValue *)v5 setTitleCardSection:v69];
    }

    trackListCardSection = [protobufCopy trackListCardSection];

    if (trackListCardSection)
    {
      v71 = [SFTrackListCardSection alloc];
      trackListCardSection2 = [protobufCopy trackListCardSection];
      v73 = [(SFTrackListCardSection *)v71 initWithProtobuf:trackListCardSection2];
      [(SFCardSectionValue *)v5 setTrackListCardSection:v73];
    }

    audioPlaybackCardSection = [protobufCopy audioPlaybackCardSection];

    if (audioPlaybackCardSection)
    {
      v75 = [SFAudioPlaybackCardSection alloc];
      audioPlaybackCardSection2 = [protobufCopy audioPlaybackCardSection];
      v77 = [(SFAudioPlaybackCardSection *)v75 initWithProtobuf:audioPlaybackCardSection2];
      [(SFCardSectionValue *)v5 setAudioPlaybackCardSection:v77];
    }

    flightCardSection = [protobufCopy flightCardSection];

    if (flightCardSection)
    {
      v79 = [SFFlightCardSection alloc];
      flightCardSection2 = [protobufCopy flightCardSection];
      v81 = [(SFFlightCardSection *)v79 initWithProtobuf:flightCardSection2];
      [(SFCardSectionValue *)v5 setFlightCardSection:v81];
    }

    activityIndicatorCardSection = [protobufCopy activityIndicatorCardSection];

    if (activityIndicatorCardSection)
    {
      v83 = [SFActivityIndicatorCardSection alloc];
      activityIndicatorCardSection2 = [protobufCopy activityIndicatorCardSection];
      v85 = [(SFActivityIndicatorCardSection *)v83 initWithProtobuf:activityIndicatorCardSection2];
      [(SFCardSectionValue *)v5 setActivityIndicatorCardSection:v85];
    }

    webCardSection = [protobufCopy webCardSection];

    if (webCardSection)
    {
      v87 = [SFWebCardSection alloc];
      webCardSection2 = [protobufCopy webCardSection];
      v89 = [(SFWebCardSection *)v87 initWithProtobuf:webCardSection2];
      [(SFCardSectionValue *)v5 setWebCardSection:v89];
    }

    messageCardSection = [protobufCopy messageCardSection];

    if (messageCardSection)
    {
      v91 = [SFMessageCardSection alloc];
      messageCardSection2 = [protobufCopy messageCardSection];
      v93 = [(SFMessageCardSection *)v91 initWithProtobuf:messageCardSection2];
      [(SFCardSectionValue *)v5 setMessageCardSection:v93];
    }

    detailedRowCardSection = [protobufCopy detailedRowCardSection];

    if (detailedRowCardSection)
    {
      v95 = [SFDetailedRowCardSection alloc];
      detailedRowCardSection2 = [protobufCopy detailedRowCardSection];
      v97 = [(SFDetailedRowCardSection *)v95 initWithProtobuf:detailedRowCardSection2];
      [(SFCardSectionValue *)v5 setDetailedRowCardSection:v97];
    }

    imagesCardSection = [protobufCopy imagesCardSection];

    if (imagesCardSection)
    {
      v99 = [SFImagesCardSection alloc];
      imagesCardSection2 = [protobufCopy imagesCardSection];
      v101 = [(SFImagesCardSection *)v99 initWithProtobuf:imagesCardSection2];
      [(SFCardSectionValue *)v5 setImagesCardSection:v101];
    }

    suggestionCardSection = [protobufCopy suggestionCardSection];

    if (suggestionCardSection)
    {
      v103 = [SFSuggestionCardSection alloc];
      suggestionCardSection2 = [protobufCopy suggestionCardSection];
      v105 = [(SFSuggestionCardSection *)v103 initWithProtobuf:suggestionCardSection2];
      [(SFCardSectionValue *)v5 setSuggestionCardSection:v105];
    }

    selectableGridCardSection = [protobufCopy selectableGridCardSection];

    if (selectableGridCardSection)
    {
      v107 = [SFSelectableGridCardSection alloc];
      selectableGridCardSection2 = [protobufCopy selectableGridCardSection];
      v109 = [(SFSelectableGridCardSection *)v107 initWithProtobuf:selectableGridCardSection2];
      [(SFCardSectionValue *)v5 setSelectableGridCardSection:v109];
    }

    sectionHeaderCardSection = [protobufCopy sectionHeaderCardSection];

    if (sectionHeaderCardSection)
    {
      v111 = [SFSectionHeaderCardSection alloc];
      sectionHeaderCardSection2 = [protobufCopy sectionHeaderCardSection];
      v113 = [(SFSectionHeaderCardSection *)v111 initWithProtobuf:sectionHeaderCardSection2];
      [(SFCardSectionValue *)v5 setSectionHeaderCardSection:v113];
    }

    metaInfoCardSection = [protobufCopy metaInfoCardSection];

    if (metaInfoCardSection)
    {
      v115 = [SFMetaInfoCardSection alloc];
      metaInfoCardSection2 = [protobufCopy metaInfoCardSection];
      v117 = [(SFMetaInfoCardSection *)v115 initWithProtobuf:metaInfoCardSection2];
      [(SFCardSectionValue *)v5 setMetaInfoCardSection:v117];
    }

    watchListCardSection = [protobufCopy watchListCardSection];

    if (watchListCardSection)
    {
      v119 = [SFWatchListCardSection alloc];
      watchListCardSection2 = [protobufCopy watchListCardSection];
      v121 = [(SFWatchListCardSection *)v119 initWithProtobuf:watchListCardSection2];
      [(SFCardSectionValue *)v5 setWatchListCardSection:v121];
    }

    mapsDetailedRowCardSection = [protobufCopy mapsDetailedRowCardSection];

    if (mapsDetailedRowCardSection)
    {
      v123 = [SFMapsDetailedRowCardSection alloc];
      mapsDetailedRowCardSection2 = [protobufCopy mapsDetailedRowCardSection];
      v125 = [(SFMapsDetailedRowCardSection *)v123 initWithProtobuf:mapsDetailedRowCardSection2];
      [(SFCardSectionValue *)v5 setMapsDetailedRowCardSection:v125];
    }

    buttonCardSection = [protobufCopy buttonCardSection];

    if (buttonCardSection)
    {
      v127 = [SFButtonCardSection alloc];
      buttonCardSection2 = [protobufCopy buttonCardSection];
      v129 = [(SFButtonCardSection *)v127 initWithProtobuf:buttonCardSection2];
      [(SFCardSectionValue *)v5 setButtonCardSection:v129];
    }

    horizontalButtonCardSection = [protobufCopy horizontalButtonCardSection];

    if (horizontalButtonCardSection)
    {
      v131 = [SFHorizontalButtonCardSection alloc];
      horizontalButtonCardSection2 = [protobufCopy horizontalButtonCardSection];
      v133 = [(SFHorizontalButtonCardSection *)v131 initWithProtobuf:horizontalButtonCardSection2];
      [(SFCardSectionValue *)v5 setHorizontalButtonCardSection:v133];
    }

    verticalLayoutCardSection = [protobufCopy verticalLayoutCardSection];

    if (verticalLayoutCardSection)
    {
      v135 = [SFVerticalLayoutCardSection alloc];
      verticalLayoutCardSection2 = [protobufCopy verticalLayoutCardSection];
      v137 = [(SFVerticalLayoutCardSection *)v135 initWithProtobuf:verticalLayoutCardSection2];
      [(SFCardSectionValue *)v5 setVerticalLayoutCardSection:v137];
    }

    productCardSection = [protobufCopy productCardSection];

    if (productCardSection)
    {
      v139 = [SFProductCardSection alloc];
      productCardSection2 = [protobufCopy productCardSection];
      v141 = [(SFProductCardSection *)v139 initWithProtobuf:productCardSection2];
      [(SFCardSectionValue *)v5 setProductCardSection:v141];
    }

    horizontalScrollCardSection = [protobufCopy horizontalScrollCardSection];

    if (horizontalScrollCardSection)
    {
      v143 = [SFHorizontalScrollCardSection alloc];
      horizontalScrollCardSection2 = [protobufCopy horizontalScrollCardSection];
      v145 = [(SFHorizontalScrollCardSection *)v143 initWithProtobuf:horizontalScrollCardSection2];
      [(SFCardSectionValue *)v5 setHorizontalScrollCardSection:v145];
    }

    mediaRemoteControlCardSection = [protobufCopy mediaRemoteControlCardSection];

    if (mediaRemoteControlCardSection)
    {
      v147 = [SFMediaRemoteControlCardSection alloc];
      mediaRemoteControlCardSection2 = [protobufCopy mediaRemoteControlCardSection];
      v149 = [(SFMediaRemoteControlCardSection *)v147 initWithProtobuf:mediaRemoteControlCardSection2];
      [(SFCardSectionValue *)v5 setMediaRemoteControlCardSection:v149];
    }

    mapPlaceCardSection = [protobufCopy mapPlaceCardSection];

    if (mapPlaceCardSection)
    {
      v151 = [SFMapPlaceCardSection alloc];
      mapPlaceCardSection2 = [protobufCopy mapPlaceCardSection];
      v153 = [(SFMapPlaceCardSection *)v151 initWithProtobuf:mapPlaceCardSection2];
      [(SFCardSectionValue *)v5 setMapPlaceCardSection:v153];
    }

    compactRowCardSection = [protobufCopy compactRowCardSection];

    if (compactRowCardSection)
    {
      v155 = [SFCompactRowCardSection alloc];
      compactRowCardSection2 = [protobufCopy compactRowCardSection];
      v157 = [(SFCompactRowCardSection *)v155 initWithProtobuf:compactRowCardSection2];
      [(SFCardSectionValue *)v5 setCompactRowCardSection:v157];
    }

    worldMapCardSection = [protobufCopy worldMapCardSection];

    if (worldMapCardSection)
    {
      v159 = [SFWorldMapCardSection alloc];
      worldMapCardSection2 = [protobufCopy worldMapCardSection];
      v161 = [(SFWorldMapCardSection *)v159 initWithProtobuf:worldMapCardSection2];
      [(SFCardSectionValue *)v5 setWorldMapCardSection:v161];
    }

    attributionFooterCardSection = [protobufCopy attributionFooterCardSection];

    if (attributionFooterCardSection)
    {
      v163 = [SFAttributionFooterCardSection alloc];
      attributionFooterCardSection2 = [protobufCopy attributionFooterCardSection];
      v165 = [(SFAttributionFooterCardSection *)v163 initWithProtobuf:attributionFooterCardSection2];
      [(SFCardSectionValue *)v5 setAttributionFooterCardSection:v165];
    }

    gridCardSection = [protobufCopy gridCardSection];

    if (gridCardSection)
    {
      v167 = [SFGridCardSection alloc];
      gridCardSection2 = [protobufCopy gridCardSection];
      v169 = [(SFGridCardSection *)v167 initWithProtobuf:gridCardSection2];
      [(SFCardSectionValue *)v5 setGridCardSection:v169];
    }

    personHeaderCardSection = [protobufCopy personHeaderCardSection];

    if (personHeaderCardSection)
    {
      v171 = [SFPersonHeaderCardSection alloc];
      personHeaderCardSection2 = [protobufCopy personHeaderCardSection];
      v173 = [(SFPersonHeaderCardSection *)v171 initWithProtobuf:personHeaderCardSection2];
      [(SFCardSectionValue *)v5 setPersonHeaderCardSection:v173];
    }

    colorBarCardSection = [protobufCopy colorBarCardSection];

    if (colorBarCardSection)
    {
      v175 = [SFColorBarCardSection alloc];
      colorBarCardSection2 = [protobufCopy colorBarCardSection];
      v177 = [(SFColorBarCardSection *)v175 initWithProtobuf:colorBarCardSection2];
      [(SFCardSectionValue *)v5 setColorBarCardSection:v177];
    }

    splitCardSection = [protobufCopy splitCardSection];

    if (splitCardSection)
    {
      v179 = [SFSplitCardSection alloc];
      splitCardSection2 = [protobufCopy splitCardSection];
      v181 = [(SFSplitCardSection *)v179 initWithProtobuf:splitCardSection2];
      [(SFCardSectionValue *)v5 setSplitCardSection:v181];
    }

    linkPresentationCardSection = [protobufCopy linkPresentationCardSection];

    if (linkPresentationCardSection)
    {
      v183 = [SFLinkPresentationCardSection alloc];
      linkPresentationCardSection2 = [protobufCopy linkPresentationCardSection];
      v185 = [(SFLinkPresentationCardSection *)v183 initWithProtobuf:linkPresentationCardSection2];
      [(SFCardSectionValue *)v5 setLinkPresentationCardSection:v185];
    }

    findMyCardSection = [protobufCopy findMyCardSection];

    if (findMyCardSection)
    {
      v187 = [SFFindMyCardSection alloc];
      findMyCardSection2 = [protobufCopy findMyCardSection];
      v189 = [(SFFindMyCardSection *)v187 initWithProtobuf:findMyCardSection2];
      [(SFCardSectionValue *)v5 setFindMyCardSection:v189];
    }

    heroCardSection = [protobufCopy heroCardSection];

    if (heroCardSection)
    {
      v191 = [SFHeroCardSection alloc];
      heroCardSection2 = [protobufCopy heroCardSection];
      v193 = [(SFHeroCardSection *)v191 initWithProtobuf:heroCardSection2];
      [(SFCardSectionValue *)v5 setHeroCardSection:v193];
    }

    newsCardSection = [protobufCopy newsCardSection];

    if (newsCardSection)
    {
      v195 = [SFNewsCardSection alloc];
      newsCardSection2 = [protobufCopy newsCardSection];
      v197 = [(SFNewsCardSection *)v195 initWithProtobuf:newsCardSection2];
      [(SFCardSectionValue *)v5 setNewsCardSection:v197];
    }

    miniCardSection = [protobufCopy miniCardSection];

    if (miniCardSection)
    {
      v199 = [SFMiniCardSection alloc];
      miniCardSection2 = [protobufCopy miniCardSection];
      v201 = [(SFMiniCardSection *)v199 initWithProtobuf:miniCardSection2];
      [(SFCardSectionValue *)v5 setMiniCardSection:v201];
    }

    infoCardSection = [protobufCopy infoCardSection];

    if (infoCardSection)
    {
      v203 = [SFInfoCardSection alloc];
      infoCardSection2 = [protobufCopy infoCardSection];
      v205 = [(SFInfoCardSection *)v203 initWithProtobuf:infoCardSection2];
      [(SFCardSectionValue *)v5 setInfoCardSection:v205];
    }

    collectionCardSection = [protobufCopy collectionCardSection];

    if (collectionCardSection)
    {
      v207 = [SFCollectionCardSection alloc];
      collectionCardSection2 = [protobufCopy collectionCardSection];
      v209 = [(SFCollectionCardSection *)v207 initWithProtobuf:collectionCardSection2];
      [(SFCardSectionValue *)v5 setCollectionCardSection:v209];
    }

    combinedCardSection = [protobufCopy combinedCardSection];

    if (combinedCardSection)
    {
      v211 = [SFCombinedCardSection alloc];
      combinedCardSection2 = [protobufCopy combinedCardSection];
      v213 = [(SFCombinedCardSection *)v211 initWithProtobuf:combinedCardSection2];
      [(SFCardSectionValue *)v5 setCombinedCardSection:v213];
    }

    responseWrapperCardSection = [protobufCopy responseWrapperCardSection];

    if (responseWrapperCardSection)
    {
      v215 = [SFResponseWrapperCardSection alloc];
      responseWrapperCardSection2 = [protobufCopy responseWrapperCardSection];
      v217 = [(SFResponseWrapperCardSection *)v215 initWithProtobuf:responseWrapperCardSection2];
      [(SFCardSectionValue *)v5 setResponseWrapperCardSection:v217];
    }

    listenToCardSection = [protobufCopy listenToCardSection];

    if (listenToCardSection)
    {
      v219 = [SFListenToCardSection alloc];
      listenToCardSection2 = [protobufCopy listenToCardSection];
      v221 = [(SFListenToCardSection *)v219 initWithProtobuf:listenToCardSection2];
      [(SFCardSectionValue *)v5 setListenToCardSection:v221];
    }

    watchNowCardSection = [protobufCopy watchNowCardSection];

    if (watchNowCardSection)
    {
      v223 = [SFWatchNowCardSection alloc];
      watchNowCardSection2 = [protobufCopy watchNowCardSection];
      v225 = [(SFWatchNowCardSection *)v223 initWithProtobuf:watchNowCardSection2];
      [(SFCardSectionValue *)v5 setWatchNowCardSection:v225];
    }

    strokeAnimationCardSection = [protobufCopy strokeAnimationCardSection];

    if (strokeAnimationCardSection)
    {
      v227 = [SFStrokeAnimationCardSection alloc];
      strokeAnimationCardSection2 = [protobufCopy strokeAnimationCardSection];
      v229 = [(SFStrokeAnimationCardSection *)v227 initWithProtobuf:strokeAnimationCardSection2];
      [(SFCardSectionValue *)v5 setStrokeAnimationCardSection:v229];
    }

    buttonListCardSection = [protobufCopy buttonListCardSection];

    if (buttonListCardSection)
    {
      v231 = [SFButtonListCardSection alloc];
      buttonListCardSection2 = [protobufCopy buttonListCardSection];
      v233 = [(SFButtonListCardSection *)v231 initWithProtobuf:buttonListCardSection2];
      [(SFCardSectionValue *)v5 setButtonListCardSection:v233];
    }

    commandRowCardSection = [protobufCopy commandRowCardSection];

    if (commandRowCardSection)
    {
      v235 = [SFCommandRowCardSection alloc];
      commandRowCardSection2 = [protobufCopy commandRowCardSection];
      v237 = [(SFCommandRowCardSection *)v235 initWithProtobuf:commandRowCardSection2];
      [(SFCardSectionValue *)v5 setCommandRowCardSection:v237];
    }

    leadingTrailingCardSection = [protobufCopy leadingTrailingCardSection];

    if (leadingTrailingCardSection)
    {
      v239 = [SFLeadingTrailingCardSection alloc];
      leadingTrailingCardSection2 = [protobufCopy leadingTrailingCardSection];
      v241 = [(SFLeadingTrailingCardSection *)v239 initWithProtobuf:leadingTrailingCardSection2];
      [(SFCardSectionValue *)v5 setLeadingTrailingCardSection:v241];
    }

    heroTitleCardSection = [protobufCopy heroTitleCardSection];

    if (heroTitleCardSection)
    {
      v243 = [SFHeroTitleCardSection alloc];
      heroTitleCardSection2 = [protobufCopy heroTitleCardSection];
      v245 = [(SFHeroTitleCardSection *)v243 initWithProtobuf:heroTitleCardSection2];
      [(SFCardSectionValue *)v5 setHeroTitleCardSection:v245];
    }

    archiveViewCardSection = [protobufCopy archiveViewCardSection];

    if (archiveViewCardSection)
    {
      v247 = [SFArchiveViewCardSection alloc];
      archiveViewCardSection2 = [protobufCopy archiveViewCardSection];
      v249 = [(SFArchiveViewCardSection *)v247 initWithProtobuf:archiveViewCardSection2];
      [(SFCardSectionValue *)v5 setArchiveViewCardSection:v249];
    }

    appIconCardSection = [protobufCopy appIconCardSection];

    if (appIconCardSection)
    {
      v251 = [SFAppIconCardSection alloc];
      appIconCardSection2 = [protobufCopy appIconCardSection];
      v253 = [(SFAppIconCardSection *)v251 initWithProtobuf:appIconCardSection2];
      [(SFCardSectionValue *)v5 setAppIconCardSection:v253];
    }

    largeTitleDetailedRowCardSection = [protobufCopy largeTitleDetailedRowCardSection];

    if (largeTitleDetailedRowCardSection)
    {
      v255 = [SFLargeTitleDetailedRowCardSection alloc];
      largeTitleDetailedRowCardSection2 = [protobufCopy largeTitleDetailedRowCardSection];
      v257 = [(SFLargeTitleDetailedRowCardSection *)v255 initWithProtobuf:largeTitleDetailedRowCardSection2];
      [(SFCardSectionValue *)v5 setLargeTitleDetailedRowCardSection:v257];
    }

    safariTableOfContentsCardSection = [protobufCopy safariTableOfContentsCardSection];

    if (safariTableOfContentsCardSection)
    {
      v259 = [SFSafariTableOfContentsCardSection alloc];
      safariTableOfContentsCardSection2 = [protobufCopy safariTableOfContentsCardSection];
      v261 = [(SFSafariTableOfContentsCardSection *)v259 initWithProtobuf:safariTableOfContentsCardSection2];
      [(SFCardSectionValue *)v5 setSafariTableOfContentsCardSection:v261];
    }

    rfSummaryItemShortNumberCardSection = [protobufCopy rfSummaryItemShortNumberCardSection];

    if (rfSummaryItemShortNumberCardSection)
    {
      v263 = [RFSummaryItemShortNumberCardSection alloc];
      rfSummaryItemShortNumberCardSection2 = [protobufCopy rfSummaryItemShortNumberCardSection];
      v265 = [(RFSummaryItemShortNumberCardSection *)v263 initWithProtobuf:rfSummaryItemShortNumberCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemShortNumberCardSection:v265];
    }

    rfSummaryItemTextCardSection = [protobufCopy rfSummaryItemTextCardSection];

    if (rfSummaryItemTextCardSection)
    {
      v267 = [RFSummaryItemTextCardSection alloc];
      rfSummaryItemTextCardSection2 = [protobufCopy rfSummaryItemTextCardSection];
      v269 = [(RFSummaryItemTextCardSection *)v267 initWithProtobuf:rfSummaryItemTextCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemTextCardSection:v269];
    }

    rfSummaryItemStandardCardSection = [protobufCopy rfSummaryItemStandardCardSection];

    if (rfSummaryItemStandardCardSection)
    {
      v271 = [RFSummaryItemStandardCardSection alloc];
      rfSummaryItemStandardCardSection2 = [protobufCopy rfSummaryItemStandardCardSection];
      v273 = [(RFSummaryItemStandardCardSection *)v271 initWithProtobuf:rfSummaryItemStandardCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemStandardCardSection:v273];
    }

    rfFactItemShortNumberCardSection = [protobufCopy rfFactItemShortNumberCardSection];

    if (rfFactItemShortNumberCardSection)
    {
      v275 = [RFFactItemShortNumberCardSection alloc];
      rfFactItemShortNumberCardSection2 = [protobufCopy rfFactItemShortNumberCardSection];
      v277 = [(RFFactItemShortNumberCardSection *)v275 initWithProtobuf:rfFactItemShortNumberCardSection2];
      [(SFCardSectionValue *)v5 setRfFactItemShortNumberCardSection:v277];
    }

    rfFactItemStandardCardSection = [protobufCopy rfFactItemStandardCardSection];

    if (rfFactItemStandardCardSection)
    {
      v279 = [RFFactItemStandardCardSection alloc];
      rfFactItemStandardCardSection2 = [protobufCopy rfFactItemStandardCardSection];
      v281 = [(RFFactItemStandardCardSection *)v279 initWithProtobuf:rfFactItemStandardCardSection2];
      [(SFCardSectionValue *)v5 setRfFactItemStandardCardSection:v281];
    }

    rfLongItemStandardCardSection = [protobufCopy rfLongItemStandardCardSection];

    if (rfLongItemStandardCardSection)
    {
      v283 = [RFLongItemStandardCardSection alloc];
      rfLongItemStandardCardSection2 = [protobufCopy rfLongItemStandardCardSection];
      v285 = [(RFLongItemStandardCardSection *)v283 initWithProtobuf:rfLongItemStandardCardSection2];
      [(SFCardSectionValue *)v5 setRfLongItemStandardCardSection:v285];
    }

    rfPrimaryHeaderRichCardSection = [protobufCopy rfPrimaryHeaderRichCardSection];

    if (rfPrimaryHeaderRichCardSection)
    {
      v287 = [RFPrimaryHeaderRichCardSection alloc];
      rfPrimaryHeaderRichCardSection2 = [protobufCopy rfPrimaryHeaderRichCardSection];
      v289 = [(RFPrimaryHeaderRichCardSection *)v287 initWithProtobuf:rfPrimaryHeaderRichCardSection2];
      [(SFCardSectionValue *)v5 setRfPrimaryHeaderRichCardSection:v289];
    }

    rfPrimaryHeaderStandardCardSection = [protobufCopy rfPrimaryHeaderStandardCardSection];

    if (rfPrimaryHeaderStandardCardSection)
    {
      v291 = [RFPrimaryHeaderStandardCardSection alloc];
      rfPrimaryHeaderStandardCardSection2 = [protobufCopy rfPrimaryHeaderStandardCardSection];
      v293 = [(RFPrimaryHeaderStandardCardSection *)v291 initWithProtobuf:rfPrimaryHeaderStandardCardSection2];
      [(SFCardSectionValue *)v5 setRfPrimaryHeaderStandardCardSection:v293];
    }

    rfReferenceFootnoteCardSection = [protobufCopy rfReferenceFootnoteCardSection];

    if (rfReferenceFootnoteCardSection)
    {
      v295 = [RFReferenceFootnoteCardSection alloc];
      rfReferenceFootnoteCardSection2 = [protobufCopy rfReferenceFootnoteCardSection];
      v297 = [(RFReferenceFootnoteCardSection *)v295 initWithProtobuf:rfReferenceFootnoteCardSection2];
      [(SFCardSectionValue *)v5 setRfReferenceFootnoteCardSection:v297];
    }

    rfReferenceRichCardSection = [protobufCopy rfReferenceRichCardSection];

    if (rfReferenceRichCardSection)
    {
      v299 = [RFReferenceRichCardSection alloc];
      rfReferenceRichCardSection2 = [protobufCopy rfReferenceRichCardSection];
      v301 = [(RFReferenceRichCardSection *)v299 initWithProtobuf:rfReferenceRichCardSection2];
      [(SFCardSectionValue *)v5 setRfReferenceRichCardSection:v301];
    }

    rfSimpleItemRichCardSection = [protobufCopy rfSimpleItemRichCardSection];

    if (rfSimpleItemRichCardSection)
    {
      v303 = [RFSimpleItemRichCardSection alloc];
      rfSimpleItemRichCardSection2 = [protobufCopy rfSimpleItemRichCardSection];
      v305 = [(RFSimpleItemRichCardSection *)v303 initWithProtobuf:rfSimpleItemRichCardSection2];
      [(SFCardSectionValue *)v5 setRfSimpleItemRichCardSection:v305];
    }

    rfSimpleItemStandardCardSection = [protobufCopy rfSimpleItemStandardCardSection];

    if (rfSimpleItemStandardCardSection)
    {
      v307 = [RFSimpleItemStandardCardSection alloc];
      rfSimpleItemStandardCardSection2 = [protobufCopy rfSimpleItemStandardCardSection];
      v309 = [(RFSimpleItemStandardCardSection *)v307 initWithProtobuf:rfSimpleItemStandardCardSection2];
      [(SFCardSectionValue *)v5 setRfSimpleItemStandardCardSection:v309];
    }

    rfSummaryItemAlignedTextCardSection = [protobufCopy rfSummaryItemAlignedTextCardSection];

    if (rfSummaryItemAlignedTextCardSection)
    {
      v311 = [RFSummaryItemAlignedTextCardSection alloc];
      rfSummaryItemAlignedTextCardSection2 = [protobufCopy rfSummaryItemAlignedTextCardSection];
      v313 = [(RFSummaryItemAlignedTextCardSection *)v311 initWithProtobuf:rfSummaryItemAlignedTextCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemAlignedTextCardSection:v313];
    }

    rfExpandableStandardCardSection = [protobufCopy rfExpandableStandardCardSection];

    if (rfExpandableStandardCardSection)
    {
      v315 = [RFExpandableStandardCardSection alloc];
      rfExpandableStandardCardSection2 = [protobufCopy rfExpandableStandardCardSection];
      v317 = [(RFExpandableStandardCardSection *)v315 initWithProtobuf:rfExpandableStandardCardSection2];
      [(SFCardSectionValue *)v5 setRfExpandableStandardCardSection:v317];
    }

    rfFactItemButtonCardSection = [protobufCopy rfFactItemButtonCardSection];

    if (rfFactItemButtonCardSection)
    {
      v319 = [RFFactItemButtonCardSection alloc];
      rfFactItemButtonCardSection2 = [protobufCopy rfFactItemButtonCardSection];
      v321 = [(RFFactItemButtonCardSection *)v319 initWithProtobuf:rfFactItemButtonCardSection2];
      [(SFCardSectionValue *)v5 setRfFactItemButtonCardSection:v321];
    }

    rfFactItemHeroNumberCardSection = [protobufCopy rfFactItemHeroNumberCardSection];

    if (rfFactItemHeroNumberCardSection)
    {
      v323 = [RFFactItemHeroNumberCardSection alloc];
      rfFactItemHeroNumberCardSection2 = [protobufCopy rfFactItemHeroNumberCardSection];
      v325 = [(RFFactItemHeroNumberCardSection *)v323 initWithProtobuf:rfFactItemHeroNumberCardSection2];
      [(SFCardSectionValue *)v5 setRfFactItemHeroNumberCardSection:v325];
    }

    rfPrimaryHeaderMarqueeCardSection = [protobufCopy rfPrimaryHeaderMarqueeCardSection];

    if (rfPrimaryHeaderMarqueeCardSection)
    {
      v327 = [RFPrimaryHeaderMarqueeCardSection alloc];
      rfPrimaryHeaderMarqueeCardSection2 = [protobufCopy rfPrimaryHeaderMarqueeCardSection];
      v329 = [(RFPrimaryHeaderMarqueeCardSection *)v327 initWithProtobuf:rfPrimaryHeaderMarqueeCardSection2];
      [(SFCardSectionValue *)v5 setRfPrimaryHeaderMarqueeCardSection:v329];
    }

    rfSummaryItemDetailedTextCardSection = [protobufCopy rfSummaryItemDetailedTextCardSection];

    if (rfSummaryItemDetailedTextCardSection)
    {
      v331 = [RFSummaryItemDetailedTextCardSection alloc];
      rfSummaryItemDetailedTextCardSection2 = [protobufCopy rfSummaryItemDetailedTextCardSection];
      v333 = [(RFSummaryItemDetailedTextCardSection *)v331 initWithProtobuf:rfSummaryItemDetailedTextCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemDetailedTextCardSection:v333];
    }

    rfSimpleItemPlayerCardSection = [protobufCopy rfSimpleItemPlayerCardSection];

    if (rfSimpleItemPlayerCardSection)
    {
      v335 = [RFSimpleItemPlayerCardSection alloc];
      rfSimpleItemPlayerCardSection2 = [protobufCopy rfSimpleItemPlayerCardSection];
      v337 = [(RFSimpleItemPlayerCardSection *)v335 initWithProtobuf:rfSimpleItemPlayerCardSection2];
      [(SFCardSectionValue *)v5 setRfSimpleItemPlayerCardSection:v337];
    }

    rfSummaryItemPairCardSection = [protobufCopy rfSummaryItemPairCardSection];

    if (rfSummaryItemPairCardSection)
    {
      v339 = [RFSummaryItemPairCardSection alloc];
      rfSummaryItemPairCardSection2 = [protobufCopy rfSummaryItemPairCardSection];
      v341 = [(RFSummaryItemPairCardSection *)v339 initWithProtobuf:rfSummaryItemPairCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemPairCardSection:v341];
    }

    rfSummaryItemPairNumberCardSection = [protobufCopy rfSummaryItemPairNumberCardSection];

    if (rfSummaryItemPairNumberCardSection)
    {
      v343 = [RFSummaryItemPairNumberCardSection alloc];
      rfSummaryItemPairNumberCardSection2 = [protobufCopy rfSummaryItemPairNumberCardSection];
      v345 = [(RFSummaryItemPairNumberCardSection *)v343 initWithProtobuf:rfSummaryItemPairNumberCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemPairNumberCardSection:v345];
    }

    rfFactItemShortHeroNumberCardSection = [protobufCopy rfFactItemShortHeroNumberCardSection];

    if (rfFactItemShortHeroNumberCardSection)
    {
      v347 = [RFFactItemShortHeroNumberCardSection alloc];
      rfFactItemShortHeroNumberCardSection2 = [protobufCopy rfFactItemShortHeroNumberCardSection];
      v349 = [(RFFactItemShortHeroNumberCardSection *)v347 initWithProtobuf:rfFactItemShortHeroNumberCardSection2];
      [(SFCardSectionValue *)v5 setRfFactItemShortHeroNumberCardSection:v349];
    }

    rfFactItemDetailedNumberCardSection = [protobufCopy rfFactItemDetailedNumberCardSection];

    if (rfFactItemDetailedNumberCardSection)
    {
      v351 = [RFFactItemDetailedNumberCardSection alloc];
      rfFactItemDetailedNumberCardSection2 = [protobufCopy rfFactItemDetailedNumberCardSection];
      v353 = [(RFFactItemDetailedNumberCardSection *)v351 initWithProtobuf:rfFactItemDetailedNumberCardSection2];
      [(SFCardSectionValue *)v5 setRfFactItemDetailedNumberCardSection:v353];
    }

    rfFactItemHeroButtonCardSection = [protobufCopy rfFactItemHeroButtonCardSection];

    if (rfFactItemHeroButtonCardSection)
    {
      v355 = [RFFactItemHeroButtonCardSection alloc];
      rfFactItemHeroButtonCardSection2 = [protobufCopy rfFactItemHeroButtonCardSection];
      v357 = [(RFFactItemHeroButtonCardSection *)v355 initWithProtobuf:rfFactItemHeroButtonCardSection2];
      [(SFCardSectionValue *)v5 setRfFactItemHeroButtonCardSection:v357];
    }

    rfFactItemImageRightCardSection = [protobufCopy rfFactItemImageRightCardSection];

    if (rfFactItemImageRightCardSection)
    {
      v359 = [RFFactItemImageRightCardSection alloc];
      rfFactItemImageRightCardSection2 = [protobufCopy rfFactItemImageRightCardSection];
      v361 = [(RFFactItemImageRightCardSection *)v359 initWithProtobuf:rfFactItemImageRightCardSection2];
      [(SFCardSectionValue *)v5 setRfFactItemImageRightCardSection:v361];
    }

    rfSummaryItemSwitchV2CardSection = [protobufCopy rfSummaryItemSwitchV2CardSection];

    if (rfSummaryItemSwitchV2CardSection)
    {
      v363 = [RFSummaryItemSwitchV2CardSection alloc];
      rfSummaryItemSwitchV2CardSection2 = [protobufCopy rfSummaryItemSwitchV2CardSection];
      v365 = [(RFSummaryItemSwitchV2CardSection *)v363 initWithProtobuf:rfSummaryItemSwitchV2CardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemSwitchV2CardSection:v365];
    }

    rfTableHeaderCardSection = [protobufCopy rfTableHeaderCardSection];

    if (rfTableHeaderCardSection)
    {
      v367 = [RFTableHeaderCardSection alloc];
      rfTableHeaderCardSection2 = [protobufCopy rfTableHeaderCardSection];
      v369 = [(RFTableHeaderCardSection *)v367 initWithProtobuf:rfTableHeaderCardSection2];
      [(SFCardSectionValue *)v5 setRfTableHeaderCardSection:v369];
    }

    rfTableRowCardSection = [protobufCopy rfTableRowCardSection];

    if (rfTableRowCardSection)
    {
      v371 = [RFTableRowCardSection alloc];
      rfTableRowCardSection2 = [protobufCopy rfTableRowCardSection];
      v373 = [(RFTableRowCardSection *)v371 initWithProtobuf:rfTableRowCardSection2];
      [(SFCardSectionValue *)v5 setRfTableRowCardSection:v373];
    }

    rfSimpleItemVisualElementCardSection = [protobufCopy rfSimpleItemVisualElementCardSection];

    if (rfSimpleItemVisualElementCardSection)
    {
      v375 = [RFSimpleItemVisualElementCardSection alloc];
      rfSimpleItemVisualElementCardSection2 = [protobufCopy rfSimpleItemVisualElementCardSection];
      v377 = [(RFSimpleItemVisualElementCardSection *)v375 initWithProtobuf:rfSimpleItemVisualElementCardSection2];
      [(SFCardSectionValue *)v5 setRfSimpleItemVisualElementCardSection:v377];
    }

    rfSummaryItemPlayerCardSection = [protobufCopy rfSummaryItemPlayerCardSection];

    if (rfSummaryItemPlayerCardSection)
    {
      v379 = [RFSummaryItemPlayerCardSection alloc];
      rfSummaryItemPlayerCardSection2 = [protobufCopy rfSummaryItemPlayerCardSection];
      v381 = [(RFSummaryItemPlayerCardSection *)v379 initWithProtobuf:rfSummaryItemPlayerCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemPlayerCardSection:v381];
    }

    rfSummaryItemImageRightCardSection = [protobufCopy rfSummaryItemImageRightCardSection];

    if (rfSummaryItemImageRightCardSection)
    {
      v383 = [RFSummaryItemImageRightCardSection alloc];
      rfSummaryItemImageRightCardSection2 = [protobufCopy rfSummaryItemImageRightCardSection];
      v385 = [(RFSummaryItemImageRightCardSection *)v383 initWithProtobuf:rfSummaryItemImageRightCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemImageRightCardSection:v385];
    }

    rfSummaryItemButtonCardSection = [protobufCopy rfSummaryItemButtonCardSection];

    if (rfSummaryItemButtonCardSection)
    {
      v387 = [RFSummaryItemButtonCardSection alloc];
      rfSummaryItemButtonCardSection2 = [protobufCopy rfSummaryItemButtonCardSection];
      v389 = [(RFSummaryItemButtonCardSection *)v387 initWithProtobuf:rfSummaryItemButtonCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemButtonCardSection:v389];
    }

    rfSimpleItemReverseRichCardSection = [protobufCopy rfSimpleItemReverseRichCardSection];

    if (rfSimpleItemReverseRichCardSection)
    {
      v391 = [RFSimpleItemReverseRichCardSection alloc];
      rfSimpleItemReverseRichCardSection2 = [protobufCopy rfSimpleItemReverseRichCardSection];
      v393 = [(RFSimpleItemReverseRichCardSection *)v391 initWithProtobuf:rfSimpleItemReverseRichCardSection2];
      [(SFCardSectionValue *)v5 setRfSimpleItemReverseRichCardSection:v393];
    }

    rfSimpleItemRichSearchResultCardSection = [protobufCopy rfSimpleItemRichSearchResultCardSection];

    if (rfSimpleItemRichSearchResultCardSection)
    {
      v395 = [RFSimpleItemRichSearchResultCardSection alloc];
      rfSimpleItemRichSearchResultCardSection2 = [protobufCopy rfSimpleItemRichSearchResultCardSection];
      v397 = [(RFSimpleItemRichSearchResultCardSection *)v395 initWithProtobuf:rfSimpleItemRichSearchResultCardSection2];
      [(SFCardSectionValue *)v5 setRfSimpleItemRichSearchResultCardSection:v397];
    }

    rfPrimaryHeaderStackedImageCardSection = [protobufCopy rfPrimaryHeaderStackedImageCardSection];

    if (rfPrimaryHeaderStackedImageCardSection)
    {
      v399 = [RFPrimaryHeaderStackedImageCardSection alloc];
      rfPrimaryHeaderStackedImageCardSection2 = [protobufCopy rfPrimaryHeaderStackedImageCardSection];
      v401 = [(RFPrimaryHeaderStackedImageCardSection *)v399 initWithProtobuf:rfPrimaryHeaderStackedImageCardSection2];
      [(SFCardSectionValue *)v5 setRfPrimaryHeaderStackedImageCardSection:v401];
    }

    rfReferenceItemLogoCardSection = [protobufCopy rfReferenceItemLogoCardSection];

    if (rfReferenceItemLogoCardSection)
    {
      v403 = [RFReferenceItemLogoCardSection alloc];
      rfReferenceItemLogoCardSection2 = [protobufCopy rfReferenceItemLogoCardSection];
      v405 = [(RFReferenceItemLogoCardSection *)v403 initWithProtobuf:rfReferenceItemLogoCardSection2];
      [(SFCardSectionValue *)v5 setRfReferenceItemLogoCardSection:v405];
    }

    rfReferenceItemButtonCardSection = [protobufCopy rfReferenceItemButtonCardSection];

    if (rfReferenceItemButtonCardSection)
    {
      v407 = [RFReferenceItemButtonCardSection alloc];
      rfReferenceItemButtonCardSection2 = [protobufCopy rfReferenceItemButtonCardSection];
      v409 = [(RFReferenceItemButtonCardSection *)v407 initWithProtobuf:rfReferenceItemButtonCardSection2];
      [(SFCardSectionValue *)v5 setRfReferenceItemButtonCardSection:v409];
    }

    rfButtonCardSection = [protobufCopy rfButtonCardSection];

    if (rfButtonCardSection)
    {
      v411 = [RFButtonCardSection alloc];
      rfButtonCardSection2 = [protobufCopy rfButtonCardSection];
      v413 = [(RFButtonCardSection *)v411 initWithProtobuf:rfButtonCardSection2];
      [(SFCardSectionValue *)v5 setRfButtonCardSection:v413];
    }

    rfBinaryButtonCardSection = [protobufCopy rfBinaryButtonCardSection];

    if (rfBinaryButtonCardSection)
    {
      v415 = [RFBinaryButtonCardSection alloc];
      rfBinaryButtonCardSection2 = [protobufCopy rfBinaryButtonCardSection];
      v417 = [(RFBinaryButtonCardSection *)v415 initWithProtobuf:rfBinaryButtonCardSection2];
      [(SFCardSectionValue *)v5 setRfBinaryButtonCardSection:v417];
    }

    rfReferenceCenteredCardSection = [protobufCopy rfReferenceCenteredCardSection];

    if (rfReferenceCenteredCardSection)
    {
      v419 = [RFReferenceCenteredCardSection alloc];
      rfReferenceCenteredCardSection2 = [protobufCopy rfReferenceCenteredCardSection];
      v421 = [(RFReferenceCenteredCardSection *)v419 initWithProtobuf:rfReferenceCenteredCardSection2];
      [(SFCardSectionValue *)v5 setRfReferenceCenteredCardSection:v421];
    }

    rfSecondaryHeaderStandardCardSection = [protobufCopy rfSecondaryHeaderStandardCardSection];

    if (rfSecondaryHeaderStandardCardSection)
    {
      v423 = [RFSecondaryHeaderStandardCardSection alloc];
      rfSecondaryHeaderStandardCardSection2 = [protobufCopy rfSecondaryHeaderStandardCardSection];
      v425 = [(RFSecondaryHeaderStandardCardSection *)v423 initWithProtobuf:rfSecondaryHeaderStandardCardSection2];
      [(SFCardSectionValue *)v5 setRfSecondaryHeaderStandardCardSection:v425];
    }

    rfSecondaryHeaderEmphasizedCardSection = [protobufCopy rfSecondaryHeaderEmphasizedCardSection];

    if (rfSecondaryHeaderEmphasizedCardSection)
    {
      v427 = [RFSecondaryHeaderEmphasizedCardSection alloc];
      rfSecondaryHeaderEmphasizedCardSection2 = [protobufCopy rfSecondaryHeaderEmphasizedCardSection];
      v429 = [(RFSecondaryHeaderEmphasizedCardSection *)v427 initWithProtobuf:rfSecondaryHeaderEmphasizedCardSection2];
      [(SFCardSectionValue *)v5 setRfSecondaryHeaderEmphasizedCardSection:v429];
    }

    rfMapCardSection = [protobufCopy rfMapCardSection];

    if (rfMapCardSection)
    {
      v431 = [RFMapCardSection alloc];
      rfMapCardSection2 = [protobufCopy rfMapCardSection];
      v433 = [(RFMapCardSection *)v431 initWithProtobuf:rfMapCardSection2];
      [(SFCardSectionValue *)v5 setRfMapCardSection:v433];
    }

    rfReferenceStandardCardSection = [protobufCopy rfReferenceStandardCardSection];

    if (rfReferenceStandardCardSection)
    {
      v435 = [RFReferenceStandardCardSection alloc];
      rfReferenceStandardCardSection2 = [protobufCopy rfReferenceStandardCardSection];
      v437 = [(RFReferenceStandardCardSection *)v435 initWithProtobuf:rfReferenceStandardCardSection2];
      [(SFCardSectionValue *)v5 setRfReferenceStandardCardSection:v437];
    }

    rfMultiButtonCardSection = [protobufCopy rfMultiButtonCardSection];

    if (rfMultiButtonCardSection)
    {
      v439 = [RFMultiButtonCardSection alloc];
      rfMultiButtonCardSection2 = [protobufCopy rfMultiButtonCardSection];
      v441 = [(RFMultiButtonCardSection *)v439 initWithProtobuf:rfMultiButtonCardSection2];
      [(SFCardSectionValue *)v5 setRfMultiButtonCardSection:v441];
    }

    rfDisambiguationTitleCardSection = [protobufCopy rfDisambiguationTitleCardSection];

    if (rfDisambiguationTitleCardSection)
    {
      v443 = [RFDisambiguationTitleCardSection alloc];
      rfDisambiguationTitleCardSection2 = [protobufCopy rfDisambiguationTitleCardSection];
      v445 = [(RFDisambiguationTitleCardSection *)v443 initWithProtobuf:rfDisambiguationTitleCardSection2];
      [(SFCardSectionValue *)v5 setRfDisambiguationTitleCardSection:v445];
    }

    rfSummaryItemExpandableCardSection = [protobufCopy rfSummaryItemExpandableCardSection];

    if (rfSummaryItemExpandableCardSection)
    {
      v447 = [RFSummaryItemExpandableCardSection alloc];
      rfSummaryItemExpandableCardSection2 = [protobufCopy rfSummaryItemExpandableCardSection];
      v449 = [(RFSummaryItemExpandableCardSection *)v447 initWithProtobuf:rfSummaryItemExpandableCardSection2];
      [(SFCardSectionValue *)v5 setRfSummaryItemExpandableCardSection:v449];
    }

    v450 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  appLinkCardSection = [(SFCardSectionValue *)self appLinkCardSection];
  v3 = [appLinkCardSection hash];
  descriptionCardSection = [(SFCardSectionValue *)self descriptionCardSection];
  v4 = [descriptionCardSection hash] ^ v3;
  keyValueDataCardSection = [(SFCardSectionValue *)self keyValueDataCardSection];
  v5 = [keyValueDataCardSection hash];
  mapCardSection = [(SFCardSectionValue *)self mapCardSection];
  v6 = v4 ^ v5 ^ [mapCardSection hash];
  mediaInfoCardSection = [(SFCardSectionValue *)self mediaInfoCardSection];
  v7 = [mediaInfoCardSection hash];
  mediaPlayerCardSection = [(SFCardSectionValue *)self mediaPlayerCardSection];
  v8 = v7 ^ [mediaPlayerCardSection hash];
  nowPlayingCardSection = [(SFCardSectionValue *)self nowPlayingCardSection];
  v9 = v6 ^ v8 ^ [nowPlayingCardSection hash];
  richTitleCardSection = [(SFCardSectionValue *)self richTitleCardSection];
  v10 = [richTitleCardSection hash];
  rowCardSection = [(SFCardSectionValue *)self rowCardSection];
  v11 = v10 ^ [rowCardSection hash];
  scoreboardCardSection = [(SFCardSectionValue *)self scoreboardCardSection];
  v12 = v11 ^ [scoreboardCardSection hash];
  socialMediaPostCardSection = [(SFCardSectionValue *)self socialMediaPostCardSection];
  v13 = v9 ^ v12 ^ [socialMediaPostCardSection hash];
  stockChartCardSection = [(SFCardSectionValue *)self stockChartCardSection];
  v14 = [stockChartCardSection hash];
  tableHeaderRowCardSection = [(SFCardSectionValue *)self tableHeaderRowCardSection];
  v15 = v14 ^ [tableHeaderRowCardSection hash];
  tableRowCardSection = [(SFCardSectionValue *)self tableRowCardSection];
  v16 = v15 ^ [tableRowCardSection hash];
  textColumnsCardSection = [(SFCardSectionValue *)self textColumnsCardSection];
  v17 = v16 ^ [textColumnsCardSection hash];
  titleCardSection = [(SFCardSectionValue *)self titleCardSection];
  v18 = v13 ^ v17 ^ [titleCardSection hash];
  trackListCardSection = [(SFCardSectionValue *)self trackListCardSection];
  v19 = [trackListCardSection hash];
  audioPlaybackCardSection = [(SFCardSectionValue *)self audioPlaybackCardSection];
  v20 = v19 ^ [audioPlaybackCardSection hash];
  flightCardSection = [(SFCardSectionValue *)self flightCardSection];
  v21 = v20 ^ [flightCardSection hash];
  activityIndicatorCardSection = [(SFCardSectionValue *)self activityIndicatorCardSection];
  v22 = v21 ^ [activityIndicatorCardSection hash];
  webCardSection = [(SFCardSectionValue *)self webCardSection];
  v23 = v22 ^ [webCardSection hash];
  messageCardSection = [(SFCardSectionValue *)self messageCardSection];
  v24 = v18 ^ v23 ^ [messageCardSection hash];
  detailedRowCardSection = [(SFCardSectionValue *)self detailedRowCardSection];
  v25 = [detailedRowCardSection hash];
  imagesCardSection = [(SFCardSectionValue *)self imagesCardSection];
  v26 = v25 ^ [imagesCardSection hash];
  suggestionCardSection = [(SFCardSectionValue *)self suggestionCardSection];
  v27 = v26 ^ [suggestionCardSection hash];
  selectableGridCardSection = [(SFCardSectionValue *)self selectableGridCardSection];
  v28 = v27 ^ [selectableGridCardSection hash];
  sectionHeaderCardSection = [(SFCardSectionValue *)self sectionHeaderCardSection];
  v29 = v28 ^ [sectionHeaderCardSection hash];
  metaInfoCardSection = [(SFCardSectionValue *)self metaInfoCardSection];
  v30 = v29 ^ [metaInfoCardSection hash];
  watchListCardSection = [(SFCardSectionValue *)self watchListCardSection];
  v31 = v24 ^ v30 ^ [watchListCardSection hash];
  mapsDetailedRowCardSection = [(SFCardSectionValue *)self mapsDetailedRowCardSection];
  v32 = [mapsDetailedRowCardSection hash];
  buttonCardSection = [(SFCardSectionValue *)self buttonCardSection];
  v33 = v32 ^ [buttonCardSection hash];
  horizontalButtonCardSection = [(SFCardSectionValue *)self horizontalButtonCardSection];
  v34 = v33 ^ [horizontalButtonCardSection hash];
  verticalLayoutCardSection = [(SFCardSectionValue *)self verticalLayoutCardSection];
  v35 = v34 ^ [verticalLayoutCardSection hash];
  productCardSection = [(SFCardSectionValue *)self productCardSection];
  v36 = v35 ^ [productCardSection hash];
  horizontalScrollCardSection = [(SFCardSectionValue *)self horizontalScrollCardSection];
  v37 = v36 ^ [horizontalScrollCardSection hash];
  mediaRemoteControlCardSection = [(SFCardSectionValue *)self mediaRemoteControlCardSection];
  v38 = v37 ^ [mediaRemoteControlCardSection hash];
  mapPlaceCardSection = [(SFCardSectionValue *)self mapPlaceCardSection];
  v39 = v31 ^ v38 ^ [mapPlaceCardSection hash];
  compactRowCardSection = [(SFCardSectionValue *)self compactRowCardSection];
  v40 = [compactRowCardSection hash];
  worldMapCardSection = [(SFCardSectionValue *)self worldMapCardSection];
  v41 = v40 ^ [worldMapCardSection hash];
  attributionFooterCardSection = [(SFCardSectionValue *)self attributionFooterCardSection];
  v42 = v41 ^ [attributionFooterCardSection hash];
  gridCardSection = [(SFCardSectionValue *)self gridCardSection];
  v43 = v42 ^ [gridCardSection hash];
  personHeaderCardSection = [(SFCardSectionValue *)self personHeaderCardSection];
  v44 = v43 ^ [personHeaderCardSection hash];
  colorBarCardSection = [(SFCardSectionValue *)self colorBarCardSection];
  v45 = v44 ^ [colorBarCardSection hash];
  splitCardSection = [(SFCardSectionValue *)self splitCardSection];
  v46 = v45 ^ [splitCardSection hash];
  linkPresentationCardSection = [(SFCardSectionValue *)self linkPresentationCardSection];
  v47 = v46 ^ [linkPresentationCardSection hash];
  findMyCardSection = [(SFCardSectionValue *)self findMyCardSection];
  v48 = v39 ^ v47 ^ [findMyCardSection hash];
  heroCardSection = [(SFCardSectionValue *)self heroCardSection];
  v49 = [heroCardSection hash];
  newsCardSection = [(SFCardSectionValue *)self newsCardSection];
  v50 = v49 ^ [newsCardSection hash];
  miniCardSection = [(SFCardSectionValue *)self miniCardSection];
  v51 = v50 ^ [miniCardSection hash];
  infoCardSection = [(SFCardSectionValue *)self infoCardSection];
  v52 = v51 ^ [infoCardSection hash];
  collectionCardSection = [(SFCardSectionValue *)self collectionCardSection];
  v53 = v52 ^ [collectionCardSection hash];
  combinedCardSection = [(SFCardSectionValue *)self combinedCardSection];
  v54 = v53 ^ [combinedCardSection hash];
  responseWrapperCardSection = [(SFCardSectionValue *)self responseWrapperCardSection];
  v55 = v54 ^ [responseWrapperCardSection hash];
  listenToCardSection = [(SFCardSectionValue *)self listenToCardSection];
  v56 = v55 ^ [listenToCardSection hash];
  watchNowCardSection = [(SFCardSectionValue *)self watchNowCardSection];
  v57 = v56 ^ [watchNowCardSection hash];
  strokeAnimationCardSection = [(SFCardSectionValue *)self strokeAnimationCardSection];
  v58 = v48 ^ v57 ^ [strokeAnimationCardSection hash];
  buttonListCardSection = [(SFCardSectionValue *)self buttonListCardSection];
  v59 = [buttonListCardSection hash];
  commandRowCardSection = [(SFCardSectionValue *)self commandRowCardSection];
  v60 = v59 ^ [commandRowCardSection hash];
  leadingTrailingCardSection = [(SFCardSectionValue *)self leadingTrailingCardSection];
  v61 = v60 ^ [leadingTrailingCardSection hash];
  heroTitleCardSection = [(SFCardSectionValue *)self heroTitleCardSection];
  v62 = v61 ^ [heroTitleCardSection hash];
  archiveViewCardSection = [(SFCardSectionValue *)self archiveViewCardSection];
  v63 = v62 ^ [archiveViewCardSection hash];
  appIconCardSection = [(SFCardSectionValue *)self appIconCardSection];
  v64 = v63 ^ [appIconCardSection hash];
  largeTitleDetailedRowCardSection = [(SFCardSectionValue *)self largeTitleDetailedRowCardSection];
  v65 = v64 ^ [largeTitleDetailedRowCardSection hash];
  safariTableOfContentsCardSection = [(SFCardSectionValue *)self safariTableOfContentsCardSection];
  v66 = v65 ^ [safariTableOfContentsCardSection hash];
  rfSummaryItemShortNumberCardSection = [(SFCardSectionValue *)self rfSummaryItemShortNumberCardSection];
  v67 = v66 ^ [rfSummaryItemShortNumberCardSection hash];
  rfSummaryItemTextCardSection = [(SFCardSectionValue *)self rfSummaryItemTextCardSection];
  v68 = v67 ^ [rfSummaryItemTextCardSection hash];
  rfSummaryItemStandardCardSection = [(SFCardSectionValue *)self rfSummaryItemStandardCardSection];
  v69 = v58 ^ v68 ^ [rfSummaryItemStandardCardSection hash];
  rfFactItemShortNumberCardSection = [(SFCardSectionValue *)self rfFactItemShortNumberCardSection];
  v70 = [rfFactItemShortNumberCardSection hash];
  rfFactItemStandardCardSection = [(SFCardSectionValue *)self rfFactItemStandardCardSection];
  v71 = v70 ^ [rfFactItemStandardCardSection hash];
  rfLongItemStandardCardSection = [(SFCardSectionValue *)self rfLongItemStandardCardSection];
  v72 = v71 ^ [rfLongItemStandardCardSection hash];
  rfPrimaryHeaderRichCardSection = [(SFCardSectionValue *)self rfPrimaryHeaderRichCardSection];
  v73 = v72 ^ [rfPrimaryHeaderRichCardSection hash];
  rfPrimaryHeaderStandardCardSection = [(SFCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
  v74 = v73 ^ [rfPrimaryHeaderStandardCardSection hash];
  rfReferenceFootnoteCardSection = [(SFCardSectionValue *)self rfReferenceFootnoteCardSection];
  v75 = v74 ^ [rfReferenceFootnoteCardSection hash];
  rfReferenceRichCardSection = [(SFCardSectionValue *)self rfReferenceRichCardSection];
  v76 = v75 ^ [rfReferenceRichCardSection hash];
  rfSimpleItemRichCardSection = [(SFCardSectionValue *)self rfSimpleItemRichCardSection];
  v77 = v76 ^ [rfSimpleItemRichCardSection hash];
  rfSimpleItemStandardCardSection = [(SFCardSectionValue *)self rfSimpleItemStandardCardSection];
  v78 = v77 ^ [rfSimpleItemStandardCardSection hash];
  rfSummaryItemAlignedTextCardSection = [(SFCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
  v79 = v78 ^ [rfSummaryItemAlignedTextCardSection hash];
  rfExpandableStandardCardSection = [(SFCardSectionValue *)self rfExpandableStandardCardSection];
  v80 = v79 ^ [rfExpandableStandardCardSection hash];
  rfFactItemButtonCardSection = [(SFCardSectionValue *)self rfFactItemButtonCardSection];
  v81 = v69 ^ v80 ^ [rfFactItemButtonCardSection hash];
  rfFactItemHeroNumberCardSection = [(SFCardSectionValue *)self rfFactItemHeroNumberCardSection];
  v82 = [rfFactItemHeroNumberCardSection hash];
  rfPrimaryHeaderMarqueeCardSection = [(SFCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
  v83 = v82 ^ [rfPrimaryHeaderMarqueeCardSection hash];
  rfSummaryItemDetailedTextCardSection = [(SFCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
  v84 = v83 ^ [rfSummaryItemDetailedTextCardSection hash];
  rfSimpleItemPlayerCardSection = [(SFCardSectionValue *)self rfSimpleItemPlayerCardSection];
  v85 = v84 ^ [rfSimpleItemPlayerCardSection hash];
  rfSummaryItemPairCardSection = [(SFCardSectionValue *)self rfSummaryItemPairCardSection];
  v86 = v85 ^ [rfSummaryItemPairCardSection hash];
  rfSummaryItemPairNumberCardSection = [(SFCardSectionValue *)self rfSummaryItemPairNumberCardSection];
  v87 = v86 ^ [rfSummaryItemPairNumberCardSection hash];
  rfFactItemShortHeroNumberCardSection = [(SFCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
  v88 = v87 ^ [rfFactItemShortHeroNumberCardSection hash];
  rfFactItemDetailedNumberCardSection = [(SFCardSectionValue *)self rfFactItemDetailedNumberCardSection];
  v89 = v88 ^ [rfFactItemDetailedNumberCardSection hash];
  rfFactItemHeroButtonCardSection = [(SFCardSectionValue *)self rfFactItemHeroButtonCardSection];
  v90 = v89 ^ [rfFactItemHeroButtonCardSection hash];
  rfFactItemImageRightCardSection = [(SFCardSectionValue *)self rfFactItemImageRightCardSection];
  v91 = v90 ^ [rfFactItemImageRightCardSection hash];
  rfSummaryItemSwitchV2CardSection = [(SFCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
  v92 = v91 ^ [rfSummaryItemSwitchV2CardSection hash];
  rfTableHeaderCardSection = [(SFCardSectionValue *)self rfTableHeaderCardSection];
  v93 = v92 ^ [rfTableHeaderCardSection hash];
  rfTableRowCardSection = [(SFCardSectionValue *)self rfTableRowCardSection];
  v94 = v81 ^ v93 ^ [rfTableRowCardSection hash];
  rfSimpleItemVisualElementCardSection = [(SFCardSectionValue *)self rfSimpleItemVisualElementCardSection];
  v95 = [rfSimpleItemVisualElementCardSection hash];
  rfSummaryItemPlayerCardSection = [(SFCardSectionValue *)self rfSummaryItemPlayerCardSection];
  v96 = v95 ^ [rfSummaryItemPlayerCardSection hash];
  rfSummaryItemImageRightCardSection = [(SFCardSectionValue *)self rfSummaryItemImageRightCardSection];
  v97 = v96 ^ [rfSummaryItemImageRightCardSection hash];
  rfSummaryItemButtonCardSection = [(SFCardSectionValue *)self rfSummaryItemButtonCardSection];
  v98 = v97 ^ [rfSummaryItemButtonCardSection hash];
  rfSimpleItemReverseRichCardSection = [(SFCardSectionValue *)self rfSimpleItemReverseRichCardSection];
  v99 = v98 ^ [rfSimpleItemReverseRichCardSection hash];
  rfSimpleItemRichSearchResultCardSection = [(SFCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
  v100 = v99 ^ [rfSimpleItemRichSearchResultCardSection hash];
  rfPrimaryHeaderStackedImageCardSection = [(SFCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
  v101 = v100 ^ [rfPrimaryHeaderStackedImageCardSection hash];
  rfReferenceItemLogoCardSection = [(SFCardSectionValue *)self rfReferenceItemLogoCardSection];
  v102 = v101 ^ [rfReferenceItemLogoCardSection hash];
  rfReferenceItemButtonCardSection = [(SFCardSectionValue *)self rfReferenceItemButtonCardSection];
  v103 = v102 ^ [rfReferenceItemButtonCardSection hash];
  rfButtonCardSection = [(SFCardSectionValue *)self rfButtonCardSection];
  v104 = v103 ^ [rfButtonCardSection hash];
  rfBinaryButtonCardSection = [(SFCardSectionValue *)self rfBinaryButtonCardSection];
  v106 = v104 ^ [rfBinaryButtonCardSection hash];
  rfReferenceCenteredCardSection = [(SFCardSectionValue *)self rfReferenceCenteredCardSection];
  v108 = v106 ^ [rfReferenceCenteredCardSection hash];
  rfSecondaryHeaderStandardCardSection = [(SFCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
  v110 = v108 ^ [rfSecondaryHeaderStandardCardSection hash];
  rfSecondaryHeaderEmphasizedCardSection = [(SFCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
  v147 = v94 ^ v110 ^ [rfSecondaryHeaderEmphasizedCardSection hash];
  rfMapCardSection = [(SFCardSectionValue *)self rfMapCardSection];
  v113 = [rfMapCardSection hash];
  rfReferenceStandardCardSection = [(SFCardSectionValue *)self rfReferenceStandardCardSection];
  v115 = v113 ^ [rfReferenceStandardCardSection hash];
  rfMultiButtonCardSection = [(SFCardSectionValue *)self rfMultiButtonCardSection];
  v117 = v115 ^ [rfMultiButtonCardSection hash];
  rfDisambiguationTitleCardSection = [(SFCardSectionValue *)self rfDisambiguationTitleCardSection];
  v119 = v117 ^ [rfDisambiguationTitleCardSection hash];
  rfSummaryItemExpandableCardSection = [(SFCardSectionValue *)self rfSummaryItemExpandableCardSection];
  v121 = v119 ^ [rfSummaryItemExpandableCardSection hash];

  return v147 ^ v121;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  appLinkCardSection = [(SFCardSectionValue *)self appLinkCardSection];
  v6 = [appLinkCardSection copy];
  [v4 setAppLinkCardSection:v6];

  descriptionCardSection = [(SFCardSectionValue *)self descriptionCardSection];
  v8 = [descriptionCardSection copy];
  [v4 setDescriptionCardSection:v8];

  keyValueDataCardSection = [(SFCardSectionValue *)self keyValueDataCardSection];
  v10 = [keyValueDataCardSection copy];
  [v4 setKeyValueDataCardSection:v10];

  mapCardSection = [(SFCardSectionValue *)self mapCardSection];
  v12 = [mapCardSection copy];
  [v4 setMapCardSection:v12];

  mediaInfoCardSection = [(SFCardSectionValue *)self mediaInfoCardSection];
  v14 = [mediaInfoCardSection copy];
  [v4 setMediaInfoCardSection:v14];

  mediaPlayerCardSection = [(SFCardSectionValue *)self mediaPlayerCardSection];
  v16 = [mediaPlayerCardSection copy];
  [v4 setMediaPlayerCardSection:v16];

  nowPlayingCardSection = [(SFCardSectionValue *)self nowPlayingCardSection];
  v18 = [nowPlayingCardSection copy];
  [v4 setNowPlayingCardSection:v18];

  richTitleCardSection = [(SFCardSectionValue *)self richTitleCardSection];
  v20 = [richTitleCardSection copy];
  [v4 setRichTitleCardSection:v20];

  rowCardSection = [(SFCardSectionValue *)self rowCardSection];
  v22 = [rowCardSection copy];
  [v4 setRowCardSection:v22];

  scoreboardCardSection = [(SFCardSectionValue *)self scoreboardCardSection];
  v24 = [scoreboardCardSection copy];
  [v4 setScoreboardCardSection:v24];

  socialMediaPostCardSection = [(SFCardSectionValue *)self socialMediaPostCardSection];
  v26 = [socialMediaPostCardSection copy];
  [v4 setSocialMediaPostCardSection:v26];

  stockChartCardSection = [(SFCardSectionValue *)self stockChartCardSection];
  v28 = [stockChartCardSection copy];
  [v4 setStockChartCardSection:v28];

  tableHeaderRowCardSection = [(SFCardSectionValue *)self tableHeaderRowCardSection];
  v30 = [tableHeaderRowCardSection copy];
  [v4 setTableHeaderRowCardSection:v30];

  tableRowCardSection = [(SFCardSectionValue *)self tableRowCardSection];
  v32 = [tableRowCardSection copy];
  [v4 setTableRowCardSection:v32];

  textColumnsCardSection = [(SFCardSectionValue *)self textColumnsCardSection];
  v34 = [textColumnsCardSection copy];
  [v4 setTextColumnsCardSection:v34];

  titleCardSection = [(SFCardSectionValue *)self titleCardSection];
  v36 = [titleCardSection copy];
  [v4 setTitleCardSection:v36];

  trackListCardSection = [(SFCardSectionValue *)self trackListCardSection];
  v38 = [trackListCardSection copy];
  [v4 setTrackListCardSection:v38];

  audioPlaybackCardSection = [(SFCardSectionValue *)self audioPlaybackCardSection];
  v40 = [audioPlaybackCardSection copy];
  [v4 setAudioPlaybackCardSection:v40];

  flightCardSection = [(SFCardSectionValue *)self flightCardSection];
  v42 = [flightCardSection copy];
  [v4 setFlightCardSection:v42];

  activityIndicatorCardSection = [(SFCardSectionValue *)self activityIndicatorCardSection];
  v44 = [activityIndicatorCardSection copy];
  [v4 setActivityIndicatorCardSection:v44];

  webCardSection = [(SFCardSectionValue *)self webCardSection];
  v46 = [webCardSection copy];
  [v4 setWebCardSection:v46];

  messageCardSection = [(SFCardSectionValue *)self messageCardSection];
  v48 = [messageCardSection copy];
  [v4 setMessageCardSection:v48];

  detailedRowCardSection = [(SFCardSectionValue *)self detailedRowCardSection];
  v50 = [detailedRowCardSection copy];
  [v4 setDetailedRowCardSection:v50];

  imagesCardSection = [(SFCardSectionValue *)self imagesCardSection];
  v52 = [imagesCardSection copy];
  [v4 setImagesCardSection:v52];

  suggestionCardSection = [(SFCardSectionValue *)self suggestionCardSection];
  v54 = [suggestionCardSection copy];
  [v4 setSuggestionCardSection:v54];

  selectableGridCardSection = [(SFCardSectionValue *)self selectableGridCardSection];
  v56 = [selectableGridCardSection copy];
  [v4 setSelectableGridCardSection:v56];

  sectionHeaderCardSection = [(SFCardSectionValue *)self sectionHeaderCardSection];
  v58 = [sectionHeaderCardSection copy];
  [v4 setSectionHeaderCardSection:v58];

  metaInfoCardSection = [(SFCardSectionValue *)self metaInfoCardSection];
  v60 = [metaInfoCardSection copy];
  [v4 setMetaInfoCardSection:v60];

  watchListCardSection = [(SFCardSectionValue *)self watchListCardSection];
  v62 = [watchListCardSection copy];
  [v4 setWatchListCardSection:v62];

  mapsDetailedRowCardSection = [(SFCardSectionValue *)self mapsDetailedRowCardSection];
  v64 = [mapsDetailedRowCardSection copy];
  [v4 setMapsDetailedRowCardSection:v64];

  buttonCardSection = [(SFCardSectionValue *)self buttonCardSection];
  v66 = [buttonCardSection copy];
  [v4 setButtonCardSection:v66];

  horizontalButtonCardSection = [(SFCardSectionValue *)self horizontalButtonCardSection];
  v68 = [horizontalButtonCardSection copy];
  [v4 setHorizontalButtonCardSection:v68];

  verticalLayoutCardSection = [(SFCardSectionValue *)self verticalLayoutCardSection];
  v70 = [verticalLayoutCardSection copy];
  [v4 setVerticalLayoutCardSection:v70];

  productCardSection = [(SFCardSectionValue *)self productCardSection];
  v72 = [productCardSection copy];
  [v4 setProductCardSection:v72];

  horizontalScrollCardSection = [(SFCardSectionValue *)self horizontalScrollCardSection];
  v74 = [horizontalScrollCardSection copy];
  [v4 setHorizontalScrollCardSection:v74];

  mediaRemoteControlCardSection = [(SFCardSectionValue *)self mediaRemoteControlCardSection];
  v76 = [mediaRemoteControlCardSection copy];
  [v4 setMediaRemoteControlCardSection:v76];

  mapPlaceCardSection = [(SFCardSectionValue *)self mapPlaceCardSection];
  v78 = [mapPlaceCardSection copy];
  [v4 setMapPlaceCardSection:v78];

  compactRowCardSection = [(SFCardSectionValue *)self compactRowCardSection];
  v80 = [compactRowCardSection copy];
  [v4 setCompactRowCardSection:v80];

  worldMapCardSection = [(SFCardSectionValue *)self worldMapCardSection];
  v82 = [worldMapCardSection copy];
  [v4 setWorldMapCardSection:v82];

  attributionFooterCardSection = [(SFCardSectionValue *)self attributionFooterCardSection];
  v84 = [attributionFooterCardSection copy];
  [v4 setAttributionFooterCardSection:v84];

  gridCardSection = [(SFCardSectionValue *)self gridCardSection];
  v86 = [gridCardSection copy];
  [v4 setGridCardSection:v86];

  personHeaderCardSection = [(SFCardSectionValue *)self personHeaderCardSection];
  v88 = [personHeaderCardSection copy];
  [v4 setPersonHeaderCardSection:v88];

  colorBarCardSection = [(SFCardSectionValue *)self colorBarCardSection];
  v90 = [colorBarCardSection copy];
  [v4 setColorBarCardSection:v90];

  splitCardSection = [(SFCardSectionValue *)self splitCardSection];
  v92 = [splitCardSection copy];
  [v4 setSplitCardSection:v92];

  linkPresentationCardSection = [(SFCardSectionValue *)self linkPresentationCardSection];
  v94 = [linkPresentationCardSection copy];
  [v4 setLinkPresentationCardSection:v94];

  findMyCardSection = [(SFCardSectionValue *)self findMyCardSection];
  v96 = [findMyCardSection copy];
  [v4 setFindMyCardSection:v96];

  heroCardSection = [(SFCardSectionValue *)self heroCardSection];
  v98 = [heroCardSection copy];
  [v4 setHeroCardSection:v98];

  newsCardSection = [(SFCardSectionValue *)self newsCardSection];
  v100 = [newsCardSection copy];
  [v4 setNewsCardSection:v100];

  miniCardSection = [(SFCardSectionValue *)self miniCardSection];
  v102 = [miniCardSection copy];
  [v4 setMiniCardSection:v102];

  infoCardSection = [(SFCardSectionValue *)self infoCardSection];
  v104 = [infoCardSection copy];
  [v4 setInfoCardSection:v104];

  collectionCardSection = [(SFCardSectionValue *)self collectionCardSection];
  v106 = [collectionCardSection copy];
  [v4 setCollectionCardSection:v106];

  combinedCardSection = [(SFCardSectionValue *)self combinedCardSection];
  v108 = [combinedCardSection copy];
  [v4 setCombinedCardSection:v108];

  responseWrapperCardSection = [(SFCardSectionValue *)self responseWrapperCardSection];
  v110 = [responseWrapperCardSection copy];
  [v4 setResponseWrapperCardSection:v110];

  listenToCardSection = [(SFCardSectionValue *)self listenToCardSection];
  v112 = [listenToCardSection copy];
  [v4 setListenToCardSection:v112];

  watchNowCardSection = [(SFCardSectionValue *)self watchNowCardSection];
  v114 = [watchNowCardSection copy];
  [v4 setWatchNowCardSection:v114];

  strokeAnimationCardSection = [(SFCardSectionValue *)self strokeAnimationCardSection];
  v116 = [strokeAnimationCardSection copy];
  [v4 setStrokeAnimationCardSection:v116];

  buttonListCardSection = [(SFCardSectionValue *)self buttonListCardSection];
  v118 = [buttonListCardSection copy];
  [v4 setButtonListCardSection:v118];

  commandRowCardSection = [(SFCardSectionValue *)self commandRowCardSection];
  v120 = [commandRowCardSection copy];
  [v4 setCommandRowCardSection:v120];

  leadingTrailingCardSection = [(SFCardSectionValue *)self leadingTrailingCardSection];
  v122 = [leadingTrailingCardSection copy];
  [v4 setLeadingTrailingCardSection:v122];

  heroTitleCardSection = [(SFCardSectionValue *)self heroTitleCardSection];
  v124 = [heroTitleCardSection copy];
  [v4 setHeroTitleCardSection:v124];

  archiveViewCardSection = [(SFCardSectionValue *)self archiveViewCardSection];
  v126 = [archiveViewCardSection copy];
  [v4 setArchiveViewCardSection:v126];

  appIconCardSection = [(SFCardSectionValue *)self appIconCardSection];
  v128 = [appIconCardSection copy];
  [v4 setAppIconCardSection:v128];

  largeTitleDetailedRowCardSection = [(SFCardSectionValue *)self largeTitleDetailedRowCardSection];
  v130 = [largeTitleDetailedRowCardSection copy];
  [v4 setLargeTitleDetailedRowCardSection:v130];

  safariTableOfContentsCardSection = [(SFCardSectionValue *)self safariTableOfContentsCardSection];
  v132 = [safariTableOfContentsCardSection copy];
  [v4 setSafariTableOfContentsCardSection:v132];

  rfSummaryItemShortNumberCardSection = [(SFCardSectionValue *)self rfSummaryItemShortNumberCardSection];
  v134 = [rfSummaryItemShortNumberCardSection copy];
  [v4 setRfSummaryItemShortNumberCardSection:v134];

  rfSummaryItemTextCardSection = [(SFCardSectionValue *)self rfSummaryItemTextCardSection];
  v136 = [rfSummaryItemTextCardSection copy];
  [v4 setRfSummaryItemTextCardSection:v136];

  rfSummaryItemStandardCardSection = [(SFCardSectionValue *)self rfSummaryItemStandardCardSection];
  v138 = [rfSummaryItemStandardCardSection copy];
  [v4 setRfSummaryItemStandardCardSection:v138];

  rfFactItemShortNumberCardSection = [(SFCardSectionValue *)self rfFactItemShortNumberCardSection];
  v140 = [rfFactItemShortNumberCardSection copy];
  [v4 setRfFactItemShortNumberCardSection:v140];

  rfFactItemStandardCardSection = [(SFCardSectionValue *)self rfFactItemStandardCardSection];
  v142 = [rfFactItemStandardCardSection copy];
  [v4 setRfFactItemStandardCardSection:v142];

  rfLongItemStandardCardSection = [(SFCardSectionValue *)self rfLongItemStandardCardSection];
  v144 = [rfLongItemStandardCardSection copy];
  [v4 setRfLongItemStandardCardSection:v144];

  rfPrimaryHeaderRichCardSection = [(SFCardSectionValue *)self rfPrimaryHeaderRichCardSection];
  v146 = [rfPrimaryHeaderRichCardSection copy];
  [v4 setRfPrimaryHeaderRichCardSection:v146];

  rfPrimaryHeaderStandardCardSection = [(SFCardSectionValue *)self rfPrimaryHeaderStandardCardSection];
  v148 = [rfPrimaryHeaderStandardCardSection copy];
  [v4 setRfPrimaryHeaderStandardCardSection:v148];

  rfReferenceFootnoteCardSection = [(SFCardSectionValue *)self rfReferenceFootnoteCardSection];
  v150 = [rfReferenceFootnoteCardSection copy];
  [v4 setRfReferenceFootnoteCardSection:v150];

  rfReferenceRichCardSection = [(SFCardSectionValue *)self rfReferenceRichCardSection];
  v152 = [rfReferenceRichCardSection copy];
  [v4 setRfReferenceRichCardSection:v152];

  rfSimpleItemRichCardSection = [(SFCardSectionValue *)self rfSimpleItemRichCardSection];
  v154 = [rfSimpleItemRichCardSection copy];
  [v4 setRfSimpleItemRichCardSection:v154];

  rfSimpleItemStandardCardSection = [(SFCardSectionValue *)self rfSimpleItemStandardCardSection];
  v156 = [rfSimpleItemStandardCardSection copy];
  [v4 setRfSimpleItemStandardCardSection:v156];

  rfSummaryItemAlignedTextCardSection = [(SFCardSectionValue *)self rfSummaryItemAlignedTextCardSection];
  v158 = [rfSummaryItemAlignedTextCardSection copy];
  [v4 setRfSummaryItemAlignedTextCardSection:v158];

  rfExpandableStandardCardSection = [(SFCardSectionValue *)self rfExpandableStandardCardSection];
  v160 = [rfExpandableStandardCardSection copy];
  [v4 setRfExpandableStandardCardSection:v160];

  rfFactItemButtonCardSection = [(SFCardSectionValue *)self rfFactItemButtonCardSection];
  v162 = [rfFactItemButtonCardSection copy];
  [v4 setRfFactItemButtonCardSection:v162];

  rfFactItemHeroNumberCardSection = [(SFCardSectionValue *)self rfFactItemHeroNumberCardSection];
  v164 = [rfFactItemHeroNumberCardSection copy];
  [v4 setRfFactItemHeroNumberCardSection:v164];

  rfPrimaryHeaderMarqueeCardSection = [(SFCardSectionValue *)self rfPrimaryHeaderMarqueeCardSection];
  v166 = [rfPrimaryHeaderMarqueeCardSection copy];
  [v4 setRfPrimaryHeaderMarqueeCardSection:v166];

  rfSummaryItemDetailedTextCardSection = [(SFCardSectionValue *)self rfSummaryItemDetailedTextCardSection];
  v168 = [rfSummaryItemDetailedTextCardSection copy];
  [v4 setRfSummaryItemDetailedTextCardSection:v168];

  rfSimpleItemPlayerCardSection = [(SFCardSectionValue *)self rfSimpleItemPlayerCardSection];
  v170 = [rfSimpleItemPlayerCardSection copy];
  [v4 setRfSimpleItemPlayerCardSection:v170];

  rfSummaryItemPairCardSection = [(SFCardSectionValue *)self rfSummaryItemPairCardSection];
  v172 = [rfSummaryItemPairCardSection copy];
  [v4 setRfSummaryItemPairCardSection:v172];

  rfSummaryItemPairNumberCardSection = [(SFCardSectionValue *)self rfSummaryItemPairNumberCardSection];
  v174 = [rfSummaryItemPairNumberCardSection copy];
  [v4 setRfSummaryItemPairNumberCardSection:v174];

  rfFactItemShortHeroNumberCardSection = [(SFCardSectionValue *)self rfFactItemShortHeroNumberCardSection];
  v176 = [rfFactItemShortHeroNumberCardSection copy];
  [v4 setRfFactItemShortHeroNumberCardSection:v176];

  rfFactItemDetailedNumberCardSection = [(SFCardSectionValue *)self rfFactItemDetailedNumberCardSection];
  v178 = [rfFactItemDetailedNumberCardSection copy];
  [v4 setRfFactItemDetailedNumberCardSection:v178];

  rfFactItemHeroButtonCardSection = [(SFCardSectionValue *)self rfFactItemHeroButtonCardSection];
  v180 = [rfFactItemHeroButtonCardSection copy];
  [v4 setRfFactItemHeroButtonCardSection:v180];

  rfFactItemImageRightCardSection = [(SFCardSectionValue *)self rfFactItemImageRightCardSection];
  v182 = [rfFactItemImageRightCardSection copy];
  [v4 setRfFactItemImageRightCardSection:v182];

  rfSummaryItemSwitchV2CardSection = [(SFCardSectionValue *)self rfSummaryItemSwitchV2CardSection];
  v184 = [rfSummaryItemSwitchV2CardSection copy];
  [v4 setRfSummaryItemSwitchV2CardSection:v184];

  rfTableHeaderCardSection = [(SFCardSectionValue *)self rfTableHeaderCardSection];
  v186 = [rfTableHeaderCardSection copy];
  [v4 setRfTableHeaderCardSection:v186];

  rfTableRowCardSection = [(SFCardSectionValue *)self rfTableRowCardSection];
  v188 = [rfTableRowCardSection copy];
  [v4 setRfTableRowCardSection:v188];

  rfSimpleItemVisualElementCardSection = [(SFCardSectionValue *)self rfSimpleItemVisualElementCardSection];
  v190 = [rfSimpleItemVisualElementCardSection copy];
  [v4 setRfSimpleItemVisualElementCardSection:v190];

  rfSummaryItemPlayerCardSection = [(SFCardSectionValue *)self rfSummaryItemPlayerCardSection];
  v192 = [rfSummaryItemPlayerCardSection copy];
  [v4 setRfSummaryItemPlayerCardSection:v192];

  rfSummaryItemImageRightCardSection = [(SFCardSectionValue *)self rfSummaryItemImageRightCardSection];
  v194 = [rfSummaryItemImageRightCardSection copy];
  [v4 setRfSummaryItemImageRightCardSection:v194];

  rfSummaryItemButtonCardSection = [(SFCardSectionValue *)self rfSummaryItemButtonCardSection];
  v196 = [rfSummaryItemButtonCardSection copy];
  [v4 setRfSummaryItemButtonCardSection:v196];

  rfSimpleItemReverseRichCardSection = [(SFCardSectionValue *)self rfSimpleItemReverseRichCardSection];
  v198 = [rfSimpleItemReverseRichCardSection copy];
  [v4 setRfSimpleItemReverseRichCardSection:v198];

  rfSimpleItemRichSearchResultCardSection = [(SFCardSectionValue *)self rfSimpleItemRichSearchResultCardSection];
  v200 = [rfSimpleItemRichSearchResultCardSection copy];
  [v4 setRfSimpleItemRichSearchResultCardSection:v200];

  rfPrimaryHeaderStackedImageCardSection = [(SFCardSectionValue *)self rfPrimaryHeaderStackedImageCardSection];
  v202 = [rfPrimaryHeaderStackedImageCardSection copy];
  [v4 setRfPrimaryHeaderStackedImageCardSection:v202];

  rfReferenceItemLogoCardSection = [(SFCardSectionValue *)self rfReferenceItemLogoCardSection];
  v204 = [rfReferenceItemLogoCardSection copy];
  [v4 setRfReferenceItemLogoCardSection:v204];

  rfReferenceItemButtonCardSection = [(SFCardSectionValue *)self rfReferenceItemButtonCardSection];
  v206 = [rfReferenceItemButtonCardSection copy];
  [v4 setRfReferenceItemButtonCardSection:v206];

  rfButtonCardSection = [(SFCardSectionValue *)self rfButtonCardSection];
  v208 = [rfButtonCardSection copy];
  [v4 setRfButtonCardSection:v208];

  rfBinaryButtonCardSection = [(SFCardSectionValue *)self rfBinaryButtonCardSection];
  v210 = [rfBinaryButtonCardSection copy];
  [v4 setRfBinaryButtonCardSection:v210];

  rfReferenceCenteredCardSection = [(SFCardSectionValue *)self rfReferenceCenteredCardSection];
  v212 = [rfReferenceCenteredCardSection copy];
  [v4 setRfReferenceCenteredCardSection:v212];

  rfSecondaryHeaderStandardCardSection = [(SFCardSectionValue *)self rfSecondaryHeaderStandardCardSection];
  v214 = [rfSecondaryHeaderStandardCardSection copy];
  [v4 setRfSecondaryHeaderStandardCardSection:v214];

  rfSecondaryHeaderEmphasizedCardSection = [(SFCardSectionValue *)self rfSecondaryHeaderEmphasizedCardSection];
  v216 = [rfSecondaryHeaderEmphasizedCardSection copy];
  [v4 setRfSecondaryHeaderEmphasizedCardSection:v216];

  rfMapCardSection = [(SFCardSectionValue *)self rfMapCardSection];
  v218 = [rfMapCardSection copy];
  [v4 setRfMapCardSection:v218];

  rfReferenceStandardCardSection = [(SFCardSectionValue *)self rfReferenceStandardCardSection];
  v220 = [rfReferenceStandardCardSection copy];
  [v4 setRfReferenceStandardCardSection:v220];

  rfMultiButtonCardSection = [(SFCardSectionValue *)self rfMultiButtonCardSection];
  v222 = [rfMultiButtonCardSection copy];
  [v4 setRfMultiButtonCardSection:v222];

  rfDisambiguationTitleCardSection = [(SFCardSectionValue *)self rfDisambiguationTitleCardSection];
  v224 = [rfDisambiguationTitleCardSection copy];
  [v4 setRfDisambiguationTitleCardSection:v224];

  rfSummaryItemExpandableCardSection = [(SFCardSectionValue *)self rfSummaryItemExpandableCardSection];
  v226 = [rfSummaryItemExpandableCardSection copy];
  [v4 setRfSummaryItemExpandableCardSection:v226];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCardSectionValue alloc] initWithFacade:self];
  jsonData = [(_SFPBCardSectionValue *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCardSectionValue alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCardSectionValue *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCardSectionValue alloc] initWithFacade:self];
  data = [(_SFPBCardSectionValue *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCardSectionValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCardSectionValue alloc] initWithData:v5];
  v7 = [(SFCardSectionValue *)self initWithProtobuf:v6];

  return v7;
}

@end