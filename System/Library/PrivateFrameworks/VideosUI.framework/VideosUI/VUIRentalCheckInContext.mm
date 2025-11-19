@interface VUIRentalCheckInContext
- (BOOL)isEqual:(id)a3;
- (VUIRentalCheckInContext)initWithRentalID:(id)a3 dsid:(id)a4;
- (unint64_t)hash;
@end

@implementation VUIRentalCheckInContext

- (VUIRentalCheckInContext)initWithRentalID:(id)a3 dsid:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VUIRentalCheckInContext;
  v9 = [(VUIRentalCheckInContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rentalID, a3);
    objc_storeStrong(&v10->_dsid, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (self == v4)
  {
    v11 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(VUIRentalCheckInContext *)self rentalID];
    v8 = [(VUIRentalCheckInContext *)v6 rentalID];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(VUIRentalCheckInContext *)self dsid];
      v10 = [(VUIRentalCheckInContext *)v6 dsid];
      v11 = [v9 isEqualToNumber:v10];
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
  v3 = [(VUIRentalCheckInContext *)self rentalID];
  v4 = [v3 hash];
  v5 = [(VUIRentalCheckInContext *)self dsid];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end