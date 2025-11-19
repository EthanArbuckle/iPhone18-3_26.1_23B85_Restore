@interface SubtitleCell
- (_TtC8StocksUI12SubtitleCell)initWithCoder:(id)a3;
- (_TtC8StocksUI12SubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SubtitleCell

- (_TtC8StocksUI12SubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_22089136C();
    a4 = sub_22089132C();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(SubtitleCell *)&v9 initWithStyle:3 reuseIdentifier:a4];

  return v7;
}

- (_TtC8StocksUI12SubtitleCell)initWithCoder:(id)a3
{
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end