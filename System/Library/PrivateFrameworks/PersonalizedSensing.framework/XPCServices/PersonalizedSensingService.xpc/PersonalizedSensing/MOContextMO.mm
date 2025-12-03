@interface MOContextMO
+ (id)managedObjectWithContext:(id)context inManagedObjectContext:(id)objectContext;
+ (void)updateManagedObject:(id)object withContext:(id)context inManagedObjectContext:(id)objectContext;
@end

@implementation MOContextMO

+ (id)managedObjectWithContext:(id)context inManagedObjectContext:(id)objectContext
{
  objectContextCopy = objectContext;
  contextCopy = context;
  v7 = [[MOContextMO alloc] initWithContext:objectContextCopy];
  [MOContextMO updateManagedObject:v7 withContext:contextCopy inManagedObjectContext:objectContextCopy];

  return v7;
}

+ (void)updateManagedObject:(id)object withContext:(id)context inManagedObjectContext:(id)objectContext
{
  objectCopy = object;
  contextCopy = context;
  objectContextCopy = objectContext;
  contextIdentifier = [contextCopy contextIdentifier];
  [objectCopy setContextIdentifier:contextIdentifier];

  contextCreationTimestamp = [contextCopy contextCreationTimestamp];
  [objectCopy setContextCreationTimestamp:contextCreationTimestamp];

  [objectCopy setAssociatedPatternType:{objc_msgSend(contextCopy, "associatedPatternType")}];
  [objectCopy setActionType:{objc_msgSend(contextCopy, "actionType")}];
  associatedRequestID = [contextCopy associatedRequestID];
  [objectCopy setAssociatedRequestID:associatedRequestID];

  associatedBundleID = [contextCopy associatedBundleID];
  [objectCopy setAssociatedBundleID:associatedBundleID];

  associatedSuggestionID = [contextCopy associatedSuggestionID];
  [objectCopy setAssociatedSuggestionID:associatedSuggestionID];

  bundleContentIdentifier = [contextCopy bundleContentIdentifier];
  [objectCopy setBundleContentIdentifier:bundleContentIdentifier];

  [objectCopy setContextStrings:0];
  contextStrings = [contextCopy contextStrings];
  v17 = [contextStrings count];

  if (v17)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    contextStrings2 = [contextCopy contextStrings];
    v19 = [contextStrings2 countByEnumeratingWithState:&v72 objects:v80 count:16];
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
            objc_enumerationMutation(contextStrings2);
          }

          v23 = [MOContextStringMO managedObjectWithContextString:*(*(&v72 + 1) + 8 * v22) inManagedObjectContext:objectContextCopy];
          [objectCopy addContextStringsObject:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [contextStrings2 countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v20);
    }
  }

  [objectCopy setAssociatedLocations:0];
  associatedLocations = [contextCopy associatedLocations];
  v25 = [associatedLocations count];

  if (v25)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    associatedLocations2 = [contextCopy associatedLocations];
    v27 = [associatedLocations2 countByEnumeratingWithState:&v68 objects:v79 count:16];
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
            objc_enumerationMutation(associatedLocations2);
          }

          v31 = [MOContextLocationMetaDataMO managedObjectWithObject:*(*(&v68 + 1) + 8 * v30) inManagedObjectContext:objectContextCopy];
          [objectCopy addAssociatedLocationsObject:v31];

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [associatedLocations2 countByEnumeratingWithState:&v68 objects:v79 count:16];
      }

      while (v28);
    }
  }

  [objectCopy setAssociatedContacts:0];
  associatedContacts = [contextCopy associatedContacts];
  v33 = [associatedContacts count];

  if (v33)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    associatedContacts2 = [contextCopy associatedContacts];
    v35 = [associatedContacts2 countByEnumeratingWithState:&v64 objects:v78 count:16];
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
            objc_enumerationMutation(associatedContacts2);
          }

          v39 = [MOContextContactMetaDataMO managedObjectWithObject:*(*(&v64 + 1) + 8 * v38) inManagedObjectContext:objectContextCopy];
          [objectCopy addAssociatedContactsObject:v39];

          v38 = v38 + 1;
        }

        while (v36 != v38);
        v36 = [associatedContacts2 countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v36);
    }
  }

  [objectCopy setAssociatedTime:0];
  associatedTime = [contextCopy associatedTime];
  v41 = [associatedTime count];

  if (v41)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    associatedTime2 = [contextCopy associatedTime];
    v43 = [associatedTime2 countByEnumeratingWithState:&v60 objects:v77 count:16];
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
            objc_enumerationMutation(associatedTime2);
          }

          v47 = [MOContextTimeMetaDataMO managedObjectWithObject:*(*(&v60 + 1) + 8 * v46) inManagedObjectContext:objectContextCopy];
          [objectCopy addAssociatedTimeObject:v47];

          v46 = v46 + 1;
        }

        while (v44 != v46);
        v44 = [associatedTime2 countByEnumeratingWithState:&v60 objects:v77 count:16];
      }

      while (v44);
    }
  }

  [objectCopy setAssociatedMusic:0];
  associatedMusic = [contextCopy associatedMusic];
  v49 = [associatedMusic count];

  if (v49)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    associatedMusic2 = [contextCopy associatedMusic];
    v51 = [associatedMusic2 countByEnumeratingWithState:&v56 objects:v76 count:16];
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
            objc_enumerationMutation(associatedMusic2);
          }

          v55 = [MOContextMusicMetaDataMO managedObjectWithObject:*(*(&v56 + 1) + 8 * v54) inManagedObjectContext:objectContextCopy];
          [objectCopy addAssociatedMusicObject:v55];

          v54 = v54 + 1;
        }

        while (v52 != v54);
        v52 = [associatedMusic2 countByEnumeratingWithState:&v56 objects:v76 count:16];
      }

      while (v52);
    }
  }
}

@end