@interface GQDWPLayoutFrame
- (BOOL)isBlank;
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
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
  body = [(GQDWPLayoutStorage *)self->mStorage body];
  if (!body || (v3 = body, Count = CFArrayGetCount(body), (v5 = Count) == 0))
  {
LABEL_10:
    LOBYTE(isBlank) = 1;
    return isBlank;
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
    isBlank = [ValueAtIndex isBlank];
    if (!isBlank)
    {
      return isBlank;
    }

    goto LABEL_9;
  }

LABEL_12:
  LOBYTE(isBlank) = 0;
  return isBlank;
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  mStyleRef = self->mStyleRef;
  if (mStyleRef)
  {
    free(mStyleRef);
  }

  self->mStyleRef = xmlTextReaderGetAttributeNs(reader, "layoutstyle", *(qword_A35E8 + 16));
  self->mTextScale = sub_42468(reader, qword_A35E8, "tscale", 0);
  return 1;
}

- (void)resolveStyleRef
{
  if (self->mStyleRef)
  {
    stylesheet = [(GQDWPStorage *)self->mStorage stylesheet];
    v4 = [stylesheet styleWithIdentifier:self->mStyleRef];
    self->mStyle = v4;
    if (!v4)
    {
      v4 = [stylesheet styleWithXmlUid:self->mStyleRef];
      self->mStyle = v4;
    }

    v5 = v4;
    free(self->mStyleRef);
    self->mStyleRef = 0;
  }
}

@end