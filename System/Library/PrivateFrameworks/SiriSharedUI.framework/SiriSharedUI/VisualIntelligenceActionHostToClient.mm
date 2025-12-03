@interface VisualIntelligenceActionHostToClient
- (_TtC12SiriSharedUI36VisualIntelligenceActionHostToClient)init;
- (_TtC12SiriSharedUI36VisualIntelligenceActionHostToClient)initWithCoder:(id)coder;
- (_TtC12SiriSharedUI36VisualIntelligenceActionHostToClient)initWithInfo:(id)info responder:(id)responder;
- (_TtC12SiriSharedUI36VisualIntelligenceActionHostToClient)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (_TtC12SiriSharedUI36VisualIntelligenceActionHostToClient)initWithXPCDictionary:(id)dictionary;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation VisualIntelligenceActionHostToClient

- (void)performActionForHostedWindowScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  sub_21E47B2CC(sceneCopy);
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionHostToClient)initWithInfo:(id)info responder:(id)responder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VisualIntelligenceActionHostToClient();
  return [(VisualIntelligenceActionHostToClient *)&v7 initWithInfo:info responder:responder];
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionHostToClient)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VisualIntelligenceActionHostToClient();
  return [(VisualIntelligenceActionHostToClient *)&v3 init];
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionHostToClient)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for VisualIntelligenceActionHostToClient();
  swift_unknownObjectRetain();
  v4 = [(VisualIntelligenceActionHostToClient *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionHostToClient)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VisualIntelligenceActionHostToClient();
  coderCopy = coder;
  v5 = [(VisualIntelligenceActionHostToClient *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionHostToClient)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_21E47C4D8;
  }

  else
  {
    v10 = 0;
  }

  infoCopy = info;
  queueCopy = queue;
  return VisualIntelligenceActionHostToClient.init(info:timeout:forResponseOn:withHandler:)(info, queue, v9, v10, timeout);
}

@end