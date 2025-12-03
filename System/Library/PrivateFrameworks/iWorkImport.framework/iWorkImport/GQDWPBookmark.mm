@interface GQDWPBookmark
- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor;
- (void)dealloc;
@end

@implementation GQDWPBookmark

- (void)dealloc
{
  mName = self->mName;
  if (mName)
  {
    CFRelease(mName);
  }

  v4.receiver = self;
  v4.super_class = GQDWPBookmark;
  [(GQDWPTextList *)&v4 dealloc];
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor
{
  self->mName = sub_4294C(reader, qword_A35E8, "name");
  self->mRanged = sub_42340(reader, qword_A35E8, "ranged", 0);
  self->mHidden = sub_42340(reader, qword_A35E8, "hidden", 0);
  return 1;
}

@end