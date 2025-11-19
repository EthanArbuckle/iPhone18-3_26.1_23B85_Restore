@interface PBPasteboardServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PBPasteboardServer *)self pasteboardServiceListener];

  if (v8 == v6)
  {
    v11 = [PBPasteboardServerServicer newServicerForConnection:v7 detectiveAgency:self->_detectiveAgency pasteButtonSlotMachine:self->_pasteButtonSlotMachine pasteAuthority:self->_pasteAuthority pasteNotifier:self->_pasteNotifier];
LABEL_6:

    [v7 resume];
    v10 = 1;
    goto LABEL_7;
  }

  v9 = [(PBPasteboardServer *)self userActivityListener];

  if (v9 == v6)
  {
    v11 = [PBUserActivityServicer newServicerForConnection:v7];
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end