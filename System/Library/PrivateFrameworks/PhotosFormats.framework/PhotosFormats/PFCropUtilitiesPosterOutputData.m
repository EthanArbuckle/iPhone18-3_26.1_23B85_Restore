@interface PFCropUtilitiesPosterOutputData
- (CGRect)adaptiveVisibleRect;
- (CGRect)visibleRect;
- (PFCropUtilitiesPosterOutputData)initWithVisibleRect:(CGRect)a3 adaptiveVisibleRect:(CGRect)a4 cropScore:(double)a5 layoutScore:(double)a6 clockOverlapAcceptable:(BOOL)a7 headroomEngaged:(BOOL)a8 adaptiveHeadroom:(double)a9 maxClockShift:(double)a10 layoutVariant:(unint64_t)a11 notificationRoom:(double)a12;
@end

@implementation PFCropUtilitiesPosterOutputData

- (CGRect)adaptiveVisibleRect
{
  x = self->_adaptiveVisibleRect.origin.x;
  y = self->_adaptiveVisibleRect.origin.y;
  width = self->_adaptiveVisibleRect.size.width;
  height = self->_adaptiveVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PFCropUtilitiesPosterOutputData)initWithVisibleRect:(CGRect)a3 adaptiveVisibleRect:(CGRect)a4 cropScore:(double)a5 layoutScore:(double)a6 clockOverlapAcceptable:(BOOL)a7 headroomEngaged:(BOOL)a8 adaptiveHeadroom:(double)a9 maxClockShift:(double)a10 layoutVariant:(unint64_t)a11 notificationRoom:(double)a12
{
  height = a4.size.height;
  x = a3.origin.x;
  width = a4.size.width;
  y = a4.origin.y;
  v17 = a4.origin.x;
  v18 = a3.size.height;
  v19 = a3.size.width;
  v20 = a3.origin.y;
  v24.receiver = self;
  v24.super_class = PFCropUtilitiesPosterOutputData;
  result = [(PFCropUtilitiesPosterOutputData *)&v24 init];
  result->_visibleRect.origin.y = v20;
  result->_visibleRect.size.width = v19;
  result->_visibleRect.size.height = v18;
  result->_adaptiveVisibleRect.origin.x = v17;
  result->_adaptiveVisibleRect.origin.y = y;
  result->_adaptiveVisibleRect.size.width = width;
  result->_adaptiveVisibleRect.size.height = height;
  *&result->_cropScore = *&a5;
  result->_clockOverlapAcceptable = a7;
  result->_headroomEngaged = a8;
  result->_adaptiveHeadroom = a9;
  result->_maxClockShift = a10;
  result->_layoutVariant = a11;
  result->_visibleRect.origin.x = x;
  result->_notificationRoom = a12;
  return result;
}

@end