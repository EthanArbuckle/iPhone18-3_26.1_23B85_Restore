@interface PXGThumbnailRequestQueue
- (PXGThumbnailRequestQueue)init;
- (id)description;
- (void)dealloc;
- (void)enqueueRequestsWithItemRange:(_NSRange)a3 textureRequestIDs:(_NSRange)a4 displayAssetFetchResult:(id)a5 targetSize:(CGSize)a6 applyCleanApertureCrop:(BOOL)a7 mediaProvider:(id)a8;
- (void)removeAllRequests;
- (void)setCount:(int64_t)a3;
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

- (void)enqueueRequestsWithItemRange:(_NSRange)a3 textureRequestIDs:(_NSRange)a4 displayAssetFetchResult:(id)a5 targetSize:(CGSize)a6 applyCleanApertureCrop:(BOOL)a7 mediaProvider:(id)a8
{
  v8 = a7;
  height = a6.height;
  width = a6.width;
  location = a4.location;
  length = a3.length;
  v13 = a3.location;
  v25 = a5;
  v15 = a8;
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
      if (v8)
      {
        v21 = [v25 objectAtIndexedSubscript:v13];
        if ([v21 playbackStyle] == 3)
        {
          v20 = 0.9;
        }

        else
        {
          v20 = 1.0;
        }
      }

      v22 = [v25 thumbnailAssetAtIndex:v13];
      v23 = v15;
      v24 = [v22 thumbnailIndex];
      v19->var0 = v22;
      v19->var1 = v23;
      v19->var2 = v24;
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

- (void)setCount:(int64_t)a3
{
  if (self->_count != a3)
  {
    self->_count = a3;
    capacity = self->_capacity;
    if (capacity < a3)
    {
      if (!capacity)
      {
        capacity = 32;
        self->_capacity = 32;
      }

      if (capacity < a3)
      {
        do
        {
          capacity *= 2;
        }

        while (capacity < a3);
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