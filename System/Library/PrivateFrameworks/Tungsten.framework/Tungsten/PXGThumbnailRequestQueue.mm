@interface PXGThumbnailRequestQueue
- (PXGThumbnailRequestQueue)init;
- (id)description;
- (void)dealloc;
- (void)enqueueRequestsWithItemRange:(_NSRange)range textureRequestIDs:(_NSRange)ds displayAssetFetchResult:(id)result targetSize:(CGSize)size applyCleanApertureCrop:(BOOL)crop mediaProvider:(id)provider;
- (void)removeAllRequests;
- (void)setCount:(int64_t)count;
@end

@implementation PXGThumbnailRequestQueue

- (PXGThumbnailRequestQueue)init
{
  v3.receiver = self;
  v3.super_class = PXGThumbnailRequestQueue;
  return [(PXGThumbnailRequestQueue *)&v3 init];
}

- (void)removeAllRequests
{
  v3 = [(PXGThumbnailRequestQueue *)self count];
  if (v3 >= 1)
  {
    v4 = v3;
    requests = self->_requests;
    do
    {
      CFRelease(requests->var0);
      requests->var0 = 0;
      CFRelease(requests->var1);
      requests->var1 = 0;
      ++requests;
      --v4;
    }

    while (v4);
  }

  [(PXGThumbnailRequestQueue *)self setCount:0];
}

- (void)enqueueRequestsWithItemRange:(_NSRange)range textureRequestIDs:(_NSRange)ds displayAssetFetchResult:(id)result targetSize:(CGSize)size applyCleanApertureCrop:(BOOL)crop mediaProvider:(id)provider
{
  cropCopy = crop;
  height = size.height;
  width = size.width;
  location = ds.location;
  length = range.length;
  v13 = range.location;
  resultCopy = result;
  providerCopy = provider;
  v16 = [(PXGThumbnailRequestQueue *)self count];
  [(PXGThumbnailRequestQueue *)self setCount:[(PXGThumbnailRequestQueue *)self count]+ length];
  if (length)
  {
    v17 = llround(width);
    v18 = llround(height);
    v19 = &self->_requests[v16];
    do
    {
      v20 = 0.0;
      if (cropCopy)
      {
        v21 = [resultCopy objectAtIndexedSubscript:v13];
        if ([v21 playbackStyle] == 3)
        {
          v20 = 0.9;
        }

        else
        {
          v20 = 1.0;
        }
      }

      v22 = [resultCopy thumbnailAssetAtIndex:v13];
      v23 = providerCopy;
      thumbnailIndex = [v22 thumbnailIndex];
      v19->var0 = v22;
      v19->var1 = v23;
      v19->var2 = thumbnailIndex;
      v19->var3 = location;
      v19->var4 = v17;
      v19->var5 = v18;
      v19->var6 = v20;

      ++v19;
      ++location;
      ++v13;
      --length;
    }

    while (length);
  }
}

- (void)setCount:(int64_t)count
{
  if (self->_count != count)
  {
    self->_count = count;
    capacity = self->_capacity;
    if (capacity < count)
    {
      if (!capacity)
      {
        capacity = 32;
        self->_capacity = 32;
      }

      if (capacity < count)
      {
        do
        {
          capacity *= 2;
        }

        while (capacity < count);
        self->_capacity = capacity;
      }

      self->_requests = malloc_type_realloc(self->_requests, 40 * capacity, 0x42760281uLL);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p count:%ld requests:[", v5, self, self->_count];;

  if (self->_count >= 1)
  {
    v7 = 0;
    v8 = 16;
    do
    {
      [v6 appendFormat:@"%lu", *(&self->_requests->var0 + v8)];
      ++v7;
      count = self->_count;
      if (v7 < count)
      {
        [v6 appendString:{@", "}];
        count = self->_count;
      }

      v8 += 40;
    }

    while (v7 < count);
  }

  [v6 appendString:@"]>"];

  return v6;
}

- (void)dealloc
{
  [(PXGThumbnailRequestQueue *)self removeAllRequests];
  free(self->_requests);
  v3.receiver = self;
  v3.super_class = PXGThumbnailRequestQueue;
  [(PXGThumbnailRequestQueue *)&v3 dealloc];
}

@end