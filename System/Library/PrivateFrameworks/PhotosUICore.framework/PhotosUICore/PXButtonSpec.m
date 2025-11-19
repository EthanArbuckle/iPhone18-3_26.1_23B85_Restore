@interface PXButtonSpec
- (BOOL)isEqual:(id)a3;
- (PXButtonSpec)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXButtonSpec

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PXButtonSpec;
  v4 = [(PXLabelSpec *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 28, self->_highlightedTextColor);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXButtonSpec;
  if ([(PXLabelSpec *)&v9 isEqual:v4])
  {
    v5 = [v4 highlightedTextColor];
    v6 = [(PXButtonSpec *)self highlightedTextColor];
    if (v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v5 isEqual:v6];
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
  v4 = [(PXButtonSpec *)self highlightedTextColor];
  v5 = [v4 hash];

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