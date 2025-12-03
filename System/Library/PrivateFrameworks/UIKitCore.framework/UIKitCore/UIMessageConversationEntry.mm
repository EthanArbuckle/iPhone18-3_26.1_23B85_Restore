@interface UIMessageConversationEntry
- (id)inputContextEntryRepresentation;
- (int64_t)inputContextEntryType;
@end

@implementation UIMessageConversationEntry

- (id)inputContextEntryRepresentation
{
  v5.receiver = self;
  v5.super_class = UIMessageConversationEntry;
  inputContextEntryRepresentation = [(UIConversationEntry *)&v5 inputContextEntryRepresentation];
  [inputContextEntryRepresentation setIsFromMe:{-[UIMessageConversationEntry wasSentBySelf](self, "wasSentBySelf")}];
  [inputContextEntryRepresentation setEntryType:{-[UIMessageConversationEntry inputContextEntryType](self, "inputContextEntryType")}];

  return inputContextEntryRepresentation;
}

- (int64_t)inputContextEntryType
{
  dataKind = [(UIMessageConversationEntry *)self dataKind];
  v3 = 1;
  if (dataKind != 1)
  {
    v3 = 2;
  }

  if (dataKind)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

@end