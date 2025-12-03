@interface VMUIOSurfaceDebugDescription
- (VMUIOSurfaceDebugDescription)initWithVirtualAddress:(unint64_t)address allocationSize:(unint64_t)size surfaceID:(unsigned int)d pixelFormat:(unsigned int)format pixelFormatString:(id)string width:(unint64_t)width height:(unint64_t)height dirtySize:(unint64_t)self0 residentSize:(unint64_t)self1 name:(id)self2;
@end

@implementation VMUIOSurfaceDebugDescription

- (VMUIOSurfaceDebugDescription)initWithVirtualAddress:(unint64_t)address allocationSize:(unint64_t)size surfaceID:(unsigned int)d pixelFormat:(unsigned int)format pixelFormatString:(id)string width:(unint64_t)width height:(unint64_t)height dirtySize:(unint64_t)self0 residentSize:(unint64_t)self1 name:(id)self2
{
  stringCopy = string;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = VMUIOSurfaceDebugDescription;
  v21 = [(VMUIOSurfaceDebugDescription *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_virtualAddress = address;
    v21->_allocationSize = size;
    v21->_surfaceID = d;
    v21->_pixelFormat = format;
    objc_storeStrong(&v21->_pixelFormatString, string);
    v22->_width = width;
    v22->_height = height;
    v22->_dirtySize = dirtySize;
    v22->_residentSize = residentSize;
    objc_storeStrong(&v22->_name, name);
  }

  return v22;
}

@end