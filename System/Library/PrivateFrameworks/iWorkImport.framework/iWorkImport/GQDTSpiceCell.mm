@interface GQDTSpiceCell
- (GQDTSpiceCell)initWithStyle:(id)style rowIndex:(unsigned __int16)index columnIndex:(unsigned __int16)columnIndex rowSpan:(unsigned __int16)span columnSpan:(unsigned __int16)columnSpan storage:(id)storage;
@end

@implementation GQDTSpiceCell

- (GQDTSpiceCell)initWithStyle:(id)style rowIndex:(unsigned __int16)index columnIndex:(unsigned __int16)columnIndex rowSpan:(unsigned __int16)span columnSpan:(unsigned __int16)columnSpan storage:(id)storage
{
  v16.receiver = self;
  v16.super_class = GQDTSpiceCell;
  v14 = [(GQDTSpiceCell *)&v16 init];
  if (v14)
  {
    v14->super.super.mStyle = style;
    v14->super.super.mRowIndex = index;
    v14->super.super.mColumnIndex = columnIndex;
    v14->super.super.mRowSpan = span;
    v14->super.super.mColumnSpan = columnSpan;
    v14->super.mLayoutStorage = storage;
  }

  return v14;
}

@end