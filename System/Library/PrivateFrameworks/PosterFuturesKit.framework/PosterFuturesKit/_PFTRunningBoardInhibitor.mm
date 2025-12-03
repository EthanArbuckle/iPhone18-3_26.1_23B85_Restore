@interface _PFTRunningBoardInhibitor
+ (id)os_log;
+ (id)runningBoardTarget;
- (_PFTRunningBoardInhibitor)initWithExplanation:(id)explanation;
- (id)description;
- (void)start;
- (void)stop;
@end

@implementation _PFTRunningBoardInhibitor

+ (id)os_log
{
  if (os_log_pft_once_token_8_3 != -1)
  {
    +[_PFTRunningBoardInhibitor os_log];
  }

  v3 = os_log_pft_once_object_8_3;

  return v3;
}

- (_PFTRunningBoardInhibitor)initWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  v10.receiver = self;
  v10.super_class = _PFTRunningBoardInhibitor;
  v5 = [(_PFTRunningBoardInhibitor *)&v10 init];
  if (v5)
  {
    v6 = [explanationCopy copy];
    explanation = v5->_explanation;
    v5->_explanation = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_explanation withName:@"explanation"];
  v5 = [v3 appendObject:self->_assertion withName:@"assertion"];
  build = [v3 build];

  return build;
}

- (void)start
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_25ED8F000, a2, OS_LOG_TYPE_ERROR, "Failed to take runningboard assertion, error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = _PFTRunningBoardInhibitor;
  [(PFTInhibitor *)&v4 stop];
  assertion = [(_PFTRunningBoardInhibitor *)self assertion];
  [assertion invalidate];

  [(_PFTRunningBoardInhibitor *)self setAssertion:0];
}

+ (id)runningBoardTarget
{
  if (runningBoardTarget_pft_once_token_12 != -1)
  {
    +[_PFTRunningBoardInhibitor runningBoardTarget];
  }

  v3 = runningBoardTarget_pft_once_object_12;

  return v3;
}

@end