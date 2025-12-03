@interface PXStoryTrialSession
- (PXStoryTrialSession)init;
- (id)fileURLForFactorName:(id)name;
@end

@implementation PXStoryTrialSession

- (id)fileURLForFactorName:(id)name
{
  v3 = [(PXStoryTrialSession *)self _levelForFactorName:name];
  fileValue = [v3 fileValue];
  if ([fileValue hasPath])
  {
    path = [fileValue path];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
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