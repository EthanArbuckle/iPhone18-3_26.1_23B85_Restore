@interface SVXVoiceMailMarkAsReadHandler
- (SVXVoiceMailMarkAsReadHandler)init;
- (SVXVoiceMailMarkAsReadHandler)initWithClientLiteFactory:(id)factory plistBinaryParser:(id)parser;
- (void)markVoiceMailAsRead:(id)read forRemoteDevice:(id)device;
@end

@implementation SVXVoiceMailMarkAsReadHandler

- (void)markVoiceMailAsRead:(id)read forRemoteDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  readCopy = read;
  deviceCopy = device;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[SVXVoiceMailMarkAsReadHandler markVoiceMailAsRead:forRemoteDevice:]";
    v29 = 2112;
    v30 = readCopy;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x277D47670]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v10 setAceId:uUIDString];

  [v10 setIdentifier:readCopy];
  v13 = objc_alloc_init(MEMORY[0x277D47150]);
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  [v13 setAceId:uUIDString2];

  [v13 setObject:v10];
  plistBinaryParser = self->_plistBinaryParser;
  dictionary = [v13 dictionary];
  v26 = 0;
  v18 = [(SVXPlistBinaryParser *)plistBinaryParser dataWithPropertyList:dictionary format:200 options:0 error:&v26];
  v19 = v26;

  if (v18)
  {
    v20 = objc_alloc_init(MEMORY[0x277D472F0]);
    uUID3 = [MEMORY[0x277CCAD78] UUID];
    uUIDString3 = [uUID3 UUIDString];
    [v20 setAceId:uUIDString3];

    [v20 setSerializedCommand:v18];
    [v20 setRemoteDevice:deviceCopy];
    create = [(SVXAFClientLiteFactory *)self->_afClientLiteFactory create];
    [create handleCommand:v20 afterCurrentRequest:0 commandHandler:0 completion:&__block_literal_global_3136];
  }

  else
  {
    v24 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[SVXVoiceMailMarkAsReadHandler markVoiceMailAsRead:forRemoteDevice:]";
      v29 = 2112;
      v30 = v19;
      _os_log_error_impl(&dword_2695B9000, v24, OS_LOG_TYPE_ERROR, "%s Serialization failed: %@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __69__SVXVoiceMailMarkAsReadHandler_markVoiceMailAsRead_forRemoteDevice___block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[SVXVoiceMailMarkAsReadHandler markVoiceMailAsRead:forRemoteDevice:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s Error marking voicemail as read: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (SVXVoiceMailMarkAsReadHandler)initWithClientLiteFactory:(id)factory plistBinaryParser:(id)parser
{
  factoryCopy = factory;
  parserCopy = parser;
  v12.receiver = self;
  v12.super_class = SVXVoiceMailMarkAsReadHandler;
  v9 = [(SVXVoiceMailMarkAsReadHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_afClientLiteFactory, factory);
    objc_storeStrong(&v10->_plistBinaryParser, parser);
  }

  return v10;
}

- (SVXVoiceMailMarkAsReadHandler)init
{
  v3 = objc_alloc_init(SVXAFClientLiteFactory);
  v4 = objc_alloc_init(SVXPlistBinaryParser);
  v5 = [(SVXVoiceMailMarkAsReadHandler *)self initWithClientLiteFactory:v3 plistBinaryParser:v4];

  return v5;
}

@end