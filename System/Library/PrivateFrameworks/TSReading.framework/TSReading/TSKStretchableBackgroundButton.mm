@interface TSKStretchableBackgroundButton
- (void)awakeFromNib;
- (void)guessBackgroundTopLeftCapSize;
- (void)p_resetBackgroundImage;
- (void)p_resetBackgroundImageForState:(unint64_t)state;
- (void)setBackgroundImage:(id)image forState:(unint64_t)state;
- (void)setBackgroundLeftCapWidth:(int64_t)width;
- (void)setBackgroundTopCapHeight:(int64_t)height;
- (void)setBackgroundTopLeftCapHeight:(int64_t)height width:(int64_t)width;
@end

@implementation TSKStretchableBackgroundButton

- (void)setBackgroundImage:(id)image forState:(unint64_t)state
{
  if (image)
  {
    image = [image stretchableImageWithLeftCapWidth:self->mBackgroundLeftCapWidth topCapHeight:self->mBackgroundTopCapHeight];
  }

  v6.receiver = self;
  v6.super_class = TSKStretchableBackgroundButton;
  [(TSKStretchableBackgroundButton *)&v6 setBackgroundImage:image forState:state];
}

- (void)setBackgroundTopCapHeight:(int64_t)height
{
  objc_sync_enter(self);
  if (self->mBackgroundTopCapHeight != height)
  {
    self->mBackgroundTopCapHeight = height;
    [(TSKStretchableBackgroundButton *)self p_resetBackgroundImage];
  }

  objc_sync_exit(self);
}

- (void)setBackgroundLeftCapWidth:(int64_t)width
{
  objc_sync_enter(self);
  if (self->mBackgroundLeftCapWidth != width)
  {
    self->mBackgroundLeftCapWidth = width;
    [(TSKStretchableBackgroundButton *)self p_resetBackgroundImage];
  }

  objc_sync_exit(self);
}

- (void)setBackgroundTopLeftCapHeight:(int64_t)height width:(int64_t)width
{
  objc_sync_enter(self);
  if (self->mBackgroundTopCapHeight != height)
  {
    [(TSKStretchableBackgroundButton *)self willChangeValueForKey:@"backgroundTopCapHeight"];
    self->mBackgroundTopCapHeight = height;
    [(TSKStretchableBackgroundButton *)self didChangeValueForKey:@"backgroundTopCapHeight"];
    p_mBackgroundLeftCapWidth = &self->mBackgroundLeftCapWidth;
    if (self->mBackgroundLeftCapWidth == width)
    {
LABEL_6:
      [(TSKStretchableBackgroundButton *)self p_resetBackgroundImage];
      goto LABEL_7;
    }

LABEL_5:
    [(TSKStretchableBackgroundButton *)self willChangeValueForKey:@"backgroundLeftCapWidth"];
    *p_mBackgroundLeftCapWidth = width;
    [(TSKStretchableBackgroundButton *)self didChangeValueForKey:@"backgroundLeftCapWidth"];
    goto LABEL_6;
  }

  p_mBackgroundLeftCapWidth = &self->mBackgroundLeftCapWidth;
  if (self->mBackgroundLeftCapWidth != width)
  {
    goto LABEL_5;
  }

LABEL_7:

  objc_sync_exit(self);
}

- (void)guessBackgroundTopLeftCapSize
{
  v3 = [(TSKStretchableBackgroundButton *)self backgroundImageForState:0];
  if (v3)
  {
    [v3 size];
    v5 = vcvtmd_s64_f64(v4 * 0.5);
    v7 = vcvtmd_s64_f64(v6 * 0.5);

    [(TSKStretchableBackgroundButton *)self setBackgroundTopLeftCapHeight:v5 width:v7];
  }
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = TSKStretchableBackgroundButton;
  [(TSKStretchableBackgroundButton *)&v3 awakeFromNib];
  if (*&self->mBackgroundTopCapHeight == 0)
  {
    [(TSKStretchableBackgroundButton *)self guessBackgroundTopLeftCapSize];
  }
}

- (void)p_resetBackgroundImageForState:(unint64_t)state
{
  v5 = [(TSKStretchableBackgroundButton *)self backgroundImageForState:?];

  [(TSKStretchableBackgroundButton *)self setBackgroundImage:v5 forState:state];
}

- (void)p_resetBackgroundImage
{
  [(TSKStretchableBackgroundButton *)self p_resetBackgroundImageForState:0];
  [(TSKStretchableBackgroundButton *)self p_resetBackgroundImageForState:1];
  [(TSKStretchableBackgroundButton *)self p_resetBackgroundImageForState:2];
  [(TSKStretchableBackgroundButton *)self p_resetBackgroundImageForState:3];
  [(TSKStretchableBackgroundButton *)self p_resetBackgroundImageForState:4];
  [(TSKStretchableBackgroundButton *)self p_resetBackgroundImageForState:5];
  [(TSKStretchableBackgroundButton *)self p_resetBackgroundImageForState:6];

  [(TSKStretchableBackgroundButton *)self p_resetBackgroundImageForState:7];
}

@end