@interface SiriTasksEvaluationPlugin
- (id)performTask:(id)a3 error:(id *)a4;
@end

@implementation SiriTasksEvaluationPlugin

- (id)performTask:(id)a3 error:(id *)a4
{
  v5 = a3;
  NSLog(@"SiriTasksEvaluationPlugin: Start task");
  v6 = objc_alloc_init(LighthouseShadowEvaluator);
  v21 = v5;
  v7 = [v5 parameters];
  v8 = [v7 stringValueForKey:@"bmStreamIdentifier" defaultValue:0];
  v9 = [v7 stringValueForKey:@"taskName" defaultValue:0];
  [v6 performSiriEvaluationTaskWithTaskName:v9 bmStreamIdentifier:v8 outError:a4];
  v10 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v6 getEvaluationResults];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v22 + 1) + 8 * i) toJSON];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v13);
  }

  v26[0] = @"evaluationData";
  v26[1] = @"sELFResults";
  v27[0] = v10;
  v17 = [v6 jsonSELFResults];
  v27[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];

  v19 = [[MLRTaskResult alloc] initWithJSONResult:v18 unprivatizedVector:0];

  return v19;
}

@end