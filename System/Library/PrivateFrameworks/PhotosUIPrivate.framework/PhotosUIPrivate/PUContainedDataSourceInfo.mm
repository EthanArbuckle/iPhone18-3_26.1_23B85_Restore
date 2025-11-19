@interface PUContainedDataSourceInfo
- (_NSRange)externalSections;
- (id)description;
@end

@implementation PUContainedDataSourceInfo

- (_NSRange)externalSections
{
  length = self->_externalSections.length;
  location = self->_externalSections.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PUContainedDataSourceInfo;
  v3 = [(PUContainedDataSourceInfo *)&v8 description];
  v10.location = [(PUContainedDataSourceInfo *)self externalSections];
  v4 = NSStringFromRange(v10);
  v5 = [(PUContainedDataSourceInfo *)self assetsDataSource];
  v6 = [v3 stringByAppendingFormat:@" externalSections:%@ assetsDataSource:%@", v4, v5];

  return v6;
}

@end