@interface TSTUidCoordsForLevelAndType
- (TSKUIDStructCoord)uuidCoordAtRunningLevel:(SEL)a3;
- (id).cxx_construct;
- (void)addUidCoord:(const TSKUIDStructCoord *)a3 atRunningLevel:(unsigned __int8)a4;
@end

@implementation TSTUidCoordsForLevelAndType

- (void)addUidCoord:(const TSKUIDStructCoord *)a3 atRunningLevel:(unsigned __int8)a4
{
  v7 = a4;
  if (a4 != 255)
  {
    v8 = &v7;
    v5 = sub_2213008C8(&self->_uidCoordsPerRunLevel.__table_.__bucket_list_.__ptr_, &v7);
    column = a3->_column;
    *(v5 + 5) = a3->_row;
    *(v5 + 3) = column;
  }
}

- (TSKUIDStructCoord)uuidCoordAtRunningLevel:(SEL)a3
{
  v8 = a4;
  retstr->_column = 0u;
  retstr->_row = 0u;
  TSKMakeInvalidUIDStructCoord();
  result = sub_22122DECC(&self->_uidCoordsPerRunLevel.__table_.__bucket_list_.__ptr_, &v8);
  if (result)
  {
    v7 = *&result[1]._column._upper;
    retstr->_column = *&result->_row._upper;
    retstr->_row = v7;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end