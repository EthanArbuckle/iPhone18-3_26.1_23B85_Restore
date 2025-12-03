@interface PRSPosterDescriptorCollectionDiff
- (PRSPosterDescriptorCollectionDiff)initWithCollection:(id)collection otherCollection:(id)otherCollection;
@end

@implementation PRSPosterDescriptorCollectionDiff

- (PRSPosterDescriptorCollectionDiff)initWithCollection:(id)collection otherCollection:(id)otherCollection
{
  v5.receiver = self;
  v5.super_class = PRSPosterDescriptorCollectionDiff;
  return [(PFPosterCollectionDiff *)&v5 initWithCollection:collection otherCollection:otherCollection];
}

@end