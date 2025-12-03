@interface TUGroupTitle
- (TUGroupTitle)initWithString:(id)string;
@end

@implementation TUGroupTitle

- (TUGroupTitle)initWithString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = TUGroupTitle;
  v5 = [(TUGroupTitle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUGroupTitle *)v5 setValue:stringCopy];
  }

  return v6;
}

@end