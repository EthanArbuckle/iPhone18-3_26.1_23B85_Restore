@interface PXPlacesMapLayoutChange
- (PXPlacesMapLayoutChange)initWithSourceLayoutItem:(id)a3 targetLayoutItem:(id)a4 type:(int64_t)a5;
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

  v6 = [(PXPlacesMapLayoutChange *)self type];
  if (v6 > 2)
  {
    v7 = @"UNKNOWN";
  }

  else
  {
    v7 = off_1E7749240[v6];
  }

  [v5 appendFormat:@"TYPE:\t%@\n", v7];
  v8 = [(PXPlacesMapLayoutChange *)self sourceLayoutItem];
  [v5 appendFormat:@"SOURCE:\t%@\n", v8];

  v9 = [(PXPlacesMapLayoutChange *)self targetLayoutItem];
  [v5 appendFormat:@"TARGET:\t%@\n", v9];

  return v5;
}

- (PXPlacesMapLayoutChange)initWithSourceLayoutItem:(id)a3 targetLayoutItem:(id)a4 type:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PXPlacesMapLayoutChange;
  v11 = [(PXPlacesMapLayoutChange *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceLayoutItem, a3);
    objc_storeStrong(&v12->_targetLayoutItem, a4);
    v12->_type = a5;
  }

  return v12;
}

@end