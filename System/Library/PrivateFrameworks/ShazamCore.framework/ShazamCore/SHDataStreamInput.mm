@interface SHDataStreamInput
- (BOOL)closeWithError:(id *)error;
- (BOOL)loadDataFromURL:(id)l error:(id *)error;
- (BOOL)processData:(id)data error:(id *)error;
- (BOOL)readFromURL:(id)l error:(id *)error;
@end

@implementation SHDataStreamInput

- (BOOL)loadDataFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v14 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager fileExistsAtPath:path isDirectory:&v14];
  v10 = v14;

  if (!v9 || (v10 & 1) != 0)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:260 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(SHDataStreamInput *)self readFromURL:lCopy error:error];
    next = [(SHDataStreamInput *)self next];
    [next closeWithError:0];
  }

  return v11;
}

- (BOOL)readFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [MEMORY[0x277CBEAE0] inputStreamWithURL:lCopy];
  [v7 open];
  if ([v7 hasBytesAvailable])
  {
    errorCopy = error;
    v8 = 0;
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [MEMORY[0x277CBEB28] dataWithCapacity:2048];
      [v10 setLength:2048];
      v11 = [v7 read:objc_msgSend(v10 maxLength:{"mutableBytes"), 2048}];
      v12 = v11 == 0;
      if (!v11)
      {
        break;
      }

      v18 = v8;
      v13 = [(SHDataStreamInput *)self processData:v10 error:&v18];
      v14 = v18;

      if (!v13)
      {
        goto LABEL_9;
      }

      objc_autoreleasePoolPop(v9);
      v8 = v14;
      if (([v7 hasBytesAvailable] & 1) == 0)
      {
        v12 = 1;
        goto LABEL_10;
      }
    }

    v14 = v8;
LABEL_9:

    objc_autoreleasePoolPop(v9);
LABEL_10:
    if (errorCopy && v14)
    {
      v15 = v14;
      *errorCopy = v14;
    }
  }

  else
  {
    v14 = 0;
    v12 = 1;
  }

  [v7 close];

  return v12;
}

- (BOOL)closeWithError:(id *)error
{
  next = [(SHDataStreamInput *)self next];
  if (next)
  {
    next2 = [(SHDataStreamInput *)self next];
    v7 = [next2 closeWithError:error];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processData:(id)data error:(id *)error
{
  dataCopy = data;
  next = [(SHDataStreamInput *)self next];
  LOBYTE(error) = [next processData:dataCopy error:error];

  return error;
}

@end