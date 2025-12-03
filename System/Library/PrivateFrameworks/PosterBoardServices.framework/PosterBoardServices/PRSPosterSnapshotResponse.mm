@interface PRSPosterSnapshotResponse
- (PRSPosterSnapshotResponse)initWithBSXPCCoder:(id)coder;
- (PRSPosterSnapshotResponse)initWithSnapshots:(id)snapshots;
@end

@implementation PRSPosterSnapshotResponse

- (PRSPosterSnapshotResponse)initWithSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  v9.receiver = self;
  v9.super_class = PRSPosterSnapshotResponse;
  v5 = [(PRSPosterSnapshotResponse *)&v9 init];
  if (v5)
  {
    v6 = [snapshotsCopy copy];
    snapshots = v5->_snapshots;
    v5->_snapshots = v6;
  }

  return v5;
}

- (PRSPosterSnapshotResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"snapshots"];

  if (v6)
  {
    self = [(PRSPosterSnapshotResponse *)self initWithSnapshots:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end