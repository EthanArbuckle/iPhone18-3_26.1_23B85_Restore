@interface GQDWPTab
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
- (void)dealloc;
@end

@implementation GQDWPTab

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  sub_4290C(a3, qword_A35E8, off_9CD80);
  *&v5 = v5;
  self->mPosition = *&v5;
  self->mAlignment = 0;
  AttributeNs = xmlTextReaderGetAttributeNs(a3, off_9CD88, *(qword_A35E8 + 16));
  if (AttributeNs)
  {
    v7 = AttributeNs;
    v8 = 0;
    while (!xmlStrEqual(v7, off_80598[v8]))
    {
      if (++v8 == 4)
      {
        goto LABEL_7;
      }
    }

    self->mAlignment = v8;
LABEL_7:
    free(v7);
  }

  v9 = sub_4294C(a3, qword_A35E8, off_9CD90);
  mLeader = self->mLeader;
  if (mLeader)
  {
    CFRelease(mLeader);
  }

  self->mLeader = v9;
  return 1;
}

- (void)dealloc
{
  mLeader = self->mLeader;
  if (mLeader)
  {
    CFRelease(mLeader);
  }

  v4.receiver = self;
  v4.super_class = GQDWPTab;
  [(GQDWPTab *)&v4 dealloc];
}

@end