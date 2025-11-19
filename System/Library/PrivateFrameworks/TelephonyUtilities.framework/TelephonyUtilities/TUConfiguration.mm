@interface TUConfiguration
- (BOOL)simulateFatalPersistentStoreError;
- (BOOL)simulateInternationalCall;
- (NSString)conversationLinkBaseURLString;
- (NSURL)conversationLinkBaseURL;
- (TUConfiguration)initWithDataSource:(id)a3;
- (id)numberForKey:(id)a3;
- (unint64_t)announceCalls;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)removeDelegate:(id)a3;
- (void)setAnnounceCalls:(unint64_t)a3;
- (void)setConversationLinkBaseURL:(id)a3;
- (void)setConversationLinkBaseURLString:(id)a3;
@end

@implementation TUConfiguration

- (TUConfiguration)initWithDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TUConfiguration;
  v6 = [(TUConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = objc_alloc_init(TUDelegateController);
    delegateController = v7->_delegateController;
    v7->_delegateController = v8;
  }

  return v7;
}

- (unint64_t)announceCalls
{
  v2 = [(TUConfiguration *)self numberForKey:@"announceCalls"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setAnnounceCalls:(unint64_t)a3
{
  v5 = [(TUConfiguration *)self dataSource];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forKey:@"announceCalls"];
}

- (NSString)conversationLinkBaseURLString
{
  v2 = [(TUConfiguration *)self dataSource];
  v3 = [v2 stringForKey:@"conversationLinkBaseURL"];

  return v3;
}

- (NSURL)conversationLinkBaseURL
{
  v2 = [(TUConfiguration *)self conversationLinkBaseURLString];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConversationLinkBaseURLString:(id)a3
{
  v4 = a3;
  v5 = [(TUConfiguration *)self dataSource];
  [v5 setObject:v4 forKey:@"conversationLinkBaseURL"];
}

- (void)setConversationLinkBaseURL:(id)a3
{
  v4 = a3;
  v6 = [(TUConfiguration *)self dataSource];
  v5 = [v4 absoluteString];

  [v6 setObject:v5 forKey:@"conversationLinkBaseURL"];
}

- (BOOL)simulateFatalPersistentStoreError
{
  v3 = _TUIsInternalInstall();
  if (v3)
  {
    v4 = [(TUConfiguration *)self numberForKey:@"simulateFatalPersistentStoreError"];
    v5 = [v4 BOOLValue];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)simulateInternationalCall
{
  v3 = _TUIsInternalInstall();
  if (v3)
  {
    v4 = [(TUConfiguration *)self numberForKey:@"simulateInternationalCall"];
    v5 = [v4 BOOLValue];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)numberForKey:(id)a3
{
  v4 = a3;
  v5 = [(TUConfiguration *)self dataSource];
  v6 = [v5 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "integerValue")}];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUConfiguration *)self delegateController];
  [v8 addDelegate:v7 queue:v6];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TUConfiguration *)self delegateController];
  [v5 removeDelegate:v4];
}

@end