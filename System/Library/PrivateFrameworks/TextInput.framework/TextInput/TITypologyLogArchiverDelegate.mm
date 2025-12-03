@interface TITypologyLogArchiverDelegate
- (TITypologyLogArchiverDelegate)init;
- (id)archiver:(id)archiver willEncodeObject:(id)object;
@end

@implementation TITypologyLogArchiverDelegate

- (id)archiver:(id)archiver willEncodeObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objects = [(TITypologyLogArchiverDelegate *)self objects];
        v7 = [objects count];

        objects2 = [(TITypologyLogArchiverDelegate *)self objects];
        [objects2 addObject:objectCopy];

        objects3 = [(TITypologyLogArchiverDelegate *)self objects];
        v10 = [objects3 count];

        if (v10 == v7)
        {
          objects4 = [(TITypologyLogArchiverDelegate *)self objects];
          v12 = [objects4 member:objectCopy];

          objectCopy = v12;
        }
      }
    }
  }

  v13 = objectCopy;

  return objectCopy;
}

- (TITypologyLogArchiverDelegate)init
{
  v6.receiver = self;
  v6.super_class = TITypologyLogArchiverDelegate;
  v2 = [(TITypologyLogArchiverDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    objects = v2->_objects;
    v2->_objects = v3;
  }

  return v2;
}

@end