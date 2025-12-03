@interface PXStoryClipLayoutReuseIdentifier
- (BOOL)hasResourceEqualTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (PXStoryClipLayoutReuseIdentifier)init;
- (PXStoryClipLayoutReuseIdentifier)initWithClip:(id)clip;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryClipLayoutReuseIdentifier

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  clip = [(PXStoryClipLayoutReuseIdentifier *)self clip];
  identifier = [clip identifier];
  clip2 = [(PXStoryClipLayoutReuseIdentifier *)self clip];
  v9 = [v3 stringWithFormat:@"<%@:%p clipIdentifier:%ld clip:%@>", v5, self, identifier, clip2];;

  return v9;
}

- (BOOL)hasResourceEqualTo:(id)to
{
  toCopy = to;
  clip = [(PXStoryClipLayoutReuseIdentifier *)self clip];
  resource = [clip resource];

  clip2 = [toCopy clip];

  resource2 = [clip2 resource];

  px_storyResourceKind = [resource px_storyResourceKind];
  if (px_storyResourceKind == [resource2 px_storyResourceKind])
  {
    px_storyResourceIdentifier = [resource px_storyResourceIdentifier];
    px_storyResourceIdentifier2 = [resource2 px_storyResourceIdentifier];
    if (px_storyResourceIdentifier == px_storyResourceIdentifier2)
    {
      v12 = 1;
    }

    else
    {
      v12 = [px_storyResourceIdentifier isEqual:px_storyResourceIdentifier2];
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
  clip = [(PXStoryClipLayoutReuseIdentifier *)self clip];
  v3 = [clip hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      clip = [(PXStoryClipLayoutReuseIdentifier *)self clip];
      clip2 = [(PXStoryClipLayoutReuseIdentifier *)v5 clip];

      v8 = [clip isEqualToClip:clip2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PXStoryClipLayoutReuseIdentifier)initWithClip:(id)clip
{
  clipCopy = clip;
  v9.receiver = self;
  v9.super_class = PXStoryClipLayoutReuseIdentifier;
  v6 = [(PXStoryClipLayoutReuseIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clip, clip);
  }

  return v7;
}

- (PXStoryClipLayoutReuseIdentifier)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipLayoutReuseIdentifier.m" lineNumber:21 description:{@"%s is not available as initializer", "-[PXStoryClipLayoutReuseIdentifier init]"}];

  abort();
}

@end