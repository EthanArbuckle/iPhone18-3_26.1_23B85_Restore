@interface VGVehicleDeduper
+ (id)_vehicleMatchingVehicle:(id)vehicle inArray:(id)array;
+ (int64_t)actionForAddingNewVehicle:(id *)vehicle withExistingGarageVehicles:(id)vehicles andUnpairedVehicles:(id)unpairedVehicles;
@end

@implementation VGVehicleDeduper

+ (id)_vehicleMatchingVehicle:(id)vehicle inArray:(id)array
{
  vehicleCopy = vehicle;
  arrayCopy = array;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__VGVehicleDeduper__vehicleMatchingVehicle_inArray___block_invoke;
  v11[3] = &unk_279E26A38;
  v7 = vehicleCopy;
  v12 = v7;
  v8 = [arrayCopy indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [arrayCopy objectAtIndex:v8];
  }

  return v9;
}

+ (int64_t)actionForAddingNewVehicle:(id *)vehicle withExistingGarageVehicles:(id)vehicles andUnpairedVehicles:(id)unpairedVehicles
{
  v26 = *MEMORY[0x277D85DE8];
  vehiclesCopy = vehicles;
  unpairedVehiclesCopy = unpairedVehicles;
  v10 = unpairedVehiclesCopy;
  if (!vehicle)
  {
    v15 = VGGetAssertLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v20 = 136446722;
    v21 = "+[VGVehicleDeduper actionForAddingNewVehicle:withExistingGarageVehicles:andUnpairedVehicles:]";
    v22 = 2082;
    v23 = "newVehicle == nil";
    v24 = 2082;
    v25 = "newVehicle cannot be nil";
LABEL_12:
    _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", &v20, 0x20u);
    goto LABEL_13;
  }

  if (!vehiclesCopy)
  {
    v15 = VGGetAssertLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v20 = 136446722;
    v21 = "+[VGVehicleDeduper actionForAddingNewVehicle:withExistingGarageVehicles:andUnpairedVehicles:]";
    v22 = 2082;
    v23 = "garageVehicles == nil";
    v24 = 2082;
    v25 = "garageVehicles cannot be nil";
    goto LABEL_12;
  }

  if (!unpairedVehiclesCopy)
  {
    v15 = VGGetAssertLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "+[VGVehicleDeduper actionForAddingNewVehicle:withExistingGarageVehicles:andUnpairedVehicles:]";
      v22 = 2082;
      v23 = "unpairedVehicles == nil";
      v24 = 2082;
      v25 = "unpairedVehicles cannot be nil";
      goto LABEL_12;
    }

LABEL_13:

    v14 = 0;
    goto LABEL_19;
  }

  v11 = [self _vehicleMatchingVehicle:*vehicle inArray:vehiclesCopy];
  v12 = v11;
  v13 = *vehicle;
  if (v11)
  {
    *vehicle = [v11 _vehicleByUpdatingWithVehicle:v13];
    v14 = 1;
  }

  else
  {
    v16 = [self _vehicleMatchingVehicle:v13 inArray:v10];
    v17 = v16;
    if (v16)
    {
      *vehicle = [v16 _vehicleByUpdatingWithVehicle:*vehicle];
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }
  }

LABEL_19:
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

@end