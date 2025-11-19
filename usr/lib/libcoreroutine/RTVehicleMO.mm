@interface RTVehicleMO
+ (id)managedObjectWithVehicle:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTVehicleMO

+ (id)managedObjectWithVehicle:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
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

  if (v6)
  {
    v8 = [[RTVehicleMO alloc] initWithContext:v6];
    v9 = [v5 dateInterval];
    v10 = [v9 startDate];
    [(RTVehicleMO *)v8 setStartDate:v10];

    v11 = [v5 dateInterval];
    v12 = [v11 endDate];
    [(RTVehicleMO *)v8 setEndDate:v12];

    v13 = [v5 bluetoothAddress];
    [(RTVehicleMO *)v8 setBluetoothAddress:v13];

    v14 = [v5 vehicleName];
    [(RTVehicleMO *)v8 setVehicleName:v14];

    v15 = [v5 vehicleModelName];
    [(RTVehicleMO *)v8 setVehicleModelName:v15];

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