@interface LayerGeometryObserver
- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation LayerGeometryObserver

- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_observedLayers) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver__root) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919421LayerGeometryObserver_ancestor) = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(LayerGeometryObserver *)&v5 init];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (object)
    {
LABEL_3:
      swift_unknownObjectRetain();
      changeCopy = change;
      selfCopy = self;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (object)
    {
      goto LABEL_3;
    }
  }

  memset(v19, 0, sizeof(v19));
  changeCopy2 = change;
  selfCopy2 = self;
LABEL_6:
  v17 = MEMORY[0x1E69E7CA0];
  if (change)
  {
    type metadata accessor for NSKeyValueChangeKey(0);
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
    v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v18 = 0;
  }

  LayerGeometryObserver.observeValue(forKeyPath:of:change:context:)(v10, v12, v19, v18, context);

  outlined destroy of TextEffectsAnimationController.Timing?(v19, &lazy cache variable for type metadata for Any?, v17 + 8);
}

@end