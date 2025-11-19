@interface NSManagedObjectContext(RTExtensions)
- (BOOL)deleteAllWithEntityName:()RTExtensions predicate:error:;
- (id)fetchAllWithEntityName:()RTExtensions predicate:sortDescriptors:error:;
@end

@implementation NSManagedObjectContext(RTExtensions)

- (id)fetchAllWithEntityName:()RTExtensions predicate:sortDescriptors:error:
{
  if (a3)
  {
    v10 = MEMORY[0x277CBE428];
    v11 = a5;
    v12 = a4;
    v13 = [v10 fetchRequestWithEntityName:a3];
    [v13 setPredicate:v12];

    [v13 setSortDescriptors:v11];
    [v13 setReturnsObjectsAsFaults:0];
    v17 = 0;
    v14 = [a1 executeFetchRequest:v13 error:&v17];
    v15 = v17;
    if (a6)
    {
      v15 = v15;
      *a6 = v15;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)deleteAllWithEntityName:()RTExtensions predicate:error:
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v9 = MEMORY[0x277CBE428];
  v10 = a4;
  v11 = [v9 fetchRequestWithEntityName:a3];
  [v11 setPredicate:v10];

  [v11 setIncludesSubentities:0];
  v12 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v11];
  [v12 setResultType:2];
  v21 = 0;
  v13 = [a1 executeRequest:v12 error:&v21];
  v14 = v21;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = NSStringFromSelector(a2);
      v20 = [v13 result];
      *buf = 138413058;
      v23 = v19;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v14;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);
    }
  }

  if (a5 && v14)
  {
    v16 = v14;
    *a5 = v14;
  }

  v17 = v14 == 0;

  return v17;
}

@end