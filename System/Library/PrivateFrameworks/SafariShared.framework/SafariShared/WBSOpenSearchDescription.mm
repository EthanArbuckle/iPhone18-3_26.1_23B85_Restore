@interface WBSOpenSearchDescription
- (BOOL)isEqual:(id)equal;
- (WBSOpenSearchDescription)initWithDescriptionDocumentURLString:(id)string searchURLTemplate:(id)template urlTemplateForSuggestionsInJSON:(id)n urlTemplateForSuggestionsInXML:(id)l;
- (WBSOpenSearchDescription)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation WBSOpenSearchDescription

- (WBSOpenSearchDescription)initWithDescriptionDocumentURLString:(id)string searchURLTemplate:(id)template urlTemplateForSuggestionsInJSON:(id)n urlTemplateForSuggestionsInXML:(id)l
{
  stringCopy = string;
  templateCopy = template;
  nCopy = n;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = WBSOpenSearchDescription;
  v14 = [(WBSOpenSearchDescription *)&v19 init];
  if (v14)
  {
    v15 = [stringCopy copy];
    descriptionDocumentURLString = v14->_descriptionDocumentURLString;
    v14->_descriptionDocumentURLString = v15;

    objc_storeStrong(&v14->_searchURLTemplate, template);
    objc_storeStrong(&v14->_urlTemplateForSuggestionsInJSON, n);
    objc_storeStrong(&v14->_urlTemplateForSuggestionsInXML, l);
    v17 = v14;
  }

  return v14;
}

- (WBSOpenSearchDescription)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v23.receiver = self;
  v23.super_class = WBSOpenSearchDescription;
  v5 = [(WBSOpenSearchDescription *)&v23 init];
  if (v5 && ([representationCopy objectForKeyedSubscript:@"DescriptionDocumentURLString"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "copy"), descriptionDocumentURLString = v5->_descriptionDocumentURLString, v5->_descriptionDocumentURLString = v7, descriptionDocumentURLString, v6, v9 = [WBSOpenSearchURLTemplate alloc], objc_msgSend(representationCopy, "objectForKeyedSubscript:", @"SearchURLTemplateString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[WBSOpenSearchURLTemplate initWithString:](v9, "initWithString:", v10), searchURLTemplate = v5->_searchURLTemplate, v5->_searchURLTemplate = v11, searchURLTemplate, v10, -[NSString length](v5->_descriptionDocumentURLString, "length")) && v5->_searchURLTemplate)
  {
    v13 = [WBSOpenSearchURLTemplate alloc];
    v14 = [representationCopy objectForKeyedSubscript:@"URLTemplateStringForSuggestionsInJSON"];
    v15 = [(WBSOpenSearchURLTemplate *)v13 initWithString:v14];
    urlTemplateForSuggestionsInJSON = v5->_urlTemplateForSuggestionsInJSON;
    v5->_urlTemplateForSuggestionsInJSON = v15;

    v17 = [WBSOpenSearchURLTemplate alloc];
    v18 = [representationCopy objectForKeyedSubscript:@"URLTemplateStringForSuggestionsInXML"];
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
  templateString = [(WBSOpenSearchURLTemplate *)searchURLTemplate templateString];
  v15[1] = templateString;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v8 = [v3 dictionaryWithDictionary:v7];

  urlTemplateForSuggestionsInJSON = self->_urlTemplateForSuggestionsInJSON;
  if (urlTemplateForSuggestionsInJSON)
  {
    templateString2 = [(WBSOpenSearchURLTemplate *)urlTemplateForSuggestionsInJSON templateString];
    [v8 setObject:templateString2 forKeyedSubscript:@"URLTemplateStringForSuggestionsInJSON"];
  }

  urlTemplateForSuggestionsInXML = self->_urlTemplateForSuggestionsInXML;
  if (urlTemplateForSuggestionsInXML)
  {
    templateString3 = [(WBSOpenSearchURLTemplate *)urlTemplateForSuggestionsInXML templateString];
    [v8 setObject:templateString3 forKeyedSubscript:@"URLTemplateStringForSuggestionsInXML"];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      descriptionDocumentURLString = self->_descriptionDocumentURLString;
      descriptionDocumentURLString = [(WBSOpenSearchDescription *)v5 descriptionDocumentURLString];
      if ([(NSString *)descriptionDocumentURLString isEqualToString:descriptionDocumentURLString])
      {
        searchURLTemplate = self->_searchURLTemplate;
        searchURLTemplate = [(WBSOpenSearchDescription *)v5 searchURLTemplate];
        LODWORD(searchURLTemplate) = [(WBSOpenSearchURLTemplate *)searchURLTemplate isEqual:searchURLTemplate];

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

        descriptionDocumentURLString = [(WBSOpenSearchDescription *)v5 urlTemplateForSuggestionsInXML];
        v12 = [(WBSOpenSearchURLTemplate *)urlTemplateForSuggestionsInXML isEqual:descriptionDocumentURLString];
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