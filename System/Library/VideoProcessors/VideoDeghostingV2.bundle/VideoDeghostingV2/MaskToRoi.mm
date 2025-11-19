@interface MaskToRoi
- (MaskToRoi)initWithMetalToolBox:(id)a3;
- (void)dealloc;
@end

@implementation MaskToRoi

- (MaskToRoi)initWithMetalToolBox:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MaskToRoi;
  v5 = [(MaskToRoi *)&v11 init];
  if (!v5)
  {
    sub_24A64();
LABEL_10:
    v9 = 0;
    goto LABEL_7;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(GGMMetalToolBox);
  }

  metalToolbox = v5->_metalToolbox;
  v5->_metalToolbox = v6;

  *v5->_neighbors = -1;
  *&v5->_neighbors[8] = 0xFFFFFFFFLL;
  *&v5->_neighbors[16] = 0xFFFFFFFF00000000;
  *&v5->_neighbors[24] = 1;
  *&v5->_neighbors[32] = 0x100000000;
  *&v5->_neighbors[40] = 0x100000001;
  *&v5->_neighbors[48] = 0x1FFFFFFFFLL;
  *&v5->_neighbors[56] = 0xFFFFFFFF00000001;
  *&v5->_width = xmmword_2EAE0;
  v8 = malloc_type_malloc(0x185D00uLL, 0x100004000313F17uLL);
  *v5->_connectedPixelsQueue = v8;
  if (!v8)
  {
    sub_249EC();
    goto LABEL_10;
  }

  v9 = v5;
LABEL_7:

  return v9;
}

- (void)dealloc
{
  integralSumPixelBuffer = self->_integralSumPixelBuffer;
  if (integralSumPixelBuffer)
  {
    CFRelease(integralSumPixelBuffer);
  }

  free(*self->_connectedPixelsQueue);
  v4.receiver = self;
  v4.super_class = MaskToRoi;
  [(MaskToRoi *)&v4 dealloc];
}

@end