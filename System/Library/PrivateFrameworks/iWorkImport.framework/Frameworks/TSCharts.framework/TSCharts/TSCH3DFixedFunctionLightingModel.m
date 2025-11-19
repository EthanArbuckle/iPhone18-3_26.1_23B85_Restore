@interface TSCH3DFixedFunctionLightingModel
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSCH3DFixedFunctionLightingModel)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCH3DFixedFunctionLightingModel

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSCH3DFixedFunctionLightingModel alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

- (TSCH3DFixedFunctionLightingModel)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v7 = a4;
  if ((*(a3 + 16) & 2) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DFixedFunctionLightingModel(PersistenceAdditions) initWithArchive:unarchiver:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPhongLikeLightingModel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 207, 0, "lighting model archive doesn't have fixed funtcion");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = *(a3 + 4);
  if (!v26)
  {
    v26 = &qword_2812F1488;
  }

  v27 = v26[3];
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &qword_2812F14C8;
  }

  v31.receiver = self;
  v31.super_class = TSCH3DFixedFunctionLightingModel;
  v29 = [(TSCH3DPhongLikeLightingModel *)&v31 initWithPhongMaterialPackageArchive:v28 lightingModelArchive:a3 unarchiver:v7];

  return v29;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 2u;
  v7 = *(a3 + 4);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_276447AE8(v8);
    *(a3 + 4) = v7;
  }

  *(v7 + 16) |= 1u;
  v9 = *(v7 + 24);
  if (!v9)
  {
    v10 = *(v7 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = sub_276447C80(v10);
    *(v7 + 24) = v9;
  }

  *(a3 + 4) |= 4u;
  v11 = *(a3 + 5);
  if (!v11)
  {
    v12 = *(a3 + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = sub_2764471AC(v12);
    *(a3 + 5) = v11;
  }

  v13.receiver = self;
  v13.super_class = TSCH3DFixedFunctionLightingModel;
  [(TSCH3DPhongLikeLightingModel *)&v13 saveToPhongMaterialPackageArchive:v9 environmentPackageArchive:v11 archiver:v6];
}

@end