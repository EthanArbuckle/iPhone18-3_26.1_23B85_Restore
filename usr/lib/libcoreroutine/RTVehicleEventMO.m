@interface RTVehicleEventMO
+ (id)managedObjectWithVehicleEvent:(id)a3 inManagedObjectContext:(id)a4;
- (id)mapItem;
- (void)setMapItem:(id)a3;
@end

@implementation RTVehicleEventMO

- (id)mapItem
{
  v13 = *MEMORY[0x277D85DE8];
  [(RTVehicleEventMO *)self willAccessValueForKey:@"mapItem"];
  v3 = [(RTVehicleEventMO *)self cachedMapItem];

  if (!v3)
  {
    v4 = [(RTVehicleEventMO *)self mapItemIdentifier];
    v10 = 0;
    v5 = [RTMapItemMO mapItemForIdentifier:v4 error:&v10];
    v6 = v10;
    [(RTVehicleEventMO *)self setCachedMapItem:v5];

    if (v6)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138739971;
        v12 = v6;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Error fulfilling transient property mapItem, %{sensitive}@", buf, 0xCu);
      }
    }
  }

  [(RTVehicleEventMO *)self didAccessValueForKey:@"mapItem"];
  v8 = [(RTVehicleEventMO *)self cachedMapItem];

  return v8;
}

- (void)setMapItem:(id)a3
{
  v4 = a3;
  [(RTVehicleEventMO *)self willChangeValueForKey:@"mapItem"];
  v5 = [v4 identifier];
  [(RTVehicleEventMO *)self setMapItemIdentifier:v5];

  [(RTVehicleEventMO *)self setCachedMapItem:v4];

  [(RTVehicleEventMO *)self didChangeValueForKey:@"mapItem"];
}

+ (id)managedObjectWithVehicleEvent:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = MEMORY[0x277CBE408];
  v6 = a4;
  v7 = a3;
  v8 = +[(NSManagedObject *)RTVehicleEventMO];
  v9 = [v5 insertNewObjectForEntityForName:v8 inManagedObjectContext:v6];

  v10 = [v7 date];
  [v9 setDate:v10];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v7 location];
  [v12 latitude];
  v13 = [v11 numberWithDouble:?];
  [v9 setLocLatitude:v13];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v7 location];
  [v15 longitude];
  v16 = [v14 numberWithDouble:?];
  [v9 setLocLongitude:v16];

  v17 = MEMORY[0x277CCABB0];
  v18 = [v7 location];
  [v18 horizontalUncertainty];
  v19 = [v17 numberWithDouble:?];
  [v9 setLocUncertainty:v19];

  v20 = [v7 location];
  v21 = [v20 date];
  [v9 setLocDate:v21];

  v22 = MEMORY[0x277CCABB0];
  v23 = [v7 location];
  v24 = [v22 numberWithUnsignedInt:{objc_msgSend(v23, "referenceFrame")}];
  [v9 setLocReferenceFrame:v24];

  v25 = [v7 vehicleIdentifier];
  [v9 setVehicleIdentifier:v25];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "userSetLocation")}];
  [v9 setUserSetLocation:v26];

  v27 = [v7 notes];
  [v9 setNotes:v27];

  v28 = [v7 identifier];
  v29 = [v28 UUIDString];
  [v9 setIdentifier:v29];

  v30 = [v7 photo];
  [v9 setPhotoData:v30];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "locationQuality")}];
  [v9 setLocationQuality:v31];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "usualLocation")}];
  [v9 setUsualLocation:v32];

  v33 = [v7 mapItem];

  v34 = [v33 identifier];
  [v9 setMapItemIdentifier:v34];

  return v9;
}

@end