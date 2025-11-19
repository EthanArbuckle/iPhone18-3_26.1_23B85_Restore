@interface MCText
- (MCText)initWithImprint:(id)a3 andMontage:(id)a4;
- (id)attributedStringWithCTAttributes;
- (id)imprint;
- (void)demolish;
- (void)setAttributedString:(id)a3;
@end

@implementation MCText

- (MCText)initWithImprint:(id)a3 andMontage:(id)a4
{
  v8.receiver = self;
  v8.super_class = MCText;
  v5 = [(MCObject *)&v8 initWithImprint:a3 andMontage:a4];
  if (v5)
  {
    v5->mIndex = [objc_msgSend(a3 objectForKey:{@"index", "unsignedIntegerValue"}];
    v6 = [a3 objectForKey:@"attributedString"];
    if (v6)
    {
      v5->mStringAttributes = v6;
    }
  }

  return v5;
}

- (void)demolish
{
  self->mStringAttributes = 0;
  self->mContainer = 0;
  v3.receiver = self;
  v3.super_class = MCText;
  [(MCObject *)&v3 demolish];
}

- (id)imprint
{
  v6.receiver = self;
  v6.super_class = MCText;
  v3 = [(MCObject *)&v6 imprint];
  [v3 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->mIndex), @"index"}];
  mStringAttributes = self->mStringAttributes;
  if (mStringAttributes)
  {
    [v3 setObject:mStringAttributes forKey:@"attributedString"];
  }

  return v3;
}

- (id)attributedStringWithCTAttributes
{
  v2 = [(MCText *)self stringAttributes];

  return [MCTextConversion attributedStringWithCTAttributesFromStringAttributes:v2];
}

- (void)setAttributedString:(id)a3
{
  v4 = [+[MCTextConversion stringAttributesWithAttributedString:](MCTextConversion stringAttributesWithAttributedString:{a3), "mutableCopy"}];

  [(MCText *)self setStringAttributes:v4];
}

@end