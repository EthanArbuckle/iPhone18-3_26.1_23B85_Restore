@interface SMEmergencyContact
- (SMEmergencyContact)init;
- (SMEmergencyContact)initWithCoder:(id)a3;
- (SMEmergencyContact)initWithIdentifier:(id)a3 name:(id)a4 phoneNumber:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMEmergencyContact

- (SMEmergencyContact)init
{
  v3 = objc_opt_new();
  v4 = [(SMEmergencyContact *)self initWithIdentifier:v3 name:&stru_287607830 phoneNumber:&stru_287607830];

  return v4;
}

- (SMEmergencyContact)initWithIdentifier:(id)a3 name:(id)a4 phoneNumber:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v17.receiver = self;
    v17.super_class = SMEmergencyContact;
    v12 = [(SMEmergencyContact *)&v17 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_identifier, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (SMEmergencyContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];

  v8 = [(SMEmergencyContact *)self initWithIdentifier:v5 name:v6 phoneNumber:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SMEmergencyContact *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(SMEmergencyContact *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(SMEmergencyContact *)self phoneNumber];
  [v4 encodeObject:v7 forKey:@"phoneNumber"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMEmergencyContact *)self identifier];
  v5 = [(SMEmergencyContact *)self name];
  v6 = [(SMEmergencyContact *)self phoneNumber];
  v7 = [v3 stringWithFormat:@"objectId, %@, name, %@, phoneNumber, %@", v4, v5, v6];

  return v7;
}

@end