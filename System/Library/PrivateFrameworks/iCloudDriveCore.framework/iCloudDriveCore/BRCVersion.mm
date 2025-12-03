@interface BRCVersion
- (BOOL)isEtagEqual:(id)equal;
- (BOOL)isPackage;
- (BOOL)isSmallAndMostRecentClientsGenerateThumbnails;
- (BRCUserRowID)lastEditorRowID;
- (BRCVersion)initWithVersion:(id)version;
- (NSNumber)lastEditorDeviceRowID;
- (id)additionNameForItemID:(id)d zoneID:(id)iD;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithContext:(id)context;
- (id)lastEditorDeviceDisplayNameWithDBFacade:(id)facade;
- (id)lastEditorDisplayNameWithDBFacade:(id)facade;
- (id)lastEditorUserIdentityWithDBFacade:(id)facade;
- (id)lazyXattrWithXattrStager:(id)stager;
- (id)uti;
- (unint64_t)diffAgainst:(id)against;
- (void)isPackage;
- (void)isSmallAndMostRecentClientsGenerateThumbnails;
- (void)setLastEditorDeviceRowID:(id)d;
- (void)setLastEditorRowID:(id)d;
@end

@implementation BRCVersion

- (BOOL)isPackage
{
  contentSignature = self->_contentSignature;
  p_contentSignature = &self->_contentSignature;
  v3 = contentSignature;
  if (!contentSignature)
  {
    [(BRCVersion *)p_contentSignature isPackage];
    v3 = v6;
  }

  return [(NSData *)v3 brc_signatureIsPackage];
}

- (NSNumber)lastEditorDeviceRowID
{
  if ([(BRCVersion *)self _hasLastEditorDeviceRowID])
  {
    v3 = self->_lastEditorDeviceOrUserRowID;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLastEditorDeviceRowID:(id)d
{
  dCopy = d;
  if ([(BRCVersion *)self _hasLastEditorRowID])
  {
    [BRCVersion setLastEditorDeviceRowID:];
    if (!dCopy)
    {
      goto LABEL_6;
    }
  }

  else if (!dCopy)
  {
LABEL_6:
    [BRCVersion setLastEditorDeviceRowID:];
    goto LABEL_4;
  }

  if ([(NSNumber *)dCopy longLongValue]<= 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  lastEditorDeviceOrUserRowID = self->_lastEditorDeviceOrUserRowID;
  self->_lastEditorDeviceOrUserRowID = dCopy;
}

- (void)setLastEditorRowID:(id)d
{
  dCopy = d;
  if (self->_lastEditorDeviceOrUserRowID && [(BRCVersion *)self _hasLastEditorDeviceRowID])
  {
    [BRCVersion setLastEditorRowID:];
  }

  longLongValue = [dCopy longLongValue];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:-longLongValue];
  lastEditorDeviceOrUserRowID = self->_lastEditorDeviceOrUserRowID;
  self->_lastEditorDeviceOrUserRowID = v6;
}

- (BRCUserRowID)lastEditorRowID
{
  if ([(BRCVersion *)self _hasLastEditorRowID])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{--[NSNumber longLongValue](self->_lastEditorDeviceOrUserRowID, "longLongValue")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)lastEditorDeviceDisplayNameWithDBFacade:(id)facade
{
  facadeCopy = facade;
  lastEditorDeviceRowID = [(BRCVersion *)self lastEditorDeviceRowID];
  v6 = lastEditorDeviceRowID;
  if (lastEditorDeviceRowID)
  {
    lastEditorDeviceName = self->_lastEditorDeviceName;
    if (lastEditorDeviceName)
    {
      v8 = lastEditorDeviceName;
    }

    else
    {
      v8 = [facadeCopy deviceNameForDeviceID:{objc_msgSend(lastEditorDeviceRowID, "longLongValue")}];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)lastEditorUserIdentityWithDBFacade:(id)facade
{
  facadeCopy = facade;
  lastEditorRowID = [(BRCVersion *)self lastEditorRowID];
  if (lastEditorRowID)
  {
    v6 = [facadeCopy userIdentityForKey:lastEditorRowID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)lastEditorDisplayNameWithDBFacade:(id)facade
{
  v3 = [(BRCVersion *)self lastEditorUserIdentityWithDBFacade:facade];
  nameComponents = [v3 nameComponents];
  br_formattedName = [nameComponents br_formattedName];

  return br_formattedName;
}

- (id)descriptionWithContext:(id)context
{
  contextCopy = context;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
  ckInfo = self->_ckInfo;
  if (ckInfo)
  {
    etag = [(BRFieldCKInfo *)ckInfo etag];
    [v5 appendFormat:@"etag:%@ ", etag];

    etagBeforeCrossZoneMove = [(BRFieldCKInfo *)self->_ckInfo etagBeforeCrossZoneMove];

    if (etagBeforeCrossZoneMove)
    {
      etagBeforeCrossZoneMove2 = [(BRFieldCKInfo *)self->_ckInfo etagBeforeCrossZoneMove];
      [v5 appendFormat:@"prev-etag:%@ ", etagBeforeCrossZoneMove2];
    }

    if ([(BRFieldCKInfo *)self->_ckInfo hasDeletionChangeToken])
    {
      v10 = objc_alloc(MEMORY[0x277CBC670]);
      deletionChangeToken = [(BRFieldCKInfo *)self->_ckInfo deletionChangeToken];
      v12 = [v10 initWithData:deletionChangeToken];

      v13 = [v12 descriptionWithContext:contextCopy];
      [v5 appendFormat:@"deletion-token:%@ ", v13];
    }
  }

  [v5 appendFormat:@"mt:%lld ", self->_mtime];
  v14 = [BRCDumpContext stringFromByteCount:self->_size context:contextCopy];
  [v5 appendFormat:@"sz:%@ ", v14];

  if (self->_thumbnailSize >= 1)
  {
    v15 = [BRCDumpContext stringFromByteCount:"stringFromByteCount:context:" context:?];
    [v5 appendFormat:@"tsz:%@ ", v15];
  }

  originalPOSIXName = self->_originalPOSIXName;
  if (originalPOSIXName)
  {
    fp_obfuscatedFilename = [(NSString *)originalPOSIXName fp_obfuscatedFilename];
    [v5 appendFormat:@"n:%@ ", fp_obfuscatedFilename];
  }

  contentSignature = self->_contentSignature;
  if (contentSignature)
  {
    if ([(NSData *)contentSignature brc_signatureIsPendingPlaceHolder])
    {
      if ([(BRCVersion *)self isPackage])
      {
        brc_hexadecimalString = @"<pkg-pending>";
      }

      else
      {
        brc_hexadecimalString = @"<file-pending>";
      }
    }

    else
    {
      brc_hexadecimalString = [(NSData *)self->_contentSignature brc_hexadecimalString];
    }

    v20 = [BRCDumpContext highlightedString:brc_hexadecimalString type:2 context:contextCopy];
    [v5 appendFormat:@"sig:%@ ", v20];
  }

  thumbnailSignature = self->_thumbnailSignature;
  if (thumbnailSignature)
  {
    if ([(NSData *)thumbnailSignature brc_signatureIsPendingPlaceHolder])
    {
      brc_hexadecimalString2 = @"<pending>";
    }

    else
    {
      brc_hexadecimalString2 = [(NSData *)self->_thumbnailSignature brc_hexadecimalString];
    }

    v23 = [BRCDumpContext highlightedString:brc_hexadecimalString2 type:2 context:contextCopy];
    [v5 appendFormat:@"tsig:%@ ", v23];
  }

  if ([(NSSet *)self->_conflictLoserEtags count])
  {
    allObjects = [(NSSet *)self->_conflictLoserEtags allObjects];
    v25 = [allObjects componentsJoinedByString:{@", "}];
    [v5 appendFormat:@"losers:{%@} ", v25];
  }

  editedSinceShared = self->_editedSinceShared;
  if (editedSinceShared)
  {
    [v5 appendFormat:@"ess:%ld ", -[NSNumber integerValue](editedSinceShared, "integerValue")];
  }

  if ([(BRCVersion *)self _hasLastEditorDeviceRowID])
  {
    lastEditorDeviceRowID = [(BRCVersion *)self lastEditorDeviceRowID];
    lastEditorRowID = lastEditorDeviceRowID;
    v29 = &unk_2837B00D0;
    if (lastEditorDeviceRowID)
    {
      v29 = lastEditorDeviceRowID;
    }

    [v5 appendFormat:@"device:%@ ", v29];
  }

  else
  {
    if (![(BRCVersion *)self _hasLastEditorRowID])
    {
      goto LABEL_33;
    }

    lastEditorRowID = [(BRCVersion *)self lastEditorRowID];
    [v5 appendFormat:@"last-editor:%@ ", lastEditorRowID];
  }

LABEL_33:
  xattrSignature = self->_xattrSignature;
  if (xattrSignature)
  {
    brc_hexadecimalString3 = [(NSData *)xattrSignature brc_hexadecimalString];
    [v5 appendFormat:@"ea:%@ ", brc_hexadecimalString3];
  }

  quarantineInfo = self->_quarantineInfo;
  if (quarantineInfo)
  {
    [v5 appendFormat:@"quarantine:%u ", -[NSData br_qtnFlags](quarantineInfo, "br_qtnFlags")];
  }

  [v5 deleteCharactersInRange:{objc_msgSend(v5, "length") - 1, 1}];

  return v5;
}

- (BRCVersion)initWithVersion:(id)version
{
  versionCopy = version;
  v25.receiver = self;
  v25.super_class = BRCVersion;
  v5 = [(BRCVersion *)&v25 init];
  if (v5)
  {
    v6 = [*(versionCopy + 1) copy];
    ckInfo = v5->_ckInfo;
    v5->_ckInfo = v6;

    v5->_mtime = *(versionCopy + 2);
    v8 = [*(versionCopy + 3) copy];
    originalPOSIXName = v5->_originalPOSIXName;
    v5->_originalPOSIXName = v8;

    v5->_size = *(versionCopy + 4);
    v5->_thumbnailSize = *(versionCopy + 5);
    v10 = [*(versionCopy + 6) copy];
    thumbnailSignature = v5->_thumbnailSignature;
    v5->_thumbnailSignature = v10;

    v12 = [*(versionCopy + 7) copy];
    contentSignature = v5->_contentSignature;
    v5->_contentSignature = v12;

    objc_storeStrong(&v5->_editedSinceShared, *(versionCopy + 12));
    v14 = [*(versionCopy + 13) copy];
    lastEditorDeviceOrUserRowID = v5->_lastEditorDeviceOrUserRowID;
    v5->_lastEditorDeviceOrUserRowID = v14;

    v16 = [*(versionCopy + 14) copy];
    lastEditorDeviceName = v5->_lastEditorDeviceName;
    v5->_lastEditorDeviceName = v16;

    v18 = [*(versionCopy + 11) mutableCopy];
    conflictLoserEtags = v5->_conflictLoserEtags;
    v5->_conflictLoserEtags = v18;

    v20 = [*(versionCopy + 8) copy];
    xattrSignature = v5->_xattrSignature;
    v5->_xattrSignature = v20;

    v22 = [*(versionCopy + 10) copy];
    quarantineInfo = v5->_quarantineInfo;
    v5->_quarantineInfo = v22;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithVersion:self];
}

- (unint64_t)diffAgainst:(id)against
{
  againstCopy = against;
  v5 = *(againstCopy + 1);
  v6 = self->_ckInfo;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    v9 = [(BRFieldCKInfo *)v6 isEqual:v7];

    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *(againstCopy + 13);
  v6 = self->_lastEditorDeviceOrUserRowID;
  v11 = v10;
  v12 = v11;
  if (v6 != v11)
  {
    if (v11)
    {
      v13 = [(BRFieldCKInfo *)v6 isEqual:v11];

      if (v13)
      {
        goto LABEL_13;
      }

LABEL_11:
      v14 = 0x10000;
      goto LABEL_14;
    }

LABEL_10:

    goto LABEL_11;
  }

LABEL_13:
  v14 = 0;
LABEL_14:
  v15 = *(againstCopy + 12);
  v16 = self->_editedSinceShared;
  v17 = v15;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_21;
  }

  if (!v17)
  {

    goto LABEL_20;
  }

  v19 = [(NSNumber *)v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_20:
    v14 |= 0x2000000uLL;
  }

LABEL_21:
  if (self->_mtime == *(againstCopy + 2))
  {
    v20 = v14;
  }

  else
  {
    v20 = v14 | 0x20000;
  }

  if ((v20 & 0x40000) == 0)
  {
    v21 = *(againstCopy + 3);
    v22 = self->_originalPOSIXName;
    v23 = v21;
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      if (!v23)
      {

        goto LABEL_46;
      }

      v25 = [(NSString *)v22 isEqual:v23];

      if ((v25 & 1) == 0)
      {
LABEL_46:
        v20 |= 0x40000uLL;
        if ((v20 & 0x80000) != 0)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }
  }

  if ((v20 & 0x80000) != 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (self->_size != *(againstCopy + 4))
  {
    v20 |= 0x80000uLL;
  }

LABEL_33:
  if ((v20 & 0x100000) != 0)
  {
    goto LABEL_39;
  }

  v26 = *(againstCopy + 7);
  v27 = self->_contentSignature;
  v28 = v26;
  v29 = v28;
  if (v27 == v28)
  {

    goto LABEL_39;
  }

  if (!v28)
  {

    goto LABEL_49;
  }

  v30 = [(NSData *)v27 isEqual:v28];

  if (v30)
  {
LABEL_39:
    if ((v20 & 0x400000) != 0)
    {
      goto LABEL_53;
    }

LABEL_40:
    v31 = *(againstCopy + 6);
    v32 = self->_thumbnailSignature;
    v33 = v31;
    v34 = v33;
    if (v32 == v33)
    {

      goto LABEL_53;
    }

    if (v33)
    {
      v35 = [(NSData *)v32 isEqual:v33];

      if (v35)
      {
        goto LABEL_53;
      }
    }

    else
    {
    }

    v20 |= 0x400000uLL;
    goto LABEL_53;
  }

LABEL_49:
  v20 |= 0x100000uLL;
  if ((v20 & 0x400000) == 0)
  {
    goto LABEL_40;
  }

LABEL_53:
  if ((v20 & 0x800000) != 0)
  {
    goto LABEL_59;
  }

  v36 = *(againstCopy + 11);
  v37 = self->_conflictLoserEtags;
  v38 = v36;
  v39 = v38;
  if (v37 == v38)
  {

    goto LABEL_59;
  }

  if (!v38)
  {

    goto LABEL_66;
  }

  v40 = [(NSSet *)v37 isEqual:v38];

  if (v40)
  {
LABEL_59:
    if ((v20 & 0x200000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_60;
  }

LABEL_66:
  v20 |= 0x800000uLL;
  if ((v20 & 0x200000) != 0)
  {
    goto LABEL_70;
  }

LABEL_60:
  v41 = *(againstCopy + 8);
  v42 = self->_xattrSignature;
  v43 = v41;
  v44 = v43;
  if (v42 == v43)
  {
  }

  else
  {
    if (v43)
    {
      v45 = [(NSData *)v42 isEqual:v43];

      if (v45)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }

    v20 |= 0x200000uLL;
  }

LABEL_70:
  if ((v20 & 0x1000000) == 0 && !BRCQuarantineInfoIsEqual(self->_quarantineInfo, *(againstCopy + 10)))
  {
    v20 |= 0x1000000uLL;
  }

  return v20;
}

- (BOOL)isEtagEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  ckInfo = [equal ckInfo];
  hasEtag = [ckInfo hasEtag];
  if (hasEtag == [(BRFieldCKInfo *)self->_ckInfo hasEtag])
  {
    etag = [ckInfo etag];
    etag2 = [(BRFieldCKInfo *)self->_ckInfo etag];
    v6 = [etag isEqualToString:etag2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)additionNameForItemID:(id)d zoneID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  br_pathExtension = [(NSString *)self->_originalPOSIXName br_pathExtension];
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  zoneName = [iDCopy zoneName];
  [v9 appendString:zoneName];

  [v9 replaceOccurrencesOfString:@"." withString:@"~" options:0 range:{0, objc_msgSend(v9, "length")}];
  ownerName = [iDCopy ownerName];
  v12 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  if ((v12 & 1) == 0)
  {
    ownerName2 = [iDCopy ownerName];
    [v9 appendFormat:@":%@", ownerName2];
  }

  v14 = [br_pathExtension length];
  itemIDString = [dCopy itemIDString];
  etag = [(BRFieldCKInfo *)self->_ckInfo etag];
  v17 = etag;
  if (v14)
  {
    [v9 appendFormat:@"_%@_%@.%@", itemIDString, etag, br_pathExtension];
  }

  else
  {
    [v9 appendFormat:@"_%@_%@", itemIDString, etag, v19];
  }

  return v9;
}

- (id)uti
{
  originalPOSIXName = [(BRCVersion *)self originalPOSIXName];
  br_pathExtension = [originalPOSIXName br_pathExtension];

  v4 = *MEMORY[0x277CC2050];
  if ([br_pathExtension length])
  {
    v5 = +[BRCUTITypeCache defaultCache];
    v6 = [v5 UTIForExtension:br_pathExtension];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;

    v4 = v9;
  }

  return v4;
}

- (BOOL)isSmallAndMostRecentClientsGenerateThumbnails
{
  v21 = *MEMORY[0x277D85DE8];
  if (![(BRCVersion *)self size])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(BRCVersion *)v5 isSmallAndMostRecentClientsGenerateThumbnails];
    }

    goto LABEL_7;
  }

  v3 = [BRCUserDefaults defaultsForMangledID:0];
  minFileSizeForThumbnailTransfer = [v3 minFileSizeForThumbnailTransfer];

  if ([(BRCVersion *)self size]<= minFileSizeForThumbnailTransfer)
  {
    v5 = [(BRCVersion *)self uti];
    v9 = [MEMORY[0x277CDAB08] canMostRecentClientsGenerateThumbnailsForUTI:v5];
    if (v9)
    {
      v6 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [BRCDumpContext stringFromByteCount:[(BRCVersion *)self size] context:0];
        v15 = 138412802;
        v16 = v11;
        v17 = 2112;
        v18 = v5;
        v19 = 2112;
        v20 = v6;
        v12 = "[DEBUG] Being greedy because the document is small %@ and QL can generate a thumbnail for %@%@";
LABEL_15:
        _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, v12, &v15, 0x20u);
      }
    }

    else
    {
      v6 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [BRCDumpContext stringFromByteCount:[(BRCVersion *)self size] context:0];
        v15 = 138412802;
        v16 = v11;
        v17 = 2112;
        v18 = v5;
        v19 = 2112;
        v20 = v6;
        v12 = "[DEBUG] Not being greedy even though the document is small %@: QL can’t generate a thumbnail for %@%@";
        goto LABEL_15;
      }
    }

    goto LABEL_13;
  }

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [BRCDumpContext stringFromByteCount:[(BRCVersion *)self size] context:0];
    v8 = [BRCDumpContext stringFromByteCount:minFileSizeForThumbnailTransfer context:0];
    v15 = 138412802;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Not being greedy because document is bigger %@ than minimum size (%@) to generate a thumbnail%@", &v15, 0x20u);
  }

LABEL_7:
  LOBYTE(v9) = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)lazyXattrWithXattrStager:(id)stager
{
  v22 = *MEMORY[0x277D85DE8];
  stagerCopy = stager;
  v5 = stagerCopy;
  if (self->_xattrSignature)
  {
    lazyXattr = self->_lazyXattr;
    if (lazyXattr)
    {
      v7 = lazyXattr;
    }

    else
    {
      v8 = [stagerCopy loadXattrBlobForSignature:? error:?];
      v9 = self->_lazyXattr;
      self->_lazyXattr = v8;

      v10 = self->_lazyXattr;
      if (!v10)
      {
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          xattrSignature = self->_xattrSignature;
          *buf = 138412802;
          v17 = xattrSignature;
          v18 = 2112;
          v19 = 0;
          v20 = 2112;
          v21 = v11;
          _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to load xattr with signature %@ - %@%@", buf, 0x20u);
        }

        v10 = self->_lazyXattr;
      }

      v7 = v10;
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setLastEditorDeviceRowID:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: ![self _hasLastEditorRowID]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)setLastEditorDeviceRowID:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: lastEditorDeviceRowID && lastEditorDeviceRowID.longLongValue > 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)setLastEditorRowID:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !_lastEditorDeviceOrUserRowID || ![self _hasLastEditorDeviceRowID]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)isPackage
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _contentSignature%@", &v7, 0xCu);
  }

  *a2 = *self;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isSmallAndMostRecentClientsGenerateThumbnails
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Not being greedy because current version size is 0%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end