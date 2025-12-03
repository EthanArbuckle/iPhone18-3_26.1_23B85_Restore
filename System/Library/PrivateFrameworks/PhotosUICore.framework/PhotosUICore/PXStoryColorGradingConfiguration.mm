@interface PXStoryColorGradingConfiguration
- (PXStoryColorGradingConfiguration)initWithCubeInfos:(id)infos;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
@end

@implementation PXStoryColorGradingConfiguration

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v3 = [(NSArray *)self->_cubeInfos objectAtIndexedSubscript:subscript];
  v4 = [[PXStoryColorGradingCubeInfo alloc] initWithDictionary:v3];

  return v4;
}

- (PXStoryColorGradingConfiguration)initWithCubeInfos:(id)infos
{
  infosCopy = infos;
  v9.receiver = self;
  v9.super_class = PXStoryColorGradingConfiguration;
  v6 = [(PXStoryColorGradingConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cubeInfos, infos);
  }

  return v7;
}

@end