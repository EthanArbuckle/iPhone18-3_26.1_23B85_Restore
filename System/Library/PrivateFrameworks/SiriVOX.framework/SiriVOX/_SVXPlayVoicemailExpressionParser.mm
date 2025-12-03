@interface _SVXPlayVoicemailExpressionParser
- (void)parsePlayVoicemail:(id)voicemail reply:(id)reply;
@end

@implementation _SVXPlayVoicemailExpressionParser

- (void)parsePlayVoicemail:(id)voicemail reply:(id)reply
{
  v30 = *MEMORY[0x277D85DE8];
  voicemailCopy = voicemail;
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = MEMORY[0x277CEF098];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v27 = "[_SVXPlayVoicemailExpressionParser parsePlayVoicemail:reply:]";
      v28 = 2112;
      v29 = voicemailCopy;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Looking for parseable expressions in command %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277D47A88]);
    v11 = objc_alloc_init(MEMORY[0x277D47670]);
    voiceMailId = [voicemailCopy voiceMailId];
    [v11 setIdentifier:voiceMailId];

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v10 setAceId:uUIDString];

    [v10 setAttachmentExpression:v11];
    [v10 setContext:v11];
    targetDevice = [voicemailCopy targetDevice];
    identifier = [v11 identifier];

    v17 = *v8;
    v18 = os_log_type_enabled(*v8, OS_LOG_TYPE_INFO);
    if (identifier)
    {
      if (v18)
      {
        *buf = 136315394;
        v27 = "[_SVXPlayVoicemailExpressionParser parsePlayVoicemail:reply:]";
        v28 = 2112;
        v29 = v10;
        _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s Parsing expression with parsing service: %@", buf, 0x16u);
      }

      parsingService = [(_SVXExpressionParser *)self parsingService];
      v25 = v10;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __62___SVXPlayVoicemailExpressionParser_parsePlayVoicemail_reply___block_invoke;
      v22[3] = &unk_279C67720;
      v24 = replyCopy;
      v23 = v10;
      [parsingService parseExpressions:v20 targetDevice:targetDevice reply:v22];
    }

    else
    {
      if (v18)
      {
        *buf = 136315394;
        v27 = "[_SVXPlayVoicemailExpressionParser parsePlayVoicemail:reply:]";
        v28 = 2112;
        v29 = voicemailCopy;
        _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s No expression to parse for PlayVoicemail: %@", buf, 0x16u);
      }

      (*(replyCopy + 2))(replyCopy, 0, 0);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end