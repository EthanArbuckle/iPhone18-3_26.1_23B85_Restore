@interface BMStreamCRDTLocationDayAssigner
- (BMStreamCRDTLocationDayAssigner)init;
- (id)locationWithStreamName:(id)a3 siteIdentifier:(id)a4 timestamp:(double)a5;
@end

@implementation BMStreamCRDTLocationDayAssigner

- (BMStreamCRDTLocationDayAssigner)init
{
  v3.receiver = self;
  v3.super_class = BMStreamCRDTLocationDayAssigner;
  return [(BMStreamCRDTLocationDayAssigner *)&v3 init];
}

- (id)locationWithStreamName:(id)a3 siteIdentifier:(id)a4 timestamp:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() truncateDateToDay:a5];
  v10 = [[BMStreamCRDTLocation alloc] initWithStreamName:v8 siteIdentifier:v7 day:v9];

  return v10;
}

@end