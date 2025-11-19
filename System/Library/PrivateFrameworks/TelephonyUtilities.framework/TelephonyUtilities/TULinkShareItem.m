@interface TULinkShareItem
- (TULinkShareItem)initWithTUConversationLink:(id)a3;
- (TULinkShareItem)initWithTUConversationLink:(id)a3 title:(id)a4 placeholder:(id)a5;
@end

@implementation TULinkShareItem

- (TULinkShareItem)initWithTUConversationLink:(id)a3 title:(id)a4 placeholder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TULinkShareItem;
  v11 = [(TULinkShareItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(TULinkShareItem *)v11 setTuConversationLink:v8];
    [(TULinkShareItem *)v12 setTitle:v9];
    [(TULinkShareItem *)v12 setPlaceholder:v10];
  }

  return v12;
}

- (TULinkShareItem)initWithTUConversationLink:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];
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

  v9 = [v4 linkName];
  v10 = [(TULinkShareItem *)self initWithTUConversationLink:v4 title:v9 placeholder:v8];

  return v10;
}

@end