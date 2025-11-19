@interface TUGroupTitle
- (TUGroupTitle)initWithString:(id)a3;
@end

@implementation TUGroupTitle

- (TUGroupTitle)initWithString:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUGroupTitle;
  v5 = [(TUGroupTitle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUGroupTitle *)v5 setValue:v4];
  }

  return v6;
}

@end