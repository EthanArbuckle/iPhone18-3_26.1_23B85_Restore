@interface SKADatabaseSubscribedLocalStatus
- (SKADatabaseSubscribedLocalStatus)initWithCoreDataSubscribedLocalStatus:(id)status;
- (SKADatabaseSubscribedLocalStatus)initWithIdentifier:(id)identifier creationDate:(id)date modificationDate:(id)modificationDate keyName:(id)name keyDomain:(id)domain payload:(id)payload idsIdentifier:(id)idsIdentifier;
- (id)description;
@end

@implementation SKADatabaseSubscribedLocalStatus

- (SKADatabaseSubscribedLocalStatus)initWithCoreDataSubscribedLocalStatus:(id)status
{
  statusCopy = status;
  identifier = [statusCopy identifier];
  creationDate = [statusCopy creationDate];
  modificationDate = [statusCopy modificationDate];
  keyName = [statusCopy keyName];
  keyDomain = [statusCopy keyDomain];
  payload = [statusCopy payload];
  idsIdentifier = [statusCopy idsIdentifier];

  v12 = [(SKADatabaseSubscribedLocalStatus *)self initWithIdentifier:identifier creationDate:creationDate modificationDate:modificationDate keyName:keyName keyDomain:keyDomain payload:payload idsIdentifier:idsIdentifier];
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(SKADatabaseSubscribedLocalStatus *)self identifier];
  idsIdentifier = [(SKADatabaseSubscribedLocalStatus *)self idsIdentifier];
  keyDomain = [(SKADatabaseSubscribedLocalStatus *)self keyDomain];
  keyName = [(SKADatabaseSubscribedLocalStatus *)self keyName];
  creationDate = [(SKADatabaseSubscribedLocalStatus *)self creationDate];
  modificationDate = [(SKADatabaseSubscribedLocalStatus *)self modificationDate];
  v10 = [v3 stringWithFormat:@"<SubscribedLocalStatus: ID %@, IDS: %@, Domain: %@, Key: %@, CreationDate: %@, ModificationDate: %@>", identifier, idsIdentifier, keyDomain, keyName, creationDate, modificationDate];

  return v10;
}

- (SKADatabaseSubscribedLocalStatus)initWithIdentifier:(id)identifier creationDate:(id)date modificationDate:(id)modificationDate keyName:(id)name keyDomain:(id)domain payload:(id)payload idsIdentifier:(id)idsIdentifier
{
  identifierCopy = identifier;
  dateCopy = date;
  modificationDateCopy = modificationDate;
  nameCopy = name;
  domainCopy = domain;
  payloadCopy = payload;
  idsIdentifierCopy = idsIdentifier;
  v26.receiver = self;
  v26.super_class = SKADatabaseSubscribedLocalStatus;
  v18 = [(SKADatabaseSubscribedLocalStatus *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_creationDate, date);
    objc_storeStrong(&v19->_modificationDate, modificationDate);
    objc_storeStrong(&v19->_keyName, name);
    objc_storeStrong(&v19->_keyDomain, domain);
    objc_storeStrong(&v19->_payload, payload);
    objc_storeStrong(&v19->_idsIdentifier, idsIdentifier);
  }

  return v19;
}

@end