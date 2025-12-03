@interface VIStreamingFrame
- (CGRect)normalizedRegionOfInterest;
- (VIStreamingFrame)initWithTimeStamp:(double)stamp imageContent:(id)content normalizedRegionOfInterest:(CGRect)interest stabilityScore:(double)score;
@end

@implementation VIStreamingFrame

- (VIStreamingFrame)initWithTimeStamp:(double)stamp imageContent:(id)content normalizedRegionOfInterest:(CGRect)interest stabilityScore:(double)score
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  contentCopy = content;
  v18.receiver = self;
  v18.super_class = VIStreamingFrame;
  v15 = [(VIStreamingFrame *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_timestamp = stamp;
    objc_storeStrong(&v15->_imageContent, content);
    v16->_normalizedRegionOfInterest.origin.y = y;
    v16->_normalizedRegionOfInterest.size.width = width;
    v16->_normalizedRegionOfInterest.size.height = height;
    v16->_stabilityScore = score;
    v16->_normalizedRegionOfInterest.origin.x = x;
  }

  return v16;
}

- (CGRect)normalizedRegionOfInterest
{
  x = self->_normalizedRegionOfInterest.origin.x;
  y = self->_normalizedRegionOfInterest.origin.y;
  width = self->_normalizedRegionOfInterest.size.width;
  height = self->_normalizedRegionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end