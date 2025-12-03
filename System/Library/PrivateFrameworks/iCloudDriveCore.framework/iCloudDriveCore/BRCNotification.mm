@interface BRCNotification
+ (id)notificationFromItem:(id)item;
+ (id)notificationGatheredFromItem:(id)item;
- (BOOL)canMerge:(id)merge;
- (BOOL)isDocumentsFolder;
- (BRCNotification)initWithLocalItem:(id)item itemDiffs:(unint64_t)diffs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initRootContainerNotificationWithSessionContext:(id)context;
- (id)notificationByStrippingSharingInfoIfNeeded;
- (id)subclassDescription;
- (void)_populateExtendedAttributesForItem:(id)item;
- (void)generateLogicalExtension:(id)extension physicalExtension:(id)physicalExtension;
- (void)markAsLoserVersionWithEtag:(id)etag modificationDate:(id)date editorNameComponents:(id)components lastEditorDeviceName:(id)name size:(id)size;
- (void)merge:(id)merge;
- (void)setNumberAttribute:(id)attribute forKey:(id)key;
@end

@implementation BRCNotification

id __38__BRCNotification_subclassDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BRFieldContentSignature alloc] initWithData:v2];

  v4 = [(BRFieldContentSignature(BRAdditions) *)v3 description];

  return v4;
}

- (id)subclassDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  if (self->_itemGlobalID)
  {
    [v3 appendFormat:@" i:%@", self->_itemGlobalID];
  }

  if (self->_parentGlobalID)
  {
    [v4 appendFormat:@" parent-id:%@", self->_parentGlobalID];
  }

  v5 = *MEMORY[0x277CFAFE0];
  if (*(&self->super.super.isa + v5))
  {
    v6 = [[BRFieldStructureSignature alloc] initWithData:*(&self->super.super.isa + v5)];
    [v4 appendFormat:@" %@", v6];
  }

  v7 = *MEMORY[0x277CFAF50];
  if (*(&self->super.super.isa + v7))
  {
    v8 = [[BRFieldContentSignature alloc] initWithData:*(&self->super.super.isa + v7)];
    [v4 appendFormat:@" %@", v8];
  }

  v9 = *(&self->super.super.isa + *MEMORY[0x277CFAF60]);
  if (v9)
  {
    v10 = [v9 br_transform:&__block_literal_global_5];
    v11 = [v10 componentsJoinedByString:{@", "}];
    [v4 appendFormat:@" eqVersions:{%@}", v11];
  }

  if (self->_isInDataScope)
  {
    [v4 appendFormat:@" sc:data"];
  }

  if (self->_isInDocumentScope)
  {
    [v4 appendFormat:@" sc:docs"];
  }

  if (self->_isInTrashScope)
  {
    [v4 appendFormat:@" sc:trash"];
  }

  v12 = *(&self->super.super.isa + *MEMORY[0x277CFAFA8]);
  if (v12 && ([v12 isEqualToFileObjectID:self->_oldParentFileObjectID] & 1) == 0)
  {
    [v4 appendFormat:@" old-pino:%@", self->_oldParentFileObjectID];
  }

  if (self->_aliasSourceAppLibraryID)
  {
    [v4 appendFormat:@" alias-container:%@", self->_aliasSourceAppLibraryID];
  }

  if (self->_oldAppLibraryID)
  {
    [v4 appendFormat:@" old-ct:%@", self->_oldAppLibraryID];
  }

  return v4;
}

- (BOOL)isDocumentsFolder
{
  itemGlobalID = [(BRCNotification *)self itemGlobalID];
  itemID = [itemGlobalID itemID];
  isDocumentsFolder = [itemID isDocumentsFolder];

  return isDocumentsFolder;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = BRCNotification;
  v4 = [(BRCNotification *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 40, self->_itemGlobalID);
    objc_storeStrong(v5 + 37, self->_oldParentFileObjectID);
    objc_storeStrong(v5 + 41, self->_parentGlobalIDs);
    objc_storeStrong(v5 + 35, self->_appLibrary);
    objc_storeStrong(v5 + 36, self->_parentGlobalID);
    objc_storeStrong(v5 + 38, self->_aliasSourceAppLibraryID);
  }

  return v5;
}

- (void)_populateExtendedAttributesForItem:(id)item
{
  itemCopy = item;
  v5 = *MEMORY[0x277CFAFF0];
  v6 = *(&self->super.super.isa + v5);
  if (v6)
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  clientZone = [itemCopy clientZone];
  if ([clientZone isSharedZone])
  {
    isSharedToMeTopLevelItem = [itemCopy isSharedToMeTopLevelItem];

    if (!isSharedToMeTopLevelItem)
    {
      goto LABEL_8;
    }

    clientZone = [itemCopy bookmarkData];
    v11 = [clientZone dataUsingEncoding:4];
    [v8 setObject:v11 forKeyedSubscript:@"com.apple.clouddocs.private.share-bookmark#B"];
  }

LABEL_8:
  parentItemIdentifier = [(BRCNotification *)self parentItemIdentifier];
  v13 = [parentItemIdentifier isEqualToString:*MEMORY[0x277CC6358]];

  if (v13)
  {
    v51 = v5;
    serverZone = [itemCopy serverZone];
    dbRowID = [serverZone dbRowID];
    zoneRowID = [(BRCItemGlobalID *)self->_parentGlobalID zoneRowID];
    v17 = [dbRowID isEqualToNumber:zoneRowID];

    if ((v17 & 1) == 0)
    {
      [BRCNotification _populateExtendedAttributesForItem:];
    }

    itemID = [(BRCItemGlobalID *)self->_parentGlobalID itemID];
    itemIDString = [itemID itemIDString];
    serverZone2 = [itemCopy serverZone];
    v21 = [BRCLocalItem bookmarkDataWithItemResolutionString:itemIDString serverZone:serverZone2];

    v22 = [v21 dataUsingEncoding:4];
    [v8 setObject:v22 forKeyedSubscript:@"com.apple.clouddocs.private.trash-parent-bookmark#B"];

    clientZone2 = [itemCopy clientZone];
    v24 = [itemCopy st];
    trashPutBackParentID = [v24 trashPutBackParentID];
    [itemCopy dbFacade];
    v27 = v26 = v8;
    v28 = [clientZone2 itemByItemID:trashPutBackParentID dbFacade:v27];
    asDirectory = [v28 asDirectory];

    v8 = v26;
    if (asDirectory)
    {
      fileObjectID = [asDirectory fileObjectID];
      asString = [fileObjectID asString];
      v32 = [asString dataUsingEncoding:4];
      [v26 setObject:v32 forKeyedSubscript:@"com.apple.fileprovider.trash-put-back#PN"];
    }

    v5 = v51;
  }

  if ([itemCopy isDocument])
  {
    v33 = [BRCUserDefaults defaultsForMangledID:0];
    session = [itemCopy session];
    accountFacade = [session accountFacade];
    v36 = [v33 saveLocalContentVersionIdentifierOnDiskWithAccountFacade:accountFacade];

    if (v36)
    {
      v52 = v8;
      asDocument = [itemCopy asDocument];
      currentVersion = [asDocument currentVersion];
      ckInfo = [currentVersion ckInfo];
      etag = [ckInfo etag];
      currentVersion2 = [asDocument currentVersion];
      localChangeCount = [currentVersion2 localChangeCount];
      v43 = etag;
      v44 = v43;
      v45 = &stru_2837504F0;
      if (v43)
      {
        v45 = v43;
      }

      v46 = v45;
      v47 = v46;
      if (localChangeCount)
      {
        v48 = [(__CFString *)v46 stringByAppendingFormat:@"%llu", localChangeCount];;

        v47 = v48;
      }

      v49 = [v47 dataUsingEncoding:4];
      v8 = v52;
      [v52 setObject:v49 forKeyedSubscript:@"com.apple.clouddocs.local.fpfs.ct.version.identifier#CB"];
    }
  }

  v50 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v8;
}

- (BRCNotification)initWithLocalItem:(id)item itemDiffs:(unint64_t)diffs
{
  v264 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy isBRAlias])
  {
    [BRCNotification initWithLocalItem:itemDiffs:];
  }

  v252.receiver = self;
  v252.super_class = BRCNotification;
  v8 = [(BRCNotification *)&v252 init];

  if (v8)
  {
    orig = [itemCopy orig];
    if ([itemCopy isZoneRoot])
    {
      v10 = 0;
    }

    else
    {
      v10 = [itemCopy st];
    }

    session = [itemCopy session];
    isOnDisk = [itemCopy isOnDisk];
    *(&v8->super.super.isa + *MEMORY[0x277CFAF90]) = -1;
    *(&v8->super.super.isa + *MEMORY[0x277CFAFC0]) = -1;
    appLibrary = [itemCopy appLibrary];
    appLibrary = v8->_appLibrary;
    v8->_appLibrary = appLibrary;

    appLibraryID = [(BRCAppLibrary *)v8->_appLibrary appLibraryID];
    v15 = *MEMORY[0x277CFAF18];
    v16 = *(&v8->super.super.isa + v15);
    *(&v8->super.super.isa + v15) = appLibraryID;

    itemGlobalID = [itemCopy itemGlobalID];
    itemGlobalID = v8->_itemGlobalID;
    v8->_itemGlobalID = itemGlobalID;

    itemParentGlobalID = [itemCopy itemParentGlobalID];
    parentGlobalID = v8->_parentGlobalID;
    v8->_parentGlobalID = itemParentGlobalID;

    if (v10)
    {
      [v10 logicalName];
    }

    else
    {
      mangledID = [(BRCAppLibrary *)v8->_appLibrary mangledID];
      [mangledID mangledIDString];
    }
    v21 = ;
    v22 = v10;
    v23 = *MEMORY[0x277CFAF98];
    objc_storeStrong((&v8->super.super.isa + v23), v21);
    v244 = v22;
    if (!v22)
    {

      v21 = mangledID;
    }

    if (!*(&v8->super.super.isa + v23))
    {
      [BRCNotification initWithLocalItem:itemDiffs:];
    }

    v8->_isInDocumentScope = [itemCopy isInDocumentScope];
    v8->_isInDataScope = [itemCopy isInDataScope];
    v8->_isInTrashScope = [itemCopy isInTrashScope];
    parentClientZone = [itemCopy parentClientZone];
    dbRowID = [parentClientZone dbRowID];
    v26 = *MEMORY[0x277CFAFB8];
    v27 = *(&v8->super.super.isa + v26);
    *(&v8->super.super.isa + v26) = dbRowID;

    clientZone = [itemCopy clientZone];
    dbRowID2 = [clientZone dbRowID];
    v30 = *MEMORY[0x277CFAFF8];
    v31 = *(&v8->super.super.isa + v30);
    *(&v8->super.super.isa + v30) = dbRowID2;

    if (([orig isFSRoot] & 1) == 0)
    {
      parentFileObjectID = [orig parentFileObjectID];
      oldParentFileObjectID = v8->_oldParentFileObjectID;
      v8->_oldParentFileObjectID = parentFileObjectID;
    }

    appLibrary2 = [orig appLibrary];
    v35 = v8->_appLibrary;
    v36 = appLibrary2;
    v37 = v35;
    v38 = v37;
    if (v36 == v37)
    {

      p_isa = &v36->super.isa;
      v39 = v244;
    }

    else
    {
      v39 = v244;
      if (v37)
      {
        v40 = [(BRCAppLibrary *)v36 isEqual:v37];

        if (v40)
        {
LABEL_24:
          v242 = v36;
          fromReadOnlyDB = [itemCopy fromReadOnlyDB];
          v44 = (v8 + *MEMORY[0x277CFAF78]);
          if (fromReadOnlyDB)
          {
            v45 = 0x100000;
          }

          else
          {
            v45 = 0;
          }

          v46 = *v44 & 0xFFEFFFCF | v45;
          v245 = (v8 + *MEMORY[0x277CFAF78]);
          v246 = v8;
          if (isOnDisk)
          {
            *v44 = v46;
            fileObjectID = [itemCopy fileObjectID];
            v48 = *MEMORY[0x277CFAF70];
            v49 = *(&v8->super.super.isa + v48);
            *(&v8->super.super.isa + v48) = fileObjectID;

            if (([itemCopy isFSRoot] & 1) == 0)
            {
              parentFileObjectID2 = [itemCopy parentFileObjectID];
              v51 = *MEMORY[0x277CFAFA8];
              v52 = *(&v8->super.super.isa + v51);
              *(&v8->super.super.isa + v51) = parentFileObjectID2;

              if (([itemCopy sharingOptions] & 0x48) != 0)
              {
                if (([itemCopy sharingOptions] & 4) == 0)
                {
                  v53 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:itemCopy];
                  v54 = v53;
                  if (v53)
                  {
                    brc_shareItemID = [v53 brc_shareItemID];
                    clientZone2 = [itemCopy clientZone];
                    dbFacade = [itemCopy dbFacade];
                    v58 = [clientZone2 itemByItemID:brc_shareItemID dbFacade:dbFacade];

                    if (!v58)
                    {
                      [BRCNotification initWithLocalItem:itemDiffs:];
                    }

                    fileObjectID2 = [v58 fileObjectID];
                    v60 = *MEMORY[0x277CFAFD0];
                    v61 = *(&v246->super.super.isa + v60);
                    *(&v246->super.super.isa + v60) = fileObjectID2;

                    v8 = v246;
                    v39 = v244;
                    v44 = v245;
                  }

                  goto LABEL_39;
                }

                fileObjectID3 = [itemCopy fileObjectID];
                v65 = MEMORY[0x277CFAFD0];
LABEL_38:
                v66 = *v65;
                v54 = *(&v8->super.super.isa + v66);
                *(&v8->super.super.isa + v66) = fileObjectID3;
LABEL_39:
              }
            }
          }

          else
          {
            *v44 = v46 | 0x10;
            fileObjectID4 = [orig fileObjectID];
            v48 = *MEMORY[0x277CFAF70];
            v63 = *(&v8->super.super.isa + v48);
            *(&v8->super.super.isa + v48) = fileObjectID4;

            if (([orig isFSRoot] & 1) == 0)
            {
              fileObjectID3 = [orig parentFileObjectID];
              v65 = MEMORY[0x277CFAFA8];
              goto LABEL_38;
            }
          }

          if (([itemCopy isDocument] & 1) == 0 && objc_msgSend(*(&v8->super.super.isa + v48), "type") == 2)
          {
            [BRCNotification initWithLocalItem:itemDiffs:];
          }

          finderTags = [v39 finderTags];

          if (finderTags)
          {
            v68 = [BRFieldFinderTags alloc];
            finderTags2 = [v39 finderTags];
            v70 = [(BRFieldFinderTags *)v68 initWithData:finderTags2];

            if (![(BRFieldFinderTags *)v70 tagsCount])
            {
              [BRCNotification initWithLocalItem:itemDiffs:];
            }

            tags = [(BRFieldFinderTags *)v70 tags];
            [(BRCNotification *)v8 setAttribute:tags forKey:*MEMORY[0x277CFB060]];
          }

          if (v39)
          {
            v72 = ([v39 mode] & 7) << 17;
          }

          else
          {
            v72 = 0x20000;
          }

          v240 = orig;
          diffsCopy = diffs;
          *v44 = *v44 & 0xFFF1FFFF | v72;
          if ([itemCopy isDirectory])
          {
            *v44 |= 0x40000u;
          }

          v73 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v39, "birthtime")}];
          v74 = *MEMORY[0x277CFAF28];
          v75 = *(&v8->super.super.isa + v74);
          *(&v8->super.super.isa + v74) = v73;

          if ([itemCopy isInTrashScope])
          {
            parentItemOnFS = [itemCopy parentItemOnFS];
            if ([parentItemOnFS isAppLibraryTrashFolder])
            {
              v77 = 0x10000;
            }

            else
            {
              v77 = 0;
            }

            *v44 = *v44 & 0xFFFEFFFF | v77;
          }

          else
          {
            *v44 &= ~0x10000u;
          }

          lastUsedTime = [v39 lastUsedTime];
          if (lastUsedTime)
          {
            v79 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v39, "lastUsedTime")}];
          }

          else
          {
            v79 = 0;
          }

          objc_storeStrong((&v8->super.super.isa + *MEMORY[0x277CFAF88]), v79);
          if (lastUsedTime)
          {
          }

          favoriteRank = [v39 favoriteRank];
          if (favoriteRank)
          {
            v81 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v39, "favoriteRank")}];
          }

          else
          {
            v81 = 0;
          }

          objc_storeStrong((&v8->super.super.isa + *MEMORY[0x277CFAF68]), v81);
          if (favoriteRank)
          {
          }

          extendedAttributes = [itemCopy extendedAttributes];
          v83 = *MEMORY[0x277CFAFF0];
          v84 = *(&v8->super.super.isa + v83);
          *(&v8->super.super.isa + v83) = extendedAttributes;

          creatorRowID = [v39 creatorRowID];
          integerValue = [creatorRowID integerValue];

          if (integerValue)
          {
            v87 = MEMORY[0x277CCAC00];
            creatorRowID2 = [v39 creatorRowID];
            dbFacade2 = [itemCopy dbFacade];
            v90 = [v87 nameComponentsForKey:creatorRowID2 dbFacade:dbFacade2];

            [(BRCNotification *)v8 setAttribute:v90 forKey:*MEMORY[0x277CFB040]];
          }

          else
          {
            [(BRCNotification *)v8 setAttribute:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB038]];
          }

          v91 = v245;
          *v245 = *v245 & 0xFFFFFFF3 | (4 * ([itemCopy uploadStatus] & 3));
          clientZone3 = [itemCopy clientZone];
          isSharedZone = [clientZone3 isSharedZone];

          v94 = [itemCopy sharingOptions] & 0x48;
          if (isSharedZone)
          {
            if (!v94 && ([itemCopy isDead] & 1) == 0)
            {
              v95 = brc_bread_crumbs();
              v96 = brc_default_log();
              if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
              {
                digestDescription = [itemCopy digestDescription];
                appLibrary3 = [itemCopy appLibrary];
                sharingOptions = [itemCopy sharingOptions];
                [itemCopy sharingOptions];
                v100 = BRCPrettyPrintBitmap();
                *buf = 138413314;
                v255 = digestDescription;
                v256 = 2112;
                v257 = appLibrary3;
                v258 = 2048;
                v259 = sharingOptions;
                v260 = 2112;
                v261 = v100;
                v262 = 2112;
                v263 = v95;
                _os_log_impl(&dword_223E7A000, v96, OS_LOG_TYPE_DEFAULT, "[WARNING] item %@ in shared zone %@ should have share-options set (actual:%lu %@)%@", buf, 0x34u);
              }

              v91 = v245;
            }

            if (([itemCopy isShareAcceptationFault] & 1) == 0)
            {
              sharingOptions2 = [itemCopy sharingOptions];
              if (((([itemCopy sharingOptions] >> 3) ^ (sharingOptions2 >> 6)) & 1) == 0 && (objc_msgSend(itemCopy, "isDead") & 1) == 0)
              {
                v102 = brc_bread_crumbs();
                v103 = brc_default_log();
                if (os_log_type_enabled(v103, 0x90u))
                {
                  [BRCNotification initWithLocalItem:itemDiffs:];
                }

                v91 = v245;
              }
            }

            if (([itemCopy sharingOptions] & 0x20) == 0)
            {
              v104 = 0x2000;
LABEL_92:
              *v91 = *v91 & 0xFFFFC7FF | v104;
              v107 = MEMORY[0x277CCAC00];
              ownerKey = [itemCopy ownerKey];
              dbFacade3 = [itemCopy dbFacade];
              v110 = [v107 nameComponentsForKey:ownerKey dbFacade:dbFacade3];

              [(BRCNotification *)v246 setAttribute:v110 forKey:*MEMORY[0x277CFB050]];
              goto LABEL_93;
            }

            if ([itemCopy isKnownByServer])
            {
              v104 = 6144;
              goto LABEL_92;
            }
          }

          else
          {
            sharingOptions3 = [itemCopy sharingOptions];
            if (!v94)
            {
              if (sharingOptions3)
              {
                sharingOptions4 = [itemCopy sharingOptions];
                v236 = *v245 & 0xFFFFC7FF;
                isDocument = 0;
                v112 = 0;
                if ((sharingOptions4 & 2) != 0)
                {
                  v132 = v236 | 0x800;
                }

                else
                {
                  v132 = v236 | 0x1000;
                }
              }

              else
              {
                isDocument = 0;
                v112 = 0;
                v132 = *v245 & 0xFFFFC7FF;
              }

              *v245 = v132;
              goto LABEL_94;
            }

            if ((sharingOptions3 & 0x10) != 0)
            {
              v106 = 2048;
            }

            else
            {
              v106 = 4096;
            }

            *v245 = *v245 & 0xFFFFC7FF | v106;
          }

LABEL_93:
          isDocument = [itemCopy isDocument];
          v112 = 1;
LABEL_94:
          v243 = itemCopy;
          if ([itemCopy isShared] && (objc_msgSend(itemCopy, "sharingOptions") & 4) != 0)
          {
            collaborationIdentifierIfComputable = [itemCopy collaborationIdentifierIfComputable];
            v113 = 1;
          }

          else
          {
            v113 = 0;
            collaborationIdentifierIfComputable = 0;
          }

          objc_storeStrong((&v246->super.super.isa + *MEMORY[0x277CFAF38]), collaborationIdentifierIfComputable);
          if (v113)
          {
          }

          itemCopy = v243;
          if (v112)
          {
            *v245 = (*v245 & 0xFFDFFFFF | ((([v243 sharingOptions] >> 2) & 1) << 21)) ^ 0x200000;
          }

          if (isDocument)
          {
            asDocument = [v243 asDocument];
            currentVersion = [asDocument currentVersion];
            lastEditorRowID = [currentVersion lastEditorRowID];

            if ([lastEditorRowID br_isEqualToNumber:&unk_2837AFFE0])
            {
              [(BRCNotification *)v246 setAttribute:0 forKey:*MEMORY[0x277CFB048]];
            }

            else
            {
              v118 = MEMORY[0x277CCAC00];
              currentVersion2 = [asDocument currentVersion];
              lastEditorRowID2 = [currentVersion2 lastEditorRowID];
              dbFacade4 = [asDocument dbFacade];
              v122 = [v118 nameComponentsForKey:lastEditorRowID2 dbFacade:dbFacade4];

              [(BRCNotification *)v246 setAttribute:v122 forKey:*MEMORY[0x277CFB048]];
            }
          }

          if ([v243 isInTrashScope])
          {
            v123 = [v243 st];
            logicalName = [v123 logicalName];
            if ([logicalName length])
            {
              v125 = [v243 st];
              logicalName2 = [v125 logicalName];
              *v245 = *v245 & 0xFBFFFFFF | (([logicalName2 characterAtIndex:0] == 46) << 26);
            }

            else
            {
              *v245 &= ~0x4000000u;
            }

            v128 = v245;
            v131 = v246;
LABEL_123:
            if ([v243 isDocument])
            {
              asDocument2 = [v243 asDocument];
              currentVersion3 = [asDocument2 currentVersion];
              v135 = [v243 st];
              if ([v135 isHiddenExt])
              {
                v136 = 0x4000;
              }

              else
              {
                v136 = 0;
              }

              *v128 = *v128 & 0xFFFFBFFF | v136;

              if (currentVersion3)
              {
                editedSinceShared = [currentVersion3 editedSinceShared];
                if ([editedSinceShared BOOLValue])
                {
                  v138 = 0x1000000;
                }

                else
                {
                  v138 = 0;
                }

                *v128 = *v128 & 0xFEFFFFFF | v138;

                v139 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(currentVersion3, "size")}];
                v140 = *MEMORY[0x277CFAFD8];
                v141 = *(&v131->super.super.isa + v140);
                *(&v131->super.super.isa + v140) = v139;

                v142 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(currentVersion3, "mtime")}];
                v143 = *MEMORY[0x277CFAFA0];
                v144 = *(&v131->super.super.isa + v143);
                *(&v131->super.super.isa + v143) = v142;
              }

              v238 = asDocument2;
              if ([v243 isFinderBookmark])
              {
                v145 = 3;
              }

              else if ([currentVersion3 isPackage])
              {
                v145 = 2;
              }

              else
              {
                v145 = 1;
              }

              v128[5] = v145;
              v176 = objc_alloc(MEMORY[0x277CBEB18]);
              conflictLoserEtags = [currentVersion3 conflictLoserEtags];
              v247 = [v176 initWithCapacity:{objc_msgSend(conflictLoserEtags, "count")}];

              resolvedConflictLoserEtags = [asDocument2 resolvedConflictLoserEtags];
              v248 = 0u;
              v249 = 0u;
              v250 = 0u;
              v251 = 0u;
              v237 = currentVersion3;
              conflictLoserEtags2 = [currentVersion3 conflictLoserEtags];
              v180 = [conflictLoserEtags2 countByEnumeratingWithState:&v248 objects:v253 count:16];
              if (v180)
              {
                v181 = v180;
                v182 = *v249;
                do
                {
                  for (i = 0; i != v181; ++i)
                  {
                    if (*v249 != v182)
                    {
                      objc_enumerationMutation(conflictLoserEtags2);
                    }

                    v184 = *(*(&v248 + 1) + 8 * i);
                    if (([resolvedConflictLoserEtags containsObject:v184] & 1) == 0)
                    {
                      v185 = [[BRFieldContentSignature alloc] initWithLoserEtag:v184];
                      v186 = objc_alloc(MEMORY[0x277CC64A0]);
                      data = [(BRFieldContentSignature *)v185 data];
                      data2 = [MEMORY[0x277CBEA90] data];
                      v189 = [v186 initWithContentVersion:data metadataVersion:data2];
                      [v247 addObject:v189];
                    }
                  }

                  v181 = [conflictLoserEtags2 countByEnumeratingWithState:&v248 objects:v253 count:16];
                }

                while (v181);
              }

              v190 = *MEMORY[0x277CFAF40];
              v131 = v246;
              objc_storeStrong((&v246->super.super.isa + v190), v247);
              *v245 = *v245 & 0xFFFFFFBF | (([*(&v246->super.super.isa + v190) count] != 0) << 6);
              itemCopy = v243;
              if ([v243 isDocument] && (*v245 & 0x40) != 0 && objc_msgSend(v243, "isIWorkItem"))
              {
                asDocument3 = [v243 asDocument];
                currentVersion4 = [asDocument3 currentVersion];
                dbFacade5 = [v243 dbFacade];
                v194 = [currentVersion4 lastEditorDeviceDisplayNameWithDBFacade:dbFacade5];
                v195 = *MEMORY[0x277CFAF80];
                v196 = *(&v246->super.super.isa + v195);
                *(&v246->super.super.isa + v195) = v194;
              }

              v174 = v240;
              v173 = diffsCopy;
              v175 = session;
              if (([v238 isDead] & 1) == 0)
              {
                fsUploader = [session fsUploader];
                if ([fsUploader isUploadingItem:v238])
                {
                  v198 = 256;
                }

                else
                {
                  v198 = 0;
                }

                *v245 = *v245 & 0xFFFFFEFF | v198;
              }

              *v245 = *v245 & 0xFFFFFFFC | [v238 downloadStatus] & 3;
              uploadError = [v238 uploadError];
              brc_wrappedError = [uploadError brc_wrappedError];

              v165 = v238;
              if ([v238 isEvictable])
              {
                v200 = 0x10000000;
              }

              else
              {
                v200 = 0;
              }

              *v245 = *v245 & 0xEFFFFFFF | v200;

              v128 = v245;
            }

            else
            {
              if ([v243 isDirectory])
              {
                syncUpError = [v243 syncUpError];
                brc_wrappedError = [syncUpError brc_wrappedError];

                asDirectory = [v243 asDirectory];
                v128[5] = 0;
                v149 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(asDirectory, "mtime")}];
                v150 = *MEMORY[0x277CFAFA0];
                v151 = *(&v131->super.super.isa + v150);
                *(&v131->super.super.isa + v150) = v149;

                if ([asDirectory isSharedByMeOrContainsSharedByMeItem])
                {
                  v152 = 0x800000;
                }

                else
                {
                  v152 = 0;
                }

                *v128 = *v128 & 0xFF7FFFFF | v152;
                if ([asDirectory isSharedToMeOrContainsSharedToMeItem])
                {
                  v153 = 0x400000;
                }

                else
                {
                  v153 = 0;
                }

                *v128 = *v128 & 0xFFBFFFFF | v153;
                if ([asDirectory isAppLibraryTrashFolder])
                {
                  v154 = 0x40000000;
                }

                else
                {
                  v154 = 0;
                }

                *v128 = *v128 & 0xBFFFFFFF | v154;
                itemID = [v243 itemID];
                if ([itemID isNonDesktopRoot])
                {
                  v156 = 0x80000000;
                }

                else
                {
                  v156 = 0;
                }

                *v128 = v156 & 0x80000000 | *v128 & 0x7FFFFFFF;

                itemID2 = [v243 itemID];
                v128[4] = v128[4] & 0xFE | [itemID2 isDocumentsFolder];

                if ([asDirectory isDirectoryFault])
                {
                  serverQuotaUsage = [asDirectory serverQuotaUsage];
                  v159 = *MEMORY[0x277CFAFD8];
                  v160 = *(&v131->super.super.isa + v159);
                  *(&v131->super.super.isa + v159) = serverQuotaUsage;
                }

                asDirectory2 = [v243 asDirectory];
                childItemCount = [asDirectory2 childItemCount];
                v163 = *MEMORY[0x277CFAF30];
                v164 = *(&v131->super.super.isa + v163);
                *(&v131->super.super.isa + v163) = childItemCount;

                v165 = asDirectory;
                *v128 |= 3u;
              }

              else
              {
                if (![v243 isSymLink])
                {
                  brc_wrappedError = 0;
                  v174 = v240;
                  v173 = diffsCopy;
                  v175 = session;
LABEL_179:
                  parentID = [v244 parentID];
                  isNonDesktopRoot = [parentID isNonDesktopRoot];

                  if (isNonDesktopRoot)
                  {
                    *v128 |= 0x8000000u;
                  }

                  if (brc_wrappedError)
                  {
                    br_fileProviderError = [brc_wrappedError br_fileProviderError];

                    [(BRFieldStructureSignature *)v131 setAttribute:br_fileProviderError forKey:*MEMORY[0x277CFB068]];
                  }

                  if ((v173 & 0x100000000) != 0)
                  {
                    orig2 = [itemCopy orig];
                    isLost = [orig2 isLost];

                    if (isLost)
                    {
                      *(&v131->super.super.isa + *MEMORY[0x277CFAF58]) |= 0x4000u;
                    }
                  }

                  if ([itemCopy isDocument])
                  {
                    v206 = [BRFieldContentSignature alloc];
                    asDocument4 = [itemCopy asDocument];
                    currentVersion5 = [asDocument4 currentVersion];
                    v209 = [(BRFieldContentSignature *)v206 initWithLocalVersion:currentVersion5];

                    data3 = [(BRFieldContentSignature *)v209 data];
                    v211 = *MEMORY[0x277CFAF50];
                    v212 = *(&v131->super.super.isa + v211);
                    *(&v131->super.super.isa + v211) = data3;

                    equivalentVersions = [(BRFieldContentSignature *)v209 equivalentVersions];
                    v214 = *MEMORY[0x277CFAF60];
                    v215 = *(&v131->super.super.isa + v214);
                    *(&v131->super.super.isa + v214) = equivalentVersions;
                  }

                  else
                  {
                    v216 = objc_opt_new();
                    v217 = *MEMORY[0x277CFAF50];
                    v209 = *(&v131->super.super.isa + v217);
                    *(&v131->super.super.isa + v217) = v216;
                  }

                  v218 = v242;

                  isZoneRoot = [itemCopy isZoneRoot];
                  if (isZoneRoot)
                  {
                    data4 = 0;
                  }

                  else
                  {
                    v221 = [BRFieldStructureSignature alloc];
                    v128 = [itemCopy st];
                    v131 = [(BRFieldStructureSignature *)v221 initWithLocalStatInfo:v128];
                    data4 = [(BRFieldStructureSignature *)v131 data];
                  }

                  objc_storeStrong((&v246->super.super.isa + *MEMORY[0x277CFAFE0]), data4);
                  if ((isZoneRoot & 1) == 0)
                  {
                  }

                  v222 = +[BRCQueryItemUtil sharedQueryItemUtil];
                  v223 = [BRCQueryItemInfo queryItemInfoForItem:itemCopy];
                  v224 = [v222 contentPolicyForItemInfo:v223 sessionContext:v175];
                  v8 = v246;
                  *(&v246->super.super.isa + *MEMORY[0x277CFAF48]) = v224;

                  [(BRCNotification *)v246 _populateExtendedAttributesForItem:itemCopy];
                  if ([itemCopy isZoneRoot] && (objc_msgSend(itemCopy, "clientZone"), v225 = objc_claimAutoreleasedReturnValue(), v226 = objc_msgSend(v225, "isCloudDocsZone"), v225, (v226 & 1) == 0))
                  {
                    cloudDocsClientZone = [v175 cloudDocsClientZone];
                  }

                  else
                  {
                    if (![itemCopy isSharedToMeTopLevelItem])
                    {
                      v228 = 0;
LABEL_205:
                      if ((v173 & 0x20) != 0)
                      {
                        *(&v246->super.super.isa + *MEMORY[0x277CFAF58]) |= 0x10u;
                      }

                      if ((v173 & 0x1000000040) != 0)
                      {
                        *(&v246->super.super.isa + *MEMORY[0x277CFAF58]) |= 0x20u;
                      }

                      goto LABEL_210;
                    }

                    cloudDocsClientZone = [itemCopy parentClientZone];
                  }

                  v228 = cloudDocsClientZone;
                  if (cloudDocsClientZone && [itemCopy isDirectory])
                  {
                    clientZone4 = [itemCopy clientZone];
                    enhancedDrivePrivacyEnabled = [clientZone4 enhancedDrivePrivacyEnabled];
                    enhancedDrivePrivacyEnabled2 = [v228 enhancedDrivePrivacyEnabled];

                    if (enhancedDrivePrivacyEnabled != enhancedDrivePrivacyEnabled2)
                    {
                      *(v245 + 4) |= 4u;
                    }

                    v218 = v242;
                  }

                  goto LABEL_205;
                }

                syncUpError2 = [v243 syncUpError];
                brc_wrappedError = [syncUpError2 brc_wrappedError];

                v128[5] = 4;
                *v128 |= 3u;
                asSymlink = [v243 asSymlink];
                symlinkTarget = [asSymlink symlinkTarget];
                v169 = *MEMORY[0x277CFAFE8];
                v170 = *(&v131->super.super.isa + v169);
                *(&v131->super.super.isa + v169) = symlinkTarget;

                objc_storeStrong((&v131->super.super.isa + *MEMORY[0x277CFAFA0]), *(&v131->super.super.isa + v74));
                v171 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(&v131->super.super.isa + v169), "lengthOfBytesUsingEncoding:", 4)}];
                v172 = *MEMORY[0x277CFAFD8];
                v165 = *(&v131->super.super.isa + v172);
                *(&v131->super.super.isa + v172) = v171;
              }

              v174 = v240;
              v173 = diffsCopy;
              v175 = session;
            }

            goto LABEL_179;
          }

          appLibrary4 = [v243 appLibrary];
          v128 = v245;
          if ([appLibrary4 isDocumentScopePublic])
          {
            isInDataScope = [v243 isInDataScope];

            if ((isInDataScope & 1) == 0)
            {
              if ([v243 isUserVisible])
              {
                v130 = 0;
              }

              else
              {
                v130 = 0x4000000;
              }

              *v245 = *v245 & 0xFBFFFFFF | v130;
              goto LABEL_118;
            }
          }

          else
          {
          }

          *v245 &= ~0x4000000u;
          *(v245 + 4) |= 2u;
LABEL_118:
          v131 = v246;
          goto LABEL_123;
        }
      }

      else
      {
      }

      appLibraryID2 = [(BRCAppLibrary *)v36 appLibraryID];
      p_isa = v8->_oldAppLibraryID;
      v8->_oldAppLibraryID = appLibraryID2;
    }

    goto LABEL_24;
  }

LABEL_210:
  v232 = v8;

  v233 = *MEMORY[0x277D85DE8];
  return v232;
}

- (id)initRootContainerNotificationWithSessionContext:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = BRCNotification;
  v5 = [(BRCNotification *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CFAF98];
    v8 = *(&v5->super.super.isa + v7);
    *(&v5->super.super.isa + v7) = @".rootContainerItemNotification";

    v9 = [MEMORY[0x277CFAE50] fileObjectIDWithString:*MEMORY[0x277CC6348]];
    v10 = *MEMORY[0x277CFAF70];
    v11 = *(&v6->super.super.isa + v10);
    *(&v6->super.super.isa + v10) = v9;

    v12 = *MEMORY[0x277CFAFA8];
    v13 = *(&v6->super.super.isa + v12);
    *(&v6->super.super.isa + v12) = 0;

    v14 = +[BRCQueryItemUtil sharedQueryItemUtil];
    v15 = [v14 contentPolicyForRootContainerWithSessionContext:contextCopy];
    *(&v6->super.super.isa + *MEMORY[0x277CFAF48]) = v15;
  }

  return v6;
}

- (void)markAsLoserVersionWithEtag:(id)etag modificationDate:(id)date editorNameComponents:(id)components lastEditorDeviceName:(id)name size:(id)size
{
  dateCopy = date;
  componentsCopy = components;
  nameCopy = name;
  sizeCopy = size;
  v16 = *MEMORY[0x277CFAF40];
  v17 = *(&self->super.super.isa + v16);
  *(&self->super.super.isa + v16) = 0;
  etagCopy = etag;

  v19 = [[BRFieldContentSignature alloc] initWithLoserEtag:etagCopy];
  data = [(BRFieldContentSignature *)v19 data];
  v21 = *MEMORY[0x277CFAF50];
  v22 = *(&self->super.super.isa + v21);
  *(&self->super.super.isa + v21) = data;

  if (dateCopy)
  {
    objc_storeStrong((&self->super.super.isa + *MEMORY[0x277CFAFA0]), date);
  }

  if (componentsCopy)
  {
    [(BRCNotification *)self setAttribute:componentsCopy forKey:*MEMORY[0x277CCA558]];
  }

  objc_storeStrong((&self->super.super.isa + *MEMORY[0x277CFAF80]), name);
  if (sizeCopy)
  {
    objc_storeStrong((&self->super.super.isa + *MEMORY[0x277CFAFD8]), size);
  }
}

+ (id)notificationGatheredFromItem:(id)item
{
  result = [self notificationFromItem:item];
  if (result)
  {
    *(result + *MEMORY[0x277CFAF58]) |= 0x8000u;
  }

  return result;
}

+ (id)notificationFromItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isBRAlias])
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[BRCNotification notificationFromItem:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [[BRCNotification alloc] initWithLocalItem:itemCopy itemDiffs:0];
  }

  return v6;
}

- (void)setNumberAttribute:(id)attribute forKey:(id)key
{
  attributeCopy = attribute;
  keyCopy = key;
  if ([attributeCopy longLongValue])
  {
    v7 = attributeCopy;
  }

  else
  {
    v7 = 0;
  }

  [(BRCNotification *)self setAttribute:v7 forKey:keyCopy];
}

- (id)notificationByStrippingSharingInfoIfNeeded
{
  v3 = *MEMORY[0x277CFAF20];
  v4 = *MEMORY[0x277CFB050];
  v5 = [*(&self->super.super.isa + v3) objectForKey:*MEMORY[0x277CFB050]];

  v6 = *MEMORY[0x277CFB048];
  v7 = [*(&self->super.super.isa + v3) objectForKey:*MEMORY[0x277CFB048]];

  if (v7 | v5)
  {
    v8 = [(BRCNotification *)self copy];
    [*&v8[v3] removeObjectForKey:v4];
    [*&v8[v3] removeObjectForKey:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canMerge:(id)merge
{
  mergeCopy = merge;
  if ([(BRCItemGlobalID *)self->_itemGlobalID isEqualToItemGlobalID:mergeCopy[40]])
  {
    v5 = [*(&self->super.super.isa + *MEMORY[0x277CFAF70]) isEqualToFileObjectID:*(mergeCopy + *MEMORY[0x277CFAF70])];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)merge:(id)merge
{
  mergeCopy = merge;
  v10.receiver = self;
  v10.super_class = BRCNotification;
  [(BRCNotification *)&v10 merge:mergeCopy];
  if ([*(mergeCopy + 41) count])
  {
    v5 = [(NSSet *)self->_parentGlobalIDs count];
    v6 = *(mergeCopy + 41);
    if (v5)
    {
      v7 = [v6 mutableCopy];
      [(NSSet *)v7 unionSet:self->_parentGlobalIDs];
    }

    else
    {
      v7 = v6;
    }

    parentGlobalIDs = self->_parentGlobalIDs;
    self->_parentGlobalIDs = v7;
  }

  v9 = *(mergeCopy + 42);
  if (v9)
  {
    objc_storeStrong(&self->_oldAppLibraryID, v9);
  }
}

- (void)generateLogicalExtension:(id)extension physicalExtension:(id)physicalExtension
{
  v35 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  physicalExtensionCopy = physicalExtension;
  memset(v28, 0, sizeof(v28));
  __brc_create_section(0, "[BRCNotification generateLogicalExtension:physicalExtension:]", 683, 0, v28);
  v8 = brc_bread_crumbs();
  v9 = brc_notifications_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v30 = v28[0];
    v31 = 2112;
    selfCopy = self;
    v33 = 2112;
    v34 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx generating sandbox extensions for %@%@", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v11 = *(&selfCopy2->super.super.isa + *MEMORY[0x277CFAFB0]);
  v12 = *(&selfCopy2->super.super.isa + *MEMORY[0x277CFAFC8]);
  v13 = *(&selfCopy2->super.super.isa + *MEMORY[0x277CFAF98]);
  v14 = *(&selfCopy2->super.super.isa + *MEMORY[0x277CFAF70]);
  v15 = *(&selfCopy2->super.super.isa + *MEMORY[0x277CFAF58]);
  objc_sync_exit(selfCopy2);

  isDead = [(BRCNotification *)selfCopy2 isDead];
  if (v11)
  {
    v17 = isDead;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0 && (v15 & 0xC030) != 0)
  {
    v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
    if (v12 && ([v12 br_isSideFaultName] & 1) == 0)
    {
      v21 = [v18 URLByAppendingPathComponent:v12];
      v22 = _issueReadWriteSandboxExtensionForURL(v21);
      if (v22)
      {
        [extensionCopy setObject:v22 forKeyedSubscript:v14];
      }

      goto LABEL_23;
    }

    if (v13)
    {
      v19 = [v18 URLByAppendingPathComponent:v13];
      v20 = _issueReadWriteSandboxExtensionForURL(v19);
      if (v20)
      {
        [extensionCopy setObject:v20 forKeyedSubscript:v14];
      }

      if (v12)
      {
LABEL_14:
        if (([v12 br_isSideFaultName] & 1) == 0)
        {
          v27 = brc_bread_crumbs();
          v26 = brc_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [BRCNotification generateLogicalExtension:physicalExtension:];
          }
        }

        v21 = [v18 URLByAppendingPathComponent:{v12, v27}];

        v22 = _issueReadWriteSandboxExtensionForURL(v21);

        if (v22)
        {
          [physicalExtensionCopy setObject:v22 forKeyedSubscript:v14];
        }

        goto LABEL_23;
      }
    }

    else
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [BRCNotification generateLogicalExtension:physicalExtension:];
      }

      v19 = 0;
      v20 = 0;
      if (v12)
      {
        goto LABEL_14;
      }
    }

    v21 = v19;
    v22 = v20;
LABEL_23:
  }

  __brc_leave_section(v28);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_populateExtendedAttributesForItem:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [item.serverZone.dbRowID isEqualToNumber:_parentGlobalID.zoneRowID]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithLocalItem:itemDiffs:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !item.isBRAlias%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithLocalItem:itemDiffs:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _logicalName != nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithLocalItem:itemDiffs:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: shareRoot%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithLocalItem:itemDiffs:.cold.4()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _fileObjectID.type != BRFileObjectIDTypeDocument%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithLocalItem:itemDiffs:.cold.5()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: finderTags.tagsCount > 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithLocalItem:itemDiffs:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_223E7A000, v1, 0x90u, "[ERROR] item has both or neither a public and private share %@%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)notificationFromItem:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: can't create notification from alias%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateLogicalExtension:physicalExtension:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: logicalName%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateLogicalExtension:physicalExtension:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: physicalName.br_isSideFaultName%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end