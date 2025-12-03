@interface PXPlacesMapLayoutChange
- (PXPlacesMapLayoutChange)initWithSourceLayoutItem:(id)item targetLayoutItem:(id)layoutItem type:(int64_t)type;
- (id)description;
@end

@implementation PXPlacesMapLayoutChange

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v11.receiver = self;
  v11.super_class = PXPlacesMapLayoutChange;
  v4 = [(PXPlacesMapLayoutChange *)&v11 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  type = [(PXPlacesMapLayoutChange *)self type];
  if (type > 2)
  {
    v7 = @"UNKNOWN";
  }

  else
  {
    v7 = off_1E7749240[type];
  }

  [v5 appendFormat:@"TYPE:\t%@\n", v7];
  sourceLayoutItem = [(PXPlacesMapLayoutChange *)self sourceLayoutItem];
  [v5 appendFormat:@"SOURCE:\t%@\n", sourceLayoutItem];

  targetLayoutItem = [(PXPlacesMapLayoutChange *)self targetLayoutItem];
  [v5 appendFormat:@"TARGET:\t%@\n", targetLayoutItem];

  return v5;
}

- (PXPlacesMapLayoutChange)initWithSourceLayoutItem:(id)item targetLayoutItem:(id)layoutItem type:(int64_t)type
{
  itemCopy = item;
  layoutItemCopy = layoutItem;
  v14.receiver = self;
  v14.super_class = PXPlacesMapLayoutChange;
  v11 = [(PXPlacesMapLayoutChange *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceLayoutItem, item);
    objc_storeStrong(&v12->_targetLayoutItem, layoutItem);
    v12->_type = type;
  }

  return v12;
}

@end