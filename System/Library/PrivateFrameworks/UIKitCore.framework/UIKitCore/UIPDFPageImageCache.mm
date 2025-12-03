@interface UIPDFPageImageCache
- (UIPDFPageImageCache)initWithDocument:(id)document cacheCount:(unint64_t)count lookAhead:(unint64_t)ahead withLookAheadResolution:(double)resolution;
- (id)getImageIfAvailableForPage:(unint64_t)page;
- (void)addRenderJob:(id)job;
- (void)cacheImageOfPage:(unint64_t)page maxSize:(CGSize)size;
- (void)cancelPendingRenderOperations;
- (void)cancelPendingRenderOperationsForTarget:(id)target;
- (void)clearCache;
- (void)dealloc;
- (void)deliverImageOfPage:(unint64_t)page maxSize:(CGSize)size quality:(BOOL *)quality receiver:(id)receiver selector:(SEL)selector info:(id)info;
- (void)didReceiveMemoryWarning:(id)warning;
@end

@implementation UIPDFPageImageCache

- (UIPDFPageImageCache)initWithDocument:(id)document cacheCount:(unint64_t)count lookAhead:(unint64_t)ahead withLookAheadResolution:(double)resolution
{
  v16.receiver = self;
  v16.super_class = UIPDFPageImageCache;
  v10 = [(UIPDFPageImageCache *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_document = document;
    v10->_lookAhead = ahead;
    v10->_lookAheadResolution = resolution;
    v10->_jobCount = count;
    if (count)
    {
      v12 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
    }

    else
    {
      v12 = 0;
    }

    v11->_jobsPrioritized = v12;
    numberOfPages = [document numberOfPages];
    v11->_pageCount = numberOfPages;
    if (numberOfPages)
    {
      numberOfPages = malloc_type_calloc(numberOfPages, 8uLL, 0x80040B8603338uLL);
    }

    v11->_jobsByPage = numberOfPages;
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
    operations = [(NSOperationQueue *)renderQueue operations];
    v11 = [(NSArray *)operations count];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        [objc_msgSend(-[NSArray objectAtIndex:](operations objectAtIndex:{j), "job"), "cancel"}];
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

- (void)addRenderJob:(id)job
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

    jobsPrioritized[nextJobIndex] = job;
    v9 = self->_jobsByPage;
    v9[[job pageIndex]] = job;
    jobCopy = job;
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
    [job setReleaseWhenDone:1];
  }

  -[NSOperationQueue addOperation:](self->_renderQueue, "addOperation:", [job operation]);

  [job releaseOperation];
}

- (void)cacheImageOfPage:(unint64_t)page maxSize:(CGSize)size
{
  if (page)
  {
    height = size.height;
    width = size.width;
    if ([(UIPDFPageImageCache *)self pageCount]>= page)
    {
      lookAheadResolution = self->_lookAheadResolution;
      os_unfair_lock_lock(&self->_lock);
      v9 = page - 1;
      if (!self->_jobsByPage[v9])
      {
        v10 = [(UIPDFDocument *)[(UIPDFPageImageCache *)self document] copyPageAtIndex:v9];
        lookAheadResolution = [[UIPDFPageRenderJob alloc] initWithPage:v10 maxSize:0 queuePriority:width * lookAheadResolution, height * lookAheadResolution];

        [(UIPDFPageImageCache *)self addRenderJob:lookAheadResolution];
      }

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (void)deliverImageOfPage:(unint64_t)page maxSize:(CGSize)size quality:(BOOL *)quality receiver:(id)receiver selector:(SEL)selector info:(id)info
{
  if (!page)
  {
    return;
  }

  height = size.height;
  width = size.width;
  if ([(UIPDFPageImageCache *)self pageCount]< page)
  {
    return;
  }

  v51 = [(UIPDFDocument *)[(UIPDFPageImageCache *)self document] copyPageAtIndex:page - 1];
  os_unfair_lock_lock(&self->_lock);
  lookAhead = [(UIPDFPageImageCache *)self lookAhead];
  jobCount = self->_jobCount;
  v18 = self->_jobsByPage[page - 1];
  v19 = v18;
  os_unfair_lock_unlock(&self->_lock);
  if (v18)
  {
    v49 = jobCount;
    if (lookAhead)
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

    if (!*quality || v20 || v21)
    {
      *quality = v20;
      [v18 sendImageTo:receiver callback:selector userData:{info, v49}];

      if (!v50 || !lookAhead)
      {
        goto LABEL_48;
      }

      goto LABEL_31;
    }

    jobCount = v49;
  }

  os_unfair_lock_lock(&self->_lock);
  *quality = 1;
  height = [[UIPDFPageRenderJob alloc] initWithPage:v51 maxSize:4 queuePriority:width, height];
  [(UIPDFPageRenderJob *)height setTarget:receiver callback:selector userData:info];
  if (!jobCount || !lookAhead)
  {
    [(UIPDFPageImageCache *)self addRenderJob:height, v49];

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_48;
  }

  v25 = self->_jobsPrioritized[self->_nextJobIndex];
  if (v25)
  {
    v26 = -1;
    do
    {
      v27 = page - 1 - [v25 pageIndex];
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

  [(UIPDFPageImageCache *)self addRenderJob:height, v49];

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

  lookAhead2 = [(UIPDFPageImageCache *)self lookAhead];
  if (lookAhead2)
  {
    v40 = lookAhead2;
    v41 = 1;
    v42 = 1;
    do
    {
      if (v42)
      {
        v43 = v41 + page;
        if (v41 + page <= [(UIPDFPageImageCache *)self pageCount])
        {
          goto LABEL_45;
        }
      }

      else
      {
        v43 = page - v41;
        if (page > v41)
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

- (id)getImageIfAvailableForPage:(unint64_t)page
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_jobsByPage[page - 1];
  if (v5)
  {
    image = [v5 image];
  }

  else
  {
    image = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return image;
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

- (void)cancelPendingRenderOperationsForTarget:(id)target
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
        [v7 cancelOperationForTarget:target];
        jobCount = self->_jobCount;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)didReceiveMemoryWarning:(id)warning
{
  os_unfair_lock_lock(&self->_lock);
  [(UIPDFPageImageCache *)self clearCache];

  os_unfair_lock_unlock(&self->_lock);
}

@end