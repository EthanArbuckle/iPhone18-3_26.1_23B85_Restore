@interface _UISecureControlSizeTool
- (_UISecureControlSizeTool)init;
- (id)_drawingPlanForSizeSpec:(id)a3;
- (id)drawingWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5;
- (void)getIntrinsicContentSizeForSpec:(id)a3 reply:(id)a4;
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

- (id)_drawingPlanForSizeSpec:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_sizeSpecDrawingPlansLock);
  v5 = [(NSMutableDictionary *)self->_sizeSpecDrawingPlans objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_sizeSpecDrawingPlansLock);
  if (!v5)
  {
    v6 = [v4 category];
    v7 = [_UISecureControlDrawingPlan alloc];
    v8 = [v4 style];
    v9 = [v4 arrangeVertically];
    v10 = [v6 secureNameForDrawing];
    v11 = [v6 iconGlyph];
    v5 = [(_UISecureControlDrawingPlan *)v7 initWithSlotStyle:v8 arrangeVertically:v9 secureName:v10 iconGlyph:v11];

    os_unfair_lock_lock(&self->_sizeSpecDrawingPlansLock);
    [(NSMutableDictionary *)self->_sizeSpecDrawingPlans setObject:v5 forKeyedSubscript:v4];
    v12 = [(UISLRUCache *)self->_sizeSpecLRUCache evictedObjectForUsedObject:v4];
    if (v12)
    {
      [(NSMutableDictionary *)self->_sizeSpecDrawingPlans removeObjectForKey:v12];
    }

    os_unfair_lock_unlock(&self->_sizeSpecDrawingPlansLock);
  }

  return v5;
}

- (id)drawingWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [_UISSecureControlSizeSpec specWithStyle:v7 tag:v8];
  v10 = [(_UISecureControlSizeTool *)self _drawingPlanForSizeSpec:v9];

  [v8 size];
  v12 = v11;
  v14 = v13;
  [v10 minimumContentSize];
  if (v12 < v16 || v14 < v15)
  {
    v18 = 0;
  }

  else
  {
    v19 = [v8 baseForegroundColor];
    ConstantColor = v19;
    if (!v19)
    {
      ConstantColor = CGColorGetConstantColor(kCGColorWhite);
    }

    v21 = [v8 baseBackgroundColor];
    if (!v21)
    {
      v21 = [v7 tintColor];
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
      v27 = CGColorCreateCopyWithAlpha(v21, 1.0);
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
    v31 = [v8 cornerStyle];
    [v8 cornerRadius];
    v18 = -[_UISecureControlDrawing initWithDrawingPlan:cornerStyle:cornerRadius:foregroundColor:backgroundColor:imagePlacement:leftToRight:size:](v30, "initWithDrawingPlan:cornerStyle:cornerRadius:foregroundColor:backgroundColor:imagePlacement:leftToRight:size:", v10, v31, CopyWithAlpha, v27, [v8 imagePlacement], objc_msgSend(v7, "layoutDirection") == 0, v32, v12, v14);
    CGColorRelease(CopyWithAlpha);
    CGColorRelease(v27);
  }

  return v18;
}

- (void)getIntrinsicContentSizeForSpec:(id)a3 reply:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 category];
  v8 = [v7 isValid];

  if (v8)
  {
    v9 = [(_UISecureControlSizeTool *)self _drawingPlanForSizeSpec:v10];
    [v9 intrinsicContentSize];
    v6[2](v6);
  }

  else
  {
    (v6[2])(v6, CGSizeZero.width, CGSizeZero.height);
  }
}

@end