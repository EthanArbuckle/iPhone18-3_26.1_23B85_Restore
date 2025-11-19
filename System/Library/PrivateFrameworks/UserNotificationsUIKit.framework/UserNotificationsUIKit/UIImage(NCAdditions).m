@interface UIImage(NCAdditions)
+ (CGPDFPage)nc_imageWithPDDocument:()NCAdditions size:;
+ (id)nc_imageFromPDFWithFileURL:()NCAdditions size:;
@end

@implementation UIImage(NCAdditions)

+ (id)nc_imageFromPDFWithFileURL:()NCAdditions size:
{
  v8 = CGPDFDocumentCreateWithURL(url);
  v9 = [a1 nc_imageWithPDDocument:v8 size:{a4, a5}];
  CGPDFDocumentRelease(v8);

  return v9;
}

+ (CGPDFPage)nc_imageWithPDDocument:()NCAdditions size:
{
  if (document)
  {
    Page = CGPDFDocumentGetPage(document, 1uLL);
    v8 = Page;
    if (Page)
    {
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFArtBox);
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      BoxRect.origin.x = a4;
      BoxRect.origin.y = a5;
      UIGraphicsBeginImageContextWithOptions(BoxRect.origin, 0, 0.0);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextScaleCTM(CurrentContext, a4 / width, a5 / height);
      CGContextDrawPDFPage(CurrentContext, v8);
      v8 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end