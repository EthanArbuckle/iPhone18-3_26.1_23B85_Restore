@interface BRCDownload
- (BRCDownload)initWithDocument:(id)a3 stageID:(id)a4;
- (void)dealloc;
@end

@implementation BRCDownload

- (BRCDownload)initWithDocument:(id)a3 stageID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = BRCDownload;
  v8 = [(BRCDownload *)&v20 init];
  if (v8)
  {
    v8->_throttleID = [v6 dbRowID];
    v9 = [v6 itemID];
    itemID = v8->_itemID;
    v8->_itemID = v9;

    v11 = [v6 documentRecordID];
    recordID = v8->_recordID;
    v8->_recordID = v11;

    objc_storeStrong(&v8->_stageID, a4);
    v13 = [v6 currentVersion];
    v14 = [v13 ckInfo];
    v15 = [v14 etag];
    etag = v8->_etag;
    v8->_etag = v15;

    v17 = [v6 clientZone];
    clientZone = v8->_clientZone;
    v8->_clientZone = v17;
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