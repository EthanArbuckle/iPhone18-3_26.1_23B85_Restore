@interface SupportArticle
- (NSString)body;
- (NSString)identifier;
- (NSString)title;
- (void)setBody:(id)body;
- (void)setTitle:(id)title;
@end

@implementation SupportArticle

- (NSString)title
{
  swift_beginAccess();
  if (*(self + 3))
  {
    v3 = *(self + 2);

    v4 = sub_1C014C200();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = sub_1C014C230();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  swift_beginAccess();
  v7 = *(self + 3);
  *(self + 2) = v4;
  *(self + 3) = v6;
}

- (NSString)body
{
  swift_beginAccess();
  if (*(self + 5))
  {
    v3 = *(self + 4);

    v4 = sub_1C014C200();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBody:(id)body
{
  if (body)
  {
    v4 = sub_1C014C230();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  swift_beginAccess();
  v7 = *(self + 5);
  *(self + 4) = v4;
  *(self + 5) = v6;
}

- (NSString)identifier
{
  v2 = *(self + 6);
  v3 = *(self + 7);

  v4 = sub_1C014C200();

  return v4;
}

@end