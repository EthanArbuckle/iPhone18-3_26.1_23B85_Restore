@interface POPodcastRevision
- (id)deletedModelObject;
- (id)description;
@end

@implementation POPodcastRevision

- (id)deletedModelObject
{
  if ([(POPodcastRevision *)self isPodcastCollection])
  {
    v3 = @"POPodcastCollection";
  }

  else
  {
    v3 = @"POPodcastStation";
  }

  v4 = objc_alloc_init(NSClassFromString(&v3->isa));
  objectID = [(POPodcastRevision *)self objectID];
  [v4 setUuid:objectID];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  revisionID = [(POPodcastRevision *)self revisionID];
  revisionType = [(POPodcastRevision *)self revisionType];
  if (revisionType > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_279A44910[revisionType];
  }

  objectID = [(POPodcastRevision *)self objectID];
  v10 = [v3 stringWithFormat:@"%@ (%p) revisionID: %lu, type: %@, uuid, %@", v5, self, revisionID, v8, objectID];

  return v10;
}

@end