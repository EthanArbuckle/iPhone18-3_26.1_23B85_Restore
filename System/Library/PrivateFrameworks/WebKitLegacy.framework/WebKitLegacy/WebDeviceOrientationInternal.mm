@interface WebDeviceOrientationInternal
- (WebDeviceOrientationInternal)initWithCoreDeviceOrientation:(void *)orientation;
@end

@implementation WebDeviceOrientationInternal

- (WebDeviceOrientationInternal)initWithCoreDeviceOrientation:(void *)orientation
{
  v9.receiver = self;
  v9.super_class = WebDeviceOrientationInternal;
  result = [(WebDeviceOrientationInternal *)&v9 init];
  if (result)
  {
    v6 = *orientation;
    *orientation = 0;
    m_ptr = result->m_orientation.m_ptr;
    result->m_orientation.m_ptr = v6;
    if (m_ptr)
    {
      if (*m_ptr == 1)
      {
        v8 = result;
        WTF::fastFree(m_ptr, v5);
        return v8;
      }

      else
      {
        --*m_ptr;
      }
    }
  }

  return result;
}

@end