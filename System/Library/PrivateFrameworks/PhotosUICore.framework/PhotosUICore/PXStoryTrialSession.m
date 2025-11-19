@interface PXStoryTrialSession
- (PXStoryTrialSession)init;
- (id)fileURLForFactorName:(id)a3;
@end

@implementation PXStoryTrialSession

- (id)fileURLForFactorName:(id)a3
{
  v3 = [(PXStoryTrialSession *)self _levelForFactorName:a3];
  v4 = [v3 fileValue];
  if ([v4 hasPath])
  {
    v5 = [v4 path];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PXStoryTrialSession)init
{
  v6.receiver = self;
  v6.super_class = PXStoryTrialSession;
  v2 = [(PXStoryTrialSession *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DB518] clientWithIdentifier:235];
    trialClient = v2->_trialClient;
    v2->_trialClient = v3;
  }

  return v2;
}

@end