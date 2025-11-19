@interface TIRecipientModel
- (TIRecipientModel)initWithCompositeName:(id)a3 andTrainer:(id)a4;
- (id)languageGuessForString:(id)a3;
- (void)handleMessages:(id)a3;
@end

@implementation TIRecipientModel

- (void)handleMessages:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v28 = *v32;
    v29 = v4;
    do
    {
      v8 = 0;
      v30 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = [(TIRecipientModel *)self lastMessage];
        if (([v10 fromMe] & 1) == 0)
        {
          v11 = [v9 fromMe];

          if (!v11)
          {
            goto LABEL_19;
          }

          v12 = [(TIRecipientModel *)self lastMessage];
          v13 = [v12 body];
          v10 = [(TIRecipientModel *)self languageGuessForString:v13];

          v14 = [v9 body];
          v15 = [(TIRecipientModel *)self languageGuessForString:v14];

          if (v15 && [v15 isEqualToString:v10])
          {
            if (TICanLogMessageAtLevel_onceToken != -1)
            {
              dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
            }

            if (TICanLogMessageAtLevel_logLevel)
            {
              v16 = TIOSLogFacility();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v22 = MEMORY[0x277CCACA8];
                v23 = [(TIRecipientModel *)self lastMessage];
                v24 = [v23 body];
                v25 = [v9 body];
                v26 = [v22 stringWithFormat:@"%s ResponseKitTrainer: training with message pair (%@), (%@) (language = %@)", "-[TIRecipientModel handleMessages:]", v24, v25, v15];
                *buf = 138412290;
                v36 = v26;
                _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }

            v17 = [(TIRecipientModel *)self trainer];
            v18 = [v9 body];
            v19 = [(TIRecipientModel *)self lastMessage];
            v20 = [v19 body];
            v21 = [(TIRecipientModel *)self identifier];
            [v17 registerResponse:v18 forMessage:v20 forContext:v21 withLanguage:v15];

            v7 = v28;
            v4 = v29;
            v6 = v30;
          }
        }

LABEL_19:
        [(TIRecipientModel *)self setLastMessage:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v6);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)languageGuessForString:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v7.length = [(__CFString *)v3 length];
    v7.location = 0;
    v4 = CFStringTokenizerCopyBestStringLanguage(v3, v7);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TIRecipientModel)initWithCompositeName:(id)a3 andTrainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TIRecipientModel;
  v8 = [(TIRecipientModel *)&v13 init];
  if (v8)
  {
    v9 = +[TICryptographer sharedCryptographer];
    v10 = [v9 stringDigestForName:v6];
    identifier = v8->_identifier;
    v8->_identifier = v10;

    objc_storeStrong(&v8->_trainer, a4);
  }

  return v8;
}

@end