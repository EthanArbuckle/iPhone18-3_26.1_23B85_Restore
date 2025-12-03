@interface ChicletUnderglowFlowLayout
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
@end

@implementation ChicletUnderglowFlowLayout

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = sub_1C840B2BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C840CDDC();
  v11 = v10;
  sub_1C840B2AC();
  selfCopy = self;
  v13 = sub_1C83C2DB4(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  selfCopy = self;
  v4 = sub_1C83C3274();

  if (v4)
  {
    sub_1C83C304C();
    v5 = sub_1C840CFCC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end