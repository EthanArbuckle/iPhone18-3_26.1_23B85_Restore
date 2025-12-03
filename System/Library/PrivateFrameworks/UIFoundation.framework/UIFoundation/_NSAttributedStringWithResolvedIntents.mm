@interface _NSAttributedStringWithResolvedIntents
- (_NSAttributedStringWithResolvedIntents)initWithUnresolvedString:(id)string resolver:(Class)resolver;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
@end

@implementation _NSAttributedStringWithResolvedIntents

- (_NSAttributedStringWithResolvedIntents)initWithUnresolvedString:(id)string resolver:(Class)resolver
{
  v8.receiver = self;
  v8.super_class = _NSAttributedStringWithResolvedIntents;
  v6 = [(_NSAttributedStringWithResolvedIntents *)&v8 init];
  if (v6)
  {
    v6->_string = [string copy];
    v6->_resolver = resolver;
  }

  return v6;
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  resolver = self->_resolver;
  v5 = [(NSAttributedString *)self->_string attributesAtIndex:index effectiveRange:range];

  return [(objc_class *)resolver attributesByResolvingIntentsInAttributes:v5];
}

@end