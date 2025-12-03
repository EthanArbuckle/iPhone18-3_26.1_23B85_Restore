@interface RTCloudManagedObject
+ (id)notTombstonedPredicate;
+ (id)tombstonedPredicate;
- (BOOL)verifyDependenciesMeetMinimumExpiration:(id)expiration visitedObjectIDs:(id)ds;
- (BOOL)verifyDependencyGraphExpirationDates;
- (NSUUID)identifier;
- (void)awakeFromInsert;
- (void)setIdentifier:(id)identifier;
- (void)willChangeValueForKey:(id)key;
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

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifier = [(RTCloudManagedObject *)self identifier];
  v5 = [identifierCopy isEqual:identifier];

  if ((v5 & 1) == 0)
  {
    [(RTCloudManagedObject *)self willChangeValueForKey:@"identifier"];
    [(RTCloudManagedObject *)self setPrimitiveValue:identifierCopy forKey:@"identifier"];
    [(RTCloudManagedObject *)self didChangeValueForKey:@"identifier"];
    uUIDString = [identifierCopy UUIDString];
    [(RTCloudManagedObject *)self setCkRecordID:uUIDString];
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
  managedObjectContext = [(RTCloudManagedObject *)self managedObjectContext];
  undoManager = [managedObjectContext undoManager];

  if (undoManager)
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
    managedObjectContext2 = [(RTCloudManagedObject *)self managedObjectContext];
    transactionAuthor = [managedObjectContext2 transactionAuthor];
    v8 = [transactionAuthor hasPrefix:@"NSCloudKitMirroringDelegate"];

    if ((v8 & 1) == 0)
    {
      managedObjectContext3 = [(RTCloudManagedObject *)self managedObjectContext];
      currentDevice = [managedObjectContext3 currentDevice];
      [(RTCloudManagedObject *)self setDevice:currentDevice];
    }
  }
}

- (void)willChangeValueForKey:(id)key
{
  v51 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v44.receiver = self;
  v44.super_class = RTCloudManagedObject;
  [(RTCloudManagedObject *)&v44 willChangeValueForKey:keyCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      managedObjectContext = [(RTCloudManagedObject *)self managedObjectContext];
      transactionAuthor = [managedObjectContext transactionAuthor];
      if ([transactionAuthor hasPrefix:@"NSCloudKitMirroringDelegate"])
      {

LABEL_5:
        goto LABEL_27;
      }

      managedObjectContext2 = [(RTCloudManagedObject *)self managedObjectContext];
      transactionAuthor2 = [managedObjectContext2 transactionAuthor];
      v9 = [transactionAuthor2 hasPrefix:@"RTPersistenceStoreImporter"];

      if ((v9 & 1) == 0 && ([keyCopy isEqualToString:@"flags"] & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"expirationDate") & 1) == 0)
      {
        device = [(RTCloudManagedObject *)self device];
        identifier = [device identifier];
        if (identifier)
        {
          v12 = identifier;
          device2 = [(RTCloudManagedObject *)self device];
          identifier2 = [device2 identifier];
          managedObjectContext3 = [(RTCloudManagedObject *)self managedObjectContext];
          currentDevice = [managedObjectContext3 currentDevice];
          identifier3 = [currentDevice identifier];
          v18 = [identifier2 isEqual:identifier3];

          if ((v18 & 1) == 0)
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v48 = keyCopy;
              v49 = 2112;
              selfCopy = self;
              _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Attempting to modify property, %@, on a cloud managed object, %@", buf, 0x16u);
            }

            v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              device3 = [(RTCloudManagedObject *)self device];
              identifier4 = [device3 identifier];
              uUIDString = [identifier4 UUIDString];
              managedObjectContext4 = [(RTCloudManagedObject *)self managedObjectContext];
              currentDevice2 = [managedObjectContext4 currentDevice];
              identifier5 = [currentDevice2 identifier];
              uUIDString2 = [identifier5 UUIDString];
              *buf = 138412546;
              v48 = uUIDString;
              v49 = 2112;
              selfCopy = uUIDString2;
              _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "object device, %@, current device, %@.", buf, 0x16u);
            }

            v43 = MEMORY[0x277CBEAD8];
            v28 = *MEMORY[0x277CBE658];
            v29 = MEMORY[0x277CCACA8];
            device4 = [(RTCloudManagedObject *)self device];
            identifier6 = [device4 identifier];
            if (identifier6)
            {
              v32 = @"YES";
            }

            else
            {
              v32 = @"NO";
            }

            managedObjectContext5 = [(RTCloudManagedObject *)self managedObjectContext];
            currentDevice3 = [managedObjectContext5 currentDevice];
            identifier7 = [currentDevice3 identifier];
            if (identifier7)
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

        managedObjectContext6 = [(RTCloudManagedObject *)self managedObjectContext];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          managedObjectContext = [(RTCloudManagedObject *)self managedObjectContext];
          if ([managedObjectContext allowTombstones] & 1) == 0 && (-[RTCloudManagedObject flags](self, "flags"))
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

- (BOOL)verifyDependenciesMeetMinimumExpiration:(id)expiration visitedObjectIDs:(id)ds
{
  v77 = *MEMORY[0x277D85DE8];
  expirationCopy = expiration;
  dsCopy = ds;
  objectID = [(RTCloudManagedObject *)self objectID];
  v10 = [dsCopy containsObject:objectID];

  if ((v10 & 1) == 0)
  {
    objectID2 = [(RTCloudManagedObject *)self objectID];
    [dsCopy addObject:objectID2];

    selfCopy = self;
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
        identifier = [(RTCloudManagedObject *)self identifier];
        *buf = 138413058;
        v68 = v44;
        v69 = 2112;
        v70 = v46;
        v71 = 2112;
        v72 = identifier;
        v73 = 2112;
        v74 = v13;
        _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "RTCloudManagedObject, %@, object of class %@ with identifier %@  has an expiration date (%@) which is more than 2 weeks away, skipping expiration date verification", buf, 0x2Au);
      }

      LOBYTE(v11) = 1;
      v17 = expirationCopy;
LABEL_38:

      expirationCopy = v17;
      goto LABEL_39;
    }

    v18 = [v13 compare:expirationCopy];
    v11 = v18 != -1;
    if (v18 == -1)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v48 = NSStringFromSelector(a2);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        identifier2 = [(RTCloudManagedObject *)selfCopy identifier];
        *buf = 138413314;
        v68 = v48;
        v69 = 2112;
        v70 = v50;
        v71 = 2112;
        v72 = identifier2;
        v73 = 2112;
        v74 = expirationCopy;
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

        v24 = selfCopy;
        entity = [(RTCloudManagedObject *)selfCopy entity];
        relationshipsByName = [entity relationshipsByName];

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v16 = relationshipsByName;
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
              userInfo = [v29 userInfo];
              v31 = [userInfo objectForKey:@"lifetimeDependency"];
              v32 = [v31 isEqualToString:@"YES"];

              if (v32)
              {
                isToMany = [v29 isToMany];
                v34 = [(RTCloudManagedObject *)v24 valueForKey:v28];
                v35 = v34;
                if (isToMany)
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

                        v11 &= [*(*(&v57 + 1) + 8 * j) verifyDependenciesMeetMinimumExpiration:v17 visitedObjectIDs:dsCopy];
                      }

                      v40 = [v38 countByEnumeratingWithState:&v57 objects:v65 count:16];
                    }

                    while (v40);
                  }

                  v24 = selfCopy;
                }

                else if (v34)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v11 &= [v35 verifyDependenciesMeetMinimumExpiration:v17 visitedObjectIDs:dsCopy];
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
        identifier3 = [(RTCloudManagedObject *)selfCopy identifier];
        *buf = 138412802;
        v68 = v20;
        v69 = 2112;
        v70 = v22;
        v71 = 2112;
        v72 = identifier3;
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
      identifier = [(RTCloudManagedObject *)self identifier];
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = identifier;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "RTCloudManagedObject, %@, verifying expiration dates of dependencies of %@ with identifier %@", &v13, 0x20u);
    }
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = [(RTCloudManagedObject *)self verifyDependenciesMeetMinimumExpiration:distantPast visitedObjectIDs:v10];

  return v11;
}

@end