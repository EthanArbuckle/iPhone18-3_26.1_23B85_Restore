@interface VGSerializationHelpersCVA
+ (BOOL)getCVAMatrix3xXf:(void *)a3 fromDictionary:(id)a4 forKey:(id)a5;
+ (BOOL)getCVAMatrix3xXui:(void *)a3 fromDictionary:(id)a4 forKey:(id)a5;
+ (BOOL)getCVAMatrix4x4f:(void *)a3 fromDictionary:(id)a4 forKey:(id)a5;
+ (BOOL)getSimdFloat33:(id *)a3 fromDictionary:(id)a4 forKey:(id)a5;
+ (BOOL)setCVAMatrix3xXf:(const void *)a3 inDictionary:(id)a4 forKey:(id)a5;
+ (BOOL)setCVAMatrix3xXui:(const void *)a3 inDictionary:(id)a4 forKey:(id)a5;
+ (BOOL)setCVAMatrix4x4f:(const void *)a3 inDictionary:(id)a4 forKey:(id)a5;
+ (BOOL)setSimdFloat33:(id *)a3 inDictionary:(id)a4 forKey:(id)a5;
@end

@implementation VGSerializationHelpersCVA

+ (BOOL)setCVAMatrix3xXf:(const void *)a3 inDictionary:(id)a4 forKey:(id)a5
{
  v7 = a5;
  cva::DictionaryHandler::DictionaryHandler(v9, a4);
  cva::ItemHandler::createMatrix<float,3u,0u>(a3);
}

+ (BOOL)setCVAMatrix3xXui:(const void *)a3 inDictionary:(id)a4 forKey:(id)a5
{
  v7 = a4;
  v8 = a5;
  cva::DictionaryHandler::DictionaryHandler(v20, v7);
  v9 = (4 * (3 * *(a3 + 4)) + 31) & 0x7FFFFFFE0;
  v18[1] = (v9 >> 2);
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v9, 0xE1AC2527uLL);
  v10 = memptr;
  v18[0] = memptr;
  v11 = *(a3 + 4);
  v19 = v11;
  if (v11)
  {
    v12 = (3 * v11);
    v13 = *a3;
    v14 = 4 * v12;
    do
    {
      v15 = *v13++;
      *v10++ = v15;
      v14 -= 4;
    }

    while (v14);
  }

  cva::ItemHandler::createMatrix<int,3u,0u>(v18);
}

+ (BOOL)setCVAMatrix4x4f:(const void *)a3 inDictionary:(id)a4 forKey:(id)a5
{
  v7 = a5;
  cva::DictionaryHandler::DictionaryHandler(v9, a4);
  cva::ItemHandler::createMatrix<float,4u,4u>(a3);
}

+ (BOOL)setSimdFloat33:(id *)a3 inDictionary:(id)a4 forKey:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a3 length:48 freeWhenDone:0];
  cva::DictionaryHandler::DictionaryHandler(v14, v7);
  cva::ItemHandler::createData(v13, v9, v10);
  v11 = cva::DictionaryHandler::setItem(v14, [v8 UTF8String], v13);
  cva::ItemHandler::~ItemHandler(v13);
  cva::DictionaryHandler::~DictionaryHandler(v14);

  return v11;
}

+ (BOOL)getCVAMatrix3xXf:(void *)a3 fromDictionary:(id)a4 forKey:(id)a5
{
  v6 = a5;
  cva::DictionaryHandler::DictionaryHandler(v9, a4);
  cva::DictionaryHandler::item(v8, v9, [v6 UTF8String]);
  if (cva::ItemHandler::isMatrixType(v8))
  {
    cva::ItemHandler::getMatrix<float,3u,0u>();
  }

  cva::ItemHandler::~ItemHandler(v8);
  cva::DictionaryHandler::~DictionaryHandler(v9);

  return 0;
}

+ (BOOL)getCVAMatrix3xXui:(void *)a3 fromDictionary:(id)a4 forKey:(id)a5
{
  v6 = a4;
  v7 = a5;
  cva::DictionaryHandler::DictionaryHandler(v10, v6);
  cva::DictionaryHandler::item(v9, v10, [v7 UTF8String]);
  if (cva::ItemHandler::isMatrixType(v9))
  {
    cva::ItemHandler::getMatrix<int,3u,0u>();
  }

  cva::ItemHandler::~ItemHandler(v9);
  cva::DictionaryHandler::~DictionaryHandler(v10);

  return 0;
}

+ (BOOL)getCVAMatrix4x4f:(void *)a3 fromDictionary:(id)a4 forKey:(id)a5
{
  v6 = a5;
  cva::DictionaryHandler::DictionaryHandler(v9, a4);
  cva::DictionaryHandler::item(v8, v9, [v6 UTF8String]);
  if (cva::ItemHandler::isMatrixType(v8))
  {
    cva::ItemHandler::getMatrix<float,4u,4u>();
  }

  cva::ItemHandler::~ItemHandler(v8);
  cva::DictionaryHandler::~DictionaryHandler(v9);

  return 0;
}

+ (BOOL)getSimdFloat33:(id *)a3 fromDictionary:(id)a4 forKey:(id)a5
{
  v7 = a5;
  cva::DictionaryHandler::DictionaryHandler(v12, a4);
  cva::DictionaryHandler::item(v11, v12, [v7 UTF8String]);
  isDataType = cva::ItemHandler::isDataType(v11);
  if (isDataType)
  {
    v9 = cva::ItemHandler::getData(v11);
    [v9 getBytes:a3 length:48];
  }

  cva::ItemHandler::~ItemHandler(v11);
  cva::DictionaryHandler::~DictionaryHandler(v12);

  return isDataType;
}

@end