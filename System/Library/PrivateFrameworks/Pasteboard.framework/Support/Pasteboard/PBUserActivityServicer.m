@interface PBUserActivityServicer
+ (id)newServicerForConnection:(id)a3;
- (NSXPCConnection)UAToPasteboardConnection;
- (PBUserActivityServicer)initWithConnection:(id)a3;
- (void)pasteboardWillBeFetched:(id)a3;
@end

@implementation PBUserActivityServicer

+ (id)newServicerForConnection:(id)a3
{
  v3 = a3;
  v4 = [[PBUserActivityServicer alloc] initWithConnection:v3];

  return v4;
}

- (PBUserActivityServicer)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PBUserActivityServicer;
  v5 = [(PBUserActivityServicer *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_UAToPasteboardConnection, v4);
    [v4 setExportedObject:v6];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UAPasteboardClientProtocol];
    [v4 setExportedInterface:v7];
  }

  return v6;
}

- (void)pasteboardWillBeFetched:(id)a3
{
  v3 = a3;
  v4 = +[PBPasteboardModel sharedModel];
  [v4 _remotePasteboardWillBeFetched:v3];
}

- (NSXPCConnection)UAToPasteboardConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_UAToPasteboardConnection);

  return WeakRetained;
}

@end