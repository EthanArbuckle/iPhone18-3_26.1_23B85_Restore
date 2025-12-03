@interface GQDWPTocEntry
- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor;
- (void)dealloc;
@end

@implementation GQDWPTocEntry

- (void)dealloc
{
  mBookmark = self->mBookmark;
  if (mBookmark)
  {
    CFRelease(mBookmark);
  }

  v4.receiver = self;
  v4.super_class = GQDWPTocEntry;
  [(GQDWPBlockList *)&v4 dealloc];
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor
{
  v5 = sub_4294C(reader, qword_A35E8, "bookmark");
  self->mBookmark = v5;
  if (v5)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end