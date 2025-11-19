@interface TSPDatabaseObjectWithFileState
- (id)fileURL;
@end

@implementation TSPDatabaseObjectWithFileState

- (id)fileURL
{
  v12[2] = *MEMORY[0x277D85DE8];
  packageURL = self->_packageURL;
  v3 = MEMORY[0x277CCACA8];
  fileState = self->_fileState;
  v12[0] = @"data";
  v12[1] = fileState;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v12, 2);
  v7 = objc_msgSend_pathWithComponents_(v3, v6, v5);
  v9 = objc_msgSend_URLByAppendingPathComponent_(packageURL, v8, v7);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end