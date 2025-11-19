@interface SMMedicalIDMO
+ (id)managedObjectWithMedicalID:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation SMMedicalIDMO

+ (id)managedObjectWithMedicalID:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: medicalID";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_7;
  }

  if (v9)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__186;
    v24 = __Block_byref_object_dispose__186;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__SMMedicalIDMO_managedObjectWithMedicalID_managedObject_inManagedObjectContext___block_invoke;
    v15[3] = &unk_2788C5DA0;
    v19 = buf;
    v16 = v8;
    v17 = v10;
    v18 = v7;
    [v17 performBlockAndWait:v15];
    v11 = *(v21 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_8;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v13 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_12;
  }

LABEL_7:

  v11 = 0;
LABEL_8:

  return v11;
}

void __81__SMMedicalIDMO_managedObjectWithMedicalID_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[SMMedicalIDMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  [*(*(*(a1 + 56) + 8) + 40) setAge:{objc_msgSend(*(a1 + 48), "age")}];
  v5 = [*(a1 + 48) allergiesAndRestrictions];
  [*(*(*(a1 + 56) + 8) + 40) setAllergiesAndRestrictions:v5];

  v6 = [*(a1 + 48) bloodType];
  [*(*(*(a1 + 56) + 8) + 40) setBloodType:v6];

  [*(*(*(a1 + 56) + 8) + 40) setHeight:{objc_msgSend(*(a1 + 48), "height")}];
  v7 = [*(a1 + 48) medicalConditions];
  [*(*(*(a1 + 56) + 8) + 40) setMedicalConditions:v7];

  v8 = [*(a1 + 48) medicalNotes];
  [*(*(*(a1 + 56) + 8) + 40) setMedicalNotes:v8];

  v9 = [*(a1 + 48) name];
  [*(*(*(a1 + 56) + 8) + 40) setName:v9];

  v10 = [*(a1 + 48) primaryLanguage];
  [*(*(*(a1 + 56) + 8) + 40) setPrimaryLanguage:v10];

  [*(*(*(a1 + 56) + 8) + 40) setWeight:{objc_msgSend(*(a1 + 48), "weight")}];
  v11 = objc_alloc(MEMORY[0x277CBEB58]);
  v12 = [*(*(*(a1 + 56) + 8) + 40) emergencyContacts];
  v27 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = a1;
  obj = [*(a1 + 48) emergencyContacts];
  v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v28 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = +[SMEmergencyContactMO fetchRequest];
        v18 = MEMORY[0x277CCAC30];
        v19 = [v16 identifier];
        v20 = [v18 predicateWithFormat:@"%K == %@", @"identifier", v19];
        [v17 setPredicate:v20];

        v21 = *(v29 + 40);
        v30 = 0;
        v22 = [v21 executeFetchRequest:v17 error:&v30];
        v23 = v30;
        v24 = [v22 firstObject];
        v25 = [SMEmergencyContactMO managedObjectWithEmergencyContact:v16 managedObject:v24 inManagedObjectContext:*(v29 + 40)];

        if (v25)
        {
          [v27 addObject:v25];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  [*(*(*(v29 + 56) + 8) + 40) setEmergencyContacts:v27];
}

@end