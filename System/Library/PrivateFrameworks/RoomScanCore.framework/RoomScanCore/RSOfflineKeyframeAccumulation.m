@interface RSOfflineKeyframeAccumulation
- (RSOfflineKeyframeAccumulation)init;
@end

@implementation RSOfflineKeyframeAccumulation

- (RSOfflineKeyframeAccumulation)init
{
  v8.receiver = self;
  v8.super_class = RSOfflineKeyframeAccumulation;
  v2 = [(RSOfflineKeyframeAccumulation *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(RSPointCloud);
    worldpc = v2->_worldpc;
    v2->_worldpc = v3;

    v5 = objc_alloc_init(RSTemporalMeta);
    accMeta = v2->_accMeta;
    v2->_accMeta = v5;
  }

  return v2;
}

@end