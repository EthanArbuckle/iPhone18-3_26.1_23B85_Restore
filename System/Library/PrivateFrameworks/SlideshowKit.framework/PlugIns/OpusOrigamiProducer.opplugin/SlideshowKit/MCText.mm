@interface MCText
- (MCText)initWithImprint:(id)imprint andMontage:(id)montage;
- (id)attributedStringWithCTAttributes;
- (id)imprint;
- (void)demolish;
- (void)setAttributedString:(id)string;
@end

@implementation MCText

- (MCText)initWithImprint:(id)imprint andMontage:(id)montage
{
  v8.receiver = self;
  v8.super_class = MCText;
  v5 = [(MCObject *)&v8 initWithImprint:imprint andMontage:montage];
  if (v5)
  {
    v5->mIndex = [objc_msgSend(imprint objectForKey:{@"index", "unsignedIntegerValue"}];
    v6 = [imprint objectForKey:@"attributedString"];
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
  imprint = [(MCObject *)&v6 imprint];
  [imprint setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->mIndex), @"index"}];
  mStringAttributes = self->mStringAttributes;
  if (mStringAttributes)
  {
    [imprint setObject:mStringAttributes forKey:@"attributedString"];
  }

  return imprint;
}

- (id)attributedStringWithCTAttributes
{
  stringAttributes = [(MCText *)self stringAttributes];

  return [MCTextConversion attributedStringWithCTAttributesFromStringAttributes:stringAttributes];
}

- (void)setAttributedString:(id)string
{
  v4 = [+[MCTextConversion stringAttributesWithAttributedString:](MCTextConversion stringAttributesWithAttributedString:{string), "mutableCopy"}];

  [(MCText *)self setStringAttributes:v4];
}

@end