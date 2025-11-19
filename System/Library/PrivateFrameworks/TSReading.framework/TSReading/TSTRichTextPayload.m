@interface TSTRichTextPayload
- (TSTRichTextPayload)initWithContext:(id)a3 storage:(id)a4;
- (TSTRichTextPayload)initWithStorage:(id)a3;
- (id)copyWithContext:(id)a3;
- (id)string;
- (void)dealloc;
- (void)setStorage:(id)a3;
@end

@implementation TSTRichTextPayload

- (void)setStorage:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mStorage = a3;
}

- (TSTRichTextPayload)initWithStorage:(id)a3
{
  v5 = [a3 context];

  return [(TSTRichTextPayload *)self initWithContext:v5 storage:a3];
}

- (TSTRichTextPayload)initWithContext:(id)a3 storage:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSTRichTextPayload;
  v5 = [(TSPObject *)&v7 initWithContext:a3];
  if (v5)
  {
    v5->mStorage = a4;
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

- (id)copyWithContext:(id)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(TSWPStorage *)[(TSTRichTextPayload *)self storage] copyWithContext:a3];

  return [v5 initWithStorage:v6];
}

- (id)string
{
  v2 = [(TSTRichTextPayload *)self storage];

  return [(TSWPStorage *)v2 stringValue];
}

@end