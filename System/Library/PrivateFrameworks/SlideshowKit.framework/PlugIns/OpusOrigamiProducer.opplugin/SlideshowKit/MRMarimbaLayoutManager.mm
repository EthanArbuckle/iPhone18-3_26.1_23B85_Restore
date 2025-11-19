@interface MRMarimbaLayoutManager
- (CGPoint)shadowOffset;
- (CGRect)currentRectForEditedText;
- (MRMarimbaLayoutManager)init;
- (void)dealloc;
- (void)updateWithString:(id)a3;
@end

@implementation MRMarimbaLayoutManager

- (MRMarimbaLayoutManager)init
{
  v4.receiver = self;
  v4.super_class = MRMarimbaLayoutManager;
  v2 = [(MRMarimbaLayoutManager *)&v4 init];
  if (v2)
  {
    v2->_textRenderer = objc_alloc_init(MRTextRenderer);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MRMarimbaLayoutManager;
  [(MRMarimbaLayoutManager *)&v3 dealloc];
}

- (void)updateWithString:(id)a3
{
  marimbaLayer = self->_marimbaLayer;
  if (marimbaLayer)
  {
    [(MRMarimbaLayer *)marimbaLayer bounds];
    [(MRTextRenderer *)self->_textRenderer setResolution:v6, v7];
  }

  [(MRTextRenderer *)self->_textRenderer setTruncate:0];
  v8 = [-[MRMarimbaLayoutManager _renderer](self "_renderer")];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 100000;
  }

  [(MRTextRenderer *)self->_textRenderer setMaxNumberOfLines:v9];
  [-[MRMarimbaLayoutManager _renderer](self "_renderer")];
  [(MRTextRenderer *)self->_textRenderer setDefinedSize:?];
  textRenderer = self->_textRenderer;

  [(MRTextRenderer *)textRenderer setText:a3];
}

- (CGRect)currentRectForEditedText
{
  [-[MRMarimbaLayoutManager _renderer](self "_renderer")];
  v24 = 0u;
  *v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  [-[MRMarimbaLayoutManager _renderer](self "_renderer")];
  v3 = v22;
  v4 = v23;
  v5 = *v25;
  if (*&v23 >= *&v24)
  {
    v6 = *&v23;
  }

  else
  {
    v6 = *&v24;
  }

  if (*&v22 >= v25[0])
  {
    v7 = v25[0];
  }

  else
  {
    v7 = *&v22;
  }

  if (*(&v24 + 1) >= v25[1])
  {
    v8 = *(&v24 + 1);
  }

  else
  {
    v8 = v25[1];
  }

  if (*(&v22 + 1) >= *(&v23 + 1))
  {
    v9 = *(&v23 + 1);
  }

  else
  {
    v9 = *(&v22 + 1);
  }

  [(MRMarimbaLayoutManager *)self shadowOffset:*&v8];
  if (v10 < 0.0)
  {
    v10 = -v10;
  }

  v12 = *&v4 - *&v3;
  v13 = *(&v4 + 1) - *(&v3 + 1);
  v14 = sqrt(((v12 * v12) + (v13 * v13)));
  v15 = *&v5 - *&v3;
  v16 = *(&v5 + 1) - *(&v3 + 1);
  v17 = sqrt(((v15 * v15) + (v16 * v16)));
  v18 = v7 + (v21 - v7 - v14) * 0.5 + v10;
  v19 = v9 + (v20 - v9 - v17) * 0.5 - v11;
  result.size.height = v17;
  result.size.width = v14;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGPoint)shadowOffset
{
  [(MRTextRenderer *)self->_textRenderer shadowOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

@end