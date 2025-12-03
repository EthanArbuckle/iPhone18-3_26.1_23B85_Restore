@interface UIPDFPageView
- (BOOL)hasSearchHighlights;
- (BOOL)willDoSomethingWithTap:(CGPoint)tap;
- (CALayer)effectsLayer;
- (CGColor)highLightColor;
- (CGPDFDictionary)_annotForPoint:(CGPoint)point rect:(CGRect *)rect;
- (CGPoint)convertPointFromPDFPageSpace:(CGPoint)space;
- (CGPoint)convertPointToPDFPageSpace:(CGPoint)space;
- (CGRect)convertRectFromPDFPageSpace:(CGRect)space;
- (CGRect)convertRectToPDFPageSpace:(CGRect)space;
- (CGRect)fitRect:(CGRect)rect;
- (CGRect)fitWidth:(CGRect)width atVertical:(double)vertical;
- (CGRect)rectangleOfInterestAt:(CGPoint)at kind:(int *)kind;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIImage)backgroundImage;
- (UIPDFDocument)document;
- (UIPDFPageView)init;
- (UIPDFPageView)initWithPage:(id)page;
- (UIPDFPageView)initWithPage:(id)page tiledContent:(BOOL)content;
- (UIPDFPageView)initWithPageLimitedMemory:(id)memory;
- (id)createBackingLayer;
- (id)receiveBackgroundImage:(id)image info:(id)info;
- (unint64_t)pageIndex;
- (void)addLayers:(BOOL)layers;
- (void)addPage:(id)page;
- (void)addWidgetToSelection;
- (void)dealloc;
- (void)didReceiveMemoryWarning:(id)warning;
- (void)didScroll:(id)scroll;
- (void)doubleTapAt:(CGPoint)at;
- (void)drawAnnotations:(CGContext *)annotations;
- (void)enableLightMemoryFootprint;
- (void)hideSelection;
- (void)ignoreTouches:(BOOL)touches;
- (void)layoutSubviews;
- (void)scheduleBackgroundImage;
- (void)setBackgroundImage:(id)image;
- (void)setBackingLayerColor:(id)color;
- (void)setDrawingSurfaceLayer:(id)layer;
- (void)setFrame:(CGRect)frame;
- (void)setNeedsDisplay;
- (void)setPage:(id)page;
- (void)setShowActivityIndicator:(BOOL)indicator;
- (void)setTransforms;
- (void)showContent;
- (void)showSelection;
- (void)singleTapAt:(CGPoint)at;
- (void)stopActivityIndicator;
- (void)suspendInstantTouchHighlighting;
- (void)twoFingerDoubleTapAt:(CGPoint)at;
- (void)viewDidZoom:(id)zoom;
@end

@implementation UIPDFPageView

- (UIPDFPageView)init
{
  v6.receiver = self;
  v6.super_class = UIPDFPageView;
  v2 = [(UIView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_scalePageOnDraw = 1;
    v2->_animateSetFrame = 1;
    v4 = [[UIPDFViewTouchHandler alloc] initWithView:v2];
    v3->_touchHandler = v4;
    [(UIPDFViewTouchHandler *)v4 enableRecognizers];
    v3->_searchHighlightController = [[UIPDFSearchHighlightsController alloc] initWithPageView:v3];
    [(UIPDFPageView *)v3 setAllowMenu:1];
    v3->_margin = 0.0;
    v3->_delegate = 0;
    v3->_allowSelection = 1;
    v3->_allowTwoFingerSelection = 0;
    v3->_useBackingLayer = 0;
    v3->_highLightColor = 0;
    v3->_useTiledContent = 0;
    v3->_enableLightMemoryFootprint = 0;
    v3->_showActivityIndicator = 1;
    v3->_annotationController = 0;
    [(UIPDFPageView *)v3 setShowAnnotations:0];
    [(UIPDFPageView *)v3 setAllowHighlighting:0];
    [(UIPDFPageView *)v3 setShowTextAnnotations:0];
    [(UIPDFPageView *)v3 setBackingLayerColor:+[UIColor lightGrayColor]];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v3;
}

- (void)setBackingLayerColor:(id)color
{
  colorCopy = color;

  self->_backingLayerColor = color;
  activityIndicator = self->_activityIndicator;
  v7 = UIActivityIndicatorViewStyleForBackingColor(color);

  [(UIActivityIndicatorView *)activityIndicator setActivityIndicatorViewStyle:v7];
}

- (void)addLayers:(BOOL)layers
{
  v4 = off_1E70EA2E8;
  if (!layers)
  {
    v4 = off_1E70EA2E0;
  }

  self->_contentLayer = objc_alloc_init(*v4);
  v5 = objc_alloc_init(UIPDFPageContentDelegate);
  self->_contentDelegate = v5;
  [(CALayer *)self->_contentLayer setDelegate:v5];
  [(UIPDFPageContentDelegate *)self->_contentDelegate setOwner:self->_contentLayer];
  [(UIPDFPageContentDelegate *)self->_contentDelegate setView:self];
  highLightColor = [(UIPDFPageView *)self highLightColor];
  contentDelegate = self->_contentDelegate;

  [(UIPDFPageContentDelegate *)contentDelegate setHighlightColor:highLightColor];
}

- (UIPDFPageView)initWithPage:(id)page
{
  if (page)
  {
    v4 = [(UIPDFPageView *)self init];
    [(UIPDFPageView *)v4 addLayers:1];
    [(UIPDFPageView *)v4 addPage:page];
  }

  else
  {

    return 0;
  }

  return v4;
}

- (UIPDFPageView)initWithPage:(id)page tiledContent:(BOOL)content
{
  if (page)
  {
    contentCopy = content;
    v6 = [(UIPDFPageView *)self init];
    [(UIPDFPageView *)v6 addLayers:contentCopy];
    [(UIPDFPageView *)v6 addPage:page];
  }

  else
  {

    return 0;
  }

  return v6;
}

- (UIPDFPageView)initWithPageLimitedMemory:(id)memory
{
  if (memory)
  {
    v4 = [(UIPDFPageView *)self init];
    [(UIPDFPageView *)v4 addLayers:1];
    [(UIPDFPageView *)v4 addPage:memory];
    [(UIPDFPageView *)v4 enableLightMemoryFootprint];
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  CGColorRelease(self->_highLightColor);
  [[(UIPDFPageView *)self page] setPageImage:0];
  [(UIPDFPageView *)self setBackgroundImage:0];
  [(UIPDFPageView *)self setBackingLayerColor:0];
  [(UIPDFPage *)self->_page clearAnnotations];
  [(UIPDFViewTouchHandler *)self->_touchHandler disableRecognizers];

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self->_activityIndicator];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self->_selectionController];

  [(CALayer *)self->_contentLayer setDelegate:0];
  [(CALayer *)self->_contentLayer setContents:0];
  [(CALayer *)self->_contentLayer removeFromSuperlayer];

  self->_contentLayer = 0;
  [(UIPDFPageContentDelegate *)self->_contentDelegate setOwner:0];
  [(UIPDFPageContentDelegate *)self->_contentDelegate setView:0];

  self->_contentDelegate = 0;
  [(UIPDFAnnotationController *)self->_annotationController setView:0];

  self->_annotationController = 0;
  self->_page = 0;

  self->_effectsLayer = 0;
  self->_document = 0;
  v3.receiver = self;
  v3.super_class = UIPDFPageView;
  [(UIView *)&v3 dealloc];
}

- (void)didReceiveMemoryWarning:(id)warning
{
  os_unfair_lock_lock(&self->_lock);
  contentDelegate = self->_contentDelegate;
  if (contentDelegate && !self->_enableLightMemoryFootprint)
  {
    [(UIPDFPageContentDelegate *)contentDelegate setIsCancelled:1];
  }

  [(UIPDFPage *)self->_page refresh];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDrawingSurfaceLayer:(id)layer
{
  annotationController = [(UIPDFPageView *)self annotationController];

  [(UIPDFAnnotationController *)annotationController setDrawingSurface:layer];
}

- (unint64_t)pageIndex
{
  os_unfair_lock_lock(&self->_lock);
  pageIndex = self->_pageIndex;
  os_unfair_lock_unlock(&self->_lock);
  return pageIndex;
}

- (UIPDFDocument)document
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_document;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setNeedsDisplay
{
  v14 = *MEMORY[0x1E69E9840];
  [(CALayer *)self->_contentLayer setNeedsDisplay];
  [(UIPDFSearchHighlightsController *)self->_searchHighlightController setNeedsDisplay];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  highlights = self->_highlights;
  v4 = [(NSMutableArray *)highlights countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(highlights);
        }

        [*(*(&v9 + 1) + 8 * i) setNeedsDisplay];
      }

      v5 = [(NSMutableArray *)highlights countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(UIPDFAnnotationController *)self->_annotationController setNeedsDisplay];
  v8.receiver = self;
  v8.super_class = UIPDFPageView;
  [(UIView *)&v8 setNeedsDisplay];
}

- (UIImage)backgroundImage
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_backgroundImage;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setBackgroundImage:(id)image
{
  os_unfair_lock_lock(&self->_lock);
  backgroundImage = self->_backgroundImage;
  os_unfair_lock_unlock(&self->_lock);
  if (backgroundImage != image)
  {
    [(UIPDFPageView *)self willChangeValueForKey:@"backgroundImage"];
    imageCopy = image;
    os_unfair_lock_lock(&self->_lock);

    self->_backgroundImage = image;
    os_unfair_lock_unlock(&self->_lock);

    [(UIPDFPageView *)self didChangeValueForKey:@"backgroundImage"];
  }
}

- (void)scheduleBackgroundImage
{
  [objc_msgSend(objc_opt_self() "mainScreen")];
  v4 = v3;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  os_unfair_lock_lock(&self->_lock);
  backgroundIsScheduled = self->_backgroundIsScheduled;
  self->_backgroundIsScheduled = 1;
  ++self->_backgroundScheduleCount;
  os_unfair_lock_unlock(&self->_lock);
  if (!backgroundIsScheduled && self->_showActivityIndicator)
  {
    if (!self->_activityIndicator)
    {
      v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleForBackingColor([(UIPDFPageView *)self backingLayerColor])];
      self->_activityIndicator = v10;
      [(UIView *)self addSubview:v10];
    }

    [(UIView *)self bounds];
    MidX = CGRectGetMidX(v28);
    [(UIView *)self bounds];
    [(UIView *)self->_activityIndicator setCenter:MidX, CGRectGetMidY(v29)];
    [(UIView *)self bringSubviewToFront:self->_activityIndicator];
    [(UIActivityIndicatorView *)self->_activityIndicator performSelector:sel_startAnimating withObject:0 afterDelay:0.5];
  }

  os_unfair_lock_lock(&self->_lock);
  pageImageCache = [(UIPDFDocument *)self->_document pageImageCache];
  pageIndex = self->_pageIndex;
  backgroundIsFullResolution = self->_backgroundIsFullResolution;
  v27 = self->_backgroundIsFullResolution;
  os_unfair_lock_unlock(&self->_lock);
  [(UIView *)self frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [[(UIView *)self superview] bounds];
  v31.origin.x = v23;
  v31.origin.y = v24;
  v31.size.width = v25;
  v31.size.height = v26;
  v30.origin.x = v16;
  v30.origin.y = v18;
  v30.size.width = v20;
  v30.size.height = v22;
  if (!CGRectIntersectsRect(v30, v31))
  {
    if (!backgroundIsFullResolution)
    {
      return;
    }

    goto LABEL_10;
  }

  [(UIPDFPageImageCache *)pageImageCache deliverImageOfPage:pageIndex + 1 maxSize:&v27 quality:self receiver:sel_receiveBackgroundImage_info_ selector:0 info:v4 * v6, v4 * v8];
  if (v27)
  {
LABEL_10:
    os_unfair_lock_lock(&self->_lock);
    self->_backgroundIsFullResolution = 1;
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)didScroll:(id)scroll
{
  object = [scroll object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(UIView *)self isDescendantOfView:object])
  {
    return;
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_backgroundIsScheduled)
  {
    if (!self->_backgroundImage && !self->_backgroundIsFullResolution)
    {
      self->_backgroundIsFullResolution = 1;
      os_unfair_lock_unlock(&self->_lock);

      [(UIPDFPageView *)self scheduleBackgroundImage];
      return;
    }
  }

  else
  {
    self->_backgroundIsFullResolution = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)viewDidZoom:(id)zoom
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    layer = [(UIView *)superview layer];
    if (layer)
    {
      [(CALayer *)layer transform];
      self->_cachedScale = v6;
    }
  }

  [(UIPDFSearchHighlightsController *)self->_searchHighlightController setNeedsDisplay];
}

- (id)createBackingLayer
{
  v3 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v3 setBackgroundColor:{-[UIColor CGColor](-[UIPDFPageView backingLayerColor](self, "backingLayerColor"), "CGColor")}];
  [v3 setOpaque:1];
  [(UIView *)self bounds];
  [v3 setBounds:?];
  [(CALayer *)self->_contentLayer position];
  [v3 setPosition:?];

  return v3;
}

- (void)layoutSubviews
{
  if (![(UIPDFPageView *)self document])
  {
    return;
  }

  if (self->_useBackingLayer)
  {
    if (!self->_backingLayer)
    {
      self->_backingLayer = [(UIPDFPageView *)self createBackingLayer];
      [(CALayer *)[(UIView *)self layer] addSublayer:self->_backingLayer];
    }

    if ([(UIPDFPageView *)self backgroundImage]&& !self->_boundsChanged)
    {
      goto LABEL_13;
    }

    if (!self->_backgroundIsScheduled)
    {
      [(UIPDFPageView *)self scheduleBackgroundImage];
    }

    [(CALayer *)self->_contentLayer position];
    v4 = v3;
    v6 = v5;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(UIView *)self bounds];
    [(CALayer *)self->_backingLayer setBounds:?];
    [(CALayer *)self->_backingLayer setPosition:v4, v6];
    [MEMORY[0x1E6979518] commit];
    goto LABEL_12;
  }

  if (![(CALayer *)self->_contentLayer superlayer])
  {
    [(CALayer *)[(UIView *)self layer] addSublayer:self->_contentLayer];
    [(CALayer *)self->_contentLayer setNeedsDisplay];
LABEL_12:
    self->_boundsChanged = 0;
  }

LABEL_13:
  [(CALayer *)self->_contentLayer setNeedsLayout];
  v7.receiver = self;
  v7.super_class = UIPDFPageView;
  [(UIView *)&v7 layoutSubviews];
  +[UITextEffectsWindow sharedTextEffectsWindowAboveStatusBar];
  if ([(UIPDFPageView *)self showAnnotations]|| [(UIPDFPageView *)self allowHighlighting])
  {
    [(UIPDFAnnotationController *)self->_annotationController layoutAnnotationViews:self];
  }
}

- (void)setShowActivityIndicator:(BOOL)indicator
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self->_activityIndicator];
  [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  self->_showActivityIndicator = indicator;
}

- (void)stopActivityIndicator
{
  if (self->_activityIndicator)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:?];
    [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
    [(UIView *)self->_activityIndicator removeFromSuperview];

    self->_activityIndicator = 0;
  }
}

- (void)showContent
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  highlights = self->_highlights;
  v4 = [(NSMutableArray *)highlights countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(highlights);
        }

        [*(*(&v9 + 1) + 8 * i) unhide];
      }

      v5 = [(NSMutableArray *)highlights countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if (![(CALayer *)self->_contentLayer superlayer])
  {
    [(CALayer *)[(UIView *)self layer] insertSublayer:self->_contentLayer above:self->_backingLayer];
    [(CALayer *)self->_contentLayer setNeedsDisplay];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = self->_backgroundImage;
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    [[(UIPDFPageView *)self page] setPageImage:v8];
  }

  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [self->_delegate pageWasRendered:self];
    }
  }
}

- (void)enableLightMemoryFootprint
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentLayer = self->_contentLayer;
    self->_enableLightMemoryFootprint = 1;
    [(CALayer *)contentLayer setTileSize:512.0, 512.0];
    [(CALayer *)contentLayer setLevelsOfDetail:1];

    [(CALayer *)contentLayer setLevelsOfDetailBias:2];
  }
}

- (id)receiveBackgroundImage:(id)image info:(id)info
{
  if (self->_showActivityIndicator)
  {
    [(UIPDFPageView *)self performSelectorOnMainThread:sel_stopActivityIndicator withObject:0 waitUntilDone:0];
  }

  os_unfair_lock_lock(&self->_lock);
  if (!image)
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_8;
  }

  backgroundImage = self->_backgroundImage;
  if (backgroundImage)
  {
    [(UIImage *)backgroundImage size];
    v8 = v7;
    v10 = v9;
    [image size];
    v13 = v11 * v12;
    os_unfair_lock_unlock(&self->_lock);
    if (v13 > v8 * v10)
    {
      goto LABEL_10;
    }

LABEL_8:
    os_unfair_lock_lock(&self->_lock);
    v14 = 0;
    goto LABEL_11;
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_10:
  [(UIPDFPageView *)self willChangeValueForKey:@"backgroundImage"];
  imageCopy = image;
  os_unfair_lock_lock(&self->_lock);

  self->_backgroundImage = image;
  [MEMORY[0x1E6979518] begin];
  v14 = 1;
  [MEMORY[0x1E6979518] setDisableActions:1];
  -[CALayer setContents:](self->_backingLayer, "setContents:", [image CGImage]);
  [MEMORY[0x1E6979518] commit];
LABEL_11:
  v16 = self->_backgroundScheduleCount - 1;
  self->_backgroundScheduleCount = v16;
  os_unfair_lock_unlock(&self->_lock);
  if (v14)
  {
    [(UIPDFPageView *)self didChangeValueForKey:@"backgroundImage"];
  }

  if (!v16)
  {
    [(UIPDFPageView *)self performSelectorOnMainThread:sel_showContent withObject:0 waitUntilDone:0];
    self->_backgroundIsScheduled = 0;
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E6979518] flush];
  }

  return 0;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectIntegral(v26);
  v16 = v27.origin.x;
  v17 = v27.origin.y;
  v18 = v27.size.width;
  v19 = v27.size.height;
  v25.receiver = self;
  v25.super_class = UIPDFPageView;
  [(UIView *)&v25 setFrame:?];
  v28.origin.x = v16;
  v28.origin.y = v17;
  v28.size.width = v18;
  v28.size.height = v19;
  if (!CGRectIsEmpty(v28) && self->_document)
  {
    [(UIView *)self bounds];
    v32.origin.x = v20;
    v32.origin.y = v21;
    v32.size.width = v22;
    v32.size.height = v23;
    v29.origin.x = v9;
    v29.origin.y = v11;
    v29.size.width = v13;
    v29.size.height = v15;
    self->_boundsChanged = !CGRectEqualToRect(v29, v32);
    self->_scalePageOnDraw = 1;
    [(UIView *)self bounds];
    [(CALayer *)self->_contentLayer setBounds:?];
    [(UIView *)self bounds];
    MidX = CGRectGetMidX(v30);
    [(UIView *)self bounds];
    [(CALayer *)self->_contentLayer setPosition:MidX, CGRectGetMidY(v31)];
    if (self->_effectsLayer)
    {
      [(UIView *)self bounds];
      [(CALayer *)self->_effectsLayer setBounds:?];
      [(CALayer *)self->_contentLayer position];
      [(CALayer *)self->_effectsLayer setPosition:?];
    }

    if (self->_useBackingLayer && !self->_backingLayer)
    {
      self->_backingLayer = [(UIPDFPageView *)self createBackingLayer];
      [(CALayer *)[(UIView *)self layer] addSublayer:self->_backingLayer];
    }

    [(UIPDFPageView *)self setTransforms];
    [(CALayer *)self->_contentLayer setNeedsLayout];
    [(CALayer *)self->_effectsLayer setNeedsLayout];
    [(UIPDFPageView *)self setNeedsDisplay];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  page = [(UIPDFPageView *)self page];
  if (page)
  {
    [(UIPDFPage *)page cropBoxAccountForRotation];
    x = v19.origin.x;
    y = v19.origin.y;
    v8 = v19.size.width;
    v9 = v19.size.height;
    v10 = CGRectGetWidth(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = v8;
    v20.size.height = v9;
    v11 = CGRectGetHeight(v20);
    if (v10 >= 1.0 && v11 >= 1.0)
    {
      v13 = fmin(width / v10, height / v11);
      v14 = v11 * v13;
      height = truncf(v14);
      v15 = v10 * v13;
      width = truncf(v15);
    }
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)addPage:(id)page
{
  [page cropBoxAccountForRotation];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v9 = CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  [(UIPDFPageView *)self setFrame:0.0, 0.0, v9, CGRectGetHeight(v11)];
  [(UIPDFPageView *)self setPage:page];
  self->_scalePageOnDraw = 0;
}

- (void)setPage:(id)page
{
  if (self->_page != page)
  {
    os_unfair_lock_lock(&self->_lock);
    document = [page document];
    if (self->_document != document)
    {
      self->_document = document;
    }

    self->_pageIndex = [page pageIndex];
    [(UIPDFPageContentDelegate *)self->_contentDelegate setDocument:self->_document];
    [(UIPDFPageContentDelegate *)self->_contentDelegate setPageIndex:self->_pageIndex];
    [page cropBox];
    self->_cropBox.origin.x = v6;
    self->_cropBox.origin.y = v7;
    self->_cropBox.size.width = v8;
    self->_cropBox.size.height = v9;
    -[UIPDFPageContentDelegate setPageRotation:](self->_contentDelegate, "setPageRotation:", [page rotation]);
    [page cropBoxAccountForRotation];
    [(UIPDFPageContentDelegate *)self->_contentDelegate setBox:?];
    [(CALayer *)self->_contentLayer setOpaque:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contentLayer = self->_contentLayer;
      [(CALayer *)contentLayer setTileSize:1024.0, 1024.0];
      [(CALayer *)contentLayer setLevelsOfDetail:6];
      [(CALayer *)contentLayer setMagnificationFilter:*MEMORY[0x1E6979CB8]];
      if (self->_scalePageOnDraw)
      {
        v11 = 5;
      }

      else
      {
        v11 = 3;
      }

      [(CALayer *)contentLayer setLevelsOfDetailBias:v11];
    }

    annotationController = self->_annotationController;
    if (annotationController)
    {
    }

    self->_annotationController = [[UIPDFAnnotationController alloc] initWithPageView:self];
    [(UIPDFViewTouchHandler *)self->_touchHandler setFirstTouch];

    self->_page = page;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)drawAnnotations:(CGContext *)annotations
{
  if ([(UIPDFPageView *)self showAnnotations]|| [(UIPDFPageView *)self allowHighlighting])
  {
    annotationController = self->_annotationController;
    if (annotationController)
    {

      [(UIPDFAnnotationController *)annotationController drawAnnotations:annotations];
    }
  }
}

- (void)ignoreTouches:(BOOL)touches
{
  touchHandler = self->_touchHandler;
  if (touches)
  {
    [(UIPDFViewTouchHandler *)touchHandler disableRecognizers];
  }

  else
  {
    [(UIPDFViewTouchHandler *)touchHandler enableRecognizers];
  }
}

- (void)doubleTapAt:(CGPoint)at
{
  v10 = 0;
  if (self->_delegate)
  {
    y = at.y;
    x = at.x;
    if (objc_opt_respondsToSelector())
    {
      [(UIPDFPageView *)self rectangleOfInterestAt:&v10 kind:x, y];
      v6 = v11.origin.x;
      v7 = v11.origin.y;
      width = v11.size.width;
      height = v11.size.height;
      if (CGRectIsNull(v11))
      {
        if (objc_opt_respondsToSelector())
        {
          [self->_delegate resetZoom:self];
        }
      }

      else
      {
        [self->_delegate zoom:self to:v10 atPoint:v6 kind:v7, width, height, x, y];
      }
    }
  }
}

- (void)twoFingerDoubleTapAt:(CGPoint)at
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->zoomRect.origin = *MEMORY[0x1E695F058];
  self->zoomRect.size = v4;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [delegate resetZoom:self];
  }
}

- (void)singleTapAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  [(UIPDFSelectionController *)self->_selectionController clearSelection];
  [(UIPDFPageView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(UIPDFPageView *)self delegate];

    [delegate didTap:self atPoint:x, y];
  }
}

- (BOOL)willDoSomethingWithTap:(CGPoint)tap
{
  y = tap.y;
  x = tap.x;
  if ([[(UIPDFPageView *)self page] selection]|| [(UIPDFAnnotationController *)[(UIPDFPageView *)self annotationController] willDoSomethingWithTap:x, y])
  {
    return 1;
  }

  [(UIPDFPageView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = [(UIPDFPageView *)self delegate];

  return [delegate shouldRecognizeTapIn:self atPoint:x, y];
}

- (void)setTransforms
{
  [(UIView *)self bounds];
  v29 = CGRectInset(v28, self->_margin, self->_margin);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  [[(UIPDFPageView *)self page] cropBoxAccountForRotation];
  memset(&v27, 0, sizeof(v27));
  CGPDFComputeTransform(&v27, [[(UIPDFPageView *)self page] rotation], v7, v8, v9, v10, x, y, width, height);
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformMakeScale(&v26, 1.0, -1.0);
  [(UIView *)self bounds];
  v11 = CGRectGetHeight(v30);
  t1 = v26;
  CGAffineTransformTranslate(&v25, &t1, 0.0, -v11);
  v26 = v25;
  p_pageToViewTransform = &self->_pageToViewTransform;
  t1 = v27;
  v23 = v25;
  CGAffineTransformConcat(&v25, &t1, &v23);
  v13 = *&v25.c;
  *&self->_pageToViewTransform.a = *&v25.a;
  *&self->_pageToViewTransform.c = v13;
  *&self->_pageToViewTransform.tx = *&v25.tx;
  p_viewToPageTransform = &self->_viewToPageTransform;
  v15 = MEMORY[0x1E695EFD0];
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&self->_viewToPageTransform.a = *MEMORY[0x1E695EFD0];
  *&self->_viewToPageTransform.c = v16;
  *&self->_viewToPageTransform.tx = *(v15 + 32);
  p_cropBox = &self->_cropBox;
  v18 = p_cropBox->origin.x;
  *&v16 = p_cropBox->origin.y;
  v19 = p_cropBox->size.width;
  v20 = p_cropBox->size.height;
  if (CGRectGetWidth(*(&v16 - 8)) >= 1.0 && CGRectGetHeight(*p_cropBox) >= 1.0)
  {
    v21 = *&p_pageToViewTransform->c;
    *&t1.a = *&p_pageToViewTransform->a;
    *&t1.c = v21;
    *&t1.tx = *&p_pageToViewTransform->tx;
    CGAffineTransformInvert(&v25, &t1);
    v22 = *&v25.c;
    *&p_viewToPageTransform->a = *&v25.a;
    *&p_viewToPageTransform->c = v22;
    *&p_viewToPageTransform->tx = *&v25.tx;
  }
}

- (CGPoint)convertPointToPDFPageSpace:(CGPoint)space
{
  v3 = vaddq_f64(*&self->_viewToPageTransform.tx, vaddq_f64(vmulq_n_f64(*&self->_viewToPageTransform.a, space.x), vmulq_n_f64(*&self->_viewToPageTransform.c, space.y)));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)convertPointFromPDFPageSpace:(CGPoint)space
{
  v3 = vaddq_f64(*&self->_pageToViewTransform.tx, vaddq_f64(vmulq_n_f64(*&self->_pageToViewTransform.a, space.x), vmulq_n_f64(*&self->_pageToViewTransform.c, space.y)));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGRect)convertRectToPDFPageSpace:(CGRect)space
{
  v3 = *&self->_viewToPageTransform.c;
  *&v4.a = *&self->_viewToPageTransform.a;
  *&v4.c = v3;
  *&v4.tx = *&self->_viewToPageTransform.tx;
  return CGRectApplyAffineTransform(space, &v4);
}

- (CGRect)convertRectFromPDFPageSpace:(CGRect)space
{
  v3 = *&self->_pageToViewTransform.c;
  *&v4.a = *&self->_pageToViewTransform.a;
  *&v4.c = v3;
  *&v4.tx = *&self->_pageToViewTransform.tx;
  return CGRectApplyAffineTransform(space, &v4);
}

- (CGRect)fitWidth:(CGRect)width atVertical:(double)vertical
{
  height = width.size.height;
  width = width.size.width;
  y = width.origin.y;
  x = width.origin.x;
  [(UIView *)self bounds];
  if (v9 <= 0.0)
  {
    v12 = height;
    goto LABEL_7;
  }

  v11 = width * v10;
  v12 = width * v10 / v9;
  v13 = vertical + v12 * -0.5;
  if (v11 <= height * v9)
  {
    if (v13 < y)
    {
      goto LABEL_7;
    }

    v14 = y + height;
    if (v12 + v13 <= y + height)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (v13 <= y)
  {
    v14 = y + height;
    if (v12 + v13 >= y + height)
    {
LABEL_5:
      y = vertical + v12 * -0.5;
      goto LABEL_7;
    }

LABEL_10:
    y = v14 - v12;
  }

LABEL_7:
  v15 = x;
  v16 = y;
  widthCopy = width;
  result.size.height = v12;
  result.size.width = widthCopy;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)fitRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(UIView *)self bounds];
  v9 = height * v7;
  if (width * v8 <= height * v7)
  {
    if (v8 > 0.0)
    {
      x = x + (v9 / v8 - width) * -0.5;
      width = v9 / v8;
    }
  }

  else if (v7 > 0.0)
  {
    y = y + (width * v8 / v7 - height) * -0.5;
    height = width * v8 / v7;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)rectangleOfInterestAt:(CGPoint)at kind:(int *)kind
{
  y = at.y;
  [(UIPDFPageView *)self convertPointToPDFPageSpace:at.x];
  v8 = v7;
  v10 = v9;
  [(UIView *)self bounds];
  v39 = v11;
  v13 = v12;
  x = *MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 8);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v16 = *(MEMORY[0x1E695F050] + 24);
  v40 = *(MEMORY[0x1E695F050] + 16);
  v41 = *MEMORY[0x1E695F050];
  v46.origin = *MEMORY[0x1E695F050];
  v46.size = v40;
  v18 = *(MEMORY[0x1E695EFD0] + 16);
  *&v45.a = *MEMORY[0x1E695EFD0];
  *&v45.c = v18;
  *&v45.tx = *(MEMORY[0x1E695EFD0] + 32);
  v44 = 0.0;
  [[(UIPDFPageView *)self page] CGPage];
  if (CGPDFSelectionCreateAtPointWithOptions())
  {
    IsStandaloneGraphic = CGPDFSelectionIsStandaloneGraphic();
    if (kind)
    {
      if (IsStandaloneGraphic)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      *kind = v20;
    }

    ContentRect = CGPDFSelectionGetContentRect();
    CGPDFSelectionRelease();
    if (ContentRect && !CGRectIsNull(v46))
    {
      if (v44 == 0.0 || ContentRect == 2)
      {
        v43 = v45;
        v46 = CGRectApplyAffineTransform(v46, &v43);
      }

      else
      {
        height = v46.size.height;
        width = v46.size.width;
        v24 = v46.origin.y;
        if (v46.size.height > v46.size.width)
        {
          v42 = v45;
          memset(&v43, 0, sizeof(v43));
          CGAffineTransformInvert(&v43, &v42);
          v25 = width * 0.5 + v43.ty + v8 * v43.b + v10 * v43.d;
          if (height + v24 <= v25)
          {
            v25 = height + v24;
          }

          v24 = v25 - width;
          v46.origin.y = v25 - width;
          v46.size.height = width;
          height = width;
        }

        v47.origin.x = v46.origin.x;
        v43 = v45;
        v47.origin.y = v24;
        v47.size.width = width;
        v47.size.height = height;
        v48 = CGRectApplyAffineTransform(v47, &v43);
        v46 = v48;
        if (v13 > 0.0 && v13 * v48.size.width < v39 * v48.size.height)
        {
          v46.origin.x = v48.origin.x + (v39 * v48.size.height / v13 - v48.size.width) * -0.5;
          v46.size.width = v39 * v48.size.height / v13;
        }
      }

      [(UIPDFPageView *)self convertRectFromPDFPageSpace:?];
      x = v26;
      v14 = v27;
      v17 = v28;
      v16 = v29;
    }

    v49.origin.x = x;
    v49.origin.y = v14;
    v49.size.width = v17;
    v49.size.height = v16;
    if (CGRectIsEmpty(v49) || (p_zoomRect = &self->zoomRect, v51.origin.x = x, v51.origin.y = v14, v51.size.width = v17, v51.size.height = v16, CGRectEqualToRect(self->zoomRect, v51)))
    {
      self->zoomRect.origin = v41;
      self->zoomRect.size = v40;
    }

    else
    {
      if (ContentRect == 1)
      {
        [(UIPDFPageView *)self fitWidth:x atVertical:v14, v17, v16, y];
      }

      else
      {
        [(UIPDFPageView *)self fitRect:x, v14, v17, v16];
      }

      if (CGRectIsEmpty(*&v35))
      {
        p_zoomRect->origin = v41;
        self->zoomRect.size = v40;
      }

      else
      {
        p_zoomRect->origin.x = x;
        self->zoomRect.origin.y = v14;
        self->zoomRect.size.width = v17;
        self->zoomRect.size.height = v16;
      }
    }

    v17 = self->zoomRect.size.width;
    v16 = self->zoomRect.size.height;
    x = self->zoomRect.origin.x;
    v14 = self->zoomRect.origin.y;
  }

  v31 = x;
  v32 = v14;
  v33 = v17;
  v34 = v16;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGColor)highLightColor
{
  v6 = *MEMORY[0x1E69E9840];
  result = self->_highLightColor;
  if (!result)
  {
    v5[0] = xmmword_18A681860;
    v5[1] = unk_18A681870;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    self->_highLightColor = CGColorCreate(DeviceRGB, v5);
    CGColorSpaceRelease(DeviceRGB);
    return self->_highLightColor;
  }

  return result;
}

- (void)hideSelection
{
  [(UIPDFViewTouchHandler *)self->_touchHandler hideMenu];
  selectionController = self->_selectionController;

  [(UIPDFSelectionController *)selectionController hideWidget];
}

- (void)showSelection
{
  [(UIPDFSelectionController *)self->_selectionController layoutSelections];
  touchHandler = self->_touchHandler;

  [(UIPDFViewTouchHandler *)touchHandler showMenu];
}

- (CALayer)effectsLayer
{
  result = self->_effectsLayer;
  if (!result)
  {
    self->_effectsLayer = objc_alloc_init(MEMORY[0x1E6979398]);
    [(UIView *)self bounds];
    [(CALayer *)self->_effectsLayer setBounds:?];
    [(CALayer *)self->_contentLayer position];
    [(CALayer *)self->_effectsLayer setPosition:?];
    [(CALayer *)[(UIView *)self layer] insertSublayer:self->_effectsLayer above:self->_contentLayer];
    return self->_effectsLayer;
  }

  return result;
}

- (BOOL)hasSearchHighlights
{
  searchHighlightController = self->_searchHighlightController;
  if (searchHighlightController)
  {
    LOBYTE(searchHighlightController) = [(UIPDFSearchHighlightsController *)searchHighlightController hasSearchHighlights];
  }

  return searchHighlightController;
}

- (void)addWidgetToSelection
{
  selectionController = self->_selectionController;
  selection = [[(UIPDFPageView *)self page] selection];

  [(UIPDFSelectionController *)selectionController addSelectionWidget:selection];
}

- (void)suspendInstantTouchHighlighting
{
  [[(UIPDFPageView *)self page] setSelection:[[(UIPDFAnnotationController *)self->_annotationController currentAnnotation] selection]];
  [(UIPDFSelectionController *)self->_selectionController suspendInstantHighlightMode];
  [(UIPDFViewTouchHandler *)self->_touchHandler showMenu];
  [(UIView *)self setNeedsLayout];

  [(UIPDFPageView *)self setNeedsDisplay];
}

- (CGPDFDictionary)_annotForPoint:(CGPoint)point rect:(CGRect *)rect
{
  if (rect)
  {
    v6 = *(MEMORY[0x1E695F050] + 16);
    rect->origin = *MEMORY[0x1E695F050];
    rect->size = v6;
  }

  [(UIPDFPageView *)self convertPointToPDFPageSpace:point.x, point.y];
  v8 = v7;
  v10 = v9;
  result = CGPDFPageGetDictionary([[(UIPDFPageView *)self page] CGPage]);
  if (result)
  {
    value = 0;
    if (CGPDFDictionaryGetArray(result, "Annots", &value))
    {
      result = CGPDFArrayGetCount(value);
      if (result)
      {
        v12 = result;
        v13 = 0;
        v22 = *(MEMORY[0x1E695F058] + 8);
        v23 = *MEMORY[0x1E695F058];
        v14 = *(MEMORY[0x1E695F058] + 16);
        v15 = *(MEMORY[0x1E695F058] + 24);
        while (1)
        {
          dict = 0;
          if (CGPDFArrayGetDictionary(value, v13, &dict))
          {
            __s1 = 0;
            if (CGPDFDictionaryGetName(dict, "Subtype", &__s1))
            {
              v16 = __s1;
              if (!strcmp(__s1, "Link") || !strcmp(v16, "lnk"))
              {
                array = 0;
                if (CGPDFDictionaryGetArray(dict, "Rect", &array))
                {
                  v17 = array;
                  v18 = v15;
                  v19 = v14;
                  v20 = v22;
                  v21 = v23;
                  if (CGPDFArrayGetCount(array) == 4)
                  {
                    v30 = 0.0;
                    v31 = 0.0;
                    v28 = 0.0;
                    v29 = 0.0;
                    CGPDFArrayGetNumber(v17, 0, &v31);
                    CGPDFArrayGetNumber(v17, 1uLL, &v30);
                    CGPDFArrayGetNumber(v17, 2uLL, &v29);
                    CGPDFArrayGetNumber(v17, 3uLL, &v28);
                    v20 = v30;
                    v21 = v31;
                    v19 = v29 - v31;
                    v18 = v28 - v30;
                  }

                  v33.origin.x = v21;
                  v33.origin.y = v20;
                  v33.size.width = v19;
                  v33.size.height = v18;
                  v32.x = v8;
                  v32.y = v10;
                  if (CGRectContainsPoint(v33, v32))
                  {
                    break;
                  }
                }
              }
            }
          }

          if (v12 == ++v13)
          {
            return 0;
          }
        }

        if (rect)
        {
          rect->origin.x = v21;
          rect->origin.y = v20;
          rect->size.width = v19;
          rect->size.height = v18;
        }

        return dict;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end