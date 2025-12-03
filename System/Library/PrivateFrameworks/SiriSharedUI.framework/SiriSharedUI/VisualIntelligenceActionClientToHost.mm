@interface VisualIntelligenceActionClientToHost
- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)init;
- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithCoder:(id)coder;
- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithInfo:(id)info responder:(id)responder;
- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithXPCDictionary:(id)dictionary;
- (void)performActionForSceneController:(id)controller;
@end

@implementation VisualIntelligenceActionClientToHost

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21E4256C8(controllerCopy);
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithInfo:(id)info responder:(id)responder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  return [(VisualIntelligenceActionClientToHost *)&v7 initWithInfo:info responder:responder];
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  return [(VisualIntelligenceActionClientToHost *)&v3 init];
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  swift_unknownObjectRetain();
  v4 = [(VisualIntelligenceActionClientToHost *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  coderCopy = coder;
  v5 = [(VisualIntelligenceActionClientToHost *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC12SiriSharedUI36VisualIntelligenceActionClientToHost)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  v9 = _Block_copy(handler);
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

  infoCopy = info;
  queueCopy = queue;
  return VisualIntelligenceActionClientToHost.init(info:timeout:forResponseOn:withHandler:)(info, queue, v9, v10, timeout);
}

@end