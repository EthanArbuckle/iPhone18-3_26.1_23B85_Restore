@interface MOContextContactMetaData
- (MOContextContactMetaData)init;
- (MOContextContactMetaData)initWithCoder:(id)a3;
- (MOContextContactMetaData)initWithContactIdentifier:(id)a3 contactName:(id)a4 mdEntityIdentifier:(id)a5;
- (MOContextContactMetaData)initWithContactName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextContactMetaData

- (MOContextContactMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextContactMetaData;
  return [(MOContextContactMetaData *)&v3 init];
}

- (MOContextContactMetaData)initWithContactIdentifier:(id)a3 contactName:(id)a4 mdEntityIdentifier:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MOContextContactMetaData;
  v12 = [(MOContextContactMetaData *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contextContactIdentifier, a3);
    objc_storeStrong(&v13->_contactName, a4);
    objc_storeStrong(&v13->_mdEntityIdentifier, a5);
    v14 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_25E48F000, v14, OS_LOG_TYPE_INFO, "ContactMetaData contextContactIdentifier,%@,contactName,%@,mdEntityIdentifier,%@", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (MOContextContactMetaData)initWithContactName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MOContextContactMetaData;
  v6 = [(MOContextContactMetaData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactName, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextContactMetaData alloc];
  v5 = [(MOContextContactMetaData *)self contextContactIdentifier];
  v6 = [(MOContextContactMetaData *)self contactName];
  v7 = [(MOContextContactMetaData *)self mdEntityIdentifier];
  v8 = [(MOContextContactMetaData *)v4 initWithContactIdentifier:v5 contactName:v6 mdEntityIdentifier:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  contactName = self->_contactName;
  v5 = a3;
  [v5 encodeObject:contactName forKey:@"contactName"];
  [v5 encodeObject:self->_contextContactIdentifier forKey:@"contextContactIdentifier"];
  [v5 encodeObject:self->_mdEntityIdentifier forKey:@"mdEntityIdentifier"];
}

- (MOContextContactMetaData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextContactIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mdEntityIdentifier"];

  v8 = [(MOContextContactMetaData *)self initWithContactIdentifier:v6 contactName:v5 mdEntityIdentifier:v7];
  return v8;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(MOContextContactMetaData *)self contactName];
  v4 = [v3 mask];
  v5 = [v2 stringWithFormat:@"contact name, %@", v4];

  return v5;
}

@end