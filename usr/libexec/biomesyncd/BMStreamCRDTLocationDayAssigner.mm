@interface BMStreamCRDTLocationDayAssigner
- (BMStreamCRDTLocationDayAssigner)init;
- (id)locationWithStreamName:(id)name siteIdentifier:(id)identifier timestamp:(double)timestamp;
@end

@implementation BMStreamCRDTLocationDayAssigner

- (BMStreamCRDTLocationDayAssigner)init
{
  v3.receiver = self;
  v3.super_class = BMStreamCRDTLocationDayAssigner;
  return [(BMStreamCRDTLocationDayAssigner *)&v3 init];
}

- (id)locationWithStreamName:(id)name siteIdentifier:(id)identifier timestamp:(double)timestamp
{
  identifierCopy = identifier;
  nameCopy = name;
  v9 = [objc_opt_class() truncateDateToDay:timestamp];
  v10 = [[BMStreamCRDTLocation alloc] initWithStreamName:nameCopy siteIdentifier:identifierCopy day:v9];

  return v10;
}

@end