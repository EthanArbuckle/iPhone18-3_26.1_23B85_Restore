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
  v1 = [MEMORY[0x1E696AFB0] UUID];
  v2 = [v1 UUIDString];
  [v0 setIdentifier:v2];

  return v0;
}

- (id)safari_identifierForCaching
{
  v2 = [a1 identifier];
  v3 = MEMORY[0x1E696AD98];
  v4 = [a1 completedQuery];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "hash")}];
  v6 = [v5 stringValue];
  v7 = [v2 stringByAppendingString:v6];

  return v7;
}

- (id)uuidString
{
  v2 = objc_getAssociatedObject(a1, sel_uuidString);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v2 = [v3 UUIDString];

    objc_setAssociatedObject(a1, sel_uuidString, v2, 1);
  }

  return v2;
}

- (uint64_t)engagementDestination
{
  v1 = [a1 inlineCard];
  v2 = [v1 cardSections];
  v3 = [v2 firstObject];
  v4 = [v3 punchoutOptions];

  v5 = [v4 firstObject];
  v6 = [v5 preferredOpenableURL];
  LODWORD(v2) = v6 != 0;

  return 2 * v2;
}

- (id)safari_firstInlineCardSectionOfClass:()SafariSharedExtras
{
  v5 = [a1 inlineCard];
  v6 = [a1 _firstCardSectionOfClass:a3 ofCard:v5];

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
  v6 = [v5 cardSections];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__SFSearchResult_SafariSharedExtras___firstCardSectionOfClass_ofCard___block_invoke;
  v9[3] = &unk_1E7FC6A50;
  v9[4] = &v10;
  v9[5] = a3;
  [v6 enumerateObjectsUsingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

@end