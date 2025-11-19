@interface SKADatabasePublishedLocalStatus
- (BOOL)isEqualToStatus:(id)a3;
- (SKADatabasePublishedLocalStatus)initWithCoreDataPublishedLocalStatus:(id)a3;
- (SKADatabasePublishedLocalStatus)initWithIdentifier:(id)a3 creationDate:(id)a4 modificationDate:(id)a5 keyDomain:(id)a6 keyName:(id)a7 payload:(id)a8 targetDevicesFlags:(int64_t)a9;
@end

@implementation SKADatabasePublishedLocalStatus

- (SKADatabasePublishedLocalStatus)initWithCoreDataPublishedLocalStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 creationDate];
  v7 = [v4 modificationDate];
  v8 = [v4 keyDomain];
  v9 = [v4 keyName];
  v10 = [v4 payload];
  v11 = [v4 targetDevicesFlags];

  v12 = [(SKADatabasePublishedLocalStatus *)self initWithIdentifier:v5 creationDate:v6 modificationDate:v7 keyDomain:v8 keyName:v9 payload:v10 targetDevicesFlags:v11];
  return v12;
}

- (SKADatabasePublishedLocalStatus)initWithIdentifier:(id)a3 creationDate:(id)a4 modificationDate:(id)a5 keyDomain:(id)a6 keyName:(id)a7 payload:(id)a8 targetDevicesFlags:(int64_t)a9
{
  v16 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = SKADatabasePublishedLocalStatus;
  v19 = [(SKADatabasePublishedLocalStatus *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_creationDate, a4);
    objc_storeStrong(&v20->_modificationDate, a5);
    objc_storeStrong(&v20->_keyDomain, a6);
    objc_storeStrong(&v20->_keyName, a7);
    objc_storeStrong(&v20->_payload, a8);
    v20->_targetDevicesFlags = a9;
  }

  return v20;
}

- (BOOL)isEqualToStatus:(id)a3
{
  v4 = a3;
  v5 = [(SKADatabasePublishedLocalStatus *)self identifier];
  v6 = [v4 identifier];
  if (![v5 isEqualToString:v6])
  {
    goto LABEL_13;
  }

  v7 = [(SKADatabasePublishedLocalStatus *)self creationDate];
  v8 = [v4 creationDate];
  if (![v7 isEqualToDate:v8])
  {
LABEL_12:

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v9 = [(SKADatabasePublishedLocalStatus *)self modificationDate];
  v10 = [v4 modificationDate];
  if (![v9 isEqualToDate:v10])
  {
LABEL_11:

    goto LABEL_12;
  }

  v11 = [(SKADatabasePublishedLocalStatus *)self keyDomain];
  v12 = [v4 keyDomain];
  if (![v11 isEqualToString:v12])
  {

    goto LABEL_11;
  }

  v24 = v11;
  v13 = [(SKADatabasePublishedLocalStatus *)self keyName];
  v14 = [v4 keyName];
  v23 = v13;
  v15 = v13;
  v16 = v14;
  if (![v15 isEqualToString:v14])
  {

    goto LABEL_11;
  }

  v22 = [(SKADatabasePublishedLocalStatus *)self targetDevicesFlags];
  v21 = [v4 targetDevicesFlags];

  if (v22 != v21)
  {
    v18 = 0;
    goto LABEL_15;
  }

  v17 = [(SKADatabasePublishedLocalStatus *)self payload];
  if (v17)
  {
  }

  else
  {
    v20 = [v4 payload];

    if (!v20)
    {
      v18 = 1;
      goto LABEL_15;
    }
  }

  v5 = [(SKADatabasePublishedLocalStatus *)self payload];
  v6 = [v4 payload];
  v18 = [v5 isEqualToData:v6];
LABEL_14:

LABEL_15:
  return v18;
}

@end