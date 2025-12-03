@interface TSCHDEPRECATED3DFill
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSCHDEPRECATED3DFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)convertToTSDFill;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSCHDEPRECATED3DFill

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = [self alloc];
  v12 = objc_msgSend_initWithArchive_unarchiver_(v7, v8, v9, v10, v11, archive, unarchiverCopy);

  return v12;
}

- (TSCHDEPRECATED3DFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v36.receiver = self;
  v36.super_class = TSCHDEPRECATED3DFill;
  v8 = [(TSCHDEPRECATED3DFill *)&v36 init];
  if (v8)
  {
    v12 = objc_msgSend_instanceWithDEPRECATEDArchive_unarchiver_(TSCH3DFillSetIdentifier, v7, v9, v10, v11, archive, unarchiverCopy);
    identifier = v8->_identifier;
    v8->_identifier = v12;

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2761E810C;
    v32[3] = &unk_27A6B6A48;
    v14 = v8;
    v33 = v14;
    archiveCopy = archive;
    v34 = unarchiverCopy;
    v16 = MEMORY[0x277C98B30](v32);
    v20 = v8->_identifier;
    if (v20)
    {
      if ((objc_msgSend_isStoredInLocalBundle(v20, v15, v17, v18, v19) & 1) == 0 && (objc_msgSend_isOnDemandResource(v8->_identifier, v21, v22, v23, v24) & 1) == 0)
      {
        v16[2](v16);
      }
    }

    else
    {
      v16[2](v16);
      if (!v14->_fill && !v14->_lightingModel)
      {
        v29 = objc_msgSend_nullFill(TSCHStyleUtilities, v25, v26, v27, v28);
        fill = v14->_fill;
        v14->_fill = v29;
      }
    }
  }

  return v8;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHDEPRECATED3DFill saveToArchive:archiver:]", archiver);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 552, 0, "Should never archive this deprecated fill object %@", self);

  v23 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v23, v19, v20, v21, v22);
}

- (id)convertToTSDFill
{
  fill = self->_fill;
  if (fill)
  {
    v6 = fill;
  }

  else
  {
    v6 = objc_msgSend_fillWithLightingModel_identifier_(TSCH3DFill, a2, v2, v3, v4, self->_lightingModel, self->_identifier);
  }

  return v6;
}

@end