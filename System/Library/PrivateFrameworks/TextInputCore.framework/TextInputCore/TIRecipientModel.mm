@interface TIRecipientModel
- (TIRecipientModel)initWithCompositeName:(id)name andTrainer:(id)trainer;
- (id)languageGuessForString:(id)string;
- (void)handleMessages:(id)messages;
@end

@implementation TIRecipientModel

- (void)handleMessages:(id)messages
{
  v38 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [messagesCopy countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v28 = *v32;
    v29 = messagesCopy;
    do
    {
      v8 = 0;
      v30 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(messagesCopy);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        lastMessage = [(TIRecipientModel *)self lastMessage];
        if (([lastMessage fromMe] & 1) == 0)
        {
          fromMe = [v9 fromMe];

          if (!fromMe)
          {
            goto LABEL_19;
          }

          lastMessage2 = [(TIRecipientModel *)self lastMessage];
          body = [lastMessage2 body];
          lastMessage = [(TIRecipientModel *)self languageGuessForString:body];

          body2 = [v9 body];
          v15 = [(TIRecipientModel *)self languageGuessForString:body2];

          if (v15 && [v15 isEqualToString:lastMessage])
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
                lastMessage3 = [(TIRecipientModel *)self lastMessage];
                body3 = [lastMessage3 body];
                body4 = [v9 body];
                v26 = [v22 stringWithFormat:@"%s ResponseKitTrainer: training with message pair (%@), (%@) (language = %@)", "-[TIRecipientModel handleMessages:]", body3, body4, v15];
                *buf = 138412290;
                v36 = v26;
                _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }

            trainer = [(TIRecipientModel *)self trainer];
            body5 = [v9 body];
            lastMessage4 = [(TIRecipientModel *)self lastMessage];
            body6 = [lastMessage4 body];
            identifier = [(TIRecipientModel *)self identifier];
            [trainer registerResponse:body5 forMessage:body6 forContext:identifier withLanguage:v15];

            v7 = v28;
            messagesCopy = v29;
            v6 = v30;
          }
        }

LABEL_19:
        [(TIRecipientModel *)self setLastMessage:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [messagesCopy countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v6);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)languageGuessForString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v7.length = [(__CFString *)stringCopy length];
    v7.location = 0;
    v4 = CFStringTokenizerCopyBestStringLanguage(stringCopy, v7);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TIRecipientModel)initWithCompositeName:(id)name andTrainer:(id)trainer
{
  nameCopy = name;
  trainerCopy = trainer;
  v13.receiver = self;
  v13.super_class = TIRecipientModel;
  v8 = [(TIRecipientModel *)&v13 init];
  if (v8)
  {
    v9 = +[TICryptographer sharedCryptographer];
    v10 = [v9 stringDigestForName:nameCopy];
    identifier = v8->_identifier;
    v8->_identifier = v10;

    objc_storeStrong(&v8->_trainer, trainer);
  }

  return v8;
}

@end