@interface SSSearchToolDonation
- (SSSearchToolDonation)init;
- (void)donateSpotlightRankingItemsWithQuery:(id)a3 data:(id)a4 timestamp:(id)a5 requestID:(id)a6;
@end

@implementation SSSearchToolDonation

- (SSSearchToolDonation)init
{
  v10.receiver = self;
  v10.super_class = SSSearchToolDonation;
  v2 = [(SSSearchToolDonation *)&v10 init];
  if (v2 && BiomeLibraryInternalLibraryCore())
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v3 = getBiomeLibraryInternalSymbolLoc_ptr;
    v15 = getBiomeLibraryInternalSymbolLoc_ptr;
    if (!getBiomeLibraryInternalSymbolLoc_ptr)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getBiomeLibraryInternalSymbolLoc_block_invoke;
      v11[3] = &unk_1E8595470;
      v11[4] = &v12;
      __getBiomeLibraryInternalSymbolLoc_block_invoke(v11);
      v3 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v3)
    {
      [SSSearchToolDonation init];
    }

    v4 = v3();
    v5 = [v4 SearchTool];
    v6 = [v5 Transcript];

    v7 = [v6 source];
    searchToolTranscriptSource = v2->searchToolTranscriptSource;
    v2->searchToolTranscriptSource = v7;
  }

  return v2;
}

- (void)donateSpotlightRankingItemsWithQuery:(id)a3 data:(id)a4 timestamp:(id)a5 requestID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (BiomeLibraryInternalLibraryCore() && self->searchToolTranscriptSource)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v14 = getBMISearchToolTranscriptClass_softClass;
    v21 = getBMISearchToolTranscriptClass_softClass;
    if (!getBMISearchToolTranscriptClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getBMISearchToolTranscriptClass_block_invoke;
      v17[3] = &unk_1E8595470;
      v17[4] = &v18;
      __getBMISearchToolTranscriptClass_block_invoke(v17);
      v14 = v19[3];
    }

    v15 = v14;
    _Block_object_dispose(&v18, 8);
    v16 = [[v14 alloc] initWithAbsoluteTimestamp:v12 requestId:v13 query:v10 eventType:@"spotlightRankingLogs" data:v11];
    [(BMSource *)self->searchToolTranscriptSource sendEvent:v16];
  }
}

@end