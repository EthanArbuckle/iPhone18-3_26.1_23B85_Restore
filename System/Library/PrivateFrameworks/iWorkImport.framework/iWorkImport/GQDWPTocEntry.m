@interface GQDWPTocEntry
- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4;
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

- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4
{
  v5 = sub_4294C(a3, qword_A35E8, "bookmark");
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