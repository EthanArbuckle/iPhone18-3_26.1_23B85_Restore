@interface WebDeviceOrientationProviderMock
+ (id)shared;
- (WebDeviceOrientationProviderMock)init;
- (void)dealloc;
@end

@implementation WebDeviceOrientationProviderMock

+ (id)shared
{
  if (_MergedGlobals_15 == 1)
  {
    return qword_1ED6A61D0;
  }

  result = objc_alloc_init(WebDeviceOrientationProviderMock);
  qword_1ED6A61D0 = result;
  _MergedGlobals_15 = 1;
  return result;
}

- (WebDeviceOrientationProviderMock)init
{
  v5.receiver = self;
  v5.super_class = WebDeviceOrientationProviderMock;
  result = [(WebDeviceOrientationProviderMock *)&v5 init];
  if (result)
  {
    v3 = result;
    v4 = objc_alloc_init(WebDeviceOrientationProviderMockInternal);
    result = v3;
    v3->m_internal = v4;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebDeviceOrientationProviderMock;
  [(WebDeviceOrientationProviderMock *)&v3 dealloc];
}

@end