@interface TSTGroupByChangeDelayedNotification
- (TSKUIDStruct)rowUID;
- (TSTGroupByChangeDelayedNotification)initWithNotifyType:(int)type group:(id)group rowUid:(TSKUIDStruct)uid;
- (void)sendToDistributor:(id)distributor;
@end

@implementation TSTGroupByChangeDelayedNotification

- (TSTGroupByChangeDelayedNotification)initWithNotifyType:(int)type group:(id)group rowUid:(TSKUIDStruct)uid
{
  upper = uid._upper;
  lower = uid._lower;
  groupCopy = group;
  v14.receiver = self;
  v14.super_class = TSTGroupByChangeDelayedNotification;
  v11 = [(TSTGroupByChangeDelayedNotification *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_notifyType = type;
    objc_storeStrong(&v11->_groupNode, group);
    v12->_rowUID._lower = lower;
    v12->_rowUID._upper = upper;
  }

  return v12;
}

- (void)sendToDistributor:(id)distributor
{
  distributorCopy = distributor;
  notifyType = self->_notifyType;
  v10 = distributorCopy;
  if (notifyType > 4)
  {
    if (notifyType > 6)
    {
      if (notifyType == 7)
      {
        objc_msgSend_didRemoveRowUID_fromGroup_(distributorCopy, v5, self->_rowUID._lower, self->_rowUID._upper, self->_groupNode);
      }

      else if (notifyType == 8)
      {
        objc_msgSend_didChangeGroupByStructure(distributorCopy, v5, v6, v7, v8);
      }
    }

    else if (notifyType == 5)
    {
      objc_msgSend_didRemoveGroup_(distributorCopy, v5, self->_groupNode, v7, v8);
    }

    else
    {
      objc_msgSend_didAddRowUID_toGroup_(distributorCopy, v5, self->_rowUID._lower, self->_rowUID._upper, self->_groupNode);
    }
  }

  else if (notifyType > 2)
  {
    if (notifyType == 3)
    {
      objc_msgSend_didCreateGroup_(distributorCopy, v5, self->_groupNode, v7, v8);
    }

    else
    {
      objc_msgSend_willRemoveGroup_(distributorCopy, v5, self->_groupNode, v7, v8);
    }
  }

  else if (notifyType == 1)
  {
    objc_msgSend_startOfGroupingChangesBatch(distributorCopy, v5, v6, v7, v8);
  }

  else if (notifyType == 2)
  {
    objc_msgSend_endOfGroupingChangesBatch(distributorCopy, v5, v6, v7, v8);
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