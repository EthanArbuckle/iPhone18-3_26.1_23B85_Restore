@interface WebDeviceOrientationProviderMockInternal
- (WebDeviceOrientationProviderMockInternal)init;
- (id)lastOrientation;
- (void)setOrientation:(id)orientation;
@end

@implementation WebDeviceOrientationProviderMockInternal

- (WebDeviceOrientationProviderMockInternal)init
{
  v8.receiver = self;
  v8.super_class = WebDeviceOrientationProviderMockInternal;
  v3 = [(WebDeviceOrientationProviderMockInternal *)&v8 init];
  if (v3)
  {
    if (*MEMORY[0x1E69E26E8])
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E26E8], v2);
    }

    else
    {
      NonCompact = WebCore::DeviceOrientationClientMock::operatorNewSlow(0x68);
    }

    v5 = NonCompact;
    WebCore::DeviceOrientationClientMock::DeviceOrientationClientMock(NonCompact);
    ptr = v3->m_core.__ptr_;
    v3->m_core.__ptr_ = v5;
    if (ptr)
    {
      std::default_delete<WebCore::DeviceOrientationClientMock>::operator()[abi:sn200100](ptr);
    }
  }

  return v3;
}

- (void)setOrientation:(id)orientation
{
  if (orientation)
  {
    v3 = *(*(orientation + 1) + 8);
    if (v3)
    {
      ++*v3;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;
  WebCore::DeviceOrientationClientMock::setOrientation();
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::fastFree(v5, v4);
    }

    else
    {
      --*v5;
    }
  }
}

- (id)lastOrientation
{
  v3 = [WebDeviceOrientation alloc];
  v4 = *(self->m_core.__ptr_ + 3);
  if (v4)
  {
    ++*v4;
  }

  v11 = v4;
  v5 = [(WebDeviceOrientation *)v3 initWithCoreDeviceOrientation:&v11];
  v7 = v5;
  if (v5)
  {
    v8 = v5;
  }

  v9 = v11;
  v11 = 0;
  if (!v9)
  {
    return v7;
  }

  if (*v9 != 1)
  {
    --*v9;
    return v7;
  }

  WTF::fastFree(v9, v6);
  return v7;
}

@end