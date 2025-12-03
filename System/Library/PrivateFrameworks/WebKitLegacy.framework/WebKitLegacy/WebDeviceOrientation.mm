@interface WebDeviceOrientation
- (WebDeviceOrientation)initWithCanProvideAlpha:(BOOL)alpha alpha:(double)a4 canProvideBeta:(BOOL)beta beta:(double)a6 canProvideGamma:(BOOL)gamma gamma:(double)a8;
- (WebDeviceOrientation)initWithCoreDeviceOrientation:(void *)orientation;
- (void)dealloc;
@end

@implementation WebDeviceOrientation

- (WebDeviceOrientation)initWithCoreDeviceOrientation:(void *)orientation
{
  v7.receiver = self;
  v7.super_class = WebDeviceOrientation;
  result = [(WebDeviceOrientation *)&v7 init];
  if (result)
  {
    v5 = result;
    v6 = [[WebDeviceOrientationInternal alloc] initWithCoreDeviceOrientation:orientation];
    result = v5;
    v5->m_internal = v6;
  }

  return result;
}

- (WebDeviceOrientation)initWithCanProvideAlpha:(BOOL)alpha alpha:(double)a4 canProvideBeta:(BOOL)beta beta:(double)a6 canProvideGamma:(BOOL)gamma gamma:(double)a8
{
  v15.receiver = self;
  v15.super_class = WebDeviceOrientation;
  v8 = [(WebDeviceOrientation *)&v15 init];
  if (v8)
  {
    v9 = [WebDeviceOrientationInternal alloc];
    WebCore::DeviceOrientationData::create();
    v14 = v13;
    v8->m_internal = [(WebDeviceOrientationInternal *)v9 initWithCoreDeviceOrientation:&v14, 0, 0];
    v11 = v14;
    v14 = 0;
    if (v11)
    {
      if (*v11 == 1)
      {
        WTF::fastFree(v11, v10);
      }

      else
      {
        --*v11;
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebDeviceOrientation;
  [(WebDeviceOrientation *)&v3 dealloc];
}

@end