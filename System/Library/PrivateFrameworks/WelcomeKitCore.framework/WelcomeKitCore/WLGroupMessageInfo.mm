@interface WLGroupMessageInfo
+ (id)groupMessageInfoWithSourceThreadID:(id)d sortedHandleIDs:(id)ds handleIDsAreComplete:(BOOL)complete roomName:(id)name groupID:(id)iD;
@end

@implementation WLGroupMessageInfo

+ (id)groupMessageInfoWithSourceThreadID:(id)d sortedHandleIDs:(id)ds handleIDsAreComplete:(BOOL)complete roomName:(id)name groupID:(id)iD
{
  dCopy = d;
  dsCopy = ds;
  nameCopy = name;
  iDCopy = iD;
  v15 = objc_alloc_init(WLGroupMessageInfo);
  sourceThreadID = v15->_sourceThreadID;
  v15->_sourceThreadID = dCopy;
  v17 = dCopy;

  sortedHandleIDs = v15->_sortedHandleIDs;
  v15->_sortedHandleIDs = dsCopy;
  v19 = dsCopy;

  v15->_handleIDsAreComplete = complete;
  roomName = v15->_roomName;
  v15->_roomName = nameCopy;
  v21 = nameCopy;

  groupID = v15->_groupID;
  v15->_groupID = iDCopy;

  return v15;
}

@end