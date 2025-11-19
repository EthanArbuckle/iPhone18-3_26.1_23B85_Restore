@interface WBSQuickWebsiteSearchProvider
- (NSString)displayName;
- (NSString)hostname;
- (WBSOpenSearchDescription)openSearchDescription;
- (WBSOpenSearchURLTemplate)searchURLTemplate;
- (WBSOpenSearchURLTemplate)urlTemplateForSuggestionsInJSON;
- (WBSQuickWebsiteSearchProvider)initWithDictionaryRepresentation:(id)a3 delegate:(id)a4;
- (WBSQuickWebsiteSearchProvider)initWithSourcePageURLString:(id)a3 openSearchDescriptionURLString:(id)a4 delegate:(id)a5;
- (WBSQuickWebsiteSearchProvider)initWithSourcePageURLString:(id)a3 searchURLTemplateFromForm:(id)a4 delegate:(id)a5;
- (id)debugDescription;
- (id)dictionaryRepresentation;
@end

@implementation WBSQuickWebsiteSearchProvider

- (WBSQuickWebsiteSearchProvider)initWithDictionaryRepresentation:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = WBSQuickWebsiteSearchProvider;
  v8 = [(WBSQuickWebsiteSearchProvider *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    v10 = [v6 safari_stringForKey:@"SourcePageURLString"];
    v11 = [v6 safari_stringForKey:@"SearchURLTemplateStringFromForm"];
    v12 = [v6 safari_stringForKey:@"OpenSearchDescriptionURLString"];
    if ([v10 length] && (objc_msgSend(v11, "length") || objc_msgSend(v12, "length")))
    {
      v13 = [v10 copy];
      sourcePageURLString = v9->_sourcePageURLString;
      v9->_sourcePageURLString = v13;

      v15 = [[WBSOpenSearchURLTemplate alloc] initWithString:v11];
      searchURLTemplateFromForm = v9->_searchURLTemplateFromForm;
      v9->_searchURLTemplateFromForm = v15;

      v17 = [v12 copy];
      openSearchDescriptionURLString = v9->_openSearchDescriptionURLString;
      v9->_openSearchDescriptionURLString = v17;

      v19 = [v6 safari_dateForKey:@"DateAdded"];
      dateAdded = v9->_dateAdded;
      v9->_dateAdded = v19;

      v21 = [v6 safari_dateForKey:@"DateOfLastSearch"];
      dateOfLastSearch = v9->_dateOfLastSearch;
      v9->_dateOfLastSearch = v21;

      v23 = v9;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (WBSQuickWebsiteSearchProvider)initWithSourcePageURLString:(id)a3 searchURLTemplateFromForm:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = WBSQuickWebsiteSearchProvider;
  v11 = [(WBSQuickWebsiteSearchProvider *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v10);
    v13 = [v8 copy];
    sourcePageURLString = v12->_sourcePageURLString;
    v12->_sourcePageURLString = v13;

    objc_storeStrong(&v12->_searchURLTemplateFromForm, a4);
    v15 = [MEMORY[0x1E695DF00] date];
    dateAdded = v12->_dateAdded;
    v12->_dateAdded = v15;

    v17 = v12;
  }

  return v12;
}

- (WBSQuickWebsiteSearchProvider)initWithSourcePageURLString:(id)a3 openSearchDescriptionURLString:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = WBSQuickWebsiteSearchProvider;
  v11 = [(WBSQuickWebsiteSearchProvider *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v10);
    v13 = [v8 copy];
    sourcePageURLString = v12->_sourcePageURLString;
    v12->_sourcePageURLString = v13;

    v15 = [v9 copy];
    openSearchDescriptionURLString = v12->_openSearchDescriptionURLString;
    v12->_openSearchDescriptionURLString = v15;

    v17 = [MEMORY[0x1E695DF00] date];
    dateAdded = v12->_dateAdded;
    v12->_dateAdded = v17;

    v19 = v12;
  }

  return v12;
}

- (WBSOpenSearchDescription)openSearchDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained quickWebsiteSearchProvider:self openSearchDescriptionForOpenSearchDescriptionURLString:self->_openSearchDescriptionURLString];

  return v4;
}

- (WBSOpenSearchURLTemplate)searchURLTemplate
{
  if (!self->_openSearchDescriptionURLString || (-[WBSQuickWebsiteSearchProvider openSearchDescription](self, "openSearchDescription"), v3 = objc_claimAutoreleasedReturnValue(), [v3 searchURLTemplate], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v4 = self->_searchURLTemplateFromForm;
  }

  return v4;
}

- (WBSOpenSearchURLTemplate)urlTemplateForSuggestionsInJSON
{
  v2 = [(WBSQuickWebsiteSearchProvider *)self openSearchDescription];
  v3 = [v2 urlTemplateForSuggestionsInJSON];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithObject:self->_sourcePageURLString forKey:@"SourcePageURLString"];
  searchURLTemplateFromForm = self->_searchURLTemplateFromForm;
  if (searchURLTemplateFromForm)
  {
    v5 = [(WBSOpenSearchURLTemplate *)searchURLTemplateFromForm templateString];
    [v3 setObject:v5 forKeyedSubscript:@"SearchURLTemplateStringFromForm"];
  }

  if ([(NSString *)self->_openSearchDescriptionURLString length])
  {
    [v3 setObject:self->_openSearchDescriptionURLString forKeyedSubscript:@"OpenSearchDescriptionURLString"];
  }

  dateAdded = self->_dateAdded;
  if (dateAdded)
  {
    [v3 setObject:dateAdded forKeyedSubscript:@"DateAdded"];
  }

  dateOfLastSearch = self->_dateOfLastSearch;
  if (dateOfLastSearch)
  {
    [v3 setObject:dateOfLastSearch forKeyedSubscript:@"DateOfLastSearch"];
  }

  return v3;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    v4 = [(NSString *)self->_sourcePageURLString safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
    v5 = self->_displayName;
    self->_displayName = v4;

    displayName = self->_displayName;
  }

  return displayName;
}

- (NSString)hostname
{
  hostname = self->_hostname;
  if (!hostname)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:self->_sourcePageURLString];
    v5 = [v4 host];
    v6 = self->_hostname;
    self->_hostname = v5;

    hostname = self->_hostname;
  }

  return hostname;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBSQuickWebsiteSearchProvider *)self displayName];
  v7 = [v3 stringWithFormat:@"<%@: %p display name = %@>", v5, self, v6];;

  return v7;
}

@end