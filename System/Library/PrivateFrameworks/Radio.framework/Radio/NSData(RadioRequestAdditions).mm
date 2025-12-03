@interface NSData(RadioRequestAdditions)
+ (id)dataForRadioRequestParameters:()RadioRequestAdditions protocolVersion:isAsynchronousBackgroundRequest:error:;
- (id)propertyListForRadioResponseReturningError:()RadioRequestAdditions unparsedResponseDictionary:;
@end

@implementation NSData(RadioRequestAdditions)

- (id)propertyListForRadioResponseReturningError:()RadioRequestAdditions unparsedResponseDictionary:
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAC58] propertyListWithData:self options:0 format:0 error:a3];
  objc_opt_class();
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    if (a4)
    {
      v8 = v6;
      *a4 = v6;
    }

    v9 = [v6 objectForKey:@"version"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 intValue] >= 1)
    {
      v7 = [v6 objectForKey:@"content"];
    }

    else
    {
      v10 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = objc_opt_class();
        v11 = v17;
        _os_log_impl(&dword_261792000, v10, OS_LOG_TYPE_ERROR, "Error: Unsupported response protocol version: %@ (%@)", &v14, 0x16u);
      }

      if (a3)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"RadioErrorDomain" code:-100 userInfo:0];
        *a3 = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)dataForRadioRequestParameters:()RadioRequestAdditions protocolVersion:isAsynchronousBackgroundRequest:error:
{
  v9 = MEMORY[0x277CBEB38];
  v10 = a3;
  v11 = [v9 alloc];
  if (a5)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  v13 = [v11 initWithCapacity:v12];
  v14 = v13;
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  [v13 setObject:v15 forKey:@"content"];

  v16 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  [v14 setObject:v16 forKey:@"version"];

  if (a5)
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKey:@"is-async"];
  }

  v17 = [MEMORY[0x277CCAC58] dataWithPropertyList:v14 format:200 options:0 error:a6];

  return v17;
}

@end