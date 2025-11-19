@interface WBSSearchProvider
- (void)_trialGroupIdentifierDidChange;
@end

@implementation WBSSearchProvider

- (void)_trialGroupIdentifierDidChange
{
  v3 = [MEMORY[0x1E69C90B0] shared];
  if (![v3 isReady])
  {
    goto LABEL_6;
  }

  v4 = [MEMORY[0x1E69C90B0] shared];
  if (([v4 inExperiment] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v5 = [(NSString *)self->_shortName isEqualToString:@"Google"];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    templateStringGroupIdentifierParameterName = self->_templateStringGroupIdentifierParameterName;
    v8 = [MEMORY[0x1E69C90B0] shared];
    v9 = [v6 stringWithFormat:@"&%@=%lu", templateStringGroupIdentifierParameterName, objc_msgSend(v8, "trialABGroupIdentifier")];

    v10 = [(NSString *)self->_templateStringWithoutGroupIdentifier stringByAppendingString:v9];
    templateStringWithGroupIdentifier = self->_templateStringWithGroupIdentifier;
    self->_templateStringWithGroupIdentifier = v10;

    v12 = [objc_alloc(MEMORY[0x1E69C8F88]) initWithString:self->_templateStringWithGroupIdentifier];
    v13 = [(WBSOpenSearchURLTemplate *)v12 templateBySubstitutingValues:self->_templateStringParameterValues];
    suggestionsURLTemplate = self->_suggestionsURLTemplate;
    self->_suggestionsURLTemplate = v13;

    goto LABEL_8;
  }

LABEL_7:
  v9 = [objc_alloc(MEMORY[0x1E69C8F88]) initWithString:self->_templateStringWithoutGroupIdentifier];
  v15 = [v9 templateBySubstitutingValues:self->_templateStringParameterValues];
  v12 = self->_suggestionsURLTemplate;
  self->_suggestionsURLTemplate = v15;
LABEL_8:

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 postNotificationName:@"WBSSearchTemplateUpdatedGroupIdentifiersNotification" object:0];
}

@end