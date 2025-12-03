@interface RMConfigurationEventStreamSubscription
- (RMConfigurationEventStreamSubscription)initWithToken:(unint64_t)token configurationTypes:(id)types eventPublisher:(id)publisher;
- (id)reportDetails;
- (void)applyChangedConfigurationsTypes:(id)types;
@end

@implementation RMConfigurationEventStreamSubscription

- (RMConfigurationEventStreamSubscription)initWithToken:(unint64_t)token configurationTypes:(id)types eventPublisher:(id)publisher
{
  typesCopy = types;
  publisherCopy = publisher;
  v18.receiver = self;
  v18.super_class = RMConfigurationEventStreamSubscription;
  v10 = [(RMConfigurationEventStreamSubscription *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_token = token;
    v12 = [NSNumber numberWithUnsignedLongLong:token];
    stringValue = [v12 stringValue];
    identifier = v11->_identifier;
    v11->_identifier = stringValue;

    v15 = [typesCopy copy];
    configurationTypes = v11->_configurationTypes;
    v11->_configurationTypes = v15;

    objc_storeStrong(&v11->_eventPublisher, publisher);
  }

  return v11;
}

- (void)applyChangedConfigurationsTypes:(id)types
{
  v11 = @"ConfigurationTypes";
  typesCopy = types;
  typesCopy2 = types;
  v5 = [NSDictionary dictionaryWithObjects:&typesCopy forKeys:&v11 count:1];
  v6 = +[RMLog configurationEventStreamSubscription];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Firing stream event with payload: %{public}@", &v9, 0xCu);
  }

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  eventPublisher = [(RMConfigurationEventStreamSubscription *)self eventPublisher];
  [(RMConfigurationEventStreamSubscription *)self token];
  xpc_event_publisher_fire();
}

- (id)reportDetails
{
  v11[0] = @"Location";
  identifier = [(RMConfigurationEventStreamSubscription *)self identifier];
  v4 = [NSString stringWithFormat:@"XPCEvent/%@", identifier];
  v12[0] = v4;
  v11[1] = @"Identifier";
  identifier2 = [(RMConfigurationEventStreamSubscription *)self identifier];
  v12[1] = identifier2;
  v11[2] = @"ConfigurationTypes";
  configurationTypes = [(RMConfigurationEventStreamSubscription *)self configurationTypes];
  allObjects = [configurationTypes allObjects];
  v8 = [allObjects sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

@end