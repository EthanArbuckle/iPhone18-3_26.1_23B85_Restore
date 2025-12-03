@interface TSPPackageMetadataDataInfo
- (TSPPackageMetadataDataInfo)initWithDataInfo:(const void *)info decryptionKey:(id)key;
- (id)dataStorageWithPackage:(id)package documentURL:(id)l;
@end

@implementation TSPPackageMetadataDataInfo

- (TSPPackageMetadataDataInfo)initWithDataInfo:(const void *)info decryptionKey:(id)key
{
  keyCopy = key;
  v7 = [TSPDigest alloc];
  v9 = objc_msgSend_initFromProtobufString_(v7, v8, *(info + 3) & 0xFFFFFFFFFFFFFFFELL);
  if (v9)
  {
    v37.receiver = self;
    v37.super_class = TSPPackageMetadataDataInfo;
    v10 = [(TSPPackageMetadataDataInfo *)&v37 init];
    v11 = v10;
    if (v10)
    {
      v10->_identifier = *(info + 14);
      objc_storeStrong(&v10->_digest, v9);
      v13 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v12, *(info + 4) & 0xFFFFFFFFFFFFFFFELL);
      preferredFilename = v11->_preferredFilename;
      v11->_preferredFilename = v13;

      if ((*(info + 16) & 4) != 0)
      {
        v16 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v15, *(info + 5) & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        v16 = v11->_preferredFilename;
      }

      filename = v11->_filename;
      v11->_filename = v16;

      v20 = *(info + 4);
      if ((v20 & 0x20) != 0)
      {
        v22 = *(info + 8) & 0xFFFFFFFFFFFFFFFELL;
        v23 = *(v22 + 23);
        if (v23 < 0)
        {
          v23 = *(v22 + 8);
        }

        v21 = v23 != 0;
      }

      else
      {
        v21 = 0;
      }

      v11->_isUnmaterializedRemoteData = v21;
      if ((v20 & 0x20000) != 0)
      {
        v24 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v19, *(info + 18));
        materializedLength = v11->_materializedLength;
        v11->_materializedLength = v24;
      }

      v26 = *(info + 4);
      if (keyCopy)
      {
        if ((v26 & 0x200) != 0)
        {
          v27 = sub_276AB6E08(keyCopy, *(info + 12));
        }

        else
        {
          v27 = keyCopy;
        }

        decryptionInfo = v11->_decryptionInfo;
        v11->_decryptionInfo = v27;
      }

      else
      {
        if ((v26 & 0x200) != 0)
        {
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPPackageMetadataDataInfo initWithDataInfo:decryptionKey:]");
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageMetadata.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 146, 0, "Encryption info should not be set when the document it not encrypted.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
        }

        decryptionInfo = v11->_decryptionInfo;
        v11->_decryptionInfo = 0;
      }
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dataStorageWithPackage:(id)package documentURL:(id)l
{
  packageCopy = package;
  lCopy = l;
  v11 = objc_msgSend_dataEntryPathForFilename_(TSPPackage, v8, self->_filename);
  materializedLength = self->_materializedLength;
  decryptionInfo = self->_decryptionInfo;
  if (materializedLength)
  {
    v14 = objc_msgSend_unsignedLongLongValue(materializedLength, v9, v10);
    ModificationDate = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(packageCopy, v15, v11, decryptionInfo, v14, lCopy, 0);
  }

  else
  {
    ModificationDate = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(packageCopy, v9, v11, decryptionInfo, -1, lCopy, 0);
  }

  v17 = ModificationDate;

  return v17;
}

@end