@interface PREditingSessionModifications
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PREditingSessionModifications

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PREditingSessionModifications);
  [(PREditingSessionModifications *)v4 setContainedWidgetsBeforeEdit:[(PREditingSessionModifications *)self containedWidgetsBeforeEdit]];
  [(PREditingSessionModifications *)v4 setColorModified:[(PREditingSessionModifications *)self colorModified]];
  [(PREditingSessionModifications *)v4 setFontModified:[(PREditingSessionModifications *)self fontModified]];
  [(PREditingSessionModifications *)v4 setNumberingSystemModified:[(PREditingSessionModifications *)self numberingSystemModified]];
  [(PREditingSessionModifications *)v4 setPosterContentModified:[(PREditingSessionModifications *)self posterContentModified]];
  [(PREditingSessionModifications *)v4 setWidgetsModified:[(PREditingSessionModifications *)self widgetsModified]];
  v5 = [(PREditingSessionModifications *)self startDate];
  [(PREditingSessionModifications *)v4 setStartDate:v5];

  return v4;
}

@end