@interface TSKChangeEntry
- (TSKChangeEntry)initWithChangeSource:(id)a3 changes:(id)a4;
- (void)dealloc;
@end

@implementation TSKChangeEntry

- (TSKChangeEntry)initWithChangeSource:(id)a3 changes:(id)a4
{
  v8.receiver = self;
  v8.super_class = TSKChangeEntry;
  v6 = [(TSKChangeEntry *)&v8 init];
  if (v6)
  {
    v6->mChangeSource = a3;
    v6->mChanges = a4;
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