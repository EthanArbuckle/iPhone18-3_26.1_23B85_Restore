@interface MOContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isWithinDistanceFromLocation:(id)location maxDistance:(double)distance;
- (MOContext)initWithCoder:(id)coder;
- (MOContext)initWithContextIdentifier:(id)identifier contextCreationTimestamp:(id)timestamp;
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
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"contextStrings"];
    contextStrings = v7->_contextStrings;
    v7->_contextStrings = v11;

    v7->_associatedPatternType = [coderCopy decodeIntegerForKey:@"associatedPatternType"];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"associatedLocations"];
    associatedLocations = v7->_associatedLocations;
    v7->_associatedLocations = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"associatedContacts"];
    associatedContacts = v7->_associatedContacts;
    v7->_associatedContacts = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"associatedActivities"];
    associatedActivities = v7->_associatedActivities;
    v7->_associatedActivities = v26;

    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"associatedPhotos"];
    associatedPhotos = v7->_associatedPhotos;
    v7->_associatedPhotos = v31;

    v33 = MEMORY[0x277CBEB98];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"associatedTime"];
    associatedTime = v7->_associatedTime;
    v7->_associatedTime = v36;

    v38 = MEMORY[0x277CBEB98];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"associatedMusic"];
    associatedMusic = v7->_associatedMusic;
    v7->_associatedMusic = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedRequestID"];
    associatedRequestID = v7->_associatedRequestID;
    v7->_associatedRequestID = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedBundleID"];
    associatedBundleID = v7->_associatedBundleID;
    v7->_associatedBundleID = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedSuggestionID"];
    associatedSuggestionID = v7->_associatedSuggestionID;
    v7->_associatedSuggestionID = v47;

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
  v3 = MEMORY[0x277CCACA8];
  contextIdentifier = [(MOContext *)self contextIdentifier];
  contextCreationTimestamp = [(MOContext *)self contextCreationTimestamp];
  associatedRequestID = [(MOContext *)self associatedRequestID];
  associatedBundleID = [(MOContext *)self associatedBundleID];
  associatedSuggestionID = [(MOContext *)self associatedSuggestionID];
  contextStrings = [(MOContext *)self contextStrings];
  v10 = [v3 stringWithFormat:@"contextIdentifier, %@, contextCreationTimestamp, %@, associated request ID, %@, associated bundle ID, %@, associated suggestion ID, %@, contextStrings, %@, actionType, %lu ", contextIdentifier, contextCreationTimestamp, associatedRequestID, associatedBundleID, associatedSuggestionID, contextStrings, -[MOContext actionType](self, "actionType")];

  return v10;
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
  v38 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  associatedLocations = [(MOContext *)self associatedLocations];
  v8 = [associatedLocations objectAtIndexedSubscript:0];
  location = [v8 location];

  [locationCopy distanceFromLocation:location];
  v11 = v10;
  v12 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
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
  return v11 <= distance;
}

@end