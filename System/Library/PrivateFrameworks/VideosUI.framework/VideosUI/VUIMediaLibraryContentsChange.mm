@interface VUIMediaLibraryContentsChange
- (BOOL)isEqual:(id)equal;
- (VUIMediaLibraryContentsChange)init;
- (VUIMediaLibraryContentsChange)initWithRevision:(unint64_t)revision;
- (id)description;
@end

@implementation VUIMediaLibraryContentsChange

- (VUIMediaLibraryContentsChange)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaLibraryContentsChange)initWithRevision:(unint64_t)revision
{
  v5.receiver = self;
  v5.super_class = VUIMediaLibraryContentsChange;
  result = [(VUIMediaLibraryContentsChange *)&v5 init];
  if (result)
  {
    result->_revision = revision;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    revision = [(VUIMediaLibraryContentsChange *)self revision];
    revision2 = [(VUIMediaLibraryContentsChange *)v6 revision];

    v9 = revision == revision2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12.receiver = self;
  v12.super_class = VUIMediaLibraryContentsChange;
  v4 = [(VUIMediaLibraryContentsChange *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMediaLibraryContentsChange revision](self, "revision")}];
  v7 = [v5 stringWithFormat:@"%@=%@", @"revision", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end