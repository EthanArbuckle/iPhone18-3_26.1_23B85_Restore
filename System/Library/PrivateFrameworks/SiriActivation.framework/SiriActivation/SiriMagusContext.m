@interface SiriMagusContext
- (id)description;
@end

@implementation SiriMagusContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriContext *)self contextOverride];
  v5 = [(SiriContinuityContext *)self speechRequestOptions];
  v6 = [(SiriContinuityContext *)self requestInfo];
  v7 = [(SiriContinuityContext *)self userActivity];
  v8 = [v3 stringWithFormat:@"<SiriMagusContext contextOverride:%@, speechRequestOptions:%@, requestInfo:%@, userActivity:%@>", v4, v5, v6, v7];

  return v8;
}

@end