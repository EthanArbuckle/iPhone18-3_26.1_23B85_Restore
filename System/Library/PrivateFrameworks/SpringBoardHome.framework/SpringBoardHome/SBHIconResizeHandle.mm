@interface SBHIconResizeHandle
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)isResizing;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBHIconResizeHandle)initWithCoder:(id)coder;
- (SBHIconResizeHandle)initWithFrame:(CGRect)frame;
- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)metrics iconImageInfo:(SBIconImageInfo *)info backgroundView:(id)view;
- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)metrics iconImageInfo:(SBIconImageInfo *)info backgroundView:(id)view material:(int64_t)material;
- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)metrics iconImageInfo:(SBIconImageInfo *)info material:(int64_t)material;
- (SBIconImageInfo)iconImageInfo;
- (SBIconResizeHandleMetrics)metrics;
- (const)shapePath;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)setDarkStyle:(BOOL)style;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setResizing:(BOOL)resizing;
- (void)setResizingGestureRecognizer:(id)recognizer;
- (void)setShapeLayer:(id)layer;
- (void)set_isResizing:(BOOL)resizing;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
@end

@implementation SBHIconResizeHandle

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  shapePath = [(SBHIconResizeHandle *)self shapePath];
  v7 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:shapePath];
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

- (void)setResizingGestureRecognizer:(id)recognizer
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
  recognizerCopy = recognizer;
  if (v5)
  {
    [(SBHIconResizeHandle *)self removeGestureRecognizer:v5];
    selfCopy3 = self;
    v5 = *(&self->super.super.super.isa + v4);
  }

  else
  {
    selfCopy2 = self;
    selfCopy3 = self;
  }

  *(&selfCopy3->super.super.super.isa + v4) = recognizer;
  recognizerCopy2 = recognizer;

  if (recognizerCopy2)
  {
    [(SBHIconResizeHandle *)self addGestureRecognizer:recognizerCopy2];
  }

  else
  {
  }
}

- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)metrics iconImageInfo:(SBIconImageInfo *)info material:(int64_t)material
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v21 = *&metrics->var2;
  v22 = *&metrics->var0;
  var4 = metrics->var4;
  var5 = metrics->var5;
  v19 = *&metrics->var6.bottom;
  v20 = *&metrics->var6.top;
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
  v17 = [(SBHIconResizeHandle *)self initWithMetrics:v23 iconImageInfo:0 backgroundView:info material:v13, v12, v11, v10, v19, v20, v21, v22];

  return v17;
}

- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)metrics iconImageInfo:(SBIconImageInfo *)info backgroundView:(id)view
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v21 = *&metrics->var2;
  v22 = *&metrics->var0;
  var4 = metrics->var4;
  var5 = metrics->var5;
  v19 = *&metrics->var6.bottom;
  v20 = *&metrics->var6.top;
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
  v17 = [(SBHIconResizeHandle *)self initWithMetrics:v23 iconImageInfo:info backgroundView:0 material:v13, v12, v11, v10, v19, v20, v21, v22];

  return v17;
}

- (SBHIconResizeHandle)initWithMetrics:(SBIconResizeHandleMetrics *)metrics iconImageInfo:(SBIconImageInfo *)info backgroundView:(id)view material:(int64_t)material
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  var4 = metrics->var4;
  var5 = metrics->var5;
  v18 = *&metrics->var2;
  v23[0] = *&metrics->var0;
  v23[1] = v18;
  v24 = var4;
  v25 = var5;
  v19 = *&metrics->var6.bottom;
  v26 = *&metrics->var6.top;
  v27 = v19;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  infoCopy = info;
  v21 = sub_1BEDD0B38(v23, info, view, v15, v14, v13, v12);

  return v21;
}

- (SBHIconResizeHandle)initWithCoder:(id)coder
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

  selfCopy = self;
  SBHIconResizeHandle.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
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

- (void)setHighlighted:(BOOL)highlighted
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_isHighlighted);
  *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_isHighlighted) = highlighted;
  selfCopy = self;
  sub_1BEDD21D4(v5);
}

- (void)set_isResizing:(BOOL)resizing
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle__isResizing) = resizing;
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

  _isResizing = [(SBHIconResizeHandle *)self _isResizing];

  return _isResizing;
}

- (void)setResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(SBHIconResizeHandle *)self set_isResizing:resizingCopy];
}

- (void)setDarkStyle:(BOOL)style
{
  styleCopy = style;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_isDarkStyle) = styleCopy;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_whiteTintView);
  if (v5)
  {
    v6 = 0.42;
    if (styleCopy)
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

  selfCopy = self;
  sub_1BEDD2ABC();
  v5 = v4;

  return v5;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (key)
  {
    v5 = sub_1BEE4708C();
    key = v6;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v5;
  v8.value._object = key;
  v9 = SBHIconResizeHandle._shouldAnimateProperty(withKey:)(v8);

  return v9;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  eventCopy = event;
  selfCopy = self;
  v10 = _sSo19SBHIconResizeHandleC15SpringBoardHomeE5point6inside4withSbSo7CGPointV_So7UIEventCSgtF_0(x, y);

  return v10;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
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
  eventCopy = event;
  selfCopy = self;
  v8 = sub_1BEE4724C();

  v9.receiver = selfCopy;
  v9.super_class = SBHIconResizeHandle;
  [(SBHIconResizeHandle *)&v9 touchesCancelled:v8 withEvent:eventCopy];

  if (![(SBHIconResizeHandle *)selfCopy isResizing])
  {
    [(SBHIconResizeHandle *)selfCopy setHighlighted:0];
  }
}

- (void)setShapeLayer:(id)layer
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_shapeLayer);
  *(&self->super.super.super.isa + OBJC_IVAR___SBHIconResizeHandle_shapeLayer) = layer;
  layerCopy = layer;
}

- (SBHIconResizeHandle)initWithFrame:(CGRect)frame
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