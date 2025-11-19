@interface ICURLResponse
- (ICURLPerformanceMetrics)performanceMetrics;
- (ICURLResponse)initWithURLResponse:(id)a3 urlRequest:(id)a4 bodyData:(id)a5 performanceMetrics:(id)a6;
- (ICURLResponse)initWithURLResponse:(id)a3 urlRequest:(id)a4 bodyDataURL:(id)a5 performanceMetrics:(id)a6;
- (NSDate)expirationDate;
- (id)parsedBody;
- (id)parsedBodyArray;
- (id)parsedBodyDictionary;
- (id)parsedBodyText;
- (int64_t)statusCode;
- (void)_prepareParsedBodyResponse;
@end

@implementation ICURLResponse

- (void)_prepareParsedBodyResponse
{
  if (!self->_parsedBodyResponseType)
  {
    v15[7] = v2;
    v15[8] = v3;
    v5 = self->_urlResponse;
    v6 = [(NSURLResponse *)v5 ic_valueForHTTPHeaderField:@"Content-Type"];
    v7 = v6;
    if (v6 && [v6 rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      bodyData = self->_bodyData;
      v15[0] = 0;
      v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:bodyData options:0 error:v15];
      v8 = v15[0];
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v11 = v8;
    v12 = self->_bodyData;
    v14 = 0;
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:v12 options:0 format:0 error:&v14];
    v8 = v14;

    if (!v10)
    {
      if ([v7 rangeOfString:@"text/html" options:1] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = 0;
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_bodyData encoding:4];
      }
    }

LABEL_10:
    if (_NSIsNSDictionary())
    {
      v13 = 2;
    }

    else if (_NSIsNSArray())
    {
      v13 = 3;
    }

    else
    {
      if (!_NSIsNSString())
      {
        v13 = 1;
        goto LABEL_17;
      }

      v13 = 4;
    }

    objc_storeStrong(&self->_parsedBodyResponse, v10);
LABEL_17:
    self->_parsedBodyResponseType = v13;
  }
}

- (id)parsedBody
{
  [(ICURLResponse *)self _prepareParsedBodyResponse];
  parsedBodyResponse = self->_parsedBodyResponse;

  return parsedBodyResponse;
}

- (id)parsedBodyText
{
  parsedBodyResponseType = self->_parsedBodyResponseType;
  parsedBodyResponse = self->_parsedBodyResponse;
  if (parsedBodyResponseType == 4)
  {
    v4 = parsedBodyResponse;
  }

  else
  {
    v4 = [parsedBodyResponse description];
  }

  return v4;
}

- (id)parsedBodyDictionary
{
  [(ICURLResponse *)self _prepareParsedBodyResponse];
  if (self->_parsedBodyResponseType == 2)
  {
    v3 = self->_parsedBodyResponse;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)parsedBodyArray
{
  [(ICURLResponse *)self _prepareParsedBodyResponse];
  if (self->_parsedBodyResponseType == 3)
  {
    v3 = self->_parsedBodyResponse;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICURLPerformanceMetrics)performanceMetrics
{
  v2 = [(ICURLAggregatedPerformanceMetrics *)self->_aggregatedPerformanceMetrics urlMetrics];
  v3 = [v2 lastObject];

  return v3;
}

- (int64_t)statusCode
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  urlResponse = self->_urlResponse;

  return [(NSURLResponse *)urlResponse statusCode];
}

- (NSDate)expirationDate
{
  [(NSURLResponse *)self->_urlResponse _calculatedExpiration];
  if (v2 <= 0.00000011920929)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  }

  return v3;
}

- (ICURLResponse)initWithURLResponse:(id)a3 urlRequest:(id)a4 bodyDataURL:(id)a5 performanceMetrics:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = ICURLResponse;
  v15 = [(ICURLResponse *)&v19 init];
  if (v15)
  {
    v16 = [v12 copy];
    urlRequest = v15->_urlRequest;
    v15->_urlRequest = v16;

    objc_storeStrong(&v15->_urlResponse, a3);
    objc_storeStrong(&v15->_bodyDataURL, a5);
    objc_storeStrong(&v15->_aggregatedPerformanceMetrics, a6);
  }

  return v15;
}

- (ICURLResponse)initWithURLResponse:(id)a3 urlRequest:(id)a4 bodyData:(id)a5 performanceMetrics:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = ICURLResponse;
  v15 = [(ICURLResponse *)&v19 init];
  if (v15)
  {
    v16 = [v12 copy];
    urlRequest = v15->_urlRequest;
    v15->_urlRequest = v16;

    objc_storeStrong(&v15->_urlResponse, a3);
    objc_storeStrong(&v15->_bodyData, a5);
    objc_storeStrong(&v15->_aggregatedPerformanceMetrics, a6);
  }

  return v15;
}

@end