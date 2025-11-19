@interface TSWPChange
- (BOOL)canMergeWithKind:(int)a3 session:(id)a4;
- (BOOL)showsHiddenDeletionMarkup;
- (BOOL)showsMarkup;
- (TSUColor)changeAdornmentsColor;
- (TSUColor)textMarkupColor;
- (TSWPChange)initWithContext:(id)a3 kind:(int)a4 session:(id)a5;
- (id)copyWithContext:(id)a3;
- (void)dealloc;
- (void)p_invalidateAnnotationResultsForDocumentRoot:(id)a3;
- (void)setDate:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setSession:(id)a3;
- (void)trackedTextDidChange;
@end

@implementation TSWPChange

- (void)setSession:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->_session = a3;
}

- (void)setDate:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->_date = a3;
}

- (TSWPChange)initWithContext:(id)a3 kind:(int)a4 session:(id)a5
{
  v12.receiver = self;
  v12.super_class = TSWPChange;
  v8 = [(TSPObject *)&v12 initWithContext:?];
  v9 = v8;
  if (v8)
  {
    v8->_kind = a4;
    v8->_session = a5;
    v9->_date = objc_alloc_init(MEMORY[0x277CBEAA8]);
    objc_opt_class();
    [a3 documentObject];
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

- (void)setHidden:(BOOL)a3
{
  if (a3 && self->_kind != 2)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPChange setHidden:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPChange.mm"), 90, @"Only deletions may be hidden"}];
  }

  [(TSPObject *)self willModify];
  self->_hidden = a3;
}

- (BOOL)showsMarkup
{
  v3 = [-[TSPObject documentRoot](self "documentRoot")];
  if ([(TSWPChange *)self isHidden])
  {
    return 0;
  }

  kind = self->_kind;
  v6 = [(TSWPChangeSession *)self->_session date];

  return [v3 shouldShowMarkupForChangeKind:kind date:v6];
}

- (BOOL)showsHiddenDeletionMarkup
{
  if (self->_kind != 2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPChange showsHiddenDeletionMarkup]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPChange.mm"), 116, @"Only call this method for deletions"}];
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
  v7 = [(TSWPChangeSession *)self->_session date];

  return [v6 shouldShowMarkupForChangeKind:1 date:v7];
}

- (TSUColor)textMarkupColor
{
  v2 = [(TSWPChangeSession *)self->_session author];

  return [(TSKAnnotationAuthor *)v2 textMarkupColor];
}

- (TSUColor)changeAdornmentsColor
{
  v2 = [(TSWPChangeSession *)self->_session author];

  return [(TSKAnnotationAuthor *)v2 changeAdornmentsColor];
}

- (void)trackedTextDidChange
{
  v3 = [(TSPObject *)self documentRoot];

  [(TSWPChange *)self p_invalidateAnnotationResultsForDocumentRoot:v3];
}

- (void)p_invalidateAnnotationResultsForDocumentRoot:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];

  [v4 postNotificationName:@"kTSDAnnotationInvalidatedNotification" object:a3];
}

- (id)copyWithContext:(id)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{-[TSWPChange zone](self, "zone")), "initWithContext:", a3}];
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

- (BOOL)canMergeWithKind:(int)a3 session:(id)a4
{
  if (self->_kind == a3)
  {
    return [a4 isEqualToSession:self->_session];
  }

  else
  {
    return 0;
  }
}

@end