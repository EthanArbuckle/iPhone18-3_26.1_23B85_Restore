@interface PRTagger
- (PRTagger)initWithTagSchemes:(id)a3 orthoIndex:(unint64_t)a4;
@end

@implementation PRTagger

- (PRTagger)initWithTagSchemes:(id)a3 orthoIndex:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = PRTagger;
  result = [(NLTagger *)&v6 initWithTagSchemes:a3];
  if (result)
  {
    result->_orthoIndex = a4;
  }

  return result;
}

@end