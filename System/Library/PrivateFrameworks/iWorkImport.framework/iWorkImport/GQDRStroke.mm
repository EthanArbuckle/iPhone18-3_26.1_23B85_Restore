@interface GQDRStroke
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
- (void)dealloc;
@end

@implementation GQDRStroke

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDRStroke;
  [(GQDRStroke *)&v3 dealloc];
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  v13 = 0.0;
  if (!sub_426B0(reader, qword_A35E8, "width", &v13))
  {
    return 3;
  }

  v5 = v13;
  self->mWidth = v5;
  if (!sub_426B0(reader, qword_A35E8, "miter-limit", &v13))
  {
    return 3;
  }

  v6 = v13;
  self->mMiterLimit = v6;
  AttributeNs = xmlTextReaderGetAttributeNs(reader, "cap", *(qword_A35E8 + 16));
  if (!AttributeNs)
  {
    self->mCap = 0;
LABEL_12:
    AttributeNs = xmlTextReaderGetAttributeNs(reader, "join", *(qword_A35E8 + 16));
    if (!AttributeNs)
    {
      self->mJoin = 0;
      return 1;
    }

    v10 = *AttributeNs;
    switch(v10)
    {
      case 'b':
        v11 = 2;
        goto LABEL_23;
      case 'm':
        v11 = 0;
        goto LABEL_23;
      case 'r':
        v11 = 1;
LABEL_23:
        self->mJoin = v11;
        free(AttributeNs);
        return 1;
    }

    goto LABEL_18;
  }

  v8 = *AttributeNs;
  switch(v8)
  {
    case 'b':
      v9 = 0;
      goto LABEL_11;
    case 's':
      v9 = 2;
      goto LABEL_11;
    case 'r':
      v9 = 1;
LABEL_11:
      self->mCap = v9;
      free(AttributeNs);
      goto LABEL_12;
  }

LABEL_18:
  free(AttributeNs);
  return 3;
}

@end