@interface PXCuratedLibraryLabelConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXCuratedLibraryLabelConfiguration

- (unint64_t)hash
{
  text = [(PXCuratedLibraryLabelConfiguration *)self text];
  v3 = [text hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      text = [(PXCuratedLibraryLabelConfiguration *)self text];
      text2 = [(PXCuratedLibraryLabelConfiguration *)v5 text];
      if ((text == text2 || [text isEqualToString:text2]) && (v8 = -[PXCuratedLibraryLabelConfiguration textAlignment](self, "textAlignment"), v8 == -[PXCuratedLibraryLabelConfiguration textAlignment](v5, "textAlignment")))
      {
        textColor = [(PXCuratedLibraryLabelConfiguration *)self textColor];
        textColor2 = [(PXCuratedLibraryLabelConfiguration *)v5 textColor];
        v11 = textColor == textColor2;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  text = [(PXCuratedLibraryLabelConfiguration *)self text];
  [v4 setText:text];

  [v4 setTextAlignment:{-[PXCuratedLibraryLabelConfiguration textAlignment](self, "textAlignment")}];
  textColor = [(PXCuratedLibraryLabelConfiguration *)self textColor];
  [v4 setTextColor:textColor];

  return v4;
}

@end