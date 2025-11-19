@interface SKADatabaseRemovedUser
- (SKADatabaseRemovedUser)initWithCoreDataRemovedUser:(id)a3;
- (SKADatabaseRemovedUser)initWithHandle:(id)a3 statusTypeIdentifier:(id)a4 presenceIdentifier:(id)a5 dateRemoved:(id)a6;
@end

@implementation SKADatabaseRemovedUser

- (SKADatabaseRemovedUser)initWithCoreDataRemovedUser:(id)a3
{
  v4 = a3;
  v5 = [v4 removedHandle];
  v6 = [v4 statusTypeIdentifier];
  v7 = [v4 presenceIdentifier];
  v8 = [v4 dateRemoved];

  v9 = [(SKADatabaseRemovedUser *)self initWithHandle:v5 statusTypeIdentifier:v6 presenceIdentifier:v7 dateRemoved:v8];
  return v9;
}

- (SKADatabaseRemovedUser)initWithHandle:(id)a3 statusTypeIdentifier:(id)a4 presenceIdentifier:(id)a5 dateRemoved:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = SKADatabaseRemovedUser;
  v14 = [(SKADatabaseRemovedUser *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    handle = v14->_handle;
    v14->_handle = v15;

    v17 = [v11 copy];
    statusTypeIdentifier = v14->_statusTypeIdentifier;
    v14->_statusTypeIdentifier = v17;

    v19 = [v12 copy];
    presenceIdentifier = v14->_presenceIdentifier;
    v14->_presenceIdentifier = v19;

    objc_storeStrong(&v14->_dateRemoved, a6);
  }

  return v14;
}

@end