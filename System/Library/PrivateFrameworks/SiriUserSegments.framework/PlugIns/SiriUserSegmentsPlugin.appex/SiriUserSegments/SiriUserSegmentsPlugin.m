@interface SiriUserSegmentsPlugin
- (_TtC22SiriUserSegmentsPlugin22SiriUserSegmentsPlugin)init;
- (id)performTask:(id)a3 error:(id *)a4;
@end

@implementation SiriUserSegmentsPlugin

- (id)performTask:(id)a3 error:(id *)a4
{
  v6 = sub_100001628();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001618();
  v11 = a3;
  v12 = self;
  sub_100001608();
  (*(v7 + 8))(v10, v6);
  sub_1000013FC(&_swiftEmptyArrayStorage);
  v13 = objc_allocWithZone(MLRTaskResult);
  isa = sub_100001638().super.isa;

  v15 = [v13 initWithJSONResult:isa unprivatizedVector:0];

  return v15;
}

- (_TtC22SiriUserSegmentsPlugin22SiriUserSegmentsPlugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriUserSegmentsPlugin();
  return [(SiriUserSegmentsPlugin *)&v3 init];
}

@end