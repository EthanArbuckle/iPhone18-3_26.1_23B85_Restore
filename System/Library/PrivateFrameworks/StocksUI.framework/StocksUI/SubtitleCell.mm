@interface SubtitleCell
- (_TtC8StocksUI12SubtitleCell)initWithCoder:(id)coder;
- (_TtC8StocksUI12SubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SubtitleCell

- (_TtC8StocksUI12SubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_22089136C();
    identifier = sub_22089132C();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(SubtitleCell *)&v9 initWithStyle:3 reuseIdentifier:identifier];

  return v7;
}

- (_TtC8StocksUI12SubtitleCell)initWithCoder:(id)coder
{
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end