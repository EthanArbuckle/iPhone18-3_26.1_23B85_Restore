@interface SXComponentBookmark
- (SXComponentBookmark)initWithComponentIdentifier:(id)a3;
@end

@implementation SXComponentBookmark

- (SXComponentBookmark)initWithComponentIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SXComponentBookmark;
  v5 = [(SXComponentBookmark *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    componentIdentifier = v5->_componentIdentifier;
    v5->_componentIdentifier = v6;
  }

  return v5;
}

@end