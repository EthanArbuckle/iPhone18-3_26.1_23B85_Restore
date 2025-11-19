@interface STDowntimeStateEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDowntimeStateEvent:(id)a3;
- (STDowntimeStateEvent)initWithIdentifier:(id)a3 downtimeConfigurationState:(int64_t)a4 downtimeDate:(id)a5 userID:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation STDowntimeStateEvent

- (STDowntimeStateEvent)initWithIdentifier:(id)a3 downtimeConfigurationState:(int64_t)a4 downtimeDate:(id)a5 userID:(id)a6
{
  v20.receiver = self;
  v20.super_class = STDowntimeStateEvent;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [(STDowntimeStateEvent *)&v20 init];
  v12->_downtimeConfigurationState = a4;
  v13 = [v11 copy];

  identifier = v12->_identifier;
  v12->_identifier = v13;

  v15 = [v10 copy];
  downtimeDate = v12->_downtimeDate;
  v12->_downtimeDate = v15;

  v17 = [v9 copy];
  userID = v12->_userID;
  v12->_userID = v17;

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  identifier = self->_identifier;
  downtimeDate = self->_downtimeDate;
  userID = self->_userID;
  downtimeConfigurationState = self->_downtimeConfigurationState;

  return [v4 initWithIdentifier:identifier downtimeConfigurationState:downtimeConfigurationState downtimeDate:downtimeDate userID:userID];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STDowntimeStateEvent *)self isEqualToDowntimeStateEvent:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDowntimeStateEvent:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v5 = [(STDowntimeStateEvent *)self identifier];
    v6 = [(STDowntimeStateEvent *)v4 identifier];
    if ([v5 isEqualToString:v6] && (v7 = -[STDowntimeStateEvent downtimeConfigurationState](self, "downtimeConfigurationState"), v7 == -[STDowntimeStateEvent downtimeConfigurationState](v4, "downtimeConfigurationState")))
    {
      v8 = [(STDowntimeStateEvent *)self downtimeDate];
      v9 = [(STDowntimeStateEvent *)v4 downtimeDate];
      if ([v8 isEqualToDate:v9])
      {
        v10 = [(STDowntimeStateEvent *)self userID];
        v11 = [(STDowntimeStateEvent *)v4 userID];
        v12 = [v10 isEqualToUserID:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(STDowntimeStateEvent *)self identifier];
  v4 = [v3 hash];
  v5 = [(STDowntimeStateEvent *)self downtimeConfigurationState]^ v4;
  v6 = [(STDowntimeStateEvent *)self downtimeDate];
  v7 = [v6 hash];
  v8 = [(STDowntimeStateEvent *)self userID];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

@end