@interface SHSheetRemoteConnectionContext
- (SHSheetRemoteConnectionContext)initWithDictionary:(id)dictionary;
- (SHSheetRemoteConnectionContext)initWithSessionIdentifier:(id)identifier;
- (id)createContextDictionary;
@end

@implementation SHSheetRemoteConnectionContext

- (SHSheetRemoteConnectionContext)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SHSheetRemoteConnectionContext;
  v5 = [(SHSheetRemoteConnectionContext *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;
  }

  return v5;
}

- (SHSheetRemoteConnectionContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = NSStringFromSelector(sel_sessionIdentifier);
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];
  v7 = [(SHSheetRemoteConnectionContext *)self initWithSessionIdentifier:v6];

  if (v7)
  {
    v8 = NSStringFromSelector(sel_discoveryContext);
    v9 = [dictionaryCopy objectForKeyedSubscript:v8];
    discoveryContext = v7->_discoveryContext;
    v7->_discoveryContext = v9;

    v11 = NSStringFromSelector(sel_assetIdentifiers);
    v12 = [dictionaryCopy objectForKeyedSubscript:v11];
    assetIdentifiers = v7->_assetIdentifiers;
    v7->_assetIdentifiers = v12;

    v14 = NSStringFromSelector(sel_urlsBeingShared);
    v15 = [dictionaryCopy objectForKeyedSubscript:v14];
    urlsBeingShared = v7->_urlsBeingShared;
    v7->_urlsBeingShared = v15;

    v17 = NSStringFromSelector(sel_sandboxExtensionsByfileURLPath);
    v18 = [dictionaryCopy objectForKeyedSubscript:v17];
    sandboxExtensionsByfileURLPath = v7->_sandboxExtensionsByfileURLPath;
    v7->_sandboxExtensionsByfileURLPath = v18;

    v20 = NSStringFromSelector(sel_shouldSuggestFamilyMembers);
    v21 = [dictionaryCopy objectForKeyedSubscript:v20];
    v7->_shouldSuggestFamilyMembers = [v21 BOOLValue];

    v22 = NSStringFromSelector(sel_instantShareSheet);
    v23 = [dictionaryCopy objectForKeyedSubscript:v22];
    v7->_instantShareSheet = [v23 BOOLValue];

    v24 = NSStringFromSelector(sel_remoteShareSheet);
    v25 = [dictionaryCopy objectForKeyedSubscript:v24];
    v7->_remoteShareSheet = [v25 BOOLValue];

    v26 = NSStringFromSelector(sel_isSharePlayAvailable);
    v27 = [dictionaryCopy objectForKeyedSubscript:v26];
    v7->_isSharePlayAvailable = [v27 BOOLValue];

    v28 = NSStringFromSelector(sel_supportsCollaboration);
    v29 = [dictionaryCopy objectForKeyedSubscript:v28];
    v7->_supportsCollaboration = [v29 BOOLValue];

    v30 = NSStringFromSelector(sel_hideSuggestions);
    v31 = [dictionaryCopy objectForKeyedSubscript:v30];
    v7->_hideSuggestions = [v31 BOOLValue];

    v32 = NSStringFromSelector(sel_peopleSuggestionBundleIds);
    v33 = [dictionaryCopy objectForKeyedSubscript:v32];
    peopleSuggestionBundleIds = v7->_peopleSuggestionBundleIds;
    v7->_peopleSuggestionBundleIds = v33;

    v35 = NSStringFromSelector(sel_processedImageResultsData);
    v36 = [dictionaryCopy objectForKeyedSubscript:v35];
    processedImageResultsData = v7->_processedImageResultsData;
    v7->_processedImageResultsData = v36;

    v38 = NSStringFromSelector(sel_peopleSuggestionsTimeout);
    v39 = [dictionaryCopy objectForKeyedSubscript:v38];
    [v39 doubleValue];
    v7->_peopleSuggestionsTimeout = v40;

    v41 = NSStringFromSelector(sel_xrRenderingMode);
    v42 = [dictionaryCopy objectForKeyedSubscript:v41];
    v7->_xrRenderingMode = [v42 unsignedIntValue];
  }

  return v7;
}

- (id)createContextDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  sessionIdentifier = [(SHSheetRemoteConnectionContext *)self sessionIdentifier];
  v5 = NSStringFromSelector(sel_sessionIdentifier);
  [dictionary setObject:sessionIdentifier forKeyedSubscript:v5];

  discoveryContext = [(SHSheetRemoteConnectionContext *)self discoveryContext];
  v7 = NSStringFromSelector(sel_discoveryContext);
  [dictionary setObject:discoveryContext forKeyedSubscript:v7];

  assetIdentifiers = [(SHSheetRemoteConnectionContext *)self assetIdentifiers];
  v9 = NSStringFromSelector(sel_assetIdentifiers);
  [dictionary setObject:assetIdentifiers forKeyedSubscript:v9];

  urlsBeingShared = [(SHSheetRemoteConnectionContext *)self urlsBeingShared];
  v11 = NSStringFromSelector(sel_urlsBeingShared);
  [dictionary setObject:urlsBeingShared forKeyedSubscript:v11];

  sandboxExtensionsByfileURLPath = [(SHSheetRemoteConnectionContext *)self sandboxExtensionsByfileURLPath];
  v13 = NSStringFromSelector(sel_sandboxExtensionsByfileURLPath);
  [dictionary setObject:sandboxExtensionsByfileURLPath forKeyedSubscript:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[SHSheetRemoteConnectionContext shouldSuggestFamilyMembers](self, "shouldSuggestFamilyMembers")}];
  v15 = NSStringFromSelector(sel_shouldSuggestFamilyMembers);
  [dictionary setObject:v14 forKeyedSubscript:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[SHSheetRemoteConnectionContext instantShareSheet](self, "instantShareSheet")}];
  v17 = NSStringFromSelector(sel_instantShareSheet);
  [dictionary setObject:v16 forKeyedSubscript:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[SHSheetRemoteConnectionContext remoteShareSheet](self, "remoteShareSheet")}];
  v19 = NSStringFromSelector(sel_remoteShareSheet);
  [dictionary setObject:v18 forKeyedSubscript:v19];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[SHSheetRemoteConnectionContext isSharePlayAvailable](self, "isSharePlayAvailable")}];
  v21 = NSStringFromSelector(sel_isSharePlayAvailable);
  [dictionary setObject:v20 forKeyedSubscript:v21];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[SHSheetRemoteConnectionContext supportsCollaboration](self, "supportsCollaboration")}];
  v23 = NSStringFromSelector(sel_supportsCollaboration);
  [dictionary setObject:v22 forKeyedSubscript:v23];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[SHSheetRemoteConnectionContext hideSuggestions](self, "hideSuggestions")}];
  v25 = NSStringFromSelector(sel_hideSuggestions);
  [dictionary setObject:v24 forKeyedSubscript:v25];

  peopleSuggestionBundleIds = [(SHSheetRemoteConnectionContext *)self peopleSuggestionBundleIds];
  v27 = NSStringFromSelector(sel_peopleSuggestionBundleIds);
  [dictionary setObject:peopleSuggestionBundleIds forKeyedSubscript:v27];

  processedImageResultsData = [(SHSheetRemoteConnectionContext *)self processedImageResultsData];
  v29 = NSStringFromSelector(sel_processedImageResultsData);
  [dictionary setObject:processedImageResultsData forKeyedSubscript:v29];

  v30 = MEMORY[0x1E696AD98];
  [(SHSheetRemoteConnectionContext *)self peopleSuggestionsTimeout];
  v31 = [v30 numberWithDouble:?];
  v32 = NSStringFromSelector(sel_peopleSuggestionsTimeout);
  [dictionary setObject:v31 forKeyedSubscript:v32];

  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SHSheetRemoteConnectionContext xrRenderingMode](self, "xrRenderingMode")}];
  v34 = NSStringFromSelector(sel_xrRenderingMode);
  [dictionary setObject:v33 forKeyedSubscript:v34];

  return dictionary;
}

@end