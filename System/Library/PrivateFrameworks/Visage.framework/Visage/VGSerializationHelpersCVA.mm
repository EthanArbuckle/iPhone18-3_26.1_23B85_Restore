@interface VGSerializationHelpersCVA
+ (BOOL)getCVAMatrix3xXf:(void *)xf fromDictionary:(id)dictionary forKey:(id)key;
+ (BOOL)getCVAMatrix3xXui:(void *)xui fromDictionary:(id)dictionary forKey:(id)key;
+ (BOOL)getCVAMatrix4x4f:(void *)matrix4x4f fromDictionary:(id)dictionary forKey:(id)key;
+ (BOOL)getSimdFloat33:(id *)float33 fromDictionary:(id)dictionary forKey:(id)key;
+ (BOOL)setCVAMatrix3xXf:(const void *)xf inDictionary:(id)dictionary forKey:(id)key;
+ (BOOL)setCVAMatrix3xXui:(const void *)xui inDictionary:(id)dictionary forKey:(id)key;
+ (BOOL)setCVAMatrix4x4f:(const void *)matrix4x4f inDictionary:(id)dictionary forKey:(id)key;
+ (BOOL)setSimdFloat33:(id *)float33 inDictionary:(id)dictionary forKey:(id)key;
@end

@implementation VGSerializationHelpersCVA

+ (BOOL)setCVAMatrix3xXf:(const void *)xf inDictionary:(id)dictionary forKey:(id)key
{
  keyCopy = key;
  cva::DictionaryHandler::DictionaryHandler(v9, dictionary);
  cva::ItemHandler::createMatrix<float,3u,0u>(xf);
}

+ (BOOL)setCVAMatrix3xXui:(const void *)xui inDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  cva::DictionaryHandler::DictionaryHandler(v20, dictionaryCopy);
  v9 = (4 * (3 * *(xui + 4)) + 31) & 0x7FFFFFFE0;
  v18[1] = (v9 >> 2);
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v9, 0xE1AC2527uLL);
  v10 = memptr;
  v18[0] = memptr;
  v11 = *(xui + 4);
  v19 = v11;
  if (v11)
  {
    v12 = (3 * v11);
    v13 = *xui;
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

+ (BOOL)setCVAMatrix4x4f:(const void *)matrix4x4f inDictionary:(id)dictionary forKey:(id)key
{
  keyCopy = key;
  cva::DictionaryHandler::DictionaryHandler(v9, dictionary);
  cva::ItemHandler::createMatrix<float,4u,4u>(matrix4x4f);
}

+ (BOOL)setSimdFloat33:(id *)float33 inDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:float33 length:48 freeWhenDone:0];
  cva::DictionaryHandler::DictionaryHandler(v14, dictionaryCopy);
  cva::ItemHandler::createData(v13, v9, v10);
  v11 = cva::DictionaryHandler::setItem(v14, [keyCopy UTF8String], v13);
  cva::ItemHandler::~ItemHandler(v13);
  cva::DictionaryHandler::~DictionaryHandler(v14);

  return v11;
}

+ (BOOL)getCVAMatrix3xXf:(void *)xf fromDictionary:(id)dictionary forKey:(id)key
{
  keyCopy = key;
  cva::DictionaryHandler::DictionaryHandler(v9, dictionary);
  cva::DictionaryHandler::item(v8, v9, [keyCopy UTF8String]);
  if (cva::ItemHandler::isMatrixType(v8))
  {
    cva::ItemHandler::getMatrix<float,3u,0u>();
  }

  cva::ItemHandler::~ItemHandler(v8);
  cva::DictionaryHandler::~DictionaryHandler(v9);

  return 0;
}

+ (BOOL)getCVAMatrix3xXui:(void *)xui fromDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  cva::DictionaryHandler::DictionaryHandler(v10, dictionaryCopy);
  cva::DictionaryHandler::item(v9, v10, [keyCopy UTF8String]);
  if (cva::ItemHandler::isMatrixType(v9))
  {
    cva::ItemHandler::getMatrix<int,3u,0u>();
  }

  cva::ItemHandler::~ItemHandler(v9);
  cva::DictionaryHandler::~DictionaryHandler(v10);

  return 0;
}

+ (BOOL)getCVAMatrix4x4f:(void *)matrix4x4f fromDictionary:(id)dictionary forKey:(id)key
{
  keyCopy = key;
  cva::DictionaryHandler::DictionaryHandler(v9, dictionary);
  cva::DictionaryHandler::item(v8, v9, [keyCopy UTF8String]);
  if (cva::ItemHandler::isMatrixType(v8))
  {
    cva::ItemHandler::getMatrix<float,4u,4u>();
  }

  cva::ItemHandler::~ItemHandler(v8);
  cva::DictionaryHandler::~DictionaryHandler(v9);

  return 0;
}

+ (BOOL)getSimdFloat33:(id *)float33 fromDictionary:(id)dictionary forKey:(id)key
{
  keyCopy = key;
  cva::DictionaryHandler::DictionaryHandler(v12, dictionary);
  cva::DictionaryHandler::item(v11, v12, [keyCopy UTF8String]);
  isDataType = cva::ItemHandler::isDataType(v11);
  if (isDataType)
  {
    v9 = cva::ItemHandler::getData(v11);
    [v9 getBytes:float33 length:48];
  }

  cva::ItemHandler::~ItemHandler(v11);
  cva::DictionaryHandler::~DictionaryHandler(v12);

  return isDataType;
}

@end