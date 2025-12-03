@interface MOContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isWithinDistanceFromLocation:(id)location maxDistance:(double)distance;
- (MOContext)initWithCoder:(id)coder;
- (MOContext)initWithContextIdentifier:(id)identifier contextCreationTimestamp:(id)timestamp;
- (MOContext)initWithContextMO:(id)o;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContext

- (MOContext)initWithContextIdentifier:(id)identifier contextCreationTimestamp:(id)timestamp
{
  identifierCopy = identifier;
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = MOContext;
  v9 = [(MOContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextIdentifier, identifier);
    objc_storeStrong(&v10->_contextCreationTimestamp, timestamp);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  contextIdentifier = self->_contextIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contextIdentifier forKey:@"contextIndentifier"];
  [coderCopy encodeObject:self->_contextCreationTimestamp forKey:@"contextCreationTimestamp"];
  [coderCopy encodeObject:self->_contextStrings forKey:@"contextStrings"];
  [coderCopy encodeObject:self->_associatedLocations forKey:@"associatedLocations"];
  [coderCopy encodeObject:self->_associatedContacts forKey:@"associatedContacts"];
  [coderCopy encodeObject:self->_associatedActivities forKey:@"associatedActivities"];
  [coderCopy encodeObject:self->_associatedPhotos forKey:@"associatedPhotos"];
  [coderCopy encodeObject:self->_associatedTime forKey:@"associatedTime"];
  [coderCopy encodeObject:self->_associatedMusic forKey:@"associatedMusic"];
  [coderCopy encodeInteger:self->_associatedPatternType forKey:@"associatedPatternType"];
  [coderCopy encodeObject:self->_associatedRequestID forKey:@"associatedRequestID"];
  [coderCopy encodeObject:self->_associatedBundleID forKey:@"associatedBundleID"];
  [coderCopy encodeObject:self->_associatedSuggestionID forKey:@"associatedSuggestionID"];
  [coderCopy encodeInteger:self->_actionType forKey:@"actionType"];
}

- (MOContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextIndentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextCreationTimestamp"];
  v7 = [(MOContext *)self initWithContextIdentifier:v5 contextCreationTimestamp:v6];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"contextStrings"];
    contextStrings = v7->_contextStrings;
    v7->_contextStrings = v10;

    v7->_associatedPatternType = [coderCopy decodeIntegerForKey:@"associatedPatternType"];
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"associatedLocations"];
    associatedLocations = v7->_associatedLocations;
    v7->_associatedLocations = v14;

    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"associatedContacts"];
    associatedContacts = v7->_associatedContacts;
    v7->_associatedContacts = v18;

    v20 = objc_opt_class();
    v21 = [NSSet setWithObjects:v20, objc_opt_class(), 0];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"associatedActivities"];
    associatedActivities = v7->_associatedActivities;
    v7->_associatedActivities = v22;

    v24 = objc_opt_class();
    v25 = [NSSet setWithObjects:v24, objc_opt_class(), 0];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"associatedPhotos"];
    associatedPhotos = v7->_associatedPhotos;
    v7->_associatedPhotos = v26;

    v28 = objc_opt_class();
    v29 = [NSSet setWithObjects:v28, objc_opt_class(), 0];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"associatedTime"];
    associatedTime = v7->_associatedTime;
    v7->_associatedTime = v30;

    v32 = objc_opt_class();
    v33 = [NSSet setWithObjects:v32, objc_opt_class(), 0];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"associatedMusic"];
    associatedMusic = v7->_associatedMusic;
    v7->_associatedMusic = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedRequestID"];
    associatedRequestID = v7->_associatedRequestID;
    v7->_associatedRequestID = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedBundleID"];
    associatedBundleID = v7->_associatedBundleID;
    v7->_associatedBundleID = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedSuggestionID"];
    associatedSuggestionID = v7->_associatedSuggestionID;
    v7->_associatedSuggestionID = v40;

    v7->_actionType = [coderCopy decodeIntegerForKey:@"actionType"];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()];
  contextIdentifier = self->_contextIdentifier;
  contextIdentifier = [equalCopy contextIdentifier];
  LOBYTE(contextIdentifier) = [(NSUUID *)contextIdentifier isEqual:contextIdentifier];

  contextCreationTimestamp = self->_contextCreationTimestamp;
  contextCreationTimestamp = [equalCopy contextCreationTimestamp];

  LOBYTE(contextCreationTimestamp) = [(NSDate *)contextCreationTimestamp isEqual:contextCreationTimestamp];
  return v5 & contextIdentifier & contextCreationTimestamp;
}

- (id)description
{
  contextIdentifier = [(MOContext *)self contextIdentifier];
  contextCreationTimestamp = [(MOContext *)self contextCreationTimestamp];
  associatedRequestID = [(MOContext *)self associatedRequestID];
  associatedBundleID = [(MOContext *)self associatedBundleID];
  associatedSuggestionID = [(MOContext *)self associatedSuggestionID];
  contextStrings = [(MOContext *)self contextStrings];
  v9 = [NSString stringWithFormat:@"contextIdentifier, %@, contextCreationTimestamp, %@, associated request ID, %@, associated bundle ID, %@, associated suggestion ID, %@, contextStrings, %@, actionType, %lu ", contextIdentifier, contextCreationTimestamp, associatedRequestID, associatedBundleID, associatedSuggestionID, contextStrings, [(MOContext *)self actionType]];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContext alloc];
  contextIdentifier = [(MOContext *)self contextIdentifier];
  contextCreationTimestamp = [(MOContext *)self contextCreationTimestamp];
  v7 = [(MOContext *)v4 initWithContextIdentifier:contextIdentifier contextCreationTimestamp:contextCreationTimestamp];

  contextStrings = [(MOContext *)self contextStrings];
  [(MOContext *)v7 setContextStrings:contextStrings];

  [(MOContext *)v7 setAssociatedPatternType:[(MOContext *)self associatedPatternType]];
  associatedLocations = [(MOContext *)self associatedLocations];
  [(MOContext *)v7 setAssociatedLocations:associatedLocations];

  associatedContacts = [(MOContext *)self associatedContacts];
  [(MOContext *)v7 setAssociatedContacts:associatedContacts];

  associatedActivities = [(MOContext *)self associatedActivities];
  [(MOContext *)v7 setAssociatedActivities:associatedActivities];

  associatedPhotos = [(MOContext *)self associatedPhotos];
  [(MOContext *)v7 setAssociatedPhotos:associatedPhotos];

  associatedTime = [(MOContext *)self associatedTime];
  [(MOContext *)v7 setAssociatedTime:associatedTime];

  associatedMusic = [(MOContext *)self associatedMusic];
  [(MOContext *)v7 setAssociatedMusic:associatedMusic];

  associatedRequestID = [(MOContext *)self associatedRequestID];
  [(MOContext *)v7 setAssociatedRequestID:associatedRequestID];

  associatedBundleID = [(MOContext *)self associatedBundleID];
  [(MOContext *)v7 setAssociatedBundleID:associatedBundleID];

  associatedSuggestionID = [(MOContext *)self associatedSuggestionID];
  [(MOContext *)v7 setAssociatedSuggestionID:associatedSuggestionID];

  [(MOContext *)v7 setActionType:[(MOContext *)self actionType]];
  return v7;
}

- (BOOL)isWithinDistanceFromLocation:(id)location maxDistance:(double)distance
{
  locationCopy = location;
  associatedLocations = [(MOContext *)self associatedLocations];
  v8 = [associatedLocations objectAtIndexedSubscript:0];
  location = [v8 location];

  [locationCopy distanceFromLocation:location];
  v11 = v10;
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    associatedLocations2 = [(MOContext *)self associatedLocations];
    v14 = [associatedLocations2 objectAtIndexedSubscript:0];
    location2 = [v14 location];
    [location2 coordinate];
    v17 = v16;
    associatedLocations3 = [(MOContext *)self associatedLocations];
    v19 = [associatedLocations3 objectAtIndexedSubscript:0];
    location3 = [v19 location];
    [location3 coordinate];
    v22 = v21;
    [locationCopy coordinate];
    v24 = v23;
    [locationCopy coordinate];
    v27 = 134219008;
    v28 = v17;
    v29 = 2048;
    v30 = v22;
    v31 = 2048;
    v32 = v24;
    v33 = 2048;
    v34 = v25;
    v35 = 2048;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "contextLocation,(%f,%f),targetLocation,(%f,%f),distance,%f", &v27, 0x34u);
  }

  return v11 <= distance;
}

- (MOContext)initWithContextMO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (oCopy)
  {
    contextIdentifier = [oCopy contextIdentifier];
    contextCreationTimestamp = [v5 contextCreationTimestamp];
    self = [(MOContext *)self initWithContextIdentifier:contextIdentifier contextCreationTimestamp:contextCreationTimestamp];

    -[MOContext setAssociatedPatternType:](self, "setAssociatedPatternType:", [v5 associatedPatternType]);
    -[MOContext setActionType:](self, "setActionType:", [v5 actionType]);
    associatedRequestID = [v5 associatedRequestID];
    [(MOContext *)self setAssociatedRequestID:associatedRequestID];

    associatedBundleID = [v5 associatedBundleID];
    [(MOContext *)self setAssociatedBundleID:associatedBundleID];

    associatedSuggestionID = [v5 associatedSuggestionID];
    [(MOContext *)self setAssociatedSuggestionID:associatedSuggestionID];

    bundleContentIdentifier = [v5 bundleContentIdentifier];
    [(MOContext *)self setBundleContentIdentifier:bundleContentIdentifier];

    NSSelectorFromString(@"contextStrings");
    if (objc_opt_respondsToSelector())
    {
      v12 = objc_opt_new();
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      contextStrings = [v5 contextStrings];
      v14 = [contextStrings countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v67;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v67 != v16)
            {
              objc_enumerationMutation(contextStrings);
            }

            v18 = [[MOContextString alloc] initWithContextStringMO:*(*(&v66 + 1) + 8 * i)];
            [v12 addObject:v18];
          }

          v15 = [contextStrings countByEnumeratingWithState:&v66 objects:v76 count:16];
        }

        while (v15);
      }

      [(MOContext *)self setContextStrings:v12];
    }

    v19 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "fetch context, %@", buf, 0xCu);
    }

    NSSelectorFromString(@"associatedLocations");
    if (objc_opt_respondsToSelector())
    {
      v20 = objc_opt_new();
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      associatedLocations = [v5 associatedLocations];
      v22 = [associatedLocations countByEnumeratingWithState:&v62 objects:v73 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v63;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v63 != v24)
            {
              objc_enumerationMutation(associatedLocations);
            }

            v26 = [[MOContextLocationMetaData alloc] initWithLocationMetaDataMO:*(*(&v62 + 1) + 8 * j)];
            [v20 addObject:v26];
          }

          v23 = [associatedLocations countByEnumeratingWithState:&v62 objects:v73 count:16];
        }

        while (v23);
      }

      [(MOContext *)self setAssociatedLocations:v20];
    }

    NSSelectorFromString(@"associatedContacts");
    if (objc_opt_respondsToSelector())
    {
      v27 = objc_opt_new();
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      associatedContacts = [v5 associatedContacts];
      v29 = [associatedContacts countByEnumeratingWithState:&v58 objects:v72 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v59;
        do
        {
          for (k = 0; k != v30; k = k + 1)
          {
            if (*v59 != v31)
            {
              objc_enumerationMutation(associatedContacts);
            }

            v33 = [[MOContextContactMetaData alloc] initWithContactMetaDataMO:*(*(&v58 + 1) + 8 * k)];
            [v27 addObject:v33];
          }

          v30 = [associatedContacts countByEnumeratingWithState:&v58 objects:v72 count:16];
        }

        while (v30);
      }

      [(MOContext *)self setAssociatedContacts:v27];
    }

    NSSelectorFromString(@"associatedTime");
    if (objc_opt_respondsToSelector())
    {
      v34 = objc_opt_new();
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      associatedTime = [v5 associatedTime];
      v36 = [associatedTime countByEnumeratingWithState:&v54 objects:v71 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v55;
        do
        {
          for (m = 0; m != v37; m = m + 1)
          {
            if (*v55 != v38)
            {
              objc_enumerationMutation(associatedTime);
            }

            v40 = [[MOContextTimeMetaData alloc] initWithTimeMetaDataMO:*(*(&v54 + 1) + 8 * m)];
            [v34 addObject:v40];
          }

          v37 = [associatedTime countByEnumeratingWithState:&v54 objects:v71 count:16];
        }

        while (v37);
      }

      [(MOContext *)self setAssociatedTime:v34];
    }

    NSSelectorFromString(@"associatedMusic");
    if (objc_opt_respondsToSelector())
    {
      v41 = objc_opt_new();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      associatedMusic = [v5 associatedMusic];
      v43 = [associatedMusic countByEnumeratingWithState:&v50 objects:v70 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v51;
        do
        {
          for (n = 0; n != v44; n = n + 1)
          {
            if (*v51 != v45)
            {
              objc_enumerationMutation(associatedMusic);
            }

            v47 = [[MOContextMusicMetaData alloc] initWithMusicMetaDataMO:*(*(&v50 + 1) + 8 * n)];
            [v41 addObject:v47];
          }

          v44 = [associatedMusic countByEnumeratingWithState:&v50 objects:v70 count:16];
        }

        while (v44);
      }

      [(MOContext *)self setAssociatedMusic:v41];
    }

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

@end