@interface ConcernTextCell
- (_TtC8VideosUI15ConcernTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ConcernTextCell

- (_TtC8VideosUI15ConcernTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1E4205F14();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1E390DCEC(style, identifier, v6);
}

@end