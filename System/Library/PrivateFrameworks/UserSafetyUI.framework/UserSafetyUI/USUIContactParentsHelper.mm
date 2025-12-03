@interface USUIContactParentsHelper
+ (id)urlFromAddressList:(id)list;
+ (void)obtainChatWithParentsURLForInterventionType:(int64_t)type completionHandler:(id)handler;
+ (void)obtainParentsForCurrentContact:(id)contact;
+ (void)openChatWithParentsForInterventionType:(int64_t)type;
+ (void)openChatWithURL:(id)l;
@end

@implementation USUIContactParentsHelper

+ (void)openChatWithParentsForInterventionType:(int64_t)type
{
  if (type)
  {
    if (type == 1)
    {
      dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global);
    }
  }

  else
  {
    [USUIContactParentsHelper obtainParentsForCurrentContact:&__block_literal_global_19];
  }
}

void __67__USUIContactParentsHelper_openChatWithParentsForInterventionType___block_invoke()
{
  v0 = [USUIContactParentsHelper urlFromAddressList:0];
  [USUIContactParentsHelper openChatWithURL:v0];
}

void __67__USUIContactParentsHelper_openChatWithParentsForInterventionType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__USUIContactParentsHelper_openChatWithParentsForInterventionType___block_invoke_3;
  block[3] = &unk_279E16320;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__USUIContactParentsHelper_openChatWithParentsForInterventionType___block_invoke_3(uint64_t a1)
{
  v1 = [USUIContactParentsHelper urlFromAddressList:*(a1 + 32)];
  [USUIContactParentsHelper openChatWithURL:v1];
}

+ (void)obtainChatWithParentsURLForInterventionType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (type)
  {
    if (type == 1)
    {
      v7 = [USUIContactParentsHelper urlFromAddressList:0];
      (v6)[2](v6, v7);
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __90__USUIContactParentsHelper_obtainChatWithParentsURLForInterventionType_completionHandler___block_invoke;
    v8[3] = &unk_279E16348;
    v9 = handlerCopy;
    [USUIContactParentsHelper obtainParentsForCurrentContact:v8];
  }
}

void __90__USUIContactParentsHelper_obtainChatWithParentsURLForInterventionType_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [USUIContactParentsHelper urlFromAddressList:a2];
  (*(v2 + 16))(v2, v3);
}

+ (void)openChatWithURL:(id)l
{
  v3 = MEMORY[0x277D75128];
  lCopy = l;
  sharedApplication = [v3 sharedApplication];
  [sharedApplication openURL:lCopy options:MEMORY[0x277CBEC10] completionHandler:0];
}

+ (id)urlFromAddressList:(id)list
{
  listCopy = list;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAD18] queryItemWithName:@"service" value:@"iMessage"];
  [v4 addObject:v5];

  v6 = MEMORY[0x277CCAD18];
  v7 = [MEMORY[0x277D4D390] localizedStringForKey:@"MESSAGE_GROWNUP_BODY"];
  v8 = [v6 queryItemWithName:@"body" value:v7];
  [v4 addObject:v8];

  if ([listCopy count])
  {
    v9 = MEMORY[0x277CCAD18];
    v10 = [listCopy componentsJoinedByString:{@", "}];
    v11 = [v9 queryItemWithName:@"recipients" value:v10];
    [v4 addObject:v11];

    v12 = [MEMORY[0x277CCAD18] queryItemWithName:@"best-match" value:@"1"];
    [v4 addObject:v12];
  }

  v13 = [MEMORY[0x277CCACE0] componentsWithString:@"messages://open"];
  [v13 setQueryItems:v4];
  v14 = [v13 URL];

  return v14;
}

+ (void)obtainParentsForCurrentContact:(id)contact
{
  contactCopy = contact;
  v4 = objc_alloc_init(MEMORY[0x277D08280]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__USUIContactParentsHelper_obtainParentsForCurrentContact___block_invoke;
  v6[3] = &unk_279E16370;
  v7 = contactCopy;
  v5 = contactCopy;
  [v4 startRequestWithCompletionHandler:v6];
}

void __59__USUIContactParentsHelper_obtainParentsForCurrentContact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v37 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (!v5)
  {
    v7 = [MEMORY[0x277D780A0] clientUI];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__USUIContactParentsHelper_obtainParentsForCurrentContact___block_invoke_cold_1(v6, v7);
    }

    goto LABEL_24;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [v5 members];
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (!v8)
  {
LABEL_24:

    v31 = *(a1 + 32);
LABEL_26:
    (*(v31 + 16))(v31, 0);
    goto LABEL_27;
  }

  v9 = v8;
  v34 = a1;
  v35 = v6;
  v36 = v5;
  v10 = 0;
  v11 = *v40;
  v12 = 0x277D78000uLL;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v40 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v39 + 1) + 8 * i);
      if ([v14 isMe])
      {
        v15 = [*(v12 + 160) clientUI];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v14 memberType];
          v17 = [v14 age];
          *buf = 67109376;
          LODWORD(v44[0]) = v16;
          WORD2(v44[0]) = 2048;
          *(v44 + 6) = v17;
          _os_log_impl(&dword_270B57000, v15, OS_LOG_TYPE_DEFAULT, "Found current member of type: %d (%lu)", buf, 0x12u);
        }

        v10 = [v14 memberType] != -1;
      }

      else if ([v14 isParent])
      {
        v38 = v10;
        v18 = [*(v12 + 160) clientUI];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44[0] = v14;
          _os_log_impl(&dword_270B57000, v18, OS_LOG_TYPE_DEFAULT, "Found parent: %@", buf, 0xCu);
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

        v28 = [v23 length];
        v29 = v23;
        if (v28 || (v30 = [v27 length], v29 = v27, v30))
        {
          [v37 addObject:v29];
        }

        v12 = 0x277D78000;
        v10 = v38;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
  }

  while (v9);

  v31 = *(v34 + 32);
  if (!v10)
  {
    v6 = v35;
    v5 = v36;
    goto LABEL_26;
  }

  v32 = [v37 copy];
  (*(v31 + 16))(v31, v32);

  v6 = v35;
  v5 = v36;
LABEL_27:

  v33 = *MEMORY[0x277D85DE8];
}

void __59__USUIContactParentsHelper_obtainParentsForCurrentContact___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270B57000, a2, OS_LOG_TYPE_ERROR, "Error fetching FamilyCircle: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end