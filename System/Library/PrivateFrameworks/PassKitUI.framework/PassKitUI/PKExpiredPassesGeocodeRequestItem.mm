@interface PKExpiredPassesGeocodeRequestItem
- (PKExpiredPassesGeocodeRequestItem)initWithCell:(id)cell location:(id)location indexPath:(id)path;
@end

@implementation PKExpiredPassesGeocodeRequestItem

- (PKExpiredPassesGeocodeRequestItem)initWithCell:(id)cell location:(id)location indexPath:(id)path
{
  cellCopy = cell;
  locationCopy = location;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = PKExpiredPassesGeocodeRequestItem;
  v11 = [(PKExpiredPassesGeocodeRequestItem *)&v16 init];
  if (v11)
  {
    pass = [cellCopy pass];
    v13 = pass;
    if (locationCopy && pass)
    {
      [(PKExpiredPassesGeocodeRequestItem *)v11 setLocation:locationCopy];
      [(PKExpiredPassesGeocodeRequestItem *)v11 setCell:cellCopy];
      [(PKExpiredPassesGeocodeRequestItem *)v11 setPass:v13];
      uniqueID = [v13 uniqueID];
      [(PKExpiredPassesGeocodeRequestItem *)v11 setUniqueID:uniqueID];

      [(PKExpiredPassesGeocodeRequestItem *)v11 setIndexPath:pathCopy];
    }
  }

  return v11;
}

@end