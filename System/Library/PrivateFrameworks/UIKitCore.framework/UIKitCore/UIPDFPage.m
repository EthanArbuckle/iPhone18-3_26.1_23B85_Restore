@interface UIPDFPage
- (CGRect)cropBoxAccountForRotation;
- (CGRect)mediaBoxAccountForRotation;
- (CGSize)size;
- (UIPDFPage)initWithCGPDFPage:(CGPDFPage *)a3;
- (UIPDFPage)initWithDocument:(id)a3 pageNumber:(unint64_t)a4;
- (id)annotationIn:(id)a3 withIndex:(unint64_t)a4;
- (id)annotations;
- (id)copyPage;
- (id)findString:(id)a3 fromSelection:(id)a4 options:(unint64_t)a5;
- (id)getImageIfAvailable;
- (id)string;
- (unint64_t)rotation;
- (void)addAnnotation:(id)a3;
- (void)clearAnnotations;
- (void)dealloc;
- (void)drawInRect:(CGRect)a3 context:(CGContext *)a4;
- (void)refresh;
- (void)removeAllAnnotations;
- (void)removeAnnotation:(id)a3;
@end

@implementation UIPDFPage

- (UIPDFPage)initWithCGPDFPage:(CGPDFPage *)a3
{
  v8.receiver = self;
  v8.super_class = UIPDFPage;
  v4 = [(UIPDFPage *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_cgPage = a3;
    CGPDFPageRetain(a3);
    PageNumber = CGPDFPageGetPageNumber(a3);
    v5->_pageNumber = PageNumber;
    v5->_pageIndex = PageNumber - 1;
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (UIPDFPage)initWithDocument:(id)a3 pageNumber:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = UIPDFPage;
  v5 = [(UIPDFPage *)&v7 init];
  if (v5)
  {
    [a3 CGDocument];
    v5->_cgPage = CGPDFDocumentCopyPage();
    v5->_pageIndex = v5->_pageNumber - 1;
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)dealloc
{
  [(UIPDFPage *)self setSelection:0];
  [(UIPDFPage *)self setPageImage:0];
  CGPDFPageRemoveLayout();
  CGPDFPageRelease(self->_cgPage);
  v3.receiver = self;
  v3.super_class = UIPDFPage;
  [(UIPDFPage *)&v3 dealloc];
}

- (void)drawInRect:(CGRect)a3 context:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGContextSaveGState(a4);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  CGContextClipToRect(a4, v41);
  CGContextSetFillColorWithColor(a4, [+[UIColor CGColor] whiteColor];
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  CGContextFillRect(a4, v42);
  cgPage = self->_cgPage;
  memset(&v36, 0, 32);
  memset(&transform, 0, sizeof(transform));
  BoxRect = CGPDFPageGetBoxRect(cgPage, kCGPDFCropBox);
  v11 = BoxRect.origin.x;
  v12 = BoxRect.origin.y;
  v13 = BoxRect.size.width;
  v14 = BoxRect.size.height;
  v55 = CGPDFPageGetBoxRect(cgPage, kCGPDFMediaBox);
  v44.origin.x = v11;
  v44.origin.y = v12;
  v44.size.width = v13;
  v44.size.height = v14;
  v45 = CGRectIntersection(v44, v55);
  v15 = v45.origin.x;
  v16 = v45.origin.y;
  v17 = v45.size.width;
  v18 = v45.size.height;
  MinX = CGRectGetMinX(v45);
  v46.origin.x = v15;
  v46.origin.y = v16;
  v46.size.width = v17;
  v46.size.height = v18;
  MinY = CGRectGetMinY(v46);
  v47.origin.x = v15;
  v47.origin.y = v16;
  v47.size.width = v17;
  v47.size.height = v18;
  MaxX = CGRectGetMaxX(v47);
  v48.origin.x = v15;
  v48.origin.y = v16;
  v48.size.width = v17;
  v48.size.height = v18;
  MaxY = CGRectGetMaxY(v48);
  v49.origin.x = v15;
  v49.origin.y = v16;
  v49.size.width = v17;
  v49.size.height = v18;
  tx = CGRectGetWidth(v49);
  v50.origin.x = v15;
  v50.origin.y = v16;
  v50.size.width = v17;
  v50.size.height = v18;
  v19 = CGRectGetHeight(v50);
  v20 = CGPDFPageGetRotationAngle(cgPage) % 360;
  v21 = v20 + (v20 < 0 ? 0x168 : 0);
  if (v21 > 179)
  {
    if (v21 != 180)
    {
      if (v21 == 270)
      {
        v24 = -MinX;
        *&v36.a = xmmword_18A64B720;
        *&v36.c = xmmword_18A681780;
        v22 = MaxY;
        v23 = v19;
        v19 = tx;
        goto LABEL_11;
      }

LABEL_12:
      abort();
    }

    v36.a = -1.0;
    v36.b = 0.0;
    v36.c = 0.0;
    v36.d = -1.0;
    v22 = MaxX;
    v24 = MaxY;
LABEL_10:
    v23 = tx;
    goto LABEL_11;
  }

  if (!v21)
  {
    v22 = -MinX;
    v24 = -MinY;
    v36.a = 1.0;
    v36.b = 0.0;
    v36.c = 0.0;
    v36.d = 1.0;
    goto LABEL_10;
  }

  if (v21 != 90)
  {
    goto LABEL_12;
  }

  v22 = -MinY;
  *&v36.a = xmmword_18A67CAC0;
  *&v36.c = xmmword_18A64B730;
  v23 = v19;
  v24 = MaxX;
  v19 = tx;
LABEL_11:
  v36.tx = v22;
  v36.ty = v24;
  CGAffineTransformMakeTranslation(&transform, v23 * -0.5, v19 * -0.5);
  t1 = v36;
  t2 = transform;
  CGAffineTransformConcat(&v36, &t1, &t2);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  txa = CGRectGetMinX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v25 = CGRectGetMinY(v52);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v26 = CGRectGetWidth(v53);
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v27 = CGRectGetHeight(v54);
  v28 = fmin(v26 / v23, v27 / v19);
  CGAffineTransformMakeScale(&t1, v28, v28);
  transform = t1;
  t2 = v36;
  v37 = t1;
  CGAffineTransformConcat(&t1, &t2, &v37);
  v36 = t1;
  CGAffineTransformMakeTranslation(&t1, v26 * 0.5, v27 * 0.5);
  transform = t1;
  t2 = v36;
  v37 = t1;
  CGAffineTransformConcat(&t1, &t2, &v37);
  v36 = t1;
  CGAffineTransformMakeTranslation(&t1, txa, v25);
  transform = t1;
  t2 = v36;
  v37 = t1;
  CGAffineTransformConcat(&t1, &t2, &v37);
  v36 = t1;
  transform = t1;
  CGContextConcatCTM(a4, &transform);
  v29 = self;
  CGContextDrawPDFPage(a4, [(UIPDFPage *)self CGPage]);

  CGContextRestoreGState(a4);
}

- (id)getImageIfAvailable
{
  v3 = [(UIPDFPage *)self pageImage];
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    return v4;
  }

  else
  {
    v7 = [(UIPDFDocument *)[(UIPDFPage *)self document] pageImageCache];
    v8 = [(UIPDFPage *)self pageNumber];

    return [(UIPDFPageImageCache *)v7 getImageIfAvailableForPage:v8];
  }
}

- (CGSize)size
{
  BoxRect = CGPDFPageGetBoxRect(self->_cgPage, kCGPDFCropBox);
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)cropBoxAccountForRotation
{
  BoxRectWithRotation = CGPDFPageGetBoxRectWithRotation(self->_cgPage, kCGPDFCropBox);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = BoxRectWithRotation;
  return result;
}

- (CGRect)mediaBoxAccountForRotation
{
  BoxRectWithRotation = CGPDFPageGetBoxRectWithRotation(self->_cgPage, kCGPDFMediaBox);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = BoxRectWithRotation;
  return result;
}

- (unint64_t)rotation
{
  v2 = CGPDFPageGetRotationAngle(self->_cgPage) % 360;
  if (v2 >= 0)
  {
    return v2;
  }

  else
  {
    return (v2 + 360);
  }
}

- (id)string
{
  result = self->_stringInReadingOrder;
  if (!result)
  {
    CGPDFPageGetLayout();
    result = CGPDFLayoutCreateString();
    self->_stringInReadingOrder = result;
  }

  return result;
}

- (id)findString:(id)a3 fromSelection:(id)a4 options:(unint64_t)a5
{
  result = [(UIPDFPage *)self string];
  if (!result)
  {
    return result;
  }

  v10 = result;
  if ((a5 & 4) == 0)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_11;
    }

LABEL_6:
    v12 = [a4 stringRange];
    if ((a5 & 4) != 0)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13;
    }

    v15 = v14 + v12;
    if (v12 != -1)
    {
      v11 = v15;
    }

    goto LABEL_11;
  }

  v11 = CFStringGetLength(result) - 1;
  if (a4)
  {
    goto LABEL_6;
  }

LABEL_11:
  if ((a5 & 4) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v11;
    v11 = CFStringGetLength(v10) - v11;
  }

  v17 = [(UIPDFPage *)self cfCompareFlagsFromNSOptions:a5, 0, 0];
  v20.location = v16;
  v20.length = v11;
  if (!CFStringFindWithOptions(v10, a3, v20, v17, &v19))
  {
    return 0;
  }

  v18 = [[UIPDFSelection alloc] initWithPage:self cgSelection:CGPDFSelectionCreateForStringRange()];
  [(UIPDFSelection *)v18 setStringRange:v19.location, v19.length];
  CGPDFSelectionRelease();
  return v18;
}

- (id)copyPage
{
  os_unfair_lock_lock(&self->_lock);
  document = self->_document;
  if (document && self->_cgPage)
  {
    [(UIPDFDocument *)document CGDocument];
    v4 = CGPDFDocumentCopyPage();
    if (CGPDFPageGetProperty())
    {
      CGPDFPageSetProperty();
    }

    v5 = [[UIPDFPage alloc] initWithCGPDFPage:v4];
    CGPDFPageRelease(v4);
    [(UIPDFPage *)v5 setDocument:self->_document];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)refresh
{
  if (self->_cgPage)
  {
    os_unfair_lock_lock(&self->_lock);
    CGPDFPageRemoveProperty();
    os_unfair_lock_unlock(&self->_lock);
  }

  [(UIPDFPage *)self clearAnnotations];
}

- (id)annotationIn:(id)a3 withIndex:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(a3);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v10 index] == a4)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)annotations
{
  result = self->_annotations;
  if (!result)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    Dictionary = CGPDFPageGetDictionary(self->_cgPage);
    if (Dictionary && (value = 0, CGPDFDictionaryGetArray(Dictionary, "Annots", &value)))
    {
      Count = CGPDFArrayGetCount(value);
      if (Count)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          dict = 0;
          if (CGPDFArrayGetDictionary(value, i, &dict))
          {
            v23 = 0;
            if (CGPDFDictionaryGetName(dict, "Subtype", &v23))
            {
              v9 = [UIPDFAnnotationController newAnnotation:dict type:v23];
              if (v9)
              {
                v10 = v9;
                [v9 setIndex:i];
                [v10 setEditable:0];
                [v10 setPage:self];
                [v4 addObject:v10];
              }
            }
          }
        }

        for (j = 0; j != v7; ++j)
        {
          v23 = 0;
          if (CGPDFArrayGetDictionary(value, j, &v23))
          {
            __s2 = 0;
            if (CGPDFDictionaryGetName(v23, "Subtype", &__s2) && !strcmp("Popup", __s2))
            {
              v21 = 0;
              if (CGPDFDictionaryGetDictionary(v23, "Parent", &v21))
              {
                v12 = value;
                v13 = v21;
                v14 = CGPDFArrayGetCount(value);
                if (v14)
                {
                  v15 = v14;
                  v16 = 0;
                  while (1)
                  {
                    dict = 0;
                    if (CGPDFArrayGetDictionary(v12, v16, &dict) && dict == v13)
                    {
                      break;
                    }

                    if (v15 == ++v16)
                    {
                      goto LABEL_28;
                    }
                  }

                  if ((v16 & 0x8000000000000000) == 0)
                  {
                    v17 = [(UIPDFPage *)self annotationIn:v4 withIndex:v16];
                    v18 = [(UIPDFPage *)self annotationIn:v4 withIndex:j];
                    if (v17)
                    {
                      v19 = v18;
                      if (v18)
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [v17 setPopup:v19];
                            [v19 setParent:v17];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_28:
          ;
        }
      }

      v20 = 0;
      atomic_compare_exchange_strong(&self->_annotations, &v20, v4);
      if (v20)
      {
      }

      return self->_annotations;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

- (void)clearAnnotations
{
  os_unfair_lock_lock(&self->_lock);

  self->_annotations = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllAnnotations
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_annotations removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addAnnotation:(id)a3
{
  if (self->_annotations)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_annotations addObject:a3];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    [v6 addObject:a3];
    v5 = 0;
    atomic_compare_exchange_strong(&self->_annotations, &v5, v6);
    if (v5)
    {
    }
  }
}

- (void)removeAnnotation:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [a3 popup];
  if (v5)
  {
    v6 = v5;
    [v5 setParent:0];
    [(NSMutableArray *)self->_annotations removeObject:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a3 parent];
    if (v7)
    {
      [v7 setPopup:0];
    }
  }

  if ([a3 annotationView])
  {
    [objc_msgSend(a3 "annotationView")];
  }

  [(NSMutableArray *)self->_annotations removeObject:a3];

  os_unfair_lock_unlock(&self->_lock);
}

@end