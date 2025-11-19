@interface _WTTextPreview
- (CGRect)presentationFrame;
- (_WTTextPreview)initWithContentPath:(CGPath *)a3;
- (_WTTextPreview)initWithSnapshotImage:(CGImage *)a3 presentationFrame:(CGRect)a4 backgroundColor:(CGColor *)a5 clippingPath:(CGPath *)a6 scale:(double)a7 candidateRects:(id)a8;
- (id)layerWithContents;
- (void)dealloc;
@end

@implementation _WTTextPreview

- (_WTTextPreview)initWithSnapshotImage:(CGImage *)a3 presentationFrame:(CGRect)a4 backgroundColor:(CGColor *)a5 clippingPath:(CGPath *)a6 scale:(double)a7 candidateRects:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = _WTTextPreview;
  v18 = [(_WTTextPreview *)&v22 init];
  v19 = v18;
  if (v18)
  {
    [(_WTTextPreview *)v18 setPreviewImage:a3];
    [(_WTTextPreview *)v19 setPresentationFrame:x, y, width, height];
    [(_WTTextPreview *)v19 setBackgroundColor:a5];
    [(_WTTextPreview *)v19 setClippingPath:a6];
    [(_WTTextPreview *)v19 setScale:a7];
    [(_WTTextPreview *)v19 setCandidateRects:v17];
    v20 = v19;
  }

  return v19;
}

- (_WTTextPreview)initWithContentPath:(CGPath *)a3
{
  v8.receiver = self;
  v8.super_class = _WTTextPreview;
  v4 = [(_WTTextPreview *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(_WTTextPreview *)v4 setContentPath:a3];
    PathBoundingBox = CGPathGetPathBoundingBox(a3);
    [(_WTTextPreview *)v5 setPresentationFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), PathBoundingBox.size.width, PathBoundingBox.size.height];
    [(_WTTextPreview *)v5 setBackgroundColor:0];
    [(_WTTextPreview *)v5 setClippingPath:a3];
    [(_WTTextPreview *)v5 setScale:1.0];
    v6 = v5;
  }

  return v5;
}

- (id)layerWithContents
{
  if ([(_WTTextPreview *)self contentPath])
  {
    v3 = [MEMORY[0x1E69794A0] layer];
    [v3 setPath:{-[_WTTextPreview contentPath](self, "contentPath")}];
    [v3 setFillColor:CGColorGetConstantColor(*MEMORY[0x1E695F088])];
  }

  else
  {
    v3 = [MEMORY[0x1E6979398] layer];
    [v3 setContents:{-[_WTTextPreview previewImage](self, "previewImage")}];
  }

  [(_WTTextPreview *)self presentationFrame];
  [v3 setFrame:?];

  return v3;
}

- (void)dealloc
{
  if ([(_WTTextPreview *)self previewImage])
  {
    CFRelease([(_WTTextPreview *)self previewImage]);
  }

  if ([(_WTTextPreview *)self contentPath])
  {
    CFRelease([(_WTTextPreview *)self contentPath]);
  }

  if ([(_WTTextPreview *)self backgroundColor])
  {
    CFRelease([(_WTTextPreview *)self backgroundColor]);
  }

  if ([(_WTTextPreview *)self clippingPath])
  {
    CFRelease([(_WTTextPreview *)self clippingPath]);
  }

  v3.receiver = self;
  v3.super_class = _WTTextPreview;
  [(_WTTextPreview *)&v3 dealloc];
}

- (CGRect)presentationFrame
{
  objc_copyStruct(v6, &self->_presentationFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end