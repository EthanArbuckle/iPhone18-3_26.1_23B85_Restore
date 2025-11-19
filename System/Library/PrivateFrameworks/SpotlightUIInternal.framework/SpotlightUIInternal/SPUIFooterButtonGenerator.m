@interface SPUIFooterButtonGenerator
- (SPUIFooterButtonGenerator)initWithReuseIdentifier:(id)a3 buttonGenerator:(id)a4;
@end

@implementation SPUIFooterButtonGenerator

- (SPUIFooterButtonGenerator)initWithReuseIdentifier:(id)a3 buttonGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SPUIFooterButtonGenerator;
  v8 = [(SPUIFooterButtonGenerator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SPUIFooterButtonGenerator *)v8 setButtonGenerator:v7];
    [(SPUIFooterButtonGenerator *)v9 setReuseIdentifier:v6];
  }

  return v9;
}

@end