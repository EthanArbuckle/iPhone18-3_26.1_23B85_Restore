@interface BRCQueryItemUtil
+ (id)sharedQueryItemUtil;
- (BRCQueryItemUtil)initWithMacOS:(BOOL)a3;
- (int64_t)contentPolicyForItemInfo:(id)a3 sessionContext:(id)a4;
- (int64_t)contentPolicyForRootContainerWithSessionContext:(id)a3;
@end

@implementation BRCQueryItemUtil

+ (id)sharedQueryItemUtil
{
  if (sharedQueryItemUtil_onceToken != -1)
  {
    +[BRCQueryItemUtil sharedQueryItemUtil];
  }

  v3 = sharedQueryItemUtil_obj;

  return v3;
}

- (BRCQueryItemUtil)initWithMacOS:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BRCQueryItemUtil;
  result = [(BRCQueryItemUtil *)&v5 init];
  if (result)
  {
    result->_isMacOS = a3;
  }

  return result;
}

uint64_t __39__BRCQueryItemUtil_sharedQueryItemUtil__block_invoke()
{
  sharedQueryItemUtil_obj = [[BRCQueryItemUtil alloc] initWithMacOS:0];

  return MEMORY[0x2821F96F8]();
}

- (int64_t)contentPolicyForItemInfo:(id)a3 sessionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [BRCUserDefaults defaultsForMangledID:0];
  LODWORD(self) = self->_isMacOS;
  v9 = [v6 isZoneRoot];
  if (self != 1)
  {
    if (!v9 || ![v6 isAppInstalled] || (objc_msgSend(v6, "isWallet") & 1) == 0)
    {
      if (![v8 fpfsSpeculativeSetDownload] || !objc_msgSend(v7, "isOptimizeStorage") || (!objc_msgSend(v6, "isZoneRoot") || (objc_msgSend(v6, "isCloudDocsAppLibrary") & 1) == 0) && (!objc_msgSend(v6, "isAppInstalled") || (objc_msgSend(v6, "isDocumentsFolder") & 1) == 0))
      {
        goto LABEL_29;
      }

      v10 = 502;
      goto LABEL_30;
    }

LABEL_32:
    v10 = 3;
    goto LABEL_30;
  }

  if (v9 && ([v6 isCloudDocsAppLibrary] & 1) == 0)
  {
    if (([v6 isWallet] & 1) == 0)
    {
      if (![v6 isAppInstalled] || objc_msgSend(v6, "isContainerWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate") && (objc_msgSend(v7, "isOptimizeStorage") & 1) != 0)
      {
        v10 = 2;
      }

      else
      {
        v10 = [v7 isOptimizeStorage];
      }

      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (([v6 isDocumentsFolder] & 1) == 0 && (!objc_msgSend(v6, "isZoneRoot") || !objc_msgSend(v6, "isCloudDocsAppLibrary")))
  {
    if ([v8 fpfsOptimizeStorageAndSpeculativeDownload] && objc_msgSend(v6, "isAppInstalled") && (objc_msgSend(v6, "isWallet") & 1) == 0 && (objc_msgSend(v6, "isGreedyDocument") & 1) != 0)
    {
      v10 = 501;
      goto LABEL_30;
    }

LABEL_29:
    v10 = 0;
    goto LABEL_30;
  }

  if (([v6 isWallet] & 1) != 0 || !objc_msgSend(v6, "isAppInstalled") || !objc_msgSend(v6, "isDocumentScopePublic") || !objc_msgSend(v7, "isOptimizeStorage"))
  {
    goto LABEL_29;
  }

  if ([v8 fpfsOptimizeStorageAndSpeculativeDownloadCandidate])
  {
    v10 = 1003;
  }

  else
  {
    v10 = 500;
  }

LABEL_30:

  return v10;
}

- (int64_t)contentPolicyForRootContainerWithSessionContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isMacOS && ([v4 isOptimizeStorage] & 1) == 0)
  {
    if ([v5 isDataSeparated])
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end