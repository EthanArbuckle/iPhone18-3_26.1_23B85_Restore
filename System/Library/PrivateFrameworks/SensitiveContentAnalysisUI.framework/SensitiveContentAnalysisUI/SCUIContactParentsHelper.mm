@interface SCUIContactParentsHelper
+ (id)urlFromAddressList:(id)a3;
+ (void)obtainChatWithParentsURLForInterventionType:(int64_t)a3 completionHandler:(id)a4;
+ (void)obtainParentsForCurrentContact:(id)a3;
+ (void)openChatWithParentsForInterventionType:(int64_t)a3;
+ (void)openChatWithURL:(id)a3;
@end

@implementation SCUIContactParentsHelper

+ (void)openChatWithParentsForInterventionType:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global);
    }
  }

  else
  {
    [SCUIContactParentsHelper obtainParentsForCurrentContact:&__block_literal_global_19];
  }
}

void __67__SCUIContactParentsHelper_openChatWithParentsForInterventionType___block_invoke()
{
  v0 = [SCUIContactParentsHelper urlFromAddressList:0];
  [SCUIContactParentsHelper openChatWithURL:v0];
}

void __67__SCUIContactParentsHelper_openChatWithParentsForInterventionType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SCUIContactParentsHelper_openChatWithParentsForInterventionType___block_invoke_3;
  block[3] = &unk_1E7FF2450;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__SCUIContactParentsHelper_openChatWithParentsForInterventionType___block_invoke_3(uint64_t a1)
{
  v1 = [SCUIContactParentsHelper urlFromAddressList:*(a1 + 32)];
  [SCUIContactParentsHelper openChatWithURL:v1];
}

+ (void)obtainChatWithParentsURLForInterventionType:(int64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = [SCUIContactParentsHelper urlFromAddressList:0];
      (v6)[2](v6, v7);
    }
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __90__SCUIContactParentsHelper_obtainChatWithParentsURLForInterventionType_completionHandler___block_invoke;
    v8[3] = &unk_1E7FF2478;
    v9 = v5;
    [SCUIContactParentsHelper obtainParentsForCurrentContact:v8];
  }
}

void __90__SCUIContactParentsHelper_obtainChatWithParentsURLForInterventionType_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [SCUIContactParentsHelper urlFromAddressList:a2];
  (*(v2 + 16))(v2, v3);
}

+ (void)openChatWithURL:(id)a3
{
  v3 = MEMORY[0x1E69DC668];
  v4 = a3;
  v5 = [v3 sharedApplication];
  [v5 openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

+ (id)urlFromAddressList:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AF60] queryItemWithName:@"service" value:@"iMessage"];
  [v4 addObject:v5];

  v6 = MEMORY[0x1E696AF60];
  v7 = [SCUIResources localizedStringForKey:@"MESSAGE_GROWNUP_BODY"];
  v8 = [v6 queryItemWithName:@"body" value:v7];
  [v4 addObject:v8];

  if ([v3 count])
  {
    v9 = MEMORY[0x1E696AF60];
    v10 = [v3 componentsJoinedByString:{@", "}];
    v11 = [v9 queryItemWithName:@"recipients" value:v10];
    [v4 addObject:v11];

    v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"best-match" value:@"1"];
    [v4 addObject:v12];
  }

  v13 = [MEMORY[0x1E696AF20] componentsWithString:@"messages://open"];
  [v13 setQueryItems:v4];
  v14 = [v13 URL];

  return v14;
}

+ (void)obtainParentsForCurrentContact:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E699C070]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SCUIContactParentsHelper_obtainParentsForCurrentContact___block_invoke;
  v6[3] = &unk_1E7FF24A0;
  v7 = v3;
  v5 = v3;
  [v4 startRequestWithCompletionHandler:v6];
}

void __59__SCUIContactParentsHelper_obtainParentsForCurrentContact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v40 = [MEMORY[0x1E695E0F0] mutableCopy];
  if (!v5)
  {
    v7 = [MEMORY[0x1E697B660] clientUI];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__SCUIContactParentsHelper_obtainParentsForCurrentContact___block_invoke_cold_1(v6, v7);
    }

    goto LABEL_29;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [v5 members];
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (!v8)
  {
LABEL_29:

    v34 = *(a1 + 32);
LABEL_31:
    (*(v34 + 16))(v34, 0);
    goto LABEL_32;
  }

  v9 = v8;
  v37 = a1;
  v38 = v6;
  v39 = v5;
  v10 = 0;
  v11 = *v43;
  v12 = 0x1E697B000uLL;
  do
  {
    v13 = 0;
    do
    {
      if (*v43 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v42 + 1) + 8 * v13);
      if (![v14 isMe])
      {
        if (![v14 isParent])
        {
          goto LABEL_20;
        }

        v41 = v10;
        v18 = [*(v12 + 1632) clientUI];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47[0] = v14;
          _os_log_impl(&dword_1BC630000, v18, OS_LOG_TYPE_DEFAULT, "Found parent: %@", buf, 0xCu);
        }

        v19 = [v14 contact];
        v20 = [v19 phoneNumbers];
        v21 = [v20 firstObject];
        v22 = [v21 value];
        v23 = [v22 stringValue];

        v24 = [v14 contact];
        v25 = [v24 emailAddresses];
        v26 = [v25 firstObject];
        v27 = [v26 value];

        if ([v23 length])
        {
          v28 = v40;
          v29 = v23;
          goto LABEL_18;
        }

        if ([v27 length])
        {
          v28 = v40;
          v29 = v27;
LABEL_18:
          [v28 addObject:v29];
        }

        else
        {
          v30 = [v14 appleID];
          v31 = [v30 length];

          if (v31)
          {
            v32 = [v14 appleID];
            [v40 addObject:v32];
          }
        }

        v12 = 0x1E697B000;
        v10 = v41;
        goto LABEL_20;
      }

      v15 = [*(v12 + 1632) clientUI];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 memberType];
        v17 = [v14 age];
        *buf = 67109376;
        LODWORD(v47[0]) = v16;
        WORD2(v47[0]) = 2048;
        *(v47 + 6) = v17;
        _os_log_impl(&dword_1BC630000, v15, OS_LOG_TYPE_DEFAULT, "Found current member of type: %d (%lu)", buf, 0x12u);
      }

      v10 = [v14 memberType] != -1;
LABEL_20:
      ++v13;
    }

    while (v9 != v13);
    v33 = [v7 countByEnumeratingWithState:&v42 objects:v48 count:16];
    v9 = v33;
  }

  while (v33);

  v34 = *(v37 + 32);
  if (!v10)
  {
    v6 = v38;
    v5 = v39;
    goto LABEL_31;
  }

  v35 = [v40 copy];
  (*(v34 + 16))(v34, v35);

  v6 = v38;
  v5 = v39;
LABEL_32:

  v36 = *MEMORY[0x1E69E9840];
}

void __59__SCUIContactParentsHelper_obtainParentsForCurrentContact___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1BC630000, a2, OS_LOG_TYPE_ERROR, "Error fetching FamilyCircle: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end