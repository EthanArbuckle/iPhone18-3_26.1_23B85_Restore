@interface ICRadioResponse
- (ICRadioResponse)initWithResponseDictionary:(id)a3 expirationDate:(id)a4;
- (ICRadioResponse)initWithURLResponse:(id)a3;
- (ICStoreDialogResponse)dialog;
- (NSDictionary)contentDictionary;
- (NSError)serverError;
- (int64_t)version;
@end

@implementation ICRadioResponse

- (NSError)serverError
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"error"];
  if (!_NSIsNSDictionary())
  {
    goto LABEL_8;
  }

  v3 = [v2 objectForKey:@"error-value"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v4 = [v3 integerValue]) == 0)
  {

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v2 objectForKey:@"error-message"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v7 = MEMORY[0x1E696ABC0];
    goto LABEL_13;
  }

  v7 = MEMORY[0x1E696ABC0];
  if (!v6)
  {
LABEL_13:
    v9 = [v7 errorWithDomain:@"ICRadioServerError" code:v5 userInfo:0];
    goto LABEL_14;
  }

  v11 = *MEMORY[0x1E696A578];
  v12[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v7 errorWithDomain:@"ICRadioServerError" code:v5 userInfo:v8];

LABEL_14:
LABEL_9:

  return v9;
}

- (ICStoreDialogResponse)dialog
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"dialog"];
  if (_NSIsNSDictionary())
  {
    v3 = [[ICStoreDialogResponse alloc] initWithResponseDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)version
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"version"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 5;
  }

  return v3;
}

- (NSDictionary)contentDictionary
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"content"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  return v3;
}

- (ICRadioResponse)initWithResponseDictionary:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ICRadioResponse;
  v8 = [(ICRadioResponse *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    responseDictionary = v8->_responseDictionary;
    v8->_responseDictionary = v9;

    v11 = [v7 copy];
    expirationDate = v8->_expirationDate;
    v8->_expirationDate = v11;
  }

  return v8;
}

- (ICRadioResponse)initWithURLResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 parsedBodyDictionary];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = [v4 expirationDate];
  v9 = [(ICRadioResponse *)self initWithResponseDictionary:v7 expirationDate:v8];

  if (v9)
  {
    v10 = [v4 performanceMetrics];

    if (v10)
    {
      v11 = [v4 aggregatedPerformanceMetrics];
      performanceMetrics = v9->_performanceMetrics;
      v9->_performanceMetrics = v11;
    }
  }

  return v9;
}

@end