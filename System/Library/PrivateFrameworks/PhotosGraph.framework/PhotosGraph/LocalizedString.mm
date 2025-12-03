@interface LocalizedString
- (_TtC11PhotosGraph15LocalizedString)init;
- (_TtC11PhotosGraph15LocalizedString)initWithCoder:(id)coder;
@end

@implementation LocalizedString

- (_TtC11PhotosGraph15LocalizedString)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocalizedString();
  return [(LocalizedString *)&v3 init];
}

- (_TtC11PhotosGraph15LocalizedString)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LocalizedString();
  coderCopy = coder;
  v5 = [(LocalizedString *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end