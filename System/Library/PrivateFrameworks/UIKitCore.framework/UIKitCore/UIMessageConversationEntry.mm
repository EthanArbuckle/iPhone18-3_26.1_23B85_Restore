@interface UIMessageConversationEntry
- (id)inputContextEntryRepresentation;
- (int64_t)inputContextEntryType;
@end

@implementation UIMessageConversationEntry

- (id)inputContextEntryRepresentation
{
  v5.receiver = self;
  v5.super_class = UIMessageConversationEntry;
  v3 = [(UIConversationEntry *)&v5 inputContextEntryRepresentation];
  [v3 setIsFromMe:{-[UIMessageConversationEntry wasSentBySelf](self, "wasSentBySelf")}];
  [v3 setEntryType:{-[UIMessageConversationEntry inputContextEntryType](self, "inputContextEntryType")}];

  return v3;
}

- (int64_t)inputContextEntryType
{
  v2 = [(UIMessageConversationEntry *)self dataKind];
  v3 = 1;
  if (v2 != 1)
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

@end