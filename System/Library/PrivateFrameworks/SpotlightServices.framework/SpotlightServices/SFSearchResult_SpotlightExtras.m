@interface SFSearchResult_SpotlightExtras
+ (void)initialize;
- (BOOL)isSafariTopHitForQuery:(id)a3;
- (SFSearchResult_SpotlightExtras)init;
- (SFSearchResult_SpotlightExtras)initWithCoder:(id)a3;
- (SFSearchResult_SpotlightExtras)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5 attributeKeys:(id)a6 attributeValues:(id)a7 type:(int)a8 completion:(id)a9;
- (SFSearchResult_SpotlightExtras)initWithResult:(id)a3;
- (SFSearchResult_SpotlightExtras)initWithResult:(id)a3 groupId:(id)a4;
- (UTType)uniformContentType;
- (id)debugDescription;
- (id)fullAttributeSet;
- (id)getStableServerResultIdentifier;
- (id)punchout;
- (id)ttrDescription;
- (id)urlValueForAttribute:(id)a3;
- (id)valueForAttribute:(id)a3 withType:(Class)a4;
- (uint64_t)score;
- (void)clearBackendData;
- (void)encodeWithCoder:(id)a3;
- (void)setContentType:(id)a3;
- (void)setFeedbackPropertiesOnResultCopy:(id)a3;
- (void)setUniformContentType:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation SFSearchResult_SpotlightExtras

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    userDefaults_0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)clearBackendData
{
  [(SFSearchResult_SpotlightExtras *)self setBackendData:0];

  [(SFSearchResult_SpotlightExtras *)self setAttributeData:0];
}

- (SFSearchResult_SpotlightExtras)initWithResult:(id)a3 groupId:(id)a4
{
  v5 = a3;
  v6 = [(SFSearchResult_SpotlightExtras *)self init];
  if (v6)
  {
    v7 = [v5 contentType];
    [(SFSearchResult_SpotlightExtras *)v6 setContentType:v7];

    [v5 setFeedbackPropertiesOnResultCopy:v6];
    v8 = [v5 thumbnail];
    [(SFSearchResult_SpotlightExtras *)v6 setThumbnail:v8];

    -[SFSearchResult_SpotlightExtras setPreventThumbnailImageScaling:](v6, "setPreventThumbnailImageScaling:", [v5 preventThumbnailImageScaling]);
    v9 = [v5 secondaryTitleImage];
    [(SFSearchResult_SpotlightExtras *)v6 setSecondaryTitleImage:v9];

    -[SFSearchResult_SpotlightExtras setIsSecondaryTitleDetached:](v6, "setIsSecondaryTitleDetached:", [v5 isSecondaryTitleDetached]);
    -[SFSearchResult_SpotlightExtras setIsCentered:](v6, "setIsCentered:", [v5 isCentered]);
    v10 = [v5 publishDate];
    [(SFSearchResult_SpotlightExtras *)v6 setPublishDate:v10];

    v11 = [v5 sourceName];
    [(SFSearchResult_SpotlightExtras *)v6 setSourceName:v11];

    v12 = [v5 completion];
    [(SFSearchResult_SpotlightExtras *)v6 setCompletion:v12];

    v13 = [v5 completionImage];
    [(SFSearchResult_SpotlightExtras *)v6 setCompletionImage:v13];

    v14 = [v5 url];
    [(SFSearchResult_SpotlightExtras *)v6 setUrl:v14];

    v15 = [v5 auxiliaryTopText];
    [(SFSearchResult_SpotlightExtras *)v6 setAuxiliaryTopText:v15];

    v16 = [v5 auxiliaryMiddleText];
    [(SFSearchResult_SpotlightExtras *)v6 setAuxiliaryMiddleText:v16];

    v17 = [v5 auxiliaryBottomText];
    [(SFSearchResult_SpotlightExtras *)v6 setAuxiliaryBottomText:v17];

    -[SFSearchResult_SpotlightExtras setAuxiliaryBottomTextColor:](v6, "setAuxiliaryBottomTextColor:", [v5 auxiliaryBottomTextColor]);
    v18 = [v5 punchout];
    [(SFSearchResult_SpotlightExtras *)v6 setPunchout:v18];

    v19 = [v5 storeIdentifier];
    [(SFSearchResult_SpotlightExtras *)v6 setStoreIdentifier:v19];

    v20 = [v5 calendarIdentifier];
    [(SFSearchResult_SpotlightExtras *)v6 setCalendarIdentifier:v20];

    v21 = [v5 mapsData];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsData:v21];

    v22 = [v5 mapsResultType];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsResultType:v22];

    v23 = [v5 mapsMoreURL];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsMoreURL:v23];

    v24 = [v5 mapsMoreString];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsMoreString:v24];

    v25 = [v5 mapsMoreIcon];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsMoreIcon:v25];

    v26 = [v5 nearbyBusinessesString];
    [(SFSearchResult_SpotlightExtras *)v6 setNearbyBusinessesString:v26];

    v27 = [v5 appleReferrer];
    [(SFSearchResult_SpotlightExtras *)v6 setAppleReferrer:v27];

    v28 = [v5 card];
    [(SFSearchResult_SpotlightExtras *)v6 setCard:v28];

    v29 = [v5 moreResults];
    [(SFSearchResult_SpotlightExtras *)v6 setMoreResults:v29];

    v30 = [v5 moreResultsPunchout];
    [(SFSearchResult_SpotlightExtras *)v6 setMoreResultsPunchout:v30];

    v31 = [v5 userActivityRequiredString];
    [(SFSearchResult_SpotlightExtras *)v6 setUserActivityRequiredString:v31];

    v32 = [v5 sectionHeader];
    [(SFSearchResult_SpotlightExtras *)v6 setSectionHeader:v32];

    v33 = [v5 sectionHeaderMore];
    [(SFSearchResult_SpotlightExtras *)v6 setSectionHeaderMore:v33];

    v34 = [v5 sectionHeaderMoreURL];
    [(SFSearchResult_SpotlightExtras *)v6 setSectionHeaderMoreURL:v34];

    -[SFSearchResult_SpotlightExtras setRenderHorizontallyWithOtherResultsInCategory:](v6, "setRenderHorizontallyWithOtherResultsInCategory:", [v5 renderHorizontallyWithOtherResultsInCategory]);
    -[SFSearchResult_SpotlightExtras setPlacement:](v6, "setPlacement:", [v5 placement]);
    -[SFSearchResult_SpotlightExtras setMinimumRankOfTopHitToSuppressResult:](v6, "setMinimumRankOfTopHitToSuppressResult:", [v5 minimumRankOfTopHitToSuppressResult]);
    v35 = [v5 resultTemplate];
    [(SFSearchResult_SpotlightExtras *)v6 setResultTemplate:v35];

    -[SFSearchResult_SpotlightExtras setIsQuickGlance:](v6, "setIsQuickGlance:", [v5 isQuickGlance]);
    -[SFSearchResult_SpotlightExtras setIsStreaming:](v6, "setIsStreaming:", [v5 isStreaming]);
    v36 = [v5 engagementScore];
    [(SFSearchResult_SpotlightExtras *)v6 setEngagementScore:v36];

    v37 = [v5 queryIndependentScore];
    [(SFSearchResult_SpotlightExtras *)v6 setQueryIndependentScore:v37];

    v38 = [v5 maxAge];
    [(SFSearchResult_SpotlightExtras *)v6 setMaxAge:v38];

    v39 = [v5 titleNote];
    [(SFSearchResult_SpotlightExtras *)v6 setTitleNote:v39];

    v40 = [v5 titleNoteSize];
    [(SFSearchResult_SpotlightExtras *)v6 setTitleNoteSize:v40];

    v41 = [v5 icon];
    [(SFSearchResult_SpotlightExtras *)v6 setIcon:v41];

    v42 = [v5 itemProviderDataTypes];
    [(SFSearchResult_SpotlightExtras *)v6 setItemProviderDataTypes:v42];

    v43 = [v5 itemProviderFileTypes];
    [(SFSearchResult_SpotlightExtras *)v6 setItemProviderFileTypes:v43];

    v44 = [v5 contentTypeTree];
    [(SFSearchResult_SpotlightExtras *)v6 setContentTypeTree:v44];

    -[SFSearchResult_SpotlightExtras setDataOwnerType:](v6, "setDataOwnerType:", [v5 dataOwnerType]);
    v45 = [v5 fileProviderIdentifier];
    [(SFSearchResult_SpotlightExtras *)v6 setFileProviderIdentifier:v45];

    v46 = [v5 fileProviderDomainIdentifier];
    [(SFSearchResult_SpotlightExtras *)v6 setFileProviderDomainIdentifier:v46];

    v47 = [v5 srf];
    [(SFSearchResult_SpotlightExtras *)v6 setSrf:v47];

    -[SFSearchResult_SpotlightExtras setDoNotFold:](v6, "setDoNotFold:", [v5 doNotFold]);
    v48 = [v5 localFeatures];
    [(SFSearchResult_SpotlightExtras *)v6 setLocalFeatures:v48];

    v49 = [v5 entityData];
    [(SFSearchResult_SpotlightExtras *)v6 setEntityData:v49];

    v50 = [v5 entityIdentifier];
    [(SFSearchResult_SpotlightExtras *)v6 setEntityIdentifier:v50];

    v51 = [v5 mapsData];
    [(SFSearchResult_SpotlightExtras *)v6 setMapsData:v51];

    v52 = [v5 normalizedTopic];
    [(SFSearchResult_SpotlightExtras *)v6 setNormalizedTopic:v52];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v5;
      -[SFSearchResult_SpotlightExtras setHasTextContentMatch:](v6, "setHasTextContentMatch:", [v53 hasTextContentMatch]);
      v54 = [v53 mapsPersonalizationResult];
      [(SFSearchResult_SpotlightExtras *)v6 setMapsPersonalizationResult:v54];

      v55 = [v53 backendData];
      v56 = [v55 mutableCopy];
      [(SFSearchResult_SpotlightExtras *)v6 setBackendData:v56];

      v57 = [v53 rankingItem];
      [(SFSearchResult_SpotlightExtras *)v6 setRankingItem:v57];

      v58 = [v53 answerAttributes];
      v59 = [v58 copy];
      [(SFSearchResult_SpotlightExtras *)v6 setAnswerAttributes:v59];

      v60 = [v53 textMatches];
      v61 = [v60 copy];
      [(SFSearchResult_SpotlightExtras *)v6 setTextMatches:v61];

      objc_storeStrong(&v6->_uniformContentType, *(v53 + 99));
      v6->_uniformContentTypeUnavailable = *(v53 + 800);
      v62 = [v53 contentURL];

      [(SFSearchResult_SpotlightExtras *)v6 setContentURL:v62];
    }
  }

  return v6;
}

- (SFSearchResult_SpotlightExtras)initWithResult:(id)a3
{
  v4 = a3;
  v5 = [(SFSearchResult_SpotlightExtras *)self initWithResult:v4 groupId:0];
  if (v5)
  {
    v6 = [v4 lastUsedDate];
    lastUsedDate = v5->_lastUsedDate;
    v5->_lastUsedDate = v6;

    v8 = [v4 contentCreationDate];
    contentCreationDate = v5->_contentCreationDate;
    v5->_contentCreationDate = v8;

    [v4 l2score];
    v5->_l2score = v10;
    v5->_feedbackBlockId = [v4 feedbackBlockId];
    objc_storeStrong(&v5->_uniformContentType, *(v4 + 99));
    v5->_uniformContentTypeUnavailable = *(v4 + 800);
  }

  return v5;
}

- (SFSearchResult_SpotlightExtras)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5 attributeKeys:(id)a6 attributeValues:(id)a7 type:(int)a8 completion:(id)a9
{
  v24 = self;
  v27 = a3;
  v26 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a9;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = [v14 count];
  if (v18 == [v15 count] && v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v20 = [v14 objectAtIndexedSubscript:{i, v24}];
      v21 = [v15 objectAtIndexedSubscript:i];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v17 setObject:v21 forKey:v20];
      }
    }
  }

  v22 = [(SFSearchResult_SpotlightExtras *)v24 initWithIdentifier:v27 bundleIdentifier:v26 protectionClass:v13 attributes:v17 type:a8 completion:v16, v24];

  return v22;
}

- (id)debugDescription
{
  v3 = [(SFSearchResult_SpotlightExtras *)self title];
  v4 = [v3 text];

  if (!v4)
  {
    v5 = [(SFSearchResult_SpotlightExtras *)self compactCard];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(SFSearchResult_SpotlightExtras *)self inlineCard];
    }

    v8 = v7;

    v9 = [v8 cardSections];
    v10 = [v9 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 title];
      v4 = [v11 text];
    }

    else
    {
      v4 = 0;
    }
  }

  v12 = MEMORY[0x1E696AD60];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [(SFSearchResult_SpotlightExtras *)self sectionBundleIdentifier];
  v16 = [v12 stringWithFormat:@"<%@ %p> %@ (%@)", v14, self, v4, v15];

  v17 = [(SFSearchResult_SpotlightExtras *)self sectionBundleIdentifier];
  LODWORD(v15) = SSSectionIsSyndicatedPhotos(v17);

  if (v15)
  {
    v18 = [(SFSearchResult_SpotlightExtras *)self inlineCard];
    v19 = [v18 cardSections];
    v20 = [v19 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 cardSections];
      v22 = [v21 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v22 thumbnail];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v23 photoIdentifier];
          v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v23, "isSyndicated")}];
          [v16 appendFormat:@" PhotoId: %@ isSyndicated: %@", v24, v25];
        }
      }
    }
  }

  return v16;
}

- (id)ttrDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(SFSearchResult_SpotlightExtras *)self debugDescription];
  v5 = [v3 stringWithString:v4];

  v6 = [(SFSearchResult_SpotlightExtras *)self rankingItem];
  v7 = [v6 hasShortCut];
  v8 = [v6 L2FeatureVector];
  v9 = [(SFSearchResult_SpotlightExtras *)self applicationBundleIdentifier];
  v10 = v9;
  if (v9)
  {
    [v5 appendFormat:@"\n\t\tselfBundle:%@", v9];
  }

  else
  {
    v11 = [(SFSearchResult_SpotlightExtras *)self resultBundleId];
    [v5 appendFormat:@"\n\t\tselfBundle:%@", v11];
  }

  [v8 originalL2Score];
  [v5 appendFormat:@"\toriginalL2:%.3f", v12];
  [v8 experimentalScore];
  [v5 appendFormat:@"\texperimentalScore:%.3f", v13];
  [v6 rawScore];
  [v5 appendFormat:@"\n\t\trawScore:%.3f", v14];
  [v6 score];
  [v5 appendFormat:@"\tscore:%.3f", v15];
  [(SFSearchResult_SpotlightExtras *)self l2score];
  [v5 appendFormat:@"\tL2Score:%.3f", v16];
  [v8 scoreForFeature:386];
  [v5 appendFormat:@"\n\t\tparsecEnumScore:%.3f", v17];
  [v8 withinBundleScore];
  [v5 appendFormat:@"\tL2VectorWithinBundleScore:%.3f", v18];
  [v6 withinBundleScore];
  [v5 appendFormat:@"\twithinBundleScore:%.3f", v19];
  [v8 scoreForFeature:366];
  [v5 appendFormat:@"\n\t\tcep:%.6f", v20];
  [v5 appendFormat:@"\ttopHit:%d", -[SFSearchResult_SpotlightExtras topHit](self, "topHit")];
  [v5 appendFormat:@"\tblockId:%llu", -[SFSearchResult_SpotlightExtras blockId](self, "blockId")];
  [v5 appendFormat:@"\n\t\tsafariTophit:%d", -[SFSearchResult_SpotlightExtras isSafariTopHit](self, "isSafariTopHit")];
  [v5 appendFormat:@"\thasShortcut:%d", v7];
  [v5 appendFormat:@"\tisFuzzyMatch:%d", -[SFSearchResult_SpotlightExtras isFuzzyMatch](self, "isFuzzyMatch")];
  [v5 appendFormat:@"\n\t\tshouldUseCompactDisplay:%d", -[SFSearchResult_SpotlightExtras shouldUseCompactDisplay](self, "shouldUseCompactDisplay")];
  [v5 appendFormat:@"\tusesCompactDisplay:%d", -[SFSearchResult_SpotlightExtras usesCompactDisplay](self, "usesCompactDisplay")];
  [v5 appendFormat:@"\tusesTopHitDisplay:%d", -[SFSearchResult_SpotlightExtras usesTopHitDisplay](self, "usesTopHitDisplay")];
  [v5 appendFormat:@"\tshouldHideUnderShowMore:%d", objc_msgSend(v6, "shouldHideUnderShowMore")];
  [v5 appendFormat:@"\n\t\tphotosMatch:%d", objc_msgSend(v6, "photosMatch")];
  if (SSResultTypeIsLocalSuggestion([(SFSearchResult_SpotlightExtras *)self type]))
  {
    [v5 appendFormat:@"\ttype:%d", -[SFSearchResult_SpotlightExtras type](self, "type")];
    [(SFSearchResult_SpotlightExtras *)self rankingScore];
    [v5 appendFormat:@"\trankingScore:%f", v21];
  }

  return v5;
}

- (id)getStableServerResultIdentifier
{
  v3 = [(SFSearchResult_SpotlightExtras *)self sectionBundleIdentifier];
  if (![v3 isEqualToString:@"com.apple.parsec.stocks"])
  {
LABEL_5:

    goto LABEL_6;
  }

  v4 = [(SFSearchResult_SpotlightExtras *)self identifier];
  v5 = [v4 hasSuffix:@"high_low"];

  if (v5)
  {
    v6 = [(SFSearchResult_SpotlightExtras *)self identifier];
    v3 = [v6 componentsSeparatedByString:@"-"];

    if ([v3 count] == 3)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [v3 objectAtIndexedSubscript:1];
      v9 = [v7 stringWithFormat:@"st:%@", v8];

      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_6:
  v9 = [(SFSearchResult_SpotlightExtras *)self identifier];
LABEL_7:

  return v9;
}

- (id)urlValueForAttribute:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFSearchResult_SpotlightExtras *)self valueForAttribute:v4 withType:objc_opt_class()];
  if (!v5)
  {
    v6 = [(SFSearchResult_SpotlightExtras *)self valueForAttribute:v4 withType:objc_opt_class()];
    if ([v6 length])
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v6];
      v7 = SSGeneralLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1D9F69000, v7, OS_LOG_TYPE_INFO, "%@ found to be NSString instead of NSURL. Converting to NSURL.", &v10, 0xCu);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fullAttributeSet
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(SFSearchResult_SpotlightExtras *)self backendData];
  if (!v3)
  {
    v4 = [(SFSearchResult_SpotlightExtras *)self attributeData];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = objc_alloc(MEMORY[0x1E6964E08]);
    v3 = [(SFSearchResult_SpotlightExtras *)self attributeData];
    v6 = [v5 initWithData:v3];
    v7 = [v6 decode];
    v8 = [v7 mutableCopy];
    [(SFSearchResult_SpotlightExtras *)self setBackendData:v8];
  }

LABEL_5:
  v9 = [(SFSearchResult_SpotlightExtras *)self backendData];

  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [(SFSearchResult_SpotlightExtras *)self contentType];
    v9 = [v10 initWithItemContentType:v11];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [(SFSearchResult_SpotlightExtras *)self backendData];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [(SFSearchResult_SpotlightExtras *)self backendData];
          v19 = [v18 objectForKey:v17];

          [v9 setAttribute:v19 forKey:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setContentType:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFSearchResult_SpotlightExtras;
  [(SFSearchResult_SpotlightExtras *)&v5 setContentType:a3];
  uniformContentType = self->_uniformContentType;
  self->_uniformContentType = 0;

  self->_uniformContentTypeUnavailable = 0;
}

- (UTType)uniformContentType
{
  uniformContentType = self->_uniformContentType;
  if (!uniformContentType)
  {
    if (self->_uniformContentTypeUnavailable)
    {
      uniformContentType = 0;
      goto LABEL_9;
    }

    v4 = [(SFSearchResult_SpotlightExtras *)self contentType];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = [(SFSearchResult_SpotlightExtras *)self contentTypeTree];
      v5 = [v6 lastObject];

      if (!v5)
      {
LABEL_8:
        self->_uniformContentTypeUnavailable = self->_uniformContentType == 0;
        uniformContentType = self->_uniformContentType;
        goto LABEL_9;
      }
    }

    v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:v5];
    v8 = self->_uniformContentType;
    self->_uniformContentType = v7;

    goto LABEL_8;
  }

LABEL_9:

  return uniformContentType;
}

- (void)setUniformContentType:(id)a3
{
  v4 = a3;
  v5 = [(UTType *)v4 identifier];
  [(SFSearchResult_SpotlightExtras *)self setContentType:v5];

  uniformContentType = self->_uniformContentType;
  self->_uniformContentType = v4;

  self->_uniformContentTypeUnavailable = 0;
}

- (SFSearchResult_SpotlightExtras)initWithCoder:(id)a3
{
  v4 = a3;
  v63.receiver = self;
  v63.super_class = SFSearchResult_SpotlightExtras;
  v5 = [(SFSearchResult_SpotlightExtras *)&v63 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(SFSearchResult_SpotlightExtras *)v5 url];

    if (v7)
    {
      v8 = [(SFSearchResult_SpotlightExtras *)v6 url];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [SFSearchResult_SpotlightExtras initWithCoder:];
      }
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_protectionClass"];
    protectionClass = v6->_protectionClass;
    v6->_protectionClass = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_launchString"];
    launchString = v6->_launchString;
    v6->_launchString = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_filename"];
    filename = v6->_filename;
    v6->_filename = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fileIdentifier"];
    fileIdentifier = v6->_fileIdentifier;
    v6->_fileIdentifier = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_parentFileIdentifier"];
    parentFileIdentifier = v6->_parentFileIdentifier;
    v6->_parentFileIdentifier = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_documentIdentifier"];
    documentIdentifier = v6->_documentIdentifier;
    v6->_documentIdentifier = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userActivityType"];
    userActivityType = v6->_userActivityType;
    v6->_userActivityType = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contentURL"];
    contentURL = v6->_contentURL;
    v6->_contentURL = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_personIdentifier"];
    personIdentifier = v6->_personIdentifier;
    v6->_personIdentifier = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_personQueryIdentifier"];
    personQueryIdentifier = v6->_personQueryIdentifier;
    v6->_personQueryIdentifier = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_relatedAppIdentifier"];
    relatedAppIdentifier = v6->_relatedAppIdentifier;
    v6->_relatedAppIdentifier = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_formattedSnippet"];
    formattedSnippet = v6->_formattedSnippet;
    v6->_formattedSnippet = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayOrder"];
    displayOrder = v6->_displayOrder;
    v6->_displayOrder = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_suggestionsFeedbackData"];
    suggestionsFeedbackData = v6->_suggestionsFeedbackData;
    v6->_suggestionsFeedbackData = v35;

    v6->_hasCommunicationContent = [v4 decodeBoolForKey:@"_hasCommunicationContent"];
    v6->_hasTextContent = [v4 decodeBoolForKey:@"_hasTextContent"];
    v6->_hasTextContentMatch = [v4 decodeBoolForKey:@"_hasTextContentMatch"];
    v6->_predictionsFeedbackActionType = [v4 decodeIntegerForKey:@"_predictionsFeedbackActionType"];
    [v4 decodeFloatForKey:@"_l2score"];
    v6->_l2score = v37;
    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"_duplicatedItems"];
    duplicatedItems = v6->_duplicatedItems;
    v6->_duplicatedItems = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_attributeData"];
    attributeData = v6->_attributeData;
    v6->_attributeData = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastUsedDate"];
    lastUsedDate = v6->_lastUsedDate;
    v6->_lastUsedDate = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contentCreationDate"];
    contentCreationDate = v6->_contentCreationDate;
    v6->_contentCreationDate = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_isAppClip"];
    v6->_isAppClip = [v49 BOOLValue];

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_isWebClip"];
    v6->_isWebClip = [v50 BOOLValue];

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uniformContentType"];
    uniformContentType = v6->_uniformContentType;
    v6->_uniformContentType = v51;

    v6->_uniformContentTypeUnavailable = [v4 decodeBoolForKey:@"_uniformContentTypeUnavailable"];
    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_rankingItem"];
    rankingItem = v6->_rankingItem;
    v6->_rankingItem = v53;

    if (!v6->_rankingItem)
    {
      v55 = objc_alloc_init(PRSRankingItem);
      v56 = v6->_rankingItem;
      v6->_rankingItem = v55;
    }

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_l2Signals"];
    [(PRSRankingItem *)v6->_rankingItem setL2Signals:v57];

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mapsPersonalizationResult"];
    mapsPersonalizationResult = v6->_mapsPersonalizationResult;
    v6->_mapsPersonalizationResult = v58;

    v60 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_answerAttributes"];
    answerAttributes = v6->_answerAttributes;
    v6->_answerAttributes = v60;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SFSearchResult_SpotlightExtras;
  [(SFSearchResult_SpotlightExtras *)&v37 encodeWithCoder:v4];
  v5 = [(SFSearchResult_SpotlightExtras *)self url];

  if (v5)
  {
    v6 = [(SFSearchResult_SpotlightExtras *)self url];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SFSearchResult_SpotlightExtras encodeWithCoder:];
    }
  }

  v36.receiver = self;
  v36.super_class = SFSearchResult_SpotlightExtras;
  [(SFSearchResult_SpotlightExtras *)&v36 encodeWithCoder:v4];
  protectionClass = self->_protectionClass;
  if (protectionClass)
  {
    [v4 encodeObject:protectionClass forKey:@"_protectionClass"];
  }

  launchString = self->_launchString;
  if (launchString)
  {
    [v4 encodeObject:launchString forKey:@"_launchString"];
  }

  filename = self->_filename;
  if (filename)
  {
    [v4 encodeObject:filename forKey:@"_filename"];
  }

  fileIdentifier = self->_fileIdentifier;
  if (fileIdentifier)
  {
    [v4 encodeObject:fileIdentifier forKey:@"_fileIdentifier"];
  }

  parentFileIdentifier = self->_parentFileIdentifier;
  if (parentFileIdentifier)
  {
    [v4 encodeObject:parentFileIdentifier forKey:@"_parentFileIdentifier"];
  }

  documentIdentifier = self->_documentIdentifier;
  if (documentIdentifier)
  {
    [v4 encodeObject:documentIdentifier forKey:@"_documentIdentifier"];
  }

  userActivityType = self->_userActivityType;
  if (userActivityType)
  {
    [v4 encodeObject:userActivityType forKey:@"_userActivityType"];
  }

  contentURL = self->_contentURL;
  if (contentURL)
  {
    [v4 encodeObject:contentURL forKey:@"_contentURL"];
  }

  personIdentifier = self->_personIdentifier;
  if (personIdentifier)
  {
    [v4 encodeObject:personIdentifier forKey:@"_personIdentifier"];
  }

  personQueryIdentifier = self->_personQueryIdentifier;
  if (personQueryIdentifier)
  {
    [v4 encodeObject:personQueryIdentifier forKey:@"_personQueryIdentifier"];
  }

  relatedAppIdentifier = self->_relatedAppIdentifier;
  if (relatedAppIdentifier)
  {
    [v4 encodeObject:relatedAppIdentifier forKey:@"_relatedAppIdentifier"];
  }

  formattedSnippet = self->_formattedSnippet;
  if (formattedSnippet)
  {
    [v4 encodeObject:formattedSnippet forKey:@"_formattedSnippet"];
  }

  displayOrder = self->_displayOrder;
  if (displayOrder)
  {
    [v4 encodeObject:displayOrder forKey:@"_displayOrder"];
  }

  suggestionsFeedbackData = self->_suggestionsFeedbackData;
  if (suggestionsFeedbackData)
  {
    [v4 encodeObject:suggestionsFeedbackData forKey:@"_suggestionsFeedbackData"];
  }

  if (self->_hasCommunicationContent)
  {
    [v4 encodeBool:1 forKey:@"_hasCommunicationContent"];
  }

  if (self->_hasTextContent)
  {
    [v4 encodeBool:1 forKey:@"_hasTextContent"];
  }

  if (self->_hasTextContentMatch)
  {
    [v4 encodeBool:1 forKey:@"_hasTextContentMatch"];
  }

  predictionsFeedbackActionType = self->_predictionsFeedbackActionType;
  if (predictionsFeedbackActionType)
  {
    [v4 encodeInteger:predictionsFeedbackActionType forKey:@"_predictionsFeedbackActionType"];
  }

  *&v7 = self->_l2score;
  [v4 encodeFloat:@"_l2score" forKey:v7];
  duplicatedItems = self->_duplicatedItems;
  if (duplicatedItems)
  {
    [v4 encodeObject:duplicatedItems forKey:@"_duplicatedItems"];
  }

  attributeData = self->_attributeData;
  if (attributeData)
  {
    [v4 encodeObject:attributeData forKey:@"_attributeData"];
  }

  lastUsedDate = self->_lastUsedDate;
  if (lastUsedDate)
  {
    [v4 encodeObject:lastUsedDate forKey:@"_lastUsedDate"];
  }

  contentCreationDate = self->_contentCreationDate;
  if (contentCreationDate)
  {
    [v4 encodeObject:contentCreationDate forKey:@"_contentCreationDate"];
  }

  if (self->_isAppClip)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v4 encodeObject:v27 forKey:@"_isAppClip"];
  }

  if (self->_isWebClip)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v4 encodeObject:v28 forKey:@"_isWebClip"];
  }

  uniformContentType = self->_uniformContentType;
  if (uniformContentType)
  {
    [v4 encodeObject:uniformContentType forKey:@"_uniformContentType"];
  }

  [v4 encodeBool:self->_uniformContentTypeUnavailable forKey:@"_uniformContentTypeUnavailable"];
  rankingItem = self->_rankingItem;
  if (rankingItem)
  {
    [v4 encodeObject:rankingItem forKey:@"_rankingItem"];
    v31 = self->_rankingItem;
  }

  else
  {
    v31 = 0;
  }

  v32 = [(PRSRankingItem *)v31 l2Signals];

  if (v32)
  {
    v33 = [(PRSRankingItem *)self->_rankingItem l2Signals];
    [v4 encodeObject:v33 forKey:@"_l2Signals"];
  }

  mapsPersonalizationResult = self->_mapsPersonalizationResult;
  if (mapsPersonalizationResult)
  {
    [v4 encodeObject:mapsPersonalizationResult forKey:@"_mapsPersonalizationResult"];
  }

  answerAttributes = self->_answerAttributes;
  if (answerAttributes)
  {
    [v4 encodeObject:answerAttributes forKey:@"_answerAttributes"];
  }
}

- (void)setFeedbackPropertiesOnResultCopy:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SFSearchResult_SpotlightExtras;
  [(SFSearchResult *)&v25 setFeedbackPropertiesOnResultCopy:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SFSearchResult_SpotlightExtras *)self duplicatedItems];
    [v4 setDuplicatedItems:v5];

    v6 = [(SFSearchResult_SpotlightExtras *)self attributeData];
    [v4 setAttributeData:v6];

    v7 = [(SFSearchResult_SpotlightExtras *)self personIdentifier];
    [v4 setPersonIdentifier:v7];

    v8 = [(SFSearchResult_SpotlightExtras *)self personQueryIdentifier];
    [v4 setPersonQueryIdentifier:v8];

    v9 = [(SFSearchResult_SpotlightExtras *)self relatedAppIdentifier];
    [v4 setRelatedAppIdentifier:v9];

    v10 = [(SFSearchResult_SpotlightExtras *)self formattedSnippet];
    [v4 setFormattedSnippet:v10];

    v11 = [(SFSearchResult_SpotlightExtras *)self displayOrder];
    [v4 setDisplayOrder:v11];

    [v4 setIsAppClip:{-[SFSearchResult_SpotlightExtras isAppClip](self, "isAppClip")}];
    [v4 setIsWebClip:{-[SFSearchResult_SpotlightExtras isWebClip](self, "isWebClip")}];
    v12 = [(SFSearchResult_SpotlightExtras *)self userActivityType];
    [v4 setUserActivityType:v12];

    v13 = [(SFSearchResult_SpotlightExtras *)self userActivityRequiredString];
    [v4 setUserActivityRequiredString:v13];

    v14 = [(SFSearchResult_SpotlightExtras *)self userActivityType];
    v15 = [v14 isEqualToString:@"/app/intents"];

    if (v15)
    {
      v16 = 3;
LABEL_9:
      [v4 setPredictionsFeedbackActionType:v16];
      v20 = [(SFSearchResult_SpotlightExtras *)self protectionClass];
      [v4 setProtectionClass:v20];

      v21 = [(SFSearchResult_SpotlightExtras *)self launchString];
      [v4 setLaunchString:v21];

      v22 = [(SFSearchResult_SpotlightExtras *)self suggestionsFeedbackData];
      [v4 setSuggestionsFeedbackData:v22];

      v23 = [(SFSearchResult_SpotlightExtras *)self mapsPersonalizationResult];
      [v4 setMapsPersonalizationResult:v23];

      v24 = [(SFSearchResult_SpotlightExtras *)self answerAttributes];
      [v4 setAnswerAttributes:v24];

      goto LABEL_10;
    }

    v17 = [(SFSearchResult_SpotlightExtras *)self userActivityRequiredString];
    if ([v17 length])
    {
      v18 = [(SFSearchResult_SpotlightExtras *)self userActivityType];
      v19 = [v18 length];

      if (v19)
      {
        v16 = 1;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = 4;
    goto LABEL_9;
  }

LABEL_10:
}

- (SFSearchResult_SpotlightExtras)init
{
  v3.receiver = self;
  v3.super_class = SFSearchResult_SpotlightExtras;
  return [(SFSearchResult_SpotlightExtras *)&v3 init];
}

- (void)setUrl:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SFSearchResult_SpotlightExtras setUrl:];
    }
  }

  v5.receiver = self;
  v5.super_class = SFSearchResult_SpotlightExtras;
  [(SFSearchResult_SpotlightExtras *)&v5 setUrl:v4];
}

- (id)punchout
{
  v19.receiver = self;
  v19.super_class = SFSearchResult_SpotlightExtras;
  v3 = [(SFSearchResult_SpotlightExtras *)&v19 punchout];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  cachedPunchout = self->_cachedPunchout;
  if (cachedPunchout)
  {
    v5 = cachedPunchout;
    goto LABEL_5;
  }

  v9 = [(SFSearchResult_SpotlightExtras *)self resultBundleId];
  if ([v9 isEqualToString:@"com.apple.DocumentsApp"])
  {
    v10 = [(SFSearchResult_SpotlightExtras *)self documentIdentifier];

    if (v10)
    {
      v11 = MEMORY[0x1E695DFF8];
      v12 = [(SFSearchResult_SpotlightExtras *)self fileIdentifier];
      v13 = [(SFSearchResult_SpotlightExtras *)self filename];
      v14 = [(SFSearchResult_SpotlightExtras *)self parentFileIdentifier];
      v15 = [(SFSearchResult_SpotlightExtras *)self documentIdentifier];
      v16 = [v11 sp_URLFromFileID:v12 filename:v13 parentFileID:v14 documentID:v15];

      if (v16)
      {
        v17 = [MEMORY[0x1E69CA320] punchoutWithURL:v16];
        v18 = self->_cachedPunchout;
        self->_cachedPunchout = v17;

        v7 = self->_cachedPunchout;
        goto LABEL_6;
      }
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (BOOL)isSafariTopHitForQuery:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SFSearchResult_SpotlightExtras *)self contentURL];
    v6 = v5;
    if (!v5)
    {
      NSLog(&cfstr_DidnTFindMdite.isa, self);
      goto LABEL_13;
    }

    if ([v5 hasPrefix:@"https://"])
    {
      v7 = 8;
    }

    else
    {
      if (![v6 hasPrefix:@"http://"])
      {
        goto LABEL_10;
      }

      v7 = 7;
    }

    v9 = [v6 substringFromIndex:v7];

    v6 = v9;
LABEL_10:
    if ([v6 hasPrefix:@"www."])
    {
      v10 = [v6 substringFromIndex:4];

      v6 = v10;
    }

    if ([v6 rangeOfString:v4 options:9] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v8 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (id)valueForAttribute:(id)a3 withType:(Class)a4
{
  v5 = a3;
  v6 = [(SFSearchResult_SpotlightExtras *)self backendData];
  if (!v6)
  {
    v7 = [(SFSearchResult_SpotlightExtras *)self attributeData];

    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = objc_alloc(MEMORY[0x1E6964E08]);
    v6 = [(SFSearchResult_SpotlightExtras *)self attributeData];
    v9 = [v8 initWithData:v6];
    v10 = [v9 decode];
    v11 = [v10 mutableCopy];
    [(SFSearchResult_SpotlightExtras *)self setBackendData:v11];
  }

LABEL_5:
  v12 = [(SFSearchResult_SpotlightExtras *)self backendData];
  v13 = [v12 objectForKey:v5];

  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (uint64_t)score
{
  v1 = a1 + 1040;
  result = *(a1 + 1040);
  v3 = *(v1 + 8);
  return result;
}

@end