@interface UIPDFPageImageCache
- (UIPDFPageImageCache)initWithDocument:(id)a3 cacheCount:(unint64_t)a4 lookAhead:(unint64_t)a5 withLookAheadResolution:(double)a6;
- (id)getImageIfAvailableForPage:(unint64_t)a3;
- (void)addRenderJob:(id)a3;
- (void)cacheImageOfPage:(unint64_t)a3 maxSize:(CGSize)a4;
- (void)cancelPendingRenderOperations;
- (void)cancelPendingRenderOperationsForTarget:(id)a3;
- (void)clearCache;
- (void)dealloc;
- (void)deliverImageOfPage:(unint64_t)a3 maxSize:(CGSize)a4 quality:(BOOL *)a5 receiver:(id)a6 selector:(SEL)a7 info:(id)a8;
- (void)didReceiveMemoryWarning:(id)a3;
@end

@implementation UIPDFPageImageCache

- (UIPDFPageImageCache)initWithDocument:(id)a3 cacheCount:(unint64_t)a4 lookAhead:(unint64_t)a5 withLookAheadResolution:(double)a6
{
  v16.receiver = self;
  v16.super_class = UIPDFPageImageCache;
  v10 = [(UIPDFPageImageCache *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_document = a3;
    v10->_lookAhead = a5;
    v10->_lookAheadResolution = a6;
    v10->_jobCount = a4;
    if (a4)
    {
      v12 = malloc_type_calloc(a4, 8uLL, 0x80040B8603338uLL);
    }

    else
    {
      v12 = 0;
    }

    v11->_jobsPrioritized = v12;
    v13 = [a3 numberOfPages];
    v11->_pageCount = v13;
    if (v13)
    {
      v13 = malloc_type_calloc(v13, 8uLL, 0x80040B8603338uLL);
    }

    v11->_jobsByPage = v13;
    v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v11->_renderQueue = v14;
    [(NSOperationQueue *)v14 setMaxConcurrentOperationCount:1];
    v11->_lock._os_unfair_lock_opaque = 0;
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v11;
}

- (void)clearCache
{
  jobCount = self->_jobCount;
  renderQueue = self->_renderQueue;
  if (jobCount)
  {
    [(NSOperationQueue *)renderQueue cancelAllOperations];
    v5 = self->_jobCount;
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        jobsPrioritized = self->_jobsPrioritized;
        v8 = jobsPrioritized[i];
        if (v8)
        {
          jobsByPage = self->_jobsByPage;
          jobsByPage[[jobsPrioritized[i] pageIndex]] = 0;
          [v8 cancel];

          self->_jobsPrioritized[i] = 0;
          v5 = self->_jobCount;
        }
      }
    }
  }

  else
  {
    v10 = [(NSOperationQueue *)renderQueue operations];
    v11 = [(NSArray *)v10 count];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        [objc_msgSend(-[NSArray objectAtIndex:](v10 objectAtIndex:{j), "job"), "cancel"}];
      }
    }
  }
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(UIPDFPageImageCache *)self clearCache];

  free(self->_jobsPrioritized);
  free(self->_jobsByPage);
  v3.receiver = self;
  v3.super_class = UIPDFPageImageCache;
  [(UIPDFPageImageCache *)&v3 dealloc];
}

- (void)addRenderJob:(id)a3
{
  if (self->_jobCount)
  {
    jobsPrioritized = self->_jobsPrioritized;
    nextJobIndex = self->_nextJobIndex;
    v7 = jobsPrioritized[nextJobIndex];
    if (v7)
    {
      jobsByPage = self->_jobsByPage;
      jobsByPage[[jobsPrioritized[nextJobIndex] pageIndex]] = 0;
      [v7 cancel];

      jobsPrioritized = self->_jobsPrioritized;
      nextJobIndex = self->_nextJobIndex;
    }

    jobsPrioritized[nextJobIndex] = a3;
    v9 = self->_jobsByPage;
    v9[[a3 pageIndex]] = a3;
    v10 = a3;
    v11 = self->_nextJobIndex;
    if (v11 + 1 < self->_jobCount)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 0;
    }

    self->_nextJobIndex = v12;
  }

  else
  {
    [a3 setReleaseWhenDone:1];
  }

  -[NSOperationQueue addOperation:](self->_renderQueue, "addOperation:", [a3 operation]);

  [a3 releaseOperation];
}

- (void)cacheImageOfPage:(unint64_t)a3 maxSize:(CGSize)a4
{
  if (a3)
  {
    height = a4.height;
    width = a4.width;
    if ([(UIPDFPageImageCache *)self pageCount]>= a3)
    {
      lookAheadResolution = self->_lookAheadResolution;
      os_unfair_lock_lock(&self->_lock);
      v9 = a3 - 1;
      if (!self->_jobsByPage[v9])
      {
        v10 = [(UIPDFDocument *)[(UIPDFPageImageCache *)self document] copyPageAtIndex:v9];
        v11 = [[UIPDFPageRenderJob alloc] initWithPage:v10 maxSize:0 queuePriority:width * lookAheadResolution, height * lookAheadResolution];

        [(UIPDFPageImageCache *)self addRenderJob:v11];
      }

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (void)deliverImageOfPage:(unint64_t)a3 maxSize:(CGSize)a4 quality:(BOOL *)a5 receiver:(id)a6 selector:(SEL)a7 info:(id)a8
{
  if (!a3)
  {
    return;
  }

  height = a4.height;
  width = a4.width;
  if ([(UIPDFPageImageCache *)self pageCount]< a3)
  {
    return;
  }

  v51 = [(UIPDFDocument *)[(UIPDFPageImageCache *)self document] copyPageAtIndex:a3 - 1];
  os_unfair_lock_lock(&self->_lock);
  v16 = [(UIPDFPageImageCache *)self lookAhead];
  jobCount = self->_jobCount;
  v18 = self->_jobsByPage[a3 - 1];
  v19 = v18;
  os_unfair_lock_unlock(&self->_lock);
  if (v18)
  {
    v49 = jobCount;
    if (v16)
    {
      v20 = [v18 priority] == 4;
      v21 = [v18 image] != 0;
    }

    else
    {
      [v18 size];
      v21 = 0;
      v20 = v23 == height && v22 == width;
    }

    if (!*a5 || v20 || v21)
    {
      *a5 = v20;
      [v18 sendImageTo:a6 callback:a7 userData:{a8, v49}];

      if (!v50 || !v16)
      {
        goto LABEL_48;
      }

      goto LABEL_31;
    }

    jobCount = v49;
  }

  os_unfair_lock_lock(&self->_lock);
  *a5 = 1;
  v24 = [[UIPDFPageRenderJob alloc] initWithPage:v51 maxSize:4 queuePriority:width, height];
  [(UIPDFPageRenderJob *)v24 setTarget:a6 callback:a7 userData:a8];
  if (!jobCount || !v16)
  {
    [(UIPDFPageImageCache *)self addRenderJob:v24, v49];

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_48;
  }

  v25 = self->_jobsPrioritized[self->_nextJobIndex];
  if (v25)
  {
    v26 = -1;
    do
    {
      v27 = a3 - 1 - [v25 pageIndex];
      if (v27 >= 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = -v27;
      }

      if ([(UIPDFPageImageCache *)self lookAhead]< v28)
      {
        break;
      }

      v29 = self->_jobCount;
      if (++v26 >= v29)
      {
        break;
      }

      jobsPrioritized = self->_jobsPrioritized;
      nextJobIndex = self->_nextJobIndex;
      v32 = nextJobIndex + 1 < v29 ? nextJobIndex + 1 : 0;
      self->_nextJobIndex = v32;
      v25 = jobsPrioritized[v32];
    }

    while (v25);
  }

  [(UIPDFPageImageCache *)self addRenderJob:v24, v49];

  os_unfair_lock_unlock(&self->_lock);
LABEL_31:
  [v51 cropBoxAccountForRotation];
  v35 = height * v33;
  v36 = height / v34;
  if (v34 <= 0.0)
  {
    v36 = 1.0;
  }

  if (v33 <= 0.0)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = width / v33;
  }

  if (v35 >= width * v34)
  {
    v38 = v37;
  }

  else
  {
    v38 = v36;
  }

  v39 = [(UIPDFPageImageCache *)self lookAhead];
  if (v39)
  {
    v40 = v39;
    v41 = 1;
    v42 = 1;
    do
    {
      if (v42)
      {
        v43 = v41 + a3;
        if (v41 + a3 <= [(UIPDFPageImageCache *)self pageCount])
        {
          goto LABEL_45;
        }
      }

      else
      {
        v43 = a3 - v41;
        if (a3 > v41)
        {
LABEL_45:
          if (v43)
          {
            v44 = [(UIPDFDocument *)[(UIPDFPageImageCache *)self document] copyPageAtIndex:v43 - 1];
            [v44 cropBoxAccountForRotation];
            v46 = v45;
            v48 = v47;

            [(UIPDFPageImageCache *)self cacheImageOfPage:v43 maxSize:v38 * v46, v38 * v48];
          }
        }
      }

      v42 ^= 1u;
      v41 += v42 & 1;
    }

    while (v41 <= v40);
  }

LABEL_48:
}

- (id)getImageIfAvailableForPage:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_jobsByPage[a3 - 1];
  if (v5)
  {
    v6 = [v5 image];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)cancelPendingRenderOperations
{
  os_unfair_lock_lock(&self->_lock);
  [(NSOperationQueue *)self->_renderQueue cancelAllOperations];
  jobCount = self->_jobCount;
  if (jobCount)
  {
    for (i = 0; i < jobCount; ++i)
    {
      v5 = self->_jobsPrioritized[i];
      if (v5)
      {
        [v5 cancelOperation];
        jobCount = self->_jobCount;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cancelPendingRenderOperationsForTarget:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  jobCount = self->_jobCount;
  if (jobCount)
  {
    for (i = 0; i < jobCount; ++i)
    {
      v7 = self->_jobsPrioritized[i];
      if (v7)
      {
        [v7 cancelOperationForTarget:a3];
        jobCount = self->_jobCount;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)didReceiveMemoryWarning:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(UIPDFPageImageCache *)self clearCache];

  os_unfair_lock_unlock(&self->_lock);
}

@end