@interface SiriTasksEvaluationPlugin
- (id)performTask:(id)task error:(id *)error;
@end

@implementation SiriTasksEvaluationPlugin

- (id)performTask:(id)task error:(id *)error
{
  taskCopy = task;
  NSLog(@"SiriTasksEvaluationPlugin: Start task");
  v6 = objc_alloc_init(LighthouseShadowEvaluator);
  v21 = taskCopy;
  parameters = [taskCopy parameters];
  v8 = [parameters stringValueForKey:@"bmStreamIdentifier" defaultValue:0];
  v9 = [parameters stringValueForKey:@"taskName" defaultValue:0];
  [v6 performSiriEvaluationTaskWithTaskName:v9 bmStreamIdentifier:v8 outError:error];
  v10 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  getEvaluationResults = [v6 getEvaluationResults];
  v12 = [getEvaluationResults countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(getEvaluationResults);
        }

        toJSON = [*(*(&v22 + 1) + 8 * i) toJSON];
        [v10 addObject:toJSON];
      }

      v13 = [getEvaluationResults countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v13);
  }

  v26[0] = @"evaluationData";
  v26[1] = @"sELFResults";
  v27[0] = v10;
  jsonSELFResults = [v6 jsonSELFResults];
  v27[1] = jsonSELFResults;
  v18 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];

  v19 = [[MLRTaskResult alloc] initWithJSONResult:v18 unprivatizedVector:0];

  return v19;
}

@end