@interface TITypologyLogArchiverDelegate
- (TITypologyLogArchiverDelegate)init;
- (id)archiver:(id)a3 willEncodeObject:(id)a4;
@end

@implementation TITypologyLogArchiverDelegate

- (id)archiver:(id)a3 willEncodeObject:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [(TITypologyLogArchiverDelegate *)self objects];
        v7 = [v6 count];

        v8 = [(TITypologyLogArchiverDelegate *)self objects];
        [v8 addObject:v5];

        v9 = [(TITypologyLogArchiverDelegate *)self objects];
        v10 = [v9 count];

        if (v10 == v7)
        {
          v11 = [(TITypologyLogArchiverDelegate *)self objects];
          v12 = [v11 member:v5];

          v5 = v12;
        }
      }
    }
  }

  v13 = v5;

  return v5;
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