@interface PXStoryColorGradingCubeInfo
- (BOOL)isAutoSelectable;
- (BOOL)isUserSelectable;
- (PXStoryColorGradingCubeInfo)initWithDictionary:(id)a3;
@end

@implementation PXStoryColorGradingCubeInfo

- (BOOL)isUserSelectable
{
  v2 = [(NSDictionary *)self->_backingDict objectForKeyedSubscript:@"user-selectable"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isAutoSelectable
{
  v2 = [(NSDictionary *)self->_backingDict objectForKeyedSubscript:@"auto-selectable"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (PXStoryColorGradingCubeInfo)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryColorGradingCubeInfo;
  v6 = [(PXStoryColorGradingCubeInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingDict, a3);
  }

  return v7;
}

@end