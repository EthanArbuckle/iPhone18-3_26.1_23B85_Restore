@interface SHDataStreamInput
- (BOOL)closeWithError:(id *)a3;
- (BOOL)loadDataFromURL:(id)a3 error:(id *)a4;
- (BOOL)processData:(id)a3 error:(id *)a4;
- (BOOL)readFromURL:(id)a3 error:(id *)a4;
@end

@implementation SHDataStreamInput

- (BOOL)loadDataFromURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8 isDirectory:&v14];
  v10 = v14;

  if (!v9 || (v10 & 1) != 0)
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:260 userInfo:0];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(SHDataStreamInput *)self readFromURL:v6 error:a4];
    v12 = [(SHDataStreamInput *)self next];
    [v12 closeWithError:0];
  }

  return v11;
}

- (BOOL)readFromURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEAE0] inputStreamWithURL:v6];
  [v7 open];
  if ([v7 hasBytesAvailable])
  {
    v17 = a4;
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
    if (v17 && v14)
    {
      v15 = v14;
      *v17 = v14;
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

- (BOOL)closeWithError:(id *)a3
{
  v5 = [(SHDataStreamInput *)self next];
  if (v5)
  {
    v6 = [(SHDataStreamInput *)self next];
    v7 = [v6 closeWithError:a3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SHDataStreamInput *)self next];
  LOBYTE(a4) = [v7 processData:v6 error:a4];

  return a4;
}

@end