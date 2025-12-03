@interface TSTRichTextPayload
- (TSTRichTextPayload)initWithContext:(id)context storage:(id)storage;
- (TSTRichTextPayload)initWithStorage:(id)storage;
- (id)copyWithContext:(id)context;
- (id)string;
- (void)dealloc;
- (void)setStorage:(id)storage;
@end

@implementation TSTRichTextPayload

- (void)setStorage:(id)storage
{
  [(TSPObject *)self willModify];
  storageCopy = storage;

  self->mStorage = storage;
}

- (TSTRichTextPayload)initWithStorage:(id)storage
{
  context = [storage context];

  return [(TSTRichTextPayload *)self initWithContext:context storage:storage];
}

- (TSTRichTextPayload)initWithContext:(id)context storage:(id)storage
{
  v7.receiver = self;
  v7.super_class = TSTRichTextPayload;
  v5 = [(TSPObject *)&v7 initWithContext:context];
  if (v5)
  {
    v5->mStorage = storage;
  }

  return v5;
}

- (void)dealloc
{
  self->mStorage = 0;
  v3.receiver = self;
  v3.super_class = TSTRichTextPayload;
  [(TSTRichTextPayload *)&v3 dealloc];
}

- (id)copyWithContext:(id)context
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(TSWPStorage *)[(TSTRichTextPayload *)self storage] copyWithContext:context];

  return [v5 initWithStorage:v6];
}

- (id)string
{
  storage = [(TSTRichTextPayload *)self storage];

  return [(TSWPStorage *)storage stringValue];
}

@end