@interface PFCropUtilitiesPosterOutputData
- (CGRect)adaptiveVisibleRect;
- (CGRect)visibleRect;
- (PFCropUtilitiesPosterOutputData)initWithVisibleRect:(CGRect)rect adaptiveVisibleRect:(CGRect)visibleRect cropScore:(double)score layoutScore:(double)layoutScore clockOverlapAcceptable:(BOOL)acceptable headroomEngaged:(BOOL)engaged adaptiveHeadroom:(double)headroom maxClockShift:(double)self0 layoutVariant:(unint64_t)self1 notificationRoom:(double)self2;
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

- (PFCropUtilitiesPosterOutputData)initWithVisibleRect:(CGRect)rect adaptiveVisibleRect:(CGRect)visibleRect cropScore:(double)score layoutScore:(double)layoutScore clockOverlapAcceptable:(BOOL)acceptable headroomEngaged:(BOOL)engaged adaptiveHeadroom:(double)headroom maxClockShift:(double)self0 layoutVariant:(unint64_t)self1 notificationRoom:(double)self2
{
  height = visibleRect.size.height;
  x = rect.origin.x;
  width = visibleRect.size.width;
  y = visibleRect.origin.y;
  v17 = visibleRect.origin.x;
  v18 = rect.size.height;
  v19 = rect.size.width;
  v20 = rect.origin.y;
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
  *&result->_cropScore = *&score;
  result->_clockOverlapAcceptable = acceptable;
  result->_headroomEngaged = engaged;
  result->_adaptiveHeadroom = headroom;
  result->_maxClockShift = shift;
  result->_layoutVariant = variant;
  result->_visibleRect.origin.x = x;
  result->_notificationRoom = room;
  return result;
}

@end