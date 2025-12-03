@interface GQDWPHeaderFooterStorage
- (GQDWPHeaderFooterStorage)initWithName:(__CFString *)name;
- (void)dealloc;
@end

@implementation GQDWPHeaderFooterStorage

- (GQDWPHeaderFooterStorage)initWithName:(__CFString *)name
{
  v7.receiver = self;
  v7.super_class = GQDWPHeaderFooterStorage;
  v4 = [(GQDWPHeaderFooterStorage *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mName = name;
    if (name)
    {
      CFRetain(name);
    }
  }

  return v5;
}

- (void)dealloc
{
  mName = self->mName;
  if (mName)
  {
    CFRelease(mName);
  }

  v4.receiver = self;
  v4.super_class = GQDWPHeaderFooterStorage;
  [(GQDWPStorage *)&v4 dealloc];
}

@end