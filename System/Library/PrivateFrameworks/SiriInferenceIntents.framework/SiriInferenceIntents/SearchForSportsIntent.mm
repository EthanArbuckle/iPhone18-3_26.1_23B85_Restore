@interface SearchForSportsIntent
- (SearchForSportsIntent)init;
- (SearchForSportsIntent)initWithCoder:(id)coder;
@end

@implementation SearchForSportsIntent

- (SearchForSportsIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchForSportsIntent();
  return [(SearchForSportsIntent *)&v3 init];
}

- (SearchForSportsIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SearchForSportsIntent();
  coderCopy = coder;
  v5 = [(SearchForSportsIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end