@interface PKExpiredPassesGeocodeRequestItem
- (PKExpiredPassesGeocodeRequestItem)initWithCell:(id)a3 location:(id)a4 indexPath:(id)a5;
@end

@implementation PKExpiredPassesGeocodeRequestItem

- (PKExpiredPassesGeocodeRequestItem)initWithCell:(id)a3 location:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PKExpiredPassesGeocodeRequestItem;
  v11 = [(PKExpiredPassesGeocodeRequestItem *)&v16 init];
  if (v11)
  {
    v12 = [v8 pass];
    v13 = v12;
    if (v9 && v12)
    {
      [(PKExpiredPassesGeocodeRequestItem *)v11 setLocation:v9];
      [(PKExpiredPassesGeocodeRequestItem *)v11 setCell:v8];
      [(PKExpiredPassesGeocodeRequestItem *)v11 setPass:v13];
      v14 = [v13 uniqueID];
      [(PKExpiredPassesGeocodeRequestItem *)v11 setUniqueID:v14];

      [(PKExpiredPassesGeocodeRequestItem *)v11 setIndexPath:v10];
    }
  }

  return v11;
}

@end