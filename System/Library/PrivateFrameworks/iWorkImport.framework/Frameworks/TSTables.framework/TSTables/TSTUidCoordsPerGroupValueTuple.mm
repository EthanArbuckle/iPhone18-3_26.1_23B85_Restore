@interface TSTUidCoordsPerGroupValueTuple
- (TSKUIDStructCoord)uuidCoordForGroupTuple:(SEL)a3 runningLevel:(id)a4;
- (TSTUidCoordsPerGroupValueTuple)init;
- (void)addUidCoord:(const TSKUIDStructCoord *)a3 tupleForCoord:(id)a4 atRunningLevel:(unsigned __int8)a5;
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

- (void)addUidCoord:(const TSKUIDStructCoord *)a3 tupleForCoord:(id)a4 atRunningLevel:(unsigned __int8)a5
{
  v5 = a5;
  v8 = a4;
  if (v8)
  {
    v16 = v8;
    v13 = objc_msgSend_objectForKey_(self->_uidCoordsPerTuple, v8, v8, v9, v10);
    if (!v13)
    {
      v13 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_uidCoordsPerTuple, v14, v13, v16, v15);
    }

    objc_msgSend_addUidCoord_atRunningLevel_(v13, v11, a3, v5, v12);

    v8 = v16;
  }
}

- (TSKUIDStructCoord)uuidCoordForGroupTuple:(SEL)a3 runningLevel:(id)a4
{
  v5 = a5;
  v8 = a4;
  retstr->_column = 0u;
  retstr->_row = 0u;
  TSKMakeInvalidUIDStructCoord();
  if (v8)
  {
    v12 = objc_msgSend_objectForKey_(self->_uidCoordsPerTuple, v9, v8, v10, v11);
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