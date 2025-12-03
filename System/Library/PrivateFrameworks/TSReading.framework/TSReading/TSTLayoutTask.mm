@interface TSTLayoutTask
- (TSTLayoutTask)initWithMasterLayout:(id)layout;
- (void)dealloc;
- (void)flushToGlobalCaches;
@end

@implementation TSTLayoutTask

- (TSTLayoutTask)initWithMasterLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = TSTLayoutTask;
  v4 = [(TSTLayoutTask *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mMasterLayout = layout;
    v4->mCellStatesToLayout = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v5;
}

- (void)dealloc
{
  self->mCellStatesToLayout = 0;
  v3.receiver = self;
  v3.super_class = TSTLayoutTask;
  [(TSTLayoutTask *)&v3 dealloc];
}

- (void)flushToGlobalCaches
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mCellStatesToLayout = self->mCellStatesToLayout;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__TSTLayoutTask_flushToGlobalCaches__block_invoke;
  v6[3] = &unk_279D4AC78;
  v6[4] = self;
  v6[5] = v3;
  v6[6] = v4;
  [(NSMutableArray *)mCellStatesToLayout enumerateObjectsUsingBlock:v6];
  [(TSUConcurrentCache *)[(TSTMasterLayout *)self->mMasterLayout dupContentCache] addEntriesFromDictionary:v3];

  [(TSUConcurrentCache *)[(TSTMasterLayout *)self->mMasterLayout cellIDToWPColumnCache] addEntriesFromDictionary:v4];
}

uint64_t __36__TSTLayoutTask_flushToGlobalCaches__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = [v2 modelCellID];
  v4 = [v2 mergedRange];
  result = [v2 wpColumn];
  if (result)
  {
    v6 = result;
    if ([v2 keyVal] && (objc_msgSend(v2, "layoutCacheFlags") & 2) != 0 && ((objc_msgSend(objc_msgSend(*(*(a1 + 32) + 8), "tableInfo"), "editingCellID") ^ v3) & 0xFFFFFF) != 0)
    {
      [*(a1 + 40) setObject:v6 forKey:{objc_msgSend(v2, "keyVal")}];
    }

    if ([v2 hasContent] && (objc_msgSend(v2, "layoutCacheFlags") & 1) != 0 && !objc_msgSend(v2, "verticalAlignment"))
    {
      HIDWORD(v7) = v3;
      LODWORD(v7) = v3;
      [*(a1 + 48) setObject:v6 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", (v7 >> 16) & 0xFFFF00FF)}];
    }

    result = [v2 inDynamicLayout];
    if ((result & 1) == 0)
    {
      result = [v2 cellPropsRowHeight];
      if (result)
      {
        if (v4 == 0xFFFF || (v4 & 0xFF0000) == 0xFF0000 || !HIWORD(v4) || (v4 & 0xFFFF00000000) == 0)
        {
          v22 = v24;
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __36__TSTLayoutTask_flushToGlobalCaches__block_invoke_3;
          v24[3] = &unk_279D47708;
          v23 = *(a1 + 32);
          v24[4] = v2;
          v24[5] = v23;
        }

        else
        {
          v8 = TSTMasterLayoutSizeOfTextInColumn([v2 wpColumn]);
          v10 = v9;
          [v2 paddingInsets];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [v2 cell];
          v21 = v19 && *(v19 + 9) << 8 == 1536 && (v20 = [v2 cell]) != 0 && *(v20 + 104) == 263;
          v22 = v25;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __36__TSTLayoutTask_flushToGlobalCaches__block_invoke_2;
          v25[3] = &unk_279D4AC50;
          v23 = *(a1 + 32);
          v25[4] = v23;
          v25[11] = v4;
          *&v25[5] = v8;
          v25[6] = v10;
          v25[7] = v12;
          v25[8] = v14;
          v25[9] = v16;
          v25[10] = v18;
          v26 = v21;
        }

        return [objc_msgSend(*(v23 + 8) "whCacheQueue")];
      }
    }
  }

  return result;
}

uint64_t __36__TSTLayoutTask_flushToGlobalCaches__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) mergeRanges];
  v3 = *(a1 + 88);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 96);

  return [v2 addRange:v3 andSize:v10 andPaddingInsets:v4 andIsCheckbox:{v5, v6, v7, v8, v9}];
}

uint64_t __36__TSTLayoutTask_flushToGlobalCaches__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) modelCellID];
  v3 = TSTMasterLayoutSizeOfTextInColumn([*(a1 + 32) wpColumn]);
  v5 = v4;
  v6 = [*(a1 + 32) cell];
  if (v6 && *(v6 + 9) << 8 == 1536)
  {
    [*(a1 + 32) cell];
  }

  if (v5 <= 0.0)
  {
    v13 = [*(*(a1 + 40) + 8) widthHeightCache];

    return [v13 resetFitHeightForCellID:v2];
  }

  else
  {
    [*(a1 + 32) paddingInsets];
    v8 = v7;
    [*(a1 + 32) paddingInsets];
    v10 = v5 + v8 + v9;
    v11 = [*(*(a1 + 40) + 8) widthHeightCache];

    return [v11 setFitHeight:v2 forCellID:v10];
  }
}

@end