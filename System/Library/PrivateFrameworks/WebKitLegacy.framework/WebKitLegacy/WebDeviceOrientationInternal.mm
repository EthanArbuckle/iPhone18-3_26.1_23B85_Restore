@interface WebDeviceOrientationInternal
- (WebDeviceOrientationInternal)initWithCoreDeviceOrientation:(void *)a3;
@end

@implementation WebDeviceOrientationInternal

- (WebDeviceOrientationInternal)initWithCoreDeviceOrientation:(void *)a3
{
  v9.receiver = self;
  v9.super_class = WebDeviceOrientationInternal;
  result = [(WebDeviceOrientationInternal *)&v9 init];
  if (result)
  {
    v6 = *a3;
    *a3 = 0;
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