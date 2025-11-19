@interface _RPTTestRunnerResultsDelegate
- (void)testRunner:(id)a3 didFailRunningParameters:(id)a4 withError:(id)a5;
- (void)testRunner:(id)a3 didFinishRunningParameters:(id)a4;
@end

@implementation _RPTTestRunnerResultsDelegate

- (void)testRunner:(id)a3 didFinishRunningParameters:(id)a4
{
  v4 = [(_RPTTestRunnerResultsDelegate *)self resultsHandler:a3];
  (*(v4 + 2))(v4, 0, 0);
}

- (void)testRunner:(id)a3 didFailRunningParameters:(id)a4 withError:(id)a5
{
  v6 = a5;
  v7 = [(_RPTTestRunnerResultsDelegate *)self resultsHandler];
  v7[2](v7, 1, v6);
}

@end