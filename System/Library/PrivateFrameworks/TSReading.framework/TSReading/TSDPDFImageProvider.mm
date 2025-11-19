@interface TSDPDFImageProvider
- (BOOL)isValid;
- (CGPDFDocument)p_load;
- (CGSize)naturalSize;
- (int64_t)pageAngle;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4;
- (void)flush;
- (void)p_loadIfNecessary;
@end

@implementation TSDPDFImageProvider

- (void)dealloc
{
  CGPDFDocumentRelease(self->mPDFDocument);
  v3.receiver = self;
  v3.super_class = TSDPDFImageProvider;
  [(TSDImageProvider *)&v3 dealloc];
}

- (int64_t)pageAngle
{
  result = [(TSDPDFImageProvider *)self CGPDFDocument];
  if (result)
  {
    result = CGPDFDocumentGetPage(result, 1uLL);
    if (result)
    {
      return CGPDFPageGetRotationAngle(result);
    }
  }

  return result;
}

- (CGSize)naturalSize
{
  [(TSDPDFImageProvider *)self p_loadIfNecessary];
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isValid
{
  v2 = [(TSDPDFImageProvider *)self CGPDFDocument];
  if (v2)
  {
    LOBYTE(v2) = CGPDFDocumentGetPage(v2, 1uLL) != 0;
  }

  return v2;
}

- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (![(TSDPDFImageProvider *)self isValid])
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDPDFImageProvider drawImageInContext:rect:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPDFImageProvider.m"), 71, @"shouldn't be drawing an invalid image provider"}];
  }

  v12 = [(TSDPDFImageProvider *)self CGPDFDocument];
  if (v12)
  {
    Page = CGPDFDocumentGetPage(v12, 1uLL);
    if (Page)
    {
      v14 = Page;
      CGContextSaveGState(a3);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      MinY = CGRectGetMinY(v31);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      MaxY = CGRectGetMaxY(v32);
      CGContextTranslateCTM(a3, 0.0, MinY + MaxY);
      CGContextScaleCTM(a3, 1.0, -1.0);
      memset(&v30, 0, sizeof(v30));
      v28 = 0.0;
      v29 = 0.0;
      v17 = TSDComputeBoxTransformAndSizeForPDFPage(v14, &v30, &v28);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v26 = 0u;
      v27 = 0u;
      v24 = v30;
      v25 = 0u;
      TSDComputeDrawTransformForPDFPage(&v24, &v25, v28, v29, x, y, width, height);
      *&v24.a = v25;
      *&v24.c = v26;
      *&v24.tx = v27;
      CGContextConcatCTM(a3, &v24);
      v33.origin.x = v17;
      v33.origin.y = v19;
      v33.size.width = v21;
      v33.size.height = v23;
      CGContextClipToRect(a3, v33);
      CGContextDrawPDFPage(a3, v14);
      CGContextRestoreGState(a3);
    }
  }
}

- (void)flush
{
  CGPDFDocumentRelease(self->mPDFDocument);
  self->mPDFDocument = 0;
  if (self->super.mLoadState == 1)
  {
    self->super.mLoadState = 0;
  }
}

- (void)p_loadIfNecessary
{
  if (!self->mPDFDocument && self->super.mLoadState != 2)
  {
    objc_sync_enter(self);
    if (!self->mPDFDocument && self->super.mLoadState != 2)
    {
      v3 = [(TSDPDFImageProvider *)self p_load];
      __dmb(0xBu);
      self->mPDFDocument = v3;
      if (v3)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      self->super.mLoadState = v4;
    }

    objc_sync_exit(self);
  }
}

- (CGPDFDocument)p_load
{
  v3 = [-[TSDImageProvider imageData](self "imageData")];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CGPDFDocumentCreateWithProvider(v3);
  v6 = v5;
  if (v5)
  {
    Page = CGPDFDocumentGetPage(v5, 1uLL);
    if (Page)
    {
      v8 = Page;
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      v23 = CGPDFPageGetBoxRect(v8, kCGPDFCropBox);
      v13 = v23.origin.x;
      v14 = v23.origin.y;
      v15 = v23.size.width;
      v16 = v23.size.height;
      v27 = CGPDFPageGetBoxRect(v8, kCGPDFArtBox);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v28 = CGRectIntersection(v24, v27);
      v25.origin.x = v13;
      v25.origin.y = v14;
      v25.size.width = v15;
      v25.size.height = v16;
      v26 = CGRectIntersection(v25, v28);
      v17 = v26.size.width;
      v18 = v26.size.height;
      RotationAngle = CGPDFPageGetRotationAngle(v8);
      if (RotationAngle == 270 || RotationAngle == 90)
      {
        v20 = v18;
      }

      else
      {
        v20 = v17;
        v17 = v18;
      }

      self->mNaturalSize.width = v20;
      self->mNaturalSize.height = v17;
    }

    else
    {
      CGPDFDocumentRelease(v6);
      v6 = 0;
    }
  }

  CGDataProviderRelease(v4);
  return v6;
}

@end