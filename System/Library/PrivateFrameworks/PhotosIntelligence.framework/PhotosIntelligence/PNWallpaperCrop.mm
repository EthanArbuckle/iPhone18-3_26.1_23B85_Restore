@interface PNWallpaperCrop
- (CGRect)adaptiveCropRect;
- (PNWallpaperCrop)initWithAsset:(id)asset orientation:(int64_t)orientation classification:(unint64_t)classification headroomFeasible:(BOOL)feasible withFaceRegions:(BOOL)regions;
- (id)description;
@end

@implementation PNWallpaperCrop

- (CGRect)adaptiveCropRect
{
  objc_copyStruct(v6, &self->_adaptiveCropRect, 32, 1, 0);
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

- (id)description
{
  layoutVariant = [(PNWallpaperCrop *)self layoutVariant];
  if (layoutVariant > 4)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E82A2420[layoutVariant];
  }

  v5 = MEMORY[0x1E696AEC0];
  [(PNWallpaperCrop *)self cropScore];
  v7 = v6;
  [(PNWallpaperCrop *)self cropZoomRatio];
  v9 = v8;
  passesClockOverlap = [(PNWallpaperCrop *)self passesClockOverlap];
  headroomEngaged = [(PNWallpaperCrop *)self headroomEngaged];
  [(PNWallpaperCrop *)self adaptiveHeadroom];
  v13 = v12;
  [(PNWallpaperCrop *)self maxClockShift];
  v15 = v14;
  [(PNWallpaperCrop *)self notificationRoom];
  v17 = v16;
  [(PNWallpaperCrop *)self adaptiveCropRect];
  v19 = v18;
  [(PNWallpaperCrop *)self adaptiveCropRect];
  v21 = v20;
  [(PNWallpaperCrop *)self adaptiveCropRect];
  v23 = v22;
  [(PNWallpaperCrop *)self adaptiveCropRect];
  return [v5 stringWithFormat:@"{cropScore:%.3f, cropZoomRatio:%.3f, passesClockOverlap:%d, headroomEngaged:%d, adaptiveHeadroom:%.3f, maxClockShift:%.3f, notificationRoom:%.3f, layoutVariant:%@, cropWidth:%.3f, cropHeight:%.3f, cropX:%.3f, cropY:%.3f}", v7, v9, passesClockOverlap, headroomEngaged, v13, v15, v17, v4, v19, v21, v23, v24];
}

- (PNWallpaperCrop)initWithAsset:(id)asset orientation:(int64_t)orientation classification:(unint64_t)classification headroomFeasible:(BOOL)feasible withFaceRegions:(BOOL)regions
{
  assetCopy = asset;
  v17.receiver = self;
  v17.super_class = PNWallpaperCrop;
  v13 = [(PNWallpaperCrop *)&v17 init];
  if (v13)
  {
    BYTE1(v16) = regions;
    LOBYTE(v16) = feasible;
    [PNSuggestionWallpaperUtilities cropScoreWithAsset:assetCopy classification:classification passesClockOverlap:&v13->_passesClockOverlap headroomEngaged:&v13->_headroomEngaged cropZoomRatio:&v13->_cropZoomRatio adaptiveHeadroom:&v13->_adaptiveHeadroom maxClockShift:&v13->_maxClockShift notificationRoom:&v13->_notificationRoom layoutVariant:&v13->_layoutVariant orientation:orientation adaptiveCropRect:&v13->_adaptiveCropRect headroomFeasible:v16 withFaceRegions:?];
    v13->_cropScore = v14;
  }

  return v13;
}

@end