@interface TSTUidCoordsForLevelAndType
- (TSKUIDStructCoord)uuidCoordAtRunningLevel:(SEL)level;
- (id).cxx_construct;
- (void)addUidCoord:(const TSKUIDStructCoord *)coord atRunningLevel:(unsigned __int8)level;
@end

@implementation TSTUidCoordsForLevelAndType

- (void)addUidCoord:(const TSKUIDStructCoord *)coord atRunningLevel:(unsigned __int8)level
{
  levelCopy = level;
  if (level != 255)
  {
    v8 = &levelCopy;
    v5 = sub_2213008C8(&self->_uidCoordsPerRunLevel.__table_.__bucket_list_.__ptr_, &levelCopy);
    column = coord->_column;
    *(v5 + 5) = coord->_row;
    *(v5 + 3) = column;
  }
}

- (TSKUIDStructCoord)uuidCoordAtRunningLevel:(SEL)level
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