@interface TSTArchivedLayoutHint
- (TSTArchivedLayoutHint)initWithContext:(id)context hint:(id)hint;
- (void)dealloc;
- (void)setHint:(id)hint;
@end

@implementation TSTArchivedLayoutHint

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTArchivedLayoutHint;
  [(TSTArchivedLayoutHint *)&v3 dealloc];
}

- (void)setHint:(id)hint
{
  if (self->mHint != hint)
  {
    [(TSPObject *)self willModify];

    self->mHint = hint;
  }
}

- (TSTArchivedLayoutHint)initWithContext:(id)context hint:(id)hint
{
  v7.receiver = self;
  v7.super_class = TSTArchivedLayoutHint;
  v5 = [(TSPObject *)&v7 initWithContext:context];
  if (v5)
  {
    v5->mHint = hint;
  }

  return v5;
}

@end