@interface RSProjection2DZ
- (RSProjection2DZ)init;
@end

@implementation RSProjection2DZ

- (RSProjection2DZ)init
{
  __asm { FMOV            V0.2S, #1.0 }

  *&self->_initParam.global_max_density = _D0;
  *&self->_initParam.voxel_size = 0xC3C23D70ALL;
  self->_initParam.numHeightChannels = 1;
  *&self->_initParam.numSemanticChannels = xmmword_2623A7BD0;
  v22.receiver = self;
  v22.super_class = RSProjection2DZ;
  v7 = [(RSProjection2DZ *)&v22 init];
  v8 = v7;
  if (v7)
  {
    *(v7 + 3) = vcvt_s32_f32(*(v7 + 32));
    if (!*(v7 + 1))
    {
      v9 = sub_2622C5968([RSSemanticImage alloc], 384, 384, *(v7 + 7), 1, 1278226536);
      image = v8->_image;
      v8->_image = v9;
    }

    if (!v8->_bufferImage)
    {
      v11 = sub_2622C5968([RSSemanticImage alloc], 384, 384, v8->_initParam.numAllChannels, 1, 1278226536);
      bufferImage = v8->_bufferImage;
      v8->_bufferImage = v11;
    }

    if (!v8->_heightImage)
    {
      v13 = sub_2622C5968([RSSemanticImage alloc], 384, 384, v8->_initParam.numHeightChannels, 1, 1278226536);
      heightImage = v8->_heightImage;
      v8->_heightImage = v13;
    }

    if (!v8->_bufferHeightImage)
    {
      v15 = sub_2622C5968([RSSemanticImage alloc], 384, 384, v8->_initParam.numHeightChannels, 1, 1278226536);
      bufferHeightImage = v8->_bufferHeightImage;
      v8->_bufferHeightImage = v15;
    }

    if (!v8->_doorImage)
    {
      v17 = sub_2622C5968([RSSemanticImage alloc], 384, 384, 1, 1, 1278226536);
      doorImage = v8->_doorImage;
      v8->_doorImage = v17;
    }

    if (!v8->_bufferDoorImage)
    {
      v19 = sub_2622C5968([RSSemanticImage alloc], 384, 384, 1, 1, 1278226536);
      bufferDoorImage = v8->_bufferDoorImage;
      v8->_bufferDoorImage = v19;
    }
  }

  return v8;
}

@end