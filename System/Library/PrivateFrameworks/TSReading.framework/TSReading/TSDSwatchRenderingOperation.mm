@interface TSDSwatchRenderingOperation
- (CGImage)p_newSwatchPressedStateBackgroundFromCGImage:(CGImage *)image;
- (CGRect)swatchFrame;
- (CGSize)imageSize;
- (TSDSwatchRenderingOperation)initWithPreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame documentRoot:(id)root;
- (UIEdgeInsets)swatchEdgeInsets;
- (void)dealloc;
- (void)deliverCGImage:(CGImage *)image;
- (void)doWorkWithReadLock;
- (void)main;
- (void)p_animateSwatchIn;
- (void)p_deliverResultOnMainThread:(id)thread;
@end

@implementation TSDSwatchRenderingOperation

- (TSDSwatchRenderingOperation)initWithPreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame documentRoot:(id)root
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13 = size.height;
  v14 = size.width;
  v18.receiver = self;
  v18.super_class = TSDSwatchRenderingOperation;
  v16 = [(TSDSwatchRenderingOperation *)&v18 init];
  if (v16)
  {
    v16->mPreset = preset;
    v16->mImageSize.width = v14;
    v16->mImageSize.height = v13;
    v16->mImageScale = scale;
    v16->mSwatchFrame.origin.x = x;
    v16->mSwatchFrame.origin.y = y;
    v16->mSwatchFrame.size.width = width;
    v16->mSwatchFrame.size.height = height;
    v16->mDocumentRoot = root;
  }

  return v16;
}

- (void)dealloc
{
  CGImageRelease(self->mDeliveredImage);

  v3.receiver = self;
  v3.super_class = TSDSwatchRenderingOperation;
  [(TSDSwatchRenderingOperation *)&v3 dealloc];
}

- (void)p_animateSwatchIn
{
  if (self->mView)
  {
    if (([(TSDSwatchRenderingOperation *)self isCancelled]& 1) == 0)
    {
      layer = [(UIView *)self->mView layer];
      if (![(CALayer *)layer valueForKey:TSDSwatchRenderingOperationLayerKey]|| [(CALayer *)layer valueForKey:TSDSwatchRenderingOperationLayerKey]== self)
      {
        [(CALayer *)layer addRotateInAnimationWithDuration:0.3 delay:0.0];
        [(CALayer *)layer setValue:0 forKey:TSDSwatchRenderingOperationLayerKey];
      }
    }

    mView = self->mView;

    [(UIView *)mView setHidden:0];
  }
}

- (CGImage)p_newSwatchPressedStateBackgroundFromCGImage:(CGImage *)image
{
  Width = CGImageGetWidth(image);
  CGImageGetHeight(image);
  v6 = TSDRectWithSize();
  v10 = TSDMultiplyRectScalar(v6, v7, v8, v9, self->mImageScale);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = TSDBitmapContextCreate(3, Width);
  CGContextSetFillColorWithColor(v17, [objc_msgSend(MEMORY[0x277D6C2A8] colorWithWhite:0.1 alpha:{0.3), "CGColor"}]);
  [(TSDSwatchRenderingOperation *)self swatchEdgeInsets];
  v19 = v12 + v18;
  v22 = v14 - (v20 + v21);
  v26.size.height = v16 - (v18 + v23);
  v26.origin.x = v10 + v20;
  v26.origin.y = v19;
  v26.size.width = v22;
  CGContextFillRect(v17, v26);
  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  return Image;
}

- (void)p_deliverResultOnMainThread:(id)thread
{
  if (!self->mView)
  {
    return;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  layer = [(UIView *)self->mView layer];
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    v7 = v6;
    [v6 setImage:objc_msgSend(MEMORY[0x277D755B8] forState:{"imageWithCGImage:scale:orientation:", objc_msgSend(thread, "foreground"), 0, self->mImageScale), 0}];
    if ([(TSDSwatchRenderingOperation *)self needsPressedStateBackground])
    {
      v8 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(thread scale:"background") orientation:{0, self->mImageScale}];
      v9 = v7;
LABEL_9:
      [v9 setBackgroundImage:v8 forState:1];
      goto LABEL_10;
    }

    if ([v7 backgroundImageForState:1])
    {
      v9 = v7;
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    [(CALayer *)layer setContentsScale:self->mImageScale];
    -[CALayer setContents:](layer, "setContents:", [thread foreground]);
  }

LABEL_10:
  [(CALayer *)layer setShouldRasterize:1];
  [(CALayer *)layer setRasterizationScale:self->mImageScale];
  [MEMORY[0x277CD9FF0] flush];
  [MEMORY[0x277CD9FF0] commit];

  [(TSDSwatchRenderingOperation *)self p_animateSwatchIn];
}

- (void)deliverCGImage:(CGImage *)image
{
  if ([(TSDSwatchRenderingOperation *)self needsPressedStateBackground])
  {
    v5 = [(TSDSwatchRenderingOperation *)self p_newSwatchPressedStateBackgroundFromCGImage:image];
    v6 = [TSDSwatchRenderingResult renderingResultWithForeground:image background:v5];
    if (v5)
    {
      CGImageRelease(v5);
    }
  }

  else
  {
    v6 = [TSDSwatchRenderingResult renderingResultWithForeground:image background:0];
  }

  self->mDeliveredImage = CGImageRetain(image);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {

    [(TSDSwatchRenderingOperation *)self p_deliverResultOnMainThread:v6];
  }

  else
  {

    [(TSDSwatchRenderingOperation *)self performSelectorOnMainThread:sel_p_deliverResultOnMainThread_ withObject:v6 waitUntilDone:0];
  }
}

- (UIEdgeInsets)swatchEdgeInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)doWorkWithReadLock
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSwatchRenderingOperation doWorkWithReadLock]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSwatchRenderingOperation.m"];

  [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:271 description:@"Subclasses must override"];
}

- (void)main
{
  accessController = [(TSKDocumentRoot *)self->mDocumentRoot accessController];

  [(TSKAccessController *)accessController performRead:sel_doWorkWithReadLock withTarget:self argument:0];
}

- (CGSize)imageSize
{
  objc_copyStruct(v4, &self->mImageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)swatchFrame
{
  objc_copyStruct(v6, &self->mSwatchFrame, 32, 1, 0);
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

@end