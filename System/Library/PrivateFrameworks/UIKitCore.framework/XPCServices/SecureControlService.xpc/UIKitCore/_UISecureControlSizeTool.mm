@interface _UISecureControlSizeTool
- (_UISecureControlSizeTool)init;
- (id)_drawingPlanForSizeSpec:(id)spec;
- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
- (void)getIntrinsicContentSizeForSpec:(id)spec reply:(id)reply;
@end

@implementation _UISecureControlSizeTool

- (_UISecureControlSizeTool)init
{
  v9.receiver = self;
  v9.super_class = _UISecureControlSizeTool;
  v2 = [(_UISecureControlSizeTool *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_sizeSpecDrawingPlansLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    sizeSpecDrawingPlans = v3->_sizeSpecDrawingPlans;
    v3->_sizeSpecDrawingPlans = v4;

    v6 = [[UISLRUCache alloc] initWithLimit:10];
    sizeSpecLRUCache = v3->_sizeSpecLRUCache;
    v3->_sizeSpecLRUCache = v6;
  }

  return v3;
}

- (id)_drawingPlanForSizeSpec:(id)spec
{
  specCopy = spec;
  os_unfair_lock_lock(&self->_sizeSpecDrawingPlansLock);
  v5 = [(NSMutableDictionary *)self->_sizeSpecDrawingPlans objectForKeyedSubscript:specCopy];
  os_unfair_lock_unlock(&self->_sizeSpecDrawingPlansLock);
  if (!v5)
  {
    category = [specCopy category];
    v7 = [_UISecureControlDrawingPlan alloc];
    style = [specCopy style];
    arrangeVertically = [specCopy arrangeVertically];
    secureNameForDrawing = [category secureNameForDrawing];
    iconGlyph = [category iconGlyph];
    v5 = [(_UISecureControlDrawingPlan *)v7 initWithSlotStyle:style arrangeVertically:arrangeVertically secureName:secureNameForDrawing iconGlyph:iconGlyph];

    os_unfair_lock_lock(&self->_sizeSpecDrawingPlansLock);
    [(NSMutableDictionary *)self->_sizeSpecDrawingPlans setObject:v5 forKeyedSubscript:specCopy];
    v12 = [(UISLRUCache *)self->_sizeSpecLRUCache evictedObjectForUsedObject:specCopy];
    if (v12)
    {
      [(NSMutableDictionary *)self->_sizeSpecDrawingPlans removeObjectForKey:v12];
    }

    os_unfair_lock_unlock(&self->_sizeSpecDrawingPlansLock);
  }

  return v5;
}

- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  styleCopy = style;
  tagCopy = tag;
  v9 = [_UISSecureControlSizeSpec specWithStyle:styleCopy tag:tagCopy];
  v10 = [(_UISecureControlSizeTool *)self _drawingPlanForSizeSpec:v9];

  [tagCopy size];
  v12 = v11;
  v14 = v13;
  [v10 minimumContentSize];
  if (v12 < v16 || v14 < v15)
  {
    v18 = 0;
  }

  else
  {
    baseForegroundColor = [tagCopy baseForegroundColor];
    ConstantColor = baseForegroundColor;
    if (!baseForegroundColor)
    {
      ConstantColor = CGColorGetConstantColor(kCGColorWhite);
    }

    baseBackgroundColor = [tagCopy baseBackgroundColor];
    if (!baseBackgroundColor)
    {
      baseBackgroundColor = [styleCopy tintColor];
    }

    UISColorLuminance();
    v23 = v22;
    UISColorLuminance();
    v25 = v24;
    if (v23 < v24)
    {
      v26 = v23;
    }

    else
    {
      v24 = v23;
      v26 = v25;
    }

    if ((v24 + 0.05) / (v26 + 0.05) >= 3.0)
    {
      CopyWithAlpha = CGColorCreateCopyWithAlpha(ConstantColor, 1.0);
      v27 = CGColorCreateCopyWithAlpha(baseBackgroundColor, 1.0);
    }

    else
    {
      v27 = UISCreateColorWithLuminance();
      v28 = UISCreateColorWithLuminance();
      if (v23 < v25)
      {
        CopyWithAlpha = v28;
      }

      else
      {
        CopyWithAlpha = v27;
      }

      if (v23 >= v25)
      {
        v27 = v28;
      }
    }

    v30 = [_UISecureControlDrawing alloc];
    cornerStyle = [tagCopy cornerStyle];
    [tagCopy cornerRadius];
    v18 = -[_UISecureControlDrawing initWithDrawingPlan:cornerStyle:cornerRadius:foregroundColor:backgroundColor:imagePlacement:leftToRight:size:](v30, "initWithDrawingPlan:cornerStyle:cornerRadius:foregroundColor:backgroundColor:imagePlacement:leftToRight:size:", v10, cornerStyle, CopyWithAlpha, v27, [tagCopy imagePlacement], objc_msgSend(styleCopy, "layoutDirection") == 0, v32, v12, v14);
    CGColorRelease(CopyWithAlpha);
    CGColorRelease(v27);
  }

  return v18;
}

- (void)getIntrinsicContentSizeForSpec:(id)spec reply:(id)reply
{
  specCopy = spec;
  replyCopy = reply;
  category = [specCopy category];
  isValid = [category isValid];

  if (isValid)
  {
    v9 = [(_UISecureControlSizeTool *)self _drawingPlanForSizeSpec:specCopy];
    [v9 intrinsicContentSize];
    replyCopy[2](replyCopy);
  }

  else
  {
    (replyCopy[2])(replyCopy, CGSizeZero.width, CGSizeZero.height);
  }
}

@end