@interface WBSOpenSearchDescription
- (BOOL)isEqual:(id)a3;
- (WBSOpenSearchDescription)initWithDescriptionDocumentURLString:(id)a3 searchURLTemplate:(id)a4 urlTemplateForSuggestionsInJSON:(id)a5 urlTemplateForSuggestionsInXML:(id)a6;
- (WBSOpenSearchDescription)initWithDictionaryRepresentation:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation WBSOpenSearchDescription

- (WBSOpenSearchDescription)initWithDescriptionDocumentURLString:(id)a3 searchURLTemplate:(id)a4 urlTemplateForSuggestionsInJSON:(id)a5 urlTemplateForSuggestionsInXML:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = WBSOpenSearchDescription;
  v14 = [(WBSOpenSearchDescription *)&v19 init];
  if (v14)
  {
    v15 = [v10 copy];
    descriptionDocumentURLString = v14->_descriptionDocumentURLString;
    v14->_descriptionDocumentURLString = v15;

    objc_storeStrong(&v14->_searchURLTemplate, a4);
    objc_storeStrong(&v14->_urlTemplateForSuggestionsInJSON, a5);
    objc_storeStrong(&v14->_urlTemplateForSuggestionsInXML, a6);
    v17 = v14;
  }

  return v14;
}

- (WBSOpenSearchDescription)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = WBSOpenSearchDescription;
  v5 = [(WBSOpenSearchDescription *)&v23 init];
  if (v5 && ([v4 objectForKeyedSubscript:@"DescriptionDocumentURLString"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "copy"), descriptionDocumentURLString = v5->_descriptionDocumentURLString, v5->_descriptionDocumentURLString = v7, descriptionDocumentURLString, v6, v9 = [WBSOpenSearchURLTemplate alloc], objc_msgSend(v4, "objectForKeyedSubscript:", @"SearchURLTemplateString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[WBSOpenSearchURLTemplate initWithString:](v9, "initWithString:", v10), searchURLTemplate = v5->_searchURLTemplate, v5->_searchURLTemplate = v11, searchURLTemplate, v10, -[NSString length](v5->_descriptionDocumentURLString, "length")) && v5->_searchURLTemplate)
  {
    v13 = [WBSOpenSearchURLTemplate alloc];
    v14 = [v4 objectForKeyedSubscript:@"URLTemplateStringForSuggestionsInJSON"];
    v15 = [(WBSOpenSearchURLTemplate *)v13 initWithString:v14];
    urlTemplateForSuggestionsInJSON = v5->_urlTemplateForSuggestionsInJSON;
    v5->_urlTemplateForSuggestionsInJSON = v15;

    v17 = [WBSOpenSearchURLTemplate alloc];
    v18 = [v4 objectForKeyedSubscript:@"URLTemplateStringForSuggestionsInXML"];
    v19 = [(WBSOpenSearchURLTemplate *)v17 initWithString:v18];
    urlTemplateForSuggestionsInXML = v5->_urlTemplateForSuggestionsInXML;
    v5->_urlTemplateForSuggestionsInXML = v19;

    v21 = v5;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)dictionaryRepresentation
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  descriptionDocumentURLString = self->_descriptionDocumentURLString;
  searchURLTemplate = self->_searchURLTemplate;
  v14[0] = @"DescriptionDocumentURLString";
  v14[1] = @"SearchURLTemplateString";
  v15[0] = descriptionDocumentURLString;
  v6 = [(WBSOpenSearchURLTemplate *)searchURLTemplate templateString];
  v15[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v8 = [v3 dictionaryWithDictionary:v7];

  urlTemplateForSuggestionsInJSON = self->_urlTemplateForSuggestionsInJSON;
  if (urlTemplateForSuggestionsInJSON)
  {
    v10 = [(WBSOpenSearchURLTemplate *)urlTemplateForSuggestionsInJSON templateString];
    [v8 setObject:v10 forKeyedSubscript:@"URLTemplateStringForSuggestionsInJSON"];
  }

  urlTemplateForSuggestionsInXML = self->_urlTemplateForSuggestionsInXML;
  if (urlTemplateForSuggestionsInXML)
  {
    v12 = [(WBSOpenSearchURLTemplate *)urlTemplateForSuggestionsInXML templateString];
    [v8 setObject:v12 forKeyedSubscript:@"URLTemplateStringForSuggestionsInXML"];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      descriptionDocumentURLString = self->_descriptionDocumentURLString;
      v7 = [(WBSOpenSearchDescription *)v5 descriptionDocumentURLString];
      if ([(NSString *)descriptionDocumentURLString isEqualToString:v7])
      {
        searchURLTemplate = self->_searchURLTemplate;
        v9 = [(WBSOpenSearchDescription *)v5 searchURLTemplate];
        LODWORD(searchURLTemplate) = [(WBSOpenSearchURLTemplate *)searchURLTemplate isEqual:v9];

        if (!searchURLTemplate || (urlTemplateForSuggestionsInJSON = self->_urlTemplateForSuggestionsInJSON, urlTemplateForSuggestionsInJSON != v5->_urlTemplateForSuggestionsInJSON) && ![(WBSOpenSearchURLTemplate *)urlTemplateForSuggestionsInJSON isEqual:?])
        {
          v12 = 0;
          goto LABEL_14;
        }

        urlTemplateForSuggestionsInXML = self->_urlTemplateForSuggestionsInXML;
        if (urlTemplateForSuggestionsInXML == v5->_urlTemplateForSuggestionsInXML)
        {
          v12 = 1;
          goto LABEL_14;
        }

        v7 = [(WBSOpenSearchDescription *)v5 urlTemplateForSuggestionsInXML];
        v12 = [(WBSOpenSearchURLTemplate *)urlTemplateForSuggestionsInXML isEqual:v7];
      }

      else
      {
        v12 = 0;
      }

LABEL_14:
      goto LABEL_15;
    }

    v12 = 0;
  }

LABEL_15:

  return v12 & 1;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_descriptionDocumentURLString hash];
  v4 = [(WBSOpenSearchURLTemplate *)self->_searchURLTemplate hash]^ v3;
  v5 = [(WBSOpenSearchURLTemplate *)self->_urlTemplateForSuggestionsInJSON hash];
  return v4 ^ v5 ^ [(WBSOpenSearchURLTemplate *)self->_urlTemplateForSuggestionsInXML hash];
}

@end