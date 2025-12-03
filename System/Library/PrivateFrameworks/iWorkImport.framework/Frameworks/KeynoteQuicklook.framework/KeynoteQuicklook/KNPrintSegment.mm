@interface KNPrintSegment
- (KNPrintSegment)initWithSlideNode:(id)node buildIndex:(unint64_t)index notesIndex:(unint64_t)notesIndex commentsPageIndex:(int64_t)pageIndex span:(unint64_t)span;
@end

@implementation KNPrintSegment

- (KNPrintSegment)initWithSlideNode:(id)node buildIndex:(unint64_t)index notesIndex:(unint64_t)notesIndex commentsPageIndex:(int64_t)pageIndex span:(unint64_t)span
{
  nodeCopy = node;
  v17.receiver = self;
  v17.super_class = KNPrintSegment;
  v14 = [(KNPrintSegment *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_slideNode, node);
    v15->_buildIndex = index;
    v15->_notesIndex = notesIndex;
    v15->_commentsPageIndex = pageIndex;
    v15->_span = span;
  }

  return v15;
}

@end