@interface PXAppleMusicCurationInfo
- (PXAppleMusicCurationInfo)initWithPerformerNames:(id)names;
@end

@implementation PXAppleMusicCurationInfo

- (PXAppleMusicCurationInfo)initWithPerformerNames:(id)names
{
  namesCopy = names;
  v9.receiver = self;
  v9.super_class = PXAppleMusicCurationInfo;
  v5 = [(PXAppleMusicCurationInfo *)&v9 init];
  if (v5)
  {
    v6 = [namesCopy copy];
    performerNames = v5->_performerNames;
    v5->_performerNames = v6;
  }

  return v5;
}

@end