@interface BRCQueryItemInfo
+ (id)queryItemInfoForAppLibraryDocumentsFolder:(id)folder;
+ (id)queryItemInfoForAppLibraryRoot:(id)root;
+ (id)queryItemInfoForItem:(id)item;
@end

@implementation BRCQueryItemInfo

+ (id)queryItemInfoForItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(BRCQueryItemInfo);
  v4->_isZoneRoot = [itemCopy isZoneRoot];
  appLibrary = [itemCopy appLibrary];
  v4->_isAppInstalled = [appLibrary isAppInstalled];

  if ([itemCopy isDocument])
  {
    asDocument = [itemCopy asDocument];
    v4->_isGreedyDocument = [asDocument shouldBeGreedy];
  }

  else
  {
    v4->_isGreedyDocument = 0;
  }

  appLibrary2 = [itemCopy appLibrary];
  v4->_isCloudDocsAppLibrary = [appLibrary2 isCloudDocsAppLibrary];

  itemID = [itemCopy itemID];
  v4->_isDocumentsFolder = [itemID isDocumentsFolder];

  appLibrary3 = [itemCopy appLibrary];
  v4->_isDocumentScopePublic = [appLibrary3 isDocumentScopePublic];

  appLibrary4 = [itemCopy appLibrary];
  appLibraryID = [appLibrary4 appLibraryID];
  v4->_isWallet = [appLibraryID isEqualToString:*MEMORY[0x277CFACE0]];

  v12 = [BRCUserDefaults defaultsForMangledID:0];
  containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate = [v12 containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate];
  appLibrary5 = [itemCopy appLibrary];
  appLibraryID2 = [appLibrary5 appLibraryID];
  v4->_isContainerWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate = [containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate indexOfObject:appLibraryID2] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)queryItemInfoForAppLibraryRoot:(id)root
{
  rootCopy = root;
  v4 = objc_alloc_init(BRCQueryItemInfo);
  v4->_isZoneRoot = 1;
  v4->_isAppInstalled = [rootCopy isAppInstalled];
  v4->_isCloudDocsAppLibrary = [rootCopy isCloudDocsAppLibrary];
  v4->_isDocumentsFolder = 0;
  v4->_isDocumentScopePublic = [rootCopy isDocumentScopePublic];
  appLibraryID = [rootCopy appLibraryID];
  v4->_isWallet = [appLibraryID isEqualToString:*MEMORY[0x277CFACE0]];

  v6 = [BRCUserDefaults defaultsForMangledID:0];
  containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate = [v6 containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate];
  appLibraryID2 = [rootCopy appLibraryID];

  v4->_isContainerWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate = [containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate indexOfObject:appLibraryID2] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)queryItemInfoForAppLibraryDocumentsFolder:(id)folder
{
  folderCopy = folder;
  v4 = objc_alloc_init(BRCQueryItemInfo);
  v4->_isZoneRoot = 0;
  v4->_isAppInstalled = [folderCopy isAppInstalled];
  v4->_isCloudDocsAppLibrary = [folderCopy isCloudDocsAppLibrary];
  v4->_isDocumentsFolder = 1;
  v4->_isDocumentScopePublic = [folderCopy isDocumentScopePublic];
  appLibraryID = [folderCopy appLibraryID];
  v4->_isWallet = [appLibraryID isEqualToString:*MEMORY[0x277CFACE0]];

  v6 = [BRCUserDefaults defaultsForMangledID:0];
  containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate = [v6 containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate];
  appLibraryID2 = [folderCopy appLibraryID];

  v4->_isContainerWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate = [containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate indexOfObject:appLibraryID2] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

@end