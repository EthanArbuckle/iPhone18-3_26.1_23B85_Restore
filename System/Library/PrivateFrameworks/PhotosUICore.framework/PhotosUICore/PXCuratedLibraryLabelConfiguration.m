@interface PXCuratedLibraryLabelConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXCuratedLibraryLabelConfiguration

- (unint64_t)hash
{
  v2 = [(PXCuratedLibraryLabelConfiguration *)self text];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXCuratedLibraryLabelConfiguration *)self text];
      v7 = [(PXCuratedLibraryLabelConfiguration *)v5 text];
      if ((v6 == v7 || [v6 isEqualToString:v7]) && (v8 = -[PXCuratedLibraryLabelConfiguration textAlignment](self, "textAlignment"), v8 == -[PXCuratedLibraryLabelConfiguration textAlignment](v5, "textAlignment")))
      {
        v9 = [(PXCuratedLibraryLabelConfiguration *)self textColor];
        v10 = [(PXCuratedLibraryLabelConfiguration *)v5 textColor];
        v11 = v9 == v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PXCuratedLibraryLabelConfiguration *)self text];
  [v4 setText:v5];

  [v4 setTextAlignment:{-[PXCuratedLibraryLabelConfiguration textAlignment](self, "textAlignment")}];
  v6 = [(PXCuratedLibraryLabelConfiguration *)self textColor];
  [v4 setTextColor:v6];

  return v4;
}

@end