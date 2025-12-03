@interface GQDWPText
- (BOOL)isBlank;
- (GQDWPText)initWithContent:(const char *)content;
- (void)dealloc;
@end

@implementation GQDWPText

- (GQDWPText)initWithContent:(const char *)content
{
  v7.receiver = self;
  v7.super_class = GQDWPText;
  v4 = [(GQDWPText *)&v7 init];
  v5 = v4;
  if (content && v4)
  {
    v4->mContent = xmlStrdup(content);
  }

  return v5;
}

- (void)dealloc
{
  mContent = self->mContent;
  if (mContent)
  {
    free(mContent);
  }

  v4.receiver = self;
  v4.super_class = GQDWPText;
  [(GQDWPText *)&v4 dealloc];
}

- (BOOL)isBlank
{
  mContent = self->mContent;
  if (!mContent || !*mContent)
  {
    return 1;
  }

  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = mContent[v3];
    if (v5 != 32)
    {
      break;
    }

    v4 = v3++ < 0x31;
    if (v3 == 50)
    {
      v6 = 1;
      return v4 && v6;
    }
  }

  v6 = v5 == 0;
  return v4 && v6;
}

@end