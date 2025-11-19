@interface _BKMousePointerRegionLayoutDescriptor
- (_BKMousePointerRegionLayoutDescriptor)initWithRelativeRegion:(id)a3 edge:(unsigned int)a4 edgePosition:(double)a5;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation _BKMousePointerRegionLayoutDescriptor

- (void)appendDescriptionToStream:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009A840;
  v4[3] = &unk_1000FD128;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  [v3 appendProem:0 block:v4];
}

- (_BKMousePointerRegionLayoutDescriptor)initWithRelativeRegion:(id)a3 edge:(unsigned int)a4 edgePosition:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _BKMousePointerRegionLayoutDescriptor;
  v10 = [(_BKMousePointerRegionLayoutDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_relativeRegion, a3);
    v11->_edge = a4;
    v11->_edgePosition = a5;
  }

  return v11;
}

@end