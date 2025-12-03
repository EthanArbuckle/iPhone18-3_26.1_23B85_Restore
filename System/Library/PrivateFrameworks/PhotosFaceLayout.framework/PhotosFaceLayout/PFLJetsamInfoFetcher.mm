@interface PFLJetsamInfoFetcher
- (BOOL)getInfo:(jetsam_info *)info;
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

- (BOOL)getInfo:(jetsam_info *)info
{
  v5 = +[_PFLSharedJetsamInfo sharedJetsamInfo];
  LOBYTE(info) = [v5 getInfoFor:self into:info];

  return info;
}

- (BOOL)resetInterval
{
  v3 = +[_PFLSharedJetsamInfo sharedJetsamInfo];
  LOBYTE(self) = [v3 resetIntervalFor:self];

  return self;
}

@end