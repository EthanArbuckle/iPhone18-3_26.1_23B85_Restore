@interface SBHSimpleApplicationDataSource
- (id)iconModel:(id)model applicationWithBundleIdentifier:(id)identifier;
- (id)makeApplicationWithRecord:(id)record;
- (id)simpleApplicationsWithEnumeratorOptions:(unint64_t)options;
@end

@implementation SBHSimpleApplicationDataSource

- (id)iconModel:(id)model applicationWithBundleIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E69635F8];
  identifierCopy = identifier;
  v7 = [[v5 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];

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

- (id)simpleApplicationsWithEnumeratorOptions:(unint64_t)options
{
  v4 = [MEMORY[0x1E69635F8] enumeratorWithOptions:options];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  nextObject = [v4 nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    do
    {
      v8 = [(SBHSimpleApplicationDataSource *)self makeApplicationWithRecord:v7];
      if (v8)
      {
        [v5 addObject:v8];
      }

      nextObject2 = [v4 nextObject];

      v7 = nextObject2;
    }

    while (nextObject2);
  }

  return v5;
}

- (id)makeApplicationWithRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy sbh_isValidType])
  {
    v5 = [[SBHSimpleApplication alloc] initWithApplicationRecord:recordCopy];
    [(SBHSimpleApplication *)v5 setIconModelApplicationDataSource:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end