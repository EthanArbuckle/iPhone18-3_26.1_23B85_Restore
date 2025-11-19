@interface SUScriptDownload
+ (id)phaseStringForDownload:(id)a3;
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (NSString)phase;
- (SUScriptDownload)initWithISUDownload:(id)a3;
- (SUScriptDownload)initWithSSDownload:(id)a3;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptDownload

- (SUScriptDownload)initWithISUDownload:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptDownload;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_download = a3;
  }

  return v4;
}

- (SUScriptDownload)initWithSSDownload:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptDownload;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_download = [[ISUDownload alloc] initWithManagedDownload:a3];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptDownload;
  [(SUScriptObject *)&v3 dealloc];
}

+ (id)phaseStringForDownload:(id)a3
{
  v3 = [a3 phaseIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x1E69D4B28]])
  {
    return @"failed";
  }

  if ([v3 isEqualToString:*MEMORY[0x1E69D4B40]])
  {
    return @"paused";
  }

  if ([v3 isEqualToString:*MEMORY[0x1E69D4B38]])
  {
    return @"installing";
  }

  if ([v3 isEqualToString:*MEMORY[0x1E69D4B50]])
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

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_16 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptDownload;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptDownload;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_16 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"adamID", @"phase", @"phase", @"progress", @"progress", 0}];
  }
}

@end