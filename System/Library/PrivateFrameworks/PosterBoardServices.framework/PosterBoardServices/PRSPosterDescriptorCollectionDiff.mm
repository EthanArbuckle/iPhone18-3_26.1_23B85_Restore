@interface PRSPosterDescriptorCollectionDiff
- (PRSPosterDescriptorCollectionDiff)initWithCollection:(id)a3 otherCollection:(id)a4;
@end

@implementation PRSPosterDescriptorCollectionDiff

- (PRSPosterDescriptorCollectionDiff)initWithCollection:(id)a3 otherCollection:(id)a4
{
  v5.receiver = self;
  v5.super_class = PRSPosterDescriptorCollectionDiff;
  return [(PFPosterCollectionDiff *)&v5 initWithCollection:a3 otherCollection:a4];
}

@end