@interface TRIFBCloudKitAssetRecordAsset
- (BOOL)isEqual:(id)a3;
- (TRIFBCloudKitAssetRecordAsset)initWithBufRef:(id)a3 cppPointer:(const CloudKitAssetRecordAsset *)a4;
- (id)deepCopyUsingBufferBuilder:(id)a3;
- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4;
- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6;
@end

@implementation TRIFBCloudKitAssetRecordAsset

- (id)deepCopyUsingBufferBuilder:(id)a3
{
  v3 = [(TRIFBCloudKitAssetRecordAsset *)self deepCopyUsingBufferBuilder:a3 changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:853 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [v7 trifbCreateCloudKitAssetRecordAssetUsingBlock:&__block_literal_global_7];
  objc_autoreleasePoolPop(v9);

  return v10;
}

- (TRIFBCloudKitAssetRecordAsset)initWithBufRef:(id)a3 cppPointer:(const CloudKitAssetRecordAsset *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TRIFBCloudKitAssetRecordAsset;
  v8 = [(TRIFBCloudKitAssetRecordAsset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_br, a3);
    v9->_ptr = a4;
  }

  return v9;
}

- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6
{
  v10 = a3;
  v11 = objc_autoreleasePoolPush();
  v12 = [v10 bytes];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &emptyCArrayStorage;
  }

  v14 = [v10 length];
  v23 = v13;
  v24 = v14;
  v25 = 0;
  v26 = a5;
  v27 = 0;
  v28 = a6;
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
    v19 = [v18 initWithData:{v10, v23, v24}];
    self = [(TRIFBCloudKitAssetRecordAsset *)self initWithBufRef:v19 cppPointer:&v13[v17]];

    v20 = self;
    if (a4)
    {
      if ([(TRIFBCloudKitAssetRecordAsset *)self verifyUTF8Fields])
      {
        v20 = self;
      }

      else
      {
        v20 = 0;
      }
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  objc_autoreleasePoolPop(v11);

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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