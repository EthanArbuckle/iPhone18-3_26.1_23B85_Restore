@interface PFStoryConcreteRecipePresentation
- (BOOL)isEqualToPresentation:(id)presentation;
- (NSString)diagnosticDescription;
- (PFStoryConcreteRecipePresentation)initWithIdentifier:(id)identifier clips:(id)clips;
- (id)clipAtIndex:(int64_t)index;
- (int64_t)clipCount;
@end

@implementation PFStoryConcreteRecipePresentation

- (BOOL)isEqualToPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (presentationCopy == self)
  {
    goto LABEL_8;
  }

  clipCount = [(PFStoryConcreteRecipePresentation *)self clipCount];
  if (clipCount != [(PFStoryConcreteRecipePresentation *)presentationCopy clipCount])
  {
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  if (clipCount < 1)
  {
LABEL_8:
    LOBYTE(v10) = 1;
  }

  else
  {
    v6 = 1;
    do
    {
      clips = [(PFStoryConcreteRecipePresentation *)self clips];
      v8 = [clips objectAtIndexedSubscript:v6 - 1];
      v9 = [(PFStoryConcreteRecipePresentation *)presentationCopy clipAtIndex:v6 - 1];
      v10 = [v8 isEqualToClip:v9];

      if (!v10)
      {
        break;
      }
    }

    while (v6++ < clipCount);
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

- (id)clipAtIndex:(int64_t)index
{
  clips = [(PFStoryConcreteRecipePresentation *)self clips];
  v5 = [clips objectAtIndexedSubscript:index];

  return v5;
}

- (int64_t)clipCount
{
  clips = [(PFStoryConcreteRecipePresentation *)self clips];
  v3 = [clips count];

  return v3;
}

- (PFStoryConcreteRecipePresentation)initWithIdentifier:(id)identifier clips:(id)clips
{
  identifierCopy = identifier;
  clipsCopy = clips;
  v13.receiver = self;
  v13.super_class = PFStoryConcreteRecipePresentation;
  v8 = [(PFStoryConcreteRecipePresentation *)&v13 init];
  identifier = v8->_identifier;
  v8->_identifier = identifierCopy;
  v10 = identifierCopy;

  clips = v8->_clips;
  v8->_clips = clipsCopy;

  return v8;
}

@end