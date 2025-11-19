@interface MOContextMO
+ (id)managedObjectWithContext:(id)a3 inManagedObjectContext:(id)a4;
+ (void)updateManagedObject:(id)a3 withContext:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation MOContextMO

+ (id)managedObjectWithContext:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOContextMO alloc] initWithContext:v5];
  [MOContextMO updateManagedObject:v7 withContext:v6 inManagedObjectContext:v5];

  return v7;
}

+ (void)updateManagedObject:(id)a3 withContext:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 contextIdentifier];
  [v7 setContextIdentifier:v10];

  v11 = [v8 contextCreationTimestamp];
  [v7 setContextCreationTimestamp:v11];

  [v7 setAssociatedPatternType:{objc_msgSend(v8, "associatedPatternType")}];
  [v7 setActionType:{objc_msgSend(v8, "actionType")}];
  v12 = [v8 associatedRequestID];
  [v7 setAssociatedRequestID:v12];

  v13 = [v8 associatedBundleID];
  [v7 setAssociatedBundleID:v13];

  v14 = [v8 associatedSuggestionID];
  [v7 setAssociatedSuggestionID:v14];

  v15 = [v8 bundleContentIdentifier];
  [v7 setBundleContentIdentifier:v15];

  [v7 setContextStrings:0];
  v16 = [v8 contextStrings];
  v17 = [v16 count];

  if (v17)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v18 = [v8 contextStrings];
    v19 = [v18 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v73;
      do
      {
        v22 = 0;
        do
        {
          if (*v73 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [MOContextStringMO managedObjectWithContextString:*(*(&v72 + 1) + 8 * v22) inManagedObjectContext:v9];
          [v7 addContextStringsObject:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v20);
    }
  }

  [v7 setAssociatedLocations:0];
  v24 = [v8 associatedLocations];
  v25 = [v24 count];

  if (v25)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v26 = [v8 associatedLocations];
    v27 = [v26 countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v69;
      do
      {
        v30 = 0;
        do
        {
          if (*v69 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [MOContextLocationMetaDataMO managedObjectWithObject:*(*(&v68 + 1) + 8 * v30) inManagedObjectContext:v9];
          [v7 addAssociatedLocationsObject:v31];

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v68 objects:v79 count:16];
      }

      while (v28);
    }
  }

  [v7 setAssociatedContacts:0];
  v32 = [v8 associatedContacts];
  v33 = [v32 count];

  if (v33)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v34 = [v8 associatedContacts];
    v35 = [v34 countByEnumeratingWithState:&v64 objects:v78 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v65;
      do
      {
        v38 = 0;
        do
        {
          if (*v65 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [MOContextContactMetaDataMO managedObjectWithObject:*(*(&v64 + 1) + 8 * v38) inManagedObjectContext:v9];
          [v7 addAssociatedContactsObject:v39];

          v38 = v38 + 1;
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v36);
    }
  }

  [v7 setAssociatedTime:0];
  v40 = [v8 associatedTime];
  v41 = [v40 count];

  if (v41)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v42 = [v8 associatedTime];
    v43 = [v42 countByEnumeratingWithState:&v60 objects:v77 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v61;
      do
      {
        v46 = 0;
        do
        {
          if (*v61 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [MOContextTimeMetaDataMO managedObjectWithObject:*(*(&v60 + 1) + 8 * v46) inManagedObjectContext:v9];
          [v7 addAssociatedTimeObject:v47];

          v46 = v46 + 1;
        }

        while (v44 != v46);
        v44 = [v42 countByEnumeratingWithState:&v60 objects:v77 count:16];
      }

      while (v44);
    }
  }

  [v7 setAssociatedMusic:0];
  v48 = [v8 associatedMusic];
  v49 = [v48 count];

  if (v49)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v50 = [v8 associatedMusic];
    v51 = [v50 countByEnumeratingWithState:&v56 objects:v76 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v57;
      do
      {
        v54 = 0;
        do
        {
          if (*v57 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = [MOContextMusicMetaDataMO managedObjectWithObject:*(*(&v56 + 1) + 8 * v54) inManagedObjectContext:v9];
          [v7 addAssociatedMusicObject:v55];

          v54 = v54 + 1;
        }

        while (v52 != v54);
        v52 = [v50 countByEnumeratingWithState:&v56 objects:v76 count:16];
      }

      while (v52);
    }
  }
}

@end