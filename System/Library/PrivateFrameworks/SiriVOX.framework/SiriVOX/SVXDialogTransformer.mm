@interface SVXDialogTransformer
- (SVXDialogTransformer)initWithModeProvider:(id)a3;
- (id)transformAddDialogs:(id)a3;
- (id)transformAddViews:(id)a3;
@end

@implementation SVXDialogTransformer

- (id)transformAddDialogs:(id)a3
{
  modeProvider = self->_modeProvider;
  v5 = a3;
  v6 = [(SVXDialogTransformer *)self transformAddDialogs:v5 forMode:[(MDModeProviding *)modeProvider currentMode]];

  return v6;
}

- (id)transformAddViews:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MDModeProviding *)self->_modeProvider currentMode];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v4 views];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v18 + 1) + 8 * i) svx_isResponseViewIdPresent])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = [v4 patternId];

  if ((v7 & 1) != 0 || v10)
  {
    v14 = v4;
  }

  else
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = [v4 responseMode];
      *buf = 136315394;
      v23 = "[SVXDialogTransformer transformAddViews:]";
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s patternId is nil and responseViewIdPresent is false. Calling on MDDialogTransformer for mode: %@", buf, 0x16u);
    }

    v14 = [(SVXDialogTransformer *)self transformAddViews:v4 forMode:v5];
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (SVXDialogTransformer)initWithModeProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXDialogTransformer;
  v6 = [(SVXDialogTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeProvider, a3);
  }

  return v7;
}

@end