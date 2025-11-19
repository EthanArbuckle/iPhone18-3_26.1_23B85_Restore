@interface PBRemotePasteboardItemProvider
- (PBRemotePasteboardItemProvider)initWithType:(id)a3 item:(id)a4;
- (id)getFileName;
- (void)getDataFileWithCompletionBlock:(id)a3;
- (void)getDataWithCompletionBlock:(id)a3;
@end

@implementation PBRemotePasteboardItemProvider

- (PBRemotePasteboardItemProvider)initWithType:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PBRemotePasteboardItemProvider;
  v8 = [(PBRemotePasteboardItemProvider *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(PBRemotePasteboardItemProvider *)v8 setType:v6];
    [(PBRemotePasteboardItemProvider *)v9 setItem:v7];
    v10 = [v7 UUID];
    [(PBRemotePasteboardItemProvider *)v9 setUuid:v10];

    -[PBRemotePasteboardItemProvider setPreferFileRep:](v9, "setPreferFileRep:", [v7 preferredRepresentationForType:v6] != 0);
  }

  return v9;
}

- (void)getDataFileWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PBRemotePasteboardItemProvider *)self item];
  v6 = [(PBRemotePasteboardItemProvider *)self type];
  v7 = [v5 representationConformingToType:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100011400;
  v10[3] = &unk_1000318C0;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  v9 = [v7 loadWithCompletionHandler:v10];
}

- (id)getFileName
{
  v3 = [(PBRemotePasteboardItemProvider *)self item];
  v4 = [v3 metadata];
  v5 = [v4 objectForKeyedSubscript:PBMetadataSuggestedNameKey];

  v6 = [(PBRemotePasteboardItemProvider *)self type];
  v7 = PBFilenameWithProperExtension();

  return v7;
}

- (void)getDataWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PBRemotePasteboardItemProvider *)self item];
  v6 = [(PBRemotePasteboardItemProvider *)self type];
  v7 = [v5 representationConformingToType:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100011AF4;
  v10[3] = &unk_100031950;
  v11 = v4;
  v8 = v4;
  v9 = [v7 loadWithCompletionHandler:v10];
}

@end