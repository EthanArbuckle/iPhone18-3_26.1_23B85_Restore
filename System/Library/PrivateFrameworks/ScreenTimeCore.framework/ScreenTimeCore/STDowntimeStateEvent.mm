@interface STDowntimeStateEvent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDowntimeStateEvent:(id)event;
- (STDowntimeStateEvent)initWithIdentifier:(id)identifier downtimeConfigurationState:(int64_t)state downtimeDate:(id)date userID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation STDowntimeStateEvent

- (STDowntimeStateEvent)initWithIdentifier:(id)identifier downtimeConfigurationState:(int64_t)state downtimeDate:(id)date userID:(id)d
{
  v20.receiver = self;
  v20.super_class = STDowntimeStateEvent;
  dCopy = d;
  dateCopy = date;
  identifierCopy = identifier;
  v12 = [(STDowntimeStateEvent *)&v20 init];
  v12->_downtimeConfigurationState = state;
  v13 = [identifierCopy copy];

  identifier = v12->_identifier;
  v12->_identifier = v13;

  v15 = [dateCopy copy];
  downtimeDate = v12->_downtimeDate;
  v12->_downtimeDate = v15;

  v17 = [dCopy copy];
  userID = v12->_userID;
  v12->_userID = v17;

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  identifier = self->_identifier;
  downtimeDate = self->_downtimeDate;
  userID = self->_userID;
  downtimeConfigurationState = self->_downtimeConfigurationState;

  return [v4 initWithIdentifier:identifier downtimeConfigurationState:downtimeConfigurationState downtimeDate:downtimeDate userID:userID];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STDowntimeStateEvent *)self isEqualToDowntimeStateEvent:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDowntimeStateEvent:(id)event
{
  eventCopy = event;
  if (self == eventCopy)
  {
    v12 = 1;
  }

  else
  {
    identifier = [(STDowntimeStateEvent *)self identifier];
    identifier2 = [(STDowntimeStateEvent *)eventCopy identifier];
    if ([identifier isEqualToString:identifier2] && (v7 = -[STDowntimeStateEvent downtimeConfigurationState](self, "downtimeConfigurationState"), v7 == -[STDowntimeStateEvent downtimeConfigurationState](eventCopy, "downtimeConfigurationState")))
    {
      downtimeDate = [(STDowntimeStateEvent *)self downtimeDate];
      downtimeDate2 = [(STDowntimeStateEvent *)eventCopy downtimeDate];
      if ([downtimeDate isEqualToDate:downtimeDate2])
      {
        userID = [(STDowntimeStateEvent *)self userID];
        userID2 = [(STDowntimeStateEvent *)eventCopy userID];
        v12 = [userID isEqualToUserID:userID2];
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
  identifier = [(STDowntimeStateEvent *)self identifier];
  v4 = [identifier hash];
  v5 = [(STDowntimeStateEvent *)self downtimeConfigurationState]^ v4;
  downtimeDate = [(STDowntimeStateEvent *)self downtimeDate];
  v7 = [downtimeDate hash];
  userID = [(STDowntimeStateEvent *)self userID];
  v9 = v7 ^ [userID hash];

  return v5 ^ v9;
}

@end