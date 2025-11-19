@interface SXColumnLayout
- (BOOL)isEqual:(id)a3;
- (CGSize)constrainedViewportSize;
- (CGSize)viewportSize;
- (UIEdgeInsets)safeAreaInsets;
- (_NSRange)convertColumnRange:(_NSRange)a3 minimumColumnLength:(int64_t)a4;
- (double)initWithConstrainedViewportSize:(double)a3 viewportSize:(double)a4 layoutWidth:(double)a5 documentLayout:(double)a6 numberOfLayoutColumns:(double)a7 leftMargin:(double)a8 rightMargin:(double)a9 numberOfColumns:(uint64_t)a10 columnWidth:(void *)a11 leftScreenMargin:(uint64_t)a12 rightScreenMargin:(uint64_t)a13 contentScaleFactor:(uint64_t)a14 safeAreaInsets:(uint64_t)a15;
- (double)widthForColumnRange:(_NSRange)a3 ignoreMargin:(unint64_t)a4 ignoreGutter:(unint64_t)a5 ignoreViewportPadding:(unint64_t)a6;
- (double)xPositionForColumnIndex:(int64_t)a3 ignoreMargin:(unint64_t)a4 ignoreGutter:(unint64_t)a5 ignoreViewportPadding:(unint64_t)a6 ignoreSafeAreaInsets:(BOOL)a7;
- (id)columnLayoutForComponentBlueprint:(id)a3 unitConverter:(id)a4;
- (id)description;
@end

@implementation SXColumnLayout

- (double)initWithConstrainedViewportSize:(double)a3 viewportSize:(double)a4 layoutWidth:(double)a5 documentLayout:(double)a6 numberOfLayoutColumns:(double)a7 leftMargin:(double)a8 rightMargin:(double)a9 numberOfColumns:(uint64_t)a10 columnWidth:(void *)a11 leftScreenMargin:(uint64_t)a12 rightScreenMargin:(uint64_t)a13 contentScaleFactor:(uint64_t)a14 safeAreaInsets:(uint64_t)a15
{
  v34 = a11;
  v38.receiver = a1;
  v38.super_class = SXColumnLayout;
  v35 = objc_msgSendSuper2(&v38, sel_init);
  v36 = v35;
  if (v35)
  {
    v35[18] = a2;
    v35[19] = a3;
    v35[20] = a4;
    v35[21] = a5;
    *(v35 + 2) = [v34 width];
    objc_storeStrong(v36 + 1, a11);
    v36[3] = a7;
    v36[4] = a8;
    *(v36 + 5) = [v34 gutter];
    *(v36 + 6) = a13;
    v36[7] = a9;
    *(v36 + 17) = a12;
    *(v36 + 14) = a17;
    *(v36 + 15) = a18;
    *(v36 + 16) = a19;
    *(v36 + 22) = a20;
    *(v36 + 23) = a21;
    *(v36 + 24) = a22;
    *(v36 + 25) = a23;
  }

  return v36;
}

- (id)columnLayoutForComponentBlueprint:(id)a3 unitConverter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 componentLayout];
  v9 = [v8 ignoreDocumentMargin] == 3 || objc_msgSend(v8, "ignoreDocumentMargin") == 1;
  v10 = [v8 ignoreDocumentMargin] == 3 || objc_msgSend(v8, "ignoreDocumentMargin") == 2;
  if ([v6 columnRange])
  {
    v11 = 0;
  }

  else
  {
    v11 = self->_leftColumnOffset == 0;
  }

  v12 = [v6 columnRange];
  [v6 columnRange];
  v14 = v13 + v12 == self->_numberOfColumns && self->_rightColumnOffset == 0;
  v15 = [v8 ignoreViewportPadding] != 1 && objc_msgSend(v8, "ignoreViewportPadding") != 3;
  v16 = [v8 ignoreViewportPadding] != 2 && objc_msgSend(v8, "ignoreViewportPadding") != 3;
  v17 = self->_viewportSize.width - self->_constrainedViewportSize.width < 2.22044605e-16 && [(SXDocumentLayout *)self->_documentLayout margin]== 0;
  leftScreenMargin = 0.0;
  leftMargin = 0.0;
  if (v11 && (v9 || v17))
  {
    leftMargin = self->_leftMargin;
  }

  if (!v15 && v11)
  {
    leftMargin = self->_leftMargin;
    leftScreenMargin = self->_leftScreenMargin;
  }

  rightScreenMargin = 0.0;
  rightMargin = 0.0;
  if (v14 && (v10 || v17))
  {
    rightMargin = self->_rightMargin;
  }

  if (!v16 && v14)
  {
    rightMargin = self->_rightMargin;
    rightScreenMargin = self->_rightScreenMargin;
  }

  columnWidth = self->_columnWidth;
  v23 = [v6 componentSizer];
  [v23 contentInsetsWithUnitConverter:v7];
  v25 = v24;
  v27 = v26;

  v28 = v25 + v27;
  if (v28 > 0.0)
  {
    [v6 columnRange];
    columnWidth = columnWidth - v28 / v29;
  }

  v30 = [SXColumnLayout alloc];
  v31 = [(SXDocumentLayout *)self->_documentLayout width];
  documentLayout = self->_documentLayout;
  [v8 columnRange];
  v34 = v33;
  [v6 columnRange];
  v36 = [(SXColumnLayout *)v30 initWithConstrainedViewportSize:documentLayout viewportSize:v34 layoutWidth:v35 documentLayout:self->_constrainedViewportSize.width numberOfLayoutColumns:self->_constrainedViewportSize.height leftMargin:self->_viewportSize.width rightMargin:self->_viewportSize.height numberOfColumns:v31 columnWidth:leftMargin leftScreenMargin:rightMargin rightScreenMargin:columnWidth contentScaleFactor:*&leftScreenMargin safeAreaInsets:*&rightScreenMargin, *&self->_contentScaleFactor, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  leftColumnOffset = self->_leftColumnOffset;
  v36->_leftColumnOffset = [v6 columnRange] + leftColumnOffset;
  v39 = self->_leftColumnOffset;
  rightColumnOffset = self->_rightColumnOffset;
  numberOfColumns = self->_numberOfColumns;
  v41 = [(SXColumnLayout *)v36 leftColumnOffset];
  v36->_rightColumnOffset = v39 + rightColumnOffset + numberOfColumns - (v41 + [(SXColumnLayout *)v36 numberOfColumns]);
  [(SXColumnLayout *)v36 setMinimumViewportWidthForLooseLayout:self->_minimumViewportWidthForLooseLayout];
  if (([v8 ignoreDocumentGutter] == 3 || objc_msgSend(v8, "ignoreDocumentGutter") == 1) && -[SXColumnLayout leftColumnOffset](v36, "leftColumnOffset"))
  {
    [(SXColumnLayout *)v36 setLeftInset:(self->_gutter / 2)];
  }

  if (([v8 ignoreDocumentGutter] == 3 || objc_msgSend(v8, "ignoreDocumentGutter") == 2) && -[SXColumnLayout rightColumnOffset](v36, "rightColumnOffset"))
  {
    [(SXColumnLayout *)v36 setRightInset:(self->_gutter / 2)];
  }

  [v8 minimumHeight];
  if (v42)
  {
    v43 = [v8 minimumHeight];
    [v7 convertValueToPoints:{v43, v44}];
    [(SXColumnLayout *)v36 setMinimumHeight:?];
  }

  return v36;
}

- (_NSRange)convertColumnRange:(_NSRange)a3 minimumColumnLength:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
  if (self->_constrainedViewportSize.width <= self->_minimumViewportWidthForLooseLayout)
  {
    v8 = a3.length;
    if (a3.length / [(SXDocumentLayout *)self->_documentLayout columns]>= 0.25)
    {
      v28 = 0;
      numberOfColumns = self->_numberOfColumns;
      goto LABEL_45;
    }
  }

  else
  {
    v8 = a3.length;
  }

  v9 = self->_numberOfColumns;
  if (v9 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = self->_numberOfColumns;
  }

  if (v10 >= length)
  {
    v10 = length;
  }

  layoutColumns = self->_layoutColumns;
  v12 = v8 / layoutColumns <= 0.45 && v10 == 1;
  v13 = v9 / layoutColumns;
  v14 = v13 * location;
  v15 = llroundf(v14);
  v16 = v12;
  v17 = v13 * (location + length);
  v18 = llroundf(v17) - v15;
  v19 = v10 + v15 - v9;
  if (v10 + v15 < v9)
  {
    v19 = 0;
  }

  if (v15 >= -1)
  {
    v20 = -1;
  }

  else
  {
    v20 = v15;
  }

  v21 = v15 - v20;
  if (v19 >= v21)
  {
    v19 = v21;
  }

  v22 = v15 - v19;
  if (v18 < v10)
  {
    v15 = v22;
  }

  else
  {
    v10 = v18;
  }

  v23 = (v10 != 1) | v16;
  v24 = 1;
  if (v15)
  {
    v25 = v15 + 2 <= v9;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  v27 = v15 - v26;
  if (v9 < 2)
  {
    v27 = v15;
  }

  else
  {
    v24 = 2;
  }

  if ((v23 & 1) == 0)
  {
    v10 = v24;
    v15 = v27;
  }

  if (v15 >= (v9 - 1))
  {
    v28 = v9 - 1;
  }

  else
  {
    v28 = v15;
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v29 = v9 - v28;
  if (v10 >= v29)
  {
    numberOfColumns = v29;
  }

  else
  {
    numberOfColumns = v10;
  }

LABEL_45:
  result.length = numberOfColumns;
  result.location = v28;
  return result;
}

- (double)xPositionForColumnIndex:(int64_t)a3 ignoreMargin:(unint64_t)a4 ignoreGutter:(unint64_t)a5 ignoreViewportPadding:(unint64_t)a6 ignoreSafeAreaInsets:(BOOL)a7
{
  v11 = self->_leftInset + self->_columnWidth * a3 + (self->_gutter * a3);
  if (!a7)
  {
    v11 = v11 + self->_safeAreaInsets.left;
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v12 = 1;
  }

  else if ([(SXDocumentLayout *)self->_documentLayout margin])
  {
    v12 = 0;
  }

  else
  {
    v12 = self->_viewportSize.width == self->_constrainedViewportSize.width;
  }

  v13 = a6 & 0xFFFFFFFFFFFFFFFDLL;
  if (self->_leftColumnOffset + a3)
  {
    v11 = v11 + self->_leftMargin;
    if ((a5 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v11 = v11 - (self->_gutter / 2);
    }
  }

  else
  {
    if (v13 == 1)
    {
      v12 = 1;
    }

    if (!v12)
    {
      v11 = v11 + self->_leftMargin;
    }
  }

  if (v13 != 1)
  {
    v11 = v11 + self->_leftScreenMargin;
  }

  v14 = v11;
  return roundf(v14);
}

- (double)widthForColumnRange:(_NSRange)a3 ignoreMargin:(unint64_t)a4 ignoreGutter:(unint64_t)a5 ignoreViewportPadding:(unint64_t)a6
{
  numberOfColumns = self->_numberOfColumns;
  if (a3.length >= numberOfColumns)
  {
    length = self->_numberOfColumns;
  }

  else
  {
    length = a3.length;
  }

  v12 = ((length - 1) * self->_gutter);
  v13 = self->_columnWidth * length;
  v14 = (self->_leftColumnOffset | a3.location) == 0;
  if (self->_rightColumnOffset)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3.location + a3.length >= numberOfColumns;
  }

  v16 = v15;
  v17 = (a4 & 0xFFFFFFFFFFFFFFFDLL) != 1 && [(SXDocumentLayout *)self->_documentLayout margin]!= 0;
  v18 = v13 + v12;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v19 = (a6 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    v20 = (a6 & 0xFFFFFFFFFFFFFFFELL) == 2;
    v21 = 1;
  }

  else
  {
    v21 = [(SXDocumentLayout *)self->_documentLayout margin]== 0;
    v22 = a6 & 0xFFFFFFFFFFFFFFFDLL;
    v19 = (a6 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    v23 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v20 = (a6 & 0xFFFFFFFFFFFFFFFELL) == 2;
    if (!a4)
    {
      v31 = v19;
      if ([(SXDocumentLayout *)self->_documentLayout margin]|| self->_viewportSize.width != self->_constrainedViewportSize.width)
      {
        if (v22 == 1 && v14)
        {
          v18 = v18 + self->_leftMargin;
        }

        v19 = v31;
        if (((v23 == 2) & v16) == 1)
        {
          v18 = v18 + self->_rightMargin;
          v20 = 1;
        }

        goto LABEL_25;
      }

      v19 = v31;
    }
  }

  v24 = !v14;
  v25 = v16 ^ 1;
  if (v17 || !v21 || (v24 & 1) != 0 || (v25 & 1) != 0)
  {
    if ((v17 | v24))
    {
      if ((!v21 | v25))
      {
        goto LABEL_25;
      }

      rightMargin = self->_rightMargin;
    }

    else
    {
      rightMargin = self->_leftMargin;
    }
  }

  else
  {
    rightMargin = self->_leftMargin + self->_rightMargin;
  }

  v18 = v18 + rightMargin;
LABEL_25:
  if (a5)
  {
    if (!((a5 != 3 || v14) | v16 & 1))
    {
      gutter = self->_gutter;
      goto LABEL_32;
    }

    if ((a5 | 2) == 3 && !v14)
    {
      leftScreenMargin = (self->_gutter / 2);
      goto LABEL_35;
    }

    if (!(((a5 & 0xFFFFFFFFFFFFFFFELL) != 2) | v16 & 1))
    {
      gutter = (self->_gutter / 2);
LABEL_32:
      v18 = v18 + gutter;
    }
  }

  if (!v19 || !v14)
  {
    goto LABEL_36;
  }

  leftScreenMargin = self->_leftScreenMargin;
LABEL_35:
  v18 = v18 + leftScreenMargin;
LABEL_36:
  if ((v20 & v16) == 1)
  {
    v18 = v18 + self->_rightScreenMargin;
  }

  v29 = v18;
  return roundf(v29);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5->_constrainedViewportSize.width == self->_constrainedViewportSize.width ? (v6 = v5->_constrainedViewportSize.height == self->_constrainedViewportSize.height) : (v6 = 0), v6 && (v5->_viewportSize.width == self->_viewportSize.width ? (v7 = v5->_viewportSize.height == self->_viewportSize.height) : (v7 = 0), v7 && v5->_layoutWidth == self->_layoutWidth && v5->_leftMargin == self->_leftMargin && v5->_rightMargin == self->_rightMargin && v5->_gutter == self->_gutter && v5->_numberOfColumns == self->_numberOfColumns && v5->_columnWidth == self->_columnWidth && v5->_minimumHeight == self->_minimumHeight && v5->_leftScreenMargin == self->_leftScreenMargin && v5->_rightScreenMargin == self->_rightScreenMargin)) && v5->_contentScaleFactor == self->_contentScaleFactor;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; columns: %lu", self->_numberOfColumns];
  [v3 appendFormat:@"; columnWidth: %f", *&self->_columnWidth];
  v4 = NSStringFromCGSize(self->_constrainedViewportSize);
  [v3 appendFormat:@"; constrainedViewportSize: %@", v4];

  v5 = NSStringFromCGSize(self->_viewportSize);
  [v3 appendFormat:@"; viewportSize: %@", v5];

  [v3 appendFormat:@"; layoutWidth: %lu", self->_layoutWidth];
  [v3 appendFormat:@"; leftMargin: %lu", *&self->_leftMargin];
  [v3 appendFormat:@"; rightMargin: %lu", *&self->_rightMargin];
  [v3 appendFormat:@"; gutter: %lu", self->_gutter];
  [v3 appendFormat:@"; leftColumnOffset: %lu", self->_leftColumnOffset];
  [v3 appendFormat:@"; rightColumnOffset: %lu", self->_rightColumnOffset];
  [v3 appendFormat:@"; leftInset: %f", *&self->_leftInset];
  [v3 appendFormat:@"; rightInset: %f", *&self->_rightInset];
  [v3 appendFormat:@"; minimumHeight: %f", *&self->_minimumHeight];
  [v3 appendFormat:@"; leftScreenMargin: %f", *&self->_leftScreenMargin];
  [v3 appendFormat:@"; rightScreenMargin: %f", *&self->_rightScreenMargin];
  [v3 appendFormat:@"; documentLayout: {width: %lu, columns: %lu, margin: %lu, columns: %lu}", -[SXDocumentLayout width](self->_documentLayout, "width"), -[SXDocumentLayout columns](self->_documentLayout, "columns"), -[SXDocumentLayout margin](self->_documentLayout, "margin"), -[SXDocumentLayout gutter](self->_documentLayout, "gutter")];
  [v3 appendFormat:@"; contentScaleFactor: %f", *&self->_contentScaleFactor];
  v6 = NSStringFromUIEdgeInsets(self->_safeAreaInsets);
  [v3 appendFormat:@"; safeAreaInsets: %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (CGSize)constrainedViewportSize
{
  width = self->_constrainedViewportSize.width;
  height = self->_constrainedViewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end