@interface PRPosterAppearance
- (BOOL)isEqual:(id)equal;
- (PRPosterAppearance)initWithFont:(id)font labelColor:(id)color preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout;
@end

@implementation PRPosterAppearance

- (PRPosterAppearance)initWithFont:(id)font labelColor:(id)color preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout
{
  fontCopy = font;
  colorCopy = color;
  v16.receiver = self;
  v16.super_class = PRPosterAppearance;
  v13 = [(PRPosterAppearance *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_font, font);
    objc_storeStrong(&v14->_labelColor, color);
    v14->_preferredTitleAlignment = alignment;
    v14->_preferredTitleLayout = layout;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      font = [(PRPosterAppearance *)v5 font];
      font2 = [(PRPosterAppearance *)self font];
      v8 = [font isEqual:font2];

      if (v8 && (-[PRPosterAppearance labelColor](v5, "labelColor"), v9 = objc_claimAutoreleasedReturnValue(), -[PRPosterAppearance labelColor](self, "labelColor"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11) && (v12 = -[PRPosterAppearance preferredTitleAlignment](v5, "preferredTitleAlignment"), v12 == -[PRPosterAppearance preferredTitleAlignment](self, "preferredTitleAlignment")))
      {
        preferredTitleLayout = [(PRPosterAppearance *)v5 preferredTitleLayout];
        v14 = preferredTitleLayout == [(PRPosterAppearance *)self preferredTitleLayout];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

@end