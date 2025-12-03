@interface VKIconImage
- (CGColor)calloutFillColor;
- (CGColor)calloutHaloColor;
- (CGColor)calloutTextColor;
- (CGColor)fillColor;
- (CGColor)glyphColor;
- (CGColor)haloColor;
- (CGImage)image;
- (CGSize)imageSize;
- (float)contentScale;
- (float)opacity;
- (id).cxx_construct;
- (id)init:(shared_ptr<grl::IconImage>)init;
- (unsigned)calloutShape;
@end

@implementation VKIconImage

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = &unk_1F29E1130;
  *(self + 4) = 0;
  *(self + 6) = &unk_1F29E1130;
  *(self + 7) = 0;
  *(self + 9) = &unk_1F29E1130;
  *(self + 10) = 0;
  *(self + 12) = &unk_1F29E1130;
  *(self + 13) = 0;
  *(self + 15) = &unk_1F29E1130;
  *(self + 16) = 0;
  *(self + 18) = &unk_1F29E1130;
  *(self + 19) = 0;
  return self;
}

- (CGImage)image
{
  v7 = *MEMORY[0x1E69E9840];
  ptr = self->_iconImage.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  grl::IconImage::image(&v5, ptr);
  v3 = cf;
  v5 = &unk_1F29E1200;
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

- (float)contentScale
{
  ptr = self->_iconImage.__ptr_;
  if (ptr)
  {
    return *(ptr + 50);
  }

  else
  {
    return 1.0;
  }
}

- (float)opacity
{
  ptr = self->_iconImage.__ptr_;
  if (ptr)
  {
    return *(ptr + 51);
  }

  else
  {
    return 1.0;
  }
}

- (unsigned)calloutShape
{
  ptr = self->_iconImage.__ptr_;
  if (ptr && *(ptr + 193) == 1 && (v3 = *(ptr + 194), v3 <= 9))
  {
    return dword_1B33B3DBC[v3];
  }

  else
  {
    return 0;
  }
}

- (CGColor)calloutTextColor
{
  v9 = *MEMORY[0x1E69E9840];
  ptr = self->_iconImage.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  result = self->_calloutTextColor._obj;
  if (result)
  {
    return result;
  }

  if (*(ptr + 148) != 1)
  {
    return 0;
  }

  v6 = *(ptr + 149);
  grl::createCGColor(&v7, &v6);
  obj = self->_calloutTextColor._obj;
  if (obj)
  {
    CFRelease(obj);
  }

  result = v8;
  self->_calloutTextColor._obj = v8;
  return result;
}

- (CGColor)calloutHaloColor
{
  v9 = *MEMORY[0x1E69E9840];
  ptr = self->_iconImage.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  result = self->_calloutHaloColor._obj;
  if (result)
  {
    return result;
  }

  if (*(ptr + 143) != 1)
  {
    return 0;
  }

  v6 = *(ptr + 36);
  grl::createCGColor(&v7, &v6);
  obj = self->_calloutHaloColor._obj;
  if (obj)
  {
    CFRelease(obj);
  }

  result = v8;
  self->_calloutHaloColor._obj = v8;
  return result;
}

- (CGColor)calloutFillColor
{
  v9 = *MEMORY[0x1E69E9840];
  ptr = self->_iconImage.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  result = self->_calloutFillColor._obj;
  if (result)
  {
    return result;
  }

  if (*(ptr + 138) != 1)
  {
    return 0;
  }

  v6 = *(ptr + 139);
  grl::createCGColor(&v7, &v6);
  obj = self->_calloutFillColor._obj;
  if (obj)
  {
    CFRelease(obj);
  }

  result = v8;
  self->_calloutFillColor._obj = v8;
  return result;
}

- (CGColor)glyphColor
{
  v9 = *MEMORY[0x1E69E9840];
  ptr = self->_iconImage.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  result = self->_glyphColor._obj;
  if (result)
  {
    return result;
  }

  if (*(ptr + 158) != 1)
  {
    return 0;
  }

  v6 = *(ptr + 159);
  grl::createCGColor(&v7, &v6);
  obj = self->_glyphColor._obj;
  if (obj)
  {
    CFRelease(obj);
  }

  result = v8;
  self->_glyphColor._obj = v8;
  return result;
}

- (CGColor)haloColor
{
  v9 = *MEMORY[0x1E69E9840];
  ptr = self->_iconImage.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  result = self->_haloColor._obj;
  if (result)
  {
    return result;
  }

  if (*(ptr + 163) != 1)
  {
    return 0;
  }

  v6 = *(ptr + 41);
  grl::createCGColor(&v7, &v6);
  obj = self->_haloColor._obj;
  if (obj)
  {
    CFRelease(obj);
  }

  result = v8;
  self->_haloColor._obj = v8;
  return result;
}

- (CGColor)fillColor
{
  v9 = *MEMORY[0x1E69E9840];
  ptr = self->_iconImage.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  result = self->_fillColor._obj;
  if (result)
  {
    return result;
  }

  if (*(ptr + 153) != 1)
  {
    return 0;
  }

  v6 = *(ptr + 154);
  grl::createCGColor(&v7, &v6);
  obj = self->_fillColor._obj;
  if (obj)
  {
    CFRelease(obj);
  }

  result = v8;
  self->_fillColor._obj = v8;
  return result;
}

- (CGSize)imageSize
{
  ptr = self->_iconImage.__ptr_;
  if (ptr)
  {
    v3 = vcvtq_f64_f32(*grl::IconMetricsRenderResult::size((ptr + 24)));
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
  }

  v4 = v3.f64[1];
  result.width = v3.f64[0];
  result.height = v4;
  return result;
}

- (id)init:(shared_ptr<grl::IconImage>)init
{
  ptr = init.__ptr_;
  v10.receiver = self;
  v10.super_class = VKIconImage;
  v4 = [(VKIconImage *)&v10 init:init.__ptr_];
  v5 = v4;
  if (v4)
  {
    v6 = *ptr;
    if (*ptr)
    {
      v7 = *(ptr + 1);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      cntrl = v4->_iconImage.__cntrl_;
      v5->_iconImage.__ptr_ = v6;
      v5->_iconImage.__cntrl_ = v7;
      if (cntrl)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
      }
    }
  }

  return v5;
}

@end