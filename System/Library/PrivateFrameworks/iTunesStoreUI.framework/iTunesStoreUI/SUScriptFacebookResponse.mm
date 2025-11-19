@interface SUScriptFacebookResponse
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (SUScriptFacebookResponse)initWithData:(id)a3 response:(id)a4 error:(id)a5;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptFacebookResponse

- (SUScriptFacebookResponse)initWithData:(id)a3 response:(id)a4 error:(id)a5
{
  v11.receiver = self;
  v11.super_class = SUScriptFacebookResponse;
  v8 = [(SUScriptObject *)&v11 init];
  if (v8)
  {
    if (a3)
    {
      if ([a4 textEncodingName])
      {
        v9 = CFStringConvertIANACharSetNameToEncoding([a4 textEncodingName]);
      }

      else
      {
        v9 = 134217984;
      }

      v8->_bodyData = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:a3 encoding:CFStringConvertEncodingToNSStringEncoding(v9)];
    }

    if (a5)
    {
      v8->_error = [[SUScriptError alloc] initWithError:a5];
    }

    if (a4)
    {
      v8->_statusCode = [a4 statusCode];
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

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_64 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptFacebookResponse;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptFacebookResponse;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_64 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_64 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"bodyData", @"error", @"error", @"HTTPStatusCode", @"HTTPStatusCode", 0}];
  }
}

@end