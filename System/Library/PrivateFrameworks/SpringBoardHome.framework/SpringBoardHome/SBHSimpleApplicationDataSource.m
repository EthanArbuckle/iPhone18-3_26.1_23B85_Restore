@interface SBHSimpleApplicationDataSource
- (id)iconModel:(id)a3 applicationWithBundleIdentifier:(id)a4;
- (id)makeApplicationWithRecord:(id)a3;
- (id)simpleApplicationsWithEnumeratorOptions:(unint64_t)a3;
@end

@implementation SBHSimpleApplicationDataSource

- (id)iconModel:(id)a3 applicationWithBundleIdentifier:(id)a4
{
  v5 = MEMORY[0x1E69635F8];
  v6 = a4;
  v7 = [[v5 alloc] initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];

  if (v7)
  {
    v8 = [(SBHSimpleApplicationDataSource *)self makeApplicationWithRecord:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)simpleApplicationsWithEnumeratorOptions:(unint64_t)a3
{
  v4 = [MEMORY[0x1E69635F8] enumeratorWithOptions:a3];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = [(SBHSimpleApplicationDataSource *)self makeApplicationWithRecord:v7];
      if (v8)
      {
        [v5 addObject:v8];
      }

      v9 = [v4 nextObject];

      v7 = v9;
    }

    while (v9);
  }

  return v5;
}

- (id)makeApplicationWithRecord:(id)a3
{
  v4 = a3;
  if ([v4 sbh_isValidType])
  {
    v5 = [[SBHSimpleApplication alloc] initWithApplicationRecord:v4];
    [(SBHSimpleApplication *)v5 setIconModelApplicationDataSource:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end