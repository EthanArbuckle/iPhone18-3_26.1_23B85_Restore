@interface TSKAnnotationAuthorTextHighlightColorProvider
- (CGColor)cgColor;
- (TSKAnnotationAuthorTextHighlightColorProvider)initWithAnnotationAuthor:(id)a3;
- (void)dealloc;
@end

@implementation TSKAnnotationAuthorTextHighlightColorProvider

- (TSKAnnotationAuthorTextHighlightColorProvider)initWithAnnotationAuthor:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAnnotationAuthorTextHighlightColorProvider initWithAnnotationAuthor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKAnnotationAuthor.mm"), 540, @"Invalid parameter not satisfying: %s", "annotationAuthor != nil"}];
  }

  v9.receiver = self;
  v9.super_class = TSKAnnotationAuthorTextHighlightColorProvider;
  v7 = [(TSKAnnotationAuthorTextHighlightColorProvider *)&v9 init];
  if (v7)
  {
    v7->mAnnotationAuthor = a3;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKAnnotationAuthorTextHighlightColorProvider;
  [(TSKAnnotationAuthorTextHighlightColorProvider *)&v3 dealloc];
}

- (CGColor)cgColor
{
  v2 = [(TSKAnnotationAuthor *)self->mAnnotationAuthor textHighlightColor];

  return [(TSUColor *)v2 CGColor];
}

@end