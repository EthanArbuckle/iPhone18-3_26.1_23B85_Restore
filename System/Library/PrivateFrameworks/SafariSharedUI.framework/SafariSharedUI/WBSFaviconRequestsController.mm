@interface WBSFaviconRequestsController
- (CGSize)size;
- (WBSFaviconRequestsController)initWithSiteMetadataManager:(id)manager;
- (void)_issueRequest:(id)request isOneTime:(BOOL)time withToken:(id)token completion:(id)completion;
- (void)cancelAllRegistrationsWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)registerOneTimeRequestForDomain:(id)domain withToken:(id)token completion:(id)completion;
- (void)registerOneTimeRequestForURLString:(id)string withToken:(id)token completion:(id)completion;
- (void)registerOneTimeRequestForURLString:(id)string withToken:(id)token returnDefaultIconIfNoneAvailable:(BOOL)available iconSize:(CGSize)size isURLTypedByUser:(BOOL)user completion:(id)completion;
- (void)registerRequestForDomain:(id)domain withToken:(id)token completion:(id)completion;
- (void)registerRequestForURLString:(id)string withToken:(id)token completion:(id)completion;
- (void)registerRequestForURLString:(id)string withToken:(id)token returnDefaultIconIfNoneAvailable:(BOOL)available iconSize:(CGSize)size isURLTypedByUser:(BOOL)user completion:(id)completion;
@end

@implementation WBSFaviconRequestsController

- (WBSFaviconRequestsController)initWithSiteMetadataManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = WBSFaviconRequestsController;
  v6 = [(WBSFaviconRequestsController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    tokenToRequestToken = v7->_tokenToRequestToken;
    v7->_tokenToRequestToken = strongToStrongObjectsMapTable;

    v7->_priority = 0;
    v7->_size = WBSFaviconRequestSmallIconSize;
    v10 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = self->_tokenToRequestToken;
  objc_sync_enter(v3);
  objc_sync_exit(v3);

  v4.receiver = self;
  v4.super_class = WBSFaviconRequestsController;
  [(WBSFaviconRequestsController *)&v4 dealloc];
}

- (void)registerRequestForDomain:(id)domain withToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  domainCopy = domain;
  v11 = [WBSFaviconRequest alloc];
  [(WBSFaviconRequestsController *)self size];
  v12 = [(WBSFaviconRequest *)v11 initWithDomain:domainCopy iconSize:1 fallbackType:?];

  [(WBSFaviconRequestsController *)self _issueRequest:v12 isOneTime:0 withToken:tokenCopy completion:completionCopy];
}

- (void)registerRequestForURLString:(id)string withToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  stringCopy = string;
  [(WBSFaviconRequestsController *)self size];
  v12 = v11;
  v14 = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__WBSFaviconRequestsController_registerRequestForURLString_withToken_completion___block_invoke;
  v16[3] = &unk_1E8284D48;
  v17 = completionCopy;
  v15 = completionCopy;
  [(WBSFaviconRequestsController *)self registerRequestForURLString:stringCopy withToken:tokenCopy returnDefaultIconIfNoneAvailable:1 iconSize:0 isURLTypedByUser:v16 completion:v12, v14];
}

- (void)registerRequestForURLString:(id)string withToken:(id)token returnDefaultIconIfNoneAvailable:(BOOL)available iconSize:(CGSize)size isURLTypedByUser:(BOOL)user completion:(id)completion
{
  userCopy = user;
  height = size.height;
  width = size.width;
  availableCopy = available;
  v15 = MEMORY[0x1E695DFF8];
  completionCopy = completion;
  tokenCopy = token;
  if (userCopy)
  {
    [v15 safari_URLWithUserTypedString:string];
  }

  else
  {
    [v15 URLWithString:string];
  }
  v19 = ;
  height = [[WBSFaviconRequest alloc] initWithURL:v19 iconSize:availableCopy fallbackType:userCopy isURLTypedByUser:width, height];
  [(WBSFaviconRequestsController *)self _issueRequest:height isOneTime:0 withToken:tokenCopy completion:completionCopy];
}

- (void)registerOneTimeRequestForURLString:(id)string withToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  stringCopy = string;
  [(WBSFaviconRequestsController *)self size];
  v12 = v11;
  v14 = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__WBSFaviconRequestsController_registerOneTimeRequestForURLString_withToken_completion___block_invoke;
  v16[3] = &unk_1E8284D48;
  v17 = completionCopy;
  v15 = completionCopy;
  [(WBSFaviconRequestsController *)self registerOneTimeRequestForURLString:stringCopy withToken:tokenCopy returnDefaultIconIfNoneAvailable:1 iconSize:0 isURLTypedByUser:v16 completion:v12, v14];
}

- (void)registerOneTimeRequestForURLString:(id)string withToken:(id)token returnDefaultIconIfNoneAvailable:(BOOL)available iconSize:(CGSize)size isURLTypedByUser:(BOOL)user completion:(id)completion
{
  userCopy = user;
  height = size.height;
  width = size.width;
  availableCopy = available;
  v15 = MEMORY[0x1E695DFF8];
  completionCopy = completion;
  tokenCopy = token;
  if (userCopy)
  {
    [v15 safari_URLWithUserTypedString:string];
  }

  else
  {
    [v15 URLWithString:string];
  }
  v19 = ;
  height = [[WBSFaviconRequest alloc] initWithURL:v19 iconSize:availableCopy fallbackType:userCopy isURLTypedByUser:width, height];
  [(WBSFaviconRequestsController *)self _issueRequest:height isOneTime:1 withToken:tokenCopy completion:completionCopy];
}

- (void)registerOneTimeRequestForDomain:(id)domain withToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  domainCopy = domain;
  v11 = [WBSFaviconRequest alloc];
  [(WBSFaviconRequestsController *)self size];
  v12 = [(WBSFaviconRequest *)v11 initWithDomain:domainCopy iconSize:1 fallbackType:?];

  [(WBSFaviconRequestsController *)self _issueRequest:v12 isOneTime:1 withToken:tokenCopy completion:completionCopy];
}

- (void)cancelAllRegistrationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = self->_tokenToRequestToken;
  objc_sync_enter(v4);
  manager = self->_manager;
  objectEnumerator = [(NSMapTable *)self->_tokenToRequestToken objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  [(WBSSiteMetadataManager *)manager cancelRequestsWithTokens:allObjects completionHandler:handlerCopy];

  [(NSMapTable *)self->_tokenToRequestToken removeAllObjects];
  objc_sync_exit(v4);
}

- (void)_issueRequest:(id)request isOneTime:(BOOL)time withToken:(id)token completion:(id)completion
{
  timeCopy = time;
  requestCopy = request;
  tokenCopy = token;
  completionCopy = completion;
  v13 = self->_tokenToRequestToken;
  objc_sync_enter(v13);
  manager = self->_manager;
  v15 = [(NSMapTable *)self->_tokenToRequestToken objectForKey:tokenCopy];
  [(WBSSiteMetadataManager *)manager cancelRequestWithToken:v15];

  [(NSMapTable *)self->_tokenToRequestToken removeObjectForKey:tokenCopy];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3042000000;
  v34 = __Block_byref_object_copy__5;
  v35 = __Block_byref_object_dispose__5;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  objc_initWeak(&location, self);
  v16 = self->_manager;
  priority = [(WBSFaviconRequestsController *)self priority];
  if (timeCopy)
  {
    v18 = v24;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77__WBSFaviconRequestsController__issueRequest_isOneTime_withToken_completion___block_invoke;
    v24[3] = &unk_1E8284D70;
    v19 = &v25;
    objc_copyWeak(&v25, &location);
    v24[6] = &v27;
    v24[7] = &v31;
    v24[4] = tokenCopy;
    v24[5] = completionCopy;
    v20 = [(WBSSiteMetadataManager *)v16 registerOneTimeRequest:requestCopy priority:priority responseHandler:v24];
  }

  else
  {
    v18 = v22;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__WBSFaviconRequestsController__issueRequest_isOneTime_withToken_completion___block_invoke_2;
    v22[3] = &unk_1E8284D70;
    v19 = &v23;
    objc_copyWeak(&v23, &location);
    v22[6] = &v27;
    v22[7] = &v31;
    v22[4] = tokenCopy;
    v22[5] = completionCopy;
    v20 = [(WBSSiteMetadataManager *)v16 registerRequest:requestCopy priority:priority responseHandler:v22];
  }

  v21 = v20;

  objc_destroyWeak(v19);
  *(v28 + 24) = 1;
  if (v21)
  {
    objc_storeWeak(v32 + 5, v21);
    [(NSMapTable *)self->_tokenToRequestToken setObject:v21 forKey:tokenCopy];
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  objc_destroyWeak(&v36);

  objc_sync_exit(v13);
}

void __77__WBSFaviconRequestsController__issueRequest_isOneTime_withToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v5 = WeakRetained[1];
      objc_sync_enter(v5);
      v6 = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
      if (!v6 || ([v4[1] objectForKey:*(a1 + 32)], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != v6))
      {

        objc_sync_exit(v5);
LABEL_8:

        goto LABEL_9;
      }

      [v4[1] removeObjectForKey:*(a1 + 32)];

      objc_sync_exit(v5);
    }

    v8 = *(a1 + 40);
    v5 = [v9 favicon];
    (*(v8 + 16))(v8, v5, [v9 faviconType] == 0);
    goto LABEL_8;
  }

LABEL_9:
}

void __77__WBSFaviconRequestsController__issueRequest_isOneTime_withToken_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v5 = WeakRetained[1];
      objc_sync_enter(v5);
      v6 = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
      if (!v6)
      {
        objc_sync_exit(v5);
        goto LABEL_7;
      }

      v7 = v6;
      v8 = [v4[1] objectForKey:*(a1 + 32)];

      objc_sync_exit(v5);
      if (v8 != v7)
      {
        goto LABEL_8;
      }
    }

    v9 = *(a1 + 40);
    v5 = [v10 favicon];
    (*(v9 + 16))(v9, v5, [v10 faviconType] == 0);
LABEL_7:
  }

LABEL_8:
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end