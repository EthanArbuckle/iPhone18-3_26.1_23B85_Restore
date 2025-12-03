@interface RDServiceClientConnection
- (SRDInternalClientProtocol)proxy;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection)initWithConnection:(id)connection;
@end

@implementation RDServiceClientConnection

- (SRDInternalClientProtocol)proxy
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection_proxy);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sub_10005EBE0(connectionCopy);

  return v4;
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDServiceClientConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end