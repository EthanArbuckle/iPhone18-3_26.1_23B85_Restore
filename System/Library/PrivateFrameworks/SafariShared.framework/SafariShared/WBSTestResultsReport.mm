@interface WBSTestResultsReport
+ (id)reportForActualResults:(id)a3 expectedResults:(id)a4 expectedResultsName:(id)a5 descriptiveResultsName:(id)a6 uniformTypeIdentifier:(id)a7 forStage:(id)a8 forTest:(id)a9 inBundle:(id)a10;
+ (id)reportForError:(id)a3 descriptiveResultsName:(id)a4 forStage:(id)a5 forTest:(id)a6 inBundle:(id)a7;
+ (id)reportForPerformance:(id)a3 forStage:(id)a4 forTest:(id)a5 inBundle:(id)a6;
- (WBSTestResultsReport)initWithDictionaryRepresentation:(id)a3;
- (unint64_t)reportType;
@end

@implementation WBSTestResultsReport

- (WBSTestResultsReport)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSTestResultsReport;
  v5 = [(WBSTestResultsReport *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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

+ (id)reportForActualResults:(id)a3 expectedResults:(id)a4 expectedResultsName:(id)a5 descriptiveResultsName:(id)a6 uniformTypeIdentifier:(id)a7 forStage:(id)a8 forTest:(id)a9 inBundle:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v23 setObject:@"results" forKeyedSubscript:@"type"];
  if (v22)
  {
    v24 = [v22 identifier];
    [v23 setObject:v24 forKeyedSubscript:@"testBundle"];
  }

  if (v21)
  {
    v25 = [v21 identifier];
    [v23 setObject:v25 forKeyedSubscript:@"testIdentifier"];
  }

  if (v20)
  {
    [v23 setObject:v20 forKeyedSubscript:@"stage"];
  }

  if (v15)
  {
    [v23 setObject:v15 forKeyedSubscript:@"actualResults"];
  }

  if (v16)
  {
    [v23 setObject:v16 forKeyedSubscript:@"expectedResults"];
  }

  if (v17)
  {
    [v23 setObject:v17 forKeyedSubscript:@"expectedResultsName"];
  }

  if (v18)
  {
    [v23 setObject:v18 forKeyedSubscript:@"resultsDescriptiveName"];
  }

  if (v19)
  {
    [v23 setObject:v19 forKeyedSubscript:@"uti"];
  }

  v26 = [[a1 alloc] initWithDictionaryRepresentation:v23];

  return v26;
}

+ (id)reportForPerformance:(id)a3 forStage:(id)a4 forTest:(id)a5 inBundle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v14 setObject:@"performance" forKeyedSubscript:@"type"];
  if (v13)
  {
    v15 = [v13 identifier];
    [v14 setObject:v15 forKeyedSubscript:@"testBundle"];
  }

  if (v12)
  {
    v16 = [v12 identifier];
    [v14 setObject:v16 forKeyedSubscript:@"testIdentifier"];
  }

  if (v11)
  {
    [v14 setObject:v11 forKeyedSubscript:@"stage"];
  }

  if (v10)
  {
    [v14 setObject:v10 forKeyedSubscript:@"values"];
  }

  v17 = [[a1 alloc] initWithDictionaryRepresentation:v14];

  return v17;
}

+ (id)reportForError:(id)a3 descriptiveResultsName:(id)a4 forStage:(id)a5 forTest:(id)a6 inBundle:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x1E695DF90];
  v17 = a3;
  v18 = objc_alloc_init(v16);
  [v18 setObject:@"error" forKeyedSubscript:@"type"];
  if (v15)
  {
    v19 = [v15 identifier];
    [v18 setObject:v19 forKeyedSubscript:@"testBundle"];
  }

  if (v14)
  {
    v20 = [v14 identifier];
    [v18 setObject:v20 forKeyedSubscript:@"testIdentifier"];
  }

  if (v13)
  {
    [v18 setObject:v13 forKeyedSubscript:@"stage"];
  }

  if (v12)
  {
    [v18 setObject:v12 forKeyedSubscript:@"resultsDescriptiveName"];
  }

  v21 = [v17 domain];
  [v18 setObject:v21 forKeyedSubscript:@"domain"];

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "code")}];
  [v18 setObject:v22 forKeyedSubscript:@"code"];

  v23 = [v17 localizedDescription];

  [v18 setObject:v23 forKeyedSubscript:@"message"];
  v24 = [[a1 alloc] initWithDictionaryRepresentation:v18];

  return v24;
}

@end