@interface NPHNanoRespondWithTextStore
- (NPHNanoRespondWithTextStore)init;
- (id)cannedRepliesForLanguage:(id)a3;
- (id)customReplies;
- (id)defaultRepliesForLanguage:(id)a3;
- (unint64_t)count;
@end

@implementation NPHNanoRespondWithTextStore

- (NPHNanoRespondWithTextStore)init
{
  v6.receiver = self;
  v6.super_class = NPHNanoRespondWithTextStore;
  v2 = [(NPHNanoRespondWithTextStore *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mobilephone"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

- (unint64_t)count
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[NPHNanoRespondWithTextStore count]";
    _os_log_impl(&dword_26D269000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 3;
}

- (id)defaultRepliesForLanguage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[NPHNanoRespondWithTextStore defaultRepliesForLanguage:]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Sorry value:I can’t talk right now." table:{&stru_287EA4AF8, 0}];
  v13[0] = v5;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"I’m on my way." value:&stru_287EA4AF8 table:0];
  v13[1] = v7;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Can I call you later?" value:&stru_287EA4AF8 table:0];
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)customReplies
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[NPHNanoRespondWithTextStore customReplies]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"TUReplyWithMessageStoreReplyArray"];
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB18] array];
  }

  v5 = [v4 count];
  if (v5 < [(NPHNanoRespondWithTextStore *)self count])
  {
    do
    {
      [v4 addObject:&stru_287EA4AF8];
      v6 = [v4 count];
    }

    while (v6 < [(NPHNanoRespondWithTextStore *)self count]);
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)cannedRepliesForLanguage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[NPHNanoRespondWithTextStore cannedRepliesForLanguage:]";
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = MEMORY[0x277CBEB18];
  v7 = [(NPHNanoRespondWithTextStore *)self defaultRepliesForLanguage:v4];

  v8 = [v6 arrayWithArray:v7];

  v9 = [(NPHNanoRespondWithTextStore *)self customReplies];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__NPHNanoRespondWithTextStore_cannedRepliesForLanguage___block_invoke;
  v14[3] = &unk_279D96060;
  v15 = v8;
  v10 = v8;
  [v9 enumerateObjectsUsingBlock:v14];
  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __56__NPHNanoRespondWithTextStore_cannedRepliesForLanguage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 isEqualToString:&stru_287EA4AF8] & 1) == 0)
  {
    [*(a1 + 32) replaceObjectAtIndex:a3 withObject:v5];
  }
}

@end