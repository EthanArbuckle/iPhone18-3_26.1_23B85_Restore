@interface TULinkShareItem
- (TULinkShareItem)initWithTUConversationLink:(id)link;
- (TULinkShareItem)initWithTUConversationLink:(id)link title:(id)title placeholder:(id)placeholder;
@end

@implementation TULinkShareItem

- (TULinkShareItem)initWithTUConversationLink:(id)link title:(id)title placeholder:(id)placeholder
{
  linkCopy = link;
  titleCopy = title;
  placeholderCopy = placeholder;
  v14.receiver = self;
  v14.super_class = TULinkShareItem;
  v11 = [(TULinkShareItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(TULinkShareItem *)v11 setTuConversationLink:linkCopy];
    [(TULinkShareItem *)v12 setTitle:titleCopy];
    [(TULinkShareItem *)v12 setPlaceholder:placeholderCopy];
  }

  return v12;
}

- (TULinkShareItem)initWithTUConversationLink:(id)link
{
  linkCopy = link;
  v5 = [linkCopy URL];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[TUConversationLink preferredBaseURL];
  }

  v8 = v7;

  linkName = [linkCopy linkName];
  v10 = [(TULinkShareItem *)self initWithTUConversationLink:linkCopy title:linkName placeholder:v8];

  return v10;
}

@end