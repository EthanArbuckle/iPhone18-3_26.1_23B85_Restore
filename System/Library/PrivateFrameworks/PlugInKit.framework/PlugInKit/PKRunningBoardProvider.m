@interface PKRunningBoardProvider
- (id)taskStatesForPID:(id)a3 error:(id *)a4;
- (void)plugInHandshakeComplete;
@end

@implementation PKRunningBoardProvider

- (id)taskStatesForPID:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E69C7608] predicateMatchingIdentifier:a3];
  v6 = [MEMORY[0x1E69C7628] descriptor];
  [v6 setValues:1];
  v7 = [MEMORY[0x1E69C7620] statesForPredicate:v5 withDescriptor:v6 error:a4];

  return v7;
}

- (void)plugInHandshakeComplete
{
  v2 = [MEMORY[0x1E69C75C8] currentProcess];
  [v2 plugInHandshakeComplete];
}

@end