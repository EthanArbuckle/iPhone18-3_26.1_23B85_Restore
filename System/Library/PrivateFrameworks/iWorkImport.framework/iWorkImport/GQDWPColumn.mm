@interface GQDWPColumn
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
@end

@implementation GQDWPColumn

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  v5 = 3;
  if (sub_42384(reader, qword_A35E8, "index", &self->mIndex))
  {
    sub_42888(reader, qword_A35E8, "width", &self->mWidth);
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }
  }

  sub_42888(reader, qword_A35E8, "spacing", &self->mSpacing);
  self->mHasSpacing = v7;
  return v5;
}

@end