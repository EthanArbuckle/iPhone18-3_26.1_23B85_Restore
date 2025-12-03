@interface ASBiomeMaterializedViewer
- (id)runWithQuery:(id)query inputColNames:(id)names inputColTypes:(id)types error:(id *)error;
@end

@implementation ASBiomeMaterializedViewer

- (id)runWithQuery:(id)query inputColNames:(id)names inputColTypes:(id)types error:(id *)error
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ASBiomeMaterializedViewer.run(query:inputColNames:inputColTypes:)(v7, v9, v10, v11);

  sub_1000443DC(&qword_1006CA3C0);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

@end