@interface CSDConversationProvider
- (CSDConversationProvider)initWithProvider:(id)provider;
- (id)callerIDAccount;
- (id)tuConversationProvider;
- (void)generatePseudonymHandleForConversationWithExpiryDuration:(double)duration URI:(id)i completionHandler:(id)handler;
- (void)isPseudonymHandleForProvider:(id)provider completionHandler:(id)handler;
- (void)registerWithIDSWithCompletionHandler:(id)handler;
- (void)renewPseudonymHandle:(id)handle expirationDate:(id)date completionHandler:(id)handler;
- (void)revokePseudonymHandle:(id)handle completionHandler:(id)handler;
@end

@implementation CSDConversationProvider

- (CSDConversationProvider)initWithProvider:(id)provider
{
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = CSDConversationProvider;
  v5 = [(CSDConversationProvider *)&v18 init];
  if (v5)
  {
    identifier = [providerCopy identifier];
    v7 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    bundleIdentifier = [providerCopy bundleIdentifier];
    v10 = [bundleIdentifier copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    pseudonymFeatureID = [providerCopy pseudonymFeatureID];
    v13 = [pseudonymFeatureID copy];
    pseudonymFeatureID = v5->_pseudonymFeatureID;
    v5->_pseudonymFeatureID = v13;

    v5->_supportsLinks = [providerCopy supportsLinks];
    v5->_supportsSharePlay = [providerCopy supportsSharePlay];
    v5->_supportsVideo = [providerCopy supportsVideo];
    v15 = [providerCopy copy];
    tuProvider = v5->_tuProvider;
    v5->_tuProvider = v15;
  }

  return v5;
}

- (id)tuConversationProvider
{
  v3 = [TUConversationProviderConfiguration alloc];
  identifier = [(CSDConversationProvider *)self identifier];
  v5 = [v3 initWithServiceName:identifier];

  bundleIdentifier = [(CSDConversationProvider *)self bundleIdentifier];
  v7 = [bundleIdentifier copy];
  [v5 setBundleID:v7];

  pseudonymFeatureID = [(CSDConversationProvider *)self pseudonymFeatureID];
  v9 = [pseudonymFeatureID copy];
  [v5 setPseudonymFeatureID:v9];

  v10 = [[TUConversationProvider alloc] initWithConfiguration:v5];

  return v10;
}

- (void)registerWithIDSWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(CSDConversationProvider *)self identifier];
    v11 = 138412290;
    v12 = identifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CSDConversationProvider creating CSDIDSService with service %@", &v11, 0xCu);
  }

  v7 = [CSDIDSService alloc];
  identifier2 = [(CSDConversationProvider *)self identifier];
  v9 = [(CSDIDSService *)v7 initWithName:identifier2];
  service = self->_service;
  self->_service = v9;

  handlerCopy[2](handlerCopy, 0);
}

- (id)callerIDAccount
{
  service = [(CSDConversationProvider *)self service];
  account = [service account];

  return account;
}

- (void)generatePseudonymHandleForConversationWithExpiryDuration:(double)duration URI:(id)i completionHandler:(id)handler
{
  handlerCopy = handler;
  iCopy = i;
  service = [(CSDConversationProvider *)self service];
  v11 = [[TUHandle alloc] initWithType:1 value:iCopy];

  pseudonymFeatureID = self->_pseudonymFeatureID;
  service2 = [(CSDConversationProvider *)self service];
  name = [service2 name];
  v15 = [NSArray arrayWithObject:name];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100240ED4;
  v17[3] = &unk_10061F748;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [service provisionPseudonymForHandle:v11 featureID:pseudonymFeatureID scopeID:0 expiryDuration:v15 allowedServices:v17 completionHandler:duration];
}

- (void)renewPseudonymHandle:(id)handle expirationDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  handleCopy = handle;
  service = [(CSDConversationProvider *)self service];
  value = [handleCopy value];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002410C4;
  v14[3] = &unk_10061F770;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [service renewPseudonymString:value expirationDate:dateCopy completionHandler:v14];
}

- (void)revokePseudonymHandle:(id)handle completionHandler:(id)handler
{
  handlerCopy = handler;
  handleCopy = handle;
  service = [(CSDConversationProvider *)self service];
  value = [handleCopy value];

  [service revokePseudonymString:value completionHandler:handlerCopy];
}

- (void)isPseudonymHandleForProvider:(id)provider completionHandler:(id)handler
{
  handlerCopy = handler;
  providerCopy = provider;
  service = [(CSDConversationProvider *)self service];
  value = [providerCopy value];

  (*(handler + 2))(handlerCopy, [service checkValidityForSelfPseudonymString:value]);
}

@end