@interface GQDWPTextLabel
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
- (void)dealloc;
@end

@implementation GQDWPTextLabel

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  v5 = sub_4294C(reader, qword_A35E8, "format");
  self->mFormat = v5;
  v11 = 0;
  if (v5 && (sub_42384(reader, qword_A35E8, "first", &v11) & 1) != 0)
  {
    v6 = v11;
    self->mLabelType = 15;
    self->mFirst = v6;
    AttributeNs = xmlTextReaderGetAttributeNs(reader, "type", *(qword_A35E8 + 16));
    if (AttributeNs)
    {
      v8 = AttributeNs;
      v9 = 0;
      while (!xmlStrEqual(v8, off_805B8[v9]))
      {
        if (++v9 == 15)
        {
          goto LABEL_10;
        }
      }

      self->mLabelType = v9;
LABEL_10:
      free(v8);
    }

    if (self->mLabelType == 15)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    self->mLabelType = 15;
    return 3;
  }
}

- (void)dealloc
{
  CFRelease(self->mFormat);
  v3.receiver = self;
  v3.super_class = GQDWPTextLabel;
  [(GQDWPTextLabel *)&v3 dealloc];
}

@end