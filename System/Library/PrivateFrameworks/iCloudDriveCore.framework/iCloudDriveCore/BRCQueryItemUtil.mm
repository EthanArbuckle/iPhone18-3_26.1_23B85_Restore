@interface BRCQueryItemUtil
+ (id)sharedQueryItemUtil;
- (BRCQueryItemUtil)initWithMacOS:(BOOL)s;
- (int64_t)contentPolicyForItemInfo:(id)info sessionContext:(id)context;
- (int64_t)contentPolicyForRootContainerWithSessionContext:(id)context;
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

- (BRCQueryItemUtil)initWithMacOS:(BOOL)s
{
  v5.receiver = self;
  v5.super_class = BRCQueryItemUtil;
  result = [(BRCQueryItemUtil *)&v5 init];
  if (result)
  {
    result->_isMacOS = s;
  }

  return result;
}

uint64_t __39__BRCQueryItemUtil_sharedQueryItemUtil__block_invoke()
{
  sharedQueryItemUtil_obj = [[BRCQueryItemUtil alloc] initWithMacOS:0];

  return MEMORY[0x2821F96F8]();
}

- (int64_t)contentPolicyForItemInfo:(id)info sessionContext:(id)context
{
  infoCopy = info;
  contextCopy = context;
  v8 = [BRCUserDefaults defaultsForMangledID:0];
  LODWORD(self) = self->_isMacOS;
  isZoneRoot = [infoCopy isZoneRoot];
  if (self != 1)
  {
    if (!isZoneRoot || ![infoCopy isAppInstalled] || (objc_msgSend(infoCopy, "isWallet") & 1) == 0)
    {
      if (![v8 fpfsSpeculativeSetDownload] || !objc_msgSend(contextCopy, "isOptimizeStorage") || (!objc_msgSend(infoCopy, "isZoneRoot") || (objc_msgSend(infoCopy, "isCloudDocsAppLibrary") & 1) == 0) && (!objc_msgSend(infoCopy, "isAppInstalled") || (objc_msgSend(infoCopy, "isDocumentsFolder") & 1) == 0))
      {
        goto LABEL_29;
      }

      isOptimizeStorage = 502;
      goto LABEL_30;
    }

LABEL_32:
    isOptimizeStorage = 3;
    goto LABEL_30;
  }

  if (isZoneRoot && ([infoCopy isCloudDocsAppLibrary] & 1) == 0)
  {
    if (([infoCopy isWallet] & 1) == 0)
    {
      if (![infoCopy isAppInstalled] || objc_msgSend(infoCopy, "isContainerWithContentPolicyDownloadLazilyAndEvictOnRemoteUpdate") && (objc_msgSend(contextCopy, "isOptimizeStorage") & 1) != 0)
      {
        isOptimizeStorage = 2;
      }

      else
      {
        isOptimizeStorage = [contextCopy isOptimizeStorage];
      }

      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (([infoCopy isDocumentsFolder] & 1) == 0 && (!objc_msgSend(infoCopy, "isZoneRoot") || !objc_msgSend(infoCopy, "isCloudDocsAppLibrary")))
  {
    if ([v8 fpfsOptimizeStorageAndSpeculativeDownload] && objc_msgSend(infoCopy, "isAppInstalled") && (objc_msgSend(infoCopy, "isWallet") & 1) == 0 && (objc_msgSend(infoCopy, "isGreedyDocument") & 1) != 0)
    {
      isOptimizeStorage = 501;
      goto LABEL_30;
    }

LABEL_29:
    isOptimizeStorage = 0;
    goto LABEL_30;
  }

  if (([infoCopy isWallet] & 1) != 0 || !objc_msgSend(infoCopy, "isAppInstalled") || !objc_msgSend(infoCopy, "isDocumentScopePublic") || !objc_msgSend(contextCopy, "isOptimizeStorage"))
  {
    goto LABEL_29;
  }

  if ([v8 fpfsOptimizeStorageAndSpeculativeDownloadCandidate])
  {
    isOptimizeStorage = 1003;
  }

  else
  {
    isOptimizeStorage = 500;
  }

LABEL_30:

  return isOptimizeStorage;
}

- (int64_t)contentPolicyForRootContainerWithSessionContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (self->_isMacOS && ([contextCopy isOptimizeStorage] & 1) == 0)
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