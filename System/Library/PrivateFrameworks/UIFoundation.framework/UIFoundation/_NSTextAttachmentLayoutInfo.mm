@interface _NSTextAttachmentLayoutInfo
- (CGPoint)attachmentFrameOrigin;
- (CGRect)resolvedAttachmentFrame;
- (NSTextAttachmentViewProvider)textAttachmentViewProvider;
- (NSTextLocation)location;
- (_NSTextAttachmentLayoutInfo)initWithContext:(id)context location:(id)location attributes:(id)attributes;
- (__CTRunDelegate)runDelegate;
- (void)_queryLayout;
- (void)_queryLayoutWithHorizontalOffset:(double)offset;
- (void)dealloc;
- (void)setAttachmentFrameOrigin:(CGPoint)origin;
- (void)setTextAttachmentViewProvider:(id)provider;
@end

@implementation _NSTextAttachmentLayoutInfo

- (void)dealloc
{
  runDelegate = self->_runDelegate;
  if (runDelegate)
  {
    CFRelease(runDelegate);
  }

  v4.receiver = self;
  v4.super_class = _NSTextAttachmentLayoutInfo;
  [(_NSTextAttachmentLayoutInfo *)&v4 dealloc];
}

- (__CTRunDelegate)runDelegate
{
  objc_sync_enter(self);
  runDelegate = self->_runDelegate;
  if (!runDelegate)
  {
    v5 = *byte_1F01AD050;
    runDelegate = CTRunDelegateCreate(&v5, self);
    self->_runDelegate = runDelegate;
  }

  objc_sync_exit(self);
  return runDelegate;
}

- (void)_queryLayout
{
  if (self->_isLineFragmentLayout && !self->_isBoundsValid)
  {
    location = [(_NSTextAttachmentLayoutInfo *)self location];
    applicationFrameworkContext = [(_NSTextAttachmentLayoutContext *)self->_layoutContext applicationFrameworkContext];
    [(_NSTextAttachmentLayoutContext *)self->_layoutContext proposedLineFragmentRectForLocation:location attributes:self->_attributes baselineOffset:&self->_baselineOffset];
    self->_proposedLineFragment.origin.x = v5;
    self->_proposedLineFragment.origin.y = v6;
    self->_proposedLineFragment.size.width = v7;
    self->_proposedLineFragment.size.height = v8;
    baselineOffset = self->_baselineOffset;
    horizontalOffset = self->_horizontalOffset;
    v11 = [(_NSTextAttachmentLayoutContext *)self->_layoutContext textContainerForLocation:location];
    [(NSTextAttachment *)self->_textAttachment attachmentBoundsForAttributes:self->_attributes location:location textContainer:v11 proposedLineFragment:self->_proposedLineFragment.origin.x position:self->_proposedLineFragment.origin.y, self->_proposedLineFragment.size.width, self->_proposedLineFragment.size.height, horizontalOffset, baselineOffset];
    self->_bounds.origin.x = v12;
    self->_bounds.origin.y = v13;
    self->_bounds.size.width = v14;
    self->_bounds.size.height = v15;
    if (applicationFrameworkContext == 2)
    {
      [(NSTextAttachment *)self->_textAttachment bounds];
      if (CGRectIsEmpty(v23))
      {
        image = [(NSTextAttachment *)self->_textAttachment image];
        if ([(UIImage *)image conformsToProtocol:&unk_1F01F0D38])
        {
          [(UIImage *)image size];
          v24.size.width = v17;
          v24.size.height = v18;
          v24.origin.x = 0.0;
          v24.origin.y = 0.0;
          if (CGRectEqualToRect(self->_bounds, v24))
          {
            if ([(UIImage *)image willProvideAdaptedImageForPresentation])
            {
              [(UIImage *)image attachmentBoundsForAttributes:self->_attributes location:location textContainer:v11 proposedLineFragment:self->_proposedLineFragment.origin.x position:self->_proposedLineFragment.origin.y, self->_proposedLineFragment.size.width, self->_proposedLineFragment.size.height, horizontalOffset, baselineOffset];
              self->_bounds.origin.x = v19;
              self->_bounds.origin.y = v20;
              self->_bounds.size.width = v21;
              self->_bounds.size.height = v22;
            }
          }
        }
      }
    }

    self->_isBoundsValid = 1;
  }
}

- (NSTextLocation)location
{
  objc_sync_enter(self);
  location = self->_location;
  if (!location)
  {
    baseLocation = [(_NSTextAttachmentLayoutContext *)self->_layoutContext baseLocation];
    v5 = [-[_NSTextAttachmentLayoutInfo textLayoutFragment](self "textLayoutFragment")];
    if (v5)
    {
      v6 = [v5 locationForCharacterIndex:self->_locationOffsetFromBase dataSourceLocationsOnly:0 actualRange:0];
      self->_location = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = self->_location;
      if (!v6)
      {
LABEL_6:
        v6 = [objc_msgSend(-[_NSTextAttachmentLayoutInfo textLayoutFragment](self "textLayoutFragment")];
        self->_location = v6;
      }
    }

    [(NSTextAttachmentViewProvider *)[(_NSTextAttachmentLayoutInfo *)self textAttachmentViewProvider] setLocation:v6];
    location = self->_location;
  }

  objc_sync_exit(self);
  return location;
}

- (NSTextAttachmentViewProvider)textAttachmentViewProvider
{
  objc_sync_enter(self);
  textAttachmentViewProvider = self->_textAttachmentViewProvider;
  if (textAttachmentViewProvider && !self->_location)
  {
    [(_NSTextAttachmentLayoutInfo *)self location];
    textAttachmentViewProvider = self->_textAttachmentViewProvider;
  }

  v4 = textAttachmentViewProvider;
  objc_sync_exit(self);
  return v4;
}

- (CGRect)resolvedAttachmentFrame
{
  objc_copyStruct(v6, &self->_resolvedAttachmentFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_NSTextAttachmentLayoutInfo)initWithContext:(id)context location:(id)location attributes:(id)attributes
{
  v16.receiver = self;
  v16.super_class = _NSTextAttachmentLayoutInfo;
  v8 = [(_NSTextAttachmentLayoutInfo *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_layoutContext = context;
    v10 = [attributes objectForKeyedSubscript:@"NSAttachment"];
    v9->_textAttachment = v10;
    if (v10)
    {
      v9->_location = location;
      v9->_attributes = attributes;
      v9->_isLineFragmentLayout = 1;
      baseLocation = [(_NSTextAttachmentLayoutContext *)v9->_layoutContext baseLocation];
      if (baseLocation)
      {
        v12 = baseLocation;
        v13 = [-[_NSTextAttachmentLayoutInfo textLayoutFragment](v9 "textLayoutFragment")];
        if (!v13 || (v14 = [v13 rangeForLocation:location allowsTrailingEdge:0], v14 == 0x7FFFFFFFFFFFFFFFLL))
        {
          v14 = [objc_msgSend(-[_NSTextAttachmentLayoutInfo textLayoutFragment](v9 "textLayoutFragment")];
        }

        v9->_locationOffsetFromBase = v14;
      }
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)_queryLayoutWithHorizontalOffset:(double)offset
{
  if (self->_horizontalOffset != offset)
  {
    self->_horizontalOffset = offset;
    self->_isBoundsValid = 0;
  }

  [(_NSTextAttachmentLayoutInfo *)self _queryLayout];
}

- (void)setTextAttachmentViewProvider:(id)provider
{
  objc_sync_enter(self);
  textAttachmentViewProvider = self->_textAttachmentViewProvider;
  if (textAttachmentViewProvider != provider)
  {

    provider = provider;
    self->_textAttachmentViewProvider = provider;
  }

  if (provider)
  {
    [(_NSTextAttachmentLayoutContext *)self->_layoutContext setHasViewProvider:1];
  }

  objc_sync_exit(self);
}

- (CGPoint)attachmentFrameOrigin
{
  hasResolvedAttachmentFrame = [(_NSTextAttachmentLayoutContext *)self->_layoutContext hasResolvedAttachmentFrame];
  p_resolvedAttachmentFrame = &self->_resolvedAttachmentFrame;
  p_y = &self->_resolvedAttachmentFrame.origin.y;
  if (!hasResolvedAttachmentFrame)
  {
    p_resolvedAttachmentFrame = MEMORY[0x1E695EFF8];
    p_y = (MEMORY[0x1E695EFF8] + 8);
  }

  v6 = *p_y;
  x = p_resolvedAttachmentFrame->origin.x;
  result.y = v6;
  result.x = x;
  return result;
}

- (void)setAttachmentFrameOrigin:(CGPoint)origin
{
  self->_resolvedAttachmentFrame.origin = origin;
  self->_resolvedAttachmentFrame.size = self->_bounds.size;
  [(_NSTextAttachmentLayoutContext *)self->_layoutContext setHasResolvedAttachmentFrame:1];
}

@end