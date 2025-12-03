@interface RTPersistenceStoreImporter
- (BOOL)enumerateRelationshipsInEntityDescription:(id)description sourceObject:(id)object error:(id *)error;
- (BOOL)establishEntityRelationships:(id *)relationships;
- (BOOL)import:(id *)import;
- (BOOL)importEntityRowsAndAttributes:(id *)attributes;
- (BOOL)updateRelationshipWithEntity:(id)entity relationshipDescription:(id)description relationshipIdentifiers:(id)identifiers context:(id)context error:(id *)error;
- (RTPersistenceStoreImporter)initWithManagedObjectModel:(id)model configuration:(id)configuration sourceStore:(id)store sourceCoordinator:(id)coordinator destinationStore:(id)destinationStore destinationCoordinator:(id)destinationCoordinator;
- (id)entityDescriptions;
- (id)fetchDestinationObjectWithEntityDescription:(id)description predicate:(id)predicate context:(id)context error:(id *)error;
- (id)managedObjectContextTargetingType:(int64_t)type;
@end

@implementation RTPersistenceStoreImporter

- (RTPersistenceStoreImporter)initWithManagedObjectModel:(id)model configuration:(id)configuration sourceStore:(id)store sourceCoordinator:(id)coordinator destinationStore:(id)destinationStore destinationCoordinator:(id)destinationCoordinator
{
  v45 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  configurationCopy = configuration;
  storeCopy = store;
  coordinatorCopy = coordinator;
  destinationStoreCopy = destinationStore;
  destinationCoordinatorCopy = destinationCoordinator;
  v35 = destinationCoordinatorCopy;
  if (!modelCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: managedObjectModel";
LABEL_26:
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_27;
  }

  if (!storeCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: sourceStore";
    goto LABEL_26;
  }

  if (!coordinatorCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: sourceCoordinator";
    goto LABEL_26;
  }

  if (!destinationStoreCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: destinationStore";
    goto LABEL_26;
  }

  if (!destinationCoordinatorCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "Invalid parameter not satisfying: destinationCoordinator";
      goto LABEL_26;
    }

LABEL_27:

    goto LABEL_28;
  }

  v42.receiver = self;
  v42.super_class = RTPersistenceStoreImporter;
  v19 = [(RTPersistenceStoreImporter *)&v42 init];
  self = v19;
  if (!v19)
  {
    goto LABEL_32;
  }

  v33 = storeCopy;
  v34 = configurationCopy;
  objc_storeStrong(&v19->_model, model);
  objc_storeStrong(&self->_configuration, configuration);
  objc_storeStrong(&self->_sourceStore, store);
  objc_storeStrong(&self->_sourceCoordinator, coordinator);
  objc_storeStrong(&self->_destinationStore, destinationStore);
  objc_storeStrong(&self->_destinationCoordinator, destinationCoordinator);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  persistentStores = [(NSPersistentStoreCoordinator *)self->_destinationCoordinator persistentStores];
  v21 = [persistentStores countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(persistentStores);
        }

        v25 = *(*(&v38 + 1) + 8 * i);
        v26 = [v25 URL];
        v27 = [(RTPersistenceStore *)self->_destinationStore URL];
        v28 = [v26 isEqual:v27];

        if (v28)
        {
          objc_storeStrong(&self->_affectedStore, v25);
          goto LABEL_31;
        }
      }

      v22 = [persistentStores countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:

  storeCopy = v33;
  configurationCopy = v34;
  if (self->_affectedStore)
  {
LABEL_32:
    self = self;
    selfCopy = self;
    goto LABEL_29;
  }

LABEL_28:
  selfCopy = 0;
LABEL_29:

  return selfCopy;
}

- (id)managedObjectContextTargetingType:(int64_t)type
{
  v5 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  type = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%ld", @"RTPersistenceStoreImporter", type];
  [v5 setTransactionAuthor:type];

  if (type)
  {
    if (type != 1)
    {
      __break(1u);
      return result;
    }

    v8 = 40;
  }

  else
  {
    v8 = 24;
  }

  [v5 setPersistentStoreCoordinator:*(&self->super.isa + v8)];

  return v5;
}

- (id)entityDescriptions
{
  v3 = [(NSString *)self->_configuration length];
  model = self->_model;
  if (v3)
  {
    [(NSManagedObjectModel *)model entitiesForConfiguration:self->_configuration];
  }

  else
  {
    [(NSManagedObjectModel *)model entities];
  }
  v5 = ;

  return v5;
}

- (BOOL)importEntityRowsAndAttributes:(id *)attributes
{
  v5 = [(RTPersistenceStoreImporter *)self managedObjectContextTargetingType:0];
  v6 = [(RTPersistenceStoreImporter *)self managedObjectContextTargetingType:1];
  v7 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__RTPersistenceStoreImporter_importEntityRowsAndAttributes___block_invoke;
  v18[3] = &unk_2788CBEA8;
  v18[4] = self;
  v8 = v5;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  v10 = v6;
  v21 = v10;
  [v8 performBlockAndWait:v18];
  if ([(NSString *)self->_configuration isEqual:@"Cloud"])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__RTPersistenceStoreImporter_importEntityRowsAndAttributes___block_invoke_63;
    v15[3] = &unk_2788C76F8;
    v15[4] = self;
    v16 = v10;
    v17 = v9;
    [v16 performBlockAndWait:v15];
  }

  v11 = _RTSafeArray();
  v12 = _RTMultiErrorCreate();

  if (attributes)
  {
    v13 = v12;
    *attributes = v12;
  }

  return v12 == 0;
}

void __60__RTPersistenceStoreImporter_importEntityRowsAndAttributes___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [*(a1 + 32) entityDescriptions];
  v26 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
  if (v26)
  {
    v25 = *v35;
    v23 = *MEMORY[0x277CCA450];
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v34 + 1) + 8 * i);
        v4 = [v3 managedObjectClassName];
        v5 = [NSClassFromString(v4) conformsToProtocol:&unk_2845C2DD0];

        if (v5)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
            {
              v7 = [v3 name];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v7;
              _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "starting import for entity type, %@", &buf, 0xCu);
            }
          }

          v8 = objc_alloc(MEMORY[0x277CBE428]);
          v9 = [v3 name];
          v10 = [v8 initWithEntityName:v9];

          [v10 setResultType:2];
          [v10 setFetchLimit:100];
          v11 = 0;
          v12 = 0;
          *&buf = 0;
          *(&buf + 1) = &buf;
          v43 = 0x3032000000;
          v44 = __Block_byref_object_copy__180;
          v45 = __Block_byref_object_dispose__180;
          v46 = 0;
          do
          {
            v13 = *(a1 + 40);
            v33 = v12;
            v14 = [v13 executeFetchRequest:v10 error:&v33];
            v15 = v33;

            if (v15)
            {
              v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v18 = [v3 name];
                *v38 = 138412546;
                v39 = v18;
                v40 = 2112;
                v41 = v15;
                _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "error while fetching entities with type %@, to import, %@", v38, 0x16u);
              }

              [*(a1 + 48) addObject:v15];
            }

            else if ([v14 count])
            {
              v17 = *(a1 + 56);
              v27[0] = MEMORY[0x277D85DD0];
              v27[1] = 3221225472;
              v27[2] = __60__RTPersistenceStoreImporter_importEntityRowsAndAttributes___block_invoke_60;
              v27[3] = &unk_2788CE378;
              v28 = v14;
              v29 = v3;
              v30 = *(a1 + 56);
              p_buf = &buf;
              v31 = *(a1 + 48);
              [v17 performBlockAndWait:v27];
            }

            [v10 setFetchOffset:{objc_msgSend(v10, "fetchOffset") + objc_msgSend(v14, "count")}];
            v11 = v14;
            v12 = v15;
          }

          while ([v14 count]);

          _Block_object_dispose(&buf, 8);
        }

        else
        {
          v47 = v23;
          v19 = MEMORY[0x277CCACA8];
          v20 = [v3 name];
          v21 = [v19 stringWithFormat:@"Unable to import type %@ because it doesn't conform to RTPersistenceImportable.", v20];
          v48 = v21;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

          v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceStoreImporterErrorDomain" code:1 userInfo:v10];
          v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v15;
            _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
    }

    while (v26);
  }
}

void __60__RTPersistenceStoreImporter_importEntityRowsAndAttributes___block_invoke_60(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      *buf = 134217984;
      v13 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "inserting %lu entities", buf, 0xCu);
    }
  }

  v4 = [objc_alloc(MEMORY[0x277CBE370]) initWithEntity:*(a1 + 40) objects:*(a1 + 32)];
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) name];
      v10 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "error while inserting entities with type %@, to import, %@", buf, 0x16u);
    }

    [*(a1 + 56) addObject:*(*(*(a1 + 64) + 8) + 40)];
  }
}

void __60__RTPersistenceStoreImporter_importEntityRowsAndAttributes___block_invoke_63(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) entityDescriptions];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    v5 = *MEMORY[0x277CBE128];
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [objc_alloc(MEMORY[0x277CBE380]) initWithEntity:*(*(&v15 + 1) + 8 * v6)];
        v19 = v5;
        v8 = [MEMORY[0x277CBEB68] null];
        v20 = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v7 setPropertiesToUpdate:v9];

        v10 = *(a1 + 40);
        v14 = 0;
        v11 = [v10 executeRequest:v7 error:&v14];
        v12 = v14;
        if (v12)
        {
          [*(a1 + 48) addObject:v12];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v3);
  }
}

- (BOOL)enumerateRelationshipsInEntityDescription:(id)description sourceObject:(id)object error:(id *)error
{
  descriptionCopy = description;
  objectCopy = object;
  v10 = objectCopy;
  if (!descriptionCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entityDescription", buf, 2u);
    }

    if (error)
    {
      v21 = @"entityDescription";
LABEL_14:
      _RTErrorInvalidParameterCreate(v21);
      *error = v19 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  if (!objectCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sourceManagedObject", buf, 2u);
    }

    if (error)
    {
      v21 = @"sourceManagedObject";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v11 = [(RTPersistenceStoreImporter *)self managedObjectContextTargetingType:0];
  v12 = [(RTPersistenceStoreImporter *)self managedObjectContextTargetingType:1];
  v13 = objc_opt_new();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91__RTPersistenceStoreImporter_enumerateRelationshipsInEntityDescription_sourceObject_error___block_invoke;
  v24[3] = &unk_2788CAD48;
  v25 = v10;
  v26 = descriptionCopy;
  v27 = v12;
  selfCopy = self;
  v14 = v13;
  v29 = v14;
  v15 = v12;
  [v11 performBlockAndWait:v24];
  v16 = _RTSafeArray();
  v17 = _RTMultiErrorCreate();

  if (error)
  {
    v18 = v17;
    *error = v17;
  }

  v19 = v17 == 0;

LABEL_16:
  return v19;
}

void __91__RTPersistenceStoreImporter_enumerateRelationshipsInEntityDescription_sourceObject_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(sel_identifier);
  v4 = [v2 valueForKey:v3];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) name];
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "enumerating relationships for entity type, %@, entity ID, %@", buf, 0x16u);
    }
  }

  v7 = [*(a1 + 40) relationshipsByName];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__RTPersistenceStoreImporter_enumerateRelationshipsInEntityDescription_sourceObject_error___block_invoke_73;
  v9[3] = &unk_2788D2298;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = v4;
  v13 = *(a1 + 56);
  v14 = *(a1 + 40);
  v15 = *(a1 + 64);
  v8 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __91__RTPersistenceStoreImporter_enumerateRelationshipsInEntityDescription_sourceObject_error___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v5;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "processing relationship %@ name", buf, 0xCu);
    }
  }

  v8 = [v6 isToMany];
  v9 = [*(a1 + 32) valueForKey:v5];
  v10 = v9;
  if (v8)
  {
    if ([v9 count])
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = NSStringFromSelector(sel_identifier);
      v13 = [v11 stringWithFormat:@"@distinctUnionOfObjects.%@", v12];

      v14 = [v10 valueForKeyPath:v13];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __91__RTPersistenceStoreImporter_enumerateRelationshipsInEntityDescription_sourceObject_error___block_invoke_77;
      v34[3] = &unk_2788D2270;
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v26 = *(a1 + 56);
      v17 = v26.i64[1];
      v18.i64[0] = *(a1 + 40);
      v18.i64[1] = v16;
      v36 = vextq_s8(v26, v18, 8uLL);
      v35 = vextq_s8(v18, v26, 8uLL);
      v37 = *(a1 + 72);
      v38 = v6;
      v39 = v14;
      v19 = v14;
      [v15 performBlockAndWait:v34];

LABEL_10:
    }
  }

  else if (v9)
  {
    v20 = NSStringFromSelector(sel_identifier);
    v21 = [v10 valueForKey:v20];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __91__RTPersistenceStoreImporter_enumerateRelationshipsInEntityDescription_sourceObject_error___block_invoke_2;
    v28[3] = &unk_2788D2270;
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v27 = *(a1 + 56);
    v24 = v27.i64[1];
    v25.i64[0] = *(a1 + 40);
    v25.i64[1] = v23;
    v29 = vextq_s8(v25, v27, 8uLL);
    v30 = vextq_s8(v27, v25, 8uLL);
    v31 = *(a1 + 72);
    v32 = v21;
    v33 = v6;
    v13 = v21;
    [v22 performBlockAndWait:v28];

    v19 = v29.i64[0];
    goto LABEL_10;
  }
}

void __91__RTPersistenceStoreImporter_enumerateRelationshipsInEntityDescription_sourceObject_error___block_invoke_77(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = NSStringFromSelector(sel_identifier);
  v4 = [v2 predicateWithFormat:@"%K = %@", v3, *(a1 + 32)];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v17 = 0;
  v8 = [v5 fetchDestinationObjectWithEntityDescription:v6 predicate:v4 context:v7 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = v9;
    if (v9)
    {
      [*(a1 + 64) addObject:v9];
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 72);
      v13 = *(a1 + 80);
      v14 = *(a1 + 56);
      v16 = 0;
      [v11 updateRelationshipWithEntity:v8 relationshipDescription:v12 relationshipIdentifiers:v13 context:v14 error:&v16];
      v15 = v16;
      if (v15)
      {
        [*(a1 + 64) addObject:v15];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void __91__RTPersistenceStoreImporter_enumerateRelationshipsInEntityDescription_sourceObject_error___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = NSStringFromSelector(sel_identifier);
  v4 = [v2 predicateWithFormat:@"%K = %@", v3, *(a1 + 32)];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v17 = 0;
  v8 = [v5 fetchDestinationObjectWithEntityDescription:v6 predicate:v4 context:v7 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = v9;
    if (v9)
    {
      [*(a1 + 64) addObject:v9];
    }

    else
    {
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:{*(a1 + 72), 0}];
      v12 = *(a1 + 40);
      v13 = *(a1 + 80);
      v14 = *(a1 + 56);
      v16 = 0;
      [v12 updateRelationshipWithEntity:v8 relationshipDescription:v13 relationshipIdentifiers:v11 context:v14 error:&v16];
      v15 = v16;
      if (v15)
      {
        [*(a1 + 64) addObject:v15];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)updateRelationshipWithEntity:(id)entity relationshipDescription:(id)description relationshipIdentifiers:(id)identifiers context:(id)context error:(id *)error
{
  entityCopy = entity;
  descriptionCopy = description;
  identifiersCopy = identifiers;
  contextCopy = context;
  v16 = contextCopy;
  if (!entityCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entity", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_25;
    }

    v24 = @"entity";
    goto LABEL_24;
  }

  if (!descriptionCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relationshipDescription", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_25;
    }

    v24 = @"relationshipDescription";
    goto LABEL_24;
  }

  if (!identifiersCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relationshipIdentifiers", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_25;
    }

    v24 = @"relationshipIdentifiers";
LABEL_24:
    _RTErrorInvalidParameterCreate(v24);
    *error = v22 = 0;
    goto LABEL_26;
  }

  if (!contextCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    if (error)
    {
      v24 = @"context";
      goto LABEL_24;
    }

LABEL_25:
    v22 = 0;
    goto LABEL_26;
  }

  v17 = objc_opt_new();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __121__RTPersistenceStoreImporter_updateRelationshipWithEntity_relationshipDescription_relationshipIdentifiers_context_error___block_invoke;
  v29[3] = &unk_2788D22C0;
  v30 = descriptionCopy;
  v31 = identifiersCopy;
  selfCopy = self;
  v33 = v16;
  v18 = v17;
  v34 = v18;
  v35 = entityCopy;
  [v33 performBlockAndWait:v29];
  v19 = _RTSafeArray();
  v20 = _RTMultiErrorCreate();

  if (error)
  {
    v21 = v20;
    *error = v20;
  }

  v22 = v20 == 0;

LABEL_26:
  return v22;
}

void __121__RTPersistenceStoreImporter_updateRelationshipWithEntity_relationshipDescription_relationshipIdentifiers_context_error___block_invoke(uint64_t a1)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = [*(a1 + 32) destinationEntity];
  v4 = [v3 name];
  v5 = [v2 initWithEntityName:v4];

  v6 = MEMORY[0x277CCAC30];
  v7 = NSStringFromSelector(sel_identifier);
  v8 = [v6 predicateWithFormat:@"%K IN (%@)", v7, *(a1 + 40)];
  [v5 setPredicate:v8];

  v51[0] = *(*(a1 + 48) + 8);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  [v5 setAffectedStores:v9];

  v10 = *(a1 + 56);
  v43 = 0;
  v11 = [v10 executeFetchRequest:v5 error:&v43];
  v12 = v43;
  if (v12)
  {
    [*(a1 + 64) addObject:v12];
LABEL_20:

    return;
  }

  v37 = v5;
  if ([*(a1 + 32) isToMany])
  {
    v13 = [MEMORY[0x277CBEB98] setWithArray:v11];
LABEL_7:
    v14 = v13;
    v15 = *(a1 + 72);
    v16 = [*(a1 + 32) name];
    v35 = v14;
    [v15 setValue:v14 forKey:v16];

    v17 = [*(a1 + 32) inverseRelationship];
    v18 = [v17 name];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v11;
    v19 = v11;
    v20 = [v19 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v39 + 1) + 8 * i);
          v25 = objc_autoreleasePoolPush();
          v26 = [*(a1 + 32) inverseRelationship];
          v27 = [v26 isToMany];

          if (v27)
          {
            v28 = [v24 valueForKey:v18];
            v29 = [v28 mutableCopy];
            [v29 addObject:*(a1 + 72)];
            [v24 setValue:v29 forKey:v18];
          }

          else
          {
            [v24 setValue:*(a1 + 72) forKey:v18];
          }

          objc_autoreleasePoolPop(v25);
        }

        v21 = [v19 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v21);
    }

    v30 = *(a1 + 56);
    v38 = 0;
    [v30 save:&v38];
    v31 = v38;
    if (v31)
    {
      [*(a1 + 64) addObject:v31];
    }

    v12 = 0;
    v5 = v37;
    v11 = v36;
    goto LABEL_20;
  }

  if ([v11 count] < 2)
  {
    v13 = [v11 firstObject];
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [v5 entityName];
      v34 = [v5 predicate];
      *buf = 138412802;
      v46 = v33;
      v47 = 2112;
      v48 = v34;
      v49 = 2112;
      v50 = v11;
      _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@ %@ %@", buf, 0x20u);
    }
  }

  __break(1u);
}

- (BOOL)establishEntityRelationships:(id *)relationships
{
  v5 = objc_opt_new();
  v6 = [(RTPersistenceStoreImporter *)self managedObjectContextTargetingType:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__RTPersistenceStoreImporter_establishEntityRelationships___block_invoke;
  v13[3] = &unk_2788C76F8;
  v13[4] = self;
  v14 = v6;
  v7 = v5;
  v15 = v7;
  v8 = v6;
  [v8 performBlockAndWait:v13];
  v9 = _RTSafeArray();
  v10 = _RTMultiErrorCreate();

  if (relationships)
  {
    v11 = v10;
    *relationships = v10;
  }

  return v10 == 0;
}

void __59__RTPersistenceStoreImporter_establishEntityRelationships___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = [*(a1 + 32) entityDescriptions];
  v3 = [v2 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v37;
    v29 = *MEMORY[0x277CCA450];
    v27 = *v37;
    v28 = v2;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v8 = [v7 managedObjectClassName];
        v9 = [NSClassFromString(v8) conformsToProtocol:&unk_2845C2DD0];

        if (v9)
        {
          v10 = objc_alloc(MEMORY[0x277CBE428]);
          v11 = [v7 name];
          v12 = [v10 initWithEntityName:v11];

          [v12 setFetchBatchSize:100];
          v13 = *(a1 + 40);
          v35 = 0;
          v14 = [v13 executeFetchRequest:v12 error:&v35];
          v15 = v35;
          if (v15)
          {
            v16 = v15;
            [*(a1 + 48) addObject:v15];
          }

          else
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v14 = v14;
            v20 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v32;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v32 != v22)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v24 = *(*(&v31 + 1) + 8 * j);
                  v25 = *(a1 + 32);
                  v30 = 0;
                  [v25 enumerateRelationshipsInEntityDescription:v7 sourceObject:v24 error:&v30];
                  v26 = v30;
                  if (v26)
                  {
                    [*(a1 + 48) addObject:v26];
                  }
                }

                v21 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
              }

              while (v21);
            }

            v16 = 0;
            v5 = v27;
            v2 = v28;
          }
        }

        else
        {
          v43 = v29;
          v17 = MEMORY[0x277CCACA8];
          v18 = [v7 name];
          v19 = [v17 stringWithFormat:@"Unable to re-establish entity relationships for type %@ because it doesn't conform to RTPersistenceImportable.", v18];
          v44 = v19;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

          v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceStoreImporterErrorDomain" code:1 userInfo:v12];
          v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v42 = v16;
            _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v4);
  }
}

- (id)fetchDestinationObjectWithEntityDescription:(id)description predicate:(id)predicate context:(id)context error:(id *)error
{
  descriptionCopy = description;
  predicateCopy = predicate;
  contextCopy = context;
  v13 = contextCopy;
  if (!descriptionCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entityDescription", buf, 2u);
    }

    if (error)
    {
      v16 = @"entityDescription";
LABEL_14:
      _RTErrorInvalidParameterCreate(v16);
      *error = v14 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (!contextCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    if (error)
    {
      v16 = @"context";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  *buf = 0;
  v33 = buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__180;
  v36 = __Block_byref_object_dispose__180;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__180;
  v30 = __Block_byref_object_dispose__180;
  v31 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __98__RTPersistenceStoreImporter_fetchDestinationObjectWithEntityDescription_predicate_context_error___block_invoke;
  v19[3] = &unk_2788CC4B8;
  v20 = descriptionCopy;
  v21 = predicateCopy;
  selfCopy = self;
  v23 = v13;
  v24 = &v26;
  v25 = buf;
  [v23 performBlockAndWait:v19];
  if (error)
  {
    *error = v27[5];
  }

  v14 = *(v33 + 5);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(buf, 8);

LABEL_16:

  return v14;
}

void __98__RTPersistenceStoreImporter_fetchDestinationObjectWithEntityDescription_predicate_context_error___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = [*(a1 + 32) name];
  v4 = [v2 initWithEntityName:v3];

  [v4 setPredicate:*(a1 + 40)];
  v25[0] = *(*(a1 + 48) + 8);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v4 setAffectedStores:v5];

  v6 = *(a1 + 56);
  v18 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v18];
  v8 = v18;
  v9 = v18;
  if ([v7 count] != 1)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = [v7 count];
      v15 = [v4 entityName];
      v16 = [v4 predicate];
      v17 = [v16 predicateFormat];
      *buf = 134218498;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v17;
      _os_log_fault_impl(&dword_2304B3000, v13, OS_LOG_TYPE_FAULT, "%lu objects returned for fetch request. type %@, predicate %@", buf, 0x20u);
    }

    __break(1u);
  }

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
  }

  v10 = [v7 firstObject];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (BOOL)import:(id *)import
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v5 = [(RTPersistenceStoreImporter *)self importEntityRowsAndAttributes:&v18];
  v6 = v18;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "error while importing entities, %@", buf, 0xCu);
    }

    v10 = 0;
    goto LABEL_10;
  }

  v17 = 0;
  v8 = [(RTPersistenceStoreImporter *)self establishEntityRelationships:&v17];
  v9 = v17;
  v10 = v9;
  if (!v8 || (v11 = 0, v9))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "error while re-establishing relationships during import, %@", buf, 0xCu);
    }

LABEL_10:

    v11 = v10;
  }

  v13 = _RTSafeArray();
  v14 = _RTMultiErrorCreate();

  if (import)
  {
    v15 = v14;
    *import = v14;
  }

  return v14 == 0;
}

@end