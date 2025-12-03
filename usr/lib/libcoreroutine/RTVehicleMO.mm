@interface RTVehicleMO
+ (id)managedObjectWithVehicle:(id)vehicle inManagedObjectContext:(id)context;
@end

@implementation RTVehicleMO

+ (id)managedObjectWithVehicle:(id)vehicle inManagedObjectContext:(id)context
{
  vehicleCopy = vehicle;
  contextCopy = context;
  v7 = contextCopy;
  if (!vehicleCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v21 = 0;
    v17 = "Invalid parameter not satisfying: vehicle";
    v18 = &v21;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v8 = [[RTVehicleMO alloc] initWithContext:contextCopy];
    dateInterval = [vehicleCopy dateInterval];
    startDate = [dateInterval startDate];
    [(RTVehicleMO *)v8 setStartDate:startDate];

    dateInterval2 = [vehicleCopy dateInterval];
    endDate = [dateInterval2 endDate];
    [(RTVehicleMO *)v8 setEndDate:endDate];

    bluetoothAddress = [vehicleCopy bluetoothAddress];
    [(RTVehicleMO *)v8 setBluetoothAddress:bluetoothAddress];

    vehicleName = [vehicleCopy vehicleName];
    [(RTVehicleMO *)v8 setVehicleName:vehicleName];

    vehicleModelName = [vehicleCopy vehicleModelName];
    [(RTVehicleMO *)v8 setVehicleModelName:vehicleModelName];

    goto LABEL_8;
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v20 = 0;
    v17 = "Invalid parameter not satisfying: managedObjectContext";
    v18 = &v20;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

@end