@interface _NSAttributedStringAgentService
+ (id)sharedApplication;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_NSAttributedStringAgentService)init;
@end

@implementation _NSAttributedStringAgentService

+ (id)sharedApplication
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = qword_100008698;
  v10 = qword_100008698;
  if (!qword_100008698)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100001148;
    v6[3] = &unk_1000041C8;
    v6[4] = &v7;
    sub_100001148(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  sharedApplication = [v2 sharedApplication];

  return sharedApplication;
}

- (_NSAttributedStringAgentService)init
{
  v6.receiver = self;
  v6.super_class = _NSAttributedStringAgentService;
  v2 = [(_NSAttributedStringAgentService *)&v6 init];
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.textkit.nsattributedstringagent"];
  listener = v2->_listener;
  v2->_listener = v3;

  [(NSXPCListener *)v2->_listener setDelegate:v2];
  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[NSAttributedString _allowedTokensClasses];
  v6 = +[NSAttributedString _allowedOptionClasses];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____NSAttributedStringAgentProtocol];
  [v7 setClasses:v6 forSelector:"renderHTML:options:extensionTokens:withReply:" argumentIndex:1 ofReply:0];
  [v7 setClasses:v5 forSelector:"renderHTML:options:extensionTokens:withReply:" argumentIndex:2 ofReply:0];
  [v7 setClasses:v6 forSelector:"renderHTML:options:extensionTokens:withReply:" argumentIndex:0 ofReply:1];
  [v7 setClasses:v6 forSelector:"readFromData:orFileURL:options:extensionTokens:withReply:" argumentIndex:2 ofReply:0];
  [v7 setClasses:v5 forSelector:"readFromData:orFileURL:options:extensionTokens:withReply:" argumentIndex:3 ofReply:0];
  [v7 setClasses:v6 forSelector:"readFromData:orFileURL:options:extensionTokens:withReply:" argumentIndex:1 ofReply:1];
  [connectionCopy setExportedInterface:v7];
  v8 = objc_opt_new();
  [connectionCopy setExportedObject:v8];
  [connectionCopy resume];

  return 1;
}

@end