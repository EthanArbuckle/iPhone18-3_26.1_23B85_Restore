@interface GQDRStrokePattern
+ (id)solidPattern;
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
@end

@implementation GQDRStrokePattern

+ (id)solidPattern
{
  v2 = objc_alloc_init(a1);
  if (v2)
  {
    v2[2] = 1;
  }

  return v2;
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  AttributeNs = xmlTextReaderGetAttributeNs(a3, "type", *(qword_A35E8 + 16));
  if (AttributeNs)
  {
    v5 = AttributeNs;
    v6 = 0;
    while (!xmlStrEqual(v5, (&off_804E0)[v6]))
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

@end