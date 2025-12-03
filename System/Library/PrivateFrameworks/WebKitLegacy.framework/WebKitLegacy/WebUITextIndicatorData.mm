@interface WebUITextIndicatorData
- (CGRect)contentImageWithoutSelectionRectInRootViewCoordinates;
- (CGRect)selectionRectInRootViewCoordinates;
- (CGRect)textBoundingRectInRootViewCoordinates;
- (WebUITextIndicatorData)initWithImage:(CGImage *)image scale:(double)scale;
- (WebUITextIndicatorData)initWithImage:(CGImage *)image textIndicatorData:(const void *)data scale:(double)scale;
- (void)dealloc;
@end

@implementation WebUITextIndicatorData

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebUITextIndicatorData;
  [(WebUITextIndicatorData *)&v3 dealloc];
}

- (CGRect)selectionRectInRootViewCoordinates
{
  x = self->_selectionRectInRootViewCoordinates.origin.x;
  y = self->_selectionRectInRootViewCoordinates.origin.y;
  width = self->_selectionRectInRootViewCoordinates.size.width;
  height = self->_selectionRectInRootViewCoordinates.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)textBoundingRectInRootViewCoordinates
{
  x = self->_textBoundingRectInRootViewCoordinates.origin.x;
  y = self->_textBoundingRectInRootViewCoordinates.origin.y;
  width = self->_textBoundingRectInRootViewCoordinates.size.width;
  height = self->_textBoundingRectInRootViewCoordinates.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentImageWithoutSelectionRectInRootViewCoordinates
{
  x = self->_contentImageWithoutSelectionRectInRootViewCoordinates.origin.x;
  y = self->_contentImageWithoutSelectionRectInRootViewCoordinates.origin.y;
  width = self->_contentImageWithoutSelectionRectInRootViewCoordinates.size.width;
  height = self->_contentImageWithoutSelectionRectInRootViewCoordinates.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (WebUITextIndicatorData)initWithImage:(CGImage *)image textIndicatorData:(const void *)data scale:(double)scale
{
  v50.receiver = self;
  v50.super_class = WebUITextIndicatorData;
  v8 = [(WebUITextIndicatorData *)&v50 init];
  if (!v8)
  {
    return v8;
  }

  v9 = MEMORY[0x1E69E2238];
  v8->_dataInteractionImage = [objc_alloc((*MEMORY[0x1E69E2238])()) initWithCGImage:image scale:5 orientation:scale];
  WebCore::FloatRect::operator CGRect();
  v8->_selectionRectInRootViewCoordinates.origin.x = v10;
  v8->_selectionRectInRootViewCoordinates.origin.y = v11;
  v8->_selectionRectInRootViewCoordinates.size.width = v12;
  v8->_selectionRectInRootViewCoordinates.size.height = v13;
  WebCore::FloatRect::operator CGRect();
  v8->_textBoundingRectInRootViewCoordinates.origin.x = v14;
  v8->_textBoundingRectInRootViewCoordinates.origin.y = v15;
  v8->_textBoundingRectInRootViewCoordinates.size.width = v16;
  v8->_textBoundingRectInRootViewCoordinates.size.height = v17;
  NSArrayElement = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(data + 15)];
  v20 = NSArrayElement;
  v21 = *(data + 15);
  if (v21)
  {
    v22 = *(data + 6);
    v23 = 16 * v21;
    do
    {
      NSArrayElement = WebCore::makeNSArrayElement(v22, v19);
      if (NSArrayElement)
      {
        NSArrayElement = [(atomic_ullong *)v20 addObject:NSArrayElement];
      }

      v22 = (v22 + 16);
      v23 -= 16;
    }

    while (v23);
  }

  v8->_textRectsInBoundingRectCoordinates = v20;
  v8->_contentImageScaleFactor = *(data + 16);
  if (*(data + 9) && (v24 = objc_alloc((*v9)()), v25 = *(data + 9), v26 = WebCore::DestinationColorSpace::SRGB(v24), (*(*v25 + 304))(&v49, v25, v26), v8->_contentImageWithHighlight = [(WebCore::DestinationColorSpace *)v24 initWithCGImage:*WebCore::NativeImage::platformImage(v49) scale:5 orientation:scale], NSArrayElement = v49, v49 = 0, NSArrayElement))
  {
    while (1)
    {
      v28 = NSArrayElement[1];
      if ((v28 & 1) == 0)
      {
        break;
      }

      v29 = NSArrayElement[1];
      atomic_compare_exchange_strong_explicit(NSArrayElement + 1, &v29, v28 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v29 == v28)
      {
        if (v28 == 3)
        {
          NSArrayElement = (*(*NSArrayElement + 8))(NSArrayElement);
        }

        goto LABEL_13;
      }
    }

    NSArrayElement = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(NSArrayElement[1], v27);
    if (!*(data + 11))
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_13:
    if (!*(data + 11))
    {
      goto LABEL_21;
    }
  }

  v30 = objc_alloc((*v9)());
  v31 = *(data + 11);
  v32 = WebCore::DestinationColorSpace::SRGB(v30);
  (*(*v31 + 304))(&v49, v31, v32);
  v8->_contentImage = [(WebCore::DestinationColorSpace *)v30 initWithCGImage:*WebCore::NativeImage::platformImage(v49) scale:0 orientation:scale];
  NSArrayElement = v49;
  v49 = 0;
  if (NSArrayElement)
  {
    while (1)
    {
      v34 = NSArrayElement[1];
      if ((v34 & 1) == 0)
      {
        break;
      }

      v35 = NSArrayElement[1];
      atomic_compare_exchange_strong_explicit(NSArrayElement + 1, &v35, v34 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v35 == v34)
      {
        if (v34 == 3)
        {
          NSArrayElement = (*(*NSArrayElement + 8))(NSArrayElement);
        }

        goto LABEL_21;
      }
    }

    NSArrayElement = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(NSArrayElement[1], v33);
    v36 = *(data + 10);
    if (!v36)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

LABEL_21:
  v36 = *(data + 10);
  if (v36)
  {
LABEL_24:
    v37 = WebCore::DestinationColorSpace::SRGB(NSArrayElement);
    v38 = (*(*v36 + 304))(&v49, v36, v37);
    if (v49)
    {
      v39 = objc_alloc((*v9)(v38));
      v8->_contentImageWithoutSelection = [v39 initWithCGImage:*WebCore::NativeImage::platformImage(v49) scale:0 orientation:scale];
      WebCore::FloatRect::operator CGRect();
      v8->_contentImageWithoutSelectionRectInRootViewCoordinates.origin.x = v41;
      v8->_contentImageWithoutSelectionRectInRootViewCoordinates.origin.y = v42;
      v8->_contentImageWithoutSelectionRectInRootViewCoordinates.size.width = v43;
      v8->_contentImageWithoutSelectionRectInRootViewCoordinates.size.height = v44;
      v45 = v49;
      v49 = 0;
      if (v45)
      {
        do
        {
          v46 = v45[1];
          if ((v46 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v45[1], v40);
            goto LABEL_31;
          }

          v47 = v45[1];
          atomic_compare_exchange_strong_explicit(v45 + 1, &v47, v46 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v47 != v46);
        if (v46 == 3)
        {
          (*(*v45 + 8))(v45);
        }
      }
    }
  }

LABEL_31:
  if ((*(data + 53) & 0x800) != 0)
  {
    WebCore::cocoaColor();
    v8->_estimatedBackgroundColor = v49;
  }

  return v8;
}

- (WebUITextIndicatorData)initWithImage:(CGImage *)image scale:(double)scale
{
  v9.receiver = self;
  v9.super_class = WebUITextIndicatorData;
  result = [(WebUITextIndicatorData *)&v9 init];
  if (result)
  {
    v7 = result;
    v8 = [objc_alloc((*MEMORY[0x1E69E2238])()) initWithCGImage:image scale:5 orientation:scale];
    result = v7;
    v7->_dataInteractionImage = v8;
  }

  return result;
}

@end