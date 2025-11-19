@interface MediaStream
- (MediaStream)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
- (NSString)description;
@end

@implementation MediaStream

- (NSString)description
{
  v2 = self;
  MediaStream.description.getter();

  v3 = sub_268B37BC4();

  return v3;
}

- (MediaStream)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    sub_268B37BF4();
  }

  sub_268B37BF4();
  if (a5)
  {
    sub_268B37BF4();
  }

  return MediaStream.init(identifier:display:pronunciationHint:)();
}

@end