@interface _BKMousePointerRegionLayoutDescriptor
- (_BKMousePointerRegionLayoutDescriptor)initWithRelativeRegion:(id)region edge:(unsigned int)edge edgePosition:(double)position;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation _BKMousePointerRegionLayoutDescriptor

- (void)appendDescriptionToStream:(id)stream
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009A840;
  v4[3] = &unk_1000FD128;
  v4[4] = self;
  streamCopy = stream;
  v3 = streamCopy;
  [v3 appendProem:0 block:v4];
}

- (_BKMousePointerRegionLayoutDescriptor)initWithRelativeRegion:(id)region edge:(unsigned int)edge edgePosition:(double)position
{
  regionCopy = region;
  v13.receiver = self;
  v13.super_class = _BKMousePointerRegionLayoutDescriptor;
  v10 = [(_BKMousePointerRegionLayoutDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_relativeRegion, region);
    v11->_edge = edge;
    v11->_edgePosition = position;
  }

  return v11;
}

@end