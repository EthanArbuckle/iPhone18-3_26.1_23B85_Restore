@interface GQDWPPageStart
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
@end

@implementation GQDWPPageStart

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  if (sub_42384(reader, qword_A35E8, "page-index", &self->mIndex))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end