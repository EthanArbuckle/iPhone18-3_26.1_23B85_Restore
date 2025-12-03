@interface SFPBSerialization
+ (id)_cardWithPBCard:(id)card;
+ (id)cardWithPBData:(id)data encoding:(unint64_t)encoding;
@end

@implementation SFPBSerialization

+ (id)_cardWithPBCard:(id)card
{
  cardCopy = card;
  v4 = [[SFCard alloc] initWithProtobuf:cardCopy];
  data = [cardCopy data];

  [(SFCard *)v4 _setOriginalCardData:data];

  return v4;
}

+ (id)cardWithPBData:(id)data encoding:(unint64_t)encoding
{
  dataCopy = data;
  if (encoding || (v8 = [[_SFPBCard alloc] initWithData:dataCopy]) == 0)
  {
    v7 = 0;
  }

  else
  {
    v9 = v8;
    v7 = [self _cardWithPBCard:v8];
  }

  return v7;
}

@end