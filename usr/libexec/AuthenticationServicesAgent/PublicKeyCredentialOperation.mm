@interface PublicKeyCredentialOperation
- (ASPublicKeyCredentialManagerDelegate)delegate;
- (BOOL)hasSelectedAssertion;
- (BOOL)hasTornDown;
- (NSDictionary)identifiersToAssertionResponses;
- (PublicKeyCredentialOperation)initWithRelyingPartyIdentifier:(id)identifier delegate:(id)delegate parentActivity:(id)activity;
- (void)mergeIdentifiersToAssertionResponses:(id)responses;
- (void)selectPlatformAssertion:(id)assertion;
- (void)selectSecurityKeyAssertion:(id)assertion;
- (void)setPlatformAssertionSelectionCallback:(id)callback;
- (void)setSecurityKeyAssertionSelectionCallback:(id)callback;
- (void)tearDownIfNecessary;
@end

@implementation PublicKeyCredentialOperation

- (PublicKeyCredentialOperation)initWithRelyingPartyIdentifier:(id)identifier delegate:(id)delegate parentActivity:(id)activity
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  activityCopy = activity;
  v22.receiver = self;
  v22.super_class = PublicKeyCredentialOperation;
  v11 = [(PublicKeyCredentialOperation *)&v22 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    relyingPartyIdentifier = v11->_relyingPartyIdentifier;
    v11->_relyingPartyIdentifier = v12;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    v14 = +[NSUUID UUID];
    uuid = v11->_uuid;
    v11->_uuid = v14;

    v16 = dispatch_semaphore_create(1);
    internalSemaphore = v11->_internalSemaphore;
    v11->_internalSemaphore = v16;

    v18 = _os_activity_create(&_mh_execute_header, "PublicKeyCredential operation", activityCopy, OS_ACTIVITY_FLAG_DEFAULT);
    activity = v11->_activity;
    v11->_activity = v18;

    v20 = v11;
  }

  return v11;
}

- (NSDictionary)identifiersToAssertionResponses
{
  v2 = [(NSMutableDictionary *)self->_identifiersToAssertionResponses copy];

  return v2;
}

- (void)mergeIdentifiersToAssertionResponses:(id)responses
{
  responsesCopy = responses;
  if (!dispatch_semaphore_wait(self->_internalSemaphore, 0x12A05F200uLL))
  {
    os_activity_apply(self->_activity, &stru_100031120);
  }

  v5 = objc_alloc_init(WBSScopeExitHandler);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100001FA0;
  v18[3] = &unk_100031148;
  v18[4] = self;
  [v5 setHandler:v18];
  if (self->_identifiersToAssertionResponses)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    identifiersToAssertionResponses = responsesCopy;
    v7 = [(NSMutableDictionary *)identifiersToAssertionResponses countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(identifiersToAssertionResponses);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)identifiersToAssertionResponses objectForKeyedSubscript:v11, v14];
          [(NSMutableDictionary *)self->_identifiersToAssertionResponses setObject:v12 forKeyedSubscript:v11];
        }

        v8 = [(NSMutableDictionary *)identifiersToAssertionResponses countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v13 = [responsesCopy mutableCopy];
    identifiersToAssertionResponses = self->_identifiersToAssertionResponses;
    self->_identifiersToAssertionResponses = v13;
  }
}

- (void)setPlatformAssertionSelectionCallback:(id)callback
{
  internalSemaphore = self->_internalSemaphore;
  callbackCopy = callback;
  if (!dispatch_semaphore_wait(internalSemaphore, 0x12A05F200uLL))
  {
    os_activity_apply(self->_activity, &stru_100031168);
  }

  v6 = objc_alloc_init(WBSScopeExitHandler);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000020CC;
  v9[3] = &unk_100031148;
  v9[4] = self;
  [v6 setHandler:v9];
  v7 = objc_retainBlock(callbackCopy);

  selectPlatformAssertionCallback = self->_selectPlatformAssertionCallback;
  self->_selectPlatformAssertionCallback = v7;
}

- (void)setSecurityKeyAssertionSelectionCallback:(id)callback
{
  internalSemaphore = self->_internalSemaphore;
  callbackCopy = callback;
  if (!dispatch_semaphore_wait(internalSemaphore, 0x12A05F200uLL))
  {
    os_activity_apply(self->_activity, &stru_100031188);
  }

  v6 = objc_alloc_init(WBSScopeExitHandler);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000021F8;
  v9[3] = &unk_100031148;
  v9[4] = self;
  [v6 setHandler:v9];
  v7 = objc_retainBlock(callbackCopy);

  selectSecurityKeyAssertionCallback = self->_selectSecurityKeyAssertionCallback;
  self->_selectSecurityKeyAssertionCallback = v7;
}

- (void)selectPlatformAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (!dispatch_semaphore_wait(self->_internalSemaphore, 0x12A05F200uLL))
  {
    os_activity_apply(self->_activity, &stru_1000311A8);
  }

  v5 = objc_alloc_init(WBSScopeExitHandler);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002350;
  v7[3] = &unk_100031148;
  v7[4] = self;
  [v5 setHandler:v7];
  if (self->_hasSelectedAssertion)
  {
    os_activity_apply(self->_activity, &stru_1000311C8);
  }

  else
  {
    self->_hasSelectedAssertion = 1;
    (*(self->_selectPlatformAssertionCallback + 2))();
    selectPlatformAssertionCallback = self->_selectPlatformAssertionCallback;
    self->_selectPlatformAssertionCallback = 0;
  }
}

- (void)selectSecurityKeyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (!dispatch_semaphore_wait(self->_internalSemaphore, 0x12A05F200uLL))
  {
    os_activity_apply(self->_activity, &stru_1000311E8);
  }

  v5 = objc_alloc_init(WBSScopeExitHandler);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000024E4;
  v7[3] = &unk_100031148;
  v7[4] = self;
  [v5 setHandler:v7];
  if (self->_hasSelectedAssertion)
  {
    os_activity_apply(self->_activity, &stru_100031208);
  }

  else
  {
    self->_hasSelectedAssertion = 1;
    (*(self->_selectSecurityKeyAssertionCallback + 2))();
    selectSecurityKeyAssertionCallback = self->_selectSecurityKeyAssertionCallback;
    self->_selectSecurityKeyAssertionCallback = 0;
  }
}

- (BOOL)hasTornDown
{
  if (!dispatch_semaphore_wait(self->_internalSemaphore, 0x12A05F200uLL))
  {
    os_activity_apply(self->_activity, &stru_100031228);
  }

  v3 = objc_alloc_init(WBSScopeExitHandler);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002624;
  v6[3] = &unk_100031148;
  v6[4] = self;
  [v3 setHandler:v6];
  hasTornDown = self->_hasTornDown;

  return hasTornDown;
}

- (BOOL)hasSelectedAssertion
{
  if (!dispatch_semaphore_wait(self->_internalSemaphore, 0x12A05F200uLL))
  {
    os_activity_apply(self->_activity, &stru_100031248);
  }

  v3 = objc_alloc_init(WBSScopeExitHandler);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002728;
  v6[3] = &unk_100031148;
  v6[4] = self;
  [v3 setHandler:v6];
  hasSelectedAssertion = self->_hasSelectedAssertion;

  return hasSelectedAssertion;
}

- (void)tearDownIfNecessary
{
  if (!dispatch_semaphore_wait(self->_internalSemaphore, 0x12A05F200uLL))
  {
    os_activity_apply(self->_activity, &stru_100031268);
  }

  v3 = objc_alloc_init(WBSScopeExitHandler);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002890;
  v7[3] = &unk_100031148;
  v7[4] = self;
  [v3 setHandler:v7];
  if (!self->_hasTornDown)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000289C;
    block[3] = &unk_100031290;
    v5 = v3;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (ASPublicKeyCredentialManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end