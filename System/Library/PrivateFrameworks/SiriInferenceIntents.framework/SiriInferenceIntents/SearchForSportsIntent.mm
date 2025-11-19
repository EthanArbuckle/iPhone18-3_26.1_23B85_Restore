@interface SearchForSportsIntent
- (SearchForSportsIntent)init;
- (SearchForSportsIntent)initWithCoder:(id)a3;
@end

@implementation SearchForSportsIntent

- (SearchForSportsIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchForSportsIntent();
  return [(SearchForSportsIntent *)&v3 init];
}

- (SearchForSportsIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SearchForSportsIntent();
  v4 = a3;
  v5 = [(SearchForSportsIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end