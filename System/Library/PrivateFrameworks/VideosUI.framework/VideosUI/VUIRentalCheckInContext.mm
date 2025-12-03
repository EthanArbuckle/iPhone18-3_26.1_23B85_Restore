@interface VUIRentalCheckInContext
- (BOOL)isEqual:(id)equal;
- (VUIRentalCheckInContext)initWithRentalID:(id)d dsid:(id)dsid;
- (unint64_t)hash;
@end

@implementation VUIRentalCheckInContext

- (VUIRentalCheckInContext)initWithRentalID:(id)d dsid:(id)dsid
{
  dCopy = d;
  dsidCopy = dsid;
  v12.receiver = self;
  v12.super_class = VUIRentalCheckInContext;
  v9 = [(VUIRentalCheckInContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rentalID, d);
    objc_storeStrong(&v10->_dsid, dsid);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
  {
    v11 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    rentalID = [(VUIRentalCheckInContext *)self rentalID];
    rentalID2 = [(VUIRentalCheckInContext *)v6 rentalID];
    if ([rentalID isEqualToNumber:rentalID2])
    {
      dsid = [(VUIRentalCheckInContext *)self dsid];
      dsid2 = [(VUIRentalCheckInContext *)v6 dsid];
      v11 = [dsid isEqualToNumber:dsid2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

LABEL_10:

  return v11;
}

- (unint64_t)hash
{
  rentalID = [(VUIRentalCheckInContext *)self rentalID];
  v4 = [rentalID hash];
  dsid = [(VUIRentalCheckInContext *)self dsid];
  v6 = [dsid hash];

  return v6 ^ v4;
}

@end