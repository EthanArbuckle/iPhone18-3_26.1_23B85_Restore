@interface PBRemotePasteboardItemProvider
- (PBRemotePasteboardItemProvider)initWithType:(id)type item:(id)item;
- (id)getFileName;
- (void)getDataFileWithCompletionBlock:(id)block;
- (void)getDataWithCompletionBlock:(id)block;
@end

@implementation PBRemotePasteboardItemProvider

- (PBRemotePasteboardItemProvider)initWithType:(id)type item:(id)item
{
  typeCopy = type;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = PBRemotePasteboardItemProvider;
  v8 = [(PBRemotePasteboardItemProvider *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(PBRemotePasteboardItemProvider *)v8 setType:typeCopy];
    [(PBRemotePasteboardItemProvider *)v9 setItem:itemCopy];
    uUID = [itemCopy UUID];
    [(PBRemotePasteboardItemProvider *)v9 setUuid:uUID];

    -[PBRemotePasteboardItemProvider setPreferFileRep:](v9, "setPreferFileRep:", [itemCopy preferredRepresentationForType:typeCopy] != 0);
  }

  return v9;
}

- (void)getDataFileWithCompletionBlock:(id)block
{
  blockCopy = block;
  item = [(PBRemotePasteboardItemProvider *)self item];
  type = [(PBRemotePasteboardItemProvider *)self type];
  v7 = [item representationConformingToType:type];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100011400;
  v10[3] = &unk_1000318C0;
  v10[4] = self;
  v11 = blockCopy;
  v8 = blockCopy;
  v9 = [v7 loadWithCompletionHandler:v10];
}

- (id)getFileName
{
  item = [(PBRemotePasteboardItemProvider *)self item];
  metadata = [item metadata];
  v5 = [metadata objectForKeyedSubscript:PBMetadataSuggestedNameKey];

  type = [(PBRemotePasteboardItemProvider *)self type];
  v7 = PBFilenameWithProperExtension();

  return v7;
}

- (void)getDataWithCompletionBlock:(id)block
{
  blockCopy = block;
  item = [(PBRemotePasteboardItemProvider *)self item];
  type = [(PBRemotePasteboardItemProvider *)self type];
  v7 = [item representationConformingToType:type];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100011AF4;
  v10[3] = &unk_100031950;
  v11 = blockCopy;
  v8 = blockCopy;
  v9 = [v7 loadWithCompletionHandler:v10];
}

@end