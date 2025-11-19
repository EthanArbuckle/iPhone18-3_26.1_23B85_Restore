@interface VisionCoreWarpTransform
- (CGAffineTransform)affineTransform;
- (VisionCoreWarpTransform)initWithWarpTransform:(__n128)a3 affineTransform:(__n128)a4 UUID:(float)a5 reprojectionError:(uint64_t)a6;
- (VisionCoreWarpTransform)initWithWarpTransform:(__n128)a3 affineTransform:(__n128)a4 UUID:(uint64_t)a5 reprojectionError:(__int128 *)a6 groupID:(void *)a7;
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

- (VisionCoreWarpTransform)initWithWarpTransform:(__n128)a3 affineTransform:(__n128)a4 UUID:(uint64_t)a5 reprojectionError:(__int128 *)a6 groupID:(void *)a7
{
  v11 = a7;
  v21.receiver = a1;
  v21.super_class = VisionCoreWarpTransform;
  v12 = [(VisionCoreWarpTransform *)&v21 init];
  if (v12)
  {
    v13 = [v11 copy];
    UUID = v12->_UUID;
    v12->_UUID = v13;

    *v12->_anon_20 = a2;
    *&v12->_anon_20[16] = a3;
    *&v12->_anon_20[32] = a4;
    v15 = *a6;
    v16 = a6[2];
    *&v12->_affineTransform.c = a6[1];
    *&v12->_affineTransform.tx = v16;
    *&v12->_affineTransform.a = v15;
    v12->_reprojectionError = 0.0;
    v12->_groupID = a8;
  }

  return v12;
}

- (VisionCoreWarpTransform)initWithWarpTransform:(__n128)a3 affineTransform:(__n128)a4 UUID:(float)a5 reprojectionError:(uint64_t)a6
{
  v11 = a8;
  v21.receiver = a1;
  v21.super_class = VisionCoreWarpTransform;
  v12 = [(VisionCoreWarpTransform *)&v21 init];
  if (v12)
  {
    v13 = [v11 copy];
    UUID = v12->_UUID;
    v12->_UUID = v13;

    *v12->_anon_20 = a2;
    *&v12->_anon_20[16] = a3;
    *&v12->_anon_20[32] = a4;
    v15 = *a7;
    v16 = a7[2];
    *&v12->_affineTransform.c = a7[1];
    *&v12->_affineTransform.tx = v16;
    *&v12->_affineTransform.a = v15;
    v12->_reprojectionError = a5;
    v12->_groupID = 0;
  }

  return v12;
}

@end