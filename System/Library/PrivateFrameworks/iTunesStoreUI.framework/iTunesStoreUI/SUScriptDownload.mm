@interface SUScriptDownload
+ (id)phaseStringForDownload:(id)download;
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (NSString)phase;
- (SUScriptDownload)initWithISUDownload:(id)download;
- (SUScriptDownload)initWithSSDownload:(id)download;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptDownload

- (SUScriptDownload)initWithISUDownload:(id)download
{
  v6.receiver = self;
  v6.super_class = SUScriptDownload;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_download = download;
  }

  return v4;
}

- (SUScriptDownload)initWithSSDownload:(id)download
{
  v6.receiver = self;
  v6.super_class = SUScriptDownload;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_download = [[ISUDownload alloc] initWithManagedDownload:download];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptDownload;
  [(SUScriptObject *)&v3 dealloc];
}

+ (id)phaseStringForDownload:(id)download
{
  phaseIdentifier = [download phaseIdentifier];
  if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69D4B28]])
  {
    return @"failed";
  }

  if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69D4B40]])
  {
    return @"paused";
  }

  if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69D4B38]])
  {
    return @"installing";
  }

  if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69D4B50]])
  {
    return @"waiting";
  }

  return @"downloading";
}

- (NSString)phase
{
  v3 = objc_opt_class();
  download = self->_download;

  return [v3 phaseStringForDownload:download];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_16 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptDownload;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptDownload;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_16 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"adamID", @"phase", @"phase", @"progress", @"progress", 0}];
  }
}

@end