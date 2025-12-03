@interface SMMedicalID
- (SMMedicalID)init;
- (SMMedicalID)initWithCoder:(id)coder;
- (SMMedicalID)initWithIdentifier:(id)identifier age:(int64_t)age allergiesAndRestrictions:(id)restrictions bloodType:(id)type height:(int64_t)height medicalConditions:(id)conditions medicalNotes:(id)notes name:(id)self0 primaryLanguage:(id)self1 weight:(int64_t)self2 emergencyContacts:(id)self3;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMMedicalID

- (SMMedicalID)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SMMedicalID *)self initWithIdentifier:v3 age:0 allergiesAndRestrictions:&stru_287607830 bloodType:&stru_287607830 height:0 medicalConditions:&stru_287607830 medicalNotes:&stru_287607830 name:&stru_287607830 primaryLanguage:&stru_287607830 weight:0 emergencyContacts:v4];

  return v5;
}

- (SMMedicalID)initWithIdentifier:(id)identifier age:(int64_t)age allergiesAndRestrictions:(id)restrictions bloodType:(id)type height:(int64_t)height medicalConditions:(id)conditions medicalNotes:(id)notes name:(id)self0 primaryLanguage:(id)self1 weight:(int64_t)self2 emergencyContacts:(id)self3
{
  identifierCopy = identifier;
  restrictionsCopy = restrictions;
  typeCopy = type;
  conditionsCopy = conditions;
  notesCopy = notes;
  nameCopy = name;
  languageCopy = language;
  contactsCopy = contacts;
  if (identifierCopy)
  {
    v33.receiver = self;
    v33.super_class = SMMedicalID;
    v19 = [(SMMedicalID *)&v33 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_identifier, identifier);
      v20->_age = age;
      objc_storeStrong(&v20->_allergiesAndRestrictions, restrictions);
      objc_storeStrong(&v20->_bloodType, type);
      v20->_height = height;
      objc_storeStrong(&v20->_medicalConditions, conditions);
      objc_storeStrong(&v20->_medicalNotes, notes);
      objc_storeStrong(&v20->_name, name);
      objc_storeStrong(&v20->_primaryLanguage, language);
      v20->_weight = weight;
      objc_storeStrong(&v20->_emergencyContacts, contacts);
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (SMMedicalID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v18 = [coderCopy decodeIntForKey:@"age"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allergiesAndRestrictions"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bloodType"];
  v17 = [coderCopy decodeIntForKey:@"height"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"medicalConditions"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"medicalNotes"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryLanguage"];
  v10 = [coderCopy decodeIntForKey:@"weight"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"emergencyContacts"];

  v15 = [(SMMedicalID *)self initWithIdentifier:v19 age:v18 allergiesAndRestrictions:v4 bloodType:v5 height:v17 medicalConditions:v6 medicalNotes:v7 name:v8 primaryLanguage:v9 weight:v10 emergencyContacts:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SMMedicalID *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[SMMedicalID age](self forKey:{"age"), @"age"}];
  allergiesAndRestrictions = [(SMMedicalID *)self allergiesAndRestrictions];
  [coderCopy encodeObject:allergiesAndRestrictions forKey:@"allergiesAndRestrictions"];

  bloodType = [(SMMedicalID *)self bloodType];
  [coderCopy encodeObject:bloodType forKey:@"bloodType"];

  [coderCopy encodeInteger:-[SMMedicalID height](self forKey:{"height"), @"height"}];
  medicalConditions = [(SMMedicalID *)self medicalConditions];
  [coderCopy encodeObject:medicalConditions forKey:@"medicalConditions"];

  medicalNotes = [(SMMedicalID *)self medicalNotes];
  [coderCopy encodeObject:medicalNotes forKey:@"medicalNotes"];

  name = [(SMMedicalID *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  primaryLanguage = [(SMMedicalID *)self primaryLanguage];
  [coderCopy encodeObject:primaryLanguage forKey:@"primaryLanguage"];

  [coderCopy encodeInteger:-[SMMedicalID weight](self forKey:{"weight"), @"weight"}];
  emergencyContacts = [(SMMedicalID *)self emergencyContacts];
  [coderCopy encodeObject:emergencyContacts forKey:@"emergencyContacts"];
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  identifier = [(SMMedicalID *)self identifier];
  v15 = [(SMMedicalID *)self age];
  allergiesAndRestrictions = [(SMMedicalID *)self allergiesAndRestrictions];
  bloodType = [(SMMedicalID *)self bloodType];
  height = [(SMMedicalID *)self height];
  medicalConditions = [(SMMedicalID *)self medicalConditions];
  medicalNotes = [(SMMedicalID *)self medicalNotes];
  name = [(SMMedicalID *)self name];
  primaryLanguage = [(SMMedicalID *)self primaryLanguage];
  weight = [(SMMedicalID *)self weight];
  emergencyContacts = [(SMMedicalID *)self emergencyContacts];
  v13 = [v16 stringWithFormat:@"identifier, %@, age, %li, allergiesAndRestrictions, %@, bloodType, %@, height, %li, medicalConditions, %@, medicalNotes, %@, name, %@, primaryLanguage, %@, weight, %li, emergencyContacts, %@", identifier, v15, allergiesAndRestrictions, bloodType, height, medicalConditions, medicalNotes, name, primaryLanguage, weight, emergencyContacts];

  return v13;
}

@end