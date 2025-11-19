@interface TSKStretchableBackgroundButton
- (void)awakeFromNib;
- (void)guessBackgroundTopLeftCapSize;
- (void)p_resetBackgroundImage;
- (void)p_resetBackgroundImageForState:(unint64_t)a3;
- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4;
- (void)setBackgroundLeftCapWidth:(int64_t)a3;
- (void)setBackgroundTopCapHeight:(int64_t)a3;
- (void)setBackgroundTopLeftCapHeight:(int64_t)a3 width:(int64_t)a4;
@end

@implementation TSKStretchableBackgroundButton

- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4
{
  if (a3)
  {
    a3 = [a3 stretchableImageWithLeftCapWidth:self->mBackgroundLeftCapWidth topCapHeight:self->mBackgroundTopCapHeight];
  }

  v6.receiver = self;
  v6.super_class = TSKStretchableBackgroundButton;
  [(TSKStretchableBackgroundButton *)&v6 setBackgroundImage:a3 forState:a4];
}

- (void)setBackgroundTopCapHeight:(int64_t)a3
{
  objc_sync_enter(self);
  if (self->mBackgroundTopCapHeight != a3)
  {
    self->mBackgroundTopCapHeight = a3;
    [(TSKStretchableBackgroundButton *)self p_resetBackgroundImage];
  }

  objc_sync_exit(self);
}

- (void)setBackgroundLeftCapWidth:(int64_t)a3
{
  objc_sync_enter(self);
  if (self->mBackgroundLeftCapWidth != a3)
  {
    self->mBackgroundLeftCapWidth = a3;
    [(TSKStretchableBackgroundButton *)self p_resetBackgroundImage];
  }

  objc_sync_exit(self);
}

- (void)setBackgroundTopLeftCapHeight:(int64_t)a3 width:(int64_t)a4
{
  objc_sync_enter(self);
  if (self->mBackgroundTopCapHeight != a3)
  {
    [(TSKStretchableBackgroundButton *)self willChangeValueForKey:@"backgroundTopCapHeight"];
    self->mBackgroundTopCapHeight = a3;
    [(TSKStretchableBackgroundButton *)self didChangeValueForKey:@"backgroundTopCapHeight"];
    p_mBackgroundLeftCapWidth = &self->mBackgroundLeftCapWidth;
    if (self->mBackgroundLeftCapWidth == a4)
    {
LABEL_6:
      [(TSKStretchableBackgroundButton *)self p_resetBackgroundImage];
      goto LABEL_7;
    }

LABEL_5:
    [(TSKStretchableBackgroundButton *)self willChangeValueForKey:@"backgroundLeftCapWidth"];
    *p_mBackgroundLeftCapWidth = a4;
    [(TSKStretchableBackgroundButton *)self didChangeValueForKey:@"backgroundLeftCapWidth"];
    goto LABEL_6;
  }

  p_mBackgroundLeftCapWidth = &self->mBackgroundLeftCapWidth;
  if (self->mBackgroundLeftCapWidth != a4)
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

- (void)p_resetBackgroundImageForState:(unint64_t)a3
{
  v5 = [(TSKStretchableBackgroundButton *)self backgroundImageForState:?];

  [(TSKStretchableBackgroundButton *)self setBackgroundImage:v5 forState:a3];
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