@interface VMULeaksAnalyzer
- (id)analysisSummaryWithError:(id *)error;
@end

@implementation VMULeaksAnalyzer

- (id)analysisSummaryWithError:(id *)error
{
  v4 = [[VMULeakDetector alloc] initWithVMUTask:0 graph:self->super._graph scanner:0 stackLogReader:0];
  v16 = 0;
  v5 = [(VMULeakDetector *)v4 detectLeaksWithError:&v16];
  v6 = v16;
  v7 = v6;
  if (v6)
  {
    if (error)
    {
      v8 = v6;
      v9 = 0;
      *error = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [VMUAnalyzerSummaryField alloc];
    if (v5)
    {
      v11 = [(VMUAnalyzerSummaryField *)v10 initWithKey:@"Allocations count" numericalValue:[(VMULeakDetector *)v4 allocationsCount] objectValue:0 fieldType:1];
      [v9 addObject:v11];
      v12 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Allocations size" numericalValue:[(VMULeakDetector *)v4 allocationsSize] objectValue:0 fieldType:2];

      [v9 addObject:v12];
      v13 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Leaks count" numericalValue:[(VMULeakDetector *)v4 leakedAllocationsCount] objectValue:0 fieldType:1];

      [v9 addObject:v13];
      v14 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Leaks total size" numericalValue:[(VMULeakDetector *)v4 leakedAllocationsSize] objectValue:0 fieldType:2];
    }

    else
    {
      v14 = [(VMUAnalyzerSummaryField *)v10 initWithKey:kVMUAnalysisSummaryKey[0] numericalValue:0 objectValue:@"No leaks detected" fieldType:0];
    }

    [v9 addObject:v14];
  }

  return v9;
}

@end