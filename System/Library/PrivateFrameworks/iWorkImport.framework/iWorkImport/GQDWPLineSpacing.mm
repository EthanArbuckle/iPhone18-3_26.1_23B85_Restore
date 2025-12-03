@interface GQDWPLineSpacing
- (GQDWPLineSpacing)init;
- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor;
@end

@implementation GQDWPLineSpacing

- (GQDWPLineSpacing)init
{
  v3.receiver = self;
  v3.super_class = GQDWPLineSpacing;
  result = [(GQDWPLineSpacing *)&v3 init];
  if (result)
  {
    *&result->mMode = 0x3F80000000000000;
  }

  return result;
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor
{
  v6 = 3;
  if (sub_42FBC(reader, qword_A35E8, "mode", &dword_A4240, &self->mMode))
  {
    sub_42888(reader, qword_A35E8, "amt", &self->mAmount);
    if (v7)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return v6;
}

@end