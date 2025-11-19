@interface SKUIMediaSocialAdminPermissionsOperation
- (SKUIMediaSocialAdminPermissionsOperation)initWithClientContext:(id)a3;
- (id)_authorsWithResponseDictionary:(id)a3;
- (id)_lookupResponseForMissingAuthors:(id)a3 error:(id *)a4;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)a3;
@end

@implementation SKUIMediaSocialAdminPermissionsOperation

- (SKUIMediaSocialAdminPermissionsOperation)initWithClientContext:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMediaSocialAdminPermissionsOperation initWithClientContext:];
  }

  v10.receiver = self;
  v10.super_class = SKUIMediaSocialAdminPermissionsOperation;
  v6 = [(SSVOperation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
    v8 = [(SKUIClientContext *)v7->_clientContext URLBag];
    [(SSVComplexOperation *)v7 configureWithURLBag:v8];
  }

  return v7;
}

- (id)outputBlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SKUIMediaSocialAdminPermissionsOperation_outputBlock__block_invoke;
  v4[3] = &unk_2781F8608;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = _Block_copy(v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __55__SKUIMediaSocialAdminPermissionsOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 320) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setOutputBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SKUIMediaSocialAdminPermissionsOperation_setOutputBlock___block_invoke;
  v6[3] = &unk_2781F98F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVOperation *)self dispatchAsync:v6];
}

void *__59__SKUIMediaSocialAdminPermissionsOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 320) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 320);
    *(v5 + 320) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (void)main
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__5;
  v30 = 0;
  v3 = [(SSVComplexOperation *)self URLBagDictionary];
  v4 = [v3 objectForKey:*MEMORY[0x277D6A670]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"profilePermissions"];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
    v7 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v6];
    SSVAddMediaSocialHeadersToURLRequest();
    v8 = [(SSVComplexOperation *)self newLoadURLOperationWithRequest:v7];
    v9 = [MEMORY[0x277D69D48] consumer];
    [v8 setDataConsumer:v9];

    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__5;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__SKUIMediaSocialAdminPermissionsOperation_main__block_invoke;
    v18[3] = &unk_2781FBAC8;
    v18[4] = &v19;
    v18[5] = &v25;
    [v8 setOutputBlock:v18];
    [(SSVOperation *)self runChildOperation:v8];
    if (v20[5])
    {
      v10 = [(SKUIMediaSocialAdminPermissionsOperation *)self _authorsWithResponseDictionary:?];
    }

    else
    {
      v10 = 0;
    }

    if (!v26[5] && ![v10 count])
    {
      v12 = [v8 URLResponse];
      if ([v12 statusCode] == 403)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SKUIErrorDomain" code:v13 userInfo:0];
      v15 = v26[5];
      v26[5] = v14;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = SSError();
    v10 = 0;
    v6 = v26[5];
    v26[5] = v11;
  }

  v16 = [(SKUIMediaSocialAdminPermissionsOperation *)self outputBlock];
  v17 = v16;
  if (v16)
  {
    (*(v16 + 16))(v16, v10, v26[5]);
  }

  _Block_object_dispose(&v25, 8);
}

void __48__SKUIMediaSocialAdminPermissionsOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = v11;
LABEL_5:
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
    goto LABEL_6;
  }

  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    goto LABEL_5;
  }

  v9 = SSError();
  v10 = *(*(a1 + 40) + 8);
  v8 = *(v10 + 40);
  *(v10 + 40) = v9;
LABEL_6:
}

- (id)_authorsWithResponseDictionary:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v4 objectForKey:@"permissions"];
  if (!v6)
  {
    v6 = [v4 objectForKey:@"persmissions"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 objectForKey:@"storePlatformData"];
    objc_opt_class();
    v53 = v4;
    v54 = v5;
    v50 = self;
    v51 = v7;
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKey:@"artist"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKey:@"results"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v57 = v9;
        }

        else
        {
          v57 = 0;
        }
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      v57 = 0;
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v52 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v66 objects:v72 count:16];
    v56 = v10;
    if (v12)
    {
      v13 = v12;
      v14 = *v67;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v67 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v66 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [[SKUIMediaSocialAuthor alloc] initWithAuthorDictionary:v16];
            v18 = [(SKUIMediaSocialAuthor *)v17 identifier];
            if (v18)
            {
              v19 = [v57 objectForKey:v18];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = [objc_alloc(MEMORY[0x277D69B40]) initWithLookupDictionary:v19];
                v21 = [v20 artwork];
                v22 = [v21 lastObject];

                v23 = [v20 displayName];
                [(SKUIMediaSocialAuthor *)v17 setName:v23];

                v24 = [v22 URLWithHeight:125 width:125];
                [(SKUIMediaSocialAuthor *)v17 setThumbnailImageURL:v24];

                v10 = v56;
                [(SKUIMediaSocialAuthor *)v17 setStorePlatformData:v19];
              }

              v25 = [(SKUIMediaSocialAuthor *)v17 name:v50];
              v26 = [v25 length];

              if (!v26)
              {
                [v55 addObject:v17];
              }

              [v10 addObject:v17];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v66 objects:v72 count:16];
      }

      while (v13);
    }

    if ([v55 count])
    {
      v27 = [(SKUIMediaSocialAdminPermissionsOperation *)v50 _lookupResponseForMissingAuthors:v55 error:0];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v28 = v55;
      v29 = [v28 countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v63;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v63 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v62 + 1) + 8 * j);
            v34 = [v33 identifier];
            v35 = [v27 itemForKey:v34];

            v36 = [v35 artwork];
            v37 = [v36 lastObject];

            v38 = [v35 displayName];
            [v33 setName:v38];

            v39 = [v37 URL];
            [v33 setThumbnailImageURL:v39];

            v40 = [v35 lookupDictionary];
            [v33 setStorePlatformData:v40];
          }

          v30 = [v28 countByEnumeratingWithState:&v62 objects:v71 count:16];
        }

        while (v30);
      }

      v10 = v56;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v41 = v10;
    v42 = [v41 countByEnumeratingWithState:&v58 objects:v70 count:16];
    v5 = v54;
    if (v42)
    {
      v43 = v42;
      v44 = *v59;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v59 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v58 + 1) + 8 * k);
          v47 = [v46 name];
          v48 = [v47 length];

          if (v48)
          {
            [v54 addObject:v46];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v58 objects:v70 count:16];
      }

      while (v43);
    }

    v6 = v52;
    v4 = v53;
  }

  return v5;
}

- (id)_lookupResponseForMissingAuthors:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__5;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v7 = objc_alloc(MEMORY[0x277D69CE8]);
  v8 = [(SKUIClientContext *)self->_clientContext URLBag];
  v9 = [v8 existingBagDictionary];
  v10 = [v7 initWithBagDictionary:v9];

  v11 = [objc_alloc(MEMORY[0x277D69CF0]) initWithPlatformContext:v10];
  [v11 setKeyProfile:*MEMORY[0x277D6A2C8]];
  [v11 setPersonalizationStyle:2];
  v12 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
  [v11 setStoreFrontSuffix:v12];

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v39 count:16];
  if (v15)
  {
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [*(*(&v23 + 1) + 8 * i) identifier];
        [v13 addObject:v18];
      }

      v15 = [v14 countByEnumeratingWithState:&v23 objects:v39 count:16];
    }

    while (v15);
  }

  [v11 setItemIdentifiers:v13];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__SKUIMediaSocialAdminPermissionsOperation__lookupResponseForMissingAuthors_error___block_invoke;
  v22[3] = &unk_2781FBAF0;
  v22[4] = &v33;
  v22[5] = &v27;
  [v11 setResponseBlock:v22];
  [(SSVOperation *)self runChildOperation:v11];
  v19 = v28[5];
  if (a4 && !v19)
  {
    *a4 = v34[5];
    v19 = v28[5];
  }

  v20 = v19;

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v20;
}

void __83__SKUIMediaSocialAdminPermissionsOperation__lookupResponseForMissingAuthors_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMediaSocialAdminPermissionsOperation initWithClientContext:]";
}

@end