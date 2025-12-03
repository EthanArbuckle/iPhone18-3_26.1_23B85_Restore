@interface MediaSocialAuthenticationCoordinator
- (MediaSocialAuthenticationCoordinator)initWithDispatchQueue:(id)queue;
- (MediaSocialAuthenticationDelegate)delegate;
- (id)_enqueueOperationIfNecessaryWithAccountIdentifier:(id)identifier;
- (id)_newAuthenticateOperationWithAccountIdentifier:(id)identifier;
- (void)_finishResponse:(id)response;
- (void)authenticateForPostWithIdentifier:(int64_t)identifier accountIdentifier:(id)accountIdentifier;
- (void)authenticateForUploadWithIdentifier:(int64_t)identifier accountIdentifier:(id)accountIdentifier;
@end

@implementation MediaSocialAuthenticationCoordinator

- (MediaSocialAuthenticationCoordinator)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = MediaSocialAuthenticationCoordinator;
  v6 = [(MediaSocialAuthenticationCoordinator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
    v8 = objc_alloc_init(ISOperationQueue);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v8;

    [(ISOperationQueue *)v7->_operationQueue setMaxConcurrentOperationCount:1];
    [(ISOperationQueue *)v7->_operationQueue setName:@"com.apple.itunesstored.MediaSocialAuthenticationCoordinator"];
  }

  return v7;
}

- (void)authenticateForPostWithIdentifier:(int64_t)identifier accountIdentifier:(id)accountIdentifier
{
  v5 = [(MediaSocialAuthenticationCoordinator *)self _enqueueOperationIfNecessaryWithAccountIdentifier:accountIdentifier];
  [v5 addPostIdentifier:identifier];
}

- (void)authenticateForUploadWithIdentifier:(int64_t)identifier accountIdentifier:(id)accountIdentifier
{
  v5 = [(MediaSocialAuthenticationCoordinator *)self _enqueueOperationIfNecessaryWithAccountIdentifier:accountIdentifier];
  [v5 addUploadIdentifier:identifier];
}

- (id)_enqueueOperationIfNecessaryWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = self->_pendingResponses;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v5)
  {

LABEL_13:
    v14 = objc_alloc_init(MediaSocialAuthenticationResponse);
    [(MediaSocialAuthenticationResponse *)v14 setAccountIdentifier:identifierCopy];
    pendingResponses = self->_pendingResponses;
    if (!pendingResponses)
    {
      v16 = objc_alloc_init(NSMutableArray);
      v17 = self->_pendingResponses;
      self->_pendingResponses = v16;

      pendingResponses = self->_pendingResponses;
    }

    [(NSMutableArray *)pendingResponses addObject:v14, identifierCopy];
    v18 = [(MediaSocialAuthenticationCoordinator *)self _newAuthenticateOperationWithAccountIdentifier:identifierCopy];
    objc_initWeak(&location, v18);
    objc_initWeak(&from, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10014B210;
    v21[3] = &unk_100329D88;
    objc_copyWeak(&v23, &from);
    objc_copyWeak(&v24, &location);
    v6 = v14;
    v22 = v6;
    [v18 setCompletionBlock:v21];
    [(ISOperationQueue *)self->_operationQueue addOperation:v18];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    goto LABEL_16;
  }

  v6 = 0;
  v7 = *v28;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v28 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v27 + 1) + 8 * i);
      accountIdentifier = [v9 accountIdentifier];
      accountIdentifier2 = [v9 accountIdentifier];
      v12 = [accountIdentifier isEqual:accountIdentifier2];

      if (v12)
      {
        v13 = v9;

        v6 = v13;
      }
    }

    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v5);

  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_16:

  return v6;
}

- (void)_finishResponse:(id)response
{
  responseCopy = response;
  [(NSMutableArray *)self->_pendingResponses removeObject:?];
  if (![(NSMutableArray *)self->_pendingResponses count])
  {
    pendingResponses = self->_pendingResponses;
    self->_pendingResponses = 0;
  }

  delegate = [(MediaSocialAuthenticationCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate authenticationCoordinator:self didFinishAuthenticationWithResponse:responseCopy];
  }
}

- (id)_newAuthenticateOperationWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:identifierCopy];
  [v4 setCanCreateNewAccount:0];
  [v4 setCanSetActiveAccount:0];
  [v4 setPromptStyle:1];
  v5 = +[SSAccountStore defaultStore];
  v6 = [v5 accountWithUniqueIdentifier:identifierCopy];

  accountName = [v6 accountName];
  if ([accountName length])
  {
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.storeservices"];
    v9 = [v8 localizedStringForKey:@"MEDIA_SOCIAL_ENTER_PASSWORD_FORMAT_%@" value:&stru_10033CC30 table:@"MediaSocial"];
    v10 = [NSString stringWithFormat:v9, accountName];
    [v4 setReasonDescription:v10];
  }

  else
  {
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.storeservices"];
    v9 = [v8 localizedStringForKey:@"MEDIA_SOCIAL_ENTER_PASSWORD_NO_ACCOUNT" value:&stru_10033CC30 table:@"MediaSocial"];
    [v4 setReasonDescription:v9];
  }

  v11 = [[ISStoreAuthenticateOperation alloc] initWithAuthenticationContext:v4];
  return v11;
}

- (MediaSocialAuthenticationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end