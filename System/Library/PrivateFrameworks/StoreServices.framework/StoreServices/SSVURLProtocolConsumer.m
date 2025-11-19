@interface SSVURLProtocolConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SSVURLProtocolConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v7 = a3;
  if (!v7)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v8 = [a4 MIMEType];
  v9 = v8;
  v10 = v8 != 0;
  if (v8 && [v8 rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v18 = 0;
  v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v18];
  v11 = v18;
  if (!v10)
  {
LABEL_6:
    if (!v12)
    {
      v17 = 0;
      v12 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v17];
      v13 = v17;

      v11 = v13;
    }
  }

  if (a5 && !v12)
  {
    v14 = v11;
    *a5 = v11;
  }

  v15 = v12;

LABEL_13:

  return v15;
}

@end