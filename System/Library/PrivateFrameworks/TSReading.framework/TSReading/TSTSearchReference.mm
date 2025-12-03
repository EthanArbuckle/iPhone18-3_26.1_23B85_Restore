@interface TSTSearchReference
+ (TSTSearchReference)searchReferenceWithTableInfo:(id)info cellID:(id)d range:(_NSRange)range;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReplaceable;
- (CGPoint)searchReferencePoint;
- (NSString)description;
- (TSTSearchReference)initWithTableInfo:(id)info cellID:(id)d range:(_NSRange)range;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)searchReferenceEnd;
- (id)searchReferenceForReplacingWithString:(id)string options:(unint64_t)options authorCreatedWithCommand:(id *)command;
- (id)searchReferenceStart;
- (id)selection;
- (void)dealloc;
@end

@implementation TSTSearchReference

+ (TSTSearchReference)searchReferenceWithTableInfo:(id)info cellID:(id)d range:(_NSRange)range
{
  v5 = [[TSTSearchReference alloc] initWithTableInfo:info cellID:*&d range:range.location, range.length];

  return v5;
}

- (TSTSearchReference)initWithTableInfo:(id)info cellID:(id)d range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v11.receiver = self;
  v11.super_class = TSTSearchReference;
  v9 = [(TSTSearchReference *)&v11 init];
  if (v9)
  {
    v9->_tableInfo = info;
    v9->_cellID = d;
    v9->_range.location = location;
    v9->_range.length = length;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTSearchReference;
  [(TSTSearchReference *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  model = [(TSTSearchReference *)self model];
  model2 = [equal model];
  location = self->_range.location;
  length = self->_range.length;
  range = [equal range];
  v11 = v10;
  cellID = self->_cellID;
  return (([equal cellID] ^ *&cellID) & 0xFFFFFF) == 0 && model == model2 && location == range && length == v11;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  cellID = [(TSTSearchReference *)self cellID];
  return [v3 stringWithFormat:@"TSTSearchReference %p cellID %@ range %@", self, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%hu, %hu)", BYTE2(cellID), cellID), NSStringFromRange(self->_range)];
}

- (id)selection
{
  v3 = [[TSTTableSelection alloc] initWithTableModel:[(TSTTableInfo *)self->_tableInfo tableModel] andCellID:*&self->_cellID];
  [(TSTTableSelection *)v3 setSearchReferenceRange:self->_range.location, self->_range.length];
  return v3;
}

- (BOOL)isReplaceable
{
  tableInfo = self->_tableInfo;
  if (!tableInfo)
  {
LABEL_6:
    v4 = objc_alloc_init(TSTCell);
    if (TSTCellAtCellID([(TSTTableInfo *)self->_tableInfo tableModel], *&self->_cellID, v4) || !self->_range.length)
    {
      goto LABEL_7;
    }

    p_mCurrentCellFormat = &TSUInvalidFormat;
    if (v4)
    {
      p_mCurrentCellFormat = &v4->mPrivate.mCellFormats.mCurrentCellFormat;
    }

    if (v4->mPrivate.mCellFormats.mCurrentCellFormatID)
    {
      v8 = v4->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType == 266;
    }

    else
    {
      v8 = 0;
    }

    LOBYTE(v5) = 0;
    if (v8 || p_mCurrentCellFormat->mFormatType == 267)
    {
      goto LABEL_8;
    }

    mPrivate = v4->mPrivate;
    if (BYTE1(mPrivate) > 9u)
    {
LABEL_7:
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = 0x2ECu >> (BYTE1(mPrivate) & 0xF);
    }

LABEL_8:

    return v5 & 1;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(TSDDrawableInfo *)tableInfo isLocked])
    {
      break;
    }

    tableInfo = [(TSDDrawableInfo *)tableInfo parentInfo];
    if (!tableInfo)
    {
      goto LABEL_6;
    }
  }

  LOBYTE(v5) = 0;
  return v5 & 1;
}

- (id)searchReferenceForReplacingWithString:(id)string options:(unint64_t)options authorCreatedWithCommand:(id *)command
{
  tableInfo = self->_tableInfo;
  cellID = self->_cellID;
  v8 = [(TSTSearchReference *)self range:string];
  v9 = [string length];

  return [TSTSearchReference searchReferenceWithTableInfo:tableInfo cellID:cellID range:v8, v9];
}

- (id)searchReferenceStart
{
  tableInfo = self->_tableInfo;
  cellID = self->_cellID;
  range = [(TSTSearchReference *)self range];

  return [TSTSearchReference searchReferenceWithTableInfo:tableInfo cellID:cellID range:range, 0];
}

- (id)searchReferenceEnd
{
  tableInfo = self->_tableInfo;
  cellID = self->_cellID;
  range = [(TSTSearchReference *)self range];

  return [TSTSearchReference searchReferenceWithTableInfo:tableInfo cellID:cellID range:range + v5, 0];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TSTSearchReference alloc] initWithTableInfo:self->_tableInfo cellID:*&self->_cellID range:self->_range.location, self->_range.length];
  [(TSTSearchReference *)self searchReferencePoint];
  [(TSTSearchReference *)v4 setSearchReferencePoint:?];
  return v4;
}

- (CGPoint)searchReferencePoint
{
  x = self->searchReferencePoint.x;
  y = self->searchReferencePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end