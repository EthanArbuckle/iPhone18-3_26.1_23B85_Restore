@interface DOMElement(UIWebInteraction)
- (id)tapHighlightColor;
- (uint64_t)touchCalloutEnabled;
@end

@implementation DOMElement(UIWebInteraction)

- (id)tapHighlightColor
{
  v2 = [a1 ownerDocument];
  v3 = [v2 getComputedStyle:a1 pseudoElement:&stru_1EFB14550];
  v4 = [v3 getPropertyCSSValue:@"-webkit-tap-highlight-color"];
  v5 = [v4 getRGBColorValue];

  if (v5)
  {
    v6 = [v5 red];
    [v6 getFloatValue:1];
    v8 = v7 / 255.0;
    v9 = [v5 green];
    [v9 getFloatValue:1];
    v11 = v10 / 255.0;
    v12 = [v5 blue];
    [v12 getFloatValue:1];
    v14 = v13 / 255.0;
    v15 = [v5 alpha];
    [v15 getFloatValue:1];
    v17 = [UIColor colorWithRed:v8 green:v11 blue:v14 alpha:v16];
  }

  else
  {
    v19.receiver = a1;
    v19.super_class = &off_1F0124B80;
    v17 = objc_msgSendSuper2(&v19, sel_tapHighlightColor);
  }

  return v17;
}

- (uint64_t)touchCalloutEnabled
{
  v2 = [a1 ownerDocument];
  v3 = [v2 getComputedStyle:a1 pseudoElement:&stru_1EFB14550];
  v4 = [v3 getPropertyCSSValue:@"-webkit-touch-callout"];
  v5 = [v4 getStringValue];

  if (v5)
  {
    v6 = [v5 isEqualToString:@"none"] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end