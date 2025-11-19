@interface TSTChangeDescriptor
+ (id)changeDescriptorWithAnnotationsRemovedForMerge:(id)a3;
+ (id)changeDescriptorWithType:(int)a3;
+ (id)changeDescriptorWithType:(int)a3 cellID:(TSUCellCoord)a4 cellRange:(TSUCellRect)a5;
+ (id)changeDescriptorWithType:(int)a3 cellID:(TSUCellCoord)a4 cellRange:(TSUCellRect)a5 strokeRange:(TSUCellRect)a6;
+ (id)changeDescriptorWithType:(int)a3 cellID:(TSUCellCoord)a4 cellRegion:(id)a5 strokeRegion:(id)a6;
+ (id)changeDescriptorWithType:(int)a3 cellID:(TSUCellCoord)a4 strokeRange:(TSUCellRect)a5;
+ (id)changeDescriptorWithType:(int)a3 cellRange:(TSUCellRect)a4;
+ (id)changeDescriptorWithType:(int)a3 cellRange:(TSUCellRect)a4 strokeRange:(TSUCellRect)a5;
+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4;
+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4 beforeCount:(unint64_t)a5 afterCount:(unint64_t)a6;
+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4 strokeRegion:(id)a5;
+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4 strokeRegion:(id)a5 beforeCount:(unint64_t)a6 afterCount:(unint64_t)a7;
+ (id)changeDescriptorWithType:(int)a3 referenceIdentifiers:(id)a4;
+ (id)changeDescriptorWithType:(int)a3 shuffleMapping:(id)a4;
+ (id)changeDescriptorWithType:(int)a3 strokeRange:(TSUCellRect)a4;
+ (id)changeDescriptorWithType:(int)a3 strokeRegion:(id)a4;
+ (void)enumerateChangeRecords:(id)a3 withType:(int)a4 block:(id)a5;
- (BOOL)isEqual:(id)a3;
- (TSTChangeDescriptor)initWithChangeDescriptorType:(int)a3 cellRegion:(id)a4 cellID:(TSUCellCoord)a5 strokeRegion:(id)a6 referenceIdentifiers:(id)a7 shuffleMapping:(id)a8 annotations:(id)a9;
- (TSUCellRect)cellRange;
- (TSUCellRect)strokeRange;
@end

@implementation TSTChangeDescriptor

- (TSTChangeDescriptor)initWithChangeDescriptorType:(int)a3 cellRegion:(id)a4 cellID:(TSUCellCoord)a5 strokeRegion:(id)a6 referenceIdentifiers:(id)a7 shuffleMapping:(id)a8 annotations:(id)a9
{
  v29 = a4;
  v28 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v30.receiver = self;
  v30.super_class = TSTChangeDescriptor;
  v19 = [(TSTChangeDescriptor *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_cellRegion, a4);
    v20->_cellID = a5;
    v20->_changeDescriptor = a3;
    objc_storeStrong(&v20->_strokeRegion, a6);
    v25 = objc_msgSend_copy(v16, v21, v22, v23, v24, v28, v29);
    referenceIdentifiers = v20->_referenceIdentifiers;
    v20->_referenceIdentifiers = v25;

    objc_storeStrong(&v20->_shuffleMapping, a8);
    objc_storeStrong(&v20->_annotations, a9);
    v20->_processedByLayoutEngine = 0;
  }

  return v20;
}

+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [TSTChangeDescriptor alloc];
  v11 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9, v10);
  v13 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v6, v12, v4, v5, 0x7FFF7FFFFFFFLL, v11, 0, 0);

  return v13;
}

+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4 strokeRegion:(id)a5
{
  v6 = *&a3;
  v7 = a5;
  v8 = a4;
  v9 = [TSTChangeDescriptor alloc];
  v11 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v9, v10, v6, v8, 0x7FFF7FFFFFFFLL, v7, 0, 0);

  return v11;
}

+ (id)changeDescriptorWithType:(int)a3 strokeRegion:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [TSTChangeDescriptor alloc];
  v11 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9, v10);
  v13 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v6, v12, v4, v11, 0x7FFF7FFFFFFFLL, v5, 0, 0);

  return v13;
}

+ (id)changeDescriptorWithType:(int)a3 cellID:(TSUCellCoord)a4 cellRegion:(id)a5 strokeRegion:(id)a6
{
  v8 = *&a3;
  v9 = a6;
  v10 = a5;
  v11 = [TSTChangeDescriptor alloc];
  v13 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v11, v12, v8, v10, *&a4, v9, 0, 0);

  return v13;
}

+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4 strokeRegion:(id)a5 beforeCount:(unint64_t)a6 afterCount:(unint64_t)a7
{
  v10 = *&a3;
  v11 = a5;
  v12 = a4;
  v13 = [TSTChangeDescriptor alloc];
  v15 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v13, v14, v10, v12, 0x7FFF7FFFFFFFLL, v11, 0, 0);

  objc_msgSend_setBeforeCountValue_(v15, v16, a6, v17, v18);
  objc_msgSend_setAfterCountValue_(v15, v19, a7, v20, v21);

  return v15;
}

+ (id)changeDescriptorWithType:(int)a3 cellRegion:(id)a4 beforeCount:(unint64_t)a5 afterCount:(unint64_t)a6
{
  v8 = *&a3;
  v9 = a4;
  v10 = [TSTChangeDescriptor alloc];
  v15 = objc_msgSend_invalidRegion(TSTCellRegion, v11, v12, v13, v14);
  v17 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v10, v16, v8, v9, 0x7FFF7FFFFFFFLL, v15, 0, 0);

  objc_msgSend_setBeforeCountValue_(v17, v18, a5, v19, v20);
  objc_msgSend_setAfterCountValue_(v17, v21, a6, v22, v23);

  return v17;
}

+ (id)changeDescriptorWithType:(int)a3
{
  v3 = *&a3;
  v4 = [TSTChangeDescriptor alloc];
  v9 = objc_msgSend_invalidRegion(TSTCellRegion, v5, v6, v7, v8);
  v14 = objc_msgSend_invalidRegion(TSTCellRegion, v10, v11, v12, v13);
  v16 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v4, v15, v3, v9, 0x7FFF7FFFFFFFLL, v14, 0, 0);

  return v16;
}

+ (id)changeDescriptorWithType:(int)a3 cellID:(TSUCellCoord)a4 cellRange:(TSUCellRect)a5
{
  size = a5.size;
  origin = a5.origin;
  v8 = *&a3;
  v9 = [TSTChangeDescriptor alloc];
  v12 = objc_msgSend_regionFromRange_(TSTCellRegion, v10, origin, size, v11);
  v17 = objc_msgSend_invalidRegion(TSTCellRegion, v13, v14, v15, v16);
  v19 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v9, v18, v8, v12, *&a4, v17, 0, 0);

  return v19;
}

+ (id)changeDescriptorWithType:(int)a3 cellID:(TSUCellCoord)a4 cellRange:(TSUCellRect)a5 strokeRange:(TSUCellRect)a6
{
  size = a6.size;
  origin = a6.origin;
  v8 = a5.size;
  v9 = a5.origin;
  v11 = *&a3;
  v12 = [TSTChangeDescriptor alloc];
  v15 = objc_msgSend_regionFromRange_(TSTCellRegion, v13, v9, v8, v14);
  v18 = objc_msgSend_regionFromRange_(TSTCellRegion, v16, origin, size, v17);
  v20 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v12, v19, v11, v15, *&a4, v18, 0, 0);

  return v20;
}

+ (id)changeDescriptorWithType:(int)a3 cellID:(TSUCellCoord)a4 strokeRange:(TSUCellRect)a5
{
  size = a5.size;
  origin = a5.origin;
  v8 = *&a3;
  v9 = [TSTChangeDescriptor alloc];
  v14 = objc_msgSend_invalidRegion(TSTCellRegion, v10, v11, v12, v13);
  v17 = objc_msgSend_regionFromRange_(TSTCellRegion, v15, origin, size, v16);
  v19 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v9, v18, v8, v14, *&a4, v17, 0, 0);

  return v19;
}

+ (id)changeDescriptorWithType:(int)a3 cellRange:(TSUCellRect)a4
{
  size = a4.size;
  origin = a4.origin;
  v6 = *&a3;
  v7 = [TSTChangeDescriptor alloc];
  v10 = objc_msgSend_regionFromRange_(TSTCellRegion, v8, origin, size, v9);
  v15 = objc_msgSend_invalidRegion(TSTCellRegion, v11, v12, v13, v14);
  v17 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v7, v16, v6, v10, 0x7FFF7FFFFFFFLL, v15, 0, 0);

  return v17;
}

+ (id)changeDescriptorWithType:(int)a3 strokeRange:(TSUCellRect)a4
{
  size = a4.size;
  origin = a4.origin;
  v6 = *&a3;
  v7 = [TSTChangeDescriptor alloc];
  v12 = objc_msgSend_invalidRegion(TSTCellRegion, v8, v9, v10, v11);
  v15 = objc_msgSend_regionFromRange_(TSTCellRegion, v13, origin, size, v14);
  v17 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v7, v16, v6, v12, 0x7FFF7FFFFFFFLL, v15, 0, 0);

  return v17;
}

+ (id)changeDescriptorWithType:(int)a3 cellRange:(TSUCellRect)a4 strokeRange:(TSUCellRect)a5
{
  size = a5.size;
  origin = a5.origin;
  v7 = a4.size;
  v8 = a4.origin;
  v9 = *&a3;
  v10 = [TSTChangeDescriptor alloc];
  v13 = objc_msgSend_regionFromRange_(TSTCellRegion, v11, v8, v7, v12);
  v16 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, origin, size, v15);
  v18 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v10, v17, v9, v13, 0x7FFF7FFFFFFFLL, v16, 0, 0);

  return v18;
}

+ (id)changeDescriptorWithType:(int)a3 referenceIdentifiers:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [TSTChangeDescriptor alloc];
  v11 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9, v10);
  v16 = objc_msgSend_invalidRegion(TSTCellRegion, v12, v13, v14, v15);
  v18 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v6, v17, v4, v11, 0x7FFF7FFFFFFFLL, v16, v5, 0);

  return v18;
}

+ (id)changeDescriptorWithType:(int)a3 shuffleMapping:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [TSTChangeDescriptor alloc];
  v11 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9, v10);
  v16 = objc_msgSend_invalidRegion(TSTCellRegion, v12, v13, v14, v15);
  v18 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_(v6, v17, v4, v11, 0x7FFF7FFFFFFFLL, v16, 0, v5);

  return v18;
}

+ (id)changeDescriptorWithAnnotationsRemovedForMerge:(id)a3
{
  v3 = a3;
  v4 = [TSTChangeDescriptor alloc];
  v9 = objc_msgSend_invalidRegion(TSTCellRegion, v5, v6, v7, v8);
  v14 = objc_msgSend_invalidRegion(TSTCellRegion, v10, v11, v12, v13);
  v16 = objc_msgSend_initWithChangeDescriptorType_cellRegion_cellID_strokeRegion_referenceIdentifiers_shuffleMapping_annotations_(v4, v15, 54, v9, 0x7FFF7FFFFFFFLL, v14, 0, 0, v3);

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v31 = 1;
  }

  else if (v4)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v11 = v6;
    if (v6 && (changeDescriptor = self->_changeDescriptor, changeDescriptor == objc_msgSend_changeDescriptor(v6, v7, v8, v9, v10)))
    {
      cellRegion = self->_cellRegion;
      v18 = objc_msgSend_cellRegion(v11, v13, v14, v15, v16);
      if (objc_msgSend_equalsCellRegion_(cellRegion, v19, v18, v20, v21))
      {
        v26 = objc_msgSend_cellID(v11, v22, v23, v24, v25);
        v31 = 0;
        cellID = self->_cellID;
        if (cellID.row == v26 && ((*&cellID ^ v26) & 0xFFFF00000000) == 0)
        {
          strokeRegion = self->_strokeRegion;
          v34 = objc_msgSend_strokeRegion(v11, v27, v28, v29, v30);
          v31 = objc_msgSend_equalsCellRegion_(strokeRegion, v35, v34, v36, v37);
        }
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (TSUCellRect)strokeRange
{
  v5 = objc_msgSend_boundingCellRange(self->_strokeRegion, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)cellRange
{
  v5 = objc_msgSend_boundingCellRange(self->_cellRegion, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

+ (void)enumerateChangeRecords:(id)a3 withType:(int)a4 block:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v31 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v27, v32, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        v20 = objc_msgSend_details(v15, v16, v17, v18, v19);
        v21 = TSUDynamicCast();

        if (v21)
        {
          if (objc_msgSend_changeDescriptor(v21, v22, v23, v24, v25) == a4)
          {
            v8[2](v8, v21, &v31);
            if (v31 == 1)
            {

              goto LABEL_13;
            }
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v26, &v27, v32, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

@end