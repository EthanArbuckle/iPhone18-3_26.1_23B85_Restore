@interface TAVehicleCategory
+ (unint64_t)speculateTAVehicleCategoryTypeFromGeoNavigationNotification:(id)notification;
+ (unint64_t)speculateTAVehicleCategoryTypeFromVehicleStateNotification:(id)notification;
- (TAVehicleCategory)initWithTAGeoNavigationNotification:(id)notification;
- (TAVehicleCategory)initWithTAVehicularStateNotification:(id)notification;
- (TAVehicleCategory)initWithVehicleCategoryType:(unint64_t)type andDate:(id)date;
@end

@implementation TAVehicleCategory

+ (unint64_t)speculateTAVehicleCategoryTypeFromVehicleStateNotification:(id)notification
{
  notificationCopy = notification;
  vehicularState = [notificationCopy vehicularState];
  v5 = vehicularState;
  if (vehicularState != 1)
  {
    if (vehicularState == 2)
    {
      if (([notificationCopy vehicularHints] & 0x10) != 0)
      {
        v5 = 2;
      }

      else if ([notificationCopy operatorState] == 1)
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

+ (unint64_t)speculateTAVehicleCategoryTypeFromGeoNavigationNotification:(id)notification
{
  notificationCopy = notification;
  if ([notificationCopy navState] == 2)
  {
    v4 = 2 * ([notificationCopy transportType] == 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TAVehicleCategory)initWithVehicleCategoryType:(unint64_t)type andDate:(id)date
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = TAVehicleCategory;
  v7 = [(TAVehicleCategory *)&v13 init];
  v8 = v7;
  if (v7)
  {
    if (!dateCopy)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v7->_vehicleCategoryType = type;
    v9 = [dateCopy copy];
    date = v8->_date;
    v8->_date = v9;
  }

  v11 = v8;
LABEL_6:

  return v11;
}

- (TAVehicleCategory)initWithTAVehicularStateNotification:(id)notification
{
  notificationCopy = notification;
  v10.receiver = self;
  v10.super_class = TAVehicleCategory;
  v5 = [(TAVehicleCategory *)&v10 init];
  if (v5)
  {
    v5->_vehicleCategoryType = [TAVehicleCategory speculateTAVehicleCategoryTypeFromVehicleStateNotification:notificationCopy];
    getDate = [notificationCopy getDate];
    v7 = [getDate copy];
    date = v5->_date;
    v5->_date = v7;
  }

  return v5;
}

- (TAVehicleCategory)initWithTAGeoNavigationNotification:(id)notification
{
  notificationCopy = notification;
  v10.receiver = self;
  v10.super_class = TAVehicleCategory;
  v5 = [(TAVehicleCategory *)&v10 init];
  if (v5)
  {
    v5->_vehicleCategoryType = [TAVehicleCategory speculateTAVehicleCategoryTypeFromGeoNavigationNotification:notificationCopy];
    getDate = [notificationCopy getDate];
    v7 = [getDate copy];
    date = v5->_date;
    v5->_date = v7;
  }

  return v5;
}

@end