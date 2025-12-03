@interface TSTTableDataRichTextPayload
- (BOOL)isEqual:(id)equal;
- (id)initObjectWithRichTextPayload:(id)payload;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSTTableDataRichTextPayload

- (id)initObjectWithRichTextPayload:(id)payload
{
  v6.receiver = self;
  v6.super_class = TSTTableDataRichTextPayload;
  v4 = [(TSTTableDataRichTextPayload *)&v6 init];
  if (v4)
  {
    v4->mPayload = payload;
    v4->super.mRefCount = 1;
  }

  return v4;
}

- (unint64_t)hash
{
  storage = [(TSTRichTextPayload *)self->mPayload storage];

  return [(TSWPStorage *)storage hash];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  storage = [*(equal + 2) storage];
  storage2 = [(TSTRichTextPayload *)self->mPayload storage];

  return [(TSWPStorage *)storage2 isEqual:storage];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataRichTextPayload;
  [(TSTTableDataRichTextPayload *)&v3 dealloc];
}

@end