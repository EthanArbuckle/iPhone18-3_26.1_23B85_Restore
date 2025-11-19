@interface VKVectorOverlayData
- (VKVectorOverlayData)init;
- (VKVectorOverlayDelegate)_delegate;
@end

@implementation VKVectorOverlayData

- (VKVectorOverlayDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VKVectorOverlayData)init
{
  v6.receiver = self;
  v6.super_class = VKVectorOverlayData;
  v2 = [(VKVectorOverlayData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_blendMode = 0;
    v4 = v2;
  }

  return v3;
}

@end