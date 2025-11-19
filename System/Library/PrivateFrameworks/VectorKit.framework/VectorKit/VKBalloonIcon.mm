@interface VKBalloonIcon
- (CGColor)defaultGlyphColor;
- (CGImage)balloonImage;
- (CGImage)dotImage;
- (CGPoint)anchorPoint;
- (CGRect)balloonRect;
- (CGRect)contentRect;
- (CGRect)dotRect;
- (VKBalloonIcon)initWithBalloonImage:(shared_ptr<grl:(shared_ptr<grl::IconImage>)a4 :IconImage>)a3 dotImage:;
- (id).cxx_construct;
@end

@implementation VKBalloonIcon

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (CGColor)defaultGlyphColor
{
  v6 = -1;
  ptr = self->_balloonImage.__ptr_;
  if (!ptr)
  {
    return CGColorCreateSRGB(255.0, 255.0, 255.0, 255.0);
  }

  v3 = *(ptr + 158);
  v4 = (ptr + 159);
  if (!v3)
  {
    v4 = &v6;
  }

  return CGColorCreateSRGB(*v4, BYTE1(*v4), BYTE2(*v4), HIBYTE(*v4));
}

- (CGPoint)anchorPoint
{
  ptr = self->_balloonImage.__ptr_;
  if (ptr)
  {
    v3 = *(grl::IconMetricsRenderResult::size((ptr + 24)) + 4);
    Anchor = grl::IconMetricsRenderResult::getAnchor((ptr + 24));
    v5 = *Anchor;
    v6 = (v3 - Anchor[1]);
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)dotRect
{
  ptr = self->_dotImage.__ptr_;
  if (ptr && (LayerMetrics = grl::IconMetricsRenderResult::getLayerMetrics(ptr + 24, 1u, 0)) != 0)
  {
    v4 = (LayerMetrics[26] * 0.088235) * LayerMetrics[27];
    grl::LayerMetrics::anchor(LayerMetrics);
    v6 = v5 - (v4 * 0.5);
    v8 = v7 + (v4 * 0.5);
    v9 = grl::IconMetricsRenderResult::size((ptr + 24));
    v10 = v6;
    v11 = (*(v9 + 4) - v8);
    v12 = v4;
    v13 = v4;
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)balloonRect
{
  ptr = self->_balloonImage.__ptr_;
  if (ptr && (LayerMetrics = grl::IconMetricsRenderResult::getLayerMetrics(self->_dotImage.__ptr_ + 24, 1u, 0)) != 0)
  {
    v4 = LayerMetrics;
    v5 = grl::LayerMetrics::haloRect(LayerMetrics);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *(v4 + 26);
    v13 = grl::IconMetricsRenderResult::size((ptr + 24));
    v14 = v5;
    v15 = (*(v13 + 4) - v11);
    v16 = (v9 - v5);
    v17 = (v11 - (v7 + (v12 * -0.11516)));
  }

  else
  {
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)contentRect
{
  ptr = self->_balloonImage.__ptr_;
  if (ptr)
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect((ptr + 24));
    v4 = grl::IconMetricsRenderResult::size((ptr + 24));
    v5 = FillRect[3];
    v6 = *FillRect;
    v7 = (*(v4 + 4) - v5);
    v8 = (v5 - FillRect[1]);
    v9 = v8;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGImage)dotImage
{
  v7 = *MEMORY[0x1E69E9840];
  ptr = self->_dotImage.__ptr_;
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

- (CGImage)balloonImage
{
  v7 = *MEMORY[0x1E69E9840];
  ptr = self->_balloonImage.__ptr_;
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

- (VKBalloonIcon)initWithBalloonImage:(shared_ptr<grl:(shared_ptr<grl::IconImage>)a4 :IconImage>)a3 dotImage:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v15.receiver = self;
  v15.super_class = VKBalloonIcon;
  v6 = [(VKBalloonIcon *)&v15 init:a3.__ptr_];
  v7 = v6;
  if (v6)
  {
    v9 = *ptr;
    v8 = *(ptr + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6->_balloonImage.__cntrl_;
    v7->_balloonImage.__ptr_ = v9;
    v7->_balloonImage.__cntrl_ = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v12 = *cntrl;
    v11 = *(cntrl + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v7->_dotImage.__cntrl_;
    v7->_dotImage.__ptr_ = v12;
    v7->_dotImage.__cntrl_ = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }
  }

  return v7;
}

@end