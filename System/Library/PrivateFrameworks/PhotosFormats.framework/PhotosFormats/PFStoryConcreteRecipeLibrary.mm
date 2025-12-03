@interface PFStoryConcreteRecipeLibrary
- (BOOL)isEqualToLibrary:(id)library;
- (NSString)diagnosticDescription;
- (PFStoryConcreteRecipeLibrary)initWithKind:(int64_t)kind url:(id)url;
@end

@implementation PFStoryConcreteRecipeLibrary

- (BOOL)isEqualToLibrary:(id)library
{
  libraryCopy = library;
  if (libraryCopy == self)
  {
    v8 = 1;
  }

  else
  {
    kind = [(PFStoryConcreteRecipeLibrary *)self kind];
    if (kind == [(PFStoryConcreteRecipeLibrary *)libraryCopy kind])
    {
      v6 = [(PFStoryConcreteRecipeLibrary *)self url];
      v7 = [(PFStoryConcreteRecipeLibrary *)libraryCopy url];
      if (v6 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc_init(PFStoryRecipeArchiver);
  v4 = [(PFStoryRecipeArchiver *)v3 archivedJSONObjectWithLibrary:self];
  v5 = [v4 description];

  return v5;
}

- (PFStoryConcreteRecipeLibrary)initWithKind:(int64_t)kind url:(id)url
{
  urlCopy = url;
  v12.receiver = self;
  v12.super_class = PFStoryConcreteRecipeLibrary;
  v7 = [(PFStoryConcreteRecipeLibrary *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_kind = kind;
    v9 = [urlCopy copy];
    url = v8->_url;
    v8->_url = v9;
  }

  return v8;
}

@end