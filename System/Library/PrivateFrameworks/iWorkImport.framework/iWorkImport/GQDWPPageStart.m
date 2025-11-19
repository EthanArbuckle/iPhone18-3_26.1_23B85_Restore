@interface GQDWPPageStart
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
@end

@implementation GQDWPPageStart

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  if (sub_42384(a3, qword_A35E8, "page-index", &self->mIndex))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end