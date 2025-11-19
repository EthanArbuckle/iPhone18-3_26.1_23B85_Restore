@interface MRSnapshotter
+ (id)snapshotterWithDocument:(id)a3;
- (BOOL)isFlipped;
- (CGColorSpace)colorSpace;
- (CGImage)CGImageSnapshotAtState:(id)a3;
- (CGImage)CGImageSnapshotAtTime:(double)a3;
- (CGImage)_CGImageSnapshot;
- (CGSize)size;
- (MRSnapshotter)initWithMontage:(id)a3 andAssetManagementDelegate:(id)a4 isReadOnly:(BOOL)a5;
- (void)_snapshotToBuffer:(unsigned int *)a3 withBytesPerRow:(unsigned int)a4;
- (void)dealloc;
- (void)setIgnoresFadeInAndOut:(BOOL)a3;
- (void)setIsFlipped:(BOOL)a3;
- (void)setSize:(CGSize)a3;
- (void)snapshotToBuffer:(unsigned int *)a3 withBytesPerRow:(unsigned int)a4 atTime:(double)a5;
@end

@implementation MRSnapshotter

+ (id)snapshotterWithDocument:(id)a3
{
  v3 = -[MRSnapshotter initWithMontage:andAssetManagementDelegate:isReadOnly:]([MRSnapshotter alloc], "initWithMontage:andAssetManagementDelegate:isReadOnly:", [a3 montage], a3, 1);

  return v3;
}

- (MRSnapshotter)initWithMontage:(id)a3 andAssetManagementDelegate:(id)a4 isReadOnly:(BOOL)a5
{
  v5 = a5;
  v11.receiver = self;
  v11.super_class = MRSnapshotter;
  v8 = [(MRSnapshotter *)&v11 init];
  if (v8)
  {
    v9 = [[MRRenderer alloc] initWithParameters:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:v5], @"readonly", &__kCFBooleanTrue, @"noAudio", 0]];
    v8->_renderer = v9;
    [(MRRenderer *)v9 setMontage:a3];
    [(MRRenderer *)v8->_renderer setAssetManagementDelegate:a4];
    [(MRRenderer *)v8->_renderer setMode:1];
    [(MRRenderer *)v8->_renderer setAllowsThumbnails:0];
    [(MRRenderer *)v8->_renderer setTimeQuantum:0.0166666667];
  }

  return v8;
}

- (void)dealloc
{
  [(MRSnapshotter *)self setSize:CGSizeZero.width, CGSizeZero.height];
  [(MRRenderer *)self->_renderer cleanup];

  self->_renderer = 0;
  v3.receiver = self;
  v3.super_class = MRSnapshotter;
  [(MRSnapshotter *)&v3 dealloc];
}

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width != self->_size.width || a3.height != self->_size.height)
  {
    if (self->_texture)
    {
      [(MRRenderer *)self->_renderer setEAGLContext:0];

      self->_texture = 0;
      self->_context = 0;
    }

    self->_size.width = width;
    self->_size.height = height;
    if (width >= 1.0 && height >= 1.0)
    {
      self->_context = [[EAGLContext alloc] initWithAPI:2];
      v8 = [[MRTexture alloc] initFBOWithSize:self->_size.width | (self->_size.height << 32) inGLContext:self->_context options:0];
      self->_texture = v8;
      [(MRTexture *)v8 setLabel:@"Marimba Snapshotter"];
      [(MRRenderer *)self->_renderer setEAGLContext:[(MRTexture *)self->_texture glContext]];
      [(MRContext *)[(MRRenderer *)self->_renderer context] setIsFlipped:1];
      v9 = self->_size.width;
      v10 = self->_size.height;
      renderer = self->_renderer;

      [(MRRenderer *)renderer setSize:v9, v10];
    }
  }
}

- (BOOL)isFlipped
{
  v2 = [(MRRenderer *)self->_renderer context];

  return [(MRContext *)v2 isFlipped];
}

- (void)setIsFlipped:(BOOL)a3
{
  v3 = a3;
  v4 = [(MRRenderer *)self->_renderer context];

  [(MRContext *)v4 setIsFlipped:v3];
}

- (CGColorSpace)colorSpace
{
  v2 = [(MRRenderer *)self->_renderer context];

  return [(MRContext *)v2 colorSpace];
}

- (void)setIgnoresFadeInAndOut:(BOOL)a3
{
  self->_ignoresFadeInAndOut = a3;
  renderer = self->_renderer;
  if (a3)
  {
    [(MRRenderer *)renderer disableFadeInAndOut];
  }

  else
  {
    [(MRRenderer *)renderer resetFadeInAndOut];
  }
}

- (void)_snapshotToBuffer:(unsigned int *)a3 withBytesPerRow:(unsigned int)a4
{
  if (self->_texture)
  {
    [(MRRenderer *)self->_renderer requestRendering:1, *&a4];
    v6 = [(MRRenderer *)self->_renderer renderDispatchQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_2937C;
    v7[3] = &unk_1AA670;
    v7[4] = self;
    v7[5] = a3;
    dispatch_sync(v6, v7);
  }
}

- (CGImage)_CGImageSnapshot
{
  if (!self->_texture)
  {
    return 0;
  }

  v3 = 4 * self->_size.width;
  v4 = v3 * self->_size.height;
  v5 = malloc_type_malloc(v4, 0x41848273uLL);
  [(MRSnapshotter *)self _snapshotToBuffer:v5 withBytesPerRow:v3];
  v6 = CGDataProviderCreateWithData(0, v5, v4, MyCGImageBufferReleaseCallback);
  v7 = CGImageCreate(self->_size.width, self->_size.height, 8uLL, 0x20uLL, v3, [(MRContext *)[(MRRenderer *)self->_renderer context] colorSpace], 1u, v6, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v6);

  return v7;
}

- (void)snapshotToBuffer:(unsigned int *)a3 withBytesPerRow:(unsigned int)a4 atTime:(double)a5
{
  v5 = *&a4;
  [(MRRenderer *)self->_renderer setTime:a5];

  [(MRSnapshotter *)self _snapshotToBuffer:a3 withBytesPerRow:v5];
}

- (CGImage)CGImageSnapshotAtTime:(double)a3
{
  [(MRRenderer *)self->_renderer setTime:a3];

  return [(MRSnapshotter *)self _CGImageSnapshot];
}

- (CGImage)CGImageSnapshotAtState:(id)a3
{
  [(MRRenderer *)self->_renderer gotoState:a3];

  return [(MRSnapshotter *)self _CGImageSnapshot];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end