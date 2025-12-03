@interface SMEmergencyContact
- (SMEmergencyContact)init;
- (SMEmergencyContact)initWithCoder:(id)coder;
- (SMEmergencyContact)initWithIdentifier:(id)identifier name:(id)name phoneNumber:(id)number;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMEmergencyContact

- (SMEmergencyContact)init
{
  v3 = objc_opt_new();
  v4 = [(SMEmergencyContact *)self initWithIdentifier:v3 name:&stru_287607830 phoneNumber:&stru_287607830];

  return v4;
}

- (SMEmergencyContact)initWithIdentifier:(id)identifier name:(id)name phoneNumber:(id)number
{
  identifierCopy = identifier;
  nameCopy = name;
  numberCopy = number;
  if (identifierCopy)
  {
    v17.receiver = self;
    v17.super_class = SMEmergencyContact;
    v12 = [(SMEmergencyContact *)&v17 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_identifier, identifier);
      objc_storeStrong(p_isa + 2, name);
      objc_storeStrong(p_isa + 3, number);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (SMEmergencyContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];

  v8 = [(SMEmergencyContact *)self initWithIdentifier:v5 name:v6 phoneNumber:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SMEmergencyContact *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  name = [(SMEmergencyContact *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  phoneNumber = [(SMEmergencyContact *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"phoneNumber"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(SMEmergencyContact *)self identifier];
  name = [(SMEmergencyContact *)self name];
  phoneNumber = [(SMEmergencyContact *)self phoneNumber];
  v7 = [v3 stringWithFormat:@"objectId, %@, name, %@, phoneNumber, %@", identifier, name, phoneNumber];

  return v7;
}

@end