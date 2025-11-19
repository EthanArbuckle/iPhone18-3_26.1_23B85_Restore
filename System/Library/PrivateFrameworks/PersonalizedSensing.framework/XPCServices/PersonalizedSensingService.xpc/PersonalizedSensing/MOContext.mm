@interface MOContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isWithinDistanceFromLocation:(id)a3 maxDistance:(double)a4;
- (MOContext)initWithCoder:(id)a3;
- (MOContext)initWithContextIdentifier:(id)a3 contextCreationTimestamp:(id)a4;
- (MOContext)initWithContextMO:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContext

- (MOContext)initWithContextIdentifier:(id)a3 contextCreationTimestamp:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MOContext;
  v9 = [(MOContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextIdentifier, a3);
    objc_storeStrong(&v10->_contextCreationTimestamp, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  contextIdentifier = self->_contextIdentifier;
  v5 = a3;
  [v5 encodeObject:contextIdentifier forKey:@"contextIndentifier"];
  [v5 encodeObject:self->_contextCreationTimestamp forKey:@"contextCreationTimestamp"];
  [v5 encodeObject:self->_contextStrings forKey:@"contextStrings"];
  [v5 encodeObject:self->_associatedLocations forKey:@"associatedLocations"];
  [v5 encodeObject:self->_associatedContacts forKey:@"associatedContacts"];
  [v5 encodeObject:self->_associatedActivities forKey:@"associatedActivities"];
  [v5 encodeObject:self->_associatedPhotos forKey:@"associatedPhotos"];
  [v5 encodeObject:self->_associatedTime forKey:@"associatedTime"];
  [v5 encodeObject:self->_associatedMusic forKey:@"associatedMusic"];
  [v5 encodeInteger:self->_associatedPatternType forKey:@"associatedPatternType"];
  [v5 encodeObject:self->_associatedRequestID forKey:@"associatedRequestID"];
  [v5 encodeObject:self->_associatedBundleID forKey:@"associatedBundleID"];
  [v5 encodeObject:self->_associatedSuggestionID forKey:@"associatedSuggestionID"];
  [v5 encodeInteger:self->_actionType forKey:@"actionType"];
}

- (MOContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextIndentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextCreationTimestamp"];
  v7 = [(MOContext *)self initWithContextIdentifier:v5 contextCreationTimestamp:v6];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"contextStrings"];
    contextStrings = v7->_contextStrings;
    v7->_contextStrings = v10;

    v7->_associatedPatternType = [v4 decodeIntegerForKey:@"associatedPatternType"];
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"associatedLocations"];
    associatedLocations = v7->_associatedLocations;
    v7->_associatedLocations = v14;

    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"associatedContacts"];
    associatedContacts = v7->_associatedContacts;
    v7->_associatedContacts = v18;

    v20 = objc_opt_class();
    v21 = [NSSet setWithObjects:v20, objc_opt_class(), 0];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"associatedActivities"];
    associatedActivities = v7->_associatedActivities;
    v7->_associatedActivities = v22;

    v24 = objc_opt_class();
    v25 = [NSSet setWithObjects:v24, objc_opt_class(), 0];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"associatedPhotos"];
    associatedPhotos = v7->_associatedPhotos;
    v7->_associatedPhotos = v26;

    v28 = objc_opt_class();
    v29 = [NSSet setWithObjects:v28, objc_opt_class(), 0];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"associatedTime"];
    associatedTime = v7->_associatedTime;
    v7->_associatedTime = v30;

    v32 = objc_opt_class();
    v33 = [NSSet setWithObjects:v32, objc_opt_class(), 0];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"associatedMusic"];
    associatedMusic = v7->_associatedMusic;
    v7->_associatedMusic = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedRequestID"];
    associatedRequestID = v7->_associatedRequestID;
    v7->_associatedRequestID = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedBundleID"];
    associatedBundleID = v7->_associatedBundleID;
    v7->_associatedBundleID = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedSuggestionID"];
    associatedSuggestionID = v7->_associatedSuggestionID;
    v7->_associatedSuggestionID = v40;

    v7->_actionType = [v4 decodeIntegerForKey:@"actionType"];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()];
  contextIdentifier = self->_contextIdentifier;
  v7 = [v4 contextIdentifier];
  LOBYTE(contextIdentifier) = [(NSUUID *)contextIdentifier isEqual:v7];

  contextCreationTimestamp = self->_contextCreationTimestamp;
  v9 = [v4 contextCreationTimestamp];

  LOBYTE(contextCreationTimestamp) = [(NSDate *)contextCreationTimestamp isEqual:v9];
  return v5 & contextIdentifier & contextCreationTimestamp;
}

- (id)description
{
  v3 = [(MOContext *)self contextIdentifier];
  v4 = [(MOContext *)self contextCreationTimestamp];
  v5 = [(MOContext *)self associatedRequestID];
  v6 = [(MOContext *)self associatedBundleID];
  v7 = [(MOContext *)self associatedSuggestionID];
  v8 = [(MOContext *)self contextStrings];
  v9 = [NSString stringWithFormat:@"contextIdentifier, %@, contextCreationTimestamp, %@, associated request ID, %@, associated bundle ID, %@, associated suggestion ID, %@, contextStrings, %@, actionType, %lu ", v3, v4, v5, v6, v7, v8, [(MOContext *)self actionType]];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContext alloc];
  v5 = [(MOContext *)self contextIdentifier];
  v6 = [(MOContext *)self contextCreationTimestamp];
  v7 = [(MOContext *)v4 initWithContextIdentifier:v5 contextCreationTimestamp:v6];

  v8 = [(MOContext *)self contextStrings];
  [(MOContext *)v7 setContextStrings:v8];

  [(MOContext *)v7 setAssociatedPatternType:[(MOContext *)self associatedPatternType]];
  v9 = [(MOContext *)self associatedLocations];
  [(MOContext *)v7 setAssociatedLocations:v9];

  v10 = [(MOContext *)self associatedContacts];
  [(MOContext *)v7 setAssociatedContacts:v10];

  v11 = [(MOContext *)self associatedActivities];
  [(MOContext *)v7 setAssociatedActivities:v11];

  v12 = [(MOContext *)self associatedPhotos];
  [(MOContext *)v7 setAssociatedPhotos:v12];

  v13 = [(MOContext *)self associatedTime];
  [(MOContext *)v7 setAssociatedTime:v13];

  v14 = [(MOContext *)self associatedMusic];
  [(MOContext *)v7 setAssociatedMusic:v14];

  v15 = [(MOContext *)self associatedRequestID];
  [(MOContext *)v7 setAssociatedRequestID:v15];

  v16 = [(MOContext *)self associatedBundleID];
  [(MOContext *)v7 setAssociatedBundleID:v16];

  v17 = [(MOContext *)self associatedSuggestionID];
  [(MOContext *)v7 setAssociatedSuggestionID:v17];

  [(MOContext *)v7 setActionType:[(MOContext *)self actionType]];
  return v7;
}

- (BOOL)isWithinDistanceFromLocation:(id)a3 maxDistance:(double)a4
{
  v6 = a3;
  v7 = [(MOContext *)self associatedLocations];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 location];

  [v6 distanceFromLocation:v9];
  v11 = v10;
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(MOContext *)self associatedLocations];
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v14 location];
    [v15 coordinate];
    v17 = v16;
    v18 = [(MOContext *)self associatedLocations];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = [v19 location];
    [v20 coordinate];
    v22 = v21;
    [v6 coordinate];
    v24 = v23;
    [v6 coordinate];
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

  return v11 <= a4;
}

- (MOContext)initWithContextMO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 contextIdentifier];
    v7 = [v5 contextCreationTimestamp];
    self = [(MOContext *)self initWithContextIdentifier:v6 contextCreationTimestamp:v7];

    -[MOContext setAssociatedPatternType:](self, "setAssociatedPatternType:", [v5 associatedPatternType]);
    -[MOContext setActionType:](self, "setActionType:", [v5 actionType]);
    v8 = [v5 associatedRequestID];
    [(MOContext *)self setAssociatedRequestID:v8];

    v9 = [v5 associatedBundleID];
    [(MOContext *)self setAssociatedBundleID:v9];

    v10 = [v5 associatedSuggestionID];
    [(MOContext *)self setAssociatedSuggestionID:v10];

    v11 = [v5 bundleContentIdentifier];
    [(MOContext *)self setBundleContentIdentifier:v11];

    NSSelectorFromString(@"contextStrings");
    if (objc_opt_respondsToSelector())
    {
      v12 = objc_opt_new();
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v13 = [v5 contextStrings];
      v14 = [v13 countByEnumeratingWithState:&v66 objects:v76 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = [[MOContextString alloc] initWithContextStringMO:*(*(&v66 + 1) + 8 * i)];
            [v12 addObject:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v66 objects:v76 count:16];
        }

        while (v15);
      }

      [(MOContext *)self setContextStrings:v12];
    }

    v19 = _mo_log_facility_get_os_log(&MOLogFacilityContextStore);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v75 = self;
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
      v21 = [v5 associatedLocations];
      v22 = [v21 countByEnumeratingWithState:&v62 objects:v73 count:16];
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
              objc_enumerationMutation(v21);
            }

            v26 = [[MOContextLocationMetaData alloc] initWithLocationMetaDataMO:*(*(&v62 + 1) + 8 * j)];
            [v20 addObject:v26];
          }

          v23 = [v21 countByEnumeratingWithState:&v62 objects:v73 count:16];
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
      v28 = [v5 associatedContacts];
      v29 = [v28 countByEnumeratingWithState:&v58 objects:v72 count:16];
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
              objc_enumerationMutation(v28);
            }

            v33 = [[MOContextContactMetaData alloc] initWithContactMetaDataMO:*(*(&v58 + 1) + 8 * k)];
            [v27 addObject:v33];
          }

          v30 = [v28 countByEnumeratingWithState:&v58 objects:v72 count:16];
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
      v35 = [v5 associatedTime];
      v36 = [v35 countByEnumeratingWithState:&v54 objects:v71 count:16];
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
              objc_enumerationMutation(v35);
            }

            v40 = [[MOContextTimeMetaData alloc] initWithTimeMetaDataMO:*(*(&v54 + 1) + 8 * m)];
            [v34 addObject:v40];
          }

          v37 = [v35 countByEnumeratingWithState:&v54 objects:v71 count:16];
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
      v42 = [v5 associatedMusic];
      v43 = [v42 countByEnumeratingWithState:&v50 objects:v70 count:16];
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
              objc_enumerationMutation(v42);
            }

            v47 = [[MOContextMusicMetaData alloc] initWithMusicMetaDataMO:*(*(&v50 + 1) + 8 * n)];
            [v41 addObject:v47];
          }

          v44 = [v42 countByEnumeratingWithState:&v50 objects:v70 count:16];
        }

        while (v44);
      }

      [(MOContext *)self setAssociatedMusic:v41];
    }

    v48 = self;
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

@end