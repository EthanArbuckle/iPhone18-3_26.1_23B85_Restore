@interface RTCloudManagedObject
+ (id)notTombstonedPredicate;
+ (id)tombstonedPredicate;
- (BOOL)verifyDependenciesMeetMinimumExpiration:(id)a3 visitedObjectIDs:(id)a4;
- (BOOL)verifyDependencyGraphExpirationDates;
- (NSUUID)identifier;
- (void)awakeFromInsert;
- (void)setIdentifier:(id)a3;
- (void)willChangeValueForKey:(id)a3;
@end

@implementation RTCloudManagedObject

- (NSUUID)identifier
{
  [(RTCloudManagedObject *)self willAccessValueForKey:@"identifier"];
  v3 = [(RTCloudManagedObject *)self primitiveValueForKey:@"identifier"];
  [(RTCloudManagedObject *)self didAccessValueForKey:@"identifier"];

  return v3;
}

+ (id)notTombstonedPredicate
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == NULL", @"flags"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K & %lu) != %lu", @"flags", 1, 1];
  v4 = MEMORY[0x277CCA920];
  v8[0] = v2;
  v8[1] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [v4 orPredicateWithSubpredicates:v5];

  return v6;
}

- (void)setIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(RTCloudManagedObject *)self identifier];
  v5 = [v7 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(RTCloudManagedObject *)self willChangeValueForKey:@"identifier"];
    [(RTCloudManagedObject *)self setPrimitiveValue:v7 forKey:@"identifier"];
    [(RTCloudManagedObject *)self didChangeValueForKey:@"identifier"];
    v6 = [v7 UUIDString];
    [(RTCloudManagedObject *)self setCkRecordID:v6];
  }
}

+ (id)tombstonedPredicate
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL", @"flags"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K & %lu) == %lu", @"flags", 1, 1];
  v4 = MEMORY[0x277CCA920];
  v8[0] = v2;
  v8[1] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [v4 andPredicateWithSubpredicates:v5];

  return v6;
}

- (void)awakeFromInsert
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = RTCloudManagedObject;
  [(RTCloudManagedObject *)&v11 awakeFromInsert];
  v3 = [(RTCloudManagedObject *)self managedObjectContext];
  v4 = [v3 undoManager];

  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTCloudManagedObject awakeFromInsert]";
      v14 = 1024;
      v15 = 96;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Managed object contexts inserting subclasses of RTCloudManagedObject cannot have an undo manager. (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [(RTCloudManagedObject *)self managedObjectContext];
    v7 = [v6 transactionAuthor];
    v8 = [v7 hasPrefix:@"NSCloudKitMirroringDelegate"];

    if ((v8 & 1) == 0)
    {
      v9 = [(RTCloudManagedObject *)self managedObjectContext];
      v10 = [v9 currentDevice];
      [(RTCloudManagedObject *)self setDevice:v10];
    }
  }
}

- (void)willChangeValueForKey:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = RTCloudManagedObject;
  [(RTCloudManagedObject *)&v44 willChangeValueForKey:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [(RTCloudManagedObject *)self managedObjectContext];
      v6 = [v5 transactionAuthor];
      if ([v6 hasPrefix:@"NSCloudKitMirroringDelegate"])
      {

LABEL_5:
        goto LABEL_27;
      }

      v7 = [(RTCloudManagedObject *)self managedObjectContext];
      v8 = [v7 transactionAuthor];
      v9 = [v8 hasPrefix:@"RTPersistenceStoreImporter"];

      if ((v9 & 1) == 0 && ([v4 isEqualToString:@"flags"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"expirationDate") & 1) == 0)
      {
        v10 = [(RTCloudManagedObject *)self device];
        v11 = [v10 identifier];
        if (v11)
        {
          v12 = v11;
          v13 = [(RTCloudManagedObject *)self device];
          v14 = [v13 identifier];
          v15 = [(RTCloudManagedObject *)self managedObjectContext];
          v16 = [v15 currentDevice];
          v17 = [v16 identifier];
          v18 = [v14 isEqual:v17];

          if ((v18 & 1) == 0)
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v48 = v4;
              v49 = 2112;
              v50 = self;
              _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Attempting to modify property, %@, on a cloud managed object, %@", buf, 0x16u);
            }

            v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = [(RTCloudManagedObject *)self device];
              v22 = [v21 identifier];
              v23 = [v22 UUIDString];
              v24 = [(RTCloudManagedObject *)self managedObjectContext];
              v25 = [v24 currentDevice];
              v26 = [v25 identifier];
              v27 = [v26 UUIDString];
              *buf = 138412546;
              v48 = v23;
              v49 = 2112;
              v50 = v27;
              _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "object device, %@, current device, %@.", buf, 0x16u);
            }

            v43 = MEMORY[0x277CBEAD8];
            v28 = *MEMORY[0x277CBE658];
            v29 = MEMORY[0x277CCACA8];
            v30 = [(RTCloudManagedObject *)self device];
            v31 = [v30 identifier];
            if (v31)
            {
              v32 = @"YES";
            }

            else
            {
              v32 = @"NO";
            }

            v33 = [(RTCloudManagedObject *)self managedObjectContext];
            v34 = [v33 currentDevice];
            v35 = [v34 identifier];
            if (v35)
            {
              v36 = @"YES";
            }

            else
            {
              v36 = @"NO";
            }

            v37 = [v29 stringWithFormat:@"Attempting to modify property on a cloud managed object, device id nonnull, %@, managed object id nonnull, %@", v32, v36];
            v45 = @"RTPersistenceOpearationsErrorDomain";
            v46 = &unk_2845A03B0;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            v39 = [v43 exceptionWithName:v28 reason:v37 userInfo:v38];
            v40 = v39;

            objc_exception_throw(v39);
          }
        }

        else
        {
        }

        v41 = [(RTCloudManagedObject *)self managedObjectContext];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v5 = [(RTCloudManagedObject *)self managedObjectContext];
          if ([v5 allowTombstones] & 1) == 0 && (-[RTCloudManagedObject flags](self, "flags"))
          {
            +[RTException dontOpenDeadInside];
          }

          goto LABEL_5;
        }
      }
    }
  }

LABEL_27:
}

- (BOOL)verifyDependenciesMeetMinimumExpiration:(id)a3 visitedObjectIDs:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(RTCloudManagedObject *)self objectID];
  v10 = [v8 containsObject:v9];

  if ((v10 & 1) == 0)
  {
    v12 = [(RTCloudManagedObject *)self objectID];
    [v8 addObject:v12];

    v53 = self;
    v13 = [(RTCloudManagedObject *)self valueForKey:@"expirationDate"];
    v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1209600.0];
    v15 = [v13 compare:v14];

    if (v15 == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        LOBYTE(v11) = 1;
LABEL_39:

        goto LABEL_40;
      }

      v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v44 = NSStringFromSelector(a2);
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = [(RTCloudManagedObject *)self identifier];
        *buf = 138413058;
        v68 = v44;
        v69 = 2112;
        v70 = v46;
        v71 = 2112;
        v72 = v47;
        v73 = 2112;
        v74 = v13;
        _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "RTCloudManagedObject, %@, object of class %@ with identifier %@  has an expiration date (%@) which is more than 2 weeks away, skipping expiration date verification", buf, 0x2Au);
      }

      LOBYTE(v11) = 1;
      v17 = v7;
LABEL_38:

      v7 = v17;
      goto LABEL_39;
    }

    v18 = [v13 compare:v7];
    v11 = v18 != -1;
    if (v18 == -1)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v48 = NSStringFromSelector(a2);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = [(RTCloudManagedObject *)v53 identifier];
        *buf = 138413314;
        v68 = v48;
        v69 = 2112;
        v70 = v50;
        v71 = 2112;
        v72 = v51;
        v73 = 2112;
        v74 = v7;
        v75 = 2112;
        v76 = v13;
        _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "RTCloudManagedObject, %@, object of class %@ with identifier %@ fails dependent's keep alive check; minimum expected expiration date, %@, actual expiration date, %@", buf, 0x34u);
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_16:
        v52 = v13;
        v17 = v13;

        v24 = v53;
        v25 = [(RTCloudManagedObject *)v53 entity];
        v26 = [v25 relationshipsByName];

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v16 = v26;
        v56 = [v16 countByEnumeratingWithState:&v61 objects:v66 count:16];
        if (v56)
        {
          v54 = *v62;
          v55 = v16;
          do
          {
            for (i = 0; i != v56; ++i)
            {
              if (*v62 != v54)
              {
                objc_enumerationMutation(v16);
              }

              v28 = *(*(&v61 + 1) + 8 * i);
              v29 = [v16 objectForKeyedSubscript:v28];
              v30 = [v29 userInfo];
              v31 = [v30 objectForKey:@"lifetimeDependency"];
              v32 = [v31 isEqualToString:@"YES"];

              if (v32)
              {
                v33 = [v29 isToMany];
                v34 = [(RTCloudManagedObject *)v24 valueForKey:v28];
                v35 = v34;
                if (v33)
                {
                  v36 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_144];
                  v37 = [v35 filteredSetUsingPredicate:v36];

                  v59 = 0u;
                  v60 = 0u;
                  v57 = 0u;
                  v58 = 0u;
                  v38 = v37;
                  v39 = [v38 countByEnumeratingWithState:&v57 objects:v65 count:16];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = *v58;
                    do
                    {
                      for (j = 0; j != v40; ++j)
                      {
                        if (*v58 != v41)
                        {
                          objc_enumerationMutation(v38);
                        }

                        v11 &= [*(*(&v57 + 1) + 8 * j) verifyDependenciesMeetMinimumExpiration:v17 visitedObjectIDs:v8];
                      }

                      v40 = [v38 countByEnumeratingWithState:&v57 objects:v65 count:16];
                    }

                    while (v40);
                  }

                  v24 = v53;
                }

                else if (v34)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v11 &= [v35 verifyDependenciesMeetMinimumExpiration:v17 visitedObjectIDs:v8];
                  }
                }
              }

              v16 = v55;
            }

            v56 = [v55 countByEnumeratingWithState:&v61 objects:v66 count:16];
          }

          while (v56);
        }

        v13 = v52;
        goto LABEL_38;
      }

      v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = NSStringFromSelector(a2);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [(RTCloudManagedObject *)v53 identifier];
        *buf = 138412802;
        v68 = v20;
        v69 = 2112;
        v70 = v22;
        v71 = 2112;
        v72 = v23;
        _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "RTCloudManagedObject, %@, object of class %@ with identifier %@ passes dependent's keep alive check", buf, 0x20u);
      }
    }

    goto LABEL_16;
  }

  LOBYTE(v11) = 1;
LABEL_40:

  return v11 & 1;
}

uint64_t __81__RTCloudManagedObject_verifyDependenciesMeetMinimumExpiration_visitedObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)verifyDependencyGraphExpirationDates
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [(RTCloudManagedObject *)self identifier];
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "RTCloudManagedObject, %@, verifying expiration dates of dependencies of %@ with identifier %@", &v13, 0x20u);
    }
  }

  v9 = [MEMORY[0x277CBEAA8] distantPast];
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = [(RTCloudManagedObject *)self verifyDependenciesMeetMinimumExpiration:v9 visitedObjectIDs:v10];

  return v11;
}

@end