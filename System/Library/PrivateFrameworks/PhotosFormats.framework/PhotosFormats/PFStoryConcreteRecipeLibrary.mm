@interface PFStoryConcreteRecipeLibrary
- (BOOL)isEqualToLibrary:(id)a3;
- (NSString)diagnosticDescription;
- (PFStoryConcreteRecipeLibrary)initWithKind:(int64_t)a3 url:(id)a4;
@end

@implementation PFStoryConcreteRecipeLibrary

- (BOOL)isEqualToLibrary:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = [(PFStoryConcreteRecipeLibrary *)self kind];
    if (v5 == [(PFStoryConcreteRecipeLibrary *)v4 kind])
    {
      v6 = [(PFStoryConcreteRecipeLibrary *)self url];
      v7 = [(PFStoryConcreteRecipeLibrary *)v4 url];
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

- (PFStoryConcreteRecipeLibrary)initWithKind:(int64_t)a3 url:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PFStoryConcreteRecipeLibrary;
  v7 = [(PFStoryConcreteRecipeLibrary *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_kind = a3;
    v9 = [v6 copy];
    url = v8->_url;
    v8->_url = v9;
  }

  return v8;
}

@end