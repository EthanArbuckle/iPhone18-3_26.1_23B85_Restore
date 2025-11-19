@interface VMUIOSurfaceDebugDescription
- (VMUIOSurfaceDebugDescription)initWithVirtualAddress:(unint64_t)a3 allocationSize:(unint64_t)a4 surfaceID:(unsigned int)a5 pixelFormat:(unsigned int)a6 pixelFormatString:(id)a7 width:(unint64_t)a8 height:(unint64_t)a9 dirtySize:(unint64_t)a10 residentSize:(unint64_t)a11 name:(id)a12;
@end

@implementation VMUIOSurfaceDebugDescription

- (VMUIOSurfaceDebugDescription)initWithVirtualAddress:(unint64_t)a3 allocationSize:(unint64_t)a4 surfaceID:(unsigned int)a5 pixelFormat:(unsigned int)a6 pixelFormatString:(id)a7 width:(unint64_t)a8 height:(unint64_t)a9 dirtySize:(unint64_t)a10 residentSize:(unint64_t)a11 name:(id)a12
{
  v19 = a7;
  v20 = a12;
  v24.receiver = self;
  v24.super_class = VMUIOSurfaceDebugDescription;
  v21 = [(VMUIOSurfaceDebugDescription *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_virtualAddress = a3;
    v21->_allocationSize = a4;
    v21->_surfaceID = a5;
    v21->_pixelFormat = a6;
    objc_storeStrong(&v21->_pixelFormatString, a7);
    v22->_width = a8;
    v22->_height = a9;
    v22->_dirtySize = a10;
    v22->_residentSize = a11;
    objc_storeStrong(&v22->_name, a12);
  }

  return v22;
}

@end