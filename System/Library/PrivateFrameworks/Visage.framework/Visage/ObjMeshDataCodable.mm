@interface ObjMeshDataCodable
- (ObjMeshDataCodable)initWithCoder:(id)coder;
- (ObjMeshDataCodable)initWithObjMeshDataNoCopy:(const void *)copy;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ObjMeshDataCodable

- (ObjMeshDataCodable)initWithObjMeshDataNoCopy:(const void *)copy
{
  v8.receiver = self;
  v8.super_class = ObjMeshDataCodable;
  v4 = [(ObjMeshDataCodable *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_pObjMeshData = copy;
    v4->_freeWhenDone = 0;
    v6 = v4;
  }

  return v5;
}

- (void)dealloc
{
  if (self->_freeWhenDone)
  {
    pObjMeshData = self->_pObjMeshData;
    if (pObjMeshData)
    {
      if (*(pObjMeshData + 200) == 1)
      {
        free(pObjMeshData[22]);
      }

      if (*(pObjMeshData + 168) == 1)
      {
        free(pObjMeshData[18]);
      }

      if (*(pObjMeshData + 136) == 1)
      {
        free(pObjMeshData[14]);
      }

      if (*(pObjMeshData + 104) == 1)
      {
        free(pObjMeshData[10]);
      }

      if (*(pObjMeshData + 72) == 1)
      {
        free(pObjMeshData[6]);
      }

      free(pObjMeshData[3]);
      free(*pObjMeshData);
      MEMORY[0x2743B9370](pObjMeshData, 0x1092C4070EEB0B2);
    }
  }

  v4.receiver = self;
  v4.super_class = ObjMeshDataCodable;
  [(ObjMeshDataCodable *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_pObjMeshData)
  {
    cva::DictionaryHandler::DictionaryHandler(v5, [MEMORY[0x277CBEC10] mutableCopy]);
    cva::ItemHandler::createMatrix<float,3u,0u>(self->_pObjMeshData);
  }
}

- (ObjMeshDataCodable)initWithCoder:(id)coder
{
  v13[5] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v13[4] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];
  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"meshProperties"];

  cva::DictionaryHandler::DictionaryHandler(v12, v7);
  if (cva::DictionaryHandler::hasKey(v12, "V") && (cva::DictionaryHandler::hasKey(v12, "F") & 1) != 0)
  {
    operator new();
  }

  v8 = __VGLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_270F06000, v8, OS_LOG_TYPE_ERROR, " Required properties : Vertices and Faces, not found in mesh data ", buf, 2u);
  }

  cva::DictionaryHandler::~DictionaryHandler(v12);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

@end