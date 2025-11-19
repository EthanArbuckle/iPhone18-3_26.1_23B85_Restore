@interface PRPosterAppearance
- (BOOL)isEqual:(id)a3;
- (PRPosterAppearance)initWithFont:(id)a3 labelColor:(id)a4 preferredTitleAlignment:(unint64_t)a5 preferredTitleLayout:(unint64_t)a6;
@end

@implementation PRPosterAppearance

- (PRPosterAppearance)initWithFont:(id)a3 labelColor:(id)a4 preferredTitleAlignment:(unint64_t)a5 preferredTitleLayout:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = PRPosterAppearance;
  v13 = [(PRPosterAppearance *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_font, a3);
    objc_storeStrong(&v14->_labelColor, a4);
    v14->_preferredTitleAlignment = a5;
    v14->_preferredTitleLayout = a6;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PRPosterAppearance *)v5 font];
      v7 = [(PRPosterAppearance *)self font];
      v8 = [v6 isEqual:v7];

      if (v8 && (-[PRPosterAppearance labelColor](v5, "labelColor"), v9 = objc_claimAutoreleasedReturnValue(), -[PRPosterAppearance labelColor](self, "labelColor"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11) && (v12 = -[PRPosterAppearance preferredTitleAlignment](v5, "preferredTitleAlignment"), v12 == -[PRPosterAppearance preferredTitleAlignment](self, "preferredTitleAlignment")))
      {
        v13 = [(PRPosterAppearance *)v5 preferredTitleLayout];
        v14 = v13 == [(PRPosterAppearance *)self preferredTitleLayout];
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