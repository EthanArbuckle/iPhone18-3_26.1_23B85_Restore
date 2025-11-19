@interface UIVectorTextLayoutRun
@end

@implementation UIVectorTextLayoutRun

void __52___UIVectorTextLayoutRun_enumerateGlyphsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  if (!CGRectIsEmpty(v33))
  {
    v16 = objc_opt_new();
    [v16 setGlyph:a2];
    [v16 setRect:{a5, a6, a7, a8}];
    v17 = *(a1 + 40);
    if (v17 && (PathForGlyph = CTFontCreatePathForGlyph(v17, a2, (a1 + 48))) != 0)
    {
      v19 = PathForGlyph;
      CFAutorelease(PathForGlyph);
      PathBoundingBox = CGPathGetPathBoundingBox(v19);
      x = PathBoundingBox.origin.x;
      y = PathBoundingBox.origin.y;
      width = PathBoundingBox.size.width;
      height = PathBoundingBox.size.height;
      memset(&transform, 0, sizeof(transform));
      v24 = -CGRectGetMinX(PathBoundingBox);
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      MinY = CGRectGetMinY(v35);
      CGAffineTransformMakeTranslation(&transform, v24, -MinY);
      v26 = CGPathCreateMutableCopyByTransformingPath(v19, &transform);
      v27 = [UIBezierPath bezierPathWithCGPath:CFAutorelease(v26)];
      [v16 setPath:v27];

      v31 = transform;
      CGAffineTransformInvert(&v30, &v31);
      CGAffineTransformTranslate(&v31, &v30, a3, a4);
      transform = v31;
      p_transform = &v31;
    }

    else
    {
      [v16 setPath:0];
      v29 = *(MEMORY[0x1E695EFD0] + 16);
      *&transform.a = *MEMORY[0x1E695EFD0];
      *&transform.c = v29;
      *&transform.tx = *(MEMORY[0x1E695EFD0] + 32);
      p_transform = &transform;
    }

    [v16 setPathTransform:p_transform];
    (*(*(a1 + 32) + 16))();
  }
}

@end