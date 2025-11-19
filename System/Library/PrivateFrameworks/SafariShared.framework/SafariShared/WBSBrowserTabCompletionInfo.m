@interface WBSBrowserTabCompletionInfo
- (WBSBrowserTabCompletionInfo)initWithUUID:(id)a3 windowUUID:(id)a4 tabGroupUUID:(id)a5 tabGroupTitle:(id)a6 tabIndex:(unint64_t)a7 url:(id)a8 title:(id)a9 pageStatus:(int64_t)a10;
@end

@implementation WBSBrowserTabCompletionInfo

- (WBSBrowserTabCompletionInfo)initWithUUID:(id)a3 windowUUID:(id)a4 tabGroupUUID:(id)a5 tabGroupTitle:(id)a6 tabIndex:(unint64_t)a7 url:(id)a8 title:(id)a9 pageStatus:(int64_t)a10
{
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v31.receiver = self;
  v31.super_class = WBSBrowserTabCompletionInfo;
  v20 = [(WBSBrowserTabCompletionInfo *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uuid, a3);
    objc_storeStrong(&v21->_windowUUID, a4);
    objc_storeStrong(&v21->_tabGroupUUID, a5);
    v22 = [v17 copy];
    tabGroupTitle = v21->_tabGroupTitle;
    v21->_tabGroupTitle = v22;

    v21->_tabIndex = a7;
    objc_storeStrong(&v21->_url, a8);
    v24 = [v19 copy];
    title = v21->_title;
    v21->_title = v24;

    v21->_pageStatus = a10;
    v26 = v21;
  }

  return v21;
}

@end