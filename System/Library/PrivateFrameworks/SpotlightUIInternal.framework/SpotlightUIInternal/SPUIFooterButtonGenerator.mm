@interface SPUIFooterButtonGenerator
- (SPUIFooterButtonGenerator)initWithReuseIdentifier:(id)identifier buttonGenerator:(id)generator;
@end

@implementation SPUIFooterButtonGenerator

- (SPUIFooterButtonGenerator)initWithReuseIdentifier:(id)identifier buttonGenerator:(id)generator
{
  identifierCopy = identifier;
  generatorCopy = generator;
  v11.receiver = self;
  v11.super_class = SPUIFooterButtonGenerator;
  v8 = [(SPUIFooterButtonGenerator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SPUIFooterButtonGenerator *)v8 setButtonGenerator:generatorCopy];
    [(SPUIFooterButtonGenerator *)v9 setReuseIdentifier:identifierCopy];
  }

  return v9;
}

@end