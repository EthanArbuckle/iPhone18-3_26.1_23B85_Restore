@interface TSTTableDataStyle
- (BOOL)isEqual:(id)equal;
- (id)initObjectWithStyle:(id)style;
- (void)dealloc;
@end

@implementation TSTTableDataStyle

- (id)initObjectWithStyle:(id)style
{
  v6.receiver = self;
  v6.super_class = TSTTableDataStyle;
  v4 = [(TSTTableDataStyle *)&v6 init];
  if (v4)
  {
    v4->mStyle = style;
    v4->super.mRefCount = 1;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !-[TSSStylesheet isEqual:](-[TSSStyle stylesheet](self->mStyle, "stylesheet"), "isEqual:", [*(equal + 2) stylesheet]))
  {
    return 0;
  }

  mStyle = self->mStyle;
  v6 = *(equal + 2);

  return [(TSSStyle *)mStyle isEqual:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataStyle;
  [(TSTTableDataStyle *)&v3 dealloc];
}

@end