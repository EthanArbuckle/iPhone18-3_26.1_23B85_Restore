@interface STFamilyMemberGenesisStateItem
+ (int64_t)_validStateFromCurrentState:(int64_t)a3 desiredState:(int64_t)a4;
- (BOOL)expired;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFamilyMemberGenesisStateItem:(id)a3;
- (STFamilyMemberGenesisStateItem)initWithCoder:(id)a3;
- (STFamilyMemberGenesisStateItem)initWithUserID:(id)a3 genesisState:(int64_t)a4;
- (STFamilyMemberGenesisStateItem)itemWithUpdatedState:(int64_t)a3;
- (id)_initWithUserID:(id)a3 genesisState:(int64_t)a4 creationDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STFamilyMemberGenesisStateItem

- (STFamilyMemberGenesisStateItem)initWithUserID:(id)a3 genesisState:(int64_t)a4
{
  v6 = a3;
  v7 = +[NSDate now];
  v8 = [(STFamilyMemberGenesisStateItem *)self _initWithUserID:v6 genesisState:a4 creationDate:v7];

  return v8;
}

- (id)_initWithUserID:(id)a3 genesisState:(int64_t)a4 creationDate:(id)a5
{
  v15.receiver = self;
  v15.super_class = STFamilyMemberGenesisStateItem;
  v7 = a5;
  v8 = a3;
  v9 = [(STFamilyMemberGenesisStateItem *)&v15 init];
  v10 = [v8 copy];

  userID = v9->_userID;
  v9->_userID = v10;

  v9->_genesisState = a4;
  v12 = [v7 copy];

  creationDate = v9->_creationDate;
  v9->_creationDate = v12;

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STFamilyMemberGenesisStateItem *)self userID];
  v5 = [(STFamilyMemberGenesisStateItem *)self genesisState];
  v6 = @"Pending";
  if (v5 == 1)
  {
    v6 = @"AwaitingResponse";
  }

  if (v5 == 2)
  {
    v7 = @"Done";
  }

  else
  {
    v7 = v6;
  }

  v8 = [(STFamilyMemberGenesisStateItem *)self creationDate];
  v9 = [NSString stringWithFormat:@"<%@ { UserID: %@, State: %@, Created: %@ }>", v3, v4, v7, v8];

  return v9;
}

- (STFamilyMemberGenesisStateItem)itemWithUpdatedState:(int64_t)a3
{
  v4 = [STFamilyMemberGenesisStateItem _validStateFromCurrentState:[(STFamilyMemberGenesisStateItem *)self genesisState] desiredState:a3];
  v5 = [STFamilyMemberGenesisStateItem alloc];
  v6 = [(STFamilyMemberGenesisStateItem *)self userID];
  v7 = [(STFamilyMemberGenesisStateItem *)self creationDate];
  v8 = [(STFamilyMemberGenesisStateItem *)v5 _initWithUserID:v6 genesisState:v4 creationDate:v7];

  return v8;
}

+ (int64_t)_validStateFromCurrentState:(int64_t)a3 desiredState:(int64_t)a4
{
  v5 = a3;
  if ((a3 - 1) >= 2)
  {
    if (!a3 && (a4 - 1) < 2)
    {
      return a4;
    }
  }

  else if (a4 == 2)
  {
    return 2;
  }

  v6 = +[STLog familyMemberGenesisStateStore];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Pending";
    if (v5 == 1)
    {
      v8 = @"AwaitingResponse";
    }

    else
    {
      v8 = @"Pending";
    }

    if (v5 == 2)
    {
      v8 = @"Done";
    }

    if (a4 == 1)
    {
      v7 = @"AwaitingResponse";
    }

    if (a4 == 2)
    {
      v7 = @"Done";
    }

    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not transition state from: '%{public}@' to: '%{public}@'", &v10, 0x16u);
  }

  return v5;
}

- (BOOL)expired
{
  v3 = +[NSDate now];
  v4 = [(STFamilyMemberGenesisStateItem *)self creationDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6 >= 2592000.0;
}

- (STFamilyMemberGenesisStateItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v6 = [v4 decodeIntegerForKey:@"genesisState"];
  [v4 decodeDoubleForKey:@"creationDate"];
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

- (void)encodeWithCoder:(id)a3
{
  userID = self->_userID;
  v5 = a3;
  [v5 encodeObject:userID forKey:@"userID"];
  [v5 encodeInteger:self->_genesisState forKey:@"genesisState"];
  [(NSDate *)self->_creationDate timeIntervalSinceReferenceDate];
  [v5 encodeDouble:@"creationDate" forKey:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  userID = self->_userID;
  genesisState = self->_genesisState;
  creationDate = self->_creationDate;

  return [v4 _initWithUserID:userID genesisState:genesisState creationDate:creationDate];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STFamilyMemberGenesisStateItem *)self isEqualToFamilyMemberGenesisStateItem:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToFamilyMemberGenesisStateItem:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(STFamilyMemberGenesisStateItem *)self userID];
    v6 = [(STFamilyMemberGenesisStateItem *)v4 userID];
    if ([v5 isEqualToUserID:v6] && (v7 = -[STFamilyMemberGenesisStateItem genesisState](self, "genesisState"), v7 == -[STFamilyMemberGenesisStateItem genesisState](v4, "genesisState")))
    {
      v8 = [(STFamilyMemberGenesisStateItem *)self creationDate];
      v9 = [(STFamilyMemberGenesisStateItem *)v4 creationDate];
      v10 = [v8 isEqualToDate:v9];
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
  v3 = [(STFamilyMemberGenesisStateItem *)self userID];
  v4 = [v3 hash];
  v5 = [(STFamilyMemberGenesisStateItem *)self genesisState]^ v4;
  v6 = [(STFamilyMemberGenesisStateItem *)self creationDate];
  v7 = [v6 hash];

  return v5 ^ v7;
}

@end