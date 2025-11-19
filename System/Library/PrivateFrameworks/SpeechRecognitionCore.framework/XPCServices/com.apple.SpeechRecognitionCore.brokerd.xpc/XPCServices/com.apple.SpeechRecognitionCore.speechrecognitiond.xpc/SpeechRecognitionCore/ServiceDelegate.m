@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100051D0C(v7);

  return v9 & 1;
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond15ServiceDelegate)init
{
  v3 = sub_10005F190();
  v4 = *v3;
  v5 = v3[1];

  sub_1000C96B4();
  v7.receiver = self;
  v7.super_class = type metadata accessor for ServiceDelegate(0);
  return [(ServiceDelegate *)&v7 init];
}

@end