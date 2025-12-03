@interface TUConfiguration
- (BOOL)simulateFatalPersistentStoreError;
- (BOOL)simulateInternationalCall;
- (NSString)conversationLinkBaseURLString;
- (NSURL)conversationLinkBaseURL;
- (TUConfiguration)initWithDataSource:(id)source;
- (id)numberForKey:(id)key;
- (unint64_t)announceCalls;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)removeDelegate:(id)delegate;
- (void)setAnnounceCalls:(unint64_t)calls;
- (void)setConversationLinkBaseURL:(id)l;
- (void)setConversationLinkBaseURLString:(id)string;
@end

@implementation TUConfiguration

- (TUConfiguration)initWithDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = TUConfiguration;
  v6 = [(TUConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    v8 = objc_alloc_init(TUDelegateController);
    delegateController = v7->_delegateController;
    v7->_delegateController = v8;
  }

  return v7;
}

- (unint64_t)announceCalls
{
  v2 = [(TUConfiguration *)self numberForKey:@"announceCalls"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setAnnounceCalls:(unint64_t)calls
{
  dataSource = [(TUConfiguration *)self dataSource];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:calls];
  [dataSource setObject:v4 forKey:@"announceCalls"];
}

- (NSString)conversationLinkBaseURLString
{
  dataSource = [(TUConfiguration *)self dataSource];
  v3 = [dataSource stringForKey:@"conversationLinkBaseURL"];

  return v3;
}

- (NSURL)conversationLinkBaseURL
{
  conversationLinkBaseURLString = [(TUConfiguration *)self conversationLinkBaseURLString];
  if (conversationLinkBaseURLString)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:conversationLinkBaseURLString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConversationLinkBaseURLString:(id)string
{
  stringCopy = string;
  dataSource = [(TUConfiguration *)self dataSource];
  [dataSource setObject:stringCopy forKey:@"conversationLinkBaseURL"];
}

- (void)setConversationLinkBaseURL:(id)l
{
  lCopy = l;
  dataSource = [(TUConfiguration *)self dataSource];
  absoluteString = [lCopy absoluteString];

  [dataSource setObject:absoluteString forKey:@"conversationLinkBaseURL"];
}

- (BOOL)simulateFatalPersistentStoreError
{
  v3 = _TUIsInternalInstall();
  if (v3)
  {
    v4 = [(TUConfiguration *)self numberForKey:@"simulateFatalPersistentStoreError"];
    bOOLValue = [v4 BOOLValue];

    LOBYTE(v3) = bOOLValue;
  }

  return v3;
}

- (BOOL)simulateInternationalCall
{
  v3 = _TUIsInternalInstall();
  if (v3)
  {
    v4 = [(TUConfiguration *)self numberForKey:@"simulateInternationalCall"];
    bOOLValue = [v4 BOOLValue];

    LOBYTE(v3) = bOOLValue;
  }

  return v3;
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  dataSource = [(TUConfiguration *)self dataSource];
  v6 = [dataSource objectForKey:keyCopy];

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

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(TUConfiguration *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(TUConfiguration *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

@end