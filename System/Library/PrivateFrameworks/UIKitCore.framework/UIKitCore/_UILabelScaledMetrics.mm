@interface _UILabelScaledMetrics
- (double)initWithConfiguration:(double)configuration size:(double)size;
- (double)initWithConfiguration:(void *)configuration size:(double)size associatedScaledMetrics:(double)metrics;
- (id)description;
- (id)scaledAttributedText;
- (void)_calculateIfNecessary;
- (void)_calculateIfNecessaryWithAssociatedMetrics;
- (void)_calculateIfNecessaryWithConfiguration;
@end

@implementation _UILabelScaledMetrics

- (double)initWithConfiguration:(double)configuration size:(double)size
{
  v7 = a2;
  v8 = v7;
  if (!self)
  {
    goto LABEL_19;
  }

  selfCopy = 0;
  v10 = size >= 3.40282347e38 && configuration >= 3.40282347e38;
  if (!v7 || v10)
  {
    goto LABEL_20;
  }

  if (![v7 adjustsFontSizeToFitWidth] || (objc_msgSend(v8, "minimumScaleFactor"), v11 >= 1.0))
  {
LABEL_19:
    selfCopy = 0;
    goto LABEL_20;
  }

  v21.receiver = self;
  v21.super_class = _UILabelScaledMetrics;
  v12 = objc_msgSendSuper2(&v21, sel_init);
  if (v12)
  {
    v13 = [v8 copy];
    v14 = *(v12 + 15);
    *(v12 + 15) = v13;

    v15 = *(MEMORY[0x1E695F060] + 8);
    if (*MEMORY[0x1E695F060] == configuration && v15 == size)
    {
      v17 = *(v12 + 15);
      if (v17)
      {
        [v17 bounds];
        configuration = v18;
        size = v19;
      }

      else
      {
        configuration = 0.0;
        size = 0.0;
      }
    }

    v12[1] = configuration;
    v12[2] = size;
  }

  self = v12;
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

- (double)initWithConfiguration:(void *)configuration size:(double)size associatedScaledMetrics:(double)metrics
{
  configurationCopy = configuration;
  if (self)
  {
    metrics = [(_UILabelScaledMetrics *)self initWithConfiguration:a2 size:size, metrics];
    v12 = metrics;
    if (metrics)
    {
      objc_storeStrong(metrics + 16, configuration);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)scaledAttributedText
{
  if (self)
  {
    selfCopy = self;
    [self _calculateIfNecessary];
    self = selfCopy[10];
    v1 = vars8;
  }

  return self;
}

- (void)_calculateIfNecessary
{
  if ((*&self->_scaledMetricsFlags & 1) == 0)
  {
    *&self->_scaledMetricsFlags |= 1u;
    if (self->_sourceSize.width < 3.40282347e38 || self->_sourceSize.height < 3.40282347e38)
    {
      _content = [(_UILabelConfiguration *)&self->_configuration->super.isa _content];
      attributedString = [_content attributedString];

      if (attributedString)
      {
        if (self->_associatedScaledMetrics)
        {

          [(_UILabelScaledMetrics *)self _calculateIfNecessaryWithAssociatedMetrics];
        }

        else
        {

          [(_UILabelScaledMetrics *)self _calculateIfNecessaryWithConfiguration];
        }
      }
    }
  }
}

- (void)_calculateIfNecessaryWithAssociatedMetrics
{
  _content = [(_UILabelConfiguration *)&self->_configuration->super.isa _content];
  attributedString = [_content attributedString];

  v4 = [attributedString length];
  associatedScaledMetrics = self->_associatedScaledMetrics;
  if (associatedScaledMetrics)
  {
    [(_UILabelScaledMetrics *)self->_associatedScaledMetrics _calculateIfNecessary];
    actualScaleFactor = associatedScaledMetrics->_actualScaleFactor;
  }

  else
  {
    actualScaleFactor = 0.0;
  }

  v7 = [attributedString _ui_attributedSubstringFromRange:0 scaledByScaleFactor:{v4, actualScaleFactor}];
  _resolvedStringDrawingContext = [(_UILabelConfiguration *)&self->_configuration->super.isa _resolvedStringDrawingContext];
  [_resolvedStringDrawingContext setWantsNumberOfLineFragments:1];
  [_resolvedStringDrawingContext setMaximumNumberOfLines:{-[_UILabelConfiguration numberOfLines](self->_configuration, "numberOfLines")}];
  [_resolvedStringDrawingContext setMinimumScaleFactor:1.0];
  [_resolvedStringDrawingContext setLayout:0];
  configuration = self->_configuration;
  if (configuration)
  {
    v10 = 1048577;
    internal = configuration->_internal;
    if (internal)
    {
      configurationFlags = internal->_configurationFlags;
      v13 = 1048705;
      if ((*&configurationFlags & 2) == 0)
      {
        v13 = 1048577;
      }

      v10 = v13 | (*&configurationFlags << 7) & 0x200 | (*&configurationFlags << 7) & 0x400;
    }
  }

  else
  {
    v10 = 0;
  }

  [attributedString boundingRectWithSize:v10 options:_resolvedStringDrawingContext context:{self->_sourceSize.width, self->_sourceSize.height}];
  v15 = v14;
  v17 = v16;
  [_resolvedStringDrawingContext setLayout:0];
  [(NSAttributedString *)v7 boundingRectWithSize:v10 options:_resolvedStringDrawingContext context:self->_sourceSize.width, self->_sourceSize.height];
  self->_scaledSize.width = v18;
  self->_scaledSize.height = v19;
  self->_unscaledAndPossiblyTooLargeSize.width = v15;
  self->_unscaledAndPossiblyTooLargeSize.height = v17;
  v20 = self->_associatedScaledMetrics;
  if (!v20)
  {
    self->_baselineOffset = 0.0;
    goto LABEL_19;
  }

  [(_UILabelScaledMetrics *)self->_associatedScaledMetrics _calculateIfNecessary];
  baselineOffset = v20->_baselineOffset;
  v22 = self->_associatedScaledMetrics;
  self->_baselineOffset = baselineOffset;
  if (!v22)
  {
LABEL_19:
    self->_scaledFirstBaselineOffset = 0.0;
    goto LABEL_20;
  }

  [(_UILabelScaledMetrics *)v22 _calculateIfNecessary];
  scaledFirstBaselineOffset = v22->_scaledFirstBaselineOffset;
  v24 = self->_associatedScaledMetrics;
  self->_scaledFirstBaselineOffset = scaledFirstBaselineOffset;
  if (!v24)
  {
LABEL_20:
    self->_scaledBaselineOffset = 0.0;
    goto LABEL_21;
  }

  [(_UILabelScaledMetrics *)v24 _calculateIfNecessary];
  scaledBaselineOffset = v24->_scaledBaselineOffset;
  v26 = self->_associatedScaledMetrics;
  self->_scaledBaselineOffset = scaledBaselineOffset;
  if (v26)
  {
    [(_UILabelScaledMetrics *)v26 _calculateIfNecessary];
    v27 = v26->_actualScaleFactor;
    goto LABEL_13;
  }

LABEL_21:
  v27 = 0.0;
LABEL_13:
  self->_actualScaleFactor = v27;
  numberOfLineFragments = [_resolvedStringDrawingContext numberOfLineFragments];
  scaledAttributedText = self->_scaledAttributedText;
  self->_measuredNumberOfLines = numberOfLineFragments;
  self->_scaledAttributedText = v7;
}

- (void)_calculateIfNecessaryWithConfiguration
{
  configuration = self->_configuration;
  if (configuration)
  {
    [(_UILabelConfiguration *)configuration minimumScaleFactor];
    v5 = v4;
    if (v4 >= 1.0)
    {
LABEL_18:
      v33 = *(MEMORY[0x1E695F058] + 16);
      self->_totalBounds.origin = *MEMORY[0x1E695F058];
      self->_totalBounds.size = v33;
      self->_scaledSize = self->_sourceSize;
      self->_actualScaleFactor = 1.0;
      return;
    }

    configuration = self->_configuration;
  }

  else
  {
    v5 = 0.0;
  }

  _resolvedStringDrawingContext = [(_UILabelConfiguration *)&configuration->super.isa _resolvedStringDrawingContext];
  _content = [(_UILabelConfiguration *)&self->_configuration->super.isa _content];
  attributedString = [_content attributedString];

  v8 = 0.01;
  if (v5 > 0.0)
  {
    v8 = v5;
  }

  [_resolvedStringDrawingContext setMinimumScaleFactor:v8];
  [_resolvedStringDrawingContext setLayout:0];
  [_resolvedStringDrawingContext setWantsBaselineOffset:1];
  [_resolvedStringDrawingContext setWantsScaledBaselineOffset:1];
  [_resolvedStringDrawingContext setWantsScaledLineHeight:1];
  [_resolvedStringDrawingContext setWantsNumberOfLineFragments:1];
  [_resolvedStringDrawingContext setMaximumNumberOfLines:{-[_UILabelConfiguration numberOfLines](self->_configuration, "numberOfLines")}];
  v9 = self->_configuration;
  if (v9)
  {
    v10 = 1048577;
    internal = v9->_internal;
    if (internal)
    {
      configurationFlags = internal->_configurationFlags;
      v13 = 1048705;
      if ((*&configurationFlags & 2) == 0)
      {
        v13 = 1048577;
      }

      v10 = v13 | (*&configurationFlags << 7) & 0x200 | (*&configurationFlags << 7) & 0x400;
    }
  }

  else
  {
    v10 = 0;
  }

  [attributedString boundingRectWithSize:v10 options:_resolvedStringDrawingContext context:{self->_sourceSize.width, self->_sourceSize.height}];
  v15 = v14;
  v17 = v16;
  [_resolvedStringDrawingContext scaledLineHeight];
  v19 = v18;
  [_resolvedStringDrawingContext actualScaleFactor];
  if (v20 <= 0.0 || (v21 = v20, v20 >= 1.0) || (v22 = 1.0 - v20, 1.0 - v21 <= 0.00000011920929))
  {

    goto LABEL_18;
  }

  self->_scaledSize.width = v15;
  self->_scaledSize.height = v19;
  self->_unscaledAndPossiblyTooLargeSize.width = v15;
  self->_unscaledAndPossiblyTooLargeSize.height = v17;
  [_resolvedStringDrawingContext baselineOffset];
  self->_baselineOffset = v23;
  [_resolvedStringDrawingContext firstBaselineOffset];
  self->_scaledFirstBaselineOffset = v24;
  [_resolvedStringDrawingContext scaledBaselineOffset];
  self->_scaledBaselineOffset = v25;
  self->_actualScaleFactor = v21;
  self->_measuredNumberOfLines = [_resolvedStringDrawingContext numberOfLineFragments];
  v26 = [attributedString length];
  [_resolvedStringDrawingContext actualScaleFactor];
  v27 = [attributedString _ui_attributedSubstringFromRange:0 scaledByScaleFactor:v26];
  scaledAttributedText = self->_scaledAttributedText;
  self->_scaledAttributedText = v27;

  [_resolvedStringDrawingContext totalBounds];
  self->_totalBounds.origin.x = v29;
  self->_totalBounds.origin.y = v30;
  self->_totalBounds.size.width = v31;
  self->_totalBounds.size.height = v32;
}

- (id)description
{
  if (*&self->_scaledMetricsFlags)
  {
    v3 = &stru_1EFB14550;
  }

  else
  {
    v3 = @"{Calculated} ";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = v3;
  v6 = objc_opt_class();
  v7 = NSStringFromCGSize(self->_sourceSize);
  v8 = NSStringFromCGSize(self->_scaledSize);
  actualScaleFactor = self->_actualScaleFactor;
  scaledFirstBaselineOffset = self->_scaledFirstBaselineOffset;
  scaledBaselineOffset = self->_scaledBaselineOffset;
  scaledLineHeight = self->_scaledLineHeight;
  measuredNumberOfLines = self->_measuredNumberOfLines;
  v14 = NSStringFromCGSize(self->_unscaledAndPossiblyTooLargeSize);
  v15 = [v4 stringWithFormat:@"<%@:%p %@sourceSize=%@ scaledSize=%@ scaleFactor=%f scaledLineHeight=%f scaledFirstBaseline=%f scaledLastBaseline=%f numberOfLines=%ld unscaledSize=%@ scaledText=%@>", v6, self, v5, v7, v8, *&actualScaleFactor, *&scaledLineHeight, *&scaledFirstBaselineOffset, *&scaledBaselineOffset, measuredNumberOfLines, v14, self->_scaledAttributedText];

  return v15;
}

@end