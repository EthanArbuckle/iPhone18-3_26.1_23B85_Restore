@interface BRCQueryItemInfo
+ (id)queryItemInfoForAppLibraryDocumentsFolder:(id)a3;
+ (id)queryItemInfoForAppLibraryRoot:(id)a3;
+ (id)queryItemInfoForItem:(id)a3;
@end

@implementation BRCQueryItemInfo

+ (id)queryItemInfoForItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BRCQueryItemInfo);
  v4->_isZoneRoot = [v3 isZoneRoot];
  v5 = [v3 appLibrary];
  v4->_isAppInstalled = [v5 isAppInstalled];

  if ([v3 isDocument])
  {
    v6 = [v3 asDocument];
    v4->_isGreedyDocument = [v6 shouldBeGreedy];
  }

  else
  {
    v4->_isGreedyDocument = 0;
  }

  v7 = [v3 appLibrary];
  v4->_isCloudDocsAppLibrary = [v7 isCloudDocsAppLibrary];

  v8 = [v3 itemID];
  v4->_isDocumentsFolder = [v8 isDocumentsFolder];

  v9 = [v3 appLibrary];
  v4->_isDocumentScopePublic = [v9 isDocumentScopePublic];

  v10 = [v3 appLibrary];
  v11 = [v10 appLibraryID];
  v4->_isWallet = [v11 isEqualToString:*MEMORY[0x277CFACE0]];

  v12 = [BRCUserDefaults defaultsForMangledID:0];
  v13 = [v12 containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate];
  v14 = [v3 appLibrary];
  v15 = [v14 appLibraryID];
  v4->_isContainerWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate = [v13 indexOfObject:v15] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)queryItemInfoForAppLibraryRoot:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BRCQueryItemInfo);
  v4->_isZoneRoot = 1;
  v4->_isAppInstalled = [v3 isAppInstalled];
  v4->_isCloudDocsAppLibrary = [v3 isCloudDocsAppLibrary];
  v4->_isDocumentsFolder = 0;
  v4->_isDocumentScopePublic = [v3 isDocumentScopePublic];
  v5 = [v3 appLibraryID];
  v4->_isWallet = [v5 isEqualToString:*MEMORY[0x277CFACE0]];

  v6 = [BRCUserDefaults defaultsForMangledID:0];
  v7 = [v6 containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate];
  v8 = [v3 appLibraryID];

  v4->_isContainerWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate = [v7 indexOfObject:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)queryItemInfoForAppLibraryDocumentsFolder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BRCQueryItemInfo);
  v4->_isZoneRoot = 0;
  v4->_isAppInstalled = [v3 isAppInstalled];
  v4->_isCloudDocsAppLibrary = [v3 isCloudDocsAppLibrary];
  v4->_isDocumentsFolder = 1;
  v4->_isDocumentScopePublic = [v3 isDocumentScopePublic];
  v5 = [v3 appLibraryID];
  v4->_isWallet = [v5 isEqualToString:*MEMORY[0x277CFACE0]];

  v6 = [BRCUserDefaults defaultsForMangledID:0];
  v7 = [v6 containersWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate];
  v8 = [v3 appLibraryID];

  v4->_isContainerWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate = [v7 indexOfObject:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

@end