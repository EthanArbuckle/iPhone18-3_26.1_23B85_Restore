@interface SHJSONLFileWriter
+ (id)dataForJSONObject:(id)object error:(id *)error;
+ (int64_t)dataCompressionFromAlgorithm:(int)algorithm;
- (BOOL)closeWithError:(id *)error;
- (BOOL)writeObject:(id)object error:(id *)error;
- (void)linkDataStream:(id)stream;
@end

@implementation SHJSONLFileWriter

- (BOOL)writeObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [objc_opt_class() dataForJSONObject:objectCopy error:error];

  if (v7)
  {
    outputStream = [(SHJSONLFileWriter *)self outputStream];
    v9 = [outputStream processData:v7 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)closeWithError:(id *)error
{
  outputStream = [(SHJSONLFileWriter *)self outputStream];
  LOBYTE(error) = [outputStream closeWithError:error];

  return error;
}

+ (int64_t)dataCompressionFromAlgorithm:(int)algorithm
{
  if (algorithm <= 773)
  {
    if ((algorithm - 256) < 2)
    {
      return 1;
    }

    if (algorithm == 517)
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

  if (algorithm != 2049)
  {
    if (algorithm == 774)
    {
      return 2;
    }

    goto LABEL_10;
  }

  return 0;
}

+ (id)dataForJSONObject:(id)object error:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  data = [MEMORY[0x277CBEB28] data];
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:objectCopy options:8 error:error];
  if (v7)
  {
    [data appendData:v7];
    v8 = [@"\n" dataUsingEncoding:4];
    [data appendData:v8];

    v9 = data;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)linkDataStream:(id)stream
{
  streamCopy = stream;
  if ([streamCopy count])
  {
    v3 = 0;
    do
    {
      if (v3 == [streamCopy count] - 1)
      {
        break;
      }

      v4 = v3 + 1;
      v5 = [streamCopy objectAtIndexedSubscript:v3 + 1];
      v6 = [streamCopy objectAtIndexedSubscript:v3];
      [v6 setNext:v5];

      v3 = v4;
    }

    while ([streamCopy count] > v4);
  }
}

@end