@interface HTTPServerResponseEcho
- (id)responseForRequest:(id)a3;
@end

@implementation HTTPServerResponseEcho

- (id)responseForRequest:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  v5 = [v3 HTTPMethod];
  v6 = [v3 URL];
  [v4 appendFormat:@"%@ %@\n", v5, v6];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v3 allHTTPHeaderFields];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v3 allHTTPHeaderFields];
        v14 = [v13 objectForKeyedSubscript:v12];

        [v4 appendFormat:@"%@: %@\n", v12, v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  v15 = [v3 HTTPBody];

  if (v15)
  {
    v16 = [v3 HTTPBody];
    [v4 appendFormat:@"Body: %lu bytes\n", objc_msgSend(v16, "length")];
  }

  else
  {
    v17 = [v3 HTTPBodyStream];

    if (v17)
    {
      v18 = @"Body: stream\n";
    }

    else
    {
      v18 = @"Body: none\n";
    }

    [v4 appendString:v18];
  }

  v19 = [v4 length];
  v20 = [NSMutableDictionary dictionaryWithCapacity:3];
  [v20 setObject:@"CFNetworkPPTServer-ResponseEcho" forKeyedSubscript:@"Server"];
  [v20 setObject:@"keep-alive" forKeyedSubscript:@"Connection"];
  v21 = [NSNumber numberWithUnsignedInteger:v19];
  v22 = [v21 stringValue];
  [v20 setObject:v22 forKeyedSubscript:@"Content-Length"];

  v23 = [NSHTTPURLResponse alloc];
  v24 = [v3 URL];
  v25 = [v23 initWithURL:v24 statusCode:200 HTTPVersion:@"HTTP/1.1" headerFields:v20];

  v26 = [HTTPServerResponse alloc];
  v27 = [v4 dataUsingEncoding:4];
  v28 = [(HTTPServerResponse *)v26 initWithResponse:v25 bodyData:v27];

  return v28;
}

@end