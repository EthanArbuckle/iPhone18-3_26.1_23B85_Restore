@interface SSFileRadarCommand
+ (id)buildVersion;
- (NSString)problemDescription;
- (SSFileRadarCommand)initWithQueryContext:(id)a3;
- (SSFileRadarCommand)initWithQueryString:(id)a3;
- (void)setSections:(id)a3;
@end

@implementation SSFileRadarCommand

+ (id)buildVersion
{
  if (buildVersion_onceToken != -1)
  {
    +[SSFileRadarCommand buildVersion];
  }

  v3 = buildVersion_buildVersion;

  return v3;
}

void __34__SSFileRadarCommand_buildVersion__block_invoke()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Build>"];
  v1 = buildVersion_buildVersion;
  buildVersion_buildVersion = v0;

  v3 = _CFCopySupplementalVersionDictionary();
  v2 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
  if (v2)
  {
    objc_storeStrong(&buildVersion_buildVersion, v2);
  }
}

- (SSFileRadarCommand)initWithQueryString:(id)a3
{
  v4 = a3;
  v5 = [SPSearchQueryContext alloc];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F556FE60;
  }

  v7 = [(SPSearchQueryContext *)v5 initWithSearchString:v6];

  v8 = [(SSFileRadarCommand *)self initWithQueryContext:v7];
  return v8;
}

- (SSFileRadarCommand)initWithQueryContext:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SSFileRadarCommand;
  v5 = [(SSFileRadarCommand *)&v28 init];
  if (v5)
  {
    v6 = [v4 queryKind];
    v7 = [v4 searchEntities];
    v8 = [v7 firstObject];

    v9 = [v4 searchString];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [v8 searchString];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = &stru_1F556FE60;
      }

      v11 = v14;
    }

    v15 = [v8 tokenText];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_1F556FE60;
    }

    v18 = v17;

    v19 = MEMORY[0x1E696AD60];
    v20 = [objc_opt_class() internalReleaseAgreement];
    v21 = [v19 stringWithFormat:@"*** Note: Debug info contains the titles of items in the UI. Please review for confidential information. \n\n%@ \n***\n\n===  DEBUG INFO  ===\n\n", v20];

    v22 = [objc_opt_class() buildVersion];
    [v21 appendFormat:@"Build: %@\n\n", v22];

    [v21 appendFormat:@"Query: %@\n", v11];
    [v21 appendFormat:@"Token: %@\n", v18];

    [v21 appendFormat:@"Committed search: %d\n", (v6 - 5) < 4];
    [v21 appendFormat:@"Query kind: %lu\n\n", v6];
    [(SSFileRadarCommand *)v5 setQueryContext:v4];
    [(SSFileRadarCommand *)v5 setComponentName:@"Spotlight (New Bugs)"];
    if (isMacOS())
    {
      v23 = @"macOS";
    }

    else
    {
      v23 = @"iOS";
    }

    [(SSFileRadarCommand *)v5 setComponentVersion:v23];
    if (isMacOS())
    {
      v24 = 624062;
    }

    else
    {
      v24 = 312963;
    }

    [(SSFileRadarCommand *)v5 setComponentID:v24];
    [(SSFileRadarCommand *)v5 setClassification:@"Other Bug"];
    [(SSFileRadarCommand *)v5 setReproducibility:@"I Didn't Try"];
    [(SSFileRadarCommand *)v5 setTitle:&stru_1F556FE60];
    [(SSFileRadarCommand *)v5 setProblemTemplate:@"Problem Summary: \n\nSteps to Reproduce: \n\nRegression Information:"];
    [(SSFileRadarCommand *)v5 setProblemFooter:v21];
    v25 = [(SSFileRadarCommand *)v5 sections];
    v26 = SSExtensionIdentifiersForSections(v25);
    [(SSFileRadarCommand *)v5 setExtensionIdentifiers:v26];
  }

  return v5;
}

- (NSString)problemDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SSFileRadarCommand *)self problemTemplate];
  v5 = [(SSFileRadarCommand *)self problemFooter];
  v6 = [v3 stringWithFormat:@"%@\n\n%@", v4, v5];

  return v6;
}

- (void)setSections:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  sections = self->_sections;
  self->_sections = v5;

  v7 = SSExtensionIdentifiersForSections(v4);

  [(SSFileRadarCommand *)self setExtensionIdentifiers:v7];
}

@end