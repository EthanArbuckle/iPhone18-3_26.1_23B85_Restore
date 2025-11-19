@interface TSCEWrappedRangeRef
+ (id)invalidRangeRef;
- (BOOL)isEqual:(id)a3;
- (NSUUID)tableID;
- (TSCERangeCoordinate)rangeCoord;
- (TSCERangeRef)rangeRef;
- (TSCEWrappedRangeRef)init;
- (TSCEWrappedRangeRef)initWithRangeCoord:(TSCERangeCoordinate)a3 tableID:(id)a4;
- (TSCEWrappedRangeRef)initWithRangeCoord:(TSCERangeCoordinate)a3 tableUID:(TSKUIDStruct)a4;
- (TSCEWrappedRangeRef)initWithRangeRef:(const TSCERangeRef *)a3;
- (TSCEWrappedRangeRef)initWithRangeRefRect:(TSUCellRect)a3 tableID:(id)a4;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSCEWrappedRangeRef

+ (id)invalidRangeRef
{
  v2 = objc_opt_new();

  return v2;
}

- (TSCEWrappedRangeRef)initWithRangeRef:(const TSCERangeRef *)a3
{
  v6.receiver = self;
  v6.super_class = TSCEWrappedRangeRef;
  result = [(TSCEWrappedRangeRef *)&v6 init];
  if (result)
  {
    range = a3->range;
    result->_rangeRef._tableUID = a3->_tableUID;
    result->_rangeRef.range = range;
  }

  return result;
}

- (TSCEWrappedRangeRef)init
{
  v5 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v6 = 0;
  v7 = 0;
  return objc_msgSend_initWithRangeRef_(self, a2, &v5, v2, v3);
}

- (TSCEWrappedRangeRef)initWithRangeCoord:(TSCERangeCoordinate)a3 tableUID:(TSKUIDStruct)a4
{
  v5[0] = a3;
  v5[1] = a4;
  return objc_msgSend_initWithRangeRef_(self, a2, v5, *&a3._bottomRight, a4._lower);
}

- (TSCEWrappedRangeRef)initWithRangeCoord:(TSCERangeCoordinate)a3 tableID:(id)a4
{
  bottomRight = a3._bottomRight;
  topLeft = a3._topLeft;
  v7 = a4;
  v13[0] = topLeft;
  v13[1] = bottomRight;
  v13[2] = TSKMakeUIDStructFromNSUUID();
  v13[3] = v8;
  v11 = objc_msgSend_initWithRangeRef_(self, v8, v13, v9, v10);

  return v11;
}

- (TSCEWrappedRangeRef)initWithRangeRefRect:(TSUCellRect)a3 tableID:(id)a4
{
  size = a3.size;
  origin = a3.origin;
  v7 = a4;
  v16[2] = TSKMakeUIDStructFromNSUUID();
  v16[3] = v8;
  v9 = origin;
  v10 = size;
  v16[0] = __C(v9, v10);
  v16[1] = v11;
  v14 = objc_msgSend_initWithRangeRef_(self, v11, v16, v12, v13);

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return objc_msgSend_initWithRangeRef_(v4, v5, &self->_rangeRef, v6, v7);
}

- (TSKUIDStruct)tableUID
{
  upper = self->_rangeRef._tableUID._upper;
  lower = self->_rangeRef._tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (NSUUID)tableID
{
  lower = self->_rangeRef._tableUID._lower;
  p_tableUID = &self->_rangeRef._tableUID;
  if (lower || self->_rangeRef._tableUID._upper)
  {
    v6 = TSKUIDStruct::NSUUIDValue(p_tableUID);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TSCERangeCoordinate)rangeCoord
{
  bottomRight = self->_rangeRef.range._bottomRight;
  topLeft = self->_rangeRef.range._topLeft;
  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    objc_msgSend_rangeRef(v4, v5, v6, v7, v8);
    v10 = TSCERangeRef::operator==(&self->_rangeRef.range._topLeft, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TSCERangeRef)rangeRef
{
  v3 = *&self->_tableUID._upper;
  retstr->range = *&self->range._bottomRight.row;
  retstr->_tableUID = v3;
  return self;
}

- (id).cxx_construct
{
  *(self + 8) = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end