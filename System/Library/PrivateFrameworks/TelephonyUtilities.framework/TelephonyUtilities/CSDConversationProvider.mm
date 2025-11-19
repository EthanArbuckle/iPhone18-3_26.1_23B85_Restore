@interface CSDConversationProvider
- (CSDConversationProvider)initWithProvider:(id)a3;
- (id)callerIDAccount;
- (id)tuConversationProvider;
- (void)generatePseudonymHandleForConversationWithExpiryDuration:(double)a3 URI:(id)a4 completionHandler:(id)a5;
- (void)isPseudonymHandleForProvider:(id)a3 completionHandler:(id)a4;
- (void)registerWithIDSWithCompletionHandler:(id)a3;
- (void)renewPseudonymHandle:(id)a3 expirationDate:(id)a4 completionHandler:(id)a5;
- (void)revokePseudonymHandle:(id)a3 completionHandler:(id)a4;
@end

@implementation CSDConversationProvider

- (CSDConversationProvider)initWithProvider:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CSDConversationProvider;
  v5 = [(CSDConversationProvider *)&v18 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 bundleIdentifier];
    v10 = [v9 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = [v4 pseudonymFeatureID];
    v13 = [v12 copy];
    pseudonymFeatureID = v5->_pseudonymFeatureID;
    v5->_pseudonymFeatureID = v13;

    v5->_supportsLinks = [v4 supportsLinks];
    v5->_supportsSharePlay = [v4 supportsSharePlay];
    v5->_supportsVideo = [v4 supportsVideo];
    v15 = [v4 copy];
    tuProvider = v5->_tuProvider;
    v5->_tuProvider = v15;
  }

  return v5;
}

- (id)tuConversationProvider
{
  v3 = [TUConversationProviderConfiguration alloc];
  v4 = [(CSDConversationProvider *)self identifier];
  v5 = [v3 initWithServiceName:v4];

  v6 = [(CSDConversationProvider *)self bundleIdentifier];
  v7 = [v6 copy];
  [v5 setBundleID:v7];

  v8 = [(CSDConversationProvider *)self pseudonymFeatureID];
  v9 = [v8 copy];
  [v5 setPseudonymFeatureID:v9];

  v10 = [[TUConversationProvider alloc] initWithConfiguration:v5];

  return v10;
}

- (void)registerWithIDSWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSDConversationProvider *)self identifier];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CSDConversationProvider creating CSDIDSService with service %@", &v11, 0xCu);
  }

  v7 = [CSDIDSService alloc];
  v8 = [(CSDConversationProvider *)self identifier];
  v9 = [(CSDIDSService *)v7 initWithName:v8];
  service = self->_service;
  self->_service = v9;

  v4[2](v4, 0);
}

- (id)callerIDAccount
{
  v2 = [(CSDConversationProvider *)self service];
  v3 = [v2 account];

  return v3;
}

- (void)generatePseudonymHandleForConversationWithExpiryDuration:(double)a3 URI:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(CSDConversationProvider *)self service];
  v11 = [[TUHandle alloc] initWithType:1 value:v9];

  pseudonymFeatureID = self->_pseudonymFeatureID;
  v13 = [(CSDConversationProvider *)self service];
  v14 = [v13 name];
  v15 = [NSArray arrayWithObject:v14];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100240ED4;
  v17[3] = &unk_10061F748;
  v18 = v8;
  v16 = v8;
  [v10 provisionPseudonymForHandle:v11 featureID:pseudonymFeatureID scopeID:0 expiryDuration:v15 allowedServices:v17 completionHandler:a3];
}

- (void)renewPseudonymHandle:(id)a3 expirationDate:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CSDConversationProvider *)self service];
  v12 = [v10 value];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002410C4;
  v14[3] = &unk_10061F770;
  v15 = v8;
  v13 = v8;
  [v11 renewPseudonymString:v12 expirationDate:v9 completionHandler:v14];
}

- (void)revokePseudonymHandle:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CSDConversationProvider *)self service];
  v8 = [v7 value];

  [v9 revokePseudonymString:v8 completionHandler:v6];
}

- (void)isPseudonymHandleForProvider:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(CSDConversationProvider *)self service];
  v9 = [v8 value];

  (*(a4 + 2))(v7, [v10 checkValidityForSelfPseudonymString:v9]);
}

@end