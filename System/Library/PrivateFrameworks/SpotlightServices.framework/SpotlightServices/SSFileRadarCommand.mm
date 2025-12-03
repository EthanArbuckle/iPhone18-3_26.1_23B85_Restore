@interface SSFileRadarCommand
+ (id)buildVersion;
- (NSString)problemDescription;
- (SSFileRadarCommand)initWithQueryContext:(id)context;
- (SSFileRadarCommand)initWithQueryString:(id)string;
- (void)setSections:(id)sections;
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

- (SSFileRadarCommand)initWithQueryString:(id)string
{
  stringCopy = string;
  v5 = [SPSearchQueryContext alloc];
  if (stringCopy)
  {
    v6 = stringCopy;
  }

  else
  {
    v6 = &stru_1F556FE60;
  }

  v7 = [(SPSearchQueryContext *)v5 initWithSearchString:v6];

  v8 = [(SSFileRadarCommand *)self initWithQueryContext:v7];
  return v8;
}

- (SSFileRadarCommand)initWithQueryContext:(id)context
{
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = SSFileRadarCommand;
  v5 = [(SSFileRadarCommand *)&v28 init];
  if (v5)
  {
    queryKind = [contextCopy queryKind];
    searchEntities = [contextCopy searchEntities];
    firstObject = [searchEntities firstObject];

    searchString = [contextCopy searchString];
    v10 = searchString;
    if (searchString)
    {
      v11 = searchString;
    }

    else
    {
      searchString2 = [firstObject searchString];
      v13 = searchString2;
      if (searchString2)
      {
        v14 = searchString2;
      }

      else
      {
        v14 = &stru_1F556FE60;
      }

      v11 = v14;
    }

    tokenText = [firstObject tokenText];
    v16 = tokenText;
    if (tokenText)
    {
      v17 = tokenText;
    }

    else
    {
      v17 = &stru_1F556FE60;
    }

    v18 = v17;

    v19 = MEMORY[0x1E696AD60];
    internalReleaseAgreement = [objc_opt_class() internalReleaseAgreement];
    v21 = [v19 stringWithFormat:@"*** Note: Debug info contains the titles of items in the UI. Please review for confidential information. \n\n%@ \n***\n\n===  DEBUG INFO  ===\n\n", internalReleaseAgreement];

    buildVersion = [objc_opt_class() buildVersion];
    [v21 appendFormat:@"Build: %@\n\n", buildVersion];

    [v21 appendFormat:@"Query: %@\n", v11];
    [v21 appendFormat:@"Token: %@\n", v18];

    [v21 appendFormat:@"Committed search: %d\n", (queryKind - 5) < 4];
    [v21 appendFormat:@"Query kind: %lu\n\n", queryKind];
    [(SSFileRadarCommand *)v5 setQueryContext:contextCopy];
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
    sections = [(SSFileRadarCommand *)v5 sections];
    v26 = SSExtensionIdentifiersForSections(sections);
    [(SSFileRadarCommand *)v5 setExtensionIdentifiers:v26];
  }

  return v5;
}

- (NSString)problemDescription
{
  v3 = MEMORY[0x1E696AEC0];
  problemTemplate = [(SSFileRadarCommand *)self problemTemplate];
  problemFooter = [(SSFileRadarCommand *)self problemFooter];
  v6 = [v3 stringWithFormat:@"%@\n\n%@", problemTemplate, problemFooter];

  return v6;
}

- (void)setSections:(id)sections
{
  sectionsCopy = sections;
  v5 = [sectionsCopy copy];
  sections = self->_sections;
  self->_sections = v5;

  v7 = SSExtensionIdentifiersForSections(sectionsCopy);

  [(SSFileRadarCommand *)self setExtensionIdentifiers:v7];
}

@end