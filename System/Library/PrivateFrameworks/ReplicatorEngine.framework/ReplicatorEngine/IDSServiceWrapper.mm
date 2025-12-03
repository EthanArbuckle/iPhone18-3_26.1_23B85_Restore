@interface IDSServiceWrapper
- (_TtC16ReplicatorEngine17IDSServiceWrapper)init;
- (void)dealloc;
- (void)pairedDeviceStateChangedWithNotification:(id)notification;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
@end

@implementation IDSServiceWrapper

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_cancel(*(&selfCopy->super.isa + v6));
  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for IDSServiceWrapper();
  [(IDSServiceWrapper *)&v7 dealloc];
}

- (_TtC16ReplicatorEngine17IDSServiceWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  if (l)
  {
    sub_1DEF8D1A8();
    v19 = sub_1DEF8D1E8();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_1DEF8D1E8();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (metadata)
  {
    metadata = sub_1DEF8D848();
  }

  if (d)
  {
    sub_1DEF8D948();
  }

  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_1DEEE8C28(v18, metadata, contextCopy);

  sub_1DEE171B4(v18, &qword_1ECDE4890, &qword_1DEF90990);
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  if (message)
  {
    v12 = sub_1DEF8D848();
    if (!d)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (d)
  {
LABEL_3:
    sub_1DEF8D948();
  }

LABEL_4:
  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_1DEEE9470(v12, context);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  if (identifier)
  {
    v12 = sub_1DEF8D948();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  selfCopy = self;
  sub_1DEEE9BFC(v12, v14, success, error);
}

- (void)pairedDeviceStateChangedWithNotification:(id)notification
{
  selfCopy = self;
  sub_1DEEE82F8();
}

@end