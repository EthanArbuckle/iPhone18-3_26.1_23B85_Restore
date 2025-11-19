@interface UIImage
@end

@implementation UIImage

uint64_t __54__UIImage_SeymourMedia__imageWithSize_format_actions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSetInterpolationQuality(v3, kCGInterpolationHigh);
  CGContextTranslateCTM(v3, 0.0, *(a1 + 48));
  CGContextScaleCTM(v3, 1.0, -1.0);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __90__UIImage_SeymourMedia__compositedImageWithSize_images_cornerRadius_blendMode_legacyMode___block_invoke(uint64_t a1, CGContextRef c)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) > 0.0)
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v41.origin.x = *MEMORY[0x277CBF348];
    v41.origin.y = v5;
    v41.size.width = v6;
    v41.size.height = v7;
    MinX = CGRectGetMinX(v41);
    v42.origin.x = v4;
    v42.origin.y = v5;
    v42.size.width = v6;
    v42.size.height = v7;
    MinY = CGRectGetMinY(v42);
    v43.origin.x = v4;
    v43.origin.y = v5;
    v43.size.width = v6;
    v43.size.height = v7;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = v4;
    v44.origin.y = v5;
    v44.size.width = v6;
    v44.size.height = v7;
    v11 = MaxX - CGRectGetMinX(v44);
    v45.origin.x = v4;
    v45.origin.y = v5;
    v45.size.width = v6;
    v45.size.height = v7;
    MaxY = CGRectGetMaxY(v45);
    v46.origin.x = v4;
    v46.origin.y = v5;
    v46.size.width = v6;
    v46.size.height = v7;
    v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:MinX cornerRadius:{MinY, v11, MaxY - CGRectGetMinY(v46), *(a1 + 40)}];
    CGContextAddPath(c, [v13 CGPath]);
    CGContextClip(c);
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(c);
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  width = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = *(a1 + 32);
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v35 + 1) + 8 * i) CGImage];
        v24 = CGImageGetWidth(v23);
        v25 = CGImageGetHeight(v23);
        v26 = *(a1 + 48) / v24;
        v27 = *(a1 + 56) / v25;
        memset(&v34.c, 0, 32);
        if (v26 < v27)
        {
          v26 = v27;
        }

        *&v34.a = 0uLL;
        CGAffineTransformMakeScale(&v34, v26, v26);
        v33 = v34;
        v48.origin.x = 0.0;
        v48.origin.y = 0.0;
        v48.size.width = v24;
        v48.size.height = v25;
        v49 = CGRectApplyAffineTransform(v48, &v33);
        v28 = v49.origin.x;
        v29 = v49.origin.y;
        v30 = v49.size.width;
        v31 = v49.size.height;
        CGContextSaveGState(c);
        v32 = *(a1 + 72);
        if (v32)
        {
          CGContextSetBlendMode(c, v32);
        }

        [objc_opt_class() centerRect:v28 inRect:{v29, v30, v31, x, y, width, height}];
        CGContextDrawImage(c, v50, v23);
        CGContextRestoreGState(c);
      }

      v20 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v20);
  }
}

@end