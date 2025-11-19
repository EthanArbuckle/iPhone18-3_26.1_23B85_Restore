@interface PNWallpaperCrop
- (CGRect)adaptiveCropRect;
- (PNWallpaperCrop)initWithAsset:(id)a3 orientation:(int64_t)a4 classification:(unint64_t)a5 headroomFeasible:(BOOL)a6 withFaceRegions:(BOOL)a7;
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
  v3 = [(PNWallpaperCrop *)self layoutVariant];
  if (v3 > 4)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E82A2420[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  [(PNWallpaperCrop *)self cropScore];
  v7 = v6;
  [(PNWallpaperCrop *)self cropZoomRatio];
  v9 = v8;
  v10 = [(PNWallpaperCrop *)self passesClockOverlap];
  v11 = [(PNWallpaperCrop *)self headroomEngaged];
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
  return [v5 stringWithFormat:@"{cropScore:%.3f, cropZoomRatio:%.3f, passesClockOverlap:%d, headroomEngaged:%d, adaptiveHeadroom:%.3f, maxClockShift:%.3f, notificationRoom:%.3f, layoutVariant:%@, cropWidth:%.3f, cropHeight:%.3f, cropX:%.3f, cropY:%.3f}", v7, v9, v10, v11, v13, v15, v17, v4, v19, v21, v23, v24];
}

- (PNWallpaperCrop)initWithAsset:(id)a3 orientation:(int64_t)a4 classification:(unint64_t)a5 headroomFeasible:(BOOL)a6 withFaceRegions:(BOOL)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = PNWallpaperCrop;
  v13 = [(PNWallpaperCrop *)&v17 init];
  if (v13)
  {
    BYTE1(v16) = a7;
    LOBYTE(v16) = a6;
    [PNSuggestionWallpaperUtilities cropScoreWithAsset:v12 classification:a5 passesClockOverlap:&v13->_passesClockOverlap headroomEngaged:&v13->_headroomEngaged cropZoomRatio:&v13->_cropZoomRatio adaptiveHeadroom:&v13->_adaptiveHeadroom maxClockShift:&v13->_maxClockShift notificationRoom:&v13->_notificationRoom layoutVariant:&v13->_layoutVariant orientation:a4 adaptiveCropRect:&v13->_adaptiveCropRect headroomFeasible:v16 withFaceRegions:?];
    v13->_cropScore = v14;
  }

  return v13;
}

@end