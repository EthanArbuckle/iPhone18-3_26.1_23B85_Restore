@interface SHJSONLFileWriter
+ (id)dataForJSONObject:(id)a3 error:(id *)a4;
+ (int64_t)dataCompressionFromAlgorithm:(int)a3;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)writeObject:(id)a3 error:(id *)a4;
- (void)linkDataStream:(id)a3;
@end

@implementation SHJSONLFileWriter

- (BOOL)writeObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() dataForJSONObject:v6 error:a4];

  if (v7)
  {
    v8 = [(SHJSONLFileWriter *)self outputStream];
    v9 = [v8 processData:v7 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)closeWithError:(id *)a3
{
  v4 = [(SHJSONLFileWriter *)self outputStream];
  LOBYTE(a3) = [v4 closeWithError:a3];

  return a3;
}

+ (int64_t)dataCompressionFromAlgorithm:(int)a3
{
  if (a3 <= 773)
  {
    if ((a3 - 256) < 2)
    {
      return 1;
    }

    if (a3 == 517)
    {
      return 3;
    }

LABEL_10:
    v15 = v4;
    v16 = v3;
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"The compression type is unsupported", v6, v5, v15, v16, v7, v8];
    v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  if (a3 != 2049)
  {
    if (a3 == 774)
    {
      return 2;
    }

    goto LABEL_10;
  }

  return 0;
}

+ (id)dataForJSONObject:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB28] data];
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:8 error:a4];
  if (v7)
  {
    [v6 appendData:v7];
    v8 = [@"\n" dataUsingEncoding:4];
    [v6 appendData:v8];

    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)linkDataStream:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v3 = 0;
    do
    {
      if (v3 == [v7 count] - 1)
      {
        break;
      }

      v4 = v3 + 1;
      v5 = [v7 objectAtIndexedSubscript:v3 + 1];
      v6 = [v7 objectAtIndexedSubscript:v3];
      [v6 setNext:v5];

      v3 = v4;
    }

    while ([v7 count] > v4);
  }
}

@end