@interface TSWPChange
- (BOOL)canMergeWithKind:(int)kind session:(id)session;
- (BOOL)showsHiddenDeletionMarkup;
- (BOOL)showsMarkup;
- (TSUColor)changeAdornmentsColor;
- (TSUColor)textMarkupColor;
- (TSWPChange)initWithContext:(id)context kind:(int)kind session:(id)session;
- (id)copyWithContext:(id)context;
- (void)dealloc;
- (void)p_invalidateAnnotationResultsForDocumentRoot:(id)root;
- (void)setDate:(id)date;
- (void)setHidden:(BOOL)hidden;
- (void)setSession:(id)session;
- (void)trackedTextDidChange;
@end

@implementation TSWPChange

- (void)setSession:(id)session
{
  [(TSPObject *)self willModify];
  sessionCopy = session;

  self->_session = session;
}

- (void)setDate:(id)date
{
  [(TSPObject *)self willModify];
  dateCopy = date;

  self->_date = date;
}

- (TSWPChange)initWithContext:(id)context kind:(int)kind session:(id)session
{
  v12.receiver = self;
  v12.super_class = TSWPChange;
  v8 = [(TSPObject *)&v12 initWithContext:?];
  v9 = v8;
  if (v8)
  {
    v8->_kind = kind;
    v8->_session = session;
    v9->_date = objc_alloc_init(MEMORY[0x277CBEAA8]);
    objc_opt_class();
    [context documentObject];
    v10 = TSUDynamicCast();
    if (v10)
    {
      v9->_hidden = [objc_msgSend(v10 "changeVisibility")] ^ 1;
    }

    else
    {
      v9->_hidden = 1;
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPChange;
  [(TSWPChange *)&v3 dealloc];
}

- (void)setHidden:(BOOL)hidden
{
  if (hidden && self->_kind != 2)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPChange setHidden:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPChange.mm"), 90, @"Only deletions may be hidden"}];
  }

  [(TSPObject *)self willModify];
  self->_hidden = hidden;
}

- (BOOL)showsMarkup
{
  v3 = [-[TSPObject documentRoot](self "documentRoot")];
  if ([(TSWPChange *)self isHidden])
  {
    return 0;
  }

  kind = self->_kind;
  date = [(TSWPChangeSession *)self->_session date];

  return [v3 shouldShowMarkupForChangeKind:kind date:date];
}

- (BOOL)showsHiddenDeletionMarkup
{
  if (self->_kind != 2)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPChange showsHiddenDeletionMarkup]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPChange.mm"), 116, @"Only call this method for deletions"}];
    if (self->_kind != 2)
    {
      return 0;
    }
  }

  if (![(TSWPChange *)self isHidden]|| [(TSWPChange *)self showsMarkup])
  {
    return 0;
  }

  v6 = [-[TSPObject documentRoot](self "documentRoot")];
  date = [(TSWPChangeSession *)self->_session date];

  return [v6 shouldShowMarkupForChangeKind:1 date:date];
}

- (TSUColor)textMarkupColor
{
  author = [(TSWPChangeSession *)self->_session author];

  return [(TSKAnnotationAuthor *)author textMarkupColor];
}

- (TSUColor)changeAdornmentsColor
{
  author = [(TSWPChangeSession *)self->_session author];

  return [(TSKAnnotationAuthor *)author changeAdornmentsColor];
}

- (void)trackedTextDidChange
{
  documentRoot = [(TSPObject *)self documentRoot];

  [(TSWPChange *)self p_invalidateAnnotationResultsForDocumentRoot:documentRoot];
}

- (void)p_invalidateAnnotationResultsForDocumentRoot:(id)root
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"kTSDAnnotationInvalidatedNotification" object:root];
}

- (id)copyWithContext:(id)context
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{-[TSWPChange zone](self, "zone")), "initWithContext:", context}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 56) = self->_kind;
    *(v4 + 64) = self->_session;
    *(v5 + 72) = [(NSDate *)self->_date copy];
    *(v5 + 80) = self->_hidden;
  }

  return v5;
}

- (BOOL)canMergeWithKind:(int)kind session:(id)session
{
  if (self->_kind == kind)
  {
    return [session isEqualToSession:self->_session];
  }

  else
  {
    return 0;
  }
}

@end