@interface QLAppearance
- (QLAppearance)initWithCoder:(id)a3;
- (QLAppearance)initWithTopInset:(double)a3 bottomInset:(double)a4 presentationMode:(unint64_t)a5 peripheryInsets:(UIEdgeInsets)a6;
- (UIEdgeInsets)peripheryInsets;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLAppearance

- (QLAppearance)initWithTopInset:(double)a3 bottomInset:(double)a4 presentationMode:(unint64_t)a5 peripheryInsets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v17.receiver = self;
  v17.super_class = QLAppearance;
  v13 = [(QLAppearance *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_topInset = a3;
    v13->_bottomInset = a4;
    v13->_presentationMode = a5;
    v13->_peripheryInsets.top = top;
    v13->_peripheryInsets.left = left;
    v13->_peripheryInsets.bottom = bottom;
    v13->_peripheryInsets.right = right;
    v15 = v13;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  topInset = self->_topInset;
  v7 = a3;
  *&v5 = topInset;
  [v7 encodeFloat:@"topInset" forKey:v5];
  bottomInset = self->_bottomInset;
  *&bottomInset = bottomInset;
  [v7 encodeFloat:@"bottomInset" forKey:bottomInset];
  [v7 encodeInteger:self->_presentationMode forKey:@"presentationMode"];
  [v7 encodeUIEdgeInsets:@"peripheryInsets" forKey:{self->_peripheryInsets.top, self->_peripheryInsets.left, self->_peripheryInsets.bottom, self->_peripheryInsets.right}];
}

- (QLAppearance)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = QLAppearance;
  v5 = [(QLAppearance *)&v14 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"topInset"];
    v5->_topInset = v6;
    [v4 decodeFloatForKey:@"bottomInset"];
    v5->_bottomInset = v7;
    v5->_presentationMode = [v4 decodeIntegerForKey:@"presentationMode"];
    [v4 decodeUIEdgeInsetsForKey:@"peripheryInsets"];
    v5->_peripheryInsets.top = v8;
    v5->_peripheryInsets.left = v9;
    v5->_peripheryInsets.bottom = v10;
    v5->_peripheryInsets.right = v11;
    v12 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = QLAppearance;
  v4 = [(QLAppearance *)&v10 description];
  [(QLAppearance *)self topInset];
  v6 = v5;
  [(QLAppearance *)self bottomInset];
  v8 = [v3 stringWithFormat:@"%@ - topInset: %f bottomInset: %f; presentationMode: %lu", v4, v6, v7, -[QLAppearance presentationMode](self, "presentationMode")];;

  return v8;
}

- (UIEdgeInsets)peripheryInsets
{
  objc_copyStruct(v6, &self->_peripheryInsets, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end