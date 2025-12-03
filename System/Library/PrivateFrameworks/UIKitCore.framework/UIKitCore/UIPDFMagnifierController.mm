@interface UIPDFMagnifierController
- (BOOL)isSelectionUniformlyRotated:(double *)rotated;
- (CGPoint)convertPointToEnlargedSpace:(CGPoint)space;
- (CGPoint)convertPointToRotatedPage:(CGPoint)page;
- (CGPoint)convertViewPointToEnlargedSpace:(CGPoint)space;
- (CGPoint)pointToMagnifyInPDFSpace;
- (CGPoint)viewPointInTextEffectsSpace;
- (CGRect)convertRectToEnlargedSpace:(CGRect)space;
- (CGRect)convertRectToRotatedPage:(CGRect)page;
- (UIPDFMagnifierController)init;
- (id)imageReceived:(id)received data:(id)data;
- (void)_show;
- (void)addBling;
- (void)addTextRangeHandles;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)hide;
- (void)move;
- (void)placeImage;
- (void)setImageContainerMask;
- (void)setImageContainerPositionLoupe;
- (void)setImageContainerPositionMagnifier;
- (void)setLayerPositions;
- (void)setPower;
- (void)setSelectionPath;
- (void)setSelectionPath:(CGPath *)path bounds:(CGRect)bounds transform:(CGAffineTransform *)transform;
- (void)setTextRangeHandlePositions;
- (void)tearDownLayers;
@end

@implementation UIPDFMagnifierController

- (UIPDFMagnifierController)init
{
  v8 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = UIPDFMagnifierController;
  v2 = [(UIPDFMagnifierController *)&v5 init];
  if (v2)
  {
    v2->_textEffectsWindow = +[UITextEffectsWindow sharedTextEffectsWindowAboveStatusBar];
    v2->_magnifierSize = xmmword_18A681790;
    *components = xmmword_18A681840;
    v7 = unk_18A681850;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v2->_grabberColor = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
    v2->_visible = 0;
  }

  return v2;
}

- (void)dealloc
{
  CGColorRelease(self->_grabberColor);
  [(UIPDFMagnifierController *)self tearDownLayers];
  textEffectsSubView = self->_textEffectsSubView;
  if (textEffectsSubView)
  {
    [(UIView *)textEffectsSubView removeFromSuperview];
  }

  v4.receiver = self;
  v4.super_class = UIPDFMagnifierController;
  [(UIPDFMagnifierController *)&v4 dealloc];
}

- (void)_show
{
  if (!self->_textEffectsSubView)
  {
    v3 = [UIView alloc];
    [(UIView *)self->_textEffectsWindow bounds];
    v4 = [(UIView *)v3 initWithFrame:?];
    self->_textEffectsSubView = v4;
    [(UIView *)self->_textEffectsWindow addSubview:v4];
  }

  [(UIPDFMagnifierController *)self placeImage];
  [(UIPDFMagnifierController *)self setImageContainerMask];
  self->_visible = 1;
}

- (void)move
{
  if (self->_loupe)
  {
    [(UIPDFMagnifierController *)self setImageContainerPositionLoupe];
  }

  else
  {
    [(UIPDFMagnifierController *)self setImageContainerPositionMagnifier];
    [(UIPDFMagnifierController *)self setTextRangeHandlePositions];
  }

  [(UIPDFMagnifierController *)self setSelectionPath];

  [(UIPDFMagnifierController *)self setLayerPositions];
}

- (void)hide
{
  [(UIPDFMagnifierController *)self tearDownLayers];
  textEffectsSubView = self->_textEffectsSubView;
  if (textEffectsSubView)
  {
    [(UIView *)textEffectsSubView removeFromSuperview];

    self->_textEffectsSubView = 0;
  }

  self->_visible = 0;
}

- (void)tearDownLayers
{
  imageLayer = self->_imageLayer;
  if (imageLayer)
  {
    [(CALayer *)imageLayer removeFromSuperlayer];

    self->_imageLayer = 0;
  }

  selectionLayer = self->_selectionLayer;
  if (selectionLayer)
  {
    [(CAShapeLayer *)selectionLayer removeFromSuperlayer];

    self->_selectionLayer = 0;
  }

  imageContainer = self->_imageContainer;
  if (imageContainer)
  {
    [(CALayer *)imageContainer removeFromSuperlayer];

    self->_imageContainer = 0;
  }

  maskLayer = self->_maskLayer;
  if (maskLayer)
  {

    self->_maskLayer = 0;
  }

  loLayer = self->_loLayer;
  if (loLayer)
  {
    [(CALayer *)loLayer removeFromSuperlayer];

    self->_loLayer = 0;
  }

  hiLayer = self->_hiLayer;
  if (hiLayer)
  {
    [(CALayer *)hiLayer removeFromSuperlayer];

    self->_hiLayer = 0;
  }

  leftBar = self->_leftBar;
  if (leftBar)
  {
    [(CALayer *)leftBar removeFromSuperlayer];

    self->_leftBar = 0;
  }

  rightBar = self->_rightBar;
  if (rightBar)
  {
    [(CALayer *)rightBar removeFromSuperlayer];

    self->_rightBar = 0;
  }

  leftGrabber = self->_leftGrabber;
  if (leftGrabber)
  {
    [(CALayer *)leftGrabber removeFromSuperlayer];

    self->_leftGrabber = 0;
  }

  rightGrabber = self->_rightGrabber;
  if (rightGrabber)
  {
    [(CALayer *)rightGrabber removeFromSuperlayer];

    self->_rightGrabber = 0;
  }
}

- (void)setPower
{
  [(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] convertRectFromPDFPageSpace:0.0, 0.0, 1.0, 1.0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_textEffectsSubView convertRect:[(UIPDFMagnifierController *)self pageView] fromView:v3, v5, v7, v9];
  Width = CGRectGetWidth(v17);
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v12 = Width / CGRectGetWidth(v18);
  [(UIView *)[(UIPDFMagnifierController *)self pageView] bounds];
  v14 = v13 / 100.0;
  v15 = truncf(v14) * -0.253333333 + 3.36;
  if (v15 < 1.84)
  {
    v15 = 1.84;
  }

  if (v15 > 2.6)
  {
    v15 = 2.6;
  }

  self->_power = v15;
  if (v12 >= v15)
  {

    [(UIPDFMagnifierController *)self hide];
  }

  else
  {
    self->_power = v12 * v15;
  }
}

- (BOOL)isSelectionUniformlyRotated:(double *)rotated
{
  selection = [[(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page] selection];
  numberOfRectangles = [(UIPDFSelection *)selection numberOfRectangles];
  if (!numberOfRectangles)
  {
    return numberOfRectangles;
  }

  v7 = numberOfRectangles;
  memset(&v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  [(UIPDFSelection *)selection getBounds:v17 transform:&v18 index:0];
  pageRotation = self->_pageRotation;
  if (pageRotation)
  {
    v16 = v18;
    CPRotationDegreesFromTransform(&v16.a);
    if (vabdd_f64(v9, pageRotation) >= 1.0)
    {
      goto LABEL_7;
    }

LABEL_6:
    LOBYTE(numberOfRectangles) = 0;
    return numberOfRectangles;
  }

  v16 = v18;
  if (CGAffineTransformIsIdentity(&v16))
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v7 != 1)
  {
    for (i = 1; i != v7; ++i)
    {
      memset(&v16, 0, sizeof(v16));
      [(UIPDFSelection *)selection getBounds:v17 transform:&v16 index:i];
      pageRotation = self->_pageRotation;
      if (pageRotation)
      {
        t1 = v18;
        CPRotationDegreesFromTransform(&t1.a);
        if (vabdd_f64(v11, pageRotation) < 1.0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        t1 = v18;
        v14 = v16;
        if (!CGAffineTransformEqualToTransform(&t1, &v14))
        {
          goto LABEL_6;
        }
      }
    }
  }

  v16 = v18;
  CPRotationDegreesFromTransform(&v16.a);
  *rotated = (v12 - pageRotation) * -3.14159265 / 180.0;
  LOBYTE(numberOfRectangles) = 1;
  return numberOfRectangles;
}

- (CGPoint)convertViewPointToEnlargedSpace:(CGPoint)space
{
  [(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] convertPointToPDFPageSpace:space.x, space.y];
  v5 = v4;
  v7 = v6;
  [(CALayer *)self->_imageContainer bounds];
  enlargementScale = self->_enlargementScale;
  v9 = v5 * enlargementScale;
  v10 = CGRectGetHeight(v13) - v7 * enlargementScale;
  v11 = v9;
  result.y = v10;
  result.x = v11;
  return result;
}

- (CGPoint)convertPointToRotatedPage:(CGPoint)page
{
  y = page.y;
  x = page.x;
  [[(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page] cropBox];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  pageRotation = self->_pageRotation;
  if (pageRotation == 270)
  {
    y = CGRectGetHeight(*&v6) - y;
    v15 = x;
    goto LABEL_9;
  }

  if (pageRotation == 180)
  {
    x = CGRectGetWidth(*&v6) - x;
    v18.origin.x = v10;
    v18.origin.y = v11;
    v18.size.width = v12;
    v18.size.height = v13;
    v15 = CGRectGetHeight(v18) - y;
LABEL_8:
    y = x;
    goto LABEL_9;
  }

  if (pageRotation != 90)
  {
    v15 = y;
    goto LABEL_8;
  }

  v15 = CGRectGetWidth(*&v6) - x;
LABEL_9:
  v16 = y;
  result.y = v15;
  result.x = v16;
  return result;
}

- (CGRect)convertRectToRotatedPage:(CGRect)page
{
  height = page.size.height;
  width = page.size.width;
  y = page.origin.y;
  x = page.origin.x;
  [[(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page] cropBox];
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  pageRotation = self->_pageRotation;
  switch(pageRotation)
  {
    case 0x10EuLL:
      v21 = CGRectGetHeight(*&v8);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      y = v21 - CGRectGetMaxY(v30);
      v19 = width;
      v18 = x;
      break;
    case 0xB4uLL:
      v24 = CGRectGetWidth(*&v8);
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v25 = v24 - CGRectGetMaxX(v27);
      v28.origin.x = v12;
      v28.origin.y = v13;
      v28.size.width = v14;
      v28.size.height = v15;
      v20 = CGRectGetHeight(v28);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v18 = v20 - CGRectGetMaxY(v29);
      v19 = height;
      height = width;
      y = v25;
      break;
    case 0x5AuLL:
      v17 = CGRectGetWidth(*&v8);
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v18 = v17 - CGRectGetMaxX(v26);
      v19 = width;
      break;
    default:
      v19 = height;
      height = width;
      v18 = y;
      y = x;
      break;
  }

  v22 = y;
  v23 = height;
  result.size.height = v19;
  result.size.width = v23;
  result.origin.y = v18;
  result.origin.x = v22;
  return result;
}

- (CGRect)convertRectToEnlargedSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  [[(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page] cropBox];
  v9 = x - v8;
  v11 = y - v10;
  if (self->_pageRotation)
  {
    [(UIPDFMagnifierController *)self convertRectToRotatedPage:v9, v11, width, height];
    v9 = v12;
    v11 = v13;
    width = v14;
    height = v15;
  }

  [(CALayer *)self->_imageContainer bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  memset(&v29, 0, sizeof(v29));
  CGAffineTransformMakeScale(&v29, self->_enlargementScale, -self->_enlargementScale);
  memset(&v28, 0, sizeof(v28));
  v30.origin.x = v17;
  v30.origin.y = v19;
  v30.size.width = v21;
  v30.size.height = v23;
  v24 = CGRectGetHeight(v30);
  CGAffineTransformMakeTranslation(&v28, 0.0, v24);
  t1 = v29;
  memset(&v27, 0, sizeof(v27));
  v25 = v28;
  CGAffineTransformConcat(&v27, &t1, &v25);
  t1 = v27;
  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = width;
  v31.size.height = height;
  return CGRectApplyAffineTransform(v31, &t1);
}

- (CGPoint)convertPointToEnlargedSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  [[(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page] cropBox];
  v7 = v6;
  v9 = v8;
  [(CALayer *)self->_imageContainer bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = x - v7;
  v19 = y - v9;
  if (self->_pageRotation)
  {
    [(UIPDFMagnifierController *)self convertPointToRotatedPage:v18, v19];
  }

  v23 = v18;
  v24 = v19;
  memset(&v29, 0, sizeof(v29));
  CGAffineTransformMakeScale(&v29, self->_enlargementScale, -self->_enlargementScale);
  memset(&v28, 0, sizeof(v28));
  v31.origin.x = v11;
  v31.origin.y = v13;
  v31.size.width = v15;
  v31.size.height = v17;
  Height = CGRectGetHeight(v31);
  CGAffineTransformMakeTranslation(&v28, 0.0, Height);
  t1 = v29;
  memset(&v27, 0, sizeof(v27));
  t2 = v28;
  CGAffineTransformConcat(&v27, &t1, &t2);
  v21 = vaddq_f64(*&v27.tx, vaddq_f64(vmulq_n_f64(*&v27.a, v23), vmulq_n_f64(*&v27.c, v24)));
  v22 = v21.f64[1];
  result.x = v21.f64[0];
  result.y = v22;
  return result;
}

- (CGPoint)viewPointInTextEffectsSpace
{
  textEffectsWindow = self->_textEffectsWindow;
  pageView = [(UIPDFMagnifierController *)self pageView];
  x = self->_touchPoint.x;
  y = self->_touchPoint.y;

  [(UIView *)textEffectsWindow convertPoint:pageView fromView:x, y];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)pointToMagnifyInPDFSpace
{
  [(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] convertPointToPDFPageSpace:self->_touchPoint.x, self->_pointToMagnify.y];
  v18 = v4;
  v19 = v3;
  selection = [[(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page] selection];
  v6.f64[0] = v19;
  v6.f64[1] = v18;
  v20 = v6;
  if (selection)
  {
    v7 = selection;
    if ([(UIPDFSelection *)selection numberOfRectangles])
    {
      memset(v26, 0, sizeof(v26));
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      [(UIPDFSelection *)v7 getBounds:v26 transform:&v23 index:0];
      *&v22.a = v23;
      *&v22.c = v24;
      *&v22.tx = v25;
      if (!CGAffineTransformIsIdentity(&v22))
      {
        [(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] convertPointToPDFPageSpace:self->_touchPoint.x, self->_touchPoint.y];
        v9 = v8;
        v11 = v10;
        [(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] convertPointToPDFPageSpace:self->_pointToMagnify.x, self->_pointToMagnify.y];
        v13 = v12;
        v15 = v14;
        *&v21.a = v23;
        *&v21.c = v24;
        *&v21.tx = v25;
        memset(&v22, 0, sizeof(v22));
        CGAffineTransformInvert(&v22, &v21);
        v20 = vaddq_f64(v25, vaddq_f64(vmulq_n_f64(v23, v22.tx + v9 * v22.a + v11 * v22.c), vmulq_n_f64(v24, v22.ty + v13 * v22.b + v15 * v22.d)));
      }
    }
  }

  v17 = v20.f64[1];
  v16 = v20.f64[0];
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)setImageContainerPositionMagnifier
{
  [(UIPDFMagnifierController *)self viewPointInTextEffectsSpace];
  v4 = v3;
  v6 = v5;
  [[(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page] cropBox];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MidY = CGRectGetMidY(v29);
  [(UIPDFMagnifierController *)self pointToMagnifyInPDFSpace];
  v14 = v13;
  v16 = v15;
  if (self->_pageRotation)
  {
    [(UIPDFMagnifierController *)self convertPointToRotatedPage:MidX, MidY];
    MidX = v17;
    MidY = v18;
    [(UIPDFMagnifierController *)self convertPointToRotatedPage:v14, v16];
    v14 = v19;
    v16 = v20;
  }

  enlargementScale = self->_enlargementScale;
  v22 = v4 + (MidX - v14) * enlargementScale;
  v23 = roundf(v22);
  v24 = v6 + (v16 - MidY) * enlargementScale + -50.0;
  v25 = roundf(v24);
  [MEMORY[0x1E6979518] setDisableActions:1];
  imageContainer = self->_imageContainer;

  [(CALayer *)imageContainer setPosition:v23, v25];
}

- (void)setImageContainerPositionLoupe
{
  [(UIPDFMagnifierController *)self viewPointInTextEffectsSpace];
  v4 = v3;
  v6 = v5;
  [[(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page] cropBox];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MidY = CGRectGetMidY(v29);
  [(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] convertPointToPDFPageSpace:self->_touchPoint.x, self->_touchPoint.y];
  v14 = v13;
  v16 = v15;
  if (self->_pageRotation)
  {
    [(UIPDFMagnifierController *)self convertPointToRotatedPage:MidX, MidY];
    MidX = v17;
    MidY = v18;
    [(UIPDFMagnifierController *)self convertPointToRotatedPage:v14, v16];
    v14 = v19;
    v16 = v20;
  }

  enlargementScale = self->_enlargementScale;
  v22 = v4 + (MidX - v14) * enlargementScale;
  v23 = roundf(v22);
  v24 = v6 + (v16 - MidY) * enlargementScale + -60.0;
  v25 = roundf(v24);
  [MEMORY[0x1E6979518] setDisableActions:1];
  imageContainer = self->_imageContainer;

  [(CALayer *)imageContainer setPosition:v23, v25];
}

- (void)setLayerPositions
{
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(UIView *)self->_textEffectsWindow convertPoint:[(UIPDFMagnifierController *)self pageView] fromView:self->_touchPoint.x, self->_touchPoint.y];
  v4 = v3;
  v6 = v5;
  [(CALayer *)[(UIView *)self->_textEffectsSubView layer] convertPoint:self->_imageContainer toLayer:v3, v5];
  if (self->_loupe)
  {
    v9 = 60.0;
  }

  else
  {
    v9 = 40.0;
  }

  v10 = v8 - v9;
  v11 = v7;
  v12 = roundf(v11);
  v13 = 0.0;
  if (self->_loupe)
  {
    v13 = -4.0;
  }

  v14 = v10;
  [(CALayer *)self->_maskLayer setPosition:v12, v13 + roundf(v14)];
  v15 = v4;
  v16 = roundf(v15);
  v17 = v16;
  v18 = v6 - v9;
  v19 = roundf(v18);
  loLayer = self->_loLayer;
  if (loLayer)
  {
    [(CALayer *)loLayer setPosition:v16, v19];
  }

  hiLayer = self->_hiLayer;

  [(CALayer *)hiLayer setPosition:v17, v19];
}

- (void)addBling
{
  [objc_msgSend(objc_opt_self() "mainScreen")];
  v4 = v3;
  if (self->_loupe)
  {
    v5 = @"kb-loupe-hi.png";
  }

  else
  {
    v5 = @"RangedMagnifierGlass_Horizontal_Normal.png";
  }

  v6 = [UIImage kitImageNamed:v5];
  [v6 size];
  v8 = v7;
  [v6 size];
  v10 = v9;
  v11 = objc_alloc_init(MEMORY[0x1E6979398]);
  self->_hiLayer = v11;
  [(CALayer *)v11 setBounds:0.0, 0.0, v8, v10];
  -[CALayer setContents:](self->_hiLayer, "setContents:", [v6 CGImage]);
  [(CALayer *)self->_hiLayer setContentsScale:v4];
  layer = [(UIView *)self->_textEffectsSubView layer];
  hiLayer = self->_hiLayer;
  imageContainer = self->_imageContainer;

  [(CALayer *)layer insertSublayer:hiLayer above:imageContainer];
}

- (void)setSelectionPath:(CGPath *)path bounds:(CGRect)bounds transform:(CGAffineTransform *)transform
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  MaxX = CGRectGetMaxX(bounds);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MinY = CGRectGetMinY(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v42 = CGRectGetMaxX(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MaxY = CGRectGetMaxY(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MinX = CGRectGetMinX(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v14 = CGRectGetMaxY(v50);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v15 = CGRectGetMinX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v16 = CGRectGetMinY(v52);
  b = transform->b;
  c = transform->c;
  d = transform->d;
  tx = transform->tx;
  ty = transform->ty;
  v22 = tx + v42 * transform->a + MaxY * c;
  v23 = ty + v42 * b + MaxY * d;
  v24 = tx + MinX * transform->a + v14 * c;
  v25 = ty + MinX * b + v14 * d;
  v26 = tx + v15 * transform->a + v16 * c;
  v27 = ty + v15 * b + v16 * d;
  [(UIPDFMagnifierController *)self convertPointToEnlargedSpace:tx + MaxX * transform->a + MinY * c, ty + MaxX * b + MinY * d];
  v29 = v28;
  v31 = v30;
  [(UIPDFMagnifierController *)self convertPointToEnlargedSpace:v22, v23];
  v33 = v32;
  v35 = v34;
  [(UIPDFMagnifierController *)self convertPointToEnlargedSpace:v24, v25];
  v37 = v36;
  v39 = v38;
  [(UIPDFMagnifierController *)self convertPointToEnlargedSpace:v26, v27];
  CPSetCGPathPoints4(path, v29, v31, v33, v35, v37, v39, v40, v41);

  CGPathCloseSubpath(path);
}

- (void)setSelectionPath
{
  selection = [[(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page] selection];
  if (selection && (v4 = selection, (v5 = [(UIPDFSelection *)selection numberOfRectangles]) != 0))
  {
    v6 = v5;
    Mutable = CGPathCreateMutable();
    v8 = 0;
    v12 = 0u;
    v13 = 0u;
    memset(&v11, 0, sizeof(v11));
    do
    {
      [(UIPDFSelection *)v4 getBounds:&v12 transform:&v11 index:v8];
      v10 = v11;
      if (CGAffineTransformIsIdentity(&v10))
      {
        [(UIPDFMagnifierController *)self convertRectToEnlargedSpace:v12, v13];
        *&v12 = v15.origin.x;
        *(&v12 + 1) = *&v15.origin.y;
        *&v13 = v15.size.width;
        *(&v13 + 1) = *&v15.size.height;
        CGPathAddRect(Mutable, 0, v15);
      }

      else
      {
        v10 = v11;
        [(UIPDFMagnifierController *)self setSelectionPath:Mutable bounds:&v10 transform:v12, v13];
      }

      ++v8;
    }

    while (v6 != v8);
    [(CAShapeLayer *)self->_selectionLayer setPath:Mutable];
    CGPathRelease(Mutable);
  }

  else
  {
    selectionLayer = self->_selectionLayer;

    [(CAShapeLayer *)selectionLayer setPath:0];
  }
}

- (void)placeImage
{
  v20 = *MEMORY[0x1E69E9840];
  [(UIPDFMagnifierController *)self setPower];
  [(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] convertRectFromPDFPageSpace:0.0, 0.0, 1.0, 1.0];
  self->_enlargementScale = self->_power * v3;
  page = [(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page];
  [(UIPDFPage *)page cropBox];
  enlargementScale = self->_enlargementScale;
  v7 = enlargementScale * v6;
  v8 = roundf(v7);
  *&enlargementScale = enlargementScale * v9;
  v10 = roundf(*&enlargementScale);
  rotation = [(UIPDFPage *)page rotation];
  self->_pageRotation = rotation;
  if (rotation == 270 || rotation == 90)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
    v10 = v8;
  }

  v13 = objc_alloc_init(MEMORY[0x1E6979398]);
  self->_imageContainer = v13;
  [(CALayer *)v13 setBounds:0.0, 0.0, v10, v12];
  self->_imageLayer = objc_alloc_init(MEMORY[0x1E6979398]);
  [(CALayer *)self->_imageContainer bounds];
  [(CALayer *)self->_imageLayer setBounds:?];
  [(CALayer *)self->_imageLayer setPosition:v10 * 0.5, v12 * 0.5];
  [(CALayer *)self->_imageContainer addSublayer:self->_imageLayer];
  self->_selectionLayer = objc_alloc_init(MEMORY[0x1E69794A0]);
  [(CALayer *)self->_imageLayer bounds];
  [(CAShapeLayer *)self->_selectionLayer setBounds:?];
  [(CALayer *)self->_imageLayer position];
  [(CAShapeLayer *)self->_selectionLayer setPosition:?];
  v18 = xmmword_18A681860;
  v19 = unk_18A681870;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v15 = CGColorCreate(DeviceRGB, &v18);
  [(CAShapeLayer *)self->_selectionLayer setFillColor:v15, v18, v19];
  CGColorRelease(v15);
  CGColorSpaceRelease(DeviceRGB);
  [(CALayer *)self->_imageContainer addSublayer:self->_selectionLayer];
  if (self->_loupe)
  {
    [(UIPDFMagnifierController *)self setImageContainerPositionLoupe];
  }

  else
  {
    [(UIPDFMagnifierController *)self setImageContainerPositionMagnifier];
  }

  [objc_msgSend(objc_opt_self() "mainScreen")];
  v17 = v16;
  [(CALayer *)self->_imageLayer setContentsScale:?];
  [(UIPDFPage *)page deliverImageWithWidth:(v10 * v17) height:(v12 * v17) receiver:self selector:sel_imageReceived_data_ info:self->_imageLayer];
  [(CALayer *)[(UIView *)self->_textEffectsSubView layer] addSublayer:self->_imageContainer];
  [(UIPDFMagnifierController *)self addBling];
  [(UIPDFMagnifierController *)self setSelectionPath];
  if (!self->_loupe)
  {
    [(UIPDFMagnifierController *)self addTextRangeHandles];
  }
}

- (id)imageReceived:(id)received data:(id)data
{
  if (received)
  {
    cGImage = [received CGImage];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [data setContents:cGImage];
    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    [(UIPDFMagnifierController *)self hide:0];
  }

  return 0;
}

- (void)setImageContainerMask
{
  if (self->_loupe)
  {
    v3 = @"kb-loupe-mask.png";
  }

  else
  {
    v3 = @"RangedMagnifierMask_Horizontal_Normal.png";
  }

  v4 = [UIImage kitImageNamed:v3];
  [v4 size];
  v6 = v5;
  v8 = v7;
  cGImage = [v4 CGImage];
  v10 = objc_alloc_init(MEMORY[0x1E6979398]);
  self->_maskLayer = v10;
  [(CALayer *)v10 setBounds:0.0, 0.0, v6, v8];
  [(CALayer *)self->_maskLayer setContents:cGImage];
  [v4 scale];
  [(CALayer *)self->_maskLayer setContentsScale:?];
  if (!self->_loupe)
  {
    v13 = 0.0;
    if ([(UIPDFMagnifierController *)self isSelectionUniformlyRotated:&v13])
    {
      memset(&v12, 0, sizeof(v12));
      CATransform3DMakeRotation(&v12, v13, 0.0, 0.0, 1.0);
      v11 = v12;
      [(CALayer *)self->_maskLayer setTransform:&v11];
      v11 = v12;
      [(CALayer *)self->_hiLayer setTransform:&v11];
      v11 = v12;
      [(CALayer *)self->_loLayer setTransform:&v11];
    }
  }

  [(UIPDFMagnifierController *)self setLayerPositions];
  [(CALayer *)self->_imageContainer setMask:self->_maskLayer];
}

- (void)setTextRangeHandlePositions
{
  selection = [[(UIPDFPageView *)[(UIPDFMagnifierController *)self pageView] page] selection];
  numberOfRectangles = [(UIPDFSelection *)selection numberOfRectangles];
  if (numberOfRectangles)
  {
    v5 = numberOfRectangles;
    memset(&v45, 0, sizeof(v45));
    memset(&v44, 0, sizeof(v44));
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    [(UIPDFSelection *)selection getBounds:&v45 transform:&v41 index:0];
    [(UIPDFSelection *)selection getBounds:&v44 transform:&v38 index:v5 - 1];
    *&v37.m11 = v38;
    *&v37.m13 = v39;
    *&v37.m21 = v40;
    if (CGAffineTransformIsIdentity(&v37))
    {
      [(UIPDFMagnifierController *)self convertRectToEnlargedSpace:*&v45.origin, *&v45.size];
      v45.origin.x = v6;
      v45.origin.y = v7;
      v45.size.width = v8;
      v45.size.height = v9;
      [(UIPDFMagnifierController *)self convertRectToEnlargedSpace:*&v44.origin, *&v44.size];
      v44 = v46;
      MaxX = CGRectGetMaxX(v46);
      MidY = CGRectGetMidY(v44);
      [(CALayer *)self->_rightBar setBounds:0.0, 0.0, 2.0, CGRectGetHeight(v44)];
      [(CALayer *)self->_rightBar setPosition:MaxX, MidY];
      MinX = CGRectGetMinX(v45);
      v13 = CGRectGetMidY(v45);
      [(CALayer *)self->_leftBar setBounds:0.0, 0.0, 2.0, CGRectGetHeight(v45)];
      [(CALayer *)self->_leftBar setPosition:MinX, v13];
    }

    else
    {
      *&v37.m11 = v38;
      *&v37.m13 = v39;
      *&v37.m21 = v40;
      CPRotationDegreesFromTransform(&v37.m11);
      v15 = (v14 - self->_pageRotation) * 3.14159265;
      memset(&v37, 0, sizeof(v37));
      CATransform3DMakeRotation(&v37, v15 / -180.0, 0.0, 0.0, 1.0);
      v16 = CGRectGetHeight(v44) * self->_enlargementScale;
      *&v17 = CGRectGetMaxX(v44);
      v35 = v17;
      y = v44.origin.y;
      *&v17 = v44.origin.x;
      size = v44.size;
      v20 = vaddq_f64(v40, vaddq_f64(vmulq_n_f64(v38, *&v35), vmulq_n_f64(v39, CGRectGetMidY(*&v17))));
      if (self->_pageRotation)
      {
        [(UIPDFMagnifierController *)self convertPointToRotatedPage:*&v20];
        v20.f64[1] = v21;
      }

      [(UIPDFMagnifierController *)self convertPointToEnlargedSpace:*&v20, v35];
      v23 = v22;
      v25 = v24;
      [(CALayer *)self->_rightBar setBounds:0.0, 0.0, 2.0, v16];
      [(CALayer *)self->_rightBar setPosition:v23, v25];
      v36 = v37;
      [(CALayer *)self->_rightBar setTransform:&v36];
      *&v36.m11 = v41;
      *&v36.m13 = v42;
      *&v36.m21 = v43;
      CPRotationDegreesFromTransform(&v36.m11);
      CATransform3DMakeRotation(&v36, (v26 - self->_pageRotation) * 3.14159265 / -180.0, 0.0, 0.0, 1.0);
      v37 = v36;
      v27 = CGRectGetHeight(v45) * self->_enlargementScale;
      *&v28 = CGRectGetMinX(v45);
      v34 = v28;
      [(UIPDFMagnifierController *)self convertPointToEnlargedSpace:vaddq_f64(v43, vaddq_f64(vmulq_n_f64(v41, *&v28), vmulq_n_f64(v42, CGRectGetMidY(v45))))];
      v30 = v29;
      v32 = v31;
      [(CALayer *)self->_leftBar setBounds:0.0, 0.0, 2.0, v27];
      [(CALayer *)self->_leftBar setPosition:v30, v32];
      v36 = v37;
      [(CALayer *)self->_leftBar setTransform:&v36];
    }

    [(CALayer *)self->_rightBar bounds];
    Height = CGRectGetHeight(v47);
    [(CALayer *)self->_rightGrabber bounds];
    [(CALayer *)self->_rightGrabber setPosition:0.0, Height + CGRectGetHeight(v48) * 0.5];
    [(CALayer *)self->_leftGrabber bounds];
    [(CALayer *)self->_leftGrabber setPosition:0.0, CGRectGetHeight(v49) * -0.5];
  }
}

- (void)addTextRangeHandles
{
  v3 = objc_alloc_init(MEMORY[0x1E6979398]);
  self->_leftBar = v3;
  [(CALayer *)v3 setBackgroundColor:self->_grabberColor];
  [(CALayer *)self->_imageContainer addSublayer:self->_leftBar];
  v4 = objc_alloc_init(MEMORY[0x1E6979398]);
  self->_rightBar = v4;
  [(CALayer *)v4 setBackgroundColor:self->_grabberColor];
  [(CALayer *)self->_imageContainer addSublayer:self->_rightBar];
  [objc_msgSend(objc_opt_self() "mainScreen")];
  v6 = v5 * 14.0;
  v7 = objc_alloc_init(MEMORY[0x1E6979398]);
  self->_rightGrabber = v7;
  [(CALayer *)v7 setBounds:0.0, 0.0, v6, v6];
  [(CALayer *)self->_rightGrabber setDelegate:self];
  [(CALayer *)self->_rightBar addSublayer:self->_rightGrabber];
  v8 = objc_alloc_init(MEMORY[0x1E6979398]);
  self->_leftGrabber = v8;
  [(CALayer *)v8 setBounds:0.0, 0.0, v6, v6];
  [(CALayer *)self->_leftGrabber setDelegate:self];
  [(CALayer *)self->_leftBar addSublayer:self->_leftGrabber];
  [(UIPDFMagnifierController *)self setTextRangeHandlePositions];
  [(CALayer *)self->_rightGrabber setNeedsDisplay];
  leftGrabber = self->_leftGrabber;

  [(CALayer *)leftGrabber setNeedsDisplay];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  [layer bounds];
  grabberColor = self->_grabberColor;

  CPCGInsetFillEllipseInRect(context, grabberColor, v6, v7, v8, v9);
}

@end