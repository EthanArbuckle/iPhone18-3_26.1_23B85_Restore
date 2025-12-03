@interface GQDWPListLabelTypeInfo
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
- (void)dealloc;
@end

@implementation GQDWPListLabelTypeInfo

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  self->mType = 0;
  AttributeNs = xmlTextReaderGetAttributeNs(reader, "type", *(qword_A35E8 + 16));
  if (AttributeNs)
  {
    v5 = AttributeNs;
    v6 = 0;
    while (!xmlStrEqual(v5, off_80580[v6]))
    {
      if (++v6 == 3)
      {
        goto LABEL_7;
      }
    }

    self->mType = v6;
LABEL_7:
    free(v5);
  }

  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDWPListLabelTypeInfo;
  [(GQDWPListLabelTypeInfo *)&v3 dealloc];
}

@end