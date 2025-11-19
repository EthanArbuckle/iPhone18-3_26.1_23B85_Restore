@interface VGVertexAttributeBufferDump
- (VGVertexAttributeBufferDump)initWithCoder:(id)a3;
- (unint64_t)numBytes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGVertexAttributeBufferDump

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(VGVertexAttributeBufferDump *)self vertexFormat];
  v5 = NSStringFromSelector(sel_vertexFormat);
  [v10 encodeInt:v4 forKey:v5];

  v6 = [(VGVertexAttributeBufferDump *)self elementCount];
  v7 = NSStringFromSelector(sel_elementCount);
  [v10 encodeInt:v6 forKey:v7];

  iosurface = self->_iosurface;
  v9 = NSStringFromSelector(sel_iosurface);
  [v10 vg_encodeSurface:iosurface forKey:v9];
}

- (VGVertexAttributeBufferDump)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VGVertexAttributeBufferDump;
  v5 = [(VGVertexAttributeBufferDump *)&v13 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_vertexFormat);
    v5->_vertexFormat = [v4 decodeIntForKey:v6];

    v7 = NSStringFromSelector(sel_elementCount);
    v5->_elementCount = [v4 decodeIntForKey:v7];

    v8 = NSStringFromSelector(sel_iosurface);
    v9 = [v4 vg_decodeSurfaceForKey:v8];
    iosurface = v5->_iosurface;
    v5->_iosurface = v9;

    v11 = v5;
  }

  return v5;
}

- (unint64_t)numBytes
{
  v2 = 4;
  switch(self->_vertexFormat)
  {
    case 3uLL:
    case 6uLL:
    case 0x10uLL:
    case 0x19uLL:
    case 0x1CuLL:
    case 0x24uLL:
      return self->_elementCount * v2;
    case 0x11uLL:
    case 0x1AuLL:
      v2 = 6;
      break;
    case 0x12uLL:
    case 0x1BuLL:
    case 0x1DuLL:
    case 0x25uLL:
      v2 = 8;
      break;
    case 0x1EuLL:
    case 0x26uLL:
      v2 = 12;
      break;
    case 0x1FuLL:
    case 0x27uLL:
      v2 = 16;
      break;
    default:
      v2 = 0;
      break;
  }

  return self->_elementCount * v2;
}

@end