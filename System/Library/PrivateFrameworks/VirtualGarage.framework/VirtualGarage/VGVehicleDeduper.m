@interface VGVehicleDeduper
+ (id)_vehicleMatchingVehicle:(id)a3 inArray:(id)a4;
+ (int64_t)actionForAddingNewVehicle:(id *)a3 withExistingGarageVehicles:(id)a4 andUnpairedVehicles:(id)a5;
@end

@implementation VGVehicleDeduper

+ (id)_vehicleMatchingVehicle:(id)a3 inArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__VGVehicleDeduper__vehicleMatchingVehicle_inArray___block_invoke;
  v11[3] = &unk_279E26A38;
  v7 = v5;
  v12 = v7;
  v8 = [v6 indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 objectAtIndex:v8];
  }

  return v9;
}

+ (int64_t)actionForAddingNewVehicle:(id *)a3 withExistingGarageVehicles:(id)a4 andUnpairedVehicles:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!a3)
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

  if (!v8)
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

  if (!v9)
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

  v11 = [a1 _vehicleMatchingVehicle:*a3 inArray:v8];
  v12 = v11;
  v13 = *a3;
  if (v11)
  {
    *a3 = [v11 _vehicleByUpdatingWithVehicle:v13];
    v14 = 1;
  }

  else
  {
    v16 = [a1 _vehicleMatchingVehicle:v13 inArray:v10];
    v17 = v16;
    if (v16)
    {
      *a3 = [v16 _vehicleByUpdatingWithVehicle:*a3];
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