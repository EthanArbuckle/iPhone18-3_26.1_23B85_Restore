@interface PXAppleMusicCurationInfo
- (PXAppleMusicCurationInfo)initWithPerformerNames:(id)a3;
@end

@implementation PXAppleMusicCurationInfo

- (PXAppleMusicCurationInfo)initWithPerformerNames:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXAppleMusicCurationInfo;
  v5 = [(PXAppleMusicCurationInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    performerNames = v5->_performerNames;
    v5->_performerNames = v6;
  }

  return v5;
}

@end