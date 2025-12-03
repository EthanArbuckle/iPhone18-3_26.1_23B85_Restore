@interface DOMElement(UIWebInteraction)
- (id)tapHighlightColor;
- (uint64_t)touchCalloutEnabled;
@end

@implementation DOMElement(UIWebInteraction)

- (id)tapHighlightColor
{
  ownerDocument = [self ownerDocument];
  v3 = [ownerDocument getComputedStyle:self pseudoElement:&stru_1EFB14550];
  v4 = [v3 getPropertyCSSValue:@"-webkit-tap-highlight-color"];
  getRGBColorValue = [v4 getRGBColorValue];

  if (getRGBColorValue)
  {
    v6 = [getRGBColorValue red];
    [v6 getFloatValue:1];
    v8 = v7 / 255.0;
    green = [getRGBColorValue green];
    [green getFloatValue:1];
    v11 = v10 / 255.0;
    blue = [getRGBColorValue blue];
    [blue getFloatValue:1];
    v14 = v13 / 255.0;
    alpha = [getRGBColorValue alpha];
    [alpha getFloatValue:1];
    v17 = [UIColor colorWithRed:v8 green:v11 blue:v14 alpha:v16];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = &off_1F0124B80;
    v17 = objc_msgSendSuper2(&v19, sel_tapHighlightColor);
  }

  return v17;
}

- (uint64_t)touchCalloutEnabled
{
  ownerDocument = [self ownerDocument];
  v3 = [ownerDocument getComputedStyle:self pseudoElement:&stru_1EFB14550];
  v4 = [v3 getPropertyCSSValue:@"-webkit-touch-callout"];
  getStringValue = [v4 getStringValue];

  if (getStringValue)
  {
    v6 = [getStringValue isEqualToString:@"none"] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end