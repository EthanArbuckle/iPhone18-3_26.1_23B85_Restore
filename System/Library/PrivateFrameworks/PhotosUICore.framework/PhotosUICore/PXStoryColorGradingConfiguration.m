@interface PXStoryColorGradingConfiguration
- (PXStoryColorGradingConfiguration)initWithCubeInfos:(id)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
@end

@implementation PXStoryColorGradingConfiguration

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  v3 = [(NSArray *)self->_cubeInfos objectAtIndexedSubscript:a3];
  v4 = [[PXStoryColorGradingCubeInfo alloc] initWithDictionary:v3];

  return v4;
}

- (PXStoryColorGradingConfiguration)initWithCubeInfos:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryColorGradingConfiguration;
  v6 = [(PXStoryColorGradingConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cubeInfos, a3);
  }

  return v7;
}

@end