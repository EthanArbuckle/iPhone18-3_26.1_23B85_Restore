@interface SSUCompressionUtils
+ (BOOL)_compressArchiveForData:(id)data outputFileURL:(id)l error:(id *)error;
+ (BOOL)compressArchiveForSSUFile:(id)file outputFileURL:(id)l error:(id *)error;
+ (BOOL)compressArchiveForSSUFileURL:(id)l outputFileURL:(id)rL error:(id *)error;
+ (BOOL)decompressFromCompressedSSUFilePath:(id)path outputFileURL:(id)l error:(id *)error;
+ (id)SSUFileFromCompressedSSUFilePath:(id)path error:(id *)error;
+ (id)_dataFromCompressedSSUFilePath:(id)path error:(id *)error;
@end

@implementation SSUCompressionUtils

+ (id)SSUFileFromCompressedSSUFilePath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = [objc_opt_class() _dataFromCompressedSSUFilePath:pathCopy error:error];

  v7 = [[FLTSSUFile alloc] initAndVerifyWithFlatbuffData:v6];

  return v7;
}

+ (BOOL)decompressFromCompressedSSUFilePath:(id)path outputFileURL:(id)l error:(id *)error
{
  lCopy = l;
  pathCopy = path;
  v17 = 0;
  v9 = [objc_opt_class() _dataFromCompressedSSUFilePath:pathCopy error:&v17];

  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v16 = 0;
    v12 = [v9 writeToURL:lCopy options:1 error:&v16];
    v13 = v16;
    if (error && (v12 & 1) == 0)
    {
      v13 = v13;
      *error = v13;
    }
  }

  else if (error)
  {
    v14 = v10;
    v12 = 0;
    *error = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_dataFromCompressedSSUFilePath:(id)path error:(id *)error
{
  v16 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:path options:1 error:&v16];
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

    else if (error)
    {
      v13 = v9;
      *error = v10;
    }
  }

  else if (error)
  {
    v12 = v6;
    v8 = 0;
    *error = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)compressArchiveForSSUFileURL:(id)l outputFileURL:(id)rL error:(id *)error
{
  rLCopy = rL;
  v14 = 0;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:1 error:&v14];
  v9 = v14;
  v10 = v9;
  if (v8)
  {
    v11 = [objc_opt_class() _compressArchiveForData:v8 outputFileURL:rLCopy error:error];
  }

  else if (v9)
  {
    v12 = v9;
    v11 = 0;
    *error = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)compressArchiveForSSUFile:(id)file outputFileURL:(id)l error:(id *)error
{
  lCopy = l;
  fileCopy = file;
  v9 = objc_opt_class();
  flatbuffData = [fileCopy flatbuffData];

  LOBYTE(error) = [v9 _compressArchiveForData:flatbuffData outputFileURL:lCopy error:error];
  return error;
}

+ (BOOL)_compressArchiveForData:(id)data outputFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v16 = 0;
  v8 = [data compressedDataUsingAlgorithm:0 error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    v15 = 0;
    v11 = [v8 writeToURL:lCopy options:1 error:&v15];
    v12 = v15;
    if (error && (v11 & 1) == 0)
    {
      v12 = v12;
      *error = v12;
    }
  }

  else if (error)
  {
    v13 = v9;
    v11 = 0;
    *error = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end