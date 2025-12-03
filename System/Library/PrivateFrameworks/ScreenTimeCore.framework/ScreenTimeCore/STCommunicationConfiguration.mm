@interface STCommunicationConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCommunicationConfiguration:(id)configuration;
- (STCommunicationConfiguration)initWithCoder:(id)coder;
- (STCommunicationConfiguration)initWithCommunicationSafetySendingRestricted:(BOOL)restricted communicationSafetyReceivingRestricted:(BOOL)receivingRestricted communicationSafetyNotificationEnabled:(BOOL)enabled communicationSafetyAnalyticsEnabled:(BOOL)analyticsEnabled;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STCommunicationConfiguration

- (STCommunicationConfiguration)initWithCommunicationSafetySendingRestricted:(BOOL)restricted communicationSafetyReceivingRestricted:(BOOL)receivingRestricted communicationSafetyNotificationEnabled:(BOOL)enabled communicationSafetyAnalyticsEnabled:(BOOL)analyticsEnabled
{
  v11.receiver = self;
  v11.super_class = STCommunicationConfiguration;
  result = [(STCommunicationConfiguration *)&v11 init];
  result->_isCommunicationSafetySendingRestricted = restricted;
  result->_isCommunicationSafetyReceivingRestricted = receivingRestricted;
  result->_isCommunicationSafetyNotificationEnabled = enabled;
  result->_isCommunicationSafetyAnalyticsEnabled = analyticsEnabled;
  return result;
}

- (STCommunicationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"isCommunicationSafetySendingRestricted"];
  v6 = [coderCopy decodeBoolForKey:@"isCommunicationSafetyReceivingRestricted"];
  v7 = [coderCopy decodeBoolForKey:@"isCommunicationSafetyNotificationEnabled"];
  v8 = [coderCopy decodeBoolForKey:@"isCommunicationSafetyAnalyticsEnabled"];

  return [(STCommunicationConfiguration *)self initWithCommunicationSafetySendingRestricted:v5 communicationSafetyReceivingRestricted:v6 communicationSafetyNotificationEnabled:v7 communicationSafetyAnalyticsEnabled:v8];
}

- (void)encodeWithCoder:(id)coder
{
  isCommunicationSafetySendingRestricted = self->_isCommunicationSafetySendingRestricted;
  coderCopy = coder;
  [coderCopy encodeBool:isCommunicationSafetySendingRestricted forKey:@"isCommunicationSafetySendingRestricted"];
  [coderCopy encodeBool:self->_isCommunicationSafetyReceivingRestricted forKey:@"isCommunicationSafetyReceivingRestricted"];
  [coderCopy encodeBool:self->_isCommunicationSafetyNotificationEnabled forKey:@"isCommunicationSafetyNotificationEnabled"];
  [coderCopy encodeBool:self->_isCommunicationSafetyAnalyticsEnabled forKey:@"isCommunicationSafetyAnalyticsEnabled"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  isCommunicationSafetySendingRestricted = self->_isCommunicationSafetySendingRestricted;
  isCommunicationSafetyReceivingRestricted = self->_isCommunicationSafetyReceivingRestricted;
  isCommunicationSafetyNotificationEnabled = self->_isCommunicationSafetyNotificationEnabled;
  isCommunicationSafetyAnalyticsEnabled = self->_isCommunicationSafetyAnalyticsEnabled;

  return [v4 initWithCommunicationSafetySendingRestricted:isCommunicationSafetySendingRestricted communicationSafetyReceivingRestricted:isCommunicationSafetyReceivingRestricted communicationSafetyNotificationEnabled:isCommunicationSafetyNotificationEnabled communicationSafetyAnalyticsEnabled:isCommunicationSafetyAnalyticsEnabled];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STCommunicationConfiguration *)self isEqualToCommunicationConfiguration:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCommunicationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    isCommunicationSafetySendingRestricted = [(STCommunicationConfiguration *)configurationCopy isCommunicationSafetySendingRestricted];
    if (isCommunicationSafetySendingRestricted == [(STCommunicationConfiguration *)self isCommunicationSafetySendingRestricted]&& (v7 = [(STCommunicationConfiguration *)v5 isCommunicationSafetyReceivingRestricted], v7 == [(STCommunicationConfiguration *)self isCommunicationSafetyReceivingRestricted]) && (v8 = [(STCommunicationConfiguration *)v5 isCommunicationSafetyNotificationEnabled], v8 == [(STCommunicationConfiguration *)self isCommunicationSafetyNotificationEnabled]))
    {
      isCommunicationSafetyAnalyticsEnabled = [(STCommunicationConfiguration *)v5 isCommunicationSafetyAnalyticsEnabled];
      v9 = isCommunicationSafetyAnalyticsEnabled ^ [(STCommunicationConfiguration *)self isCommunicationSafetyAnalyticsEnabled]^ 1;
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
  isCommunicationSafetySendingRestricted = [(STCommunicationConfiguration *)self isCommunicationSafetySendingRestricted];
  isCommunicationSafetyReceivingRestricted = [(STCommunicationConfiguration *)self isCommunicationSafetyReceivingRestricted];
  v5 = 2;
  if (!isCommunicationSafetyReceivingRestricted)
  {
    v5 = 0;
  }

  v6 = v5 | isCommunicationSafetySendingRestricted;
  if ([(STCommunicationConfiguration *)self isCommunicationSafetyNotificationEnabled])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  isCommunicationSafetyAnalyticsEnabled = [(STCommunicationConfiguration *)self isCommunicationSafetyAnalyticsEnabled];
  v9 = 8;
  if (!isCommunicationSafetyAnalyticsEnabled)
  {
    v9 = 0;
  }

  return v6 | v7 | v9;
}

@end