@interface PGTrialSession
- (PGTrialSession)init;
- (id)namespaceNameForNamespaceType:(unsigned __int16)a3;
@end

@implementation PGTrialSession

- (id)namespaceNameForNamespaceType:(unsigned __int16)a3
{
  if ((a3 - 1) > 4)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_2788839E8[(a3 - 1)];
  }
}

- (PGTrialSession)init
{
  v6.receiver = self;
  v6.super_class = PGTrialSession;
  v2 = [(PGTrialSession *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D73660] clientWithIdentifier:235];
    trialClient = v2->_trialClient;
    v2->_trialClient = v3;
  }

  return v2;
}

@end