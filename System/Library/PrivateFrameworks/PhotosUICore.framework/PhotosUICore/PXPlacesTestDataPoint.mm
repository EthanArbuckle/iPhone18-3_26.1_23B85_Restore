@interface PXPlacesTestDataPoint
- (CGImage)image;
- (CLLocationCoordinate2D)coordinate;
- (PXPlacesTestDataPoint)initWithName:(id)a3 location:(CLLocationCoordinate2D)a4;
- (int64_t)compareTo:(id)a3;
@end

@implementation PXPlacesTestDataPoint

- (CGImage)image
{
  v25 = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = CGBitmapContextCreate(0, 0x20uLL, 0x20uLL, 8uLL, 0x80uLL, DeviceRGB, 2u);
  CFRelease(DeviceRGB);
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&v24.a = *MEMORY[0x1E695EFD0];
  *&v24.c = v5;
  *&v24.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGContextSetTextMatrix(v4, &v24);
  Mutable = CGPathCreateMutable();
  v29.size.width = 32.0;
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.height = 32.0;
  CGPathAddRect(Mutable, 0, v29);
  v7 = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v8 = [(PXPlacesTestDataPoint *)self name];
  v26.location = 0;
  v26.length = 0;
  CFAttributedStringReplaceString(v7, v26, v8);

  v9 = CGColorSpaceCreateDeviceRGB();
  *&v24.a = xmmword_1A53837F0;
  *&v24.c = unk_1A5383800;
  v10 = CGColorCreate(v9, &v24.a);
  CGColorSpaceRelease(v9);
  v11 = [(NSString *)self->_name length];
  v12 = 18;
  if (v11 > 3)
  {
    v12 = 14;
  }

  v13 = CTFontCreateWithName(@"Helvetica", v12, 0);
  v14 = [(PXPlacesTestDataPoint *)self name];
  v15 = [v14 length];
  v16 = *MEMORY[0x1E6965658];
  v22[0] = *MEMORY[0x1E69659D8];
  v22[1] = v16;
  v23[0] = v10;
  v23[1] = v13;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v27.location = 0;
  v27.length = v15;
  CFAttributedStringSetAttributes(v7, v27, v17, 0);

  v18 = CTFramesetterCreateWithAttributedString(v7);
  CFRelease(v7);
  v28.location = 0;
  v28.length = 0;
  Frame = CTFramesetterCreateFrame(v18, v28, Mutable, 0);
  CTFrameDraw(Frame, v4);
  CFRelease(Frame);
  CFRelease(Mutable);
  CFRelease(v18);
  Image = CGBitmapContextCreateImage(v4);
  CFRelease(v4);
  if (Image)
  {
    CFAutorelease(Image);
  }

  return Image;
}

- (int64_t)compareTo:(id)a3
{
  v4 = a3;
  [(PXPlacesTestDataPoint *)self coordinate];
  v6 = v5;
  [v4 coordinate];
  v8 = v7;
  [(PXPlacesTestDataPoint *)self coordinate];
  v10 = v9;
  [v4 coordinate];
  v12 = v11;

  if (v6 > v8)
  {
    return 1;
  }

  v14 = 1;
  if (v10 <= v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (v10 >= v12)
  {
    v14 = v15;
  }

  if (v6 >= v8)
  {
    return v14;
  }

  else
  {
    return -1;
  }
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PXPlacesTestDataPoint)initWithName:(id)a3 location:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = PXPlacesTestDataPoint;
  v9 = [(PXPlacesTestDataPoint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v10->_coordinate.latitude = latitude;
    v10->_coordinate.longitude = longitude;
  }

  return v10;
}

@end