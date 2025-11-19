@interface RSOfflineProjection2DZNode
- (RSOfflineProjection2DZNode)init;
@end

@implementation RSOfflineProjection2DZNode

- (RSOfflineProjection2DZNode)init
{
  *&self->_initParam.global_max_density = 0;
  *&self->_initParam.voxel_size = 0xC3C23D70ALL;
  *&self->_initParam.numSemanticChannels = xmmword_2623A7BD0;
  v11.receiver = self;
  v11.super_class = RSOfflineProjection2DZNode;
  v2 = [(RSOfflineProjection2DZNode *)&v11 init];
  v3 = v2;
  if (v2)
  {
    if (!v2->_image)
    {
      v4 = sub_2622C5968([RSSemanticImage alloc], 512, 512, v2->_initParam.numAllChannels, 1, 1278226536);
      image = v3->_image;
      v3->_image = v4;
    }

    if (!v3->_heightImage)
    {
      v6 = sub_2622C5968([RSSemanticImage alloc], 512, 512, 1, 1, 1278226536);
      heightImage = v3->_heightImage;
      v3->_heightImage = v6;
    }

    if (!v3->_cameraImage)
    {
      v8 = sub_2622C5968([RSSemanticImage alloc], 512, 512, 2, 1, 1278226536);
      cameraImage = v3->_cameraImage;
      v3->_cameraImage = v8;
    }
  }

  return v3;
}

@end