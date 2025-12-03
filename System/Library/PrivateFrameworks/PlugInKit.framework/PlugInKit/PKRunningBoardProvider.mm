@interface PKRunningBoardProvider
- (id)taskStatesForPID:(id)d error:(id *)error;
- (void)plugInHandshakeComplete;
@end

@implementation PKRunningBoardProvider

- (id)taskStatesForPID:(id)d error:(id *)error
{
  v5 = [MEMORY[0x1E69C7608] predicateMatchingIdentifier:d];
  descriptor = [MEMORY[0x1E69C7628] descriptor];
  [descriptor setValues:1];
  v7 = [MEMORY[0x1E69C7620] statesForPredicate:v5 withDescriptor:descriptor error:error];

  return v7;
}

- (void)plugInHandshakeComplete
{
  currentProcess = [MEMORY[0x1E69C75C8] currentProcess];
  [currentProcess plugInHandshakeComplete];
}

@end