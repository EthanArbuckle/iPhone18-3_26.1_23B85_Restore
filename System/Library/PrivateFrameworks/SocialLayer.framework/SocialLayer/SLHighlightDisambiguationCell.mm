@interface SLHighlightDisambiguationCell
+ (id)reuseIdentifier;
- (SLHighlightDisambiguationCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateWithAttribution:(id)attribution;
@end

@implementation SLHighlightDisambiguationCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (SLHighlightDisambiguationCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SLHighlightDisambiguationCell;
  return [(SLHighlightDisambiguationCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)updateWithAttribution:(id)attribution
{
  attributionCopy = attribution;
  if (self->_attribution != attributionCopy)
  {
    v10 = attributionCopy;
    objc_storeStrong(&self->_attribution, attribution);
    expandedAttributionView = self->_expandedAttributionView;
    if (expandedAttributionView)
    {
      [(SLHighlightDisambiguationPillView *)expandedAttributionView removeFromSuperview];
    }

    v7 = [[SLHighlightDisambiguationPillView alloc] initWithAttribution:v10];
    v8 = self->_expandedAttributionView;
    self->_expandedAttributionView = v7;

    expandedAttributionView = [(SLHighlightDisambiguationCell *)self expandedAttributionView];
    [(SLHighlightDisambiguationCell *)self addSubview:expandedAttributionView];

    [(SLHighlightDisambiguationCell *)self setNeedsLayout];
    attributionCopy = v10;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SLHighlightDisambiguationCell;
  [(SLHighlightDisambiguationCell *)&v3 layoutSubviews];
  [(SLHighlightDisambiguationCell *)self bounds];
  [(SLHighlightDisambiguationPillView *)self->_expandedAttributionView setFrame:?];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = SLHighlightDisambiguationCell;
  [(SLHighlightDisambiguationCell *)&v6 prepareForReuse];
  attribution = self->_attribution;
  self->_attribution = 0;

  expandedAttributionView = self->_expandedAttributionView;
  if (expandedAttributionView)
  {
    [(SLHighlightDisambiguationPillView *)expandedAttributionView removeFromSuperview];
    v5 = self->_expandedAttributionView;
    self->_expandedAttributionView = 0;
  }
}

@end