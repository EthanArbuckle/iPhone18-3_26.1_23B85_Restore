@interface TSTTableDataRichTextPayload
- (BOOL)isEqual:(id)a3;
- (id)initObjectWithRichTextPayload:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSTTableDataRichTextPayload

- (id)initObjectWithRichTextPayload:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSTTableDataRichTextPayload;
  v4 = [(TSTTableDataRichTextPayload *)&v6 init];
  if (v4)
  {
    v4->mPayload = a3;
    v4->super.mRefCount = 1;
  }

  return v4;
}

- (unint64_t)hash
{
  v2 = [(TSTRichTextPayload *)self->mPayload storage];

  return [(TSWPStorage *)v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [*(a3 + 2) storage];
  v6 = [(TSTRichTextPayload *)self->mPayload storage];

  return [(TSWPStorage *)v6 isEqual:v5];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataRichTextPayload;
  [(TSTTableDataRichTextPayload *)&v3 dealloc];
}

@end