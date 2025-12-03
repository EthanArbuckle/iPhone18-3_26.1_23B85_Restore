@interface TSTUidCoordsPerGroupValueTuple
- (TSKUIDStructCoord)uuidCoordForGroupTuple:(SEL)tuple runningLevel:(id)level;
- (TSTUidCoordsPerGroupValueTuple)init;
- (void)addUidCoord:(const TSKUIDStructCoord *)coord tupleForCoord:(id)forCoord atRunningLevel:(unsigned __int8)level;
@end

@implementation TSTUidCoordsPerGroupValueTuple

- (TSTUidCoordsPerGroupValueTuple)init
{
  v6.receiver = self;
  v6.super_class = TSTUidCoordsPerGroupValueTuple;
  v2 = [(TSTUidCoordsPerGroupValueTuple *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uidCoordsPerTuple = v2->_uidCoordsPerTuple;
    v2->_uidCoordsPerTuple = v3;
  }

  return v2;
}

- (void)addUidCoord:(const TSKUIDStructCoord *)coord tupleForCoord:(id)forCoord atRunningLevel:(unsigned __int8)level
{
  levelCopy = level;
  forCoordCopy = forCoord;
  if (forCoordCopy)
  {
    v16 = forCoordCopy;
    v13 = objc_msgSend_objectForKey_(self->_uidCoordsPerTuple, forCoordCopy, forCoordCopy, v9, v10);
    if (!v13)
    {
      v13 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_uidCoordsPerTuple, v14, v13, v16, v15);
    }

    objc_msgSend_addUidCoord_atRunningLevel_(v13, v11, coord, levelCopy, v12);

    forCoordCopy = v16;
  }
}

- (TSKUIDStructCoord)uuidCoordForGroupTuple:(SEL)tuple runningLevel:(id)level
{
  v5 = a5;
  levelCopy = level;
  retstr->_column = 0u;
  retstr->_row = 0u;
  TSKMakeInvalidUIDStructCoord();
  if (levelCopy)
  {
    v12 = objc_msgSend_objectForKey_(self->_uidCoordsPerTuple, v9, levelCopy, v10, v11);
    v16 = v12;
    if (v12)
    {
      objc_msgSend_uuidCoordAtRunningLevel_(v12, v13, v5, v14, v15);
      retstr->_column = v18;
      retstr->_row = v19;
    }
  }

  return result;
}

@end