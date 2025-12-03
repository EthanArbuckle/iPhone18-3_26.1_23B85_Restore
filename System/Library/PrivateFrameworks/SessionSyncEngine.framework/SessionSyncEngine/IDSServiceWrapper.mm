@interface IDSServiceWrapper
- (_TtC17SessionSyncEngine17IDSServiceWrapper)init;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation IDSServiceWrapper

- (_TtC17SessionSyncEngine17IDSServiceWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  dCopy = d;
  if (message)
  {
    v12 = sub_2657F2454();
    if (dCopy)
    {
LABEL_3:
      v13 = sub_2657F2484();
      dCopy = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_2657D0180(service, v12, v13, dCopy);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  if (identifier)
  {
    v11 = sub_2657F2484();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  selfCopy = self;
  sub_2657D0ABC(v11, v13, error);
}

@end