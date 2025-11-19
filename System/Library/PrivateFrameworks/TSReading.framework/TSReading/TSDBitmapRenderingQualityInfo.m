@interface TSDBitmapRenderingQualityInfo
- (CGImage)degradedImageRefForProvider:(id)a3 ofSize:(CGSize)a4;
- (TSDBitmapRenderingQualityInfo)initWithQuality:(int)a3 canvasScale:(float)a4;
- (void)cacheProvider:(id)a3 ofSize:(CGSize)a4;
- (void)dealloc;
@end

@implementation TSDBitmapRenderingQualityInfo

- (TSDBitmapRenderingQualityInfo)initWithQuality:(int)a3 canvasScale:(float)a4
{
  v9.receiver = self;
  v9.super_class = TSDBitmapRenderingQualityInfo;
  v6 = [(TSDBitmapRenderingQualityInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mQuality = a3;
    v6->mCanvasScale = a4;
    v6->mImageMap = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDBitmapRenderingQualityInfo;
  [(TSDBitmapRenderingQualityInfo *)&v3 dealloc];
}

- (void)cacheProvider:(id)a3 ofSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = -[NSMutableDictionary objectForKey:](self->mImageMap, "objectForKey:", [MEMORY[0x277CCAE60] valueWithNonretainedObject:?]);
  if (!v8)
  {
    v8 = objc_alloc_init(TSDBitmapRenderingQualityImageMapValue);
    -[NSMutableDictionary setObject:forKey:](self->mImageMap, "setObject:forKey:", v8, [MEMORY[0x277CCAE60] valueWithNonretainedObject:a3]);
  }

  [(TSDBitmapRenderingQualityImageMapValue *)v8 addSize:width, height];
}

- (CGImage)degradedImageRefForProvider:(id)a3 ofSize:(CGSize)a4
{
  [(TSDBitmapRenderingQualityInfo *)self cacheProvider:a4.width ofSize:a4.height];
  v6 = -[NSMutableDictionary objectForKey:](self->mImageMap, "objectForKey:", [MEMORY[0x277CCAE60] valueWithNonretainedObject:a3]);
  if (!v6)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBitmapRenderingQualityInfo degradedImageRefForProvider:ofSize:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBitmapRenderingQualityInfo.m"), 80, @"Bitmap rendering quality info encountered an unprocessed image ref"}];
  }

  mQuality = self->mQuality;
  *&v7 = self->mCanvasScale;

  return [v6 degradedImageRefForForProvider:a3 quality:mQuality canvasScale:v7];
}

@end