@interface GQDWPLayoutFrame
- (BOOL)isBlank;
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
- (void)dealloc;
- (void)resolveStyleRef;
@end

@implementation GQDWPLayoutFrame

- (void)dealloc
{
  mStyleRef = self->mStyleRef;
  if (mStyleRef)
  {
    free(mStyleRef);
  }

  v4.receiver = self;
  v4.super_class = GQDWPLayoutFrame;
  [(GQDWPLayoutFrame *)&v4 dealloc];
}

- (BOOL)isBlank
{
  v2 = [(GQDWPLayoutStorage *)self->mStorage body];
  if (!v2 || (v3 = v2, Count = CFArrayGetCount(v2), (v5 = Count) == 0))
  {
LABEL_10:
    LOBYTE(v8) = 1;
    return v8;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if (([ValueAtIndex isBlank] & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (v5 == ++v6)
    {
      goto LABEL_10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [ValueAtIndex isBlank];
    if (!v8)
    {
      return v8;
    }

    goto LABEL_9;
  }

LABEL_12:
  LOBYTE(v8) = 0;
  return v8;
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  mStyleRef = self->mStyleRef;
  if (mStyleRef)
  {
    free(mStyleRef);
  }

  self->mStyleRef = xmlTextReaderGetAttributeNs(a3, "layoutstyle", *(qword_A35E8 + 16));
  self->mTextScale = sub_42468(a3, qword_A35E8, "tscale", 0);
  return 1;
}

- (void)resolveStyleRef
{
  if (self->mStyleRef)
  {
    v3 = [(GQDWPStorage *)self->mStorage stylesheet];
    v4 = [v3 styleWithIdentifier:self->mStyleRef];
    self->mStyle = v4;
    if (!v4)
    {
      v4 = [v3 styleWithXmlUid:self->mStyleRef];
      self->mStyle = v4;
    }

    v5 = v4;
    free(self->mStyleRef);
    self->mStyleRef = 0;
  }
}

@end