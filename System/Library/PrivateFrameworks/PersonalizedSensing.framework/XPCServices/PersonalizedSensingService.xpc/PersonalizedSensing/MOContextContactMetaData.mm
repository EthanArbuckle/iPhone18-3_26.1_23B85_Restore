@interface MOContextContactMetaData
- (MOContextContactMetaData)init;
- (MOContextContactMetaData)initWithCoder:(id)coder;
- (MOContextContactMetaData)initWithContactIdentifier:(id)identifier contactName:(id)name mdEntityIdentifier:(id)entityIdentifier;
- (MOContextContactMetaData)initWithContactMetaDataMO:(id)o;
- (MOContextContactMetaData)initWithContactName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextContactMetaData

- (MOContextContactMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextContactMetaData;
  return [(MOContextContactMetaData *)&v3 init];
}

- (MOContextContactMetaData)initWithContactIdentifier:(id)identifier contactName:(id)name mdEntityIdentifier:(id)entityIdentifier
{
  identifierCopy = identifier;
  nameCopy = name;
  entityIdentifierCopy = entityIdentifier;
  v16.receiver = self;
  v16.super_class = MOContextContactMetaData;
  v12 = [(MOContextContactMetaData *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contextContactIdentifier, identifier);
    objc_storeStrong(&v13->_contactName, name);
    objc_storeStrong(&v13->_mdEntityIdentifier, entityIdentifier);
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = nameCopy;
      v21 = 2112;
      v22 = entityIdentifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "ContactMetaData contextContactIdentifier,%@,contactName,%@,mdEntityIdentifier,%@", buf, 0x20u);
    }
  }

  return v13;
}

- (MOContextContactMetaData)initWithContactName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = MOContextContactMetaData;
  v6 = [(MOContextContactMetaData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactName, name);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextContactMetaData alloc];
  contextContactIdentifier = [(MOContextContactMetaData *)self contextContactIdentifier];
  contactName = [(MOContextContactMetaData *)self contactName];
  mdEntityIdentifier = [(MOContextContactMetaData *)self mdEntityIdentifier];
  v8 = [(MOContextContactMetaData *)v4 initWithContactIdentifier:contextContactIdentifier contactName:contactName mdEntityIdentifier:mdEntityIdentifier];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  contactName = self->_contactName;
  coderCopy = coder;
  [coderCopy encodeObject:contactName forKey:@"contactName"];
  [coderCopy encodeObject:self->_contextContactIdentifier forKey:@"contextContactIdentifier"];
  [coderCopy encodeObject:self->_mdEntityIdentifier forKey:@"mdEntityIdentifier"];
}

- (MOContextContactMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextContactIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mdEntityIdentifier"];

  v8 = [(MOContextContactMetaData *)self initWithContactIdentifier:v6 contactName:v5 mdEntityIdentifier:v7];
  return v8;
}

- (id)description
{
  contactName = [(MOContextContactMetaData *)self contactName];
  mask = [contactName mask];
  v4 = [NSString stringWithFormat:@"contact name, %@", mask];

  return v4;
}

- (MOContextContactMetaData)initWithContactMetaDataMO:(id)o
{
  if (o)
  {
    contactName = [o contactName];
    self = [(MOContextContactMetaData *)self initWithContactName:contactName];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end