@interface _RPTTestRunnerResultsDelegate
- (void)testRunner:(id)runner didFailRunningParameters:(id)parameters withError:(id)error;
- (void)testRunner:(id)runner didFinishRunningParameters:(id)parameters;
@end

@implementation _RPTTestRunnerResultsDelegate

- (void)testRunner:(id)runner didFinishRunningParameters:(id)parameters
{
  v4 = [(_RPTTestRunnerResultsDelegate *)self resultsHandler:runner];
  (*(v4 + 2))(v4, 0, 0);
}

- (void)testRunner:(id)runner didFailRunningParameters:(id)parameters withError:(id)error
{
  errorCopy = error;
  resultsHandler = [(_RPTTestRunnerResultsDelegate *)self resultsHandler];
  resultsHandler[2](resultsHandler, 1, errorCopy);
}

@end