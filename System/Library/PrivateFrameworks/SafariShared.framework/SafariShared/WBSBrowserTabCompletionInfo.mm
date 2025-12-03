@interface WBSBrowserTabCompletionInfo
- (WBSBrowserTabCompletionInfo)initWithUUID:(id)d windowUUID:(id)iD tabGroupUUID:(id)uID tabGroupTitle:(id)title tabIndex:(unint64_t)index url:(id)url title:(id)a9 pageStatus:(int64_t)self0;
@end

@implementation WBSBrowserTabCompletionInfo

- (WBSBrowserTabCompletionInfo)initWithUUID:(id)d windowUUID:(id)iD tabGroupUUID:(id)uID tabGroupTitle:(id)title tabIndex:(unint64_t)index url:(id)url title:(id)a9 pageStatus:(int64_t)self0
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  titleCopy = title;
  urlCopy = url;
  v19 = a9;
  v31.receiver = self;
  v31.super_class = WBSBrowserTabCompletionInfo;
  v20 = [(WBSBrowserTabCompletionInfo *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uuid, d);
    objc_storeStrong(&v21->_windowUUID, iD);
    objc_storeStrong(&v21->_tabGroupUUID, uID);
    v22 = [titleCopy copy];
    tabGroupTitle = v21->_tabGroupTitle;
    v21->_tabGroupTitle = v22;

    v21->_tabIndex = index;
    objc_storeStrong(&v21->_url, url);
    v24 = [v19 copy];
    title = v21->_title;
    v21->_title = v24;

    v21->_pageStatus = status;
    v26 = v21;
  }

  return v21;
}

@end