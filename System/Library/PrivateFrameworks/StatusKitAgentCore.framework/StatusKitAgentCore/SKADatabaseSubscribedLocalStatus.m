@interface SKADatabaseSubscribedLocalStatus
- (SKADatabaseSubscribedLocalStatus)initWithCoreDataSubscribedLocalStatus:(id)a3;
- (SKADatabaseSubscribedLocalStatus)initWithIdentifier:(id)a3 creationDate:(id)a4 modificationDate:(id)a5 keyName:(id)a6 keyDomain:(id)a7 payload:(id)a8 idsIdentifier:(id)a9;
- (id)description;
@end

@implementation SKADatabaseSubscribedLocalStatus

- (SKADatabaseSubscribedLocalStatus)initWithCoreDataSubscribedLocalStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 creationDate];
  v7 = [v4 modificationDate];
  v8 = [v4 keyName];
  v9 = [v4 keyDomain];
  v10 = [v4 payload];
  v11 = [v4 idsIdentifier];

  v12 = [(SKADatabaseSubscribedLocalStatus *)self initWithIdentifier:v5 creationDate:v6 modificationDate:v7 keyName:v8 keyDomain:v9 payload:v10 idsIdentifier:v11];
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SKADatabaseSubscribedLocalStatus *)self identifier];
  v5 = [(SKADatabaseSubscribedLocalStatus *)self idsIdentifier];
  v6 = [(SKADatabaseSubscribedLocalStatus *)self keyDomain];
  v7 = [(SKADatabaseSubscribedLocalStatus *)self keyName];
  v8 = [(SKADatabaseSubscribedLocalStatus *)self creationDate];
  v9 = [(SKADatabaseSubscribedLocalStatus *)self modificationDate];
  v10 = [v3 stringWithFormat:@"<SubscribedLocalStatus: ID %@, IDS: %@, Domain: %@, Key: %@, CreationDate: %@, ModificationDate: %@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (SKADatabaseSubscribedLocalStatus)initWithIdentifier:(id)a3 creationDate:(id)a4 modificationDate:(id)a5 keyName:(id)a6 keyDomain:(id)a7 payload:(id)a8 idsIdentifier:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = SKADatabaseSubscribedLocalStatus;
  v18 = [(SKADatabaseSubscribedLocalStatus *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_creationDate, a4);
    objc_storeStrong(&v19->_modificationDate, a5);
    objc_storeStrong(&v19->_keyName, a6);
    objc_storeStrong(&v19->_keyDomain, a7);
    objc_storeStrong(&v19->_payload, a8);
    objc_storeStrong(&v19->_idsIdentifier, a9);
  }

  return v19;
}

@end