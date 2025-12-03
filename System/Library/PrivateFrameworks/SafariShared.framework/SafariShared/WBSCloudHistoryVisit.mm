@interface WBSCloudHistoryVisit
- (NSDictionary)dictionaryRepresentation;
- (WBSCloudHistoryVisit)initWithCoder:(id)coder;
- (WBSCloudHistoryVisit)initWithDictionary:(id)dictionary;
- (WBSCloudHistoryVisit)initWithVisitIdentifier:(id)identifier title:(id)title loadSuccessful:(BOOL)successful httpNonGet:(BOOL)get redirectSourceVisitIdentifier:(id)visitIdentifier redirectDestinationVisitIdentifier:(id)destinationVisitIdentifier;
- (WBSCloudHistoryVisit)redirectDestinationVisit;
- (WBSCloudHistoryVisit)redirectSourceVisit;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSCloudHistoryVisit

- (WBSCloudHistoryVisit)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = WBSCloudHistoryVisit;
  v5 = [(WBSCloudHistoryVisit *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy safari_stringForKey:@"URL"];
    if ([v6 length])
    {
      v7 = [dictionaryCopy safari_numberForKey:@"VisitTime"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v6 visitTime:v9];
      visitIdentifier = v5->_visitIdentifier;
      v5->_visitIdentifier = v10;

      v12 = [dictionaryCopy safari_stringForKey:@"Title"];
      v13 = [v12 copy];
      title = v5->_title;
      v5->_title = v13;

      v5->_loadSuccessful = [dictionaryCopy safari_BOOLForKey:@"LoadSuccessful"];
      v5->_httpNonGet = [dictionaryCopy safari_BOOLForKey:@"HTTPNonGet"];
      v15 = [dictionaryCopy safari_stringForKey:@"RedirectSourceURL"];
      if (v15)
      {
        v16 = [dictionaryCopy safari_numberForKey:@"RedirectSourceVisitTime"];
        [v16 doubleValue];
        v18 = v17;

        v19 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v15 visitTime:v18];
        redirectSourceVisitIdentifier = v5->_redirectSourceVisitIdentifier;
        v5->_redirectSourceVisitIdentifier = v19;
      }

      v21 = [dictionaryCopy safari_stringForKey:@"RedirectDestinationURL"];
      if (v21)
      {
        v22 = [dictionaryCopy safari_numberForKey:@"RedirectDestinationVisitTime"];
        [v22 doubleValue];
        v24 = v23;

        v25 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v21 visitTime:v24];
        redirectDestinationVisitIdentifier = v5->_redirectDestinationVisitIdentifier;
        v5->_redirectDestinationVisitIdentifier = v25;
      }

      v27 = v5;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (WBSCloudHistoryVisit)initWithVisitIdentifier:(id)identifier title:(id)title loadSuccessful:(BOOL)successful httpNonGet:(BOOL)get redirectSourceVisitIdentifier:(id)visitIdentifier redirectDestinationVisitIdentifier:(id)destinationVisitIdentifier
{
  identifierCopy = identifier;
  titleCopy = title;
  visitIdentifierCopy = visitIdentifier;
  destinationVisitIdentifierCopy = destinationVisitIdentifier;
  v23.receiver = self;
  v23.super_class = WBSCloudHistoryVisit;
  v17 = [(WBSCloudHistoryVisit *)&v23 init];
  v18 = v17;
  v19 = 0;
  if (identifierCopy && v17)
  {
    objc_storeStrong(&v17->_visitIdentifier, identifier);
    objc_storeStrong(&v18->_title, title);
    v18->_loadSuccessful = successful;
    v18->_httpNonGet = get;
    objc_storeStrong(&v18->_redirectSourceVisitIdentifier, visitIdentifier);
    objc_storeStrong(&v18->_redirectDestinationVisitIdentifier, destinationVisitIdentifier);
    v19 = v18;
  }

  return v19;
}

- (NSDictionary)dictionaryRepresentation
{
  urlString = [(WBSHistoryVisitIdentifier *)self->_visitIdentifier urlString];

  if (urlString)
  {
    urlString = [MEMORY[0x1E695DF90] dictionary];
    urlString2 = [(WBSHistoryVisitIdentifier *)self->_visitIdentifier urlString];
    [urlString setObject:urlString2 forKeyedSubscript:@"URL"];

    v5 = MEMORY[0x1E696AD98];
    [(WBSHistoryVisitIdentifier *)self->_visitIdentifier visitTime];
    v6 = [v5 numberWithDouble:?];
    [urlString setObject:v6 forKeyedSubscript:@"VisitTime"];

    title = self->_title;
    if (title)
    {
      [urlString setObject:title forKeyedSubscript:@"Title"];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_loadSuccessful];
    [urlString setObject:v8 forKeyedSubscript:@"LoadSuccessful"];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_httpNonGet];
    [urlString setObject:v9 forKeyedSubscript:@"HTTPNonGet"];

    urlString3 = [(WBSHistoryVisitIdentifier *)self->_redirectSourceVisitIdentifier urlString];
    if (urlString3)
    {
      [urlString setObject:urlString3 forKeyedSubscript:@"RedirectSourceURL"];
      v11 = MEMORY[0x1E696AD98];
      [(WBSHistoryVisitIdentifier *)self->_redirectSourceVisitIdentifier visitTime];
      v12 = [v11 numberWithDouble:?];
      [urlString setObject:v12 forKeyedSubscript:@"RedirectSourceVisitTime"];
    }

    urlString4 = [(WBSHistoryVisitIdentifier *)self->_redirectDestinationVisitIdentifier urlString];
    if (urlString4)
    {
      [urlString setObject:urlString4 forKeyedSubscript:@"RedirectDestinationURL"];
      v14 = MEMORY[0x1E696AD98];
      [(WBSHistoryVisitIdentifier *)self->_redirectDestinationVisitIdentifier visitTime];
      v15 = [v14 numberWithDouble:?];
      [urlString setObject:v15 forKeyedSubscript:@"RedirectDestinationVisitTime"];
    }
  }

  return urlString;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  urlString = [(WBSHistoryVisitIdentifier *)self->_visitIdentifier urlString];
  [(WBSHistoryVisitIdentifier *)self->_visitIdentifier visitTime];
  v8 = v7;
  title = self->_title;
  urlString2 = [(WBSHistoryVisitIdentifier *)self->_redirectSourceVisitIdentifier urlString];
  urlString3 = [(WBSHistoryVisitIdentifier *)self->_redirectDestinationVisitIdentifier urlString];
  v12 = [v3 stringWithFormat:@"<%@: %p urlString = %@; visitTime = %lf; title = %@; redirectSourceURLString = %@; _redirectDestinationURLString = %@>", v5, self, urlString, v8, title, urlString2, urlString3];;

  return v12;
}

- (WBSCloudHistoryVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WBSCloudHistoryVisit;
  v5 = [(WBSCloudHistoryVisit *)&v16 init];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"], v6 = objc_claimAutoreleasedReturnValue(), visitIdentifier = v5->_visitIdentifier, v5->_visitIdentifier = v6, visitIdentifier, v5->_visitIdentifier))
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_loadSuccessful = [coderCopy decodeBoolForKey:@"LoadSuccessful"];
    v5->_httpNonGet = [coderCopy decodeBoolForKey:@"HTTPNonGet"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RedirectSourceURL"];
    redirectSourceVisitIdentifier = v5->_redirectSourceVisitIdentifier;
    v5->_redirectSourceVisitIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RedirectDestinationURL"];
    redirectDestinationVisitIdentifier = v5->_redirectDestinationVisitIdentifier;
    v5->_redirectDestinationVisitIdentifier = v12;

    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  visitIdentifier = self->_visitIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:visitIdentifier forKey:@"URL"];
  [coderCopy encodeObject:self->_title forKey:@"Title"];
  [coderCopy encodeBool:self->_loadSuccessful forKey:@"LoadSuccessful"];
  [coderCopy encodeBool:self->_httpNonGet forKey:@"HTTPNonGet"];
  [coderCopy encodeObject:self->_redirectSourceVisitIdentifier forKey:@"RedirectSourceURL"];
  [coderCopy encodeObject:self->_redirectDestinationVisitIdentifier forKey:@"RedirectDestinationURL"];
}

- (WBSCloudHistoryVisit)redirectSourceVisit
{
  WeakRetained = objc_loadWeakRetained(&self->_redirectSourceVisit);

  return WeakRetained;
}

- (WBSCloudHistoryVisit)redirectDestinationVisit
{
  WeakRetained = objc_loadWeakRetained(&self->_redirectDestinationVisit);

  return WeakRetained;
}

@end