@interface TSTFilteredTableDynamicContentDelegate
- (BOOL)cell:(id *)cell forCellID:(id)d;
- (TSTFilteredTableDynamicContentDelegate)initWithTableModel:(id)model;
- (void)dealloc;
@end

@implementation TSTFilteredTableDynamicContentDelegate

- (TSTFilteredTableDynamicContentDelegate)initWithTableModel:(id)model
{
  v6.receiver = self;
  v6.super_class = TSTFilteredTableDynamicContentDelegate;
  v4 = [(TSTFilteredTableDynamicContentDelegate *)&v6 init];
  if (v4)
  {
    v4->mTableModel = model;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTFilteredTableDynamicContentDelegate;
  [(TSTFilteredTableDynamicContentDelegate *)&v3 dealloc];
}

- (BOOL)cell:(id *)cell forCellID:(id)d
{
  v6 = objc_alloc_init(TSTCell);
  *cell = v6;
  v7 = [TSTBundle() localizedStringForKey:@"No rows match the filter conditions." value:&stru_287D36338 table:@"TSTables"];
  if (!v6 || (mPrivate = v6->mPrivate, (mPrivate & 0xFF00) == 0))
  {
    TSTCellClearValue(v6);
    *(&v6->mPrivate + 1) = 3;
    mPrivate = v6->mPrivate;
  }

  if ((mPrivate & 0xFF00) == 0x300)
  {
    mString = v6->mPrivate.mValue.mString.mString;
    if (mString != v7)
    {

      v6->mPrivate.mValue.mString.mString = v7;
      v10 = HIWORD(*&v6->mPrivate);
      v11 = -[NSString rangeOfCharacterFromSet:](v7, "rangeOfCharacterFromSet:", [MEMORY[0x277CCA900] newlineCharacterSet]);
      v12 = v10 | 1;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v10 & 0xFFFE;
      }

      *(&v6->mPrivate + 1) = v12;
      v6->mPrivate.mValue.mString.mID = 0;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetStringValueClearingID(TSTCell *, NSString *, BOOL)"}];
    [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1003, @"can't set string on non-string cell: %p", v6}];
  }

  v15 = *cell;
  headerRowCellStyle = [(TSTTableModel *)self->mTableModel headerRowCellStyle];
  v17 = v15[5];
  if (v17 != headerRowCellStyle)
  {
    v18 = headerRowCellStyle;

    v15[5] = v18;
    *(v15 + 8) = 0;
  }

  v19 = *cell;
  headerRowTextStyle = [(TSTTableModel *)self->mTableModel headerRowTextStyle];
  v21 = v19[7];
  if (v21 != headerRowTextStyle)
  {
    v22 = headerRowTextStyle;

    v19[7] = v22;
    *(v19 + 12) = 0;
  }

  return 1;
}

@end