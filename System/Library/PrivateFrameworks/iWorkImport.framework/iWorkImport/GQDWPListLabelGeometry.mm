@interface GQDWPListLabelGeometry
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
@end

@implementation GQDWPListLabelGeometry

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  sub_4290C(reader, qword_A35E8, "scale");
  *&v5 = v5;
  self->mScale = *&v5;
  sub_4290C(reader, qword_A35E8, "offset");
  *&v6 = v6;
  self->mBaselineOffset = *&v6;
  self->mScaleWithText = sub_42340(reader, qword_A35E8, "scale-with-text", 0);
  self->mLabelAlignment = 0;
  AttributeNs = xmlTextReaderGetAttributeNs(reader, "align", *(qword_A35E8 + 16));
  if (AttributeNs)
  {
    v8 = AttributeNs;
    v9 = 0;
    while (!xmlStrEqual(v8, off_80568[v9]))
    {
      if (++v9 == 3)
      {
        goto LABEL_7;
      }
    }

    self->mLabelAlignment = v9;
LABEL_7:
    free(v8);
  }

  return 1;
}

@end