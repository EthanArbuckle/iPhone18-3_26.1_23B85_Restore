@interface _MFFlagChangeEntry
- (_MFFlagChangeEntry)initWithPath:(id)a3 UID:(unsigned int)a4 changes:(id)a5;
- (void)dealloc;
@end

@implementation _MFFlagChangeEntry

- (_MFFlagChangeEntry)initWithPath:(id)a3 UID:(unsigned int)a4 changes:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _MFFlagChangeEntry;
  v11 = [(_MFFlagChangeEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->path, a3);
    v12->uid = a4;
    objc_storeStrong(&v12->changes, a5);
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