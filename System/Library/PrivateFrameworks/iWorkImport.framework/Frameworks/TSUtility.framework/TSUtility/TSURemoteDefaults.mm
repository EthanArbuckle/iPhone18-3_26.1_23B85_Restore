@interface TSURemoteDefaults
+ (id)sharedDefaults;
- (TSURemoteDefaults)initWithRemoteURL:(id)l localURL:(id)rL;
- (id)initInternal;
- (id)objectForKey:(id)key;
- (void)processPropertyList:(id)list;
- (void)registerDefaults;
@end

@implementation TSURemoteDefaults

+ (id)sharedDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770F5890;
  block[3] = &unk_27A701A20;
  block[4] = self;
  if (qword_280A63E78 != -1)
  {
    dispatch_once(&qword_280A63E78, block);
  }

  v2 = qword_280A63E70;

  return v2;
}

- (TSURemoteDefaults)initWithRemoteURL:(id)l localURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURemoteDefaults initWithRemoteURL:localURL:]"];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURemoteDefaults.m"];
  [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:352 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSURemoteDefaults initWithRemoteURL:localURL:]"];
  v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (id)initInternal
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://configuration.apple.com/configurations/internetservices/iworkapps/RemoteDefaults.plist"];
  v6.receiver = self;
  v6.super_class = TSURemoteDefaults;
  v4 = [(TSURemotePropertyList *)&v6 initWithRemoteURL:v3 localURL:0];

  if (v4)
  {
    [(TSURemoteDefaults *)v4 registerDefaults];
  }

  return v4;
}

- (void)registerDefaults
{
  v12[1] = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle URLForResource:@"RemoteDefaults" withExtension:@"plist"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
    if (v4)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v11 = @"TSURemoteDefaults";
      v12[0] = v4;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [standardUserDefaults registerDefaults:v6];
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURemoteDefaults registerDefaults]"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURemoteDefaults.m"];
      [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:391 isFatal:0 description:"Can't parse local defaults plist"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURemoteDefaults registerDefaults]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURemoteDefaults.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:400 isFatal:0 description:"Don't have local defaults plist"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults dictionaryForKey:@"TSURemoteDefaults"];
  v7 = [v6 objectForKey:keyCopy];

  if (!v7)
  {
    v9.receiver = self;
    v9.super_class = TSURemoteDefaults;
    v7 = [(TSURemotePropertyList *)&v9 objectForKey:keyCopy];
  }

  return v7;
}

- (void)processPropertyList:(id)list
{
  v4 = MEMORY[0x277CBEBD0];
  listCopy = list;
  standardUserDefaults = [v4 standardUserDefaults];
  [standardUserDefaults setObject:listCopy forKey:@"TSURemoteDefaults"];

  v7.receiver = self;
  v7.super_class = TSURemoteDefaults;
  [(TSURemotePropertyList *)&v7 processPropertyList:listCopy];
}

@end