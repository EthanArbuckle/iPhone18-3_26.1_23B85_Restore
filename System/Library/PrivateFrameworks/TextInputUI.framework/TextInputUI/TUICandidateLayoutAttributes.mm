@interface TUICandidateLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (TUICandidateLayoutAttributes)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TUICandidateLayoutAttributes

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TUICandidateLayoutAttributes;
  if (-[UICollectionViewLayoutAttributes isEqual:](&v12, sel_isEqual_, v4) && (v5 = -[TUICandidateLayoutAttributes candidateNumber](self, "candidateNumber"), v5 == [v4 candidateNumber]) && (-[TUICandidateLayoutAttributes contentAlpha](self, "contentAlpha"), v7 = v6, objc_msgSend(v4, "contentAlpha"), v7 == v8))
  {
    v11 = [(TUICandidateLayoutAttributes *)self row];
    v9 = v11 == [v4 row];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TUICandidateLayoutAttributes;
  result = [(UICollectionViewLayoutAttributes *)&v5 copyWithZone:a3];
  *(result + 44) = self->_candidateNumber;
  *(result + 45) = *&self->_contentAlpha;
  *(result + 46) = self->_row;
  return result;
}

- (TUICandidateLayoutAttributes)init
{
  v3.receiver = self;
  v3.super_class = TUICandidateLayoutAttributes;
  result = [(UICollectionViewLayoutAttributes *)&v3 init];
  if (result)
  {
    result->_contentAlpha = 1.0;
  }

  return result;
}

@end