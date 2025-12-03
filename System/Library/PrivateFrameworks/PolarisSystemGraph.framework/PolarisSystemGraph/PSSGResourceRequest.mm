@interface PSSGResourceRequest
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation PSSGResourceRequest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  resourcesWanted = [(PSSGResourceRequest *)self resourcesWanted];
  resourcesWanted2 = [equalCopy resourcesWanted];
  v7 = [resourcesWanted isEqual:resourcesWanted2];
  if ((v7 & 1) == 0)
  {
    resourcesWanted3 = [(PSSGResourceRequest *)self resourcesWanted];
    if (resourcesWanted3)
    {
      v20 = 0;
LABEL_32:

      goto LABEL_33;
    }

    resourcesWanted4 = [equalCopy resourcesWanted];
    if (resourcesWanted4)
    {
      goto LABEL_21;
    }
  }

  resourcesNoLongerWanted = [(PSSGResourceRequest *)self resourcesNoLongerWanted];
  resourcesNoLongerWanted2 = [equalCopy resourcesNoLongerWanted];
  if ([resourcesNoLongerWanted isEqual:resourcesNoLongerWanted2])
  {
    goto LABEL_3;
  }

  resourcesNoLongerWanted3 = [(PSSGResourceRequest *)self resourcesNoLongerWanted];
  if (resourcesNoLongerWanted3)
  {

    if (v7)
    {
      v20 = 0;
      goto LABEL_33;
    }

    resourcesWanted4 = 0;
LABEL_21:

    v20 = 0;
LABEL_31:
    resourcesWanted3 = 0;
    goto LABEL_32;
  }

  resourcesNoLongerWanted4 = [equalCopy resourcesNoLongerWanted];
  if (resourcesNoLongerWanted4)
  {

    v20 = 0;
    if (v7)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

LABEL_3:
  v10 = objc_alloc(MEMORY[0x277CCA940]);
  resourcesWantedWithStrides = [(PSSGResourceRequest *)self resourcesWantedWithStrides];
  v11 = [v10 initWithArray:?];
  v12 = objc_alloc(MEMORY[0x277CCA940]);
  resourcesWantedWithStrides2 = [equalCopy resourcesWantedWithStrides];
  v13 = [v12 initWithArray:?];
  v35 = v11;
  v14 = [v11 isEqual:v13];
  if ((v14 & 1) == 0)
  {
    resourcesWantedWithStrides3 = [(PSSGResourceRequest *)self resourcesWantedWithStrides];
    if (resourcesWantedWithStrides3)
    {
      v20 = 0;
      goto LABEL_29;
    }

    resourcesWantedWithStrides4 = [equalCopy resourcesWantedWithStrides];
    if (resourcesWantedWithStrides4)
    {

      v20 = 0;
      resourcesWantedWithStrides3 = 0;
      goto LABEL_29;
    }
  }

  v30 = resourcesNoLongerWanted;
  v33 = v13;
  v15 = objc_alloc(MEMORY[0x277CCA940]);
  resourcesNoLongerWantedWithStrides = [(PSSGResourceRequest *)self resourcesNoLongerWantedWithStrides];
  v16 = [v15 initWithArray:?];
  v17 = objc_alloc(MEMORY[0x277CCA940]);
  resourcesNoLongerWantedWithStrides2 = [equalCopy resourcesNoLongerWantedWithStrides];
  v19 = [v17 initWithArray:resourcesNoLongerWantedWithStrides2];
  v31 = v16;
  if ([v16 isEqual:v19])
  {
    v20 = 1;
    resourcesNoLongerWanted = v30;
  }

  else
  {
    resourcesNoLongerWantedWithStrides3 = [(PSSGResourceRequest *)self resourcesNoLongerWantedWithStrides];
    if (resourcesNoLongerWantedWithStrides3)
    {
      v20 = 0;
    }

    else
    {
      resourcesNoLongerWantedWithStrides4 = [equalCopy resourcesNoLongerWantedWithStrides];
      v20 = resourcesNoLongerWantedWithStrides4 == 0;

      resourcesNoLongerWantedWithStrides3 = 0;
    }

    resourcesNoLongerWanted = v30;
  }

  if (v14)
  {
    v13 = v33;
    goto LABEL_30;
  }

  resourcesWantedWithStrides3 = 0;
  v13 = v33;
LABEL_29:

LABEL_30:
  if ((v7 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_33:

  return v20;
}

- (unint64_t)hash
{
  resourcesWanted = [(PSSGResourceRequest *)self resourcesWanted];
  v4 = [resourcesWanted hash];
  resourcesNoLongerWanted = [(PSSGResourceRequest *)self resourcesNoLongerWanted];
  v6 = [resourcesNoLongerWanted hash] ^ v4;
  resourcesWantedWithStrides = [(PSSGResourceRequest *)self resourcesWantedWithStrides];
  v8 = [resourcesWantedWithStrides hash];
  resourcesNoLongerWantedWithStrides = [(PSSGResourceRequest *)self resourcesNoLongerWantedWithStrides];
  v10 = v8 ^ [resourcesNoLongerWantedWithStrides hash];

  return v6 ^ v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  resourcesWantedWithStrides = [(PSSGResourceRequest *)self resourcesWantedWithStrides];
  resourcesWanted = resourcesWantedWithStrides;
  if (!resourcesWantedWithStrides)
  {
    resourcesWanted = [(PSSGResourceRequest *)self resourcesWanted];
  }

  resourcesNoLongerWantedWithStrides = [(PSSGResourceRequest *)self resourcesNoLongerWantedWithStrides];
  v9 = resourcesNoLongerWantedWithStrides;
  if (resourcesNoLongerWantedWithStrides)
  {
    v10 = [v3 stringWithFormat:@"<%@: %p, wanted %@, not wanted %@>", v5, self, resourcesWanted, resourcesNoLongerWantedWithStrides];
  }

  else
  {
    resourcesNoLongerWanted = [(PSSGResourceRequest *)self resourcesNoLongerWanted];
    v10 = [v3 stringWithFormat:@"<%@: %p, wanted %@, not wanted %@>", v5, self, resourcesWanted, resourcesNoLongerWanted];
  }

  if (!resourcesWantedWithStrides)
  {
  }

  return v10;
}

@end