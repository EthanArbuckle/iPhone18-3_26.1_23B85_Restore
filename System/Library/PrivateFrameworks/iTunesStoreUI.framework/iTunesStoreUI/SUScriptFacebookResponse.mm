@interface SUScriptFacebookResponse
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (SUScriptFacebookResponse)initWithData:(id)data response:(id)response error:(id)error;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptFacebookResponse

- (SUScriptFacebookResponse)initWithData:(id)data response:(id)response error:(id)error
{
  v11.receiver = self;
  v11.super_class = SUScriptFacebookResponse;
  v8 = [(SUScriptObject *)&v11 init];
  if (v8)
  {
    if (data)
    {
      if ([response textEncodingName])
      {
        v9 = CFStringConvertIANACharSetNameToEncoding([response textEncodingName]);
      }

      else
      {
        v9 = 134217984;
      }

      v8->_bodyData = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:data encoding:CFStringConvertEncodingToNSStringEncoding(v9)];
    }

    if (error)
    {
      v8->_error = [[SUScriptError alloc] initWithError:error];
    }

    if (response)
    {
      v8->_statusCode = [response statusCode];
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptFacebookResponse;
  [(SUScriptObject *)&v3 dealloc];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_64 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptFacebookResponse;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptFacebookResponse;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_64 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_64 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"bodyData", @"error", @"error", @"HTTPStatusCode", @"HTTPStatusCode", 0}];
  }
}

@end