@interface SUScriptRequestPerformance
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (NSString)JSONHeaders;
- (SUScriptRequestPerformance)initWithRequestPerformance:(id)performance;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptRequestPerformance

- (SUScriptRequestPerformance)initWithRequestPerformance:(id)performance
{
  v6.receiver = self;
  v6.super_class = SUScriptRequestPerformance;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_performance = performance;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptRequestPerformance;
  [(SUScriptObject *)&v3 dealloc];
}

- (NSString)JSONHeaders
{
  v2 = [-[ISURLRequestPerformance URLResponse](self->_performance "URLResponse")];
  v3 = [v2 count];
  if (v3)
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
    if (v3)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
    }
  }

  return v3;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_78 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptRequestPerformance;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptRequestPerformance;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_78 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_78 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"headers", @"JSONHeaders", @"requestBeginInterval", @"receivedResponseInterval", @"requestEndInterval", @"finishInterval", @"renderBeginInterval", @"renderBeginInterval", @"renderEndInterval", @"renderEndInterval", 0}];
  }
}

@end