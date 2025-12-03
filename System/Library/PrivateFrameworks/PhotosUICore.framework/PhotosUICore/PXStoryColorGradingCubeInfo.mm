@interface PXStoryColorGradingCubeInfo
- (BOOL)isAutoSelectable;
- (BOOL)isUserSelectable;
- (PXStoryColorGradingCubeInfo)initWithDictionary:(id)dictionary;
@end

@implementation PXStoryColorGradingCubeInfo

- (BOOL)isUserSelectable
{
  v2 = [(NSDictionary *)self->_backingDict objectForKeyedSubscript:@"user-selectable"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAutoSelectable
{
  v2 = [(NSDictionary *)self->_backingDict objectForKeyedSubscript:@"auto-selectable"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (PXStoryColorGradingCubeInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PXStoryColorGradingCubeInfo;
  v6 = [(PXStoryColorGradingCubeInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingDict, dictionary);
  }

  return v7;
}

@end