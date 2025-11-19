@interface UIPDFDocument
+ (id)documentNamed:(id)a3;
- (BOOL)allowsCopying;
- (CGPDFDocument)copyCGPDFDocument;
- (NSString)documentID;
- (UIPDFDocument)initWithCGPDFDocument:(CGPDFDocument *)a3;
- (UIPDFDocument)initWithCGPDFDocumentLimitedMemory:(CGPDFDocument *)a3;
- (UIPDFDocument)initWithURL:(id)a3;
- (UIPDFPageImageCache)pageImageCache;
- (UIPDFPageImageCache)thumbnailCache;
- (double)maxHeight;
- (double)maxWidth;
- (double)sumHeight;
- (double)sumWidth;
- (id)copyPageAtIndex:(unint64_t)a3;
- (id)pageAtIndex:(unint64_t)a3;
- (unint64_t)numberOfPages;
- (void)dealloc;
- (void)setImageCacheCount:(unint64_t)a3 lookAhead:(unint64_t)a4 withResolution:(double)a5;
- (void)setPageImageCache:(id)a3;
- (void)setThumbnailCache:(id)a3;
- (void)updateWidthHeightCache;
@end

@implementation UIPDFDocument

+ (id)documentNamed:(id)a3
{
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  if (!v4)
  {
    return 0;
  }

  v5 = [v4 URLForResource:objc_msgSend(a3 withExtension:{"stringByDeletingPathExtension"), @"pdf"}];
  if (!v5)
  {
    return 0;
  }

  v6 = [[UIPDFDocument alloc] initWithURL:v5];

  return v6;
}

- (CGPDFDocument)copyCGPDFDocument
{
  os_unfair_lock_lock(&self->_lock);
  v3 = CGPDFDocumentRetain(self->_cgDocument);
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (UIPDFDocument)initWithCGPDFDocument:(CGPDFDocument *)a3
{
  v13.receiver = self;
  v13.super_class = UIPDFDocument;
  v4 = [(UIPDFDocument *)&v13 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_lock._os_unfair_lock_opaque = 0;
    v4->_thumbnailLock._os_unfair_lock_opaque = 0;
    v6 = CGPDFDocumentRetain(a3);
    v5->_cgDocument = v6;
    v5->_numberOfPages = CGPDFDocumentGetNumberOfPages(v6);
    __asm { FMOV            V0.2D, #-1.0 }

    *&v5->_cachedWidth = _Q0;
    [(UIPDFDocument *)v5 setImageCacheCount:10 lookAhead:2 withResolution:0.5];
  }

  return v5;
}

- (UIPDFDocument)initWithCGPDFDocumentLimitedMemory:(CGPDFDocument *)a3
{
  v13.receiver = self;
  v13.super_class = UIPDFDocument;
  v4 = [(UIPDFDocument *)&v13 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_lock._os_unfair_lock_opaque = 0;
    v4->_thumbnailLock._os_unfair_lock_opaque = 0;
    v6 = CGPDFDocumentRetain(a3);
    v5->_cgDocument = v6;
    v5->_numberOfPages = CGPDFDocumentGetNumberOfPages(v6);
    __asm { FMOV            V0.2D, #-1.0 }

    *&v5->_cachedWidth = _Q0;
    [(UIPDFDocument *)v5 setImageCacheCount:1 lookAhead:0 withResolution:0.25];
  }

  return v5;
}

- (UIPDFDocument)initWithURL:(id)a3
{
  v12.receiver = self;
  v12.super_class = UIPDFDocument;
  v4 = [(UIPDFDocument *)&v12 init];
  if (v4)
  {
    v5 = CGPDFDocumentCreateWithURL(a3);
    *(v4 + 1) = v5;
    if (v5)
    {
      *(v4 + 11) = 0;
      *(v4 + 26) = 0;
      *(v4 + 6) = [a3 lastPathComponent];
      *(v4 + 2) = CGPDFDocumentGetNumberOfPages(*(v4 + 1));
      __asm { FMOV            V0.2D, #-1.0 }

      *(v4 + 24) = _Q0;
      [v4 setImageCacheCount:10 lookAhead:2 withResolution:0.5];
    }
  }

  return v4;
}

- (void)dealloc
{
  thumbnailCache = self->_thumbnailCache;
  if (thumbnailCache)
  {

    self->_thumbnailCache = 0;
  }

  pageImageCache = self->_pageImageCache;
  if (pageImageCache)
  {

    self->_pageImageCache = 0;
  }

  CGPDFDocumentRelease(self->_cgDocument);

  +[UIPDFViewTouchHandler releaseViewManager];
  v5.receiver = self;
  v5.super_class = UIPDFDocument;
  [(UIPDFDocument *)&v5 dealloc];
}

- (void)setImageCacheCount:(unint64_t)a3 lookAhead:(unint64_t)a4 withResolution:(double)a5
{
  os_unfair_lock_lock(&self->_lock);
  self->_imageCacheCount = a3;
  self->_imageCacheLookAhead = a4;
  self->_imageCacheResolution = a5;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)numberOfPages
{
  os_unfair_lock_lock(&self->_lock);
  numberOfPages = self->_numberOfPages;
  os_unfair_lock_unlock(&self->_lock);
  return numberOfPages;
}

- (id)pageAtIndex:(unint64_t)a3
{
  v3 = [(UIPDFDocument *)self copyPageAtIndex:a3];

  return v3;
}

- (id)copyPageAtIndex:(unint64_t)a3
{
  if (self->_numberOfPages <= a3)
  {
    return 0;
  }

  v4 = CGPDFDocumentCopyPage();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [[UIPDFPage alloc] initWithCGPDFPage:v4];
  CGPDFPageRelease(v5);
  if (v6)
  {
    [(UIPDFPage *)v6 setDocument:self];
  }

  return v6;
}

- (NSString)documentID
{
  result = self->_documentID;
  if (!result)
  {
    result = self->_cgDocument;
    if (result)
    {
      result = CGPDFDocumentGetID(result);
      if (result)
      {
        v4 = result;
        if (CGPDFArrayGetCount(result))
        {
          value = 0;
          if (CGPDFArrayGetString(v4, 0, &value))
          {
            v5 = CGPDFStringCopyTextString(value);
            if (v5)
            {
              v6 = v5;
              v7 = [(__CFString *)v5 length];
              v8 = malloc_type_malloc((4 * v7) | 1, 0x100004077774924uLL);
              v9 = v8;
              if (v7)
              {
                v10 = 0;
                v11 = 0;
                v12 = v8;
                do
                {
                  v13 = [(__CFString *)v6 characterAtIndex:v11];
                  *v12 = a0123456789abcd[v13 >> 12];
                  v12[1] = a0123456789abcd[(v13 >> 8) & 0xF];
                  v12[2] = a0123456789abcd[v13 >> 4];
                  v12[3] = a0123456789abcd[v13 & 0xF];
                  ++v11;
                  v10 -= 4;
                  v12 += 4;
                }

                while (v7 != v11);
                v14 = -v10;
              }

              else
              {
                v14 = 0;
              }

              v9[v14] = 0;
              v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v9 encoding:1];
              free(v9);
              self->_documentID = v15;
              CFRelease(v6);
            }
          }
        }

        return self->_documentID;
      }
    }
  }

  return result;
}

- (BOOL)allowsCopying
{
  cgDocument = self->_cgDocument;
  if (cgDocument)
  {
    LOBYTE(cgDocument) = CGPDFDocumentAllowsCopying(cgDocument);
  }

  return cgDocument;
}

- (void)updateWidthHeightCache
{
  numberOfPages = self->_numberOfPages;
  if (numberOfPages)
  {
    for (i = 1; i <= numberOfPages; ++i)
    {
      v5 = CGPDFDocumentCopyPage();
      if (v5)
      {
        v6 = v5;
        BoxRect = CGPDFPageGetBoxRect(v5, kCGPDFCropBox);
        if (BoxRect.size.width > self->_cachedWidth)
        {
          self->_cachedWidth = BoxRect.size.width;
        }

        if (BoxRect.size.height > self->_cachedHeight)
        {
          self->_cachedHeight = BoxRect.size.height;
        }

        CGPDFPageRelease(v6);
      }
    }
  }
}

- (double)maxWidth
{
  result = self->_cachedWidth;
  if (result < 0.0)
  {
    [(UIPDFDocument *)self updateWidthHeightCache];
    return self->_cachedWidth;
  }

  return result;
}

- (double)maxHeight
{
  result = self->_cachedHeight;
  if (result < 0.0)
  {
    [(UIPDFDocument *)self updateWidthHeightCache];
    return self->_cachedHeight;
  }

  return result;
}

- (double)sumWidth
{
  numberOfPages = self->_numberOfPages;
  if (!numberOfPages)
  {
    return 0.0;
  }

  v3 = 0.0;
  for (i = 1; i <= numberOfPages; ++i)
  {
    v5 = CGPDFDocumentCopyPage();
    if (v5)
    {
      v6 = v5;
      BoxRect = CGPDFPageGetBoxRect(v5, kCGPDFCropBox);
      v3 = v3 + BoxRect.size.width;
      CGPDFPageRelease(v6);
    }
  }

  return v3;
}

- (double)sumHeight
{
  numberOfPages = self->_numberOfPages;
  if (!numberOfPages)
  {
    return 0.0;
  }

  v3 = 0.0;
  for (i = 1; i <= numberOfPages; ++i)
  {
    v5 = CGPDFDocumentCopyPage();
    if (v5)
    {
      v6 = v5;
      BoxRect = CGPDFPageGetBoxRect(v5, kCGPDFCropBox);
      v3 = v3 + BoxRect.size.height;
      CGPDFPageRelease(v6);
    }
  }

  return v3;
}

- (UIPDFPageImageCache)pageImageCache
{
  os_unfair_lock_lock(&self->_imageCacheLock);
  pageImageCache = self->_pageImageCache;
  if (!pageImageCache)
  {
    pageImageCache = [[UIPDFPageImageCache alloc] initWithDocument:self cacheCount:self->_imageCacheCount lookAhead:self->_imageCacheLookAhead withLookAheadResolution:self->_imageCacheResolution];
    self->_pageImageCache = pageImageCache;
  }

  os_unfair_lock_unlock(&self->_imageCacheLock);
  return pageImageCache;
}

- (void)setPageImageCache:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  os_unfair_lock_lock(&self->_imageCacheLock);
  pageImageCache = self->_pageImageCache;
  if (pageImageCache)
  {
  }

  self->_pageImageCache = a3;

  os_unfair_lock_unlock(&self->_imageCacheLock);
}

- (UIPDFPageImageCache)thumbnailCache
{
  os_unfair_lock_lock(&self->_thumbnailLock);
  thumbnailCache = self->_thumbnailCache;
  if (!thumbnailCache)
  {
    thumbnailCache = [[UIPDFPageImageCache alloc] initWithDocument:self cacheCount:1 lookAhead:0 withLookAheadResolution:self->_imageCacheResolution];
    self->_thumbnailCache = thumbnailCache;
  }

  os_unfair_lock_unlock(&self->_thumbnailLock);
  return thumbnailCache;
}

- (void)setThumbnailCache:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  os_unfair_lock_lock(&self->_thumbnailLock);
  thumbnailCache = self->_thumbnailCache;
  if (thumbnailCache)
  {
  }

  self->_thumbnailCache = a3;

  os_unfair_lock_unlock(&self->_thumbnailLock);
}

@end