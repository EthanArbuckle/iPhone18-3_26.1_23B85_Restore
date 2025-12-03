@interface VisionCoreWarpTransform
- (CGAffineTransform)affineTransform;
- (VisionCoreWarpTransform)initWithWarpTransform:(__n128)transform affineTransform:(__n128)affineTransform UUID:(float)d reprojectionError:(uint64_t)error;
- (VisionCoreWarpTransform)initWithWarpTransform:(__n128)transform affineTransform:(__n128)affineTransform UUID:(uint64_t)d reprojectionError:(__int128 *)error groupID:(void *)iD;
@end

@implementation VisionCoreWarpTransform

- (CGAffineTransform)affineTransform
{
  v3 = *&self[2].a;
  *&retstr->a = *&self[1].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].c;
  return self;
}

- (VisionCoreWarpTransform)initWithWarpTransform:(__n128)transform affineTransform:(__n128)affineTransform UUID:(uint64_t)d reprojectionError:(__int128 *)error groupID:(void *)iD
{
  iDCopy = iD;
  v21.receiver = self;
  v21.super_class = VisionCoreWarpTransform;
  v12 = [(VisionCoreWarpTransform *)&v21 init];
  if (v12)
  {
    v13 = [iDCopy copy];
    UUID = v12->_UUID;
    v12->_UUID = v13;

    *v12->_anon_20 = a2;
    *&v12->_anon_20[16] = transform;
    *&v12->_anon_20[32] = affineTransform;
    v15 = *error;
    v16 = error[2];
    *&v12->_affineTransform.c = error[1];
    *&v12->_affineTransform.tx = v16;
    *&v12->_affineTransform.a = v15;
    v12->_reprojectionError = 0.0;
    v12->_groupID = a8;
  }

  return v12;
}

- (VisionCoreWarpTransform)initWithWarpTransform:(__n128)transform affineTransform:(__n128)affineTransform UUID:(float)d reprojectionError:(uint64_t)error
{
  v11 = a8;
  v21.receiver = self;
  v21.super_class = VisionCoreWarpTransform;
  v12 = [(VisionCoreWarpTransform *)&v21 init];
  if (v12)
  {
    v13 = [v11 copy];
    UUID = v12->_UUID;
    v12->_UUID = v13;

    *v12->_anon_20 = a2;
    *&v12->_anon_20[16] = transform;
    *&v12->_anon_20[32] = affineTransform;
    v15 = *a7;
    v16 = a7[2];
    *&v12->_affineTransform.c = a7[1];
    *&v12->_affineTransform.tx = v16;
    *&v12->_affineTransform.a = v15;
    v12->_reprojectionError = d;
    v12->_groupID = 0;
  }

  return v12;
}

@end