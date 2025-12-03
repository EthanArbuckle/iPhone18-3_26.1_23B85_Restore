@interface _SVXPlayAudioExpressionParser
- (void)parsePlayAudio:(id)audio reply:(id)reply;
@end

@implementation _SVXPlayAudioExpressionParser

- (void)parsePlayAudio:(id)audio reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = MEMORY[0x277CEF098];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "[_SVXPlayAudioExpressionParser parsePlayAudio:reply:]";
      v30 = 2112;
      v31 = audioCopy;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Looking for parseable expressions in command %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277D47A88]);
    message = [audioCopy message];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v10 setAceId:uUIDString];

    [v10 setAttachmentExpression:message];
    [v10 setContext:message];
    if (message)
    {
      groupIdentifier = [message groupIdentifier];
      v15 = [_SVXSpeakableNamespaceDomainOccurrenceProvider providerForDomain:groupIdentifier];

      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v15 attachmentURLForExpression:*MEMORY[0x277D489C8]], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = v16;
        v18 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v29 = "[_SVXPlayAudioExpressionParser parsePlayAudio:reply:]";
          v30 = 2112;
          v31 = message;
          _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s Expression doesn't require remote parse: %@", buf, 0x16u);
        }

        (*(replyCopy + 2))(replyCopy, 0, 0);
      }

      else
      {
        v19 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v29 = "[_SVXPlayAudioExpressionParser parsePlayAudio:reply:]";
          v30 = 2112;
          v31 = v10;
          _os_log_impl(&dword_2695B9000, v19, OS_LOG_TYPE_INFO, "%s Parsing expression with parsing service: %@", buf, 0x16u);
        }

        parsingService = [(_SVXExpressionParser *)self parsingService];
        v27 = v10;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __54___SVXPlayAudioExpressionParser_parsePlayAudio_reply___block_invoke;
        v24[3] = &unk_279C67720;
        v26 = replyCopy;
        v25 = v10;
        [parsingService parseExpressions:v21 targetDevice:0 reply:v24];

        v17 = v26;
      }
    }

    else
    {
      v22 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v29 = "[_SVXPlayAudioExpressionParser parsePlayAudio:reply:]";
        v30 = 2112;
        v31 = audioCopy;
        _os_log_impl(&dword_2695B9000, v22, OS_LOG_TYPE_INFO, "%s No expression to parse for PlayAudio: %@", buf, 0x16u);
      }

      (*(replyCopy + 2))(replyCopy, 0, 0);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end