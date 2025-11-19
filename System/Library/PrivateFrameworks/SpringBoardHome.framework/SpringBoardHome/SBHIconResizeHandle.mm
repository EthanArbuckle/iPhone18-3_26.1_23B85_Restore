@interface SBHIconResizeHandle
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)isResizing;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBHIconResizeHandle)initWithCoder:(id)a3;
- (SBHIconResizeHandle)initWithFrame:(CGRect)a3;
- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)a3 iconImageInfo:(SBIconImageInfo *)a4 backgroundView:(id)a5;
- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)a3 iconImageInfo:(SBIconImageInfo *)a4 backgroundView:(id)a5 material:(int64_t)a6;
- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)a3 iconImageInfo:(SBIconImageInfo *)a4 material:(int64_t)a5;
- (SBIconImageInfo)iconImageInfo;
- (SBIconResizeHandleMetrics)metrics;
- (const)shapePath;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)layoutSubviews;
- (void)setDarkStyle:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setResizing:(BOOL)a3;
- (void)setResizingGestureRecognizer:(id)a3;
- (void)setShapeLayer:(id)a3;
- (void)set_isResizing:(BOOL)a3;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
@end

@implementation SBHIconResizeHandle

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v6 = [(SBHIconResizeHandle *)self shapePath];
  v7 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:v6];
  [v5 setShadowPath:v7];
  v8 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v5];
  v9 = [MEMORY[0x1E69DCDB8] effectWithPreview:v8];
  v10 = [MEMORY[0x1E69DCDC8] shapeWithPath:v7];
  v11 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:v10];

  return v11;
}

- (SBIconResizeHandleMetrics)metrics
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (self + OBJC_IVAR___SBHIconResizeHandle_metrics);
  v6 = *(&self->super._swiftAnimationInfo + OBJC_IVAR___SBHIconResizeHandle_metrics);
  v7 = *(&self->super._traitChangeRegistry + OBJC_IVAR___SBHIconResizeHandle_metrics);
  v11 = *v5;
  v12 = v5[3];
  v9 = v5[1];
  v10 = v5[4];

  *&retstr->var0 = v11;
  *&retstr->var2 = v9;
  retstr->var4 = v6;
  retstr->var5 = v7;
  *&retstr->var6.top = v12;
  *&retstr->var6.bottom = v10;
  return result;
}

- (SBIconImageInfo)iconImageInfo
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)setResizingGestureRecognizer:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR___SBHIconResizeHandle_resizingGestureRecognizer;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_resizingGestureRecognizer);
  v6 = a3;
  if (v5)
  {
    [(SBHIconResizeHandle *)self removeGestureRecognizer:v5];
    v7 = self;
    v5 = *(&self->super.super.super.isa + v4);
  }

  else
  {
    v8 = self;
    v7 = self;
  }

  *(&v7->super.super.super.isa + v4) = a3;
  v9 = a3;

  if (v9)
  {
    [(SBHIconResizeHandle *)self addGestureRecognizer:v9];
  }

  else
  {
  }
}

- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)a3 iconImageInfo:(SBIconImageInfo *)a4 material:(int64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v21 = *&a3->var2;
  v22 = *&a3->var0;
  var4 = a3->var4;
  var5 = a3->var5;
  v19 = *&a3->var6.bottom;
  v20 = *&a3->var6.top;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[0] = v22;
  v23[1] = v21;
  v24 = var4;
  v25 = var5;
  v26 = v20;
  v27 = v19;
  v17 = [(SBHIconResizeHandle *)self initWithMetrics:v23 iconImageInfo:0 backgroundView:a4 material:v13, v12, v11, v10, v19, v20, v21, v22];

  return v17;
}

- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)a3 iconImageInfo:(SBIconImageInfo *)a4 backgroundView:(id)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v21 = *&a3->var2;
  v22 = *&a3->var0;
  var4 = a3->var4;
  var5 = a3->var5;
  v19 = *&a3->var6.bottom;
  v20 = *&a3->var6.top;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[0] = v22;
  v23[1] = v21;
  v24 = var4;
  v25 = var5;
  v26 = v20;
  v27 = v19;
  v17 = [(SBHIconResizeHandle *)self initWithMetrics:v23 iconImageInfo:a4 backgroundView:0 material:v13, v12, v11, v10, v19, v20, v21, v22];

  return v17;
}

- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)a3 iconImageInfo:(SBIconImageInfo *)a4 backgroundView:(id)a5 material:(int64_t)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  var4 = a3->var4;
  var5 = a3->var5;
  v18 = *&a3->var2;
  v23[0] = *&a3->var0;
  v23[1] = v18;
  v24 = var4;
  v25 = var5;
  v19 = *&a3->var6.bottom;
  v26 = *&a3->var6.top;
  v27 = v19;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = a4;
  v21 = sub_1BEDD0B38(v23, a4, a5, v15, v14, v13, v12);

  return v21;
}

- (SBHIconResizeHandle)initWithCoder:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _sSo19SBHIconResizeHandleC15SpringBoardHomeE5coderABSo7NSCoderC_tcfc_0();
}

- (void)layoutSubviews
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  SBHIconResizeHandle.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(SBHIconResizeHandle *)self iconImageInfo];
  v5 = v4;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_isHighlighted);
  *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_isHighlighted) = a3;
  v6 = self;
  sub_1BEDD21D4(v5);
}

- (void)set_isResizing:(BOOL)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle__isResizing) = a3;
}

- (BOOL)isResizing
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [(SBHIconResizeHandle *)self _isResizing];

  return v3;
}

- (void)setResizing:(BOOL)a3
{
  v3 = a3;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(SBHIconResizeHandle *)self set_isResizing:v3];
}

- (void)setDarkStyle:(BOOL)a3
{
  v3 = a3;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_isDarkStyle) = v3;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_whiteTintView);
  if (v5)
  {
    v6 = 0.42;
    if (v3)
    {
      v6 = 0.0;
    }

    [v5 setAlpha_];
  }
}

- (const)shapePath
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_1BEDD2ABC();
  v5 = v4;

  return v5;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v5 = sub_1BEE4708C();
    a3 = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v5;
  v8.value._object = a3;
  v9 = SBHIconResizeHandle._shouldAnimateProperty(withKey:)(v8);

  return v9;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a4;
  v9 = self;
  v10 = _sSo19SBHIconResizeHandleC15SpringBoardHomeE5point6inside4withSbSo7CGPointV_So7UIEventCSgtF_0(x, y);

  return v10;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BEB20D28(0, &qword_1EBDC75C8);
  sub_1BEDD3D58();
  sub_1BEE4726C();
  v6 = a4;
  v7 = self;
  v8 = sub_1BEE4724C();

  v9.receiver = v7;
  v9.super_class = SBHIconResizeHandle;
  [(SBHIconResizeHandle *)&v9 touchesCancelled:v8 withEvent:v6];

  if (![(SBHIconResizeHandle *)v7 isResizing])
  {
    [(SBHIconResizeHandle *)v7 setHighlighted:0];
  }
}

- (void)setShapeLayer:(id)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_shapeLayer);
  *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_shapeLayer) = a3;
  v5 = a3;
}

- (SBHIconResizeHandle)initWithFrame:(CGRect)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end