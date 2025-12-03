@interface SFCardSection
- (BOOL)isEqual:(id)equal;
- (NSArray)embeddedCards;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCardSection)init;
- (SFCardSection)initWithCoder:(id)coder;
- (SFCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addCardsFromButtonsTo:(id)to;
- (void)addCardsFromCommandsTo:(id)to;
- (void)addCardsFromEmbeddedSectionsTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCardSection

- (SFCardSection)init
{
  v7.receiver = self;
  v7.super_class = SFCardSection;
  v2 = [(SFCardSection *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    cardSectionId = v2->_cardSectionId;
    v2->_cardSectionId = uUIDString;
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

- (SFCardSection)initWithProtobuf:(id)protobuf
{
  v846 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v4 = objc_alloc_init(SFNullCardSection);
  value = [protobufCopy value];
  appLinkCardSection = [value appLinkCardSection];

  if (appLinkCardSection)
  {
    v7 = [SFAppLinkCardSection alloc];
    value2 = [protobufCopy value];
    appLinkCardSection2 = [value2 appLinkCardSection];
    v10 = [(SFAppLinkCardSection *)v7 initWithProtobuf:appLinkCardSection2];

    v4 = v10;
  }

  value3 = [protobufCopy value];
  descriptionCardSection = [value3 descriptionCardSection];

  if (descriptionCardSection)
  {
    v13 = [SFDescriptionCardSection alloc];
    value4 = [protobufCopy value];
    descriptionCardSection2 = [value4 descriptionCardSection];
    v16 = [(SFDescriptionCardSection *)v13 initWithProtobuf:descriptionCardSection2];

    v4 = v16;
  }

  value5 = [protobufCopy value];
  keyValueDataCardSection = [value5 keyValueDataCardSection];

  if (keyValueDataCardSection)
  {
    v19 = [SFKeyValueDataCardSection alloc];
    value6 = [protobufCopy value];
    keyValueDataCardSection2 = [value6 keyValueDataCardSection];
    v22 = [(SFKeyValueDataCardSection *)v19 initWithProtobuf:keyValueDataCardSection2];

    v4 = v22;
  }

  value7 = [protobufCopy value];
  mapCardSection = [value7 mapCardSection];

  if (mapCardSection)
  {
    v25 = [SFMapCardSection alloc];
    value8 = [protobufCopy value];
    mapCardSection2 = [value8 mapCardSection];
    v28 = [(SFMapCardSection *)v25 initWithProtobuf:mapCardSection2];

    v4 = v28;
  }

  value9 = [protobufCopy value];
  mediaInfoCardSection = [value9 mediaInfoCardSection];

  if (mediaInfoCardSection)
  {
    v31 = [SFMediaInfoCardSection alloc];
    value10 = [protobufCopy value];
    mediaInfoCardSection2 = [value10 mediaInfoCardSection];
    v34 = [(SFMediaInfoCardSection *)v31 initWithProtobuf:mediaInfoCardSection2];

    v4 = v34;
  }

  value11 = [protobufCopy value];
  mediaPlayerCardSection = [value11 mediaPlayerCardSection];

  if (mediaPlayerCardSection)
  {
    v37 = [SFMediaPlayerCardSection alloc];
    value12 = [protobufCopy value];
    mediaPlayerCardSection2 = [value12 mediaPlayerCardSection];
    v40 = [(SFMediaPlayerCardSection *)v37 initWithProtobuf:mediaPlayerCardSection2];

    v4 = v40;
  }

  value13 = [protobufCopy value];
  nowPlayingCardSection = [value13 nowPlayingCardSection];

  if (nowPlayingCardSection)
  {
    v43 = [SFNowPlayingCardSection alloc];
    value14 = [protobufCopy value];
    nowPlayingCardSection2 = [value14 nowPlayingCardSection];
    v46 = [(SFNowPlayingCardSection *)v43 initWithProtobuf:nowPlayingCardSection2];

    v4 = v46;
  }

  value15 = [protobufCopy value];
  richTitleCardSection = [value15 richTitleCardSection];

  if (richTitleCardSection)
  {
    v49 = [SFRichTitleCardSection alloc];
    value16 = [protobufCopy value];
    richTitleCardSection2 = [value16 richTitleCardSection];
    v52 = [(SFRichTitleCardSection *)v49 initWithProtobuf:richTitleCardSection2];

    v4 = v52;
  }

  value17 = [protobufCopy value];
  rowCardSection = [value17 rowCardSection];

  if (rowCardSection)
  {
    v55 = [SFRowCardSection alloc];
    value18 = [protobufCopy value];
    rowCardSection2 = [value18 rowCardSection];
    v58 = [(SFRowCardSection *)v55 initWithProtobuf:rowCardSection2];

    v4 = v58;
  }

  value19 = [protobufCopy value];
  scoreboardCardSection = [value19 scoreboardCardSection];

  if (scoreboardCardSection)
  {
    v61 = [SFScoreboardCardSection alloc];
    value20 = [protobufCopy value];
    scoreboardCardSection2 = [value20 scoreboardCardSection];
    v64 = [(SFScoreboardCardSection *)v61 initWithProtobuf:scoreboardCardSection2];

    v4 = v64;
  }

  value21 = [protobufCopy value];
  socialMediaPostCardSection = [value21 socialMediaPostCardSection];

  if (socialMediaPostCardSection)
  {
    v67 = [SFSocialMediaPostCardSection alloc];
    value22 = [protobufCopy value];
    socialMediaPostCardSection2 = [value22 socialMediaPostCardSection];
    v70 = [(SFSocialMediaPostCardSection *)v67 initWithProtobuf:socialMediaPostCardSection2];

    v4 = v70;
  }

  value23 = [protobufCopy value];
  stockChartCardSection = [value23 stockChartCardSection];

  if (stockChartCardSection)
  {
    v73 = [SFStockChartCardSection alloc];
    value24 = [protobufCopy value];
    stockChartCardSection2 = [value24 stockChartCardSection];
    v76 = [(SFStockChartCardSection *)v73 initWithProtobuf:stockChartCardSection2];

    v4 = v76;
  }

  value25 = [protobufCopy value];
  tableHeaderRowCardSection = [value25 tableHeaderRowCardSection];

  if (tableHeaderRowCardSection)
  {
    v79 = [SFTableHeaderRowCardSection alloc];
    value26 = [protobufCopy value];
    tableHeaderRowCardSection2 = [value26 tableHeaderRowCardSection];
    v82 = [(SFTableHeaderRowCardSection *)v79 initWithProtobuf:tableHeaderRowCardSection2];

    v4 = v82;
  }

  value27 = [protobufCopy value];
  tableRowCardSection = [value27 tableRowCardSection];

  if (tableRowCardSection)
  {
    v85 = [SFTableRowCardSection alloc];
    value28 = [protobufCopy value];
    tableRowCardSection2 = [value28 tableRowCardSection];
    v88 = [(SFTableRowCardSection *)v85 initWithProtobuf:tableRowCardSection2];

    v4 = v88;
  }

  value29 = [protobufCopy value];
  textColumnsCardSection = [value29 textColumnsCardSection];

  if (textColumnsCardSection)
  {
    v91 = [SFTextColumnsCardSection alloc];
    value30 = [protobufCopy value];
    textColumnsCardSection2 = [value30 textColumnsCardSection];
    v94 = [(SFTextColumnsCardSection *)v91 initWithProtobuf:textColumnsCardSection2];

    v4 = v94;
  }

  value31 = [protobufCopy value];
  titleCardSection = [value31 titleCardSection];

  if (titleCardSection)
  {
    v97 = [SFTitleCardSection alloc];
    value32 = [protobufCopy value];
    titleCardSection2 = [value32 titleCardSection];
    v100 = [(SFTitleCardSection *)v97 initWithProtobuf:titleCardSection2];

    v4 = v100;
  }

  value33 = [protobufCopy value];
  trackListCardSection = [value33 trackListCardSection];

  if (trackListCardSection)
  {
    v103 = [SFTrackListCardSection alloc];
    value34 = [protobufCopy value];
    trackListCardSection2 = [value34 trackListCardSection];
    v106 = [(SFTrackListCardSection *)v103 initWithProtobuf:trackListCardSection2];

    v4 = v106;
  }

  value35 = [protobufCopy value];
  audioPlaybackCardSection = [value35 audioPlaybackCardSection];

  if (audioPlaybackCardSection)
  {
    v109 = [SFAudioPlaybackCardSection alloc];
    value36 = [protobufCopy value];
    audioPlaybackCardSection2 = [value36 audioPlaybackCardSection];
    v112 = [(SFAudioPlaybackCardSection *)v109 initWithProtobuf:audioPlaybackCardSection2];

    v4 = v112;
  }

  value37 = [protobufCopy value];
  flightCardSection = [value37 flightCardSection];

  if (flightCardSection)
  {
    v115 = [SFFlightCardSection alloc];
    value38 = [protobufCopy value];
    flightCardSection2 = [value38 flightCardSection];
    v118 = [(SFFlightCardSection *)v115 initWithProtobuf:flightCardSection2];

    v4 = v118;
  }

  value39 = [protobufCopy value];
  activityIndicatorCardSection = [value39 activityIndicatorCardSection];

  if (activityIndicatorCardSection)
  {
    v121 = [SFActivityIndicatorCardSection alloc];
    value40 = [protobufCopy value];
    activityIndicatorCardSection2 = [value40 activityIndicatorCardSection];
    v124 = [(SFActivityIndicatorCardSection *)v121 initWithProtobuf:activityIndicatorCardSection2];

    v4 = v124;
  }

  value41 = [protobufCopy value];
  webCardSection = [value41 webCardSection];

  if (webCardSection)
  {
    v127 = [SFWebCardSection alloc];
    value42 = [protobufCopy value];
    webCardSection2 = [value42 webCardSection];
    v130 = [(SFWebCardSection *)v127 initWithProtobuf:webCardSection2];

    v4 = v130;
  }

  value43 = [protobufCopy value];
  messageCardSection = [value43 messageCardSection];

  if (messageCardSection)
  {
    v133 = [SFMessageCardSection alloc];
    value44 = [protobufCopy value];
    messageCardSection2 = [value44 messageCardSection];
    v136 = [(SFMessageCardSection *)v133 initWithProtobuf:messageCardSection2];

    v4 = v136;
  }

  value45 = [protobufCopy value];
  detailedRowCardSection = [value45 detailedRowCardSection];

  if (detailedRowCardSection)
  {
    v139 = [SFDetailedRowCardSection alloc];
    value46 = [protobufCopy value];
    detailedRowCardSection2 = [value46 detailedRowCardSection];
    v142 = [(SFDetailedRowCardSection *)v139 initWithProtobuf:detailedRowCardSection2];

    v4 = v142;
  }

  value47 = [protobufCopy value];
  imagesCardSection = [value47 imagesCardSection];

  if (imagesCardSection)
  {
    v145 = [SFImagesCardSection alloc];
    value48 = [protobufCopy value];
    imagesCardSection2 = [value48 imagesCardSection];
    v148 = [(SFImagesCardSection *)v145 initWithProtobuf:imagesCardSection2];

    v4 = v148;
  }

  value49 = [protobufCopy value];
  suggestionCardSection = [value49 suggestionCardSection];

  if (suggestionCardSection)
  {
    v151 = [SFSuggestionCardSection alloc];
    value50 = [protobufCopy value];
    suggestionCardSection2 = [value50 suggestionCardSection];
    v154 = [(SFSuggestionCardSection *)v151 initWithProtobuf:suggestionCardSection2];

    v4 = v154;
  }

  value51 = [protobufCopy value];
  selectableGridCardSection = [value51 selectableGridCardSection];

  if (selectableGridCardSection)
  {
    v157 = [SFSelectableGridCardSection alloc];
    value52 = [protobufCopy value];
    selectableGridCardSection2 = [value52 selectableGridCardSection];
    v160 = [(SFSelectableGridCardSection *)v157 initWithProtobuf:selectableGridCardSection2];

    v4 = v160;
  }

  value53 = [protobufCopy value];
  sectionHeaderCardSection = [value53 sectionHeaderCardSection];

  if (sectionHeaderCardSection)
  {
    v163 = [SFSectionHeaderCardSection alloc];
    value54 = [protobufCopy value];
    sectionHeaderCardSection2 = [value54 sectionHeaderCardSection];
    v166 = [(SFSectionHeaderCardSection *)v163 initWithProtobuf:sectionHeaderCardSection2];

    v4 = v166;
  }

  value55 = [protobufCopy value];
  metaInfoCardSection = [value55 metaInfoCardSection];

  if (metaInfoCardSection)
  {
    v169 = [SFMetaInfoCardSection alloc];
    value56 = [protobufCopy value];
    metaInfoCardSection2 = [value56 metaInfoCardSection];
    v172 = [(SFMetaInfoCardSection *)v169 initWithProtobuf:metaInfoCardSection2];

    v4 = v172;
  }

  value57 = [protobufCopy value];
  watchListCardSection = [value57 watchListCardSection];

  if (watchListCardSection)
  {
    v175 = [SFWatchListCardSection alloc];
    value58 = [protobufCopy value];
    watchListCardSection2 = [value58 watchListCardSection];
    v178 = [(SFWatchListCardSection *)v175 initWithProtobuf:watchListCardSection2];

    v4 = v178;
  }

  value59 = [protobufCopy value];
  mapsDetailedRowCardSection = [value59 mapsDetailedRowCardSection];

  if (mapsDetailedRowCardSection)
  {
    v181 = [SFMapsDetailedRowCardSection alloc];
    value60 = [protobufCopy value];
    mapsDetailedRowCardSection2 = [value60 mapsDetailedRowCardSection];
    v184 = [(SFMapsDetailedRowCardSection *)v181 initWithProtobuf:mapsDetailedRowCardSection2];

    v4 = v184;
  }

  value61 = [protobufCopy value];
  buttonCardSection = [value61 buttonCardSection];

  if (buttonCardSection)
  {
    v187 = [SFButtonCardSection alloc];
    value62 = [protobufCopy value];
    buttonCardSection2 = [value62 buttonCardSection];
    v190 = [(SFButtonCardSection *)v187 initWithProtobuf:buttonCardSection2];

    v4 = v190;
  }

  value63 = [protobufCopy value];
  horizontalButtonCardSection = [value63 horizontalButtonCardSection];

  if (horizontalButtonCardSection)
  {
    v193 = [SFHorizontalButtonCardSection alloc];
    value64 = [protobufCopy value];
    horizontalButtonCardSection2 = [value64 horizontalButtonCardSection];
    v196 = [(SFHorizontalButtonCardSection *)v193 initWithProtobuf:horizontalButtonCardSection2];

    v4 = v196;
  }

  value65 = [protobufCopy value];
  verticalLayoutCardSection = [value65 verticalLayoutCardSection];

  if (verticalLayoutCardSection)
  {
    v199 = [SFVerticalLayoutCardSection alloc];
    value66 = [protobufCopy value];
    verticalLayoutCardSection2 = [value66 verticalLayoutCardSection];
    v202 = [(SFVerticalLayoutCardSection *)v199 initWithProtobuf:verticalLayoutCardSection2];

    v4 = v202;
  }

  value67 = [protobufCopy value];
  productCardSection = [value67 productCardSection];

  if (productCardSection)
  {
    v205 = [SFProductCardSection alloc];
    value68 = [protobufCopy value];
    productCardSection2 = [value68 productCardSection];
    v208 = [(SFProductCardSection *)v205 initWithProtobuf:productCardSection2];

    v4 = v208;
  }

  value69 = [protobufCopy value];
  horizontalScrollCardSection = [value69 horizontalScrollCardSection];

  if (horizontalScrollCardSection)
  {
    v211 = [SFHorizontalScrollCardSection alloc];
    value70 = [protobufCopy value];
    horizontalScrollCardSection2 = [value70 horizontalScrollCardSection];
    v214 = [(SFHorizontalScrollCardSection *)v211 initWithProtobuf:horizontalScrollCardSection2];

    v4 = v214;
  }

  value71 = [protobufCopy value];
  mediaRemoteControlCardSection = [value71 mediaRemoteControlCardSection];

  if (mediaRemoteControlCardSection)
  {
    v217 = [SFMediaRemoteControlCardSection alloc];
    value72 = [protobufCopy value];
    mediaRemoteControlCardSection2 = [value72 mediaRemoteControlCardSection];
    v220 = [(SFMediaRemoteControlCardSection *)v217 initWithProtobuf:mediaRemoteControlCardSection2];

    v4 = v220;
  }

  value73 = [protobufCopy value];
  mapPlaceCardSection = [value73 mapPlaceCardSection];

  if (mapPlaceCardSection)
  {
    v223 = [SFMapPlaceCardSection alloc];
    value74 = [protobufCopy value];
    mapPlaceCardSection2 = [value74 mapPlaceCardSection];
    v226 = [(SFMapPlaceCardSection *)v223 initWithProtobuf:mapPlaceCardSection2];

    v4 = v226;
  }

  value75 = [protobufCopy value];
  compactRowCardSection = [value75 compactRowCardSection];

  if (compactRowCardSection)
  {
    v229 = [SFCompactRowCardSection alloc];
    value76 = [protobufCopy value];
    compactRowCardSection2 = [value76 compactRowCardSection];
    v232 = [(SFCompactRowCardSection *)v229 initWithProtobuf:compactRowCardSection2];

    v4 = v232;
  }

  value77 = [protobufCopy value];
  worldMapCardSection = [value77 worldMapCardSection];

  if (worldMapCardSection)
  {
    v235 = [SFWorldMapCardSection alloc];
    value78 = [protobufCopy value];
    worldMapCardSection2 = [value78 worldMapCardSection];
    v238 = [(SFWorldMapCardSection *)v235 initWithProtobuf:worldMapCardSection2];

    v4 = v238;
  }

  value79 = [protobufCopy value];
  attributionFooterCardSection = [value79 attributionFooterCardSection];

  if (attributionFooterCardSection)
  {
    v241 = [SFAttributionFooterCardSection alloc];
    value80 = [protobufCopy value];
    attributionFooterCardSection2 = [value80 attributionFooterCardSection];
    v244 = [(SFAttributionFooterCardSection *)v241 initWithProtobuf:attributionFooterCardSection2];

    v4 = v244;
  }

  value81 = [protobufCopy value];
  gridCardSection = [value81 gridCardSection];

  if (gridCardSection)
  {
    v247 = [SFGridCardSection alloc];
    value82 = [protobufCopy value];
    gridCardSection2 = [value82 gridCardSection];
    v250 = [(SFGridCardSection *)v247 initWithProtobuf:gridCardSection2];

    v4 = v250;
  }

  value83 = [protobufCopy value];
  personHeaderCardSection = [value83 personHeaderCardSection];

  if (personHeaderCardSection)
  {
    v253 = [SFPersonHeaderCardSection alloc];
    value84 = [protobufCopy value];
    personHeaderCardSection2 = [value84 personHeaderCardSection];
    v256 = [(SFPersonHeaderCardSection *)v253 initWithProtobuf:personHeaderCardSection2];

    v4 = v256;
  }

  value85 = [protobufCopy value];
  colorBarCardSection = [value85 colorBarCardSection];

  if (colorBarCardSection)
  {
    v259 = [SFColorBarCardSection alloc];
    value86 = [protobufCopy value];
    colorBarCardSection2 = [value86 colorBarCardSection];
    v262 = [(SFColorBarCardSection *)v259 initWithProtobuf:colorBarCardSection2];

    v4 = v262;
  }

  value87 = [protobufCopy value];
  splitCardSection = [value87 splitCardSection];

  if (splitCardSection)
  {
    v265 = [SFSplitCardSection alloc];
    value88 = [protobufCopy value];
    splitCardSection2 = [value88 splitCardSection];
    v268 = [(SFSplitCardSection *)v265 initWithProtobuf:splitCardSection2];

    v4 = v268;
  }

  value89 = [protobufCopy value];
  linkPresentationCardSection = [value89 linkPresentationCardSection];

  if (linkPresentationCardSection)
  {
    v271 = [SFLinkPresentationCardSection alloc];
    value90 = [protobufCopy value];
    linkPresentationCardSection2 = [value90 linkPresentationCardSection];
    v274 = [(SFLinkPresentationCardSection *)v271 initWithProtobuf:linkPresentationCardSection2];

    v4 = v274;
  }

  value91 = [protobufCopy value];
  findMyCardSection = [value91 findMyCardSection];

  if (findMyCardSection)
  {
    v277 = [SFFindMyCardSection alloc];
    value92 = [protobufCopy value];
    findMyCardSection2 = [value92 findMyCardSection];
    v280 = [(SFFindMyCardSection *)v277 initWithProtobuf:findMyCardSection2];

    v4 = v280;
  }

  value93 = [protobufCopy value];
  heroCardSection = [value93 heroCardSection];

  if (heroCardSection)
  {
    v283 = [SFHeroCardSection alloc];
    value94 = [protobufCopy value];
    heroCardSection2 = [value94 heroCardSection];
    v286 = [(SFHeroCardSection *)v283 initWithProtobuf:heroCardSection2];

    v4 = v286;
  }

  value95 = [protobufCopy value];
  newsCardSection = [value95 newsCardSection];

  if (newsCardSection)
  {
    v289 = [SFNewsCardSection alloc];
    value96 = [protobufCopy value];
    newsCardSection2 = [value96 newsCardSection];
    v292 = [(SFNewsCardSection *)v289 initWithProtobuf:newsCardSection2];

    v4 = v292;
  }

  value97 = [protobufCopy value];
  miniCardSection = [value97 miniCardSection];

  if (miniCardSection)
  {
    v295 = [SFMiniCardSection alloc];
    value98 = [protobufCopy value];
    miniCardSection2 = [value98 miniCardSection];
    v298 = [(SFMiniCardSection *)v295 initWithProtobuf:miniCardSection2];

    v4 = v298;
  }

  value99 = [protobufCopy value];
  infoCardSection = [value99 infoCardSection];

  if (infoCardSection)
  {
    v301 = [SFInfoCardSection alloc];
    value100 = [protobufCopy value];
    infoCardSection2 = [value100 infoCardSection];
    v304 = [(SFInfoCardSection *)v301 initWithProtobuf:infoCardSection2];

    v4 = v304;
  }

  value101 = [protobufCopy value];
  collectionCardSection = [value101 collectionCardSection];

  if (collectionCardSection)
  {
    v307 = [SFCollectionCardSection alloc];
    value102 = [protobufCopy value];
    collectionCardSection2 = [value102 collectionCardSection];
    v310 = [(SFCollectionCardSection *)v307 initWithProtobuf:collectionCardSection2];

    v4 = v310;
  }

  value103 = [protobufCopy value];
  combinedCardSection = [value103 combinedCardSection];

  if (combinedCardSection)
  {
    v313 = [SFCombinedCardSection alloc];
    value104 = [protobufCopy value];
    combinedCardSection2 = [value104 combinedCardSection];
    v316 = [(SFCombinedCardSection *)v313 initWithProtobuf:combinedCardSection2];

    v4 = v316;
  }

  value105 = [protobufCopy value];
  responseWrapperCardSection = [value105 responseWrapperCardSection];

  if (responseWrapperCardSection)
  {
    v319 = [SFResponseWrapperCardSection alloc];
    value106 = [protobufCopy value];
    responseWrapperCardSection2 = [value106 responseWrapperCardSection];
    v322 = [(SFResponseWrapperCardSection *)v319 initWithProtobuf:responseWrapperCardSection2];

    v4 = v322;
  }

  value107 = [protobufCopy value];
  listenToCardSection = [value107 listenToCardSection];

  if (listenToCardSection)
  {
    v325 = [SFListenToCardSection alloc];
    value108 = [protobufCopy value];
    listenToCardSection2 = [value108 listenToCardSection];
    v328 = [(SFListenToCardSection *)v325 initWithProtobuf:listenToCardSection2];

    v4 = v328;
  }

  value109 = [protobufCopy value];
  watchNowCardSection = [value109 watchNowCardSection];

  if (watchNowCardSection)
  {
    v331 = [SFWatchNowCardSection alloc];
    value110 = [protobufCopy value];
    watchNowCardSection2 = [value110 watchNowCardSection];
    v334 = [(SFWatchNowCardSection *)v331 initWithProtobuf:watchNowCardSection2];

    v4 = v334;
  }

  value111 = [protobufCopy value];
  strokeAnimationCardSection = [value111 strokeAnimationCardSection];

  if (strokeAnimationCardSection)
  {
    v337 = [SFStrokeAnimationCardSection alloc];
    value112 = [protobufCopy value];
    strokeAnimationCardSection2 = [value112 strokeAnimationCardSection];
    v340 = [(SFStrokeAnimationCardSection *)v337 initWithProtobuf:strokeAnimationCardSection2];

    v4 = v340;
  }

  value113 = [protobufCopy value];
  buttonListCardSection = [value113 buttonListCardSection];

  if (buttonListCardSection)
  {
    v343 = [SFButtonListCardSection alloc];
    value114 = [protobufCopy value];
    buttonListCardSection2 = [value114 buttonListCardSection];
    v346 = [(SFButtonListCardSection *)v343 initWithProtobuf:buttonListCardSection2];

    v4 = v346;
  }

  value115 = [protobufCopy value];
  commandRowCardSection = [value115 commandRowCardSection];

  if (commandRowCardSection)
  {
    v349 = [SFCommandRowCardSection alloc];
    value116 = [protobufCopy value];
    commandRowCardSection2 = [value116 commandRowCardSection];
    v352 = [(SFCommandRowCardSection *)v349 initWithProtobuf:commandRowCardSection2];

    v4 = v352;
  }

  value117 = [protobufCopy value];
  leadingTrailingCardSection = [value117 leadingTrailingCardSection];

  if (leadingTrailingCardSection)
  {
    v355 = [SFLeadingTrailingCardSection alloc];
    value118 = [protobufCopy value];
    leadingTrailingCardSection2 = [value118 leadingTrailingCardSection];
    v358 = [(SFLeadingTrailingCardSection *)v355 initWithProtobuf:leadingTrailingCardSection2];

    v4 = v358;
  }

  value119 = [protobufCopy value];
  heroTitleCardSection = [value119 heroTitleCardSection];

  if (heroTitleCardSection)
  {
    v361 = [SFHeroTitleCardSection alloc];
    value120 = [protobufCopy value];
    heroTitleCardSection2 = [value120 heroTitleCardSection];
    v364 = [(SFHeroTitleCardSection *)v361 initWithProtobuf:heroTitleCardSection2];

    v4 = v364;
  }

  value121 = [protobufCopy value];
  archiveViewCardSection = [value121 archiveViewCardSection];

  if (archiveViewCardSection)
  {
    v367 = [SFArchiveViewCardSection alloc];
    value122 = [protobufCopy value];
    archiveViewCardSection2 = [value122 archiveViewCardSection];
    v370 = [(SFArchiveViewCardSection *)v367 initWithProtobuf:archiveViewCardSection2];

    v4 = v370;
  }

  value123 = [protobufCopy value];
  appIconCardSection = [value123 appIconCardSection];

  if (appIconCardSection)
  {
    v373 = [SFAppIconCardSection alloc];
    value124 = [protobufCopy value];
    appIconCardSection2 = [value124 appIconCardSection];
    v376 = [(SFAppIconCardSection *)v373 initWithProtobuf:appIconCardSection2];

    v4 = v376;
  }

  value125 = [protobufCopy value];
  largeTitleDetailedRowCardSection = [value125 largeTitleDetailedRowCardSection];

  if (largeTitleDetailedRowCardSection)
  {
    v379 = [SFLargeTitleDetailedRowCardSection alloc];
    value126 = [protobufCopy value];
    largeTitleDetailedRowCardSection2 = [value126 largeTitleDetailedRowCardSection];
    v382 = [(SFLargeTitleDetailedRowCardSection *)v379 initWithProtobuf:largeTitleDetailedRowCardSection2];

    v4 = v382;
  }

  value127 = [protobufCopy value];
  safariTableOfContentsCardSection = [value127 safariTableOfContentsCardSection];

  if (safariTableOfContentsCardSection)
  {
    v385 = [SFSafariTableOfContentsCardSection alloc];
    value128 = [protobufCopy value];
    safariTableOfContentsCardSection2 = [value128 safariTableOfContentsCardSection];
    v388 = [(SFSafariTableOfContentsCardSection *)v385 initWithProtobuf:safariTableOfContentsCardSection2];

    v4 = v388;
  }

  value129 = [protobufCopy value];
  rfSummaryItemShortNumberCardSection = [value129 rfSummaryItemShortNumberCardSection];

  if (rfSummaryItemShortNumberCardSection)
  {
    v391 = [RFSummaryItemShortNumberCardSection alloc];
    value130 = [protobufCopy value];
    rfSummaryItemShortNumberCardSection2 = [value130 rfSummaryItemShortNumberCardSection];
    v394 = [(RFSummaryItemShortNumberCardSection *)v391 initWithProtobuf:rfSummaryItemShortNumberCardSection2];

    v4 = v394;
  }

  value131 = [protobufCopy value];
  rfSummaryItemTextCardSection = [value131 rfSummaryItemTextCardSection];

  if (rfSummaryItemTextCardSection)
  {
    v397 = [RFSummaryItemTextCardSection alloc];
    value132 = [protobufCopy value];
    rfSummaryItemTextCardSection2 = [value132 rfSummaryItemTextCardSection];
    v400 = [(RFSummaryItemTextCardSection *)v397 initWithProtobuf:rfSummaryItemTextCardSection2];

    v4 = v400;
  }

  value133 = [protobufCopy value];
  rfSummaryItemStandardCardSection = [value133 rfSummaryItemStandardCardSection];

  if (rfSummaryItemStandardCardSection)
  {
    v403 = [RFSummaryItemStandardCardSection alloc];
    value134 = [protobufCopy value];
    rfSummaryItemStandardCardSection2 = [value134 rfSummaryItemStandardCardSection];
    v406 = [(RFSummaryItemStandardCardSection *)v403 initWithProtobuf:rfSummaryItemStandardCardSection2];

    v4 = v406;
  }

  value135 = [protobufCopy value];
  rfFactItemShortNumberCardSection = [value135 rfFactItemShortNumberCardSection];

  if (rfFactItemShortNumberCardSection)
  {
    v409 = [RFFactItemShortNumberCardSection alloc];
    value136 = [protobufCopy value];
    rfFactItemShortNumberCardSection2 = [value136 rfFactItemShortNumberCardSection];
    v412 = [(RFFactItemShortNumberCardSection *)v409 initWithProtobuf:rfFactItemShortNumberCardSection2];

    v4 = v412;
  }

  value137 = [protobufCopy value];
  rfFactItemStandardCardSection = [value137 rfFactItemStandardCardSection];

  if (rfFactItemStandardCardSection)
  {
    v415 = [RFFactItemStandardCardSection alloc];
    value138 = [protobufCopy value];
    rfFactItemStandardCardSection2 = [value138 rfFactItemStandardCardSection];
    v418 = [(RFFactItemStandardCardSection *)v415 initWithProtobuf:rfFactItemStandardCardSection2];

    v4 = v418;
  }

  value139 = [protobufCopy value];
  rfLongItemStandardCardSection = [value139 rfLongItemStandardCardSection];

  if (rfLongItemStandardCardSection)
  {
    v421 = [RFLongItemStandardCardSection alloc];
    value140 = [protobufCopy value];
    rfLongItemStandardCardSection2 = [value140 rfLongItemStandardCardSection];
    v424 = [(RFLongItemStandardCardSection *)v421 initWithProtobuf:rfLongItemStandardCardSection2];

    v4 = v424;
  }

  value141 = [protobufCopy value];
  rfPrimaryHeaderRichCardSection = [value141 rfPrimaryHeaderRichCardSection];

  if (rfPrimaryHeaderRichCardSection)
  {
    v427 = [RFPrimaryHeaderRichCardSection alloc];
    value142 = [protobufCopy value];
    rfPrimaryHeaderRichCardSection2 = [value142 rfPrimaryHeaderRichCardSection];
    v430 = [(RFPrimaryHeaderRichCardSection *)v427 initWithProtobuf:rfPrimaryHeaderRichCardSection2];

    v4 = v430;
  }

  value143 = [protobufCopy value];
  rfPrimaryHeaderStandardCardSection = [value143 rfPrimaryHeaderStandardCardSection];

  if (rfPrimaryHeaderStandardCardSection)
  {
    v433 = [RFPrimaryHeaderStandardCardSection alloc];
    value144 = [protobufCopy value];
    rfPrimaryHeaderStandardCardSection2 = [value144 rfPrimaryHeaderStandardCardSection];
    v436 = [(RFPrimaryHeaderStandardCardSection *)v433 initWithProtobuf:rfPrimaryHeaderStandardCardSection2];

    v4 = v436;
  }

  value145 = [protobufCopy value];
  rfReferenceFootnoteCardSection = [value145 rfReferenceFootnoteCardSection];

  if (rfReferenceFootnoteCardSection)
  {
    v439 = [RFReferenceFootnoteCardSection alloc];
    value146 = [protobufCopy value];
    rfReferenceFootnoteCardSection2 = [value146 rfReferenceFootnoteCardSection];
    v442 = [(RFReferenceFootnoteCardSection *)v439 initWithProtobuf:rfReferenceFootnoteCardSection2];

    v4 = v442;
  }

  value147 = [protobufCopy value];
  rfReferenceRichCardSection = [value147 rfReferenceRichCardSection];

  if (rfReferenceRichCardSection)
  {
    v445 = [RFReferenceRichCardSection alloc];
    value148 = [protobufCopy value];
    rfReferenceRichCardSection2 = [value148 rfReferenceRichCardSection];
    v448 = [(RFReferenceRichCardSection *)v445 initWithProtobuf:rfReferenceRichCardSection2];

    v4 = v448;
  }

  value149 = [protobufCopy value];
  rfSimpleItemRichCardSection = [value149 rfSimpleItemRichCardSection];

  if (rfSimpleItemRichCardSection)
  {
    v451 = [RFSimpleItemRichCardSection alloc];
    value150 = [protobufCopy value];
    rfSimpleItemRichCardSection2 = [value150 rfSimpleItemRichCardSection];
    v454 = [(RFSimpleItemRichCardSection *)v451 initWithProtobuf:rfSimpleItemRichCardSection2];

    v4 = v454;
  }

  value151 = [protobufCopy value];
  rfSimpleItemStandardCardSection = [value151 rfSimpleItemStandardCardSection];

  if (rfSimpleItemStandardCardSection)
  {
    v457 = [RFSimpleItemStandardCardSection alloc];
    value152 = [protobufCopy value];
    rfSimpleItemStandardCardSection2 = [value152 rfSimpleItemStandardCardSection];
    v460 = [(RFSimpleItemStandardCardSection *)v457 initWithProtobuf:rfSimpleItemStandardCardSection2];

    v4 = v460;
  }

  value153 = [protobufCopy value];
  rfSummaryItemAlignedTextCardSection = [value153 rfSummaryItemAlignedTextCardSection];

  if (rfSummaryItemAlignedTextCardSection)
  {
    v463 = [RFSummaryItemAlignedTextCardSection alloc];
    value154 = [protobufCopy value];
    rfSummaryItemAlignedTextCardSection2 = [value154 rfSummaryItemAlignedTextCardSection];
    v466 = [(RFSummaryItemAlignedTextCardSection *)v463 initWithProtobuf:rfSummaryItemAlignedTextCardSection2];

    v4 = v466;
  }

  value155 = [protobufCopy value];
  rfExpandableStandardCardSection = [value155 rfExpandableStandardCardSection];

  if (rfExpandableStandardCardSection)
  {
    v469 = [RFExpandableStandardCardSection alloc];
    value156 = [protobufCopy value];
    rfExpandableStandardCardSection2 = [value156 rfExpandableStandardCardSection];
    v472 = [(RFExpandableStandardCardSection *)v469 initWithProtobuf:rfExpandableStandardCardSection2];

    v4 = v472;
  }

  value157 = [protobufCopy value];
  rfFactItemButtonCardSection = [value157 rfFactItemButtonCardSection];

  if (rfFactItemButtonCardSection)
  {
    v475 = [RFFactItemButtonCardSection alloc];
    value158 = [protobufCopy value];
    rfFactItemButtonCardSection2 = [value158 rfFactItemButtonCardSection];
    v478 = [(RFFactItemButtonCardSection *)v475 initWithProtobuf:rfFactItemButtonCardSection2];

    v4 = v478;
  }

  value159 = [protobufCopy value];
  rfFactItemHeroNumberCardSection = [value159 rfFactItemHeroNumberCardSection];

  if (rfFactItemHeroNumberCardSection)
  {
    v481 = [RFFactItemHeroNumberCardSection alloc];
    value160 = [protobufCopy value];
    rfFactItemHeroNumberCardSection2 = [value160 rfFactItemHeroNumberCardSection];
    v484 = [(RFFactItemHeroNumberCardSection *)v481 initWithProtobuf:rfFactItemHeroNumberCardSection2];

    v4 = v484;
  }

  value161 = [protobufCopy value];
  rfPrimaryHeaderMarqueeCardSection = [value161 rfPrimaryHeaderMarqueeCardSection];

  if (rfPrimaryHeaderMarqueeCardSection)
  {
    v487 = [RFPrimaryHeaderMarqueeCardSection alloc];
    value162 = [protobufCopy value];
    rfPrimaryHeaderMarqueeCardSection2 = [value162 rfPrimaryHeaderMarqueeCardSection];
    v490 = [(RFPrimaryHeaderMarqueeCardSection *)v487 initWithProtobuf:rfPrimaryHeaderMarqueeCardSection2];

    v4 = v490;
  }

  value163 = [protobufCopy value];
  rfSummaryItemDetailedTextCardSection = [value163 rfSummaryItemDetailedTextCardSection];

  if (rfSummaryItemDetailedTextCardSection)
  {
    v493 = [RFSummaryItemDetailedTextCardSection alloc];
    value164 = [protobufCopy value];
    rfSummaryItemDetailedTextCardSection2 = [value164 rfSummaryItemDetailedTextCardSection];
    v496 = [(RFSummaryItemDetailedTextCardSection *)v493 initWithProtobuf:rfSummaryItemDetailedTextCardSection2];

    v4 = v496;
  }

  value165 = [protobufCopy value];
  rfSimpleItemPlayerCardSection = [value165 rfSimpleItemPlayerCardSection];

  if (rfSimpleItemPlayerCardSection)
  {
    v499 = [RFSimpleItemPlayerCardSection alloc];
    value166 = [protobufCopy value];
    rfSimpleItemPlayerCardSection2 = [value166 rfSimpleItemPlayerCardSection];
    v502 = [(RFSimpleItemPlayerCardSection *)v499 initWithProtobuf:rfSimpleItemPlayerCardSection2];

    v4 = v502;
  }

  value167 = [protobufCopy value];
  rfSummaryItemPairCardSection = [value167 rfSummaryItemPairCardSection];

  if (rfSummaryItemPairCardSection)
  {
    v505 = [RFSummaryItemPairCardSection alloc];
    value168 = [protobufCopy value];
    rfSummaryItemPairCardSection2 = [value168 rfSummaryItemPairCardSection];
    v508 = [(RFSummaryItemPairCardSection *)v505 initWithProtobuf:rfSummaryItemPairCardSection2];

    v4 = v508;
  }

  value169 = [protobufCopy value];
  rfSummaryItemPairNumberCardSection = [value169 rfSummaryItemPairNumberCardSection];

  if (rfSummaryItemPairNumberCardSection)
  {
    v511 = [RFSummaryItemPairNumberCardSection alloc];
    value170 = [protobufCopy value];
    rfSummaryItemPairNumberCardSection2 = [value170 rfSummaryItemPairNumberCardSection];
    v514 = [(RFSummaryItemPairNumberCardSection *)v511 initWithProtobuf:rfSummaryItemPairNumberCardSection2];

    v4 = v514;
  }

  value171 = [protobufCopy value];
  rfFactItemShortHeroNumberCardSection = [value171 rfFactItemShortHeroNumberCardSection];

  if (rfFactItemShortHeroNumberCardSection)
  {
    v517 = [RFFactItemShortHeroNumberCardSection alloc];
    value172 = [protobufCopy value];
    rfFactItemShortHeroNumberCardSection2 = [value172 rfFactItemShortHeroNumberCardSection];
    v520 = [(RFFactItemShortHeroNumberCardSection *)v517 initWithProtobuf:rfFactItemShortHeroNumberCardSection2];

    v4 = v520;
  }

  value173 = [protobufCopy value];
  rfFactItemDetailedNumberCardSection = [value173 rfFactItemDetailedNumberCardSection];

  if (rfFactItemDetailedNumberCardSection)
  {
    v523 = [RFFactItemDetailedNumberCardSection alloc];
    value174 = [protobufCopy value];
    rfFactItemDetailedNumberCardSection2 = [value174 rfFactItemDetailedNumberCardSection];
    v526 = [(RFFactItemDetailedNumberCardSection *)v523 initWithProtobuf:rfFactItemDetailedNumberCardSection2];

    v4 = v526;
  }

  value175 = [protobufCopy value];
  rfFactItemHeroButtonCardSection = [value175 rfFactItemHeroButtonCardSection];

  if (rfFactItemHeroButtonCardSection)
  {
    v529 = [RFFactItemHeroButtonCardSection alloc];
    value176 = [protobufCopy value];
    rfFactItemHeroButtonCardSection2 = [value176 rfFactItemHeroButtonCardSection];
    v532 = [(RFFactItemHeroButtonCardSection *)v529 initWithProtobuf:rfFactItemHeroButtonCardSection2];

    v4 = v532;
  }

  value177 = [protobufCopy value];
  rfFactItemImageRightCardSection = [value177 rfFactItemImageRightCardSection];

  if (rfFactItemImageRightCardSection)
  {
    v535 = [RFFactItemImageRightCardSection alloc];
    value178 = [protobufCopy value];
    rfFactItemImageRightCardSection2 = [value178 rfFactItemImageRightCardSection];
    v538 = [(RFFactItemImageRightCardSection *)v535 initWithProtobuf:rfFactItemImageRightCardSection2];

    v4 = v538;
  }

  value179 = [protobufCopy value];
  rfSummaryItemSwitchV2CardSection = [value179 rfSummaryItemSwitchV2CardSection];

  if (rfSummaryItemSwitchV2CardSection)
  {
    v541 = [RFSummaryItemSwitchV2CardSection alloc];
    value180 = [protobufCopy value];
    rfSummaryItemSwitchV2CardSection2 = [value180 rfSummaryItemSwitchV2CardSection];
    v544 = [(RFSummaryItemSwitchV2CardSection *)v541 initWithProtobuf:rfSummaryItemSwitchV2CardSection2];

    v4 = v544;
  }

  value181 = [protobufCopy value];
  rfTableHeaderCardSection = [value181 rfTableHeaderCardSection];

  if (rfTableHeaderCardSection)
  {
    v547 = [RFTableHeaderCardSection alloc];
    value182 = [protobufCopy value];
    rfTableHeaderCardSection2 = [value182 rfTableHeaderCardSection];
    v550 = [(RFTableHeaderCardSection *)v547 initWithProtobuf:rfTableHeaderCardSection2];

    v4 = v550;
  }

  value183 = [protobufCopy value];
  rfTableRowCardSection = [value183 rfTableRowCardSection];

  if (rfTableRowCardSection)
  {
    v553 = [RFTableRowCardSection alloc];
    value184 = [protobufCopy value];
    rfTableRowCardSection2 = [value184 rfTableRowCardSection];
    v556 = [(RFTableRowCardSection *)v553 initWithProtobuf:rfTableRowCardSection2];

    v4 = v556;
  }

  value185 = [protobufCopy value];
  rfSimpleItemVisualElementCardSection = [value185 rfSimpleItemVisualElementCardSection];

  if (rfSimpleItemVisualElementCardSection)
  {
    v559 = [RFSimpleItemVisualElementCardSection alloc];
    value186 = [protobufCopy value];
    rfSimpleItemVisualElementCardSection2 = [value186 rfSimpleItemVisualElementCardSection];
    v562 = [(RFSimpleItemVisualElementCardSection *)v559 initWithProtobuf:rfSimpleItemVisualElementCardSection2];

    v4 = v562;
  }

  value187 = [protobufCopy value];
  rfSummaryItemPlayerCardSection = [value187 rfSummaryItemPlayerCardSection];

  if (rfSummaryItemPlayerCardSection)
  {
    v565 = [RFSummaryItemPlayerCardSection alloc];
    value188 = [protobufCopy value];
    rfSummaryItemPlayerCardSection2 = [value188 rfSummaryItemPlayerCardSection];
    v568 = [(RFSummaryItemPlayerCardSection *)v565 initWithProtobuf:rfSummaryItemPlayerCardSection2];

    v4 = v568;
  }

  value189 = [protobufCopy value];
  rfSummaryItemImageRightCardSection = [value189 rfSummaryItemImageRightCardSection];

  if (rfSummaryItemImageRightCardSection)
  {
    v571 = [RFSummaryItemImageRightCardSection alloc];
    value190 = [protobufCopy value];
    rfSummaryItemImageRightCardSection2 = [value190 rfSummaryItemImageRightCardSection];
    v574 = [(RFSummaryItemImageRightCardSection *)v571 initWithProtobuf:rfSummaryItemImageRightCardSection2];

    v4 = v574;
  }

  value191 = [protobufCopy value];
  rfSummaryItemButtonCardSection = [value191 rfSummaryItemButtonCardSection];

  if (rfSummaryItemButtonCardSection)
  {
    v577 = [RFSummaryItemButtonCardSection alloc];
    value192 = [protobufCopy value];
    rfSummaryItemButtonCardSection2 = [value192 rfSummaryItemButtonCardSection];
    v580 = [(RFSummaryItemButtonCardSection *)v577 initWithProtobuf:rfSummaryItemButtonCardSection2];

    v4 = v580;
  }

  value193 = [protobufCopy value];
  rfSimpleItemReverseRichCardSection = [value193 rfSimpleItemReverseRichCardSection];

  if (rfSimpleItemReverseRichCardSection)
  {
    v583 = [RFSimpleItemReverseRichCardSection alloc];
    value194 = [protobufCopy value];
    rfSimpleItemReverseRichCardSection2 = [value194 rfSimpleItemReverseRichCardSection];
    v586 = [(RFSimpleItemReverseRichCardSection *)v583 initWithProtobuf:rfSimpleItemReverseRichCardSection2];

    v4 = v586;
  }

  value195 = [protobufCopy value];
  rfSimpleItemRichSearchResultCardSection = [value195 rfSimpleItemRichSearchResultCardSection];

  if (rfSimpleItemRichSearchResultCardSection)
  {
    v589 = [RFSimpleItemRichSearchResultCardSection alloc];
    value196 = [protobufCopy value];
    rfSimpleItemRichSearchResultCardSection2 = [value196 rfSimpleItemRichSearchResultCardSection];
    v592 = [(RFSimpleItemRichSearchResultCardSection *)v589 initWithProtobuf:rfSimpleItemRichSearchResultCardSection2];

    v4 = v592;
  }

  value197 = [protobufCopy value];
  rfPrimaryHeaderStackedImageCardSection = [value197 rfPrimaryHeaderStackedImageCardSection];

  if (rfPrimaryHeaderStackedImageCardSection)
  {
    v595 = [RFPrimaryHeaderStackedImageCardSection alloc];
    value198 = [protobufCopy value];
    rfPrimaryHeaderStackedImageCardSection2 = [value198 rfPrimaryHeaderStackedImageCardSection];
    v598 = [(RFPrimaryHeaderStackedImageCardSection *)v595 initWithProtobuf:rfPrimaryHeaderStackedImageCardSection2];

    v4 = v598;
  }

  value199 = [protobufCopy value];
  rfReferenceItemLogoCardSection = [value199 rfReferenceItemLogoCardSection];

  if (rfReferenceItemLogoCardSection)
  {
    v601 = [RFReferenceItemLogoCardSection alloc];
    value200 = [protobufCopy value];
    rfReferenceItemLogoCardSection2 = [value200 rfReferenceItemLogoCardSection];
    v604 = [(RFReferenceItemLogoCardSection *)v601 initWithProtobuf:rfReferenceItemLogoCardSection2];

    v4 = v604;
  }

  value201 = [protobufCopy value];
  rfReferenceItemButtonCardSection = [value201 rfReferenceItemButtonCardSection];

  if (rfReferenceItemButtonCardSection)
  {
    v607 = [RFReferenceItemButtonCardSection alloc];
    value202 = [protobufCopy value];
    rfReferenceItemButtonCardSection2 = [value202 rfReferenceItemButtonCardSection];
    v610 = [(RFReferenceItemButtonCardSection *)v607 initWithProtobuf:rfReferenceItemButtonCardSection2];

    v4 = v610;
  }

  value203 = [protobufCopy value];
  rfButtonCardSection = [value203 rfButtonCardSection];

  if (rfButtonCardSection)
  {
    v613 = [RFButtonCardSection alloc];
    value204 = [protobufCopy value];
    rfButtonCardSection2 = [value204 rfButtonCardSection];
    v616 = [(RFButtonCardSection *)v613 initWithProtobuf:rfButtonCardSection2];

    v4 = v616;
  }

  value205 = [protobufCopy value];
  rfBinaryButtonCardSection = [value205 rfBinaryButtonCardSection];

  if (rfBinaryButtonCardSection)
  {
    v619 = [RFBinaryButtonCardSection alloc];
    value206 = [protobufCopy value];
    rfBinaryButtonCardSection2 = [value206 rfBinaryButtonCardSection];
    v622 = [(RFBinaryButtonCardSection *)v619 initWithProtobuf:rfBinaryButtonCardSection2];

    v4 = v622;
  }

  value207 = [protobufCopy value];
  rfReferenceCenteredCardSection = [value207 rfReferenceCenteredCardSection];

  if (rfReferenceCenteredCardSection)
  {
    v625 = [RFReferenceCenteredCardSection alloc];
    value208 = [protobufCopy value];
    rfReferenceCenteredCardSection2 = [value208 rfReferenceCenteredCardSection];
    v628 = [(RFReferenceCenteredCardSection *)v625 initWithProtobuf:rfReferenceCenteredCardSection2];

    v4 = v628;
  }

  value209 = [protobufCopy value];
  rfSecondaryHeaderStandardCardSection = [value209 rfSecondaryHeaderStandardCardSection];

  if (rfSecondaryHeaderStandardCardSection)
  {
    v631 = [RFSecondaryHeaderStandardCardSection alloc];
    value210 = [protobufCopy value];
    rfSecondaryHeaderStandardCardSection2 = [value210 rfSecondaryHeaderStandardCardSection];
    v634 = [(RFSecondaryHeaderStandardCardSection *)v631 initWithProtobuf:rfSecondaryHeaderStandardCardSection2];

    v4 = v634;
  }

  value211 = [protobufCopy value];
  rfSecondaryHeaderEmphasizedCardSection = [value211 rfSecondaryHeaderEmphasizedCardSection];

  if (rfSecondaryHeaderEmphasizedCardSection)
  {
    v637 = [RFSecondaryHeaderEmphasizedCardSection alloc];
    value212 = [protobufCopy value];
    rfSecondaryHeaderEmphasizedCardSection2 = [value212 rfSecondaryHeaderEmphasizedCardSection];
    v640 = [(RFSecondaryHeaderEmphasizedCardSection *)v637 initWithProtobuf:rfSecondaryHeaderEmphasizedCardSection2];

    v4 = v640;
  }

  value213 = [protobufCopy value];
  rfMapCardSection = [value213 rfMapCardSection];

  if (rfMapCardSection)
  {
    v643 = [RFMapCardSection alloc];
    value214 = [protobufCopy value];
    rfMapCardSection2 = [value214 rfMapCardSection];
    v646 = [(RFMapCardSection *)v643 initWithProtobuf:rfMapCardSection2];

    v4 = v646;
  }

  value215 = [protobufCopy value];
  rfReferenceStandardCardSection = [value215 rfReferenceStandardCardSection];

  if (rfReferenceStandardCardSection)
  {
    v649 = [RFReferenceStandardCardSection alloc];
    value216 = [protobufCopy value];
    rfReferenceStandardCardSection2 = [value216 rfReferenceStandardCardSection];
    v652 = [(RFReferenceStandardCardSection *)v649 initWithProtobuf:rfReferenceStandardCardSection2];

    v4 = v652;
  }

  value217 = [protobufCopy value];
  rfMultiButtonCardSection = [value217 rfMultiButtonCardSection];

  if (rfMultiButtonCardSection)
  {
    v655 = [RFMultiButtonCardSection alloc];
    value218 = [protobufCopy value];
    rfMultiButtonCardSection2 = [value218 rfMultiButtonCardSection];
    v658 = [(RFMultiButtonCardSection *)v655 initWithProtobuf:rfMultiButtonCardSection2];

    v4 = v658;
  }

  value219 = [protobufCopy value];
  rfDisambiguationTitleCardSection = [value219 rfDisambiguationTitleCardSection];

  if (rfDisambiguationTitleCardSection)
  {
    v661 = [RFDisambiguationTitleCardSection alloc];
    value220 = [protobufCopy value];
    rfDisambiguationTitleCardSection2 = [value220 rfDisambiguationTitleCardSection];
    v664 = [(RFDisambiguationTitleCardSection *)v661 initWithProtobuf:rfDisambiguationTitleCardSection2];

    v4 = v664;
  }

  value221 = [protobufCopy value];
  rfSummaryItemExpandableCardSection = [value221 rfSummaryItemExpandableCardSection];

  if (rfSummaryItemExpandableCardSection)
  {
    v667 = [RFSummaryItemExpandableCardSection alloc];
    value222 = [protobufCopy value];
    rfSummaryItemExpandableCardSection2 = [value222 rfSummaryItemExpandableCardSection];
    v670 = [(RFSummaryItemExpandableCardSection *)v667 initWithProtobuf:rfSummaryItemExpandableCardSection2];

    v4 = v670;
  }

  nextCard = [protobufCopy nextCard];

  if (nextCard)
  {
    v672 = [SFCard alloc];
    nextCard2 = [protobufCopy nextCard];
    v674 = [(SFCard *)v672 initWithProtobuf:nextCard2];
    [(SFCardSection *)v4 setNextCard:v674];
  }

  commands = [protobufCopy commands];
  v676 = [commands count];

  if (v676)
  {
    commands2 = [protobufCopy commands];
    if (commands2)
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
    commands3 = [protobufCopy commands];
    v680 = [commands3 countByEnumeratingWithState:&v834 objects:v845 count:16];
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
            objc_enumerationMutation(commands3);
          }

          v684 = [[SFAbstractCommand alloc] initWithProtobuf:*(*(&v834 + 1) + 8 * i)];
          if (v684)
          {
            [v678 addObject:v684];
          }
        }

        v681 = [commands3 countByEnumeratingWithState:&v834 objects:v845 count:16];
      }

      while (v681);
    }

    [(SFCardSection *)v4 setCommands:v678];
  }

  parameterKeyPaths = [protobufCopy parameterKeyPaths];
  v686 = [parameterKeyPaths count];

  if (v686)
  {
    parameterKeyPaths2 = [protobufCopy parameterKeyPaths];
    if (parameterKeyPaths2)
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
    parameterKeyPaths3 = [protobufCopy parameterKeyPaths];
    v690 = [parameterKeyPaths3 countByEnumeratingWithState:&v830 objects:v844 count:16];
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
            objc_enumerationMutation(parameterKeyPaths3);
          }

          v694 = *(*(&v830 + 1) + 8 * j);
          if (v694)
          {
            [v688 addObject:v694];
          }
        }

        v691 = [parameterKeyPaths3 countByEnumeratingWithState:&v830 objects:v844 count:16];
      }

      while (v691);
    }

    [(SFCardSection *)v4 setParameterKeyPaths:v688];
  }

  cardSectionId = [protobufCopy cardSectionId];

  if (cardSectionId)
  {
    cardSectionId2 = [protobufCopy cardSectionId];
    [(SFCardSection *)v4 setCardSectionId:cardSectionId2];
  }

  resultIdentifier = [protobufCopy resultIdentifier];

  if (resultIdentifier)
  {
    resultIdentifier2 = [protobufCopy resultIdentifier];
    [(SFCardSection *)v4 setResultIdentifier:resultIdentifier2];
  }

  userReportRequest = [protobufCopy userReportRequest];

  if (userReportRequest)
  {
    v700 = [SFUserReportRequest alloc];
    userReportRequest2 = [protobufCopy userReportRequest];
    v702 = [(SFUserReportRequest *)v700 initWithProtobuf:userReportRequest2];
    [(SFCardSection *)v4 setUserReportRequest:v702];
  }

  command = [protobufCopy command];

  if (command)
  {
    v704 = [SFCommand alloc];
    command2 = [protobufCopy command];
    v706 = [(SFCommand *)v704 initWithProtobuf:command2];
    [(SFCardSection *)v4 setCommand:v706];
  }

  previewCommand = [protobufCopy previewCommand];

  if (previewCommand)
  {
    v708 = [SFCommand alloc];
    previewCommand2 = [protobufCopy previewCommand];
    v710 = [(SFCommand *)v708 initWithProtobuf:previewCommand2];
    [(SFCardSection *)v4 setPreviewCommand:v710];
  }

  previewButtonItems = [protobufCopy previewButtonItems];
  v712 = [previewButtonItems count];

  if (v712)
  {
    previewButtonItems2 = [protobufCopy previewButtonItems];
    if (previewButtonItems2)
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
    previewButtonItems3 = [protobufCopy previewButtonItems];
    v716 = [previewButtonItems3 countByEnumeratingWithState:&v826 objects:v843 count:16];
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
            objc_enumerationMutation(previewButtonItems3);
          }

          v720 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v826 + 1) + 8 * k)];
          if (v720)
          {
            [v714 addObject:v720];
          }
        }

        v717 = [previewButtonItems3 countByEnumeratingWithState:&v826 objects:v843 count:16];
      }

      while (v717);
    }

    [(SFCardSection *)v4 setPreviewButtonItems:v714];
  }

  cardSectionDetail = [protobufCopy cardSectionDetail];

  if (cardSectionDetail)
  {
    cardSectionDetail2 = [protobufCopy cardSectionDetail];
    [(SFCardSection *)v4 setCardSectionDetail:cardSectionDetail2];
  }

  previewButtonItemsTitle = [protobufCopy previewButtonItemsTitle];

  if (previewButtonItemsTitle)
  {
    previewButtonItemsTitle2 = [protobufCopy previewButtonItemsTitle];
    [(SFCardSection *)v4 setPreviewButtonItemsTitle:previewButtonItemsTitle2];
  }

  backgroundColor = [protobufCopy backgroundColor];

  if (backgroundColor)
  {
    v726 = [SFColor alloc];
    backgroundColor2 = [protobufCopy backgroundColor];
    v728 = [(SFColor *)v726 initWithProtobuf:backgroundColor2];
    [(SFCardSection *)v4 setBackgroundColor:v728];
  }

  if ([protobufCopy shouldHideInAmbientMode])
  {
    -[SFCardSection setShouldHideInAmbientMode:](v4, "setShouldHideInAmbientMode:", [protobufCopy shouldHideInAmbientMode]);
  }

  leadingSwipeButtonItems = [protobufCopy leadingSwipeButtonItems];
  v730 = [leadingSwipeButtonItems count];

  if (v730)
  {
    leadingSwipeButtonItems2 = [protobufCopy leadingSwipeButtonItems];
    if (leadingSwipeButtonItems2)
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
    leadingSwipeButtonItems3 = [protobufCopy leadingSwipeButtonItems];
    v734 = [leadingSwipeButtonItems3 countByEnumeratingWithState:&v822 objects:v842 count:16];
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
            objc_enumerationMutation(leadingSwipeButtonItems3);
          }

          v738 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v822 + 1) + 8 * m)];
          if (v738)
          {
            [v732 addObject:v738];
          }
        }

        v735 = [leadingSwipeButtonItems3 countByEnumeratingWithState:&v822 objects:v842 count:16];
      }

      while (v735);
    }

    [(SFCardSection *)v4 setLeadingSwipeButtonItems:v732];
  }

  trailingSwipeButtonItems = [protobufCopy trailingSwipeButtonItems];
  v740 = [trailingSwipeButtonItems count];

  if (v740)
  {
    trailingSwipeButtonItems2 = [protobufCopy trailingSwipeButtonItems];
    if (trailingSwipeButtonItems2)
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
    trailingSwipeButtonItems3 = [protobufCopy trailingSwipeButtonItems];
    v744 = [trailingSwipeButtonItems3 countByEnumeratingWithState:&v818 objects:v841 count:16];
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
            objc_enumerationMutation(trailingSwipeButtonItems3);
          }

          v748 = [[SFButtonItem alloc] initWithProtobuf:*(*(&v818 + 1) + 8 * n)];
          if (v748)
          {
            [v742 addObject:v748];
          }
        }

        v745 = [trailingSwipeButtonItems3 countByEnumeratingWithState:&v818 objects:v841 count:16];
      }

      while (v745);
    }

    [(SFCardSection *)v4 setTrailingSwipeButtonItems:v742];
  }

  punchoutOptions = [protobufCopy punchoutOptions];
  v750 = [punchoutOptions count];

  if (v750)
  {
    punchoutOptions2 = [protobufCopy punchoutOptions];
    if (punchoutOptions2)
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
    punchoutOptions3 = [protobufCopy punchoutOptions];
    v754 = [punchoutOptions3 countByEnumeratingWithState:&v814 objects:v840 count:16];
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
            objc_enumerationMutation(punchoutOptions3);
          }

          v758 = [[SFPunchout alloc] initWithProtobuf:*(*(&v814 + 1) + 8 * ii)];
          if (v758)
          {
            [v752 addObject:v758];
          }
        }

        v755 = [punchoutOptions3 countByEnumeratingWithState:&v814 objects:v840 count:16];
      }

      while (v755);
    }

    [(SFCardSection *)v4 setPunchoutOptions:v752];
  }

  punchoutPickerTitle = [protobufCopy punchoutPickerTitle];

  if (punchoutPickerTitle)
  {
    punchoutPickerTitle2 = [protobufCopy punchoutPickerTitle];
    [(SFCardSection *)v4 setPunchoutPickerTitle:punchoutPickerTitle2];
  }

  punchoutPickerDismissText = [protobufCopy punchoutPickerDismissText];

  if (punchoutPickerDismissText)
  {
    punchoutPickerDismissText2 = [protobufCopy punchoutPickerDismissText];
    [(SFCardSection *)v4 setPunchoutPickerDismissText:punchoutPickerDismissText2];
  }

  if ([protobufCopy canBeHidden])
  {
    -[SFCardSection setCanBeHidden:](v4, "setCanBeHidden:", [protobufCopy canBeHidden]);
  }

  if ([protobufCopy hasTopPadding])
  {
    -[SFCardSection setHasTopPadding:](v4, "setHasTopPadding:", [protobufCopy hasTopPadding]);
  }

  if ([protobufCopy hasBottomPadding])
  {
    -[SFCardSection setHasBottomPadding:](v4, "setHasBottomPadding:", [protobufCopy hasBottomPadding]);
  }

  if ([protobufCopy separatorStyle])
  {
    -[SFCardSection setSeparatorStyle:](v4, "setSeparatorStyle:", [protobufCopy separatorStyle]);
  }

  referencedCommands = [protobufCopy referencedCommands];
  v764 = [referencedCommands count];

  if (v764)
  {
    referencedCommands2 = [protobufCopy referencedCommands];
    if (referencedCommands2)
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
    referencedCommands3 = [protobufCopy referencedCommands];
    v768 = [referencedCommands3 countByEnumeratingWithState:&v810 objects:v839 count:16];
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
            objc_enumerationMutation(referencedCommands3);
          }

          v772 = [[SFCommand alloc] initWithProtobuf:*(*(&v810 + 1) + 8 * jj)];
          if (v772)
          {
            [v766 addObject:v772];
          }
        }

        v769 = [referencedCommands3 countByEnumeratingWithState:&v810 objects:v839 count:16];
      }

      while (v769);
    }

    [(SFCardSection *)v4 setReferencedCommands:v766];
  }

  if ([protobufCopy forceEnable3DTouch])
  {
    -[SFCardSection setForceEnable3DTouch:](v4, "setForceEnable3DTouch:", [protobufCopy forceEnable3DTouch]);
  }

  if ([protobufCopy shouldShowInSmartDialog])
  {
    -[SFCardSection setShouldShowInSmartDialog:](v4, "setShouldShowInSmartDialog:", [protobufCopy shouldShowInSmartDialog]);
  }

  appEntityAnnotation = [protobufCopy appEntityAnnotation];

  if (appEntityAnnotation)
  {
    v774 = [SFAppEntityAnnotation alloc];
    appEntityAnnotation2 = [protobufCopy appEntityAnnotation];
    v776 = [(SFAppEntityAnnotation *)v774 initWithProtobuf:appEntityAnnotation2];
    [(SFCardSection *)v4 setAppEntityAnnotation:v776];
  }

  emphasisSubjectId = [protobufCopy emphasisSubjectId];

  if (emphasisSubjectId)
  {
    emphasisSubjectId2 = [protobufCopy emphasisSubjectId];
    [(SFCardSection *)v4 setEmphasisSubjectId:emphasisSubjectId2];
  }

  if ([protobufCopy increasedContrastMode])
  {
    -[SFCardSection setIncreasedContrastMode:](v4, "setIncreasedContrastMode:", [protobufCopy increasedContrastMode]);
  }

  secondaryCommand = [protobufCopy secondaryCommand];

  if (secondaryCommand)
  {
    v780 = [SFCommand alloc];
    secondaryCommand2 = [protobufCopy secondaryCommand];
    v782 = [(SFCommand *)v780 initWithProtobuf:secondaryCommand2];
    [(SFCardSection *)v4 setSecondaryCommand:v782];
  }

  if ([protobufCopy requiredLevelOfDetail])
  {
    -[SFCardSection setRequiredLevelOfDetail:](v4, "setRequiredLevelOfDetail:", [protobufCopy requiredLevelOfDetail]);
  }

  racFeedbackSubfeatureId = [protobufCopy racFeedbackSubfeatureId];

  if (racFeedbackSubfeatureId)
  {
    racFeedbackSubfeatureId2 = [protobufCopy racFeedbackSubfeatureId];
    [(SFCardSection *)v4 setRacFeedbackSubfeatureId:racFeedbackSubfeatureId2];
  }

  racFeedbackLoggingContent = [protobufCopy racFeedbackLoggingContent];
  v786 = [racFeedbackLoggingContent count];

  if (v786)
  {
    racFeedbackLoggingContent2 = [protobufCopy racFeedbackLoggingContent];
    v808[0] = MEMORY[0x1E69E9820];
    v808[1] = 3221225472;
    v808[2] = __55__SFCardSection_ProtobufInitializer__initWithProtobuf___block_invoke;
    v808[3] = &unk_1E7ACDB40;
    v809 = v4;
    [racFeedbackLoggingContent2 enumerateKeysAndObjectsUsingBlock:v808];
  }

  copyableItems = [protobufCopy copyableItems];
  v789 = [copyableItems count];

  if (v789)
  {
    copyableItems2 = [protobufCopy copyableItems];
    if (copyableItems2)
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
    copyableItems3 = [protobufCopy copyableItems];
    v793 = [copyableItems3 countByEnumeratingWithState:&v804 objects:v838 count:16];
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
            objc_enumerationMutation(copyableItems3);
          }

          v797 = [[SFCopyItem alloc] initWithProtobuf:*(*(&v804 + 1) + 8 * kk)];
          if (v797)
          {
            [v791 addObject:v797];
          }
        }

        v794 = [copyableItems3 countByEnumeratingWithState:&v804 objects:v838 count:16];
      }

      while (v794);
    }

    [(SFCardSection *)v4 setCopyableItems:v791];
  }

  applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

  if (applicationBundleIdentifier)
  {
    applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
    [(SFCardSection *)v4 setApplicationBundleIdentifier:applicationBundleIdentifier2];
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

- (void)addCardsFromEmbeddedSectionsTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sectionsWithCards = [(SFCardSection *)self sectionsWithCards];
  v6 = [sectionsWithCards countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(sectionsWithCards);
        }

        embeddedCards = [*(*(&v12 + 1) + 8 * v9) embeddedCards];
        [toCopy addObjectsFromArray:embeddedCards];

        ++v9;
      }

      while (v7 != v9);
      v7 = [sectionsWithCards countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addCardsFromButtonsTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  previewButtonItems = [(SFCardSection *)self previewButtonItems];
  v6 = [previewButtonItems countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(previewButtonItems);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          command = [v10 command];
          embeddedCards = [command embeddedCards];
          [toCopy addObjectsFromArray:embeddedCards];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [previewButtonItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addCardsFromCommandsTo:(id)to
{
  toCopy = to;
  previewCommand = [(SFCardSection *)self previewCommand];
  embeddedCards = [previewCommand embeddedCards];
  [toCopy addObjectsFromArray:embeddedCards];

  command = [(SFCardSection *)self command];
  embeddedCards2 = [command embeddedCards];
  [toCopy addObjectsFromArray:embeddedCards2];
}

- (NSArray)embeddedCards
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  nextCard = [(SFCardSection *)self nextCard];

  if (nextCard)
  {
    nextCard2 = [(SFCardSection *)self nextCard];
    [v3 addObject:nextCard2];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    nextCard3 = [(SFCardSection *)self nextCard];
    cardSections = [nextCard3 cardSections];

    v8 = [cardSections countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(cardSections);
          }

          embeddedCards = [*(*(&v15 + 1) + 8 * i) embeddedCards];
          [v3 addObjectsFromArray:embeddedCards];
        }

        v9 = [cardSections countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v30 = 1;
  }

  else if ([(SFCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCardSection alloc] initWithFacade:self];
  data = [(_SFPBCardSection *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];

  [coderCopy encodeObject:self->_commandDetail forKey:@"_commandDetail"];
  [coderCopy encodeObject:self->_type forKey:@"_type"];
}

- (SFCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];
  v6 = [[_SFPBCardSection alloc] initWithData:v5];
  v7 = [(SFCardSection *)self initWithProtobuf:v6];

  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_commandDetail"];
    commandDetail = v7->_commandDetail;
    v7->_commandDetail = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
    type = v7->_type;
    v7->_type = v10;
  }

  return v7;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SFCardSection *)self dictionaryRepresentation];
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

- (NSDictionary)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v5 = [punchoutOptions count];

  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    punchoutOptions2 = [(SFCardSection *)self punchoutOptions];
    v8 = [punchoutOptions2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [punchoutOptions2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

@end