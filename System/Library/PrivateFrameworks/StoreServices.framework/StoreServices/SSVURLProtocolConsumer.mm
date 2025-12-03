@interface SSVURLProtocolConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SSVURLProtocolConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  if (!dataCopy)
  {
    v15 = 0;
    goto LABEL_13;
  }

  mIMEType = [response MIMEType];
  v9 = mIMEType;
  v10 = mIMEType != 0;
  if (mIMEType && [mIMEType rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v18 = 0;
  v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v18];
  v11 = v18;
  if (!v10)
  {
LABEL_6:
    if (!v12)
    {
      v17 = 0;
      v12 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:&v17];
      v13 = v17;

      v11 = v13;
    }
  }

  if (error && !v12)
  {
    v14 = v11;
    *error = v11;
  }

  v15 = v12;

LABEL_13:

  return v15;
}

@end