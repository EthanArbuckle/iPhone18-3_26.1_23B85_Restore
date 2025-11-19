@interface TSTHiddenRowsColumnsCache
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)visibleCellOffsetBy:(id)a3 fromCellID:(id)a4;
- (TSTHiddenRowsColumnsCache)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)pop;
- (void)push;
- (void)pushAndValidate:(id)a3;
- (void)swap;
- (void)validate:(id)a3;
- (void)validateChangeDescriptors:(id)a3;
@end

@implementation TSTHiddenRowsColumnsCache

- (TSTHiddenRowsColumnsCache)init
{
  v4.receiver = self;
  v4.super_class = TSTHiddenRowsColumnsCache;
  v2 = [(TSTHiddenRowsColumnsCache *)&v4 init];
  if (v2)
  {
    v2->mHiddenRows = [[TSTHiddenDimensionCache alloc] initWithUserHiddenInformation:1];
    v2->mHiddenColumns = [[TSTHiddenDimensionCache alloc] initWithUserHiddenInformation:0];
  }

  return v2;
}

- (void)dealloc
{
  self->mHiddenRows = 0;

  self->mHiddenColumns = 0;
  v3.receiver = self;
  v3.super_class = TSTHiddenRowsColumnsCache;
  [(TSTHiddenRowsColumnsCache *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TSTHiddenRowsColumnsCache allocWithZone:?]];
  v4->mHiddenColumns = [(TSTHiddenDimensionCache *)self->mHiddenColumns copy];
  v4->mHiddenRows = [(TSTHiddenDimensionCache *)self->mHiddenRows copy];
  return v4;
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)visibleCellOffsetBy:(id)a3 fromCellID:(id)a4
{
  var0 = a4.var0;
  v5 = *&a4.var0 >> 16;
  v6 = a4.var0;
  if (a4.var0 == 0xFFFFLL || (*&a4 & 0xFF0000) == 0xFF0000)
  {
    v11 = *&a4 & 0xFF000000;
  }

  else
  {
    var1 = a3.var1;
    if (a3.var0)
    {
      mHiddenColumns = self->mHiddenColumns;
      if (a3.var0 < 1)
      {
        v10 = [(TSTHiddenDimensionCache *)mHiddenColumns findNthPreviousVisibleIndex:-a3.var0 fromIndex:a4.var1];
      }

      else
      {
        v10 = [(TSTHiddenDimensionCache *)mHiddenColumns findNthNextVisibleIndex:a3.var0 & 0x7FFFFFFF fromIndex:a4.var1];
      }

      LOBYTE(v5) = v10;
    }

    if (var1)
    {
      mHiddenRows = self->mHiddenRows;
      if (var1 < 1)
      {
        v13 = [(TSTHiddenDimensionCache *)mHiddenRows findNthPreviousVisibleIndex:-var1 fromIndex:v6];
      }

      else
      {
        v13 = [(TSTHiddenDimensionCache *)mHiddenRows findNthNextVisibleIndex:var1 fromIndex:v6];
      }

      var0 = v13;
    }

    v11 = 0;
  }

  return (v11 | (v5 << 16) | var0);
}

- (void)pushAndValidate:(id)a3
{
  [(TSTHiddenRowsColumnsCache *)self push];

  [(TSTHiddenRowsColumnsCache *)self validate:a3];
}

- (void)push
{
  AssociatedObject = objc_getAssociatedObject(self, "TSTHiddenRowsColumnsCacheStackKey");
  if (!AssociatedObject)
  {
    AssociatedObject = [MEMORY[0x277CBEB18] array];
    objc_setAssociatedObject(self, "TSTHiddenRowsColumnsCacheStackKey", AssociatedObject, 1);
  }

  if ([AssociatedObject count])
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTHiddenRowsColumnsCache push]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTHiddenRowsColumnsCache.m"), 249, @"really we should only be pushing one"}];
  }

  v6 = [(TSTHiddenRowsColumnsCache *)self copy];

  [AssociatedObject addObject:v6];
}

- (void)swap
{
  AssociatedObject = objc_getAssociatedObject(self, "TSTHiddenRowsColumnsCacheStackKey");
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
    v5 = [AssociatedObject lastObject];
    if (v5)
    {
      v6 = v5;
      [v4 removeLastObject];
      [v4 addObject:{-[TSTHiddenRowsColumnsCache copy](self, "copy")}];

      self->mHiddenColumns = v6[2];
      self->mHiddenRows = v6[1];
    }
  }
}

- (void)pop
{
  AssociatedObject = objc_getAssociatedObject(self, "TSTHiddenRowsColumnsCacheStackKey");
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
    v5 = [AssociatedObject lastObject];
    if (v5)
    {
      v6 = v5;

      self->mHiddenColumns = *(v6 + 16);
      self->mHiddenRows = *(v6 + 8);
      [v4 removeLastObject];
    }

    if (![v4 count])
    {

      objc_setAssociatedObject(self, "TSTHiddenRowsColumnsCacheStackKey", 0, 0x301);
    }
  }
}

- (void)validate:(id)a3
{
  [(TSTHiddenDimensionCache *)self->mHiddenRows setCount:TSTMasterLayoutGetTableNumberOfRows(a3)];
  [(TSTHiddenDimensionCache *)self->mHiddenRows setMarkIndex:TSTMasterLayoutGetTableNumberOfHeaderRows(a3)];
  [(TSTHiddenDimensionCache *)self->mHiddenColumns setCount:TSTMasterLayoutGetTableNumberOfColumns(a3)];
  if (([a3 isDynamicallyHidingRowsCols] & 1) != 0 || objc_msgSend(objc_msgSend(a3, "tableModel"), "numberOfHiddenColumns"))
  {
    mHiddenColumns = self->mHiddenColumns;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__TSTHiddenRowsColumnsCache_validate___block_invoke;
    v8[3] = &unk_279D4A8F8;
    v8[4] = a3;
    [(TSTHiddenDimensionCache *)mHiddenColumns setAllInvalidValuesUsingBlock:v8];
  }

  else
  {
    [(TSTHiddenDimensionCache *)self->mHiddenColumns setAllValuesToZero];
  }

  if (([a3 isDynamicallyHidingRowsCols] & 1) != 0 || objc_msgSend(objc_msgSend(a3, "tableModel"), "numberOfHiddenRows"))
  {
    mHiddenRows = self->mHiddenRows;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__TSTHiddenRowsColumnsCache_validate___block_invoke_2;
    v7[3] = &unk_279D4A8F8;
    v7[4] = a3;
    [(TSTHiddenDimensionCache *)mHiddenRows setAllInvalidValuesUsingBlock:v7];
  }

  else
  {
    [(TSTHiddenDimensionCache *)self->mHiddenRows setAllValuesToZero];
  }
}

- (void)validateChangeDescriptors:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 changeDescriptor];
        v11 = [v9 cellRegion];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __55__TSTHiddenRowsColumnsCache_validateChangeDescriptors___block_invoke;
        v12[3] = &unk_279D4A560;
        v13 = v10;
        v12[4] = self;
        v12[5] = v9;
        [v11 enumerateCellRangesUsingBlock:v12];
      }

      v6 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

uint64_t __55__TSTHiddenRowsColumnsCache_validateChangeDescriptors___block_invoke(uint64_t result, unint64_t a2)
{
  v3 = *(result + 48);
  if (v3 > 20)
  {
    if (v3 <= 24)
    {
      if (v3 == 21)
      {
        v18 = *(*(result + 32) + 8);
        v19 = HIWORD(a2);
        v20 = a2;
LABEL_29:

        return [v18 deleteRange:{v20, v19}];
      }

      if (v3 == 22)
      {
        v15 = *(*(result + 32) + 8);
        v16 = HIWORD(a2);
        v17 = a2;
LABEL_24:

        return [v15 insertRange:{v17, v16}];
      }

      if (v3 != 23)
      {
        return result;
      }

LABEL_15:
      v4 = *(*(result + 32) + 8);
      v5 = [*(result + 40) cellID];
      v6 = a2;
      v7 = v4;
      v8 = HIWORD(a2);
LABEL_19:

      return [v7 moveRangeFrom:v6 toIndex:{v8, v5}];
    }

    if ((v3 - 25) >= 2)
    {
      return result;
    }

    v9 = *(*(result + 32) + 8);
    v10 = HIWORD(a2);
    v11 = a2;
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          if (v3 != 3)
          {
            return result;
          }

          goto LABEL_18;
        }

        v15 = *(*(result + 32) + 16);
        v17 = BYTE2(a2);
        v16 = WORD2(a2);
        goto LABEL_24;
      }

      v18 = *(*(result + 32) + 16);
      v20 = BYTE2(a2);
      v19 = WORD2(a2);
      goto LABEL_29;
    }

    if (v3 != 5)
    {
      if (v3 == 6)
      {
LABEL_18:
        v12 = *(*(result + 32) + 16);
        v13 = BYTE2(a2);
        v14 = WORD2(a2);
        v5 = ([*(result + 40) cellID] >> 16);
        v7 = v12;
        v6 = v13;
        v8 = v14;
        goto LABEL_19;
      }

      if (v3 != 7)
      {
        return result;
      }

      goto LABEL_15;
    }

    v9 = *(*(result + 32) + 16);
    v11 = BYTE2(a2);
    v10 = WORD2(a2);
  }

  return [v9 invalidate:{v11, v10}];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p hiddenColumns=%@ hiddenRows=%@>", NSStringFromClass(v4), self, -[TSTHiddenDimensionCache description](self->mHiddenColumns, "description"), -[TSTHiddenDimensionCache description](self->mHiddenRows, "description")];
}

@end