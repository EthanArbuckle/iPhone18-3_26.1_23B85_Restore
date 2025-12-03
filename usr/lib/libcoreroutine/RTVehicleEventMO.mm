@interface RTVehicleEventMO
+ (id)managedObjectWithVehicleEvent:(id)event inManagedObjectContext:(id)context;
- (id)mapItem;
- (void)setMapItem:(id)item;
@end

@implementation RTVehicleEventMO

- (id)mapItem
{
  v13 = *MEMORY[0x277D85DE8];
  [(RTVehicleEventMO *)self willAccessValueForKey:@"mapItem"];
  cachedMapItem = [(RTVehicleEventMO *)self cachedMapItem];

  if (!cachedMapItem)
  {
    mapItemIdentifier = [(RTVehicleEventMO *)self mapItemIdentifier];
    v10 = 0;
    v5 = [RTMapItemMO mapItemForIdentifier:mapItemIdentifier error:&v10];
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
  cachedMapItem2 = [(RTVehicleEventMO *)self cachedMapItem];

  return cachedMapItem2;
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  [(RTVehicleEventMO *)self willChangeValueForKey:@"mapItem"];
  identifier = [itemCopy identifier];
  [(RTVehicleEventMO *)self setMapItemIdentifier:identifier];

  [(RTVehicleEventMO *)self setCachedMapItem:itemCopy];

  [(RTVehicleEventMO *)self didChangeValueForKey:@"mapItem"];
}

+ (id)managedObjectWithVehicleEvent:(id)event inManagedObjectContext:(id)context
{
  v5 = MEMORY[0x277CBE408];
  contextCopy = context;
  eventCopy = event;
  v8 = +[(NSManagedObject *)RTVehicleEventMO];
  v9 = [v5 insertNewObjectForEntityForName:v8 inManagedObjectContext:contextCopy];

  date = [eventCopy date];
  [v9 setDate:date];

  v11 = MEMORY[0x277CCABB0];
  location = [eventCopy location];
  [location latitude];
  v13 = [v11 numberWithDouble:?];
  [v9 setLocLatitude:v13];

  v14 = MEMORY[0x277CCABB0];
  location2 = [eventCopy location];
  [location2 longitude];
  v16 = [v14 numberWithDouble:?];
  [v9 setLocLongitude:v16];

  v17 = MEMORY[0x277CCABB0];
  location3 = [eventCopy location];
  [location3 horizontalUncertainty];
  v19 = [v17 numberWithDouble:?];
  [v9 setLocUncertainty:v19];

  location4 = [eventCopy location];
  date2 = [location4 date];
  [v9 setLocDate:date2];

  v22 = MEMORY[0x277CCABB0];
  location5 = [eventCopy location];
  v24 = [v22 numberWithUnsignedInt:{objc_msgSend(location5, "referenceFrame")}];
  [v9 setLocReferenceFrame:v24];

  vehicleIdentifier = [eventCopy vehicleIdentifier];
  [v9 setVehicleIdentifier:vehicleIdentifier];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "userSetLocation")}];
  [v9 setUserSetLocation:v26];

  notes = [eventCopy notes];
  [v9 setNotes:notes];

  identifier = [eventCopy identifier];
  uUIDString = [identifier UUIDString];
  [v9 setIdentifier:uUIDString];

  photo = [eventCopy photo];
  [v9 setPhotoData:photo];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "locationQuality")}];
  [v9 setLocationQuality:v31];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "usualLocation")}];
  [v9 setUsualLocation:v32];

  mapItem = [eventCopy mapItem];

  identifier2 = [mapItem identifier];
  [v9 setMapItemIdentifier:identifier2];

  return v9;
}

@end