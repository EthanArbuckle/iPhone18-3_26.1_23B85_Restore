@interface WLGroupMessageInfo
+ (id)groupMessageInfoWithSourceThreadID:(id)a3 sortedHandleIDs:(id)a4 handleIDsAreComplete:(BOOL)a5 roomName:(id)a6 groupID:(id)a7;
@end

@implementation WLGroupMessageInfo

+ (id)groupMessageInfoWithSourceThreadID:(id)a3 sortedHandleIDs:(id)a4 handleIDsAreComplete:(BOOL)a5 roomName:(id)a6 groupID:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(WLGroupMessageInfo);
  sourceThreadID = v15->_sourceThreadID;
  v15->_sourceThreadID = v11;
  v17 = v11;

  sortedHandleIDs = v15->_sortedHandleIDs;
  v15->_sortedHandleIDs = v12;
  v19 = v12;

  v15->_handleIDsAreComplete = a5;
  roomName = v15->_roomName;
  v15->_roomName = v13;
  v21 = v13;

  groupID = v15->_groupID;
  v15->_groupID = v14;

  return v15;
}

@end