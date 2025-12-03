@interface SiriReaderConnection
- (SiriReaderConnection)init;
- (int64_t)getPlaybackStatusForIdentifier:(id)identifier;
- (void)dealloc;
- (void)endMediaSessionForIdentifier:(id)identifier;
- (void)pausePlaybackForIdentifier:(id)identifier;
- (void)readText:(id)text textBody:(id)body textIdentifier:(id)identifier textLocale:(id)locale textLeadingImage:(id)image;
- (void)readText:(id)text textBody:(id)body textIdentifier:(id)identifier textLocale:(id)locale textLeadingImage:(id)image activationSource:(int64_t)source;
- (void)resumePlaybackForIdentifier:(id)identifier;
@end

@implementation SiriReaderConnection

- (SiriReaderConnection)init
{
  v7.receiver = self;
  v7.super_class = SiriReaderConnection;
  v2 = [(SiriReaderConnection *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.siri.sirireaderd" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287984A98];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global];
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_60];
  }

  return v2;
}

void __28__SiriReaderConnection_init__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SiriReaderConnection init]_block_invoke";
    _os_log_impl(&dword_268C60000, v0, OS_LOG_TYPE_DEFAULT, "%s SiriReaderConnection: connection invalidated", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __28__SiriReaderConnection_init__block_invoke_58()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SiriReaderConnection init]_block_invoke";
    _os_log_impl(&dword_268C60000, v0, OS_LOG_TYPE_DEFAULT, "%s SiriReaderConnection: connection invalidated", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SiriReaderConnection;
  [(SiriReaderConnection *)&v3 dealloc];
}

void __38__SiriReaderConnection_readerProtocol__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SiriReaderConnection readerProtocol]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_268C60000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)readText:(id)text textBody:(id)body textIdentifier:(id)identifier textLocale:(id)locale textLeadingImage:(id)image
{
  connection = self->_connection;
  imageCopy = image;
  localeCopy = locale;
  identifierCopy = identifier;
  bodyCopy = body;
  textCopy = text;
  [(NSXPCConnection *)connection resume];
  readerProtocol = [(SiriReaderConnection *)self readerProtocol];
  [readerProtocol readTextWithTextTitle:textCopy textBody:bodyCopy textIdentifier:identifierCopy textLocale:localeCopy textLeadingImage:imageCopy activationSource:0];

  [(NSXPCConnection *)self->_connection suspend];
}

- (void)readText:(id)text textBody:(id)body textIdentifier:(id)identifier textLocale:(id)locale textLeadingImage:(id)image activationSource:(int64_t)source
{
  connection = self->_connection;
  imageCopy = image;
  localeCopy = locale;
  identifierCopy = identifier;
  bodyCopy = body;
  textCopy = text;
  [(NSXPCConnection *)connection resume];
  readerProtocol = [(SiriReaderConnection *)self readerProtocol];
  [readerProtocol readTextWithTextTitle:textCopy textBody:bodyCopy textIdentifier:identifierCopy textLocale:localeCopy textLeadingImage:imageCopy activationSource:source];

  [(NSXPCConnection *)self->_connection suspend];
}

- (int64_t)getPlaybackStatusForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NSXPCConnection *)self->_connection resume];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  readerProtocol = [(SiriReaderConnection *)self readerProtocol];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SiriReaderConnection_getPlaybackStatusForIdentifier___block_invoke;
  v8[3] = &unk_279C46FC0;
  v8[4] = &v9;
  [readerProtocol getPlaybackStatusForIdentifierWithTextIdentifier:identifierCopy reply:v8];
  [(NSXPCConnection *)self->_connection suspend];
  v6 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)pausePlaybackForIdentifier:(id)identifier
{
  connection = self->_connection;
  identifierCopy = identifier;
  [(NSXPCConnection *)connection resume];
  readerProtocol = [(SiriReaderConnection *)self readerProtocol];
  [readerProtocol pausePlaybackForIdentifierWithTextIdentifier:identifierCopy];

  [(NSXPCConnection *)self->_connection suspend];
}

- (void)resumePlaybackForIdentifier:(id)identifier
{
  connection = self->_connection;
  identifierCopy = identifier;
  [(NSXPCConnection *)connection resume];
  readerProtocol = [(SiriReaderConnection *)self readerProtocol];
  [readerProtocol resumePlaybackForIdentifierWithTextIdentifier:identifierCopy];

  [(NSXPCConnection *)self->_connection suspend];
}

- (void)endMediaSessionForIdentifier:(id)identifier
{
  connection = self->_connection;
  identifierCopy = identifier;
  [(NSXPCConnection *)connection resume];
  readerProtocol = [(SiriReaderConnection *)self readerProtocol];
  [readerProtocol endMediaSessionForIdentifierWithTextIdentifier:identifierCopy];

  [(NSXPCConnection *)self->_connection suspend];
}

@end