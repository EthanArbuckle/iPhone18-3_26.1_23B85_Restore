@interface PBPasteboardServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PBPasteboardServer)init;
- (void)start;
@end

@implementation PBPasteboardServer

- (PBPasteboardServer)init
{
  v23.receiver = self;
  v23.super_class = PBPasteboardServer;
  v2 = [(PBPasteboardServer *)&v23 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.pasteboard.pasted"];
    pasteboardServiceListener = v2->_pasteboardServiceListener;
    v2->_pasteboardServiceListener = v3;

    [(NSXPCListener *)v2->_pasteboardServiceListener setDelegate:v2];
    v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.coreservices.uauseractivitypasteboardclient.xpc"];
    userActivityListener = v2->_userActivityListener;
    v2->_userActivityListener = v5;

    [(NSXPCListener *)v2->_userActivityListener setDelegate:v2];
    v7 = [PBDataDetectiveAgency alloc];
    v8 = objc_alloc_init(PBProbableWebDataDetective);
    v24[0] = v8;
    v9 = objc_alloc_init(PBNumberDataDetective);
    v24[1] = v9;
    v10 = objc_alloc_init(PBDataDetectorsDetective);
    v24[2] = v10;
    v11 = [NSArray arrayWithObjects:v24 count:3];
    v12 = [(PBDataDetectiveAgency *)v7 initWithDetectives:v11];
    detectiveAgency = v2->_detectiveAgency;
    v2->_detectiveAgency = v12;

    v14 = [UISSlotMachine alloc];
    v15 = objc_alloc_init(PBPasteButtonDrawer);
    v16 = [v14 initWithSlotDrawer:v15 options:3];
    pasteButtonSlotMachine = v2->_pasteButtonSlotMachine;
    v2->_pasteButtonSlotMachine = v16;

    v18 = objc_alloc_init(PBPasteAuthority);
    pasteAuthority = v2->_pasteAuthority;
    v2->_pasteAuthority = v18;

    v20 = objc_alloc_init(PBDruidRemotePasteNotifier);
    pasteNotifier = v2->_pasteNotifier;
    v2->_pasteNotifier = v20;
  }

  return v2;
}

- (void)start
{
  [(NSXPCListener *)self->_pasteboardServiceListener resume];
  userActivityListener = self->_userActivityListener;

  [(NSXPCListener *)userActivityListener resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  pasteboardServiceListener = [(PBPasteboardServer *)self pasteboardServiceListener];

  if (pasteboardServiceListener == listenerCopy)
  {
    v11 = [PBPasteboardServerServicer newServicerForConnection:connectionCopy detectiveAgency:self->_detectiveAgency pasteButtonSlotMachine:self->_pasteButtonSlotMachine pasteAuthority:self->_pasteAuthority pasteNotifier:self->_pasteNotifier];
LABEL_6:

    [connectionCopy resume];
    v10 = 1;
    goto LABEL_7;
  }

  userActivityListener = [(PBPasteboardServer *)self userActivityListener];

  if (userActivityListener == listenerCopy)
  {
    v11 = [PBUserActivityServicer newServicerForConnection:connectionCopy];
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end