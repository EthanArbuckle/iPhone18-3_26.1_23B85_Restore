@interface _MFFlagChangeEntry
- (_MFFlagChangeEntry)initWithPath:(id)path UID:(unsigned int)d changes:(id)changes;
- (void)dealloc;
@end

@implementation _MFFlagChangeEntry

- (_MFFlagChangeEntry)initWithPath:(id)path UID:(unsigned int)d changes:(id)changes
{
  pathCopy = path;
  changesCopy = changes;
  v14.receiver = self;
  v14.super_class = _MFFlagChangeEntry;
  v11 = [(_MFFlagChangeEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->path, path);
    v12->uid = d;
    objc_storeStrong(&v12->changes, changes);
    v12->commitTime = 0.0;
    v12->connectionTag = -1;
  }

  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFFlagChangeEntry;
  [(_MFFlagChangeEntry *)&v2 dealloc];
}

@end