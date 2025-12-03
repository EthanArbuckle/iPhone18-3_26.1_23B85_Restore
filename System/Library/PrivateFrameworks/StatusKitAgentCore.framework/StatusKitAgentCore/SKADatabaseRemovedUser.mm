@interface SKADatabaseRemovedUser
- (SKADatabaseRemovedUser)initWithCoreDataRemovedUser:(id)user;
- (SKADatabaseRemovedUser)initWithHandle:(id)handle statusTypeIdentifier:(id)identifier presenceIdentifier:(id)presenceIdentifier dateRemoved:(id)removed;
@end

@implementation SKADatabaseRemovedUser

- (SKADatabaseRemovedUser)initWithCoreDataRemovedUser:(id)user
{
  userCopy = user;
  removedHandle = [userCopy removedHandle];
  statusTypeIdentifier = [userCopy statusTypeIdentifier];
  presenceIdentifier = [userCopy presenceIdentifier];
  dateRemoved = [userCopy dateRemoved];

  v9 = [(SKADatabaseRemovedUser *)self initWithHandle:removedHandle statusTypeIdentifier:statusTypeIdentifier presenceIdentifier:presenceIdentifier dateRemoved:dateRemoved];
  return v9;
}

- (SKADatabaseRemovedUser)initWithHandle:(id)handle statusTypeIdentifier:(id)identifier presenceIdentifier:(id)presenceIdentifier dateRemoved:(id)removed
{
  handleCopy = handle;
  identifierCopy = identifier;
  presenceIdentifierCopy = presenceIdentifier;
  removedCopy = removed;
  v22.receiver = self;
  v22.super_class = SKADatabaseRemovedUser;
  v14 = [(SKADatabaseRemovedUser *)&v22 init];
  if (v14)
  {
    v15 = [handleCopy copy];
    handle = v14->_handle;
    v14->_handle = v15;

    v17 = [identifierCopy copy];
    statusTypeIdentifier = v14->_statusTypeIdentifier;
    v14->_statusTypeIdentifier = v17;

    v19 = [presenceIdentifierCopy copy];
    presenceIdentifier = v14->_presenceIdentifier;
    v14->_presenceIdentifier = v19;

    objc_storeStrong(&v14->_dateRemoved, removed);
  }

  return v14;
}

@end