@interface TSCH3DFillSetIdentifier
+ (id)identifierWithContentsOfDictionary:(id)dictionary;
+ (id)identifierWithFillName:(id)name seriesName:(id)seriesName textureSetID:(id)d;
+ (id)identifierWithFillPropertyType:(int)type seriesIndex:(unint64_t)index textureSetID:(id)d;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)instanceWithDEPRECATEDArchive:(const void *)archive unarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSageCompatible;
- (BOOL)isStoredInLocalBundle;
- (TSCH3DFillSetIdentifier)init;
- (TSCH3DFillSetIdentifier)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSCH3DFillSetIdentifier)initWithContentsOfDictionary:(id)dictionary;
- (TSCH3DFillSetIdentifier)initWithFillName:(id)name seriesName:(id)seriesName textureSetID:(id)d;
- (TSCH3DFillSetIdentifier)initWithFillPropertyType:(int)type seriesIndex:(unint64_t)index textureSetID:(id)d;
- (id)description;
- (id)dictionaryRepresentation;
- (id)loadPropertiesDictionary;
- (id)localDirectoryPath;
- (id)lowResLocalDirectoryPath;
- (id)mipmapLocalDirectoryPath;
- (id)mipmapOnDemandResourceTag;
- (id)p_getPlist;
- (id)p_loadPlist;
- (id)p_plistData;
- (id)p_plistPath;
- (id)p_sageFillPropertyNames;
- (id)p_sageFillSetList;
- (id)p_sageSeriesNames;
- (id)p_version;
- (id)sageFillName;
- (id)sageSeriesName;
- (id)textureOnDemandResourceTag;
- (int)fillPropertyTypeFromName:(id)name;
- (unint64_t)countOfSeriesInFillSet;
- (unint64_t)hash;
- (unint64_t)seriesIndex;
- (unint64_t)seriesIndexFromSageSeriesName:(id)name;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setSeriesIndex:(unint64_t)index;
@end

@implementation TSCH3DFillSetIdentifier

- (TSCH3DFillSetIdentifier)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v41 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = TSUSpecificCast();
    if (!v6)
    {
      goto LABEL_10;
    }

    if (!self->_textureSetID)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DFillSetIdentifier isEqual:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifier.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 51, 0, "invalid nil value for '%{public}s'", "_textureSetID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    v25 = *(v6 + 8);
    if (!v25)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DFillSetIdentifier isEqual:]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifier.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 52, 0, "invalid nil value for '%{public}s'", "other->_textureSetID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
      v25 = *(v6 + 8);
    }

    if (objc_msgSend_isEqual_(self->_textureSetID, v5, v7, v8, v9, v25) && self->_seriesIndex == *(v6 + 16))
    {
      v41 = self->_fillPropertyType == *(v6 + 20);
    }

    else
    {
LABEL_10:
      v41 = 0;
    }
  }

  return v41;
}

- (unint64_t)hash
{
  v7 = objc_msgSend_hash(self->_textureSetID, a2, v2, v3, v4);
  fillPropertyType = self->_fillPropertyType;
  seriesIndex = self->_seriesIndex;
  if ((fillPropertyType & 0x80000000) != 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DFillSetIdentifier hash]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifier.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 61, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    fillPropertyType = 0;
  }

  return v7 + seriesIndex + fillPropertyType;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DFillSetIdentifier;
  v4 = [(TSCH3DFillSetIdentifier *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(id %@, index %ld, type %ld)", v4, self->_textureSetID, self->_seriesIndex, self->_fillPropertyType);

  return v9;
}

- (unint64_t)seriesIndex
{
  seriesIndex = self->_seriesIndex;
  if (seriesIndex < 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DFillSetIdentifier seriesIndex]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifier.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 70, 0, "invalid series index %ld", self->_seriesIndex);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    seriesIndex = self->_seriesIndex;
  }

  return seriesIndex & ~(seriesIndex >> 31);
}

- (void)setSeriesIndex:(unint64_t)index
{
  if (index >> 31)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DFillSetIdentifier setSeriesIndex:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifier.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 75, 0, "Out-of-bounds type assignment failed");

    v21 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v21, v17, v18, v19, v20);
  }

  else
  {
    self->_seriesIndex = index;
  }
}

- (id)localDirectoryPath
{
  v6 = objc_msgSend_quicklookAssetMap(MEMORY[0x277D812E8], a2, v2, v3, v4);
  v11 = objc_msgSend_appAssetPath(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_textureSetFilename(self, v12, v13, v14, v15);
  v21 = objc_msgSend_stringByAppendingPathComponent_(v11, v17, v18, v19, v20, v16);

  return v21;
}

- (id)lowResLocalDirectoryPath
{
  v6 = objc_msgSend_quicklookAssetMap(MEMORY[0x277D812E8], a2, v2, v3, v4);
  v11 = objc_msgSend_appAssetPath(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_textureSetFilename(self, v12, v13, v14, v15);
  v21 = objc_msgSend_stringByAppendingPathComponent_(v11, v17, v18, v19, v20, v16);

  return v21;
}

- (id)mipmapLocalDirectoryPath
{
  v6 = objc_msgSend_quicklookAssetMap(MEMORY[0x277D812E8], a2, v2, v3, v4);
  v11 = objc_msgSend_appAssetPath(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_textureSetFilename(self, v12, v13, v14, v15);
  v21 = objc_msgSend_stringByAppendingPathComponent_(v11, v17, v18, v19, v20, v16);

  return v21;
}

- (id)textureOnDemandResourceTag
{
  if (objc_msgSend_isOnDemandResource(self, a2, v2, v3, v4))
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_msgSend_textureSetID(self, v6, v7, v8, v9);
    v16 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v11, v12, v13, v14, v15, @" ", &stru_288528678);
    v21 = objc_msgSend_stringWithFormat_(v10, v17, v18, v19, v20, @"TSCHTexture%@", v16);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)mipmapOnDemandResourceTag
{
  if (objc_msgSend_isOnDemandResource(self, a2, v2, v3, v4))
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_msgSend_textureSetID(self, v6, v7, v8, v9);
    v16 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v11, v12, v13, v14, v15, @" ", &stru_288528678);
    v21 = objc_msgSend_stringWithFormat_(v10, v17, v18, v19, v20, @"TSCHTexture%@Mipmaps", v16);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)isStoredInLocalBundle
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v8 = objc_msgSend_localDirectoryPath(self, v4, v5, v6, v7);
  v13 = objc_msgSend_fileExistsAtPath_(v3, v9, v10, v11, v12, v8);

  v18 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v14, v15, v16, v17);
  v23 = objc_msgSend_designModeEnabled(v18, v19, v20, v21, v22);

  if (!(v13 & 1 | ((v23 & 1) == 0)))
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCH3DFillSetIdentifier isStoredInLocalBundle]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifier.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 122, 0, "No local bundle found for fillset: %@", self->_textureSetID);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  return (v13 | v23) & 1;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v7 = sub_2761DEEC8(archive, a2, v4, v5, v6);

  return v7;
}

- (TSCH3DFillSetIdentifier)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v12.receiver = self;
  v12.super_class = TSCH3DFillSetIdentifier;
  v6 = [(TSCH3DFillSetIdentifier *)&v12 init:archive];
  if (!v6)
  {
    return 0;
  }

  v10 = sub_2761DEEC8(archive, v5, v7, v8, v9);

  return v10;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  if (!self->_textureSetID)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DFillSetIdentifier(PersistenceAdditions) saveToArchive:archiver:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifier.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 180, 0, "invalid nil value for '%{public}s'", "_textureSetID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (!self->_fillPropertyType)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DFillSetIdentifier(PersistenceAdditions) saveToArchive:archiver:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifier.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 181, 0, "fill property type undefined");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  v40 = objc_msgSend_tsp_protobufString(self->_textureSetID, v6, v7, v8, v9);
  sub_2761DF274(archive, v40);
  fillPropertyType = self->_fillPropertyType;
  if ((fillPropertyType - 1) >= 5)
  {
    fillPropertyType = 0;
  }

  v42 = *(archive + 4);
  *(archive + 4) = v42 | 4;
  *(archive + 10) = fillPropertyType;
  seriesIndex = self->_seriesIndex;
  *(archive + 4) = v42 | 0xC;
  *(archive + 11) = seriesIndex;
}

+ (id)instanceWithDEPRECATEDArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v10 = *(archive + 4);
  if ((v10 & 8) != 0)
  {
    if ((~v10 & 0x11) == 0)
    {
      v14 = *(archive + 12);
      v13 = *(archive + 13);
      v16 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v5, v7, v8, v9, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
      if (v14 - 1 >= 5)
      {
        objc_msgSend_identifierWithFillPropertyType_seriesIndex_textureSetID_(TSCH3DFillSetIdentifier, v15, v17, v18, v19, 0, v13, v16);
      }

      else
      {
        objc_msgSend_identifierWithFillPropertyType_seriesIndex_textureSetID_(TSCH3DFillSetIdentifier, v15, v17, v18, v19, v14, v13, v16);
      }
      v20 = ;

      goto LABEL_15;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }

    v11 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    if (v12 < 0)
    {
      v12 = *(v11 + 8);
    }

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  v21 = MEMORY[0x277D81150];
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "TSCH3DFillSetIdentifier *TSCH3DFillSetIdentifierWithArchive(const T &) [T = TSCH::DEPRECATEDChart3DFillArchive]");
  v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifier.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 160, 0, "TSCH3DFillSetIdentifierWithArchive invalid fill identifier encountered");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
LABEL_14:
  v20 = 0;
LABEL_15:

  return v20;
}

+ (id)identifierWithFillName:(id)name seriesName:(id)seriesName textureSetID:(id)d
{
  nameCopy = name;
  seriesNameCopy = seriesName;
  dCopy = d;
  v11 = [self alloc];
  v16 = objc_msgSend_initWithFillName_seriesName_textureSetID_(v11, v12, v13, v14, v15, nameCopy, seriesNameCopy, dCopy);

  return v16;
}

- (TSCH3DFillSetIdentifier)initWithFillName:(id)name seriesName:(id)seriesName textureSetID:(id)d
{
  nameCopy = name;
  seriesNameCopy = seriesName;
  dCopy = d;
  v15 = dCopy;
  if (nameCopy && seriesNameCopy && dCopy)
  {
    v16 = objc_msgSend_fillPropertyTypeFromName_(self, v11, v12, v13, v14, nameCopy);
    v21 = objc_msgSend_seriesIndexFromSageSeriesName_(self, v17, v18, v19, v20, seriesNameCopy);
    v26 = objc_msgSend_initWithFillPropertyType_seriesIndex_textureSetID_(self, v22, v23, v24, v25, v16, v21, v15);
  }

  else
  {

    v26 = 0;
  }

  return v26;
}

+ (id)identifierWithFillPropertyType:(int)type seriesIndex:(unint64_t)index textureSetID:(id)d
{
  v6 = *&type;
  dCopy = d;
  v9 = [self alloc];
  v14 = objc_msgSend_initWithFillPropertyType_seriesIndex_textureSetID_(v9, v10, v11, v12, v13, v6, index, dCopy);

  return v14;
}

- (TSCH3DFillSetIdentifier)initWithFillPropertyType:(int)type seriesIndex:(unint64_t)index textureSetID:(id)d
{
  dCopy = d;
  v51.receiver = self;
  v51.super_class = TSCH3DFillSetIdentifier;
  v10 = [(TSCH3DFillSetIdentifier *)&v51 init];
  if (v10)
  {
    if (!type)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DFillSetIdentifier(ImportExportAdditions) initWithFillPropertyType:seriesIndex:textureSetID:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 51, 0, "invalid 3D fill property type %lu", 0);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    if (dCopy)
    {
      v29 = objc_msgSend_copy(dCopy, v9, v11, v12, v13);
      textureSetID = v10->_textureSetID;
      v10->_textureSetID = v29;

      if (index >> 31)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "[TSCH3DFillSetIdentifier(ImportExportAdditions) initWithFillPropertyType:seriesIndex:textureSetID:]");
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 54, 0, "Out-of-bounds type assignment failed");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
      }

      else
      {
        v10->_seriesIndex = index;
      }

      v10->_fillPropertyType = type;
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

+ (id)identifierWithContentsOfDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithContentsOfDictionary_(v5, v6, v7, v8, v9, dictionaryCopy);

  return v10;
}

- (TSCH3DFillSetIdentifier)initWithContentsOfDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9 = objc_msgSend_objectForKey_(dictionaryCopy, v5, v6, v7, v8, @"textureSetID");
  v14 = objc_msgSend_objectForKey_(dictionaryCopy, v10, v11, v12, v13, @"seriesIndex");
  v19 = objc_msgSend_objectForKey_(dictionaryCopy, v15, v16, v17, v18, @"fillPropertyType");
  v24 = v19;
  if (!v9 || !v14 || !v19)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCH3DFillSetIdentifier(ImportExportAdditions) initWithContentsOfDictionary:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 71, 0, "invalid dictionary contents %@", dictionaryCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  v40 = objc_msgSend_unsignedIntegerValue(v24, v20, v21, v22, v23);
  v45 = objc_msgSend_unsignedIntegerValue(v14, v41, v42, v43, v44);
  v50 = objc_msgSend_initWithFillPropertyType_seriesIndex_textureSetID_(self, v46, v47, v48, v49, v40, v45, v9);

  return v50;
}

- (id)dictionaryRepresentation
{
  v35[3] = *MEMORY[0x277D85DE8];
  textureSetID = self->_textureSetID;
  if (!textureSetID)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DFillSetIdentifier(ImportExportAdditions) dictionaryRepresentation]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 76, 0, "invalid nil value for '%{public}s'", "_textureSetID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    textureSetID = self->_textureSetID;
  }

  v35[0] = textureSetID;
  v34[0] = @"textureSetID";
  v34[1] = @"seriesIndex";
  v22 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], a2, v2, v3, v4, self->_seriesIndex);
  v35[1] = v22;
  v34[2] = @"fillPropertyType";
  v27 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v23, v24, v25, v26, self->_fillPropertyType);
  v35[2] = v27;
  v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v29, v30, v31, v35, v34, 3);

  return v32;
}

- (id)p_sageFillPropertyNames
{
  if (qword_280A46A20 != -1)
  {
    sub_2764A6D8C();
  }

  v3 = qword_280A46A18;

  return v3;
}

- (id)sageFillName
{
  v6 = objc_msgSend_p_sageFillPropertyNames(self, a2, v2, v3, v4);
  v11 = v6;
  fillPropertyType = self->_fillPropertyType;
  if (!fillPropertyType || objc_msgSend_count(v6, v7, v8, v9, v10) <= fillPropertyType)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DFillSetIdentifier(ImportExportAdditions) sageFillName]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 108, 0, "property type not initialized");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_objectAtIndexedSubscript_(v11, v7, v8, v9, v10, self->_fillPropertyType);

  return v28;
}

- (int)fillPropertyTypeFromName:(id)name
{
  nameCopy = name;
  v9 = objc_msgSend_p_sageFillPropertyNames(self, v5, v6, v7, v8);
  v14 = objc_msgSend_indexOfObject_(v9, v10, v11, v12, v13, nameCopy);

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DFillSetIdentifier(ImportExportAdditions) fillPropertyTypeFromName:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 114, 0, "invalid fill property name %@", nameCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  return v14;
}

- (id)p_sageSeriesNames
{
  if (qword_280A46A30 != -1)
  {
    sub_2764A6DA0();
  }

  v3 = qword_280A46A28;

  return v3;
}

- (id)sageSeriesName
{
  v6 = objc_msgSend_p_sageSeriesNames(self, a2, v2, v3, v4);
  v11 = objc_msgSend_seriesIndex(self, v7, v8, v9, v10);
  if (v11 >= objc_msgSend_count(v6, v12, v13, v14, v15))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DFillSetIdentifier(ImportExportAdditions) sageSeriesName]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
    v36 = objc_msgSend_seriesIndex(self, v32, v33, v34, v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v37, v38, v39, v40, v26, v31, 140, 0, "invalid series index %lu. Using the first series as a fallback", v36);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    objc_msgSend_objectAtIndexedSubscript_(v6, v45, v46, v47, v48, 0);
  }

  else
  {
    v20 = objc_msgSend_seriesIndex(self, v16, v17, v18, v19);
    objc_msgSend_objectAtIndexedSubscript_(v6, v21, v22, v23, v24, v20);
  }
  v49 = ;

  return v49;
}

- (unint64_t)seriesIndexFromSageSeriesName:(id)name
{
  nameCopy = name;
  v9 = objc_msgSend_p_sageSeriesNames(self, v5, v6, v7, v8);
  v14 = objc_msgSend_indexOfObject_(v9, v10, v11, v12, v13, nameCopy);

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DFillSetIdentifier(ImportExportAdditions) seriesIndexFromSageSeriesName:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 148, 0, "invalid series name %@", nameCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  return v14;
}

- (id)p_sageFillSetList
{
  if (qword_280A46A40 != -1)
  {
    sub_2764A6DB4();
  }

  v3 = qword_280A46A38;

  return v3;
}

- (id)p_plistPath
{
  v6 = sub_276360774(v2, v3, v4);
  v11 = objc_msgSend_textureSetFilename(self, v7, v8, v9, v10);
  v16 = objc_msgSend_pathForResource_ofType_(v6, v12, v13, v14, v15, v11, @"plist");

  return v16;
}

- (id)p_plistData
{
  v5 = MEMORY[0x277CBEA90];
  v6 = objc_msgSend_p_plistPath(self, a2, v2, v3, v4);
  v11 = objc_msgSend_dataWithContentsOfFile_(v5, v7, v8, v9, v10, v6);

  return v11;
}

- (id)p_loadPlist
{
  v6 = objc_msgSend_p_plistData(self, a2, v2, v3, v4);
  v54 = 0;
  v11 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v7, v8, v9, v10, v6, 0, 0, &v54);
  v13 = v54;
  if (v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCH3DFillSetIdentifier(ImportExportAdditions) p_loadPlist]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
    v28 = objc_msgSend_textureSetFilename(self, v24, v25, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v29, v30, v31, v32, v18, v23, 213, 0, "error occured while loading plist %@", v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    v37 = 0;
  }

  else
  {
    if (!v11)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCH3DFillSetIdentifier(ImportExportAdditions) p_loadPlist]");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 217, 0, "invalid nil value for '%{public}s'", "result");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    }

    v37 = v11;
  }

  return v37;
}

- (id)p_getPlist
{
  if (qword_280A46A50 != -1)
  {
    sub_2764A6DC8();
  }

  v6 = objc_msgSend_textureSetFilename(self, a2, v2, v3, v4);
  v12 = objc_msgSend_objectForKey_(qword_280A46A48, v7, v8, v9, v10, v6);
  if (!v12)
  {
    v12 = objc_msgSend_p_loadPlist(self, v11, v13, v14, v15);
    if (v12)
    {
      objc_msgSend_setObject_forKey_(qword_280A46A48, v16, v17, v18, v19, v12, v6);
    }
  }

  return v12;
}

- (id)p_version
{
  v5 = objc_msgSend_p_getPlist(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_objectForKey_(v5, v6, v7, v8, v9, @"version");
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isSageCompatible
{
  v5 = objc_msgSend_p_version(self, a2, v2, v3, v4);
  isEqualToString = objc_msgSend_isEqualToString_(v5, v6, v7, v8, v9, @"1.0");

  return isEqualToString;
}

- (id)loadPropertiesDictionary
{
  v6 = objc_msgSend_p_getPlist(self, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_objectForKey_(v6, v7, v8, v9, v10, @"fills");
    v17 = objc_msgSend_sageFillName(self, v13, v14, v15, v16);
    v22 = objc_msgSend_objectForKey_(v12, v18, v19, v20, v21, v17);

    v27 = objc_msgSend_sageSeriesName(self, v23, v24, v25, v26);
    v32 = objc_msgSend_objectForKey_(v22, v28, v29, v30, v31, v27);

    v37 = objc_msgSend_objectForKey_(v32, v33, v34, v35, v36, @"class");
    isEqualToString = objc_msgSend_isEqualToString_(v37, v38, v39, v40, v41, @"texture-package");

    if (!v12)
    {
      v47 = MEMORY[0x277D81150];
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DFillSetIdentifier(ImportExportAdditions) loadPropertiesDictionary]");
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
      v58 = objc_msgSend_textureSetFilename(self, v54, v55, v56, v57);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v59, v60, v61, v62, v48, v53, 266, 0, "%@ does not have proper fills data %@", v58, v11);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
    }

    if (!v22)
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DFillSetIdentifier(ImportExportAdditions) loadPropertiesDictionary]");
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
      v78 = objc_msgSend_sageFillName(self, v74, v75, v76, v77);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v79, v80, v81, v82, v68, v73, 267, 0, "%@ does not have fill %@", v12, v78);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86);
    }

    if (!v32)
    {
      v87 = MEMORY[0x277D81150];
      v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DFillSetIdentifier(ImportExportAdditions) loadPropertiesDictionary]");
      v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v90, v91, v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
      v98 = objc_msgSend_sageSeriesName(self, v94, v95, v96, v97);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v99, v100, v101, v102, v88, v93, 268, 0, "%@ does not have series fill %@", v22, v98);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105, v106);
    }

    if ((isEqualToString & 1) == 0)
    {
      v107 = MEMORY[0x277D81150];
      v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DFillSetIdentifier(ImportExportAdditions) loadPropertiesDictionary]");
      v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, v110, v111, v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillSetIdentifierImportExportAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v114, v115, v116, v117, v108, v113, 269, 0, "series fill %@ is not a texture package", v32);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119, v120, v121);
    }

    v122 = objc_msgSend_objectForKey_(v32, v43, v44, v45, v46, @"SFCTextureLayersArrayKey");
    v123 = (v122 != 0) & isEqualToString;

    if (v123 == 1)
    {
      v124 = v32;
    }

    else
    {
      v124 = 0;
    }
  }

  else
  {
    v124 = 0;
  }

  return v124;
}

- (unint64_t)countOfSeriesInFillSet
{
  v6 = objc_msgSend_p_getPlist(self, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_objectForKey_(v6, v7, v8, v9, v10, @"fills");
    v17 = objc_msgSend_sageFillName(self, v13, v14, v15, v16);
    v22 = objc_msgSend_objectForKey_(v12, v18, v19, v20, v21, v17);

    v27 = objc_msgSend_count(v22, v23, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end