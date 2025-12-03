@interface SFSSOspreyTTSClientFactory
+ (id)sharedInstance;
- (SFSSOspreyTTSClientFactory)init;
- (id)getOspreyClientByUrl:(id)url;
@end

@implementation SFSSOspreyTTSClientFactory

- (id)getOspreyClientByUrl:(id)url
{
  v3 = [(SFSSOspreyTTSClientFactory *)self getOspreyClientByUrl:url useBlazar:1 enableAuthentication:1];

  return v3;
}

- (SFSSOspreyTTSClientFactory)init
{
  v6.receiver = self;
  v6.super_class = SFSSOspreyTTSClientFactory;
  v2 = [(SFSSOspreyTTSClientFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ospreyClientFactory = v2->_ospreyClientFactory;
    v2->_ospreyClientFactory = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (+[SFSSOspreyTTSClientFactory sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[SFSSOspreyTTSClientFactory sharedInstance]::onceToken, &__block_literal_global_83);
  }

  v3 = +[SFSSOspreyTTSClientFactory sharedInstance]::__sharedInstance;

  return v3;
}

uint64_t __44__SFSSOspreyTTSClientFactory_sharedInstance__block_invoke()
{
  +[SFSSOspreyTTSClientFactory sharedInstance]::__sharedInstance = objc_alloc_init(SFSSOspreyTTSClientFactory);

  return MEMORY[0x2821F96F8]();
}

@end