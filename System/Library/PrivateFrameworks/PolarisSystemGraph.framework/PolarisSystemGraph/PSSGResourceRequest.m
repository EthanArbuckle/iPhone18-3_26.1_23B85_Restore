@interface PSSGResourceRequest
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PSSGResourceRequest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PSSGResourceRequest *)self resourcesWanted];
  v6 = [v4 resourcesWanted];
  v7 = [v5 isEqual:v6];
  if ((v7 & 1) == 0)
  {
    v21 = [(PSSGResourceRequest *)self resourcesWanted];
    if (v21)
    {
      v20 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v23 = [v4 resourcesWanted];
    if (v23)
    {
      goto LABEL_21;
    }
  }

  v8 = [(PSSGResourceRequest *)self resourcesNoLongerWanted];
  v9 = [v4 resourcesNoLongerWanted];
  if ([v8 isEqual:v9])
  {
    goto LABEL_3;
  }

  v22 = [(PSSGResourceRequest *)self resourcesNoLongerWanted];
  if (v22)
  {

    if (v7)
    {
      v20 = 0;
      goto LABEL_33;
    }

    v23 = 0;
LABEL_21:

    v20 = 0;
LABEL_31:
    v21 = 0;
    goto LABEL_32;
  }

  v25 = [v4 resourcesNoLongerWanted];
  if (v25)
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
  v36 = [(PSSGResourceRequest *)self resourcesWantedWithStrides];
  v11 = [v10 initWithArray:?];
  v12 = objc_alloc(MEMORY[0x277CCA940]);
  v34 = [v4 resourcesWantedWithStrides];
  v13 = [v12 initWithArray:?];
  v35 = v11;
  v14 = [v11 isEqual:v13];
  if ((v14 & 1) == 0)
  {
    v24 = [(PSSGResourceRequest *)self resourcesWantedWithStrides];
    if (v24)
    {
      v20 = 0;
      goto LABEL_29;
    }

    v27 = [v4 resourcesWantedWithStrides];
    if (v27)
    {

      v20 = 0;
      v24 = 0;
      goto LABEL_29;
    }
  }

  v30 = v8;
  v33 = v13;
  v15 = objc_alloc(MEMORY[0x277CCA940]);
  v32 = [(PSSGResourceRequest *)self resourcesNoLongerWantedWithStrides];
  v16 = [v15 initWithArray:?];
  v17 = objc_alloc(MEMORY[0x277CCA940]);
  v18 = [v4 resourcesNoLongerWantedWithStrides];
  v19 = [v17 initWithArray:v18];
  v31 = v16;
  if ([v16 isEqual:v19])
  {
    v20 = 1;
    v8 = v30;
  }

  else
  {
    v26 = [(PSSGResourceRequest *)self resourcesNoLongerWantedWithStrides];
    if (v26)
    {
      v20 = 0;
    }

    else
    {
      v28 = [v4 resourcesNoLongerWantedWithStrides];
      v20 = v28 == 0;

      v26 = 0;
    }

    v8 = v30;
  }

  if (v14)
  {
    v13 = v33;
    goto LABEL_30;
  }

  v24 = 0;
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
  v3 = [(PSSGResourceRequest *)self resourcesWanted];
  v4 = [v3 hash];
  v5 = [(PSSGResourceRequest *)self resourcesNoLongerWanted];
  v6 = [v5 hash] ^ v4;
  v7 = [(PSSGResourceRequest *)self resourcesWantedWithStrides];
  v8 = [v7 hash];
  v9 = [(PSSGResourceRequest *)self resourcesNoLongerWantedWithStrides];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PSSGResourceRequest *)self resourcesWantedWithStrides];
  v7 = v6;
  if (!v6)
  {
    v7 = [(PSSGResourceRequest *)self resourcesWanted];
  }

  v8 = [(PSSGResourceRequest *)self resourcesNoLongerWantedWithStrides];
  v9 = v8;
  if (v8)
  {
    v10 = [v3 stringWithFormat:@"<%@: %p, wanted %@, not wanted %@>", v5, self, v7, v8];
  }

  else
  {
    v11 = [(PSSGResourceRequest *)self resourcesNoLongerWanted];
    v10 = [v3 stringWithFormat:@"<%@: %p, wanted %@, not wanted %@>", v5, self, v7, v11];
  }

  if (!v6)
  {
  }

  return v10;
}

@end