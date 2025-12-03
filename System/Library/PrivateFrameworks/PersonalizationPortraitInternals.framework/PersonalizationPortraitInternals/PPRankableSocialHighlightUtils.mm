@interface PPRankableSocialHighlightUtils
+ (BOOL)isSearchableItemCollaboration:(id)collaboration;
+ (id)rankableHighlightFromSearchableItem:(id)item attribution:(id)attribution autoDonatingChats:(id)chats applicationIdentifiers:(id)identifiers clientIdentifier:(id)identifier variant:(id)variant;
+ (id)rankableHighlightFromSyncedItem:(id)item applicationIdentifiers:(id)identifiers clientIdentifier:(id)identifier;
+ (int)socialContactSourceForContactSource:(unsigned __int8)source;
@end

@implementation PPRankableSocialHighlightUtils

+ (BOOL)isSearchableItemCollaboration:(id)collaboration
{
  attributeSet = [collaboration attributeSet];
  v4 = [attributeSet attributeForKey:*MEMORY[0x277CC2CA0]];

  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v4 unsignedIntegerValue] - 1) < 2;
  return v5;
}

+ (id)rankableHighlightFromSearchableItem:(id)item attribution:(id)attribution autoDonatingChats:(id)chats applicationIdentifiers:(id)identifiers clientIdentifier:(id)identifier variant:(id)variant
{
  v90 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  attributionCopy = attribution;
  chatsCopy = chats;
  identifiersCopy = identifiers;
  variantCopy = variant;
  identifierCopy = identifier;
  v19 = objc_opt_new();
  v20 = [identifiersCopy mutableCopy];
  [v19 setApplicationIdentifiers:v20];

  [v19 setClientIdentifier:identifierCopy];
  [v19 setVariant:variantCopy];

  attributeSet = [itemCopy attributeSet];
  v22 = [attributeSet URL];
  absoluteString = [v22 absoluteString];
  [v19 setResourceUrl:absoluteString];

  resourceUrl = [v19 resourceUrl];

  if (resourceUrl)
  {
    attributeSet2 = [itemCopy attributeSet];
    v26 = [attributeSet2 attributeForKey:@"com_apple_mobilesms_resolvedURL"];

    if (v26)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v19 setResolvedUrl:v26];
      }
    }

    attributeSet3 = [itemCopy attributeSet];
    v28 = [attributeSet3 URL];

    resolvedUrl = [v19 resolvedUrl];

    if (resolvedUrl && [v28 nr_isNewsURL])
    {
      v30 = objc_alloc(MEMORY[0x277CBEBC0]);
      resolvedUrl2 = [v19 resolvedUrl];
      v32 = [v30 initWithString:resolvedUrl2];

      v28 = v32;
    }

    _lp_simplifiedURLStringForFuzzyMatching = [v28 _lp_simplifiedURLStringForFuzzyMatching];
    if (!_lp_simplifiedURLStringForFuzzyMatching)
    {
      absoluteString2 = [v28 absoluteString];
      v35 = absoluteString2;
      if (absoluteString2)
      {
        _lp_simplifiedURLStringForFuzzyMatching = absoluteString2;
      }

      else
      {
        attributeSet4 = [itemCopy attributeSet];
        [attributeSet4 URL];
        v85 = v26;
        v38 = identifiersCopy;
        v39 = v28;
        v41 = v40 = chatsCopy;
        _lp_simplifiedURLStringForFuzzyMatching = [v41 absoluteString];

        chatsCopy = v40;
        v28 = v39;
        identifiersCopy = v38;
        v26 = v85;
      }
    }

    v87 = v28;
    v42 = pp_default_log_handle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138739971;
      v89 = _lp_simplifiedURLStringForFuzzyMatching;
      _os_log_debug_impl(&dword_23224A000, v42, OS_LOG_TYPE_DEBUG, "RankableSocialHighlight using comparisonURL: '%{sensitive}@'", buf, 0xCu);
    }

    v86 = [_lp_simplifiedURLStringForFuzzyMatching dataUsingEncoding:4];
    v43 = [MEMORY[0x277D3A578] Sha256ForData:? withSalt:?];
    v44 = [v43 base64EncodedStringWithOptions:0];

    v84 = v44;
    [v19 setHighlightIdentifier:v44];
    if ([attributionCopy isStarred])
    {
      v45 = 2;
    }

    else
    {
      v45 = 1;
    }

    [v19 setHighlightType:v45];
    attributeSet5 = [itemCopy attributeSet];
    contentCreationDate = [attributeSet5 contentCreationDate];
    [contentCreationDate timeIntervalSinceReferenceDate];
    [v19 setContentCreationSecondsSinceReferenceDate:?];

    timestamp = [attributionCopy timestamp];
    [timestamp timeIntervalSinceReferenceDate];
    [v19 setSyndicationSecondsSinceReferenceDate:?];
    bundleID = [itemCopy bundleID];
    [v19 setSourceBundleId:bundleID];

    sourceBundleId = [v19 sourceBundleId];

    if (sourceBundleId)
    {
      v82 = chatsCopy;
      groupDisplayName = [attributionCopy groupDisplayName];
      [v19 setDisplayName:groupDisplayName];

      groupPhotoPath = [attributionCopy groupPhotoPath];
      dataRepresentation = [groupPhotoPath dataRepresentation];

      if (dataRepresentation)
      {
        v53 = [MEMORY[0x277D3A578] Sha256ForData:dataRepresentation withSalt:0];
        v54 = [v53 base64EncodedStringWithOptions:0];
        v55 = [v54 substringToIndex:8];
        [v19 setGroupPhotoPathDigest:v55];
      }

      identifier = [attributionCopy identifier];
      [v19 setAttributionIdentifier:identifier];

      conversationIdentifier = [attributionCopy conversationIdentifier];
      [v19 setDomainIdentifier:conversationIdentifier];

      v58 = objc_opt_new();
      [v58 setIsMe:{objc_msgSend(attributionCopy, "isFromMe")}];
      sender = [attributionCopy sender];
      handle = [sender handle];
      [v58 setHandle:handle];

      [v58 setIsSignificant:0];
      [v19 setSender:v58];
      conversationIdentifier2 = [attributionCopy conversationIdentifier];

      if (conversationIdentifier2)
      {
        conversationIdentifier3 = [attributionCopy conversationIdentifier];
        [v19 setIsConversationAutoDonating:{objc_msgSend(v82, "containsObject:", conversationIdentifier3)}];
      }

      attributeSet6 = [itemCopy attributeSet];
      filename = [attributeSet6 filename];
      [v19 setContentDisplayName:filename];

      contentDisplayName = [v19 contentDisplayName];

      if (!contentDisplayName)
      {
        attributeSet7 = [itemCopy attributeSet];
        contentSnippet = [attributeSet7 contentSnippet];
        [v19 setContentDisplayName:contentSnippet];
      }

      attributeSet8 = [itemCopy attributeSet];
      contentType = [attributeSet8 contentType];
      [v19 setContentType:contentType];

      attributeSet9 = [itemCopy attributeSet];
      v71 = [attributeSet9 attributeForKey:@"com_apple_mobilesms_collaborationIdentifier"];
      [v19 setCollaborationIdentifier:v71];

      [v19 setIsCollaboration:{+[PPRankableSocialHighlightUtils isSearchableItemCollaboration:](PPRankableSocialHighlightUtils, "isSearchableItemCollaboration:", itemCopy)}];
      attributeSet10 = [itemCopy attributeSet];
      fileProviderID = [attributeSet10 fileProviderID];
      [v19 setFileProviderId:fileProviderID];

      attributeSet11 = [itemCopy attributeSet];
      v75 = [attributeSet11 attributeForKey:@"com_apple_mobilesms_localIdentity"];
      [v19 setLocalIdentity:v75];

      attributeSet12 = [itemCopy attributeSet];
      v77 = [attributeSet12 attributeForKey:@"com_apple_mobilesms_localIdentityProof"];
      [v19 setLocalIdentityProof:v77];

      [v19 setFromMeEntitlementOverrideIsPresent:{objc_msgSend(identifiersCopy, "containsObject:", @"fromMe"}];
      if ([identifiersCopy containsObject:@"com.apple.private.sociallayer.highlights"])
      {
        attributeSet13 = [itemCopy attributeSet];
        v79 = [attributeSet13 attributeForKey:@"com_apple_mobilesms_handleToIdentityMap"];
        [v19 setHandleToIdentityMap:v79];
      }

      v36 = v19;

      chatsCopy = v82;
      v28 = v87;
    }

    else
    {
      dataRepresentation = pp_default_log_handle();
      if (os_log_type_enabled(dataRepresentation, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_23224A000, dataRepresentation, OS_LOG_TYPE_FAULT, "RankableSocialHighlight attribute error: bundleID on CSSI is nil", buf, 2u);
      }

      v36 = 0;
    }
  }

  else
  {
    v26 = pp_default_log_handle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23224A000, v26, OS_LOG_TYPE_FAULT, "RankableSocialHighlight attribute error: resourceURL cannot be nil on CSSI", buf, 2u);
    }

    v36 = 0;
  }

  v80 = *MEMORY[0x277D85DE8];

  return v36;
}

+ (id)rankableHighlightFromSyncedItem:(id)item applicationIdentifiers:(id)identifiers clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  itemCopy = item;
  v10 = objc_opt_new();
  highlight = [itemCopy highlight];
  identifier = [highlight identifier];
  [v10 setHighlightIdentifier:identifier];

  highlight2 = [itemCopy highlight];
  score = [highlight2 score];
  [score doubleValue];
  [v10 setScore:?];

  v15 = [identifiersCopy mutableCopy];
  [v10 setApplicationIdentifiers:v15];

  [v10 setClientIdentifier:identifierCopy];
  highlight3 = [itemCopy highlight];
  resourceURL = [highlight3 resourceURL];
  absoluteString = [resourceURL absoluteString];
  [v10 setResourceUrl:absoluteString];

  highlight4 = [itemCopy highlight];
  timestamp = [highlight4 timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  [v10 setSyndicationSecondsSinceReferenceDate:?];

  originatingDeviceId = [itemCopy originatingDeviceId];
  [v10 setOriginatingDeviceId:originatingDeviceId];

  rankingDate = [itemCopy rankingDate];

  [rankingDate timeIntervalSinceReferenceDate];
  [v10 setRankingSecondsSinceReferenceDate:?];

  return v10;
}

+ (int)socialContactSourceForContactSource:(unsigned __int8)source
{
  if (source == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (source)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

@end