@interface MPWeighterConstraint
- (MPWeighterConstraint)init;
- (void)dealloc;
@end

@implementation MPWeighterConstraint

- (MPWeighterConstraint)init
{
  v3.receiver = self;
  v3.super_class = MPWeighterConstraint;
  result = [(MPWeighterConstraint *)&v3 init];
  if (result)
  {
    result->allPanoramas = 0;
    result->hasPanorama = 0;
    *&result->numOfImages = 0u;
    *&result->presetID = 0u;
    *&result->moviesOnly = 0;
    *&result->wideLandscape = 0u;
    *&result->landscape = 0u;
    *&result->hPanoramas = 0u;
    result->minAspectRatios = 0;
    result->tags = 0;
    result->maxAspectRatios = 0;
    *&result->tagsOnSourceOnly = 0;
  }

  return result;
}

- (void)dealloc
{
  self->nextConstraints = 0;

  self->presetID = 0;
  self->maxAspectRatios = 0;

  self->minAspectRatios = 0;
  self->tags = 0;
  v3.receiver = self;
  v3.super_class = MPWeighterConstraint;
  [(MPWeighterConstraint *)&v3 dealloc];
}

@end