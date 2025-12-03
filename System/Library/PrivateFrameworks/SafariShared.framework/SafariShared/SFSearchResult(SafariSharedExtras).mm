@interface SFSearchResult(SafariSharedExtras)
+ (id)safari_sfSearchResultWithUniqueIdentifier;
- (id)_firstCardSectionOfClass:()SafariSharedExtras ofCard:;
- (id)safari_firstInlineCardSectionOfClass:()SafariSharedExtras;
- (id)safari_identifierForCaching;
- (id)uuidString;
- (uint64_t)engagementDestination;
@end

@implementation SFSearchResult(SafariSharedExtras)

+ (id)safari_sfSearchResultWithUniqueIdentifier
{
  v0 = objc_alloc_init(MEMORY[0x1E69CA3E8]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v0 setIdentifier:uUIDString];

  return v0;
}

- (id)safari_identifierForCaching
{
  identifier = [self identifier];
  v3 = MEMORY[0x1E696AD98];
  completedQuery = [self completedQuery];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(completedQuery, "hash")}];
  stringValue = [v5 stringValue];
  v7 = [identifier stringByAppendingString:stringValue];

  return v7;
}

- (id)uuidString
{
  uUIDString = objc_getAssociatedObject(self, sel_uuidString);
  if (!uUIDString)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    objc_setAssociatedObject(self, sel_uuidString, uUIDString, 1);
  }

  return uUIDString;
}

- (uint64_t)engagementDestination
{
  inlineCard = [self inlineCard];
  cardSections = [inlineCard cardSections];
  firstObject = [cardSections firstObject];
  punchoutOptions = [firstObject punchoutOptions];

  firstObject2 = [punchoutOptions firstObject];
  preferredOpenableURL = [firstObject2 preferredOpenableURL];
  LODWORD(cardSections) = preferredOpenableURL != 0;

  return 2 * cardSections;
}

- (id)safari_firstInlineCardSectionOfClass:()SafariSharedExtras
{
  inlineCard = [self inlineCard];
  v6 = [self _firstCardSectionOfClass:a3 ofCard:inlineCard];

  return v6;
}

- (id)_firstCardSectionOfClass:()SafariSharedExtras ofCard:
{
  v5 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__18;
  v14 = __Block_byref_object_dispose__18;
  v15 = 0;
  cardSections = [v5 cardSections];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__SFSearchResult_SafariSharedExtras___firstCardSectionOfClass_ofCard___block_invoke;
  v9[3] = &unk_1E7FC6A50;
  v9[4] = &v10;
  v9[5] = a3;
  [cardSections enumerateObjectsUsingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

@end