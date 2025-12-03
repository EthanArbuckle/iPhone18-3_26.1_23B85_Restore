@interface PGSharingSuggestionOptions
+ (id)optionsForClient:(unint64_t)client;
- (PGSharingSuggestionOptions)init;
- (id)description;
@end

@implementation PGSharingSuggestionOptions

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PGSharingSuggestionOptions;
  v4 = [(PGSharingSuggestionOptions *)&v10 description];
  v5 = v4;
  v6 = self->_sharingStream - 1;
  if (v6 > 2)
  {
    v7 = &stru_2843F5C58;
  }

  else
  {
    v7 = off_278884BD0[v6];
  }

  v8 = [v3 stringWithFormat:@"%@ - sharingStream:%@ replaceMergeCandidates:%d debugMode:%d fetchLimit:%lu includeUnverified:%d filterLowWeightResults:%d useContactSuggestion:%d", v4, v7, self->_replaceMergeCandidates, self->_debugMode, self->_fetchLimit, self->_includeUnverified, self->_filterLowWeightResults, self->_useContactSuggestion];

  return v8;
}

- (PGSharingSuggestionOptions)init
{
  v3.receiver = self;
  v3.super_class = PGSharingSuggestionOptions;
  result = [(PGSharingSuggestionOptions *)&v3 init];
  if (result)
  {
    *&result->_replaceMergeCandidates = 65537;
    result->_sharingStream = 1;
    result->_fetchLimit = 30;
    result->_useContactSuggestion = 0;
  }

  return result;
}

+ (id)optionsForClient:(unint64_t)client
{
  v5 = objc_opt_new();
  v6 = v5;
  if (client == 3)
  {
    [v5 setSharingStream:1];
    [v6 setUseContactSuggestion:0];
    [v6 setIncludeUnverified:1];
    [v6 setFetchLimit:30];
  }

  else if (client == 2)
  {
    [v5 setSharingStream:{objc_msgSend(self, "_shareSheetSharingStream")}];
    [v6 setUseContactSuggestion:1];
    [v6 setIncludeUnverified:0];
    [v6 setFetchLimit:10];
    [v6 setFilterLowWeightResults:1];
  }

  return v6;
}

@end