@interface VUIGenresLabel
- (void)setGenres:(id)genres;
- (void)setMaxWidth:(double)width;
- (void)update;
- (void)updateGenresToFit;
@end

@implementation VUIGenresLabel

- (void)setGenres:(id)genres
{
  genresCopy = genres;
  genres = [(VUIGenresLabel *)self genres];

  if (genres != genresCopy)
  {
    objc_storeStrong(&self->_genres, genres);
    v6 = [genresCopy mutableCopy];
    adjustedGenres = self->_adjustedGenres;
    self->_adjustedGenres = v6;

    self->_maxWidth = 0.0;
  }
}

- (void)update
{
  adjustedGenres = [(VUIGenresLabel *)self adjustedGenres];
  genreSeparator = [(VUIGenresLabel *)self genreSeparator];
  v7 = [adjustedGenres componentsJoinedByString:genreSeparator];

  textLayout = [(VUILabel *)self textLayout];
  v6 = [textLayout attributedStringWithString:v7 view:self];
  [(VUILabel *)self setVuiAttributedText:v6];
}

- (void)setMaxWidth:(double)width
{
  [(VUIGenresLabel *)self maxWidth];
  if (v5 != width)
  {
    self->_maxWidth = width;

    [(VUIGenresLabel *)self updateGenresToFit];
  }
}

- (void)updateGenresToFit
{
  textLayout = [(VUILabel *)self textLayout];
  vuiAttributedText = [(VUILabel *)self vuiAttributedText];
  [(VUIGenresLabel *)self maxWidth];
  if (v4 <= 0.0)
  {
    adjustedGenres = [(VUIGenresLabel *)self adjustedGenres];
    firstObject = [adjustedGenres firstObject];

    if (firstObject)
    {
      v20 = [MEMORY[0x1E695DF70] arrayWithObject:firstObject];
      [(VUIGenresLabel *)self setAdjustedGenres:v20];

      v21 = [textLayout attributedStringWithString:firstObject view:self];

      vuiAttributedText = v21;
    }
  }

  else
  {
    [vuiAttributedText size];
    v6 = v5;
    [(VUIGenresLabel *)self maxWidth];
    if (v6 > v7)
    {
      while (1)
      {
        adjustedGenres2 = [(VUIGenresLabel *)self adjustedGenres];
        v9 = [adjustedGenres2 count];

        if (v9 < 2)
        {
          break;
        }

        adjustedGenres3 = [(VUIGenresLabel *)self adjustedGenres];
        [adjustedGenres3 removeLastObject];

        adjustedGenres4 = [(VUIGenresLabel *)self adjustedGenres];
        genreSeparator = [(VUIGenresLabel *)self genreSeparator];
        v13 = [adjustedGenres4 componentsJoinedByString:genreSeparator];

        v14 = [textLayout attributedStringWithString:v13 view:self];

        [v14 size];
        v16 = v15;
        [(VUIGenresLabel *)self maxWidth];
        vuiAttributedText = v14;
        if (v16 <= v17)
        {
          goto LABEL_10;
        }
      }
    }
  }

  v14 = vuiAttributedText;
LABEL_10:
  [(VUILabel *)self setVuiAttributedText:v14];
}

@end