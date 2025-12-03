@interface PREditingSessionModifications
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PREditingSessionModifications

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PREditingSessionModifications);
  [(PREditingSessionModifications *)v4 setContainedWidgetsBeforeEdit:[(PREditingSessionModifications *)self containedWidgetsBeforeEdit]];
  [(PREditingSessionModifications *)v4 setColorModified:[(PREditingSessionModifications *)self colorModified]];
  [(PREditingSessionModifications *)v4 setFontModified:[(PREditingSessionModifications *)self fontModified]];
  [(PREditingSessionModifications *)v4 setNumberingSystemModified:[(PREditingSessionModifications *)self numberingSystemModified]];
  [(PREditingSessionModifications *)v4 setPosterContentModified:[(PREditingSessionModifications *)self posterContentModified]];
  [(PREditingSessionModifications *)v4 setWidgetsModified:[(PREditingSessionModifications *)self widgetsModified]];
  startDate = [(PREditingSessionModifications *)self startDate];
  [(PREditingSessionModifications *)v4 setStartDate:startDate];

  return v4;
}

@end