@interface HTTPServerResponseEcho
- (id)responseForRequest:(id)request;
@end

@implementation HTTPServerResponseEcho

- (id)responseForRequest:(id)request
{
  requestCopy = request;
  v4 = +[NSMutableString string];
  hTTPMethod = [requestCopy HTTPMethod];
  v6 = [requestCopy URL];
  [v4 appendFormat:@"%@ %@\n", hTTPMethod, v6];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
  v8 = [allHTTPHeaderFields countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(allHTTPHeaderFields);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        allHTTPHeaderFields2 = [requestCopy allHTTPHeaderFields];
        v14 = [allHTTPHeaderFields2 objectForKeyedSubscript:v12];

        [v4 appendFormat:@"%@: %@\n", v12, v14];
      }

      v9 = [allHTTPHeaderFields countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  hTTPBody = [requestCopy HTTPBody];

  if (hTTPBody)
  {
    hTTPBody2 = [requestCopy HTTPBody];
    [v4 appendFormat:@"Body: %lu bytes\n", objc_msgSend(hTTPBody2, "length")];
  }

  else
  {
    hTTPBodyStream = [requestCopy HTTPBodyStream];

    if (hTTPBodyStream)
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
  stringValue = [v21 stringValue];
  [v20 setObject:stringValue forKeyedSubscript:@"Content-Length"];

  v23 = [NSHTTPURLResponse alloc];
  v24 = [requestCopy URL];
  v25 = [v23 initWithURL:v24 statusCode:200 HTTPVersion:@"HTTP/1.1" headerFields:v20];

  v26 = [HTTPServerResponse alloc];
  v27 = [v4 dataUsingEncoding:4];
  v28 = [(HTTPServerResponse *)v26 initWithResponse:v25 bodyData:v27];

  return v28;
}

@end