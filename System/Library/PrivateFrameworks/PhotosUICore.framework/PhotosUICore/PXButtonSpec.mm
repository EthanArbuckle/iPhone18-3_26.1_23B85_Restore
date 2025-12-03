@interface PXButtonSpec
- (BOOL)isEqual:(id)equal;
- (PXButtonSpec)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXButtonSpec

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PXButtonSpec;
  v4 = [(PXLabelSpec *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 28, self->_highlightedTextColor);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = PXButtonSpec;
  if ([(PXLabelSpec *)&v9 isEqual:equalCopy])
  {
    highlightedTextColor = [equalCopy highlightedTextColor];
    highlightedTextColor2 = [(PXButtonSpec *)self highlightedTextColor];
    if (highlightedTextColor == highlightedTextColor2)
    {
      v7 = 1;
    }

    else
    {
      v7 = [highlightedTextColor isEqual:highlightedTextColor2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PXButtonSpec;
  v3 = [(PXLabelSpec *)&v7 hash];
  highlightedTextColor = [(PXButtonSpec *)self highlightedTextColor];
  v5 = [highlightedTextColor hash];

  return v5 ^ v3;
}

- (PXButtonSpec)init
{
  v4.receiver = self;
  v4.super_class = PXButtonSpec;
  v2 = [(PXLabelSpec *)&v4 init];
  if (v2)
  {
    [(PXLabelSpec *)v2 setTextAlignment:1];
    PXEdgeInsetsMake();
  }

  return 0;
}

@end