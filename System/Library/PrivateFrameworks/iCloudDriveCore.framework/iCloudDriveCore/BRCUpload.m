@interface BRCUpload
- (BRCUpload)initWithDocument:(id)a3 stageID:(id)a4 transferSize:(unint64_t)a5;
- (void)dealloc;
- (void)recreateProgress;
@end

@implementation BRCUpload

- (BRCUpload)initWithDocument:(id)a3 stageID:(id)a4 transferSize:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = BRCUpload;
  v10 = [(BRCUpload *)&v16 init];
  if (v10)
  {
    v11 = [v8 itemID];
    itemID = v10->_itemID;
    v10->_itemID = v11;

    v10->_throttleID = [v8 dbRowID];
    v10->_totalSize = a5;
    objc_storeStrong(&v10->_stageID, a4);
    v13 = [BRCProgress uploadProgressForDocument:v8 totalUnitCount:a5 completedUnitCount:0];
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