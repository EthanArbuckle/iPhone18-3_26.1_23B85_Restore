@interface SSUCompressionUtils
+ (BOOL)_compressArchiveForData:(id)a3 outputFileURL:(id)a4 error:(id *)a5;
+ (BOOL)compressArchiveForSSUFile:(id)a3 outputFileURL:(id)a4 error:(id *)a5;
+ (BOOL)compressArchiveForSSUFileURL:(id)a3 outputFileURL:(id)a4 error:(id *)a5;
+ (BOOL)decompressFromCompressedSSUFilePath:(id)a3 outputFileURL:(id)a4 error:(id *)a5;
+ (id)SSUFileFromCompressedSSUFilePath:(id)a3 error:(id *)a4;
+ (id)_dataFromCompressedSSUFilePath:(id)a3 error:(id *)a4;
@end

@implementation SSUCompressionUtils

+ (id)SSUFileFromCompressedSSUFilePath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_opt_class() _dataFromCompressedSSUFilePath:v5 error:a4];

  v7 = [[FLTSSUFile alloc] initAndVerifyWithFlatbuffData:v6];

  return v7;
}

+ (BOOL)decompressFromCompressedSSUFilePath:(id)a3 outputFileURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v17 = 0;
  v9 = [objc_opt_class() _dataFromCompressedSSUFilePath:v8 error:&v17];

  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v16 = 0;
    v12 = [v9 writeToURL:v7 options:1 error:&v16];
    v13 = v16;
    if (a5 && (v12 & 1) == 0)
    {
      v13 = v13;
      *a5 = v13;
    }
  }

  else if (a5)
  {
    v14 = v10;
    v12 = 0;
    *a5 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_dataFromCompressedSSUFilePath:(id)a3 error:(id *)a4
{
  v16 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:1 error:&v16];
  v6 = v16;
  v7 = v6;
  if (v5)
  {
    v15 = 0;
    v8 = [v5 decompressedDataUsingAlgorithm:0 error:&v15];
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      v11 = v8;
    }

    else if (a4)
    {
      v13 = v9;
      *a4 = v10;
    }
  }

  else if (a4)
  {
    v12 = v6;
    v8 = 0;
    *a4 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)compressArchiveForSSUFileURL:(id)a3 outputFileURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v14 = 0;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:1 error:&v14];
  v9 = v14;
  v10 = v9;
  if (v8)
  {
    v11 = [objc_opt_class() _compressArchiveForData:v8 outputFileURL:v7 error:a5];
  }

  else if (v9)
  {
    v12 = v9;
    v11 = 0;
    *a5 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)compressArchiveForSSUFile:(id)a3 outputFileURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_class();
  v10 = [v8 flatbuffData];

  LOBYTE(a5) = [v9 _compressArchiveForData:v10 outputFileURL:v7 error:a5];
  return a5;
}

+ (BOOL)_compressArchiveForData:(id)a3 outputFileURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v16 = 0;
  v8 = [a3 compressedDataUsingAlgorithm:0 error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    v15 = 0;
    v11 = [v8 writeToURL:v7 options:1 error:&v15];
    v12 = v15;
    if (a5 && (v11 & 1) == 0)
    {
      v12 = v12;
      *a5 = v12;
    }
  }

  else if (a5)
  {
    v13 = v9;
    v11 = 0;
    *a5 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end