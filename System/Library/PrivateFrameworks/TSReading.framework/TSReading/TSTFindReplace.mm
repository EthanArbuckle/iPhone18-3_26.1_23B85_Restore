@interface TSTFindReplace
+ (void)searchInfo:(id)info forString:(id)string options:(unint64_t)options hitBlock:(id)block;
+ (void)searchLayout:(id)layout forAnnotationsWithHitBlock:(id)block;
+ (void)searchLayout:(id)layout forString:(id)string options:(unint64_t)options hitBlock:(id)block;
@end

@implementation TSTFindReplace

+ (void)searchInfo:(id)info forString:(id)string options:(unint64_t)options hitBlock:(id)block
{
  v11 = -[TSTCellIterator initWithTableModel:]([TSTCellIterator alloc], "initWithTableModel:", [info tableModel]);
  if ([(TSTCellIterator *)v11 getNext:v19])
  {
    do
    {
      if (!v21 || v21->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType != 267 && *(&v21->mPrivate + 1) << 8 != 2304)
      {
        v12 = NSStringFromNativeTSTCell(v21);
        if (v12)
        {
          v13 = v12;
          tsu_range = 0;
          v18 = 0;
          tsu_range = [(__CFString *)v12 tsu_range];
          v18 = v14;
          while (v18)
          {
            v15 = [(__CFString *)v13 rangeOfString:string searchOptions:options updatingSearchRange:&tsu_range];
            if (v15 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v6 = v6 & 0xFFFFFFFF00000000 | v20;
              (*(block + 2))(block, [TSTSearchReference searchReferenceWithTableInfo:info cellID:v6 range:v15, v16]);
            }
          }
        }
      }
    }

    while ([(TSTCellIterator *)v11 getNext:v19]);
  }
}

+ (void)searchLayout:(id)layout forString:(id)string options:(unint64_t)options hitBlock:(id)block
{
  tableInfo = [layout tableInfo];
  v11 = [[TSTLayoutCellIterator alloc] initWithLayout:layout range:TSTLayoutGetPartitionRange(layout) flags:337];
  while ([(TSTCellIterator *)v11 getNext:v22])
  {
    if (v24)
    {
      p_mCurrentCellFormat = &v24->mPrivate.mCellFormats.mCurrentCellFormat;
    }

    else
    {
      p_mCurrentCellFormat = &TSUInvalidFormat;
    }

    if (p_mCurrentCellFormat->mFormatType != 267)
    {
      v13 = NSStringFromNativeTSTCell(v24);
      if (v13)
      {
        v14 = v13;
        tsu_range = 0;
        v21 = 0;
        tsu_range = [(__CFString *)v13 tsu_range];
        v21 = v15;
        while (v21)
        {
          v16 = [(__CFString *)v14 rangeOfString:string searchOptions:options updatingSearchRange:&tsu_range];
          if (v16 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v6 = v6 & 0xFFFFFFFF00000000 | v23;
            v18 = [TSTSearchReference searchReferenceWithTableInfo:tableInfo cellID:v6 range:v16, v17];
            [layout calculatePointFromSearchReference:v18];
            [(TSTSearchReference *)v18 setSearchReferencePoint:?];
            (*(block + 2))(block, v18);
          }
        }
      }
    }
  }
}

+ (void)searchLayout:(id)layout forAnnotationsWithHitBlock:(id)block
{
  tableInfo = [layout tableInfo];

  [self p_searchInfo:tableInfo layout:layout forAnnotationsWithHitBlock:block];
}

@end