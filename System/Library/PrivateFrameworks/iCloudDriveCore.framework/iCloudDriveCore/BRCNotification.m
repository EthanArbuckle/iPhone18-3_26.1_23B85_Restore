@interface BRCNotification
+ (id)notificationFromItem:(id)a3;
+ (id)notificationGatheredFromItem:(id)a3;
- (BOOL)canMerge:(id)a3;
- (BOOL)isDocumentsFolder;
- (BRCNotification)initWithLocalItem:(id)a3 itemDiffs:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initRootContainerNotificationWithSessionContext:(id)a3;
- (id)notificationByStrippingSharingInfoIfNeeded;
- (id)subclassDescription;
- (void)_populateExtendedAttributesForItem:(id)a3;
- (void)generateLogicalExtension:(id)a3 physicalExtension:(id)a4;
- (void)markAsLoserVersionWithEtag:(id)a3 modificationDate:(id)a4 editorNameComponents:(id)a5 lastEditorDeviceName:(id)a6 size:(id)a7;
- (void)merge:(id)a3;
- (void)setNumberAttribute:(id)a3 forKey:(id)a4;
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
  v2 = [(BRCNotification *)self itemGlobalID];
  v3 = [v2 itemID];
  v4 = [v3 isDocumentsFolder];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = BRCNotification;
  v4 = [(BRCNotification *)&v7 copyWithZone:a3];
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

- (void)_populateExtendedAttributesForItem:(id)a3
{
  v4 = a3;
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
  v9 = [v4 clientZone];
  if ([v9 isSharedZone])
  {
    v10 = [v4 isSharedToMeTopLevelItem];

    if (!v10)
    {
      goto LABEL_8;
    }

    v9 = [v4 bookmarkData];
    v11 = [v9 dataUsingEncoding:4];
    [v8 setObject:v11 forKeyedSubscript:@"com.apple.clouddocs.private.share-bookmark#B"];
  }

LABEL_8:
  v12 = [(BRCNotification *)self parentItemIdentifier];
  v13 = [v12 isEqualToString:*MEMORY[0x277CC6358]];

  if (v13)
  {
    v51 = v5;
    v14 = [v4 serverZone];
    v15 = [v14 dbRowID];
    v16 = [(BRCItemGlobalID *)self->_parentGlobalID zoneRowID];
    v17 = [v15 isEqualToNumber:v16];

    if ((v17 & 1) == 0)
    {
      [BRCNotification _populateExtendedAttributesForItem:];
    }

    v18 = [(BRCItemGlobalID *)self->_parentGlobalID itemID];
    v19 = [v18 itemIDString];
    v20 = [v4 serverZone];
    v21 = [BRCLocalItem bookmarkDataWithItemResolutionString:v19 serverZone:v20];

    v22 = [v21 dataUsingEncoding:4];
    [v8 setObject:v22 forKeyedSubscript:@"com.apple.clouddocs.private.trash-parent-bookmark#B"];

    v23 = [v4 clientZone];
    v24 = [v4 st];
    v25 = [v24 trashPutBackParentID];
    [v4 dbFacade];
    v27 = v26 = v8;
    v28 = [v23 itemByItemID:v25 dbFacade:v27];
    v29 = [v28 asDirectory];

    v8 = v26;
    if (v29)
    {
      v30 = [v29 fileObjectID];
      v31 = [v30 asString];
      v32 = [v31 dataUsingEncoding:4];
      [v26 setObject:v32 forKeyedSubscript:@"com.apple.fileprovider.trash-put-back#PN"];
    }

    v5 = v51;
  }

  if ([v4 isDocument])
  {
    v33 = [BRCUserDefaults defaultsForMangledID:0];
    v34 = [v4 session];
    v35 = [v34 accountFacade];
    v36 = [v33 saveLocalContentVersionIdentifierOnDiskWithAccountFacade:v35];

    if (v36)
    {
      v52 = v8;
      v37 = [v4 asDocument];
      v38 = [v37 currentVersion];
      v39 = [v38 ckInfo];
      v40 = [v39 etag];
      v41 = [v37 currentVersion];
      v42 = [v41 localChangeCount];
      v43 = v40;
      v44 = v43;
      v45 = &stru_2837504F0;
      if (v43)
      {
        v45 = v43;
      }

      v46 = v45;
      v47 = v46;
      if (v42)
      {
        v48 = [(__CFString *)v46 stringByAppendingFormat:@"%llu", v42];;

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

- (BRCNotification)initWithLocalItem:(id)a3 itemDiffs:(unint64_t)a4
{
  v264 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([v7 isBRAlias])
  {
    [BRCNotification initWithLocalItem:itemDiffs:];
  }

  v252.receiver = self;
  v252.super_class = BRCNotification;
  v8 = [(BRCNotification *)&v252 init];

  if (v8)
  {
    v9 = [v7 orig];
    if ([v7 isZoneRoot])
    {
      v10 = 0;
    }

    else
    {
      v10 = [v7 st];
    }

    v239 = [v7 session];
    v11 = [v7 isOnDisk];
    *(&v8->super.super.isa + *MEMORY[0x277CFAF90]) = -1;
    *(&v8->super.super.isa + *MEMORY[0x277CFAFC0]) = -1;
    v12 = [v7 appLibrary];
    appLibrary = v8->_appLibrary;
    v8->_appLibrary = v12;

    v14 = [(BRCAppLibrary *)v8->_appLibrary appLibraryID];
    v15 = *MEMORY[0x277CFAF18];
    v16 = *(&v8->super.super.isa + v15);
    *(&v8->super.super.isa + v15) = v14;

    v17 = [v7 itemGlobalID];
    itemGlobalID = v8->_itemGlobalID;
    v8->_itemGlobalID = v17;

    v19 = [v7 itemParentGlobalID];
    parentGlobalID = v8->_parentGlobalID;
    v8->_parentGlobalID = v19;

    if (v10)
    {
      [v10 logicalName];
    }

    else
    {
      v4 = [(BRCAppLibrary *)v8->_appLibrary mangledID];
      [v4 mangledIDString];
    }
    v21 = ;
    v22 = v10;
    v23 = *MEMORY[0x277CFAF98];
    objc_storeStrong((&v8->super.super.isa + v23), v21);
    v244 = v22;
    if (!v22)
    {

      v21 = v4;
    }

    if (!*(&v8->super.super.isa + v23))
    {
      [BRCNotification initWithLocalItem:itemDiffs:];
    }

    v8->_isInDocumentScope = [v7 isInDocumentScope];
    v8->_isInDataScope = [v7 isInDataScope];
    v8->_isInTrashScope = [v7 isInTrashScope];
    v24 = [v7 parentClientZone];
    v25 = [v24 dbRowID];
    v26 = *MEMORY[0x277CFAFB8];
    v27 = *(&v8->super.super.isa + v26);
    *(&v8->super.super.isa + v26) = v25;

    v28 = [v7 clientZone];
    v29 = [v28 dbRowID];
    v30 = *MEMORY[0x277CFAFF8];
    v31 = *(&v8->super.super.isa + v30);
    *(&v8->super.super.isa + v30) = v29;

    if (([v9 isFSRoot] & 1) == 0)
    {
      v32 = [v9 parentFileObjectID];
      oldParentFileObjectID = v8->_oldParentFileObjectID;
      v8->_oldParentFileObjectID = v32;
    }

    v34 = [v9 appLibrary];
    v35 = v8->_appLibrary;
    v36 = v34;
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
          v43 = [v7 fromReadOnlyDB];
          v44 = (v8 + *MEMORY[0x277CFAF78]);
          if (v43)
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
          if (v11)
          {
            *v44 = v46;
            v47 = [v7 fileObjectID];
            v48 = *MEMORY[0x277CFAF70];
            v49 = *(&v8->super.super.isa + v48);
            *(&v8->super.super.isa + v48) = v47;

            if (([v7 isFSRoot] & 1) == 0)
            {
              v50 = [v7 parentFileObjectID];
              v51 = *MEMORY[0x277CFAFA8];
              v52 = *(&v8->super.super.isa + v51);
              *(&v8->super.super.isa + v51) = v50;

              if (([v7 sharingOptions] & 0x48) != 0)
              {
                if (([v7 sharingOptions] & 4) == 0)
                {
                  v53 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:v7];
                  v54 = v53;
                  if (v53)
                  {
                    v55 = [v53 brc_shareItemID];
                    v56 = [v7 clientZone];
                    v57 = [v7 dbFacade];
                    v58 = [v56 itemByItemID:v55 dbFacade:v57];

                    if (!v58)
                    {
                      [BRCNotification initWithLocalItem:itemDiffs:];
                    }

                    v59 = [v58 fileObjectID];
                    v60 = *MEMORY[0x277CFAFD0];
                    v61 = *(&v246->super.super.isa + v60);
                    *(&v246->super.super.isa + v60) = v59;

                    v8 = v246;
                    v39 = v244;
                    v44 = v245;
                  }

                  goto LABEL_39;
                }

                v64 = [v7 fileObjectID];
                v65 = MEMORY[0x277CFAFD0];
LABEL_38:
                v66 = *v65;
                v54 = *(&v8->super.super.isa + v66);
                *(&v8->super.super.isa + v66) = v64;
LABEL_39:
              }
            }
          }

          else
          {
            *v44 = v46 | 0x10;
            v62 = [v9 fileObjectID];
            v48 = *MEMORY[0x277CFAF70];
            v63 = *(&v8->super.super.isa + v48);
            *(&v8->super.super.isa + v48) = v62;

            if (([v9 isFSRoot] & 1) == 0)
            {
              v64 = [v9 parentFileObjectID];
              v65 = MEMORY[0x277CFAFA8];
              goto LABEL_38;
            }
          }

          if (([v7 isDocument] & 1) == 0 && objc_msgSend(*(&v8->super.super.isa + v48), "type") == 2)
          {
            [BRCNotification initWithLocalItem:itemDiffs:];
          }

          v67 = [v39 finderTags];

          if (v67)
          {
            v68 = [BRFieldFinderTags alloc];
            v69 = [v39 finderTags];
            v70 = [(BRFieldFinderTags *)v68 initWithData:v69];

            if (![(BRFieldFinderTags *)v70 tagsCount])
            {
              [BRCNotification initWithLocalItem:itemDiffs:];
            }

            v71 = [(BRFieldFinderTags *)v70 tags];
            [(BRCNotification *)v8 setAttribute:v71 forKey:*MEMORY[0x277CFB060]];
          }

          if (v39)
          {
            v72 = ([v39 mode] & 7) << 17;
          }

          else
          {
            v72 = 0x20000;
          }

          v240 = v9;
          v241 = a4;
          *v44 = *v44 & 0xFFF1FFFF | v72;
          if ([v7 isDirectory])
          {
            *v44 |= 0x40000u;
          }

          v73 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v39, "birthtime")}];
          v74 = *MEMORY[0x277CFAF28];
          v75 = *(&v8->super.super.isa + v74);
          *(&v8->super.super.isa + v74) = v73;

          if ([v7 isInTrashScope])
          {
            v76 = [v7 parentItemOnFS];
            if ([v76 isAppLibraryTrashFolder])
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

          v78 = [v39 lastUsedTime];
          if (v78)
          {
            v79 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v39, "lastUsedTime")}];
          }

          else
          {
            v79 = 0;
          }

          objc_storeStrong((&v8->super.super.isa + *MEMORY[0x277CFAF88]), v79);
          if (v78)
          {
          }

          v80 = [v39 favoriteRank];
          if (v80)
          {
            v81 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v39, "favoriteRank")}];
          }

          else
          {
            v81 = 0;
          }

          objc_storeStrong((&v8->super.super.isa + *MEMORY[0x277CFAF68]), v81);
          if (v80)
          {
          }

          v82 = [v7 extendedAttributes];
          v83 = *MEMORY[0x277CFAFF0];
          v84 = *(&v8->super.super.isa + v83);
          *(&v8->super.super.isa + v83) = v82;

          v85 = [v39 creatorRowID];
          v86 = [v85 integerValue];

          if (v86)
          {
            v87 = MEMORY[0x277CCAC00];
            v88 = [v39 creatorRowID];
            v89 = [v7 dbFacade];
            v90 = [v87 nameComponentsForKey:v88 dbFacade:v89];

            [(BRCNotification *)v8 setAttribute:v90 forKey:*MEMORY[0x277CFB040]];
          }

          else
          {
            [(BRCNotification *)v8 setAttribute:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFB038]];
          }

          v91 = v245;
          *v245 = *v245 & 0xFFFFFFF3 | (4 * ([v7 uploadStatus] & 3));
          v92 = [v7 clientZone];
          v93 = [v92 isSharedZone];

          v94 = [v7 sharingOptions] & 0x48;
          if (v93)
          {
            if (!v94 && ([v7 isDead] & 1) == 0)
            {
              v95 = brc_bread_crumbs();
              v96 = brc_default_log();
              if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
              {
                v97 = [v7 digestDescription];
                v98 = [v7 appLibrary];
                v99 = [v7 sharingOptions];
                [v7 sharingOptions];
                v100 = BRCPrettyPrintBitmap();
                *buf = 138413314;
                v255 = v97;
                v256 = 2112;
                v257 = v98;
                v258 = 2048;
                v259 = v99;
                v260 = 2112;
                v261 = v100;
                v262 = 2112;
                v263 = v95;
                _os_log_impl(&dword_223E7A000, v96, OS_LOG_TYPE_DEFAULT, "[WARNING] item %@ in shared zone %@ should have share-options set (actual:%lu %@)%@", buf, 0x34u);
              }

              v91 = v245;
            }

            if (([v7 isShareAcceptationFault] & 1) == 0)
            {
              v101 = [v7 sharingOptions];
              if (((([v7 sharingOptions] >> 3) ^ (v101 >> 6)) & 1) == 0 && (objc_msgSend(v7, "isDead") & 1) == 0)
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

            if (([v7 sharingOptions] & 0x20) == 0)
            {
              v104 = 0x2000;
LABEL_92:
              *v91 = *v91 & 0xFFFFC7FF | v104;
              v107 = MEMORY[0x277CCAC00];
              v108 = [v7 ownerKey];
              v109 = [v7 dbFacade];
              v110 = [v107 nameComponentsForKey:v108 dbFacade:v109];

              [(BRCNotification *)v246 setAttribute:v110 forKey:*MEMORY[0x277CFB050]];
              goto LABEL_93;
            }

            if ([v7 isKnownByServer])
            {
              v104 = 6144;
              goto LABEL_92;
            }
          }

          else
          {
            v105 = [v7 sharingOptions];
            if (!v94)
            {
              if (v105)
              {
                v235 = [v7 sharingOptions];
                v236 = *v245 & 0xFFFFC7FF;
                v111 = 0;
                v112 = 0;
                if ((v235 & 2) != 0)
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
                v111 = 0;
                v112 = 0;
                v132 = *v245 & 0xFFFFC7FF;
              }

              *v245 = v132;
              goto LABEL_94;
            }

            if ((v105 & 0x10) != 0)
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
          v111 = [v7 isDocument];
          v112 = 1;
LABEL_94:
          v243 = v7;
          if ([v7 isShared] && (objc_msgSend(v7, "sharingOptions") & 4) != 0)
          {
            v114 = [v7 collaborationIdentifierIfComputable];
            v113 = 1;
          }

          else
          {
            v113 = 0;
            v114 = 0;
          }

          objc_storeStrong((&v246->super.super.isa + *MEMORY[0x277CFAF38]), v114);
          if (v113)
          {
          }

          v7 = v243;
          if (v112)
          {
            *v245 = (*v245 & 0xFFDFFFFF | ((([v243 sharingOptions] >> 2) & 1) << 21)) ^ 0x200000;
          }

          if (v111)
          {
            v115 = [v243 asDocument];
            v116 = [v115 currentVersion];
            v117 = [v116 lastEditorRowID];

            if ([v117 br_isEqualToNumber:&unk_2837AFFE0])
            {
              [(BRCNotification *)v246 setAttribute:0 forKey:*MEMORY[0x277CFB048]];
            }

            else
            {
              v118 = MEMORY[0x277CCAC00];
              v119 = [v115 currentVersion];
              v120 = [v119 lastEditorRowID];
              v121 = [v115 dbFacade];
              v122 = [v118 nameComponentsForKey:v120 dbFacade:v121];

              [(BRCNotification *)v246 setAttribute:v122 forKey:*MEMORY[0x277CFB048]];
            }
          }

          if ([v243 isInTrashScope])
          {
            v123 = [v243 st];
            v124 = [v123 logicalName];
            if ([v124 length])
            {
              v125 = [v243 st];
              v126 = [v125 logicalName];
              *v245 = *v245 & 0xFBFFFFFF | (([v126 characterAtIndex:0] == 46) << 26);
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
              v133 = [v243 asDocument];
              v134 = [v133 currentVersion];
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

              if (v134)
              {
                v137 = [v134 editedSinceShared];
                if ([v137 BOOLValue])
                {
                  v138 = 0x1000000;
                }

                else
                {
                  v138 = 0;
                }

                *v128 = *v128 & 0xFEFFFFFF | v138;

                v139 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v134, "size")}];
                v140 = *MEMORY[0x277CFAFD8];
                v141 = *(&v131->super.super.isa + v140);
                *(&v131->super.super.isa + v140) = v139;

                v142 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v134, "mtime")}];
                v143 = *MEMORY[0x277CFAFA0];
                v144 = *(&v131->super.super.isa + v143);
                *(&v131->super.super.isa + v143) = v142;
              }

              v238 = v133;
              if ([v243 isFinderBookmark])
              {
                v145 = 3;
              }

              else if ([v134 isPackage])
              {
                v145 = 2;
              }

              else
              {
                v145 = 1;
              }

              v128[5] = v145;
              v176 = objc_alloc(MEMORY[0x277CBEB18]);
              v177 = [v134 conflictLoserEtags];
              v247 = [v176 initWithCapacity:{objc_msgSend(v177, "count")}];

              v178 = [v133 resolvedConflictLoserEtags];
              v248 = 0u;
              v249 = 0u;
              v250 = 0u;
              v251 = 0u;
              v237 = v134;
              v179 = [v134 conflictLoserEtags];
              v180 = [v179 countByEnumeratingWithState:&v248 objects:v253 count:16];
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
                      objc_enumerationMutation(v179);
                    }

                    v184 = *(*(&v248 + 1) + 8 * i);
                    if (([v178 containsObject:v184] & 1) == 0)
                    {
                      v185 = [[BRFieldContentSignature alloc] initWithLoserEtag:v184];
                      v186 = objc_alloc(MEMORY[0x277CC64A0]);
                      v187 = [(BRFieldContentSignature *)v185 data];
                      v188 = [MEMORY[0x277CBEA90] data];
                      v189 = [v186 initWithContentVersion:v187 metadataVersion:v188];
                      [v247 addObject:v189];
                    }
                  }

                  v181 = [v179 countByEnumeratingWithState:&v248 objects:v253 count:16];
                }

                while (v181);
              }

              v190 = *MEMORY[0x277CFAF40];
              v131 = v246;
              objc_storeStrong((&v246->super.super.isa + v190), v247);
              *v245 = *v245 & 0xFFFFFFBF | (([*(&v246->super.super.isa + v190) count] != 0) << 6);
              v7 = v243;
              if ([v243 isDocument] && (*v245 & 0x40) != 0 && objc_msgSend(v243, "isIWorkItem"))
              {
                v191 = [v243 asDocument];
                v192 = [v191 currentVersion];
                v193 = [v243 dbFacade];
                v194 = [v192 lastEditorDeviceDisplayNameWithDBFacade:v193];
                v195 = *MEMORY[0x277CFAF80];
                v196 = *(&v246->super.super.isa + v195);
                *(&v246->super.super.isa + v195) = v194;
              }

              v174 = v240;
              v173 = v241;
              v175 = v239;
              if (([v238 isDead] & 1) == 0)
              {
                v197 = [v239 fsUploader];
                if ([v197 isUploadingItem:v238])
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
              v199 = [v238 uploadError];
              v147 = [v199 brc_wrappedError];

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
                v146 = [v243 syncUpError];
                v147 = [v146 brc_wrappedError];

                v148 = [v243 asDirectory];
                v128[5] = 0;
                v149 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v148, "mtime")}];
                v150 = *MEMORY[0x277CFAFA0];
                v151 = *(&v131->super.super.isa + v150);
                *(&v131->super.super.isa + v150) = v149;

                if ([v148 isSharedByMeOrContainsSharedByMeItem])
                {
                  v152 = 0x800000;
                }

                else
                {
                  v152 = 0;
                }

                *v128 = *v128 & 0xFF7FFFFF | v152;
                if ([v148 isSharedToMeOrContainsSharedToMeItem])
                {
                  v153 = 0x400000;
                }

                else
                {
                  v153 = 0;
                }

                *v128 = *v128 & 0xFFBFFFFF | v153;
                if ([v148 isAppLibraryTrashFolder])
                {
                  v154 = 0x40000000;
                }

                else
                {
                  v154 = 0;
                }

                *v128 = *v128 & 0xBFFFFFFF | v154;
                v155 = [v243 itemID];
                if ([v155 isNonDesktopRoot])
                {
                  v156 = 0x80000000;
                }

                else
                {
                  v156 = 0;
                }

                *v128 = v156 & 0x80000000 | *v128 & 0x7FFFFFFF;

                v157 = [v243 itemID];
                v128[4] = v128[4] & 0xFE | [v157 isDocumentsFolder];

                if ([v148 isDirectoryFault])
                {
                  v158 = [v148 serverQuotaUsage];
                  v159 = *MEMORY[0x277CFAFD8];
                  v160 = *(&v131->super.super.isa + v159);
                  *(&v131->super.super.isa + v159) = v158;
                }

                v161 = [v243 asDirectory];
                v162 = [v161 childItemCount];
                v163 = *MEMORY[0x277CFAF30];
                v164 = *(&v131->super.super.isa + v163);
                *(&v131->super.super.isa + v163) = v162;

                v165 = v148;
                *v128 |= 3u;
              }

              else
              {
                if (![v243 isSymLink])
                {
                  v147 = 0;
                  v174 = v240;
                  v173 = v241;
                  v175 = v239;
LABEL_179:
                  v201 = [v244 parentID];
                  v202 = [v201 isNonDesktopRoot];

                  if (v202)
                  {
                    *v128 |= 0x8000000u;
                  }

                  if (v147)
                  {
                    v203 = [v147 br_fileProviderError];

                    [(BRFieldStructureSignature *)v131 setAttribute:v203 forKey:*MEMORY[0x277CFB068]];
                  }

                  if ((v173 & 0x100000000) != 0)
                  {
                    v204 = [v7 orig];
                    v205 = [v204 isLost];

                    if (v205)
                    {
                      *(&v131->super.super.isa + *MEMORY[0x277CFAF58]) |= 0x4000u;
                    }
                  }

                  if ([v7 isDocument])
                  {
                    v206 = [BRFieldContentSignature alloc];
                    v207 = [v7 asDocument];
                    v208 = [v207 currentVersion];
                    v209 = [(BRFieldContentSignature *)v206 initWithLocalVersion:v208];

                    v210 = [(BRFieldContentSignature *)v209 data];
                    v211 = *MEMORY[0x277CFAF50];
                    v212 = *(&v131->super.super.isa + v211);
                    *(&v131->super.super.isa + v211) = v210;

                    v213 = [(BRFieldContentSignature *)v209 equivalentVersions];
                    v214 = *MEMORY[0x277CFAF60];
                    v215 = *(&v131->super.super.isa + v214);
                    *(&v131->super.super.isa + v214) = v213;
                  }

                  else
                  {
                    v216 = objc_opt_new();
                    v217 = *MEMORY[0x277CFAF50];
                    v209 = *(&v131->super.super.isa + v217);
                    *(&v131->super.super.isa + v217) = v216;
                  }

                  v218 = v242;

                  v219 = [v7 isZoneRoot];
                  if (v219)
                  {
                    v220 = 0;
                  }

                  else
                  {
                    v221 = [BRFieldStructureSignature alloc];
                    v128 = [v7 st];
                    v131 = [(BRFieldStructureSignature *)v221 initWithLocalStatInfo:v128];
                    v220 = [(BRFieldStructureSignature *)v131 data];
                  }

                  objc_storeStrong((&v246->super.super.isa + *MEMORY[0x277CFAFE0]), v220);
                  if ((v219 & 1) == 0)
                  {
                  }

                  v222 = +[BRCQueryItemUtil sharedQueryItemUtil];
                  v223 = [BRCQueryItemInfo queryItemInfoForItem:v7];
                  v224 = [v222 contentPolicyForItemInfo:v223 sessionContext:v175];
                  v8 = v246;
                  *(&v246->super.super.isa + *MEMORY[0x277CFAF48]) = v224;

                  [(BRCNotification *)v246 _populateExtendedAttributesForItem:v7];
                  if ([v7 isZoneRoot] && (objc_msgSend(v7, "clientZone"), v225 = objc_claimAutoreleasedReturnValue(), v226 = objc_msgSend(v225, "isCloudDocsZone"), v225, (v226 & 1) == 0))
                  {
                    v227 = [v175 cloudDocsClientZone];
                  }

                  else
                  {
                    if (![v7 isSharedToMeTopLevelItem])
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

                    v227 = [v7 parentClientZone];
                  }

                  v228 = v227;
                  if (v227 && [v7 isDirectory])
                  {
                    v229 = [v7 clientZone];
                    v230 = [v229 enhancedDrivePrivacyEnabled];
                    v231 = [v228 enhancedDrivePrivacyEnabled];

                    if (v230 != v231)
                    {
                      *(v245 + 4) |= 4u;
                    }

                    v218 = v242;
                  }

                  goto LABEL_205;
                }

                v166 = [v243 syncUpError];
                v147 = [v166 brc_wrappedError];

                v128[5] = 4;
                *v128 |= 3u;
                v167 = [v243 asSymlink];
                v168 = [v167 symlinkTarget];
                v169 = *MEMORY[0x277CFAFE8];
                v170 = *(&v131->super.super.isa + v169);
                *(&v131->super.super.isa + v169) = v168;

                objc_storeStrong((&v131->super.super.isa + *MEMORY[0x277CFAFA0]), *(&v131->super.super.isa + v74));
                v171 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(&v131->super.super.isa + v169), "lengthOfBytesUsingEncoding:", 4)}];
                v172 = *MEMORY[0x277CFAFD8];
                v165 = *(&v131->super.super.isa + v172);
                *(&v131->super.super.isa + v172) = v171;
              }

              v174 = v240;
              v173 = v241;
              v175 = v239;
            }

            goto LABEL_179;
          }

          v127 = [v243 appLibrary];
          v128 = v245;
          if ([v127 isDocumentScopePublic])
          {
            v129 = [v243 isInDataScope];

            if ((v129 & 1) == 0)
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

      v42 = [(BRCAppLibrary *)v36 appLibraryID];
      p_isa = v8->_oldAppLibraryID;
      v8->_oldAppLibraryID = v42;
    }

    goto LABEL_24;
  }

LABEL_210:
  v232 = v8;

  v233 = *MEMORY[0x277D85DE8];
  return v232;
}

- (id)initRootContainerNotificationWithSessionContext:(id)a3
{
  v4 = a3;
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
    v15 = [v14 contentPolicyForRootContainerWithSessionContext:v4];
    *(&v6->super.super.isa + *MEMORY[0x277CFAF48]) = v15;
  }

  return v6;
}

- (void)markAsLoserVersionWithEtag:(id)a3 modificationDate:(id)a4 editorNameComponents:(id)a5 lastEditorDeviceName:(id)a6 size:(id)a7
{
  v23 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = *MEMORY[0x277CFAF40];
  v17 = *(&self->super.super.isa + v16);
  *(&self->super.super.isa + v16) = 0;
  v18 = a3;

  v19 = [[BRFieldContentSignature alloc] initWithLoserEtag:v18];
  v20 = [(BRFieldContentSignature *)v19 data];
  v21 = *MEMORY[0x277CFAF50];
  v22 = *(&self->super.super.isa + v21);
  *(&self->super.super.isa + v21) = v20;

  if (v23)
  {
    objc_storeStrong((&self->super.super.isa + *MEMORY[0x277CFAFA0]), a4);
  }

  if (v13)
  {
    [(BRCNotification *)self setAttribute:v13 forKey:*MEMORY[0x277CCA558]];
  }

  objc_storeStrong((&self->super.super.isa + *MEMORY[0x277CFAF80]), a6);
  if (v15)
  {
    objc_storeStrong((&self->super.super.isa + *MEMORY[0x277CFAFD8]), a7);
  }
}

+ (id)notificationGatheredFromItem:(id)a3
{
  result = [a1 notificationFromItem:a3];
  if (result)
  {
    *(result + *MEMORY[0x277CFAF58]) |= 0x8000u;
  }

  return result;
}

+ (id)notificationFromItem:(id)a3
{
  v3 = a3;
  if ([v3 isBRAlias])
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
    v6 = [[BRCNotification alloc] initWithLocalItem:v3 itemDiffs:0];
  }

  return v6;
}

- (void)setNumberAttribute:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 longLongValue])
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  [(BRCNotification *)self setAttribute:v7 forKey:v6];
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

- (BOOL)canMerge:(id)a3
{
  v4 = a3;
  if ([(BRCItemGlobalID *)self->_itemGlobalID isEqualToItemGlobalID:v4[40]])
  {
    v5 = [*(&self->super.super.isa + *MEMORY[0x277CFAF70]) isEqualToFileObjectID:*(v4 + *MEMORY[0x277CFAF70])];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)merge:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BRCNotification;
  [(BRCNotification *)&v10 merge:v4];
  if ([*(v4 + 41) count])
  {
    v5 = [(NSSet *)self->_parentGlobalIDs count];
    v6 = *(v4 + 41);
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

  v9 = *(v4 + 42);
  if (v9)
  {
    objc_storeStrong(&self->_oldAppLibraryID, v9);
  }
}

- (void)generateLogicalExtension:(id)a3 physicalExtension:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  memset(v28, 0, sizeof(v28));
  __brc_create_section(0, "[BRCNotification generateLogicalExtension:physicalExtension:]", 683, 0, v28);
  v8 = brc_bread_crumbs();
  v9 = brc_notifications_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v30 = v28[0];
    v31 = 2112;
    v32 = self;
    v33 = 2112;
    v34 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx generating sandbox extensions for %@%@", buf, 0x20u);
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = *(&v10->super.super.isa + *MEMORY[0x277CFAFB0]);
  v12 = *(&v10->super.super.isa + *MEMORY[0x277CFAFC8]);
  v13 = *(&v10->super.super.isa + *MEMORY[0x277CFAF98]);
  v14 = *(&v10->super.super.isa + *MEMORY[0x277CFAF70]);
  v15 = *(&v10->super.super.isa + *MEMORY[0x277CFAF58]);
  objc_sync_exit(v10);

  v16 = [(BRCNotification *)v10 isDead];
  if (v11)
  {
    v17 = v16;
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
        [v6 setObject:v22 forKeyedSubscript:v14];
      }

      goto LABEL_23;
    }

    if (v13)
    {
      v19 = [v18 URLByAppendingPathComponent:v13];
      v20 = _issueReadWriteSandboxExtensionForURL(v19);
      if (v20)
      {
        [v6 setObject:v20 forKeyedSubscript:v14];
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
          [v7 setObject:v22 forKeyedSubscript:v14];
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