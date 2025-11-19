@interface TSTGroupByChangeDelayedNotification
- (TSKUIDStruct)rowUID;
- (TSTGroupByChangeDelayedNotification)initWithNotifyType:(int)a3 group:(id)a4 rowUid:(TSKUIDStruct)a5;
- (void)sendToDistributor:(id)a3;
@end

@implementation TSTGroupByChangeDelayedNotification

- (TSTGroupByChangeDelayedNotification)initWithNotifyType:(int)a3 group:(id)a4 rowUid:(TSKUIDStruct)a5
{
  upper = a5._upper;
  lower = a5._lower;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TSTGroupByChangeDelayedNotification;
  v11 = [(TSTGroupByChangeDelayedNotification *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_notifyType = a3;
    objc_storeStrong(&v11->_groupNode, a4);
    v12->_rowUID._lower = lower;
    v12->_rowUID._upper = upper;
  }

  return v12;
}

- (void)sendToDistributor:(id)a3
{
  v4 = a3;
  notifyType = self->_notifyType;
  v10 = v4;
  if (notifyType > 4)
  {
    if (notifyType > 6)
    {
      if (notifyType == 7)
      {
        objc_msgSend_didRemoveRowUID_fromGroup_(v4, v5, self->_rowUID._lower, self->_rowUID._upper, self->_groupNode);
      }

      else if (notifyType == 8)
      {
        objc_msgSend_didChangeGroupByStructure(v4, v5, v6, v7, v8);
      }
    }

    else if (notifyType == 5)
    {
      objc_msgSend_didRemoveGroup_(v4, v5, self->_groupNode, v7, v8);
    }

    else
    {
      objc_msgSend_didAddRowUID_toGroup_(v4, v5, self->_rowUID._lower, self->_rowUID._upper, self->_groupNode);
    }
  }

  else if (notifyType > 2)
  {
    if (notifyType == 3)
    {
      objc_msgSend_didCreateGroup_(v4, v5, self->_groupNode, v7, v8);
    }

    else
    {
      objc_msgSend_willRemoveGroup_(v4, v5, self->_groupNode, v7, v8);
    }
  }

  else if (notifyType == 1)
  {
    objc_msgSend_startOfGroupingChangesBatch(v4, v5, v6, v7, v8);
  }

  else if (notifyType == 2)
  {
    objc_msgSend_endOfGroupingChangesBatch(v4, v5, v6, v7, v8);
  }
}

- (TSKUIDStruct)rowUID
{
  upper = self->_rowUID._upper;
  lower = self->_rowUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end