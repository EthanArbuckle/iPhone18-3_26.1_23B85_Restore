@interface BRCUpload
- (BRCUpload)initWithDocument:(id)document stageID:(id)d transferSize:(unint64_t)size;
- (void)dealloc;
- (void)recreateProgress;
@end

@implementation BRCUpload

- (BRCUpload)initWithDocument:(id)document stageID:(id)d transferSize:(unint64_t)size
{
  documentCopy = document;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = BRCUpload;
  v10 = [(BRCUpload *)&v16 init];
  if (v10)
  {
    itemID = [documentCopy itemID];
    itemID = v10->_itemID;
    v10->_itemID = itemID;

    v10->_throttleID = [documentCopy dbRowID];
    v10->_totalSize = size;
    objc_storeStrong(&v10->_stageID, d);
    v13 = [BRCProgress uploadProgressForDocument:documentCopy totalUnitCount:size completedUnitCount:0];
    progress = v10->_progress;
    v10->_progress = v13;
  }

  return v10;
}

- (void)recreateProgress
{
  progress = self->_progress;
  if (progress)
  {
    if ([(BRCProgress *)progress isPublished])
    {
      [(BRCProgress *)self->_progress brc_unpublish];
      self->_progressPublished = 0;
    }

    v4 = [BRCProgress progressToReplaceUploadProgress:self->_progress];
    v5 = self->_progress;
    self->_progress = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)dealloc
{
  if ([(BRCUpload *)self progressPublished])
  {
    [(BRCProgress *)self->_progress brc_unpublish];
  }

  v3.receiver = self;
  v3.super_class = BRCUpload;
  [(BRCUpload *)&v3 dealloc];
}

@end