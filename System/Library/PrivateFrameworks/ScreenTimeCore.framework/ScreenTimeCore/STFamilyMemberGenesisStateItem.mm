@interface STFamilyMemberGenesisStateItem
+ (int64_t)_validStateFromCurrentState:(int64_t)state desiredState:(int64_t)desiredState;
- (BOOL)expired;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFamilyMemberGenesisStateItem:(id)item;
- (STFamilyMemberGenesisStateItem)initWithCoder:(id)coder;
- (STFamilyMemberGenesisStateItem)initWithUserID:(id)d genesisState:(int64_t)state;
- (STFamilyMemberGenesisStateItem)itemWithUpdatedState:(int64_t)state;
- (id)_initWithUserID:(id)d genesisState:(int64_t)state creationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STFamilyMemberGenesisStateItem

- (STFamilyMemberGenesisStateItem)initWithUserID:(id)d genesisState:(int64_t)state
{
  dCopy = d;
  v7 = +[NSDate now];
  v8 = [(STFamilyMemberGenesisStateItem *)self _initWithUserID:dCopy genesisState:state creationDate:v7];

  return v8;
}

- (id)_initWithUserID:(id)d genesisState:(int64_t)state creationDate:(id)date
{
  v15.receiver = self;
  v15.super_class = STFamilyMemberGenesisStateItem;
  dateCopy = date;
  dCopy = d;
  v9 = [(STFamilyMemberGenesisStateItem *)&v15 init];
  v10 = [dCopy copy];

  userID = v9->_userID;
  v9->_userID = v10;

  v9->_genesisState = state;
  v12 = [dateCopy copy];

  creationDate = v9->_creationDate;
  v9->_creationDate = v12;

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  userID = [(STFamilyMemberGenesisStateItem *)self userID];
  genesisState = [(STFamilyMemberGenesisStateItem *)self genesisState];
  v6 = @"Pending";
  if (genesisState == 1)
  {
    v6 = @"AwaitingResponse";
  }

  if (genesisState == 2)
  {
    v7 = @"Done";
  }

  else
  {
    v7 = v6;
  }

  creationDate = [(STFamilyMemberGenesisStateItem *)self creationDate];
  v9 = [NSString stringWithFormat:@"<%@ { UserID: %@, State: %@, Created: %@ }>", v3, userID, v7, creationDate];

  return v9;
}

- (STFamilyMemberGenesisStateItem)itemWithUpdatedState:(int64_t)state
{
  v4 = [STFamilyMemberGenesisStateItem _validStateFromCurrentState:[(STFamilyMemberGenesisStateItem *)self genesisState] desiredState:state];
  v5 = [STFamilyMemberGenesisStateItem alloc];
  userID = [(STFamilyMemberGenesisStateItem *)self userID];
  creationDate = [(STFamilyMemberGenesisStateItem *)self creationDate];
  v8 = [(STFamilyMemberGenesisStateItem *)v5 _initWithUserID:userID genesisState:v4 creationDate:creationDate];

  return v8;
}

+ (int64_t)_validStateFromCurrentState:(int64_t)state desiredState:(int64_t)desiredState
{
  stateCopy = state;
  if ((state - 1) >= 2)
  {
    if (!state && (desiredState - 1) < 2)
    {
      return desiredState;
    }
  }

  else if (desiredState == 2)
  {
    return 2;
  }

  v6 = +[STLog familyMemberGenesisStateStore];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Pending";
    if (stateCopy == 1)
    {
      v8 = @"AwaitingResponse";
    }

    else
    {
      v8 = @"Pending";
    }

    if (stateCopy == 2)
    {
      v8 = @"Done";
    }

    if (desiredState == 1)
    {
      v7 = @"AwaitingResponse";
    }

    if (desiredState == 2)
    {
      v7 = @"Done";
    }

    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not transition state from: '%{public}@' to: '%{public}@'", &v10, 0x16u);
  }

  return stateCopy;
}

- (BOOL)expired
{
  v3 = +[NSDate now];
  creationDate = [(STFamilyMemberGenesisStateItem *)self creationDate];
  [v3 timeIntervalSinceDate:creationDate];
  v6 = v5;

  return v6 >= 2592000.0;
}

- (STFamilyMemberGenesisStateItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v6 = [coderCopy decodeIntegerForKey:@"genesisState"];
  [coderCopy decodeDoubleForKey:@"creationDate"];
  v8 = v7;

  if (v8 == 0.0)
  {
    +[NSDate now];
  }

  else
  {
    [NSDate dateWithTimeIntervalSinceReferenceDate:v8];
  }
  v9 = ;
  v10 = [(STFamilyMemberGenesisStateItem *)self _initWithUserID:v5 genesisState:v6 creationDate:v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  userID = self->_userID;
  coderCopy = coder;
  [coderCopy encodeObject:userID forKey:@"userID"];
  [coderCopy encodeInteger:self->_genesisState forKey:@"genesisState"];
  [(NSDate *)self->_creationDate timeIntervalSinceReferenceDate];
  [coderCopy encodeDouble:@"creationDate" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  userID = self->_userID;
  genesisState = self->_genesisState;
  creationDate = self->_creationDate;

  return [v4 _initWithUserID:userID genesisState:genesisState creationDate:creationDate];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STFamilyMemberGenesisStateItem *)self isEqualToFamilyMemberGenesisStateItem:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToFamilyMemberGenesisStateItem:(id)item
{
  itemCopy = item;
  if (itemCopy == self)
  {
    v10 = 1;
  }

  else
  {
    userID = [(STFamilyMemberGenesisStateItem *)self userID];
    userID2 = [(STFamilyMemberGenesisStateItem *)itemCopy userID];
    if ([userID isEqualToUserID:userID2] && (v7 = -[STFamilyMemberGenesisStateItem genesisState](self, "genesisState"), v7 == -[STFamilyMemberGenesisStateItem genesisState](itemCopy, "genesisState")))
    {
      creationDate = [(STFamilyMemberGenesisStateItem *)self creationDate];
      creationDate2 = [(STFamilyMemberGenesisStateItem *)itemCopy creationDate];
      v10 = [creationDate isEqualToDate:creationDate2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  userID = [(STFamilyMemberGenesisStateItem *)self userID];
  v4 = [userID hash];
  v5 = [(STFamilyMemberGenesisStateItem *)self genesisState]^ v4;
  creationDate = [(STFamilyMemberGenesisStateItem *)self creationDate];
  v7 = [creationDate hash];

  return v5 ^ v7;
}

@end