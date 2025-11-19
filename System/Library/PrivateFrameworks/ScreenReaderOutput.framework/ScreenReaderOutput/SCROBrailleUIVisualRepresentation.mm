@interface SCROBrailleUIVisualRepresentation
- (NSDictionary)dictionaryForUIMessage;
- (SCROBrailleUIVisualRepresentation)init;
- (SCROBrailleUIVisualRepresentation)initWithLines:(id)a3 focusedIndex:(int64_t)a4 isList:(BOOL)a5;
@end

@implementation SCROBrailleUIVisualRepresentation

- (SCROBrailleUIVisualRepresentation)initWithLines:(id)a3 focusedIndex:(int64_t)a4 isList:(BOOL)a5
{
  type metadata accessor for SCROBrailleUICaptionableBrailleLine(self);
  v7 = sub_264982874();
  return sub_264968AD4(v7, a4, a5);
}

- (NSDictionary)dictionaryForUIMessage
{
  v2 = self;
  v3 = SCROBrailleUIVisualRepresentation.dictionaryForUIMessage.getter();

  return v3;
}

- (SCROBrailleUIVisualRepresentation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end