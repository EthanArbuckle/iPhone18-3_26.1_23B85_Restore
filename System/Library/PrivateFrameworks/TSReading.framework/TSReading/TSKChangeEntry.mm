@interface TSKChangeEntry
- (TSKChangeEntry)initWithChangeSource:(id)source changes:(id)changes;
- (void)dealloc;
@end

@implementation TSKChangeEntry

- (TSKChangeEntry)initWithChangeSource:(id)source changes:(id)changes
{
  v8.receiver = self;
  v8.super_class = TSKChangeEntry;
  v6 = [(TSKChangeEntry *)&v8 init];
  if (v6)
  {
    v6->mChangeSource = source;
    v6->mChanges = changes;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKChangeEntry;
  [(TSKChangeEntry *)&v3 dealloc];
}

@end