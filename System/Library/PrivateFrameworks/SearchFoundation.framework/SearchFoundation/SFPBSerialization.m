@interface SFPBSerialization
+ (id)_cardWithPBCard:(id)a3;
+ (id)cardWithPBData:(id)a3 encoding:(unint64_t)a4;
@end

@implementation SFPBSerialization

+ (id)_cardWithPBCard:(id)a3
{
  v3 = a3;
  v4 = [[SFCard alloc] initWithProtobuf:v3];
  v5 = [v3 data];

  [(SFCard *)v4 _setOriginalCardData:v5];

  return v4;
}

+ (id)cardWithPBData:(id)a3 encoding:(unint64_t)a4
{
  v6 = a3;
  if (a4 || (v8 = [[_SFPBCard alloc] initWithData:v6]) == 0)
  {
    v7 = 0;
  }

  else
  {
    v9 = v8;
    v7 = [a1 _cardWithPBCard:v8];
  }

  return v7;
}

@end