@interface BRCDownload
- (BRCDownload)initWithDocument:(id)document stageID:(id)d;
- (void)dealloc;
@end

@implementation BRCDownload

- (BRCDownload)initWithDocument:(id)document stageID:(id)d
{
  documentCopy = document;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = BRCDownload;
  v8 = [(BRCDownload *)&v20 init];
  if (v8)
  {
    v8->_throttleID = [documentCopy dbRowID];
    itemID = [documentCopy itemID];
    itemID = v8->_itemID;
    v8->_itemID = itemID;

    documentRecordID = [documentCopy documentRecordID];
    recordID = v8->_recordID;
    v8->_recordID = documentRecordID;

    objc_storeStrong(&v8->_stageID, d);
    currentVersion = [documentCopy currentVersion];
    ckInfo = [currentVersion ckInfo];
    etag = [ckInfo etag];
    etag = v8->_etag;
    v8->_etag = etag;

    clientZone = [documentCopy clientZone];
    clientZone = v8->_clientZone;
    v8->_clientZone = clientZone;
  }

  return v8;
}

- (void)dealloc
{
  if ([(BRCDownload *)self progressPublished])
  {
    [(BRCProgress *)self->_progress brc_unpublish];
  }

  v3.receiver = self;
  v3.super_class = BRCDownload;
  [(BRCDownload *)&v3 dealloc];
}

@end