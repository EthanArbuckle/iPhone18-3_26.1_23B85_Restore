@interface VUIGenresLabel
- (void)setGenres:(id)a3;
- (void)setMaxWidth:(double)a3;
- (void)update;
- (void)updateGenresToFit;
@end

@implementation VUIGenresLabel

- (void)setGenres:(id)a3
{
  v8 = a3;
  v5 = [(VUIGenresLabel *)self genres];

  if (v5 != v8)
  {
    objc_storeStrong(&self->_genres, a3);
    v6 = [v8 mutableCopy];
    adjustedGenres = self->_adjustedGenres;
    self->_adjustedGenres = v6;

    self->_maxWidth = 0.0;
  }
}

- (void)update
{
  v3 = [(VUIGenresLabel *)self adjustedGenres];
  v4 = [(VUIGenresLabel *)self genreSeparator];
  v7 = [v3 componentsJoinedByString:v4];

  v5 = [(VUILabel *)self textLayout];
  v6 = [v5 attributedStringWithString:v7 view:self];
  [(VUILabel *)self setVuiAttributedText:v6];
}

- (void)setMaxWidth:(double)a3
{
  [(VUIGenresLabel *)self maxWidth];
  if (v5 != a3)
  {
    self->_maxWidth = a3;

    [(VUIGenresLabel *)self updateGenresToFit];
  }
}

- (void)updateGenresToFit
{
  v22 = [(VUILabel *)self textLayout];
  v3 = [(VUILabel *)self vuiAttributedText];
  [(VUIGenresLabel *)self maxWidth];
  if (v4 <= 0.0)
  {
    v18 = [(VUIGenresLabel *)self adjustedGenres];
    v19 = [v18 firstObject];

    if (v19)
    {
      v20 = [MEMORY[0x1E695DF70] arrayWithObject:v19];
      [(VUIGenresLabel *)self setAdjustedGenres:v20];

      v21 = [v22 attributedStringWithString:v19 view:self];

      v3 = v21;
    }
  }

  else
  {
    [v3 size];
    v6 = v5;
    [(VUIGenresLabel *)self maxWidth];
    if (v6 > v7)
    {
      while (1)
      {
        v8 = [(VUIGenresLabel *)self adjustedGenres];
        v9 = [v8 count];

        if (v9 < 2)
        {
          break;
        }

        v10 = [(VUIGenresLabel *)self adjustedGenres];
        [v10 removeLastObject];

        v11 = [(VUIGenresLabel *)self adjustedGenres];
        v12 = [(VUIGenresLabel *)self genreSeparator];
        v13 = [v11 componentsJoinedByString:v12];

        v14 = [v22 attributedStringWithString:v13 view:self];

        [v14 size];
        v16 = v15;
        [(VUIGenresLabel *)self maxWidth];
        v3 = v14;
        if (v16 <= v17)
        {
          goto LABEL_10;
        }
      }
    }
  }

  v14 = v3;
LABEL_10:
  [(VUILabel *)self setVuiAttributedText:v14];
}

@end