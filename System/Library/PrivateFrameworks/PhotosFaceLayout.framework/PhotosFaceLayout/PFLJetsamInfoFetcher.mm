@interface PFLJetsamInfoFetcher
- (BOOL)getInfo:(jetsam_info *)a3;
- (BOOL)resetInterval;
- (void)dealloc;
@end

@implementation PFLJetsamInfoFetcher

- (void)dealloc
{
  v3 = +[_PFLSharedJetsamInfo sharedJetsamInfo];
  [v3 unregister:self];

  v4.receiver = self;
  v4.super_class = PFLJetsamInfoFetcher;
  [(PFLJetsamInfoFetcher *)&v4 dealloc];
}

- (BOOL)getInfo:(jetsam_info *)a3
{
  v5 = +[_PFLSharedJetsamInfo sharedJetsamInfo];
  LOBYTE(a3) = [v5 getInfoFor:self into:a3];

  return a3;
}

- (BOOL)resetInterval
{
  v3 = +[_PFLSharedJetsamInfo sharedJetsamInfo];
  LOBYTE(self) = [v3 resetIntervalFor:self];

  return self;
}

@end