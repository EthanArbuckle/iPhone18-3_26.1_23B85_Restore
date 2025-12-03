@interface SKADatabasePublishedLocalStatus
- (BOOL)isEqualToStatus:(id)status;
- (SKADatabasePublishedLocalStatus)initWithCoreDataPublishedLocalStatus:(id)status;
- (SKADatabasePublishedLocalStatus)initWithIdentifier:(id)identifier creationDate:(id)date modificationDate:(id)modificationDate keyDomain:(id)domain keyName:(id)name payload:(id)payload targetDevicesFlags:(int64_t)flags;
@end

@implementation SKADatabasePublishedLocalStatus

- (SKADatabasePublishedLocalStatus)initWithCoreDataPublishedLocalStatus:(id)status
{
  statusCopy = status;
  identifier = [statusCopy identifier];
  creationDate = [statusCopy creationDate];
  modificationDate = [statusCopy modificationDate];
  keyDomain = [statusCopy keyDomain];
  keyName = [statusCopy keyName];
  payload = [statusCopy payload];
  targetDevicesFlags = [statusCopy targetDevicesFlags];

  v12 = [(SKADatabasePublishedLocalStatus *)self initWithIdentifier:identifier creationDate:creationDate modificationDate:modificationDate keyDomain:keyDomain keyName:keyName payload:payload targetDevicesFlags:targetDevicesFlags];
  return v12;
}

- (SKADatabasePublishedLocalStatus)initWithIdentifier:(id)identifier creationDate:(id)date modificationDate:(id)modificationDate keyDomain:(id)domain keyName:(id)name payload:(id)payload targetDevicesFlags:(int64_t)flags
{
  identifierCopy = identifier;
  dateCopy = date;
  modificationDateCopy = modificationDate;
  domainCopy = domain;
  nameCopy = name;
  payloadCopy = payload;
  v25.receiver = self;
  v25.super_class = SKADatabasePublishedLocalStatus;
  v19 = [(SKADatabasePublishedLocalStatus *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_creationDate, date);
    objc_storeStrong(&v20->_modificationDate, modificationDate);
    objc_storeStrong(&v20->_keyDomain, domain);
    objc_storeStrong(&v20->_keyName, name);
    objc_storeStrong(&v20->_payload, payload);
    v20->_targetDevicesFlags = flags;
  }

  return v20;
}

- (BOOL)isEqualToStatus:(id)status
{
  statusCopy = status;
  identifier = [(SKADatabasePublishedLocalStatus *)self identifier];
  identifier2 = [statusCopy identifier];
  if (![identifier isEqualToString:identifier2])
  {
    goto LABEL_13;
  }

  creationDate = [(SKADatabasePublishedLocalStatus *)self creationDate];
  creationDate2 = [statusCopy creationDate];
  if (![creationDate isEqualToDate:creationDate2])
  {
LABEL_12:

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  modificationDate = [(SKADatabasePublishedLocalStatus *)self modificationDate];
  modificationDate2 = [statusCopy modificationDate];
  if (![modificationDate isEqualToDate:modificationDate2])
  {
LABEL_11:

    goto LABEL_12;
  }

  keyDomain = [(SKADatabasePublishedLocalStatus *)self keyDomain];
  keyDomain2 = [statusCopy keyDomain];
  if (![keyDomain isEqualToString:keyDomain2])
  {

    goto LABEL_11;
  }

  v24 = keyDomain;
  keyName = [(SKADatabasePublishedLocalStatus *)self keyName];
  keyName2 = [statusCopy keyName];
  v23 = keyName;
  v15 = keyName;
  v16 = keyName2;
  if (![v15 isEqualToString:keyName2])
  {

    goto LABEL_11;
  }

  targetDevicesFlags = [(SKADatabasePublishedLocalStatus *)self targetDevicesFlags];
  targetDevicesFlags2 = [statusCopy targetDevicesFlags];

  if (targetDevicesFlags != targetDevicesFlags2)
  {
    v18 = 0;
    goto LABEL_15;
  }

  payload = [(SKADatabasePublishedLocalStatus *)self payload];
  if (payload)
  {
  }

  else
  {
    payload2 = [statusCopy payload];

    if (!payload2)
    {
      v18 = 1;
      goto LABEL_15;
    }
  }

  identifier = [(SKADatabasePublishedLocalStatus *)self payload];
  identifier2 = [statusCopy payload];
  v18 = [identifier isEqualToData:identifier2];
LABEL_14:

LABEL_15:
  return v18;
}

@end