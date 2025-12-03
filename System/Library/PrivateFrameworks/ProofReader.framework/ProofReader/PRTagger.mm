@interface PRTagger
- (PRTagger)initWithTagSchemes:(id)schemes orthoIndex:(unint64_t)index;
@end

@implementation PRTagger

- (PRTagger)initWithTagSchemes:(id)schemes orthoIndex:(unint64_t)index
{
  v6.receiver = self;
  v6.super_class = PRTagger;
  result = [(NLTagger *)&v6 initWithTagSchemes:schemes];
  if (result)
  {
    result->_orthoIndex = index;
  }

  return result;
}

@end