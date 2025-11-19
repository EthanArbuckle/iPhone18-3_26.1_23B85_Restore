@interface TSTFindReplace
+ (void)searchInfo:(id)a3 forString:(id)a4 options:(unint64_t)a5 hitBlock:(id)a6;
+ (void)searchLayout:(id)a3 forAnnotationsWithHitBlock:(id)a4;
+ (void)searchLayout:(id)a3 forString:(id)a4 options:(unint64_t)a5 hitBlock:(id)a6;
@end

@implementation TSTFindReplace

+ (void)searchInfo:(id)a3 forString:(id)a4 options:(unint64_t)a5 hitBlock:(id)a6
{
  v11 = -[TSTCellIterator initWithTableModel:]([TSTCellIterator alloc], "initWithTableModel:", [a3 tableModel]);
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
          v17 = 0;
          v18 = 0;
          v17 = [(__CFString *)v12 tsu_range];
          v18 = v14;
          while (v18)
          {
            v15 = [(__CFString *)v13 rangeOfString:a4 searchOptions:a5 updatingSearchRange:&v17];
            if (v15 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v6 = v6 & 0xFFFFFFFF00000000 | v20;
              (*(a6 + 2))(a6, [TSTSearchReference searchReferenceWithTableInfo:a3 cellID:v6 range:v15, v16]);
            }
          }
        }
      }
    }

    while ([(TSTCellIterator *)v11 getNext:v19]);
  }
}

+ (void)searchLayout:(id)a3 forString:(id)a4 options:(unint64_t)a5 hitBlock:(id)a6
{
  v19 = [a3 tableInfo];
  v11 = [[TSTLayoutCellIterator alloc] initWithLayout:a3 range:TSTLayoutGetPartitionRange(a3) flags:337];
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
        v20 = 0;
        v21 = 0;
        v20 = [(__CFString *)v13 tsu_range];
        v21 = v15;
        while (v21)
        {
          v16 = [(__CFString *)v14 rangeOfString:a4 searchOptions:a5 updatingSearchRange:&v20];
          if (v16 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v6 = v6 & 0xFFFFFFFF00000000 | v23;
            v18 = [TSTSearchReference searchReferenceWithTableInfo:v19 cellID:v6 range:v16, v17];
            [a3 calculatePointFromSearchReference:v18];
            [(TSTSearchReference *)v18 setSearchReferencePoint:?];
            (*(a6 + 2))(a6, v18);
          }
        }
      }
    }
  }
}

+ (void)searchLayout:(id)a3 forAnnotationsWithHitBlock:(id)a4
{
  v7 = [a3 tableInfo];

  [a1 p_searchInfo:v7 layout:a3 forAnnotationsWithHitBlock:a4];
}

@end