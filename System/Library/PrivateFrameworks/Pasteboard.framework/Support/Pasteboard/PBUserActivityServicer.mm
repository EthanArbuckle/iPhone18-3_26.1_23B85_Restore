@interface PBUserActivityServicer
+ (id)newServicerForConnection:(id)connection;
- (NSXPCConnection)UAToPasteboardConnection;
- (PBUserActivityServicer)initWithConnection:(id)connection;
- (void)pasteboardWillBeFetched:(id)fetched;
@end

@implementation PBUserActivityServicer

+ (id)newServicerForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[PBUserActivityServicer alloc] initWithConnection:connectionCopy];

  return v4;
}

- (PBUserActivityServicer)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = PBUserActivityServicer;
  v5 = [(PBUserActivityServicer *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_UAToPasteboardConnection, connectionCopy);
    [connectionCopy setExportedObject:v6];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UAPasteboardClientProtocol];
    [connectionCopy setExportedInterface:v7];
  }

  return v6;
}

- (void)pasteboardWillBeFetched:(id)fetched
{
  fetchedCopy = fetched;
  v4 = +[PBPasteboardModel sharedModel];
  [v4 _remotePasteboardWillBeFetched:fetchedCopy];
}

- (NSXPCConnection)UAToPasteboardConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_UAToPasteboardConnection);

  return WeakRetained;
}

@end