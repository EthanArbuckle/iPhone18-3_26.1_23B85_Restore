@interface WBSCloudHistoryVisit
- (NSDictionary)dictionaryRepresentation;
- (WBSCloudHistoryVisit)initWithCoder:(id)a3;
- (WBSCloudHistoryVisit)initWithDictionary:(id)a3;
- (WBSCloudHistoryVisit)initWithVisitIdentifier:(id)a3 title:(id)a4 loadSuccessful:(BOOL)a5 httpNonGet:(BOOL)a6 redirectSourceVisitIdentifier:(id)a7 redirectDestinationVisitIdentifier:(id)a8;
- (WBSCloudHistoryVisit)redirectDestinationVisit;
- (WBSCloudHistoryVisit)redirectSourceVisit;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSCloudHistoryVisit

- (WBSCloudHistoryVisit)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = WBSCloudHistoryVisit;
  v5 = [(WBSCloudHistoryVisit *)&v29 init];
  if (v5)
  {
    v6 = [v4 safari_stringForKey:@"URL"];
    if ([v6 length])
    {
      v7 = [v4 safari_numberForKey:@"VisitTime"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v6 visitTime:v9];
      visitIdentifier = v5->_visitIdentifier;
      v5->_visitIdentifier = v10;

      v12 = [v4 safari_stringForKey:@"Title"];
      v13 = [v12 copy];
      title = v5->_title;
      v5->_title = v13;

      v5->_loadSuccessful = [v4 safari_BOOLForKey:@"LoadSuccessful"];
      v5->_httpNonGet = [v4 safari_BOOLForKey:@"HTTPNonGet"];
      v15 = [v4 safari_stringForKey:@"RedirectSourceURL"];
      if (v15)
      {
        v16 = [v4 safari_numberForKey:@"RedirectSourceVisitTime"];
        [v16 doubleValue];
        v18 = v17;

        v19 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v15 visitTime:v18];
        redirectSourceVisitIdentifier = v5->_redirectSourceVisitIdentifier;
        v5->_redirectSourceVisitIdentifier = v19;
      }

      v21 = [v4 safari_stringForKey:@"RedirectDestinationURL"];
      if (v21)
      {
        v22 = [v4 safari_numberForKey:@"RedirectDestinationVisitTime"];
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

- (WBSCloudHistoryVisit)initWithVisitIdentifier:(id)a3 title:(id)a4 loadSuccessful:(BOOL)a5 httpNonGet:(BOOL)a6 redirectSourceVisitIdentifier:(id)a7 redirectDestinationVisitIdentifier:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v23.receiver = self;
  v23.super_class = WBSCloudHistoryVisit;
  v17 = [(WBSCloudHistoryVisit *)&v23 init];
  v18 = v17;
  v19 = 0;
  if (v13 && v17)
  {
    objc_storeStrong(&v17->_visitIdentifier, a3);
    objc_storeStrong(&v18->_title, a4);
    v18->_loadSuccessful = a5;
    v18->_httpNonGet = a6;
    objc_storeStrong(&v18->_redirectSourceVisitIdentifier, a7);
    objc_storeStrong(&v18->_redirectDestinationVisitIdentifier, a8);
    v19 = v18;
  }

  return v19;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [(WBSHistoryVisitIdentifier *)self->_visitIdentifier urlString];

  if (v3)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = [(WBSHistoryVisitIdentifier *)self->_visitIdentifier urlString];
    [v3 setObject:v4 forKeyedSubscript:@"URL"];

    v5 = MEMORY[0x1E696AD98];
    [(WBSHistoryVisitIdentifier *)self->_visitIdentifier visitTime];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"VisitTime"];

    title = self->_title;
    if (title)
    {
      [v3 setObject:title forKeyedSubscript:@"Title"];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_loadSuccessful];
    [v3 setObject:v8 forKeyedSubscript:@"LoadSuccessful"];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_httpNonGet];
    [v3 setObject:v9 forKeyedSubscript:@"HTTPNonGet"];

    v10 = [(WBSHistoryVisitIdentifier *)self->_redirectSourceVisitIdentifier urlString];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"RedirectSourceURL"];
      v11 = MEMORY[0x1E696AD98];
      [(WBSHistoryVisitIdentifier *)self->_redirectSourceVisitIdentifier visitTime];
      v12 = [v11 numberWithDouble:?];
      [v3 setObject:v12 forKeyedSubscript:@"RedirectSourceVisitTime"];
    }

    v13 = [(WBSHistoryVisitIdentifier *)self->_redirectDestinationVisitIdentifier urlString];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"RedirectDestinationURL"];
      v14 = MEMORY[0x1E696AD98];
      [(WBSHistoryVisitIdentifier *)self->_redirectDestinationVisitIdentifier visitTime];
      v15 = [v14 numberWithDouble:?];
      [v3 setObject:v15 forKeyedSubscript:@"RedirectDestinationVisitTime"];
    }
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBSHistoryVisitIdentifier *)self->_visitIdentifier urlString];
  [(WBSHistoryVisitIdentifier *)self->_visitIdentifier visitTime];
  v8 = v7;
  title = self->_title;
  v10 = [(WBSHistoryVisitIdentifier *)self->_redirectSourceVisitIdentifier urlString];
  v11 = [(WBSHistoryVisitIdentifier *)self->_redirectDestinationVisitIdentifier urlString];
  v12 = [v3 stringWithFormat:@"<%@: %p urlString = %@; visitTime = %lf; title = %@; redirectSourceURLString = %@; _redirectDestinationURLString = %@>", v5, self, v6, v8, title, v10, v11];;

  return v12;
}

- (WBSCloudHistoryVisit)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WBSCloudHistoryVisit;
  v5 = [(WBSCloudHistoryVisit *)&v16 init];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"], v6 = objc_claimAutoreleasedReturnValue(), visitIdentifier = v5->_visitIdentifier, v5->_visitIdentifier = v6, visitIdentifier, v5->_visitIdentifier))
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_loadSuccessful = [v4 decodeBoolForKey:@"LoadSuccessful"];
    v5->_httpNonGet = [v4 decodeBoolForKey:@"HTTPNonGet"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RedirectSourceURL"];
    redirectSourceVisitIdentifier = v5->_redirectSourceVisitIdentifier;
    v5->_redirectSourceVisitIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RedirectDestinationURL"];
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

- (void)encodeWithCoder:(id)a3
{
  visitIdentifier = self->_visitIdentifier;
  v5 = a3;
  [v5 encodeObject:visitIdentifier forKey:@"URL"];
  [v5 encodeObject:self->_title forKey:@"Title"];
  [v5 encodeBool:self->_loadSuccessful forKey:@"LoadSuccessful"];
  [v5 encodeBool:self->_httpNonGet forKey:@"HTTPNonGet"];
  [v5 encodeObject:self->_redirectSourceVisitIdentifier forKey:@"RedirectSourceURL"];
  [v5 encodeObject:self->_redirectDestinationVisitIdentifier forKey:@"RedirectDestinationURL"];
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