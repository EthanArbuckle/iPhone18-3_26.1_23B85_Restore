@interface PXTitleSubtitleLabelSpec
- (BOOL)isEqual:(id)a3;
- (UIEdgeInsets)padding;
- (double)maximumTitleSubtitleHeight;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXTitleSubtitleLabelSpec

- (double)maximumTitleSubtitleHeight
{
  v3 = [(PXTitleSubtitleLabelSpec *)self titleLabelSpec];
  v4 = [(PXTitleSubtitleLabelSpec *)self subtitleLabelSpec];
  [(PXTitleSubtitleLabelSpec *)self interLabelSpacing];
  v6 = v5;
  v7 = [v3 font];
  BoundingBox = CTFontGetBoundingBox(v7);
  Height = CGRectGetHeight(BoundingBox);
  v9 = Height * [v3 numberOfLines];

  v10 = [v4 font];
  v15 = CTFontGetBoundingBox(v10);
  v11 = CGRectGetHeight(v15);
  v12 = v11 * [v4 numberOfLines];

  return ceil(v6 + v9 + v12) + 1.0;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = PXTitleSubtitleLabelSpec;
  v5 = [(PXViewSpec *)&v12 copyWithZone:?];
  v6 = [(PXLabelSpec *)self->_titleLabelSpec copyWithZone:a3];
  v7 = v5[12];
  v5[12] = v6;

  v8 = [(PXLabelSpec *)self->_subtitleLabelSpec copyWithZone:a3];
  v9 = v5[13];
  v5[13] = v8;

  v5[14] = *&self->_interLabelSpacing;
  v5[15] = *&self->_distanceBetweenTitleBaselineAndSubtitleBaseline;
  v10 = *&self->_padding.bottom;
  *(v5 + 8) = *&self->_padding.top;
  *(v5 + 9) = v10;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = PXTitleSubtitleLabelSpec;
  v5 = [(PXViewSpec *)&v36 isEqual:v4];
  v6 = v4;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_16;
  }

  v8 = [v6 titleLabelSpec];
  v9 = [(PXTitleSubtitleLabelSpec *)self titleLabelSpec];
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
LABEL_16:
      v33 = 0;
      goto LABEL_17;
    }
  }

  v12 = [v7 subtitleLabelSpec];
  v13 = [(PXTitleSubtitleLabelSpec *)self subtitleLabelSpec];
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    v15 = [v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  [v7 interLabelSpacing];
  v17 = v16;
  [(PXTitleSubtitleLabelSpec *)self interLabelSpacing];
  if (v17 != v18)
  {
    goto LABEL_16;
  }

  [v7 distanceBetweenTitleBaselineAndSubtitleBaseline];
  v20 = v19;
  [(PXTitleSubtitleLabelSpec *)self distanceBetweenTitleBaselineAndSubtitleBaseline];
  if (v20 != v21)
  {
    goto LABEL_16;
  }

  [v7 padding];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(PXTitleSubtitleLabelSpec *)self padding];
  v33 = 0;
  if (v25 == v34 && v23 == v30 && v29 == v32)
  {
    v33 = v27 == v31;
  }

LABEL_17:

  return v33;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = PXTitleSubtitleLabelSpec;
  v3 = [(PXViewSpec *)&v12 hash];
  v4 = [(PXTitleSubtitleLabelSpec *)self titleLabelSpec];
  v5 = [v4 hash];

  v6 = [(PXTitleSubtitleLabelSpec *)self subtitleLabelSpec];
  v7 = v5 ^ [v6 hash] ^ v3;

  [(PXTitleSubtitleLabelSpec *)self distanceBetweenTitleBaselineAndSubtitleBaseline];
  v9 = (v8 * 1000.0);
  [(PXTitleSubtitleLabelSpec *)self padding];
  return v7 ^ v10 ^ v9;
}

@end