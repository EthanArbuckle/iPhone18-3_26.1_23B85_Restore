@interface SCROBrailleUIVisualRepresentation
- (NSDictionary)dictionaryForUIMessage;
- (SCROBrailleUIVisualRepresentation)init;
- (SCROBrailleUIVisualRepresentation)initWithLines:(id)lines focusedIndex:(int64_t)index isList:(BOOL)list;
@end

@implementation SCROBrailleUIVisualRepresentation

- (SCROBrailleUIVisualRepresentation)initWithLines:(id)lines focusedIndex:(int64_t)index isList:(BOOL)list
{
  type metadata accessor for SCROBrailleUICaptionableBrailleLine(self);
  v7 = sub_264982874();
  return sub_264968AD4(v7, index, list);
}

- (NSDictionary)dictionaryForUIMessage
{
  selfCopy = self;
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