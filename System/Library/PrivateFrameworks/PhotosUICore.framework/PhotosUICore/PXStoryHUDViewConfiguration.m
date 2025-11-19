@interface PXStoryHUDViewConfiguration
- (BOOL)isEqual:(id)a3;
- (CGPoint)textInsets;
- (CGPoint)textRelativePosition;
- (PXStoryHUDViewConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXStoryHUDViewConfiguration

- (CGPoint)textInsets
{
  x = self->_textInsets.x;
  y = self->_textInsets.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)textRelativePosition
{
  x = self->_textRelativePosition.x;
  y = self->_textRelativePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (unint64_t)hash
{
  v3 = [(PXStoryHUDViewConfiguration *)self text];
  v4 = [v3 hash];
  v5 = [(PXStoryHUDViewConfiguration *)self title];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryHUDViewConfiguration *)self text];
      v7 = [(PXStoryHUDViewConfiguration *)v5 text];
      if (v6 == v7 || [v6 isEqualToString:v7])
      {
        [(PXStoryHUDViewConfiguration *)self textRelativePosition];
        v9 = v8;
        v11 = v10;
        [(PXStoryHUDViewConfiguration *)v5 textRelativePosition];
        v13 = 0;
        if (v9 != v14)
        {
          goto LABEL_22;
        }

        if (v11 != v12)
        {
          goto LABEL_22;
        }

        [(PXStoryHUDViewConfiguration *)self textInsets];
        v16 = v15;
        v18 = v17;
        [(PXStoryHUDViewConfiguration *)v5 textInsets];
        v13 = 0;
        if (v16 != v20 || v18 != v19)
        {
          goto LABEL_22;
        }

        [(PXStoryHUDViewConfiguration *)self fontSize];
        v22 = v21;
        [(PXStoryHUDViewConfiguration *)v5 fontSize];
        if (v22 == v23)
        {
          v24 = [(PXStoryHUDViewConfiguration *)self tintColor];
          v25 = [(PXStoryHUDViewConfiguration *)v5 tintColor];
          if ((v24 == v25 || [v24 isEqual:v25]) && (-[PXStoryHUDViewConfiguration borderWidth](self, "borderWidth"), v27 = v26, -[PXStoryHUDViewConfiguration borderWidth](v5, "borderWidth"), v27 == v28))
          {
            v29 = [(PXStoryHUDViewConfiguration *)self title];
            v30 = [(PXStoryHUDViewConfiguration *)v5 title];
            if (v29 == v30)
            {
              v13 = 1;
            }

            else
            {
              v13 = [v29 isEqualToString:v30];
            }
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_22;
        }
      }

      v13 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v13 = 0;
  }

LABEL_23:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->_text);
  *(v4 + 3) = self->_textRelativePosition;
  *(v4 + 4) = self->_textInsets;
  v4[3] = *&self->_fontSize;
  objc_storeStrong(v4 + 4, self->_tintColor);
  v4[5] = *&self->_borderWidth;
  objc_storeStrong(v4 + 2, self->_title);
  return v4;
}

- (PXStoryHUDViewConfiguration)init
{
  v8.receiver = self;
  v8.super_class = PXStoryHUDViewConfiguration;
  result = [(PXStoryHUDViewConfiguration *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #5.0 }

    result->_textInsets = _Q0;
    result->_fontSize = 11.0;
  }

  return result;
}

@end