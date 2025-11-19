@interface RPTNullCoordinateSpaceConverter
- (RPTNullCoordinateSpaceConverter)init;
@end

@implementation RPTNullCoordinateSpaceConverter

- (RPTNullCoordinateSpaceConverter)init
{
  v3.receiver = self;
  v3.super_class = RPTNullCoordinateSpaceConverter;
  return [(RPTNullCoordinateSpaceConverter *)&v3 init];
}

@end