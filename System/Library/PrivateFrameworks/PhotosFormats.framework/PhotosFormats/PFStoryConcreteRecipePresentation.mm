@interface PFStoryConcreteRecipePresentation
- (BOOL)isEqualToPresentation:(id)a3;
- (NSString)diagnosticDescription;
- (PFStoryConcreteRecipePresentation)initWithIdentifier:(id)a3 clips:(id)a4;
- (id)clipAtIndex:(int64_t)a3;
- (int64_t)clipCount;
@end

@implementation PFStoryConcreteRecipePresentation

- (BOOL)isEqualToPresentation:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_8;
  }

  v5 = [(PFStoryConcreteRecipePresentation *)self clipCount];
  if (v5 != [(PFStoryConcreteRecipePresentation *)v4 clipCount])
  {
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  if (v5 < 1)
  {
LABEL_8:
    LOBYTE(v10) = 1;
  }

  else
  {
    v6 = 1;
    do
    {
      v7 = [(PFStoryConcreteRecipePresentation *)self clips];
      v8 = [v7 objectAtIndexedSubscript:v6 - 1];
      v9 = [(PFStoryConcreteRecipePresentation *)v4 clipAtIndex:v6 - 1];
      v10 = [v8 isEqualToClip:v9];

      if (!v10)
      {
        break;
      }
    }

    while (v6++ < v5);
  }

LABEL_10:

  return v10;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc_init(PFStoryRecipeArchiver);
  v4 = [(PFStoryRecipeArchiver *)v3 archivedJSONObjectWithPresentation:self];
  v5 = [v4 description];

  return v5;
}

- (id)clipAtIndex:(int64_t)a3
{
  v4 = [(PFStoryConcreteRecipePresentation *)self clips];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (int64_t)clipCount
{
  v2 = [(PFStoryConcreteRecipePresentation *)self clips];
  v3 = [v2 count];

  return v3;
}

- (PFStoryConcreteRecipePresentation)initWithIdentifier:(id)a3 clips:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PFStoryConcreteRecipePresentation;
  v8 = [(PFStoryConcreteRecipePresentation *)&v13 init];
  identifier = v8->_identifier;
  v8->_identifier = v6;
  v10 = v6;

  clips = v8->_clips;
  v8->_clips = v7;

  return v8;
}

@end