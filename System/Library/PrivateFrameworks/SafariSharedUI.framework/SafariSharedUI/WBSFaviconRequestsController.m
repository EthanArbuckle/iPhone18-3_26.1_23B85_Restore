@interface WBSFaviconRequestsController
- (CGSize)size;
- (WBSFaviconRequestsController)initWithSiteMetadataManager:(id)a3;
- (void)_issueRequest:(id)a3 isOneTime:(BOOL)a4 withToken:(id)a5 completion:(id)a6;
- (void)cancelAllRegistrationsWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)registerOneTimeRequestForDomain:(id)a3 withToken:(id)a4 completion:(id)a5;
- (void)registerOneTimeRequestForURLString:(id)a3 withToken:(id)a4 completion:(id)a5;
- (void)registerOneTimeRequestForURLString:(id)a3 withToken:(id)a4 returnDefaultIconIfNoneAvailable:(BOOL)a5 iconSize:(CGSize)a6 isURLTypedByUser:(BOOL)a7 completion:(id)a8;
- (void)registerRequestForDomain:(id)a3 withToken:(id)a4 completion:(id)a5;
- (void)registerRequestForURLString:(id)a3 withToken:(id)a4 completion:(id)a5;
- (void)registerRequestForURLString:(id)a3 withToken:(id)a4 returnDefaultIconIfNoneAvailable:(BOOL)a5 iconSize:(CGSize)a6 isURLTypedByUser:(BOOL)a7 completion:(id)a8;
@end

@implementation WBSFaviconRequestsController

- (WBSFaviconRequestsController)initWithSiteMetadataManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WBSFaviconRequestsController;
  v6 = [(WBSFaviconRequestsController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, a3);
    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    tokenToRequestToken = v7->_tokenToRequestToken;
    v7->_tokenToRequestToken = v8;

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

- (void)registerRequestForDomain:(id)a3 withToken:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [WBSFaviconRequest alloc];
  [(WBSFaviconRequestsController *)self size];
  v12 = [(WBSFaviconRequest *)v11 initWithDomain:v10 iconSize:1 fallbackType:?];

  [(WBSFaviconRequestsController *)self _issueRequest:v12 isOneTime:0 withToken:v9 completion:v8];
}

- (void)registerRequestForURLString:(id)a3 withToken:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(WBSFaviconRequestsController *)self size];
  v12 = v11;
  v14 = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__WBSFaviconRequestsController_registerRequestForURLString_withToken_completion___block_invoke;
  v16[3] = &unk_1E8284D48;
  v17 = v8;
  v15 = v8;
  [(WBSFaviconRequestsController *)self registerRequestForURLString:v10 withToken:v9 returnDefaultIconIfNoneAvailable:1 iconSize:0 isURLTypedByUser:v16 completion:v12, v14];
}

- (void)registerRequestForURLString:(id)a3 withToken:(id)a4 returnDefaultIconIfNoneAvailable:(BOOL)a5 iconSize:(CGSize)a6 isURLTypedByUser:(BOOL)a7 completion:(id)a8
{
  v8 = a7;
  height = a6.height;
  width = a6.width;
  v11 = a5;
  v15 = MEMORY[0x1E695DFF8];
  v16 = a8;
  v17 = a4;
  if (v8)
  {
    [v15 safari_URLWithUserTypedString:a3];
  }

  else
  {
    [v15 URLWithString:a3];
  }
  v19 = ;
  v18 = [[WBSFaviconRequest alloc] initWithURL:v19 iconSize:v11 fallbackType:v8 isURLTypedByUser:width, height];
  [(WBSFaviconRequestsController *)self _issueRequest:v18 isOneTime:0 withToken:v17 completion:v16];
}

- (void)registerOneTimeRequestForURLString:(id)a3 withToken:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(WBSFaviconRequestsController *)self size];
  v12 = v11;
  v14 = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__WBSFaviconRequestsController_registerOneTimeRequestForURLString_withToken_completion___block_invoke;
  v16[3] = &unk_1E8284D48;
  v17 = v8;
  v15 = v8;
  [(WBSFaviconRequestsController *)self registerOneTimeRequestForURLString:v10 withToken:v9 returnDefaultIconIfNoneAvailable:1 iconSize:0 isURLTypedByUser:v16 completion:v12, v14];
}

- (void)registerOneTimeRequestForURLString:(id)a3 withToken:(id)a4 returnDefaultIconIfNoneAvailable:(BOOL)a5 iconSize:(CGSize)a6 isURLTypedByUser:(BOOL)a7 completion:(id)a8
{
  v8 = a7;
  height = a6.height;
  width = a6.width;
  v11 = a5;
  v15 = MEMORY[0x1E695DFF8];
  v16 = a8;
  v17 = a4;
  if (v8)
  {
    [v15 safari_URLWithUserTypedString:a3];
  }

  else
  {
    [v15 URLWithString:a3];
  }
  v19 = ;
  v18 = [[WBSFaviconRequest alloc] initWithURL:v19 iconSize:v11 fallbackType:v8 isURLTypedByUser:width, height];
  [(WBSFaviconRequestsController *)self _issueRequest:v18 isOneTime:1 withToken:v17 completion:v16];
}

- (void)registerOneTimeRequestForDomain:(id)a3 withToken:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [WBSFaviconRequest alloc];
  [(WBSFaviconRequestsController *)self size];
  v12 = [(WBSFaviconRequest *)v11 initWithDomain:v10 iconSize:1 fallbackType:?];

  [(WBSFaviconRequestsController *)self _issueRequest:v12 isOneTime:1 withToken:v9 completion:v8];
}

- (void)cancelAllRegistrationsWithCompletionHandler:(id)a3
{
  v8 = a3;
  v4 = self->_tokenToRequestToken;
  objc_sync_enter(v4);
  manager = self->_manager;
  v6 = [(NSMapTable *)self->_tokenToRequestToken objectEnumerator];
  v7 = [v6 allObjects];
  [(WBSSiteMetadataManager *)manager cancelRequestsWithTokens:v7 completionHandler:v8];

  [(NSMapTable *)self->_tokenToRequestToken removeAllObjects];
  objc_sync_exit(v4);
}

- (void)_issueRequest:(id)a3 isOneTime:(BOOL)a4 withToken:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self->_tokenToRequestToken;
  objc_sync_enter(v13);
  manager = self->_manager;
  v15 = [(NSMapTable *)self->_tokenToRequestToken objectForKey:v11];
  [(WBSSiteMetadataManager *)manager cancelRequestWithToken:v15];

  [(NSMapTable *)self->_tokenToRequestToken removeObjectForKey:v11];
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
  v17 = [(WBSFaviconRequestsController *)self priority];
  if (v8)
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
    v24[4] = v11;
    v24[5] = v12;
    v20 = [(WBSSiteMetadataManager *)v16 registerOneTimeRequest:v10 priority:v17 responseHandler:v24];
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
    v22[4] = v11;
    v22[5] = v12;
    v20 = [(WBSSiteMetadataManager *)v16 registerRequest:v10 priority:v17 responseHandler:v22];
  }

  v21 = v20;

  objc_destroyWeak(v19);
  *(v28 + 24) = 1;
  if (v21)
  {
    objc_storeWeak(v32 + 5, v21);
    [(NSMapTable *)self->_tokenToRequestToken setObject:v21 forKey:v11];
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