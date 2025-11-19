@interface GQDTSpiceCell
- (GQDTSpiceCell)initWithStyle:(id)a3 rowIndex:(unsigned __int16)a4 columnIndex:(unsigned __int16)a5 rowSpan:(unsigned __int16)a6 columnSpan:(unsigned __int16)a7 storage:(id)a8;
@end

@implementation GQDTSpiceCell

- (GQDTSpiceCell)initWithStyle:(id)a3 rowIndex:(unsigned __int16)a4 columnIndex:(unsigned __int16)a5 rowSpan:(unsigned __int16)a6 columnSpan:(unsigned __int16)a7 storage:(id)a8
{
  v16.receiver = self;
  v16.super_class = GQDTSpiceCell;
  v14 = [(GQDTSpiceCell *)&v16 init];
  if (v14)
  {
    v14->super.super.mStyle = a3;
    v14->super.super.mRowIndex = a4;
    v14->super.super.mColumnIndex = a5;
    v14->super.super.mRowSpan = a6;
    v14->super.super.mColumnSpan = a7;
    v14->super.mLayoutStorage = a8;
  }

  return v14;
}

@end