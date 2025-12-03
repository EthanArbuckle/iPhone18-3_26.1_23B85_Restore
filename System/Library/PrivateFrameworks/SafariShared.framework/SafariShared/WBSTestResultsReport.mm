@interface WBSTestResultsReport
+ (id)reportForActualResults:(id)results expectedResults:(id)expectedResults expectedResultsName:(id)name descriptiveResultsName:(id)resultsName uniformTypeIdentifier:(id)identifier forStage:(id)stage forTest:(id)test inBundle:(id)self0;
+ (id)reportForError:(id)error descriptiveResultsName:(id)name forStage:(id)stage forTest:(id)test inBundle:(id)bundle;
+ (id)reportForPerformance:(id)performance forStage:(id)stage forTest:(id)test inBundle:(id)bundle;
- (WBSTestResultsReport)initWithDictionaryRepresentation:(id)representation;
- (unint64_t)reportType;
@end

@implementation WBSTestResultsReport

- (WBSTestResultsReport)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = WBSTestResultsReport;
  v5 = [(WBSTestResultsReport *)&v10 init];
  if (v5)
  {
    v6 = [representationCopy copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;

    v8 = v5;
  }

  return v5;
}

- (unint64_t)reportType
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation safari_stringForKey:@"type"];
  if ([v2 isEqualToString:@"results"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"performance"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"error"])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)reportForActualResults:(id)results expectedResults:(id)expectedResults expectedResultsName:(id)name descriptiveResultsName:(id)resultsName uniformTypeIdentifier:(id)identifier forStage:(id)stage forTest:(id)test inBundle:(id)self0
{
  resultsCopy = results;
  expectedResultsCopy = expectedResults;
  nameCopy = name;
  resultsNameCopy = resultsName;
  identifierCopy = identifier;
  stageCopy = stage;
  testCopy = test;
  bundleCopy = bundle;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v23 setObject:@"results" forKeyedSubscript:@"type"];
  if (bundleCopy)
  {
    identifier = [bundleCopy identifier];
    [v23 setObject:identifier forKeyedSubscript:@"testBundle"];
  }

  if (testCopy)
  {
    identifier2 = [testCopy identifier];
    [v23 setObject:identifier2 forKeyedSubscript:@"testIdentifier"];
  }

  if (stageCopy)
  {
    [v23 setObject:stageCopy forKeyedSubscript:@"stage"];
  }

  if (resultsCopy)
  {
    [v23 setObject:resultsCopy forKeyedSubscript:@"actualResults"];
  }

  if (expectedResultsCopy)
  {
    [v23 setObject:expectedResultsCopy forKeyedSubscript:@"expectedResults"];
  }

  if (nameCopy)
  {
    [v23 setObject:nameCopy forKeyedSubscript:@"expectedResultsName"];
  }

  if (resultsNameCopy)
  {
    [v23 setObject:resultsNameCopy forKeyedSubscript:@"resultsDescriptiveName"];
  }

  if (identifierCopy)
  {
    [v23 setObject:identifierCopy forKeyedSubscript:@"uti"];
  }

  v26 = [[self alloc] initWithDictionaryRepresentation:v23];

  return v26;
}

+ (id)reportForPerformance:(id)performance forStage:(id)stage forTest:(id)test inBundle:(id)bundle
{
  performanceCopy = performance;
  stageCopy = stage;
  testCopy = test;
  bundleCopy = bundle;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v14 setObject:@"performance" forKeyedSubscript:@"type"];
  if (bundleCopy)
  {
    identifier = [bundleCopy identifier];
    [v14 setObject:identifier forKeyedSubscript:@"testBundle"];
  }

  if (testCopy)
  {
    identifier2 = [testCopy identifier];
    [v14 setObject:identifier2 forKeyedSubscript:@"testIdentifier"];
  }

  if (stageCopy)
  {
    [v14 setObject:stageCopy forKeyedSubscript:@"stage"];
  }

  if (performanceCopy)
  {
    [v14 setObject:performanceCopy forKeyedSubscript:@"values"];
  }

  v17 = [[self alloc] initWithDictionaryRepresentation:v14];

  return v17;
}

+ (id)reportForError:(id)error descriptiveResultsName:(id)name forStage:(id)stage forTest:(id)test inBundle:(id)bundle
{
  nameCopy = name;
  stageCopy = stage;
  testCopy = test;
  bundleCopy = bundle;
  v16 = MEMORY[0x1E695DF90];
  errorCopy = error;
  v18 = objc_alloc_init(v16);
  [v18 setObject:@"error" forKeyedSubscript:@"type"];
  if (bundleCopy)
  {
    identifier = [bundleCopy identifier];
    [v18 setObject:identifier forKeyedSubscript:@"testBundle"];
  }

  if (testCopy)
  {
    identifier2 = [testCopy identifier];
    [v18 setObject:identifier2 forKeyedSubscript:@"testIdentifier"];
  }

  if (stageCopy)
  {
    [v18 setObject:stageCopy forKeyedSubscript:@"stage"];
  }

  if (nameCopy)
  {
    [v18 setObject:nameCopy forKeyedSubscript:@"resultsDescriptiveName"];
  }

  domain = [errorCopy domain];
  [v18 setObject:domain forKeyedSubscript:@"domain"];

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  [v18 setObject:v22 forKeyedSubscript:@"code"];

  localizedDescription = [errorCopy localizedDescription];

  [v18 setObject:localizedDescription forKeyedSubscript:@"message"];
  v24 = [[self alloc] initWithDictionaryRepresentation:v18];

  return v24;
}

@end