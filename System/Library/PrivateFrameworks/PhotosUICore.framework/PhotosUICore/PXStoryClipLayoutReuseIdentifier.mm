@interface PXStoryClipLayoutReuseIdentifier
- (BOOL)hasResourceEqualTo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PXStoryClipLayoutReuseIdentifier)init;
- (PXStoryClipLayoutReuseIdentifier)initWithClip:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryClipLayoutReuseIdentifier

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXStoryClipLayoutReuseIdentifier *)self clip];
  v7 = [v6 identifier];
  v8 = [(PXStoryClipLayoutReuseIdentifier *)self clip];
  v9 = [v3 stringWithFormat:@"<%@:%p clipIdentifier:%ld clip:%@>", v5, self, v7, v8];;

  return v9;
}

- (BOOL)hasResourceEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryClipLayoutReuseIdentifier *)self clip];
  v6 = [v5 resource];

  v7 = [v4 clip];

  v8 = [v7 resource];

  v9 = [v6 px_storyResourceKind];
  if (v9 == [v8 px_storyResourceKind])
  {
    v10 = [v6 px_storyResourceIdentifier];
    v11 = [v8 px_storyResourceIdentifier];
    if (v10 == v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = [v10 isEqual:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(PXStoryClipLayoutReuseIdentifier *)self clip];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryClipLayoutReuseIdentifier *)self clip];
      v7 = [(PXStoryClipLayoutReuseIdentifier *)v5 clip];

      v8 = [v6 isEqualToClip:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PXStoryClipLayoutReuseIdentifier)initWithClip:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryClipLayoutReuseIdentifier;
  v6 = [(PXStoryClipLayoutReuseIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clip, a3);
  }

  return v7;
}

- (PXStoryClipLayoutReuseIdentifier)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryClipLayoutReuseIdentifier.m" lineNumber:21 description:{@"%s is not available as initializer", "-[PXStoryClipLayoutReuseIdentifier init]"}];

  abort();
}

@end