@interface VoicemailMessageWrapper
- (BOOL)isUnread;
- (NSDate)date;
- (NSString)description;
- (NSString)senderDestinationID;
- (NSString)vmIdentifier;
- (NSURL)dataURL;
- (_TtC18PhoneIntentHandler23VoicemailMessageWrapper)init;
- (double)duration;
@end

@implementation VoicemailMessageWrapper

- (NSString)vmIdentifier
{
  v3 = sub_100030E08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR____TtC18PhoneIntentHandler23VoicemailMessageWrapper_wrapped);
  v9 = self;
  sub_100030E28();
  sub_100030DF8();

  (*(v4 + 8))(v7, v3);
  v10 = sub_100030F58();

  return v10;
}

- (NSDate)date
{
  v3 = sub_100030DD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR____TtC18PhoneIntentHandler23VoicemailMessageWrapper_wrapped);
  v9 = self;
  sub_100030E38();

  v10.super.isa = sub_100030DB8().super.isa;
  (*(v4 + 8))(v7, v3);

  return v10.super.isa;
}

- (double)duration
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18PhoneIntentHandler23VoicemailMessageWrapper_wrapped);
  v3 = self;
  sub_100030E88();
  v5 = v4;

  return v5;
}

- (NSString)senderDestinationID
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18PhoneIntentHandler23VoicemailMessageWrapper_wrapped);
  v3 = self;
  sub_100030E68();

  v4 = sub_100030F58();

  return v4;
}

- (BOOL)isUnread
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18PhoneIntentHandler23VoicemailMessageWrapper_wrapped);
  v3 = self;
  LOBYTE(v2) = sub_100030E78();

  return (v2 & 1) == 0;
}

- (NSURL)dataURL
{
  v3 = sub_100030DA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_100028B98(v7);

  sub_100030D88(v9);
  v11 = v10;
  (*(v4 + 8))(v7, v3);

  return v11;
}

- (NSString)description
{
  v2 = self;
  sub_100028E04();

  v3 = sub_100030F58();

  return v3;
}

- (_TtC18PhoneIntentHandler23VoicemailMessageWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end