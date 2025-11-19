@interface SLHighlightDisambiguationCell
+ (id)reuseIdentifier;
- (SLHighlightDisambiguationCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateWithAttribution:(id)a3;
@end

@implementation SLHighlightDisambiguationCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (SLHighlightDisambiguationCell)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SLHighlightDisambiguationCell;
  return [(SLHighlightDisambiguationCell *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)updateWithAttribution:(id)a3
{
  v5 = a3;
  if (self->_attribution != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_attribution, a3);
    expandedAttributionView = self->_expandedAttributionView;
    if (expandedAttributionView)
    {
      [(SLHighlightDisambiguationPillView *)expandedAttributionView removeFromSuperview];
    }

    v7 = [[SLHighlightDisambiguationPillView alloc] initWithAttribution:v10];
    v8 = self->_expandedAttributionView;
    self->_expandedAttributionView = v7;

    v9 = [(SLHighlightDisambiguationCell *)self expandedAttributionView];
    [(SLHighlightDisambiguationCell *)self addSubview:v9];

    [(SLHighlightDisambiguationCell *)self setNeedsLayout];
    v5 = v10;
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