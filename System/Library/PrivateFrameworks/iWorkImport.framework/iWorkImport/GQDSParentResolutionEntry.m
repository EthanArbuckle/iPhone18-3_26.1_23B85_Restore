@interface GQDSParentResolutionEntry
- (GQDSParentResolutionEntry)initWithStyle:(id)a3 parentIdentifier:(const char *)a4;
- (void)dealloc;
@end

@implementation GQDSParentResolutionEntry

- (GQDSParentResolutionEntry)initWithStyle:(id)a3 parentIdentifier:(const char *)a4
{
  v8.receiver = self;
  v8.super_class = GQDSParentResolutionEntry;
  v6 = [(GQDSParentResolutionEntry *)&v8 init];
  if (v6)
  {
    v6->mStyle = a3;
    v6->mParentIdentifier = xmlStrdup(a4);
  }

  return v6;
}

- (void)dealloc
{
  mParentIdentifier = self->mParentIdentifier;
  if (mParentIdentifier)
  {
    free(mParentIdentifier);
  }

  v4.receiver = self;
  v4.super_class = GQDSParentResolutionEntry;
  [(GQDSParentResolutionEntry *)&v4 dealloc];
}

@end