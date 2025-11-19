@interface KNPrintSegment
- (KNPrintSegment)initWithSlideNode:(id)a3 buildIndex:(unint64_t)a4 notesIndex:(unint64_t)a5 commentsPageIndex:(int64_t)a6 span:(unint64_t)a7;
@end

@implementation KNPrintSegment

- (KNPrintSegment)initWithSlideNode:(id)a3 buildIndex:(unint64_t)a4 notesIndex:(unint64_t)a5 commentsPageIndex:(int64_t)a6 span:(unint64_t)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = KNPrintSegment;
  v14 = [(KNPrintSegment *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_slideNode, a3);
    v15->_buildIndex = a4;
    v15->_notesIndex = a5;
    v15->_commentsPageIndex = a6;
    v15->_span = a7;
  }

  return v15;
}

@end