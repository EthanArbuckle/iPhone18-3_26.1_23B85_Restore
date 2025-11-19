@interface STCommunicationConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCommunicationConfiguration:(id)a3;
- (STCommunicationConfiguration)initWithCoder:(id)a3;
- (STCommunicationConfiguration)initWithCommunicationSafetySendingRestricted:(BOOL)a3 communicationSafetyReceivingRestricted:(BOOL)a4 communicationSafetyNotificationEnabled:(BOOL)a5 communicationSafetyAnalyticsEnabled:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STCommunicationConfiguration

- (STCommunicationConfiguration)initWithCommunicationSafetySendingRestricted:(BOOL)a3 communicationSafetyReceivingRestricted:(BOOL)a4 communicationSafetyNotificationEnabled:(BOOL)a5 communicationSafetyAnalyticsEnabled:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = STCommunicationConfiguration;
  result = [(STCommunicationConfiguration *)&v11 init];
  result->_isCommunicationSafetySendingRestricted = a3;
  result->_isCommunicationSafetyReceivingRestricted = a4;
  result->_isCommunicationSafetyNotificationEnabled = a5;
  result->_isCommunicationSafetyAnalyticsEnabled = a6;
  return result;
}

- (STCommunicationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"isCommunicationSafetySendingRestricted"];
  v6 = [v4 decodeBoolForKey:@"isCommunicationSafetyReceivingRestricted"];
  v7 = [v4 decodeBoolForKey:@"isCommunicationSafetyNotificationEnabled"];
  v8 = [v4 decodeBoolForKey:@"isCommunicationSafetyAnalyticsEnabled"];

  return [(STCommunicationConfiguration *)self initWithCommunicationSafetySendingRestricted:v5 communicationSafetyReceivingRestricted:v6 communicationSafetyNotificationEnabled:v7 communicationSafetyAnalyticsEnabled:v8];
}

- (void)encodeWithCoder:(id)a3
{
  isCommunicationSafetySendingRestricted = self->_isCommunicationSafetySendingRestricted;
  v5 = a3;
  [v5 encodeBool:isCommunicationSafetySendingRestricted forKey:@"isCommunicationSafetySendingRestricted"];
  [v5 encodeBool:self->_isCommunicationSafetyReceivingRestricted forKey:@"isCommunicationSafetyReceivingRestricted"];
  [v5 encodeBool:self->_isCommunicationSafetyNotificationEnabled forKey:@"isCommunicationSafetyNotificationEnabled"];
  [v5 encodeBool:self->_isCommunicationSafetyAnalyticsEnabled forKey:@"isCommunicationSafetyAnalyticsEnabled"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  isCommunicationSafetySendingRestricted = self->_isCommunicationSafetySendingRestricted;
  isCommunicationSafetyReceivingRestricted = self->_isCommunicationSafetyReceivingRestricted;
  isCommunicationSafetyNotificationEnabled = self->_isCommunicationSafetyNotificationEnabled;
  isCommunicationSafetyAnalyticsEnabled = self->_isCommunicationSafetyAnalyticsEnabled;

  return [v4 initWithCommunicationSafetySendingRestricted:isCommunicationSafetySendingRestricted communicationSafetyReceivingRestricted:isCommunicationSafetyReceivingRestricted communicationSafetyNotificationEnabled:isCommunicationSafetyNotificationEnabled communicationSafetyAnalyticsEnabled:isCommunicationSafetyAnalyticsEnabled];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STCommunicationConfiguration *)self isEqualToCommunicationConfiguration:v4];
  }

  return v5;
}

- (BOOL)isEqualToCommunicationConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v6 = [(STCommunicationConfiguration *)v4 isCommunicationSafetySendingRestricted];
    if (v6 == [(STCommunicationConfiguration *)self isCommunicationSafetySendingRestricted]&& (v7 = [(STCommunicationConfiguration *)v5 isCommunicationSafetyReceivingRestricted], v7 == [(STCommunicationConfiguration *)self isCommunicationSafetyReceivingRestricted]) && (v8 = [(STCommunicationConfiguration *)v5 isCommunicationSafetyNotificationEnabled], v8 == [(STCommunicationConfiguration *)self isCommunicationSafetyNotificationEnabled]))
    {
      v11 = [(STCommunicationConfiguration *)v5 isCommunicationSafetyAnalyticsEnabled];
      v9 = v11 ^ [(STCommunicationConfiguration *)self isCommunicationSafetyAnalyticsEnabled]^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(STCommunicationConfiguration *)self isCommunicationSafetySendingRestricted];
  v4 = [(STCommunicationConfiguration *)self isCommunicationSafetyReceivingRestricted];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if ([(STCommunicationConfiguration *)self isCommunicationSafetyNotificationEnabled])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(STCommunicationConfiguration *)self isCommunicationSafetyAnalyticsEnabled];
  v9 = 8;
  if (!v8)
  {
    v9 = 0;
  }

  return v6 | v7 | v9;
}

@end