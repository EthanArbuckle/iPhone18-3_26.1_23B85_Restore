@interface TAVehicleCategory
+ (unint64_t)speculateTAVehicleCategoryTypeFromGeoNavigationNotification:(id)a3;
+ (unint64_t)speculateTAVehicleCategoryTypeFromVehicleStateNotification:(id)a3;
- (TAVehicleCategory)initWithTAGeoNavigationNotification:(id)a3;
- (TAVehicleCategory)initWithTAVehicularStateNotification:(id)a3;
- (TAVehicleCategory)initWithVehicleCategoryType:(unint64_t)a3 andDate:(id)a4;
@end

@implementation TAVehicleCategory

+ (unint64_t)speculateTAVehicleCategoryTypeFromVehicleStateNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 vehicularState];
  v5 = v4;
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      if (([v3 vehicularHints] & 0x10) != 0)
      {
        v5 = 2;
      }

      else if ([v3 operatorState] == 1)
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (unint64_t)speculateTAVehicleCategoryTypeFromGeoNavigationNotification:(id)a3
{
  v3 = a3;
  if ([v3 navState] == 2)
  {
    v4 = 2 * ([v3 transportType] == 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TAVehicleCategory)initWithVehicleCategoryType:(unint64_t)a3 andDate:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = TAVehicleCategory;
  v7 = [(TAVehicleCategory *)&v13 init];
  v8 = v7;
  if (v7)
  {
    if (!v6)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v7->_vehicleCategoryType = a3;
    v9 = [v6 copy];
    date = v8->_date;
    v8->_date = v9;
  }

  v11 = v8;
LABEL_6:

  return v11;
}

- (TAVehicleCategory)initWithTAVehicularStateNotification:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TAVehicleCategory;
  v5 = [(TAVehicleCategory *)&v10 init];
  if (v5)
  {
    v5->_vehicleCategoryType = [TAVehicleCategory speculateTAVehicleCategoryTypeFromVehicleStateNotification:v4];
    v6 = [v4 getDate];
    v7 = [v6 copy];
    date = v5->_date;
    v5->_date = v7;
  }

  return v5;
}

- (TAVehicleCategory)initWithTAGeoNavigationNotification:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TAVehicleCategory;
  v5 = [(TAVehicleCategory *)&v10 init];
  if (v5)
  {
    v5->_vehicleCategoryType = [TAVehicleCategory speculateTAVehicleCategoryTypeFromGeoNavigationNotification:v4];
    v6 = [v4 getDate];
    v7 = [v6 copy];
    date = v5->_date;
    v5->_date = v7;
  }

  return v5;
}

@end