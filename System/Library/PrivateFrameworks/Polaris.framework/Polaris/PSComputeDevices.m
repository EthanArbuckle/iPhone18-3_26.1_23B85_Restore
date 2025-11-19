@interface PSComputeDevices
- (PSComputeDevices)init;
@end

@implementation PSComputeDevices

- (PSComputeDevices)init
{
  v6.receiver = self;
  v6.super_class = PSComputeDevices;
  v2 = [(PSComputeDevices *)&v6 init];
  if (v2)
  {
    v3 = MTLCreateSystemDefaultDevice();
    mtlDevice = v2->_mtlDevice;
    v2->_mtlDevice = v3;
  }

  return v2;
}

@end