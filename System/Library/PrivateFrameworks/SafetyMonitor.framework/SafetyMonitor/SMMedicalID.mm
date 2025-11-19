@interface SMMedicalID
- (SMMedicalID)init;
- (SMMedicalID)initWithCoder:(id)a3;
- (SMMedicalID)initWithIdentifier:(id)a3 age:(int64_t)a4 allergiesAndRestrictions:(id)a5 bloodType:(id)a6 height:(int64_t)a7 medicalConditions:(id)a8 medicalNotes:(id)a9 name:(id)a10 primaryLanguage:(id)a11 weight:(int64_t)a12 emergencyContacts:(id)a13;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMMedicalID

- (SMMedicalID)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SMMedicalID *)self initWithIdentifier:v3 age:0 allergiesAndRestrictions:&stru_287607830 bloodType:&stru_287607830 height:0 medicalConditions:&stru_287607830 medicalNotes:&stru_287607830 name:&stru_287607830 primaryLanguage:&stru_287607830 weight:0 emergencyContacts:v4];

  return v5;
}

- (SMMedicalID)initWithIdentifier:(id)a3 age:(int64_t)a4 allergiesAndRestrictions:(id)a5 bloodType:(id)a6 height:(int64_t)a7 medicalConditions:(id)a8 medicalNotes:(id)a9 name:(id)a10 primaryLanguage:(id)a11 weight:(int64_t)a12 emergencyContacts:(id)a13
{
  v18 = a3;
  v32 = a5;
  v31 = a6;
  v30 = a8;
  v29 = a9;
  v28 = a10;
  v27 = a11;
  v26 = a13;
  if (v18)
  {
    v33.receiver = self;
    v33.super_class = SMMedicalID;
    v19 = [(SMMedicalID *)&v33 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_identifier, a3);
      v20->_age = a4;
      objc_storeStrong(&v20->_allergiesAndRestrictions, a5);
      objc_storeStrong(&v20->_bloodType, a6);
      v20->_height = a7;
      objc_storeStrong(&v20->_medicalConditions, a8);
      objc_storeStrong(&v20->_medicalNotes, a9);
      objc_storeStrong(&v20->_name, a10);
      objc_storeStrong(&v20->_primaryLanguage, a11);
      v20->_weight = a12;
      objc_storeStrong(&v20->_emergencyContacts, a13);
    }

    self = v20;
    v21 = self;
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v21 = 0;
  }

  return v21;
}

- (SMMedicalID)initWithCoder:(id)a3
{
  v3 = a3;
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v18 = [v3 decodeIntForKey:@"age"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"allergiesAndRestrictions"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bloodType"];
  v17 = [v3 decodeIntForKey:@"height"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"medicalConditions"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"medicalNotes"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"primaryLanguage"];
  v10 = [v3 decodeIntForKey:@"weight"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"emergencyContacts"];

  v15 = [(SMMedicalID *)self initWithIdentifier:v19 age:v18 allergiesAndRestrictions:v4 bloodType:v5 height:v17 medicalConditions:v6 medicalNotes:v7 name:v8 primaryLanguage:v9 weight:v10 emergencyContacts:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SMMedicalID *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [v4 encodeInteger:-[SMMedicalID age](self forKey:{"age"), @"age"}];
  v6 = [(SMMedicalID *)self allergiesAndRestrictions];
  [v4 encodeObject:v6 forKey:@"allergiesAndRestrictions"];

  v7 = [(SMMedicalID *)self bloodType];
  [v4 encodeObject:v7 forKey:@"bloodType"];

  [v4 encodeInteger:-[SMMedicalID height](self forKey:{"height"), @"height"}];
  v8 = [(SMMedicalID *)self medicalConditions];
  [v4 encodeObject:v8 forKey:@"medicalConditions"];

  v9 = [(SMMedicalID *)self medicalNotes];
  [v4 encodeObject:v9 forKey:@"medicalNotes"];

  v10 = [(SMMedicalID *)self name];
  [v4 encodeObject:v10 forKey:@"name"];

  v11 = [(SMMedicalID *)self primaryLanguage];
  [v4 encodeObject:v11 forKey:@"primaryLanguage"];

  [v4 encodeInteger:-[SMMedicalID weight](self forKey:{"weight"), @"weight"}];
  v12 = [(SMMedicalID *)self emergencyContacts];
  [v4 encodeObject:v12 forKey:@"emergencyContacts"];
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = [(SMMedicalID *)self identifier];
  v15 = [(SMMedicalID *)self age];
  v4 = [(SMMedicalID *)self allergiesAndRestrictions];
  v5 = [(SMMedicalID *)self bloodType];
  v6 = [(SMMedicalID *)self height];
  v7 = [(SMMedicalID *)self medicalConditions];
  v8 = [(SMMedicalID *)self medicalNotes];
  v9 = [(SMMedicalID *)self name];
  v10 = [(SMMedicalID *)self primaryLanguage];
  v11 = [(SMMedicalID *)self weight];
  v12 = [(SMMedicalID *)self emergencyContacts];
  v13 = [v16 stringWithFormat:@"identifier, %@, age, %li, allergiesAndRestrictions, %@, bloodType, %@, height, %li, medicalConditions, %@, medicalNotes, %@, name, %@, primaryLanguage, %@, weight, %li, emergencyContacts, %@", v3, v15, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end