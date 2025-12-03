@interface TRIFBCloudKitAssetRecordAsset
- (BOOL)isEqual:(id)equal;
- (TRIFBCloudKitAssetRecordAsset)initWithBufRef:(id)ref cppPointer:(const CloudKitAssetRecordAsset *)pointer;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
@end

@implementation TRIFBCloudKitAssetRecordAsset

- (id)deepCopyUsingBufferBuilder:(id)builder
{
  v3 = [(TRIFBCloudKitAssetRecordAsset *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:853 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [builderCopy trifbCreateCloudKitAssetRecordAssetUsingBlock:&__block_literal_global_7];
  objc_autoreleasePoolPop(v9);

  return v10;
}

- (TRIFBCloudKitAssetRecordAsset)initWithBufRef:(id)ref cppPointer:(const CloudKitAssetRecordAsset *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = TRIFBCloudKitAssetRecordAsset;
  v8 = [(TRIFBCloudKitAssetRecordAsset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_br, ref);
    v9->_ptr = pointer;
  }

  return v9;
}

- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables
{
  dataCopy = data;
  v11 = objc_autoreleasePoolPush();
  bytes = [dataCopy bytes];
  if (bytes)
  {
    v13 = bytes;
  }

  else
  {
    v13 = &emptyCArrayStorage;
  }

  v14 = [dataCopy length];
  v23 = v13;
  v24 = v14;
  v25 = 0;
  depthCopy = depth;
  v27 = 0;
  tablesCopy = tables;
  v29 = 0;
  v30 = 1;
  if (v14 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  if (v14 >= 5 && ((v15 = *v13, v15 >= 1) ? (v16 = v14 - 1 >= v15) : (v16 = 0), v16 && apple::aiml::flatbuffers2::Verifier::VerifyTableStart(&v23, &v13[v15])))
  {
    --v25;
    v17 = *v13;
    v18 = objc_alloc(MEMORY[0x277CED178]);
    v19 = [v18 initWithData:{dataCopy, v23, v24}];
    self = [(TRIFBCloudKitAssetRecordAsset *)self initWithBufRef:v19 cppPointer:&v13[v17]];

    selfCopy2 = self;
    if (f8)
    {
      if ([(TRIFBCloudKitAssetRecordAsset *)self verifyUTF8Fields])
      {
        selfCopy2 = self;
      }

      else
      {
        selfCopy2 = 0;
      }
    }

    v21 = selfCopy2;
  }

  else
  {
    v21 = 0;
  }

  objc_autoreleasePoolPop(v11);

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = equalCopy;
  if (equalCopy)
  {
    v5 = equalCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end