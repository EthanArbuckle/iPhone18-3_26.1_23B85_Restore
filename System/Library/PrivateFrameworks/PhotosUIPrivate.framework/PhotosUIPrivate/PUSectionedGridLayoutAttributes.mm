@interface PUSectionedGridLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (PUSectionedGridLayoutAttributes)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PUSectionedGridLayoutAttributes

- (id)description
{
  v8.receiver = self;
  v8.super_class = PUSectionedGridLayoutAttributes;
  v3 = [(UICollectionViewLayoutAttributes *)&v8 description];
  v4 = v3;
  if (self->_extendsTopContent)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v6 = [v3 stringByAppendingFormat:@"interactiveTransitionProgress = %0.2f extendsTopContent = %@", *&self->_interactiveTransitionProgress, v5];;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = PUSectionedGridLayoutAttributes;
  if (![(UICollectionViewLayoutAttributes *)&v11 isEqual:equalCopy])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 1;
    goto LABEL_8;
  }

  interactiveTransitionProgress = self->_interactiveTransitionProgress;
  [equalCopy interactiveTransitionProgress];
  if (interactiveTransitionProgress == v6 && (exists = self->_exists, exists == [equalCopy exists]))
  {
    extendsTopContent = self->_extendsTopContent;
    v9 = extendsTopContent == [equalCopy extendsTopContent];
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PUSectionedGridLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [v4 setInteractiveTransitionProgress:self->_interactiveTransitionProgress];
  [v4 setExists:self->_exists];
  [v4 setExtendsTopContent:self->_extendsTopContent];
  return v4;
}

- (PUSectionedGridLayoutAttributes)init
{
  v3.receiver = self;
  v3.super_class = PUSectionedGridLayoutAttributes;
  result = [(UICollectionViewLayoutAttributes *)&v3 init];
  result->_interactiveTransitionProgress = -1.0;
  return result;
}

@end