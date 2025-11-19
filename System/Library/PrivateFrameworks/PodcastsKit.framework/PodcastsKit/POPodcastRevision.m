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
  v5 = [(POPodcastRevision *)self objectID];
  [v4 setUuid:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(POPodcastRevision *)self revisionID];
  v7 = [(POPodcastRevision *)self revisionType];
  if (v7 > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_279A44910[v7];
  }

  v9 = [(POPodcastRevision *)self objectID];
  v10 = [v3 stringWithFormat:@"%@ (%p) revisionID: %lu, type: %@, uuid, %@", v5, self, v6, v8, v9];

  return v10;
}

@end