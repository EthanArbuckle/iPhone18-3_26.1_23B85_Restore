@interface ATXShortcutsEditorEventMetadata
- (ATXShortcutsEditorEventMetadata)initWithCoder:(id)a3;
- (ATXShortcutsEditorEventMetadata)initWithNumStepsInShortcut:(unint64_t)a3;
- (ATXShortcutsEditorEventMetadata)initWithProto:(id)a3;
- (ATXShortcutsEditorEventMetadata)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXShortcutsEditorEventMetadata

- (ATXShortcutsEditorEventMetadata)initWithNumStepsInShortcut:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = ATXShortcutsEditorEventMetadata;
  v4 = [(ATXShortcutsEditorEventMetadata *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_new();
    proto = v4->_proto;
    v4->_proto = v5;

    [(ATXPBShortcutsEditorEventMetadata *)v4->_proto setNumStepsInShortcut:a3];
  }

  return v4;
}

- (ATXShortcutsEditorEventMetadata)initWithProto:(id)a3
{
  v4 = [a3 numStepsInShortcut];

  return [(ATXShortcutsEditorEventMetadata *)self initWithNumStepsInShortcut:v4];
}

- (ATXShortcutsEditorEventMetadata)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBShortcutsEditorEventMetadata alloc] initWithData:v4];

    self = [(ATXShortcutsEditorEventMetadata *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXShortcutsEditorEventMetadata *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXShortcutsEditorEventMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXShortcutsEditorEventMetadata *)self initWithProtoData:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXShortcutsEditorEventMetadata *)self isEqualToATXShortcutsEditorEventMetadata:v5];
  }

  return v6;
}

@end