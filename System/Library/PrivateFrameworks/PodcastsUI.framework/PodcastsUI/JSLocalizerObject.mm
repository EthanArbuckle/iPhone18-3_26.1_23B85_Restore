@interface JSLocalizerObject
- (_TtC10PodcastsUI17JSLocalizerObject)init;
- (id)decimal:(id)decimal :(id)a4 :(id)a5 :(id)a6;
- (id)formattedDateInSentence:(id)sentence :(id)a4 :(id)a5;
- (id)formattedDateWithContext:(id)context :(id)a4 :(id)a5;
- (id)relativeDate:(id)date;
- (id)string:(id)string :(id)a4;
- (id)stringWithCount:(id)count :(id)a4 :(id)a5;
@end

@implementation JSLocalizerObject

- (id)string:(id)string :(id)a4
{
  swift_getObjectType();
  sub_21B460B84();
  stringCopy = string;
  v8 = a4;
  selfCopy = self;
  v10 = sub_21B4CA0C8();
  v11 = sub_21B4CA0D8();

  return v11;
}

- (id)decimal:(id)decimal :(id)a4 :(id)a5 :(id)a6
{
  swift_getObjectType();
  sub_21B460B84();
  decimalCopy = decimal;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  selfCopy = self;
  v16 = sub_21B4CA0C8();
  v17 = sub_21B4CA0D8();

  return v17;
}

- (id)stringWithCount:(id)count :(id)a4 :(id)a5
{
  swift_getObjectType();
  sub_21B460B84();
  countCopy = count;
  v10 = a4;
  v11 = a5;
  selfCopy = self;
  v13 = sub_21B4CA0C8();
  v14 = sub_21B4CA0D8();

  return v14;
}

- (id)formattedDateWithContext:(id)context :(id)a4 :(id)a5
{
  swift_getObjectType();
  sub_21B460B84();
  contextCopy = context;
  v10 = a4;
  v11 = a5;
  selfCopy = self;
  v13 = sub_21B4CA0C8();
  v14 = sub_21B4CA0D8();

  return v14;
}

- (id)formattedDateInSentence:(id)sentence :(id)a4 :(id)a5
{
  sub_21B460B84();
  sentenceCopy = sentence;
  v10 = a4;
  v11 = a5;
  selfCopy = self;
  v13 = sub_21B4CA0C8();
  v14 = sub_21B4CA0D8();

  return v14;
}

- (id)relativeDate:(id)date
{
  swift_getObjectType();
  sub_21B460B84();
  dateCopy = date;
  selfCopy = self;
  v7 = sub_21B4CA0C8();
  v8 = sub_21B4CA0D8();

  return v8;
}

- (_TtC10PodcastsUI17JSLocalizerObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end