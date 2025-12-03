@interface ATXShortcutsEditorEventMetadata
- (ATXShortcutsEditorEventMetadata)initWithCoder:(id)coder;
- (ATXShortcutsEditorEventMetadata)initWithNumStepsInShortcut:(unint64_t)shortcut;
- (ATXShortcutsEditorEventMetadata)initWithProto:(id)proto;
- (ATXShortcutsEditorEventMetadata)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXShortcutsEditorEventMetadata

- (ATXShortcutsEditorEventMetadata)initWithNumStepsInShortcut:(unint64_t)shortcut
{
  v8.receiver = self;
  v8.super_class = ATXShortcutsEditorEventMetadata;
  v4 = [(ATXShortcutsEditorEventMetadata *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_new();
    proto = v4->_proto;
    v4->_proto = v5;

    [(ATXPBShortcutsEditorEventMetadata *)v4->_proto setNumStepsInShortcut:shortcut];
  }

  return v4;
}

- (ATXShortcutsEditorEventMetadata)initWithProto:(id)proto
{
  numStepsInShortcut = [proto numStepsInShortcut];

  return [(ATXShortcutsEditorEventMetadata *)self initWithNumStepsInShortcut:numStepsInShortcut];
}

- (ATXShortcutsEditorEventMetadata)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBShortcutsEditorEventMetadata alloc] initWithData:dataCopy];

    self = [(ATXShortcutsEditorEventMetadata *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXShortcutsEditorEventMetadata *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXShortcutsEditorEventMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXShortcutsEditorEventMetadata *)self initWithProtoData:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXShortcutsEditorEventMetadata *)self isEqualToATXShortcutsEditorEventMetadata:v5];
  }

  return v6;
}

@end