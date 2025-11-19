@interface MOContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isWithinDistanceFromLocation:(id)a3 maxDistance:(double)a4;
- (MOContext)initWithCoder:(id)a3;
- (MOContext)initWithContextIdentifier:(id)a3 contextCreationTimestamp:(id)a4;
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
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"contextStrings"];
    contextStrings = v7->_contextStrings;
    v7->_contextStrings = v11;

    v7->_associatedPatternType = [v4 decodeIntegerForKey:@"associatedPatternType"];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"associatedLocations"];
    associatedLocations = v7->_associatedLocations;
    v7->_associatedLocations = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"associatedContacts"];
    associatedContacts = v7->_associatedContacts;
    v7->_associatedContacts = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"associatedActivities"];
    associatedActivities = v7->_associatedActivities;
    v7->_associatedActivities = v26;

    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"associatedPhotos"];
    associatedPhotos = v7->_associatedPhotos;
    v7->_associatedPhotos = v31;

    v33 = MEMORY[0x277CBEB98];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"associatedTime"];
    associatedTime = v7->_associatedTime;
    v7->_associatedTime = v36;

    v38 = MEMORY[0x277CBEB98];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"associatedMusic"];
    associatedMusic = v7->_associatedMusic;
    v7->_associatedMusic = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedRequestID"];
    associatedRequestID = v7->_associatedRequestID;
    v7->_associatedRequestID = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedBundleID"];
    associatedBundleID = v7->_associatedBundleID;
    v7->_associatedBundleID = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedSuggestionID"];
    associatedSuggestionID = v7->_associatedSuggestionID;
    v7->_associatedSuggestionID = v47;

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
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOContext *)self contextIdentifier];
  v5 = [(MOContext *)self contextCreationTimestamp];
  v6 = [(MOContext *)self associatedRequestID];
  v7 = [(MOContext *)self associatedBundleID];
  v8 = [(MOContext *)self associatedSuggestionID];
  v9 = [(MOContext *)self contextStrings];
  v10 = [v3 stringWithFormat:@"contextIdentifier, %@, contextCreationTimestamp, %@, associated request ID, %@, associated bundle ID, %@, associated suggestion ID, %@, contextStrings, %@, actionType, %lu ", v4, v5, v6, v7, v8, v9, -[MOContext actionType](self, "actionType")];

  return v10;
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
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MOContext *)self associatedLocations];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 location];

  [v6 distanceFromLocation:v9];
  v11 = v10;
  v12 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
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
    v28 = 134219008;
    v29 = v17;
    v30 = 2048;
    v31 = v22;
    v32 = 2048;
    v33 = v24;
    v34 = 2048;
    v35 = v25;
    v36 = 2048;
    v37 = v11;
    _os_log_impl(&dword_25E48F000, v12, OS_LOG_TYPE_INFO, "contextLocation,(%f,%f),targetLocation,(%f,%f),distance,%f", &v28, 0x34u);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v11 <= a4;
}

@end