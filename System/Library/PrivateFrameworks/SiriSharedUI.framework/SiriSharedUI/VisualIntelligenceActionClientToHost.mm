@interface VisualIntelligenceActionClientToHost
- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)init;
- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithCoder:(id)a3;
- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithInfo:(id)a3 responder:(id)a4;
- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithXPCDictionary:(id)a3;
- (void)performActionForSceneController:(id)a3;
@end

@implementation VisualIntelligenceActionClientToHost

- (void)performActionForSceneController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E4256C8(v4);
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithInfo:(id)a3 responder:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  return [(VisualIntelligenceActionClientToHost *)&v7 initWithInfo:a3 responder:a4];
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  return [(VisualIntelligenceActionClientToHost *)&v3 init];
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  swift_unknownObjectRetain();
  v4 = [(VisualIntelligenceActionClientToHost *)&v6 initWithXPCDictionary:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  v4 = a3;
  v5 = [(VisualIntelligenceActionClientToHost *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_21E426DC0;
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  v12 = a5;
  return VisualIntelligenceActionClientToHost.init(info:timeout:forResponseOn:withHandler:)(a3, a5, v9, v10, a4);
}

@end