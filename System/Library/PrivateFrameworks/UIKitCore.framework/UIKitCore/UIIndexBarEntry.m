@interface UIIndexBarEntry
+ (UIIndexBarEntry)entryWithTitle:(id)a3;
+ (UIIndexBarEntry)entryWithType:(int64_t)a3;
+ (id)_dotImageInView:(id)a3;
+ (id)_externalDotImageInView:(id)a3;
+ (id)entryForDotInView:(id)a3;
+ (id)entryForNumbers;
+ (id)entryForSearch;
- (BOOL)hasPoundTitle;
- (NSString)effectiveShortTitle;
- (id)description;
@end

@implementation UIIndexBarEntry

+ (UIIndexBarEntry)entryWithType:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setType:a3];

  return v4;
}

+ (UIIndexBarEntry)entryWithTitle:(id)a3
{
  v4 = a3;
  v5 = [a1 entryWithType:0];
  [v5 setTitle:v4];

  return v5;
}

+ (id)entryForNumbers
{
  v2 = [a1 entryWithType:2];
  v3 = _UIImageWithName(@"UISectionListPoundSign");
  [v2 setImage:v3];

  return v2;
}

+ (id)entryForSearch
{
  v2 = [a1 entryWithType:3];
  v3 = _UIImageWithName(@"UITableViewIndexSearchGlyph");
  [v2 setImage:v3];

  return v2;
}

+ (id)entryForDotInView:(id)a3
{
  v4 = a3;
  v5 = [a1 entryWithType:1];
  v6 = [a1 _dotImageInView:v4];

  [v5 setImage:v6];

  return v5;
}

+ (id)_dotImageInView:(id)a3
{
  v4 = a3;
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 3)
  {
    [a1 _externalDotImageInView:v4];
  }

  else
  {
    _UIImageWithName(@"UITableViewIndexDot");
  }
  v7 = ;

  return v7;
}

+ (id)_externalDotImageInView:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIIndexBarEntry__externalDotImageInView___block_invoke;
  block[3] = &unk_1E70F3590;
  v10 = v3;
  v4 = _MergedGlobals_1387;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&_MergedGlobals_1387, block);
  }

  v6 = qword_1ED4A2BF8;
  v7 = qword_1ED4A2BF8;

  return v6;
}

void __43__UIIndexBarEntry__externalDotImageInView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _currentScreenScale];
  _UIGraphicsBeginImageContextWithOptions(0, 0, 4.0, 4.0, v1);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 4.0;
  v7.size.height = 4.0;
  CGContextFillEllipseInRect(v3, v7);
  v4 = _UIGraphicsGetImageFromCurrentImageContext(0);
  v5 = qword_1ED4A2BF8;
  qword_1ED4A2BF8 = v4;

  UIGraphicsEndImageContext();
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@"; title='%@'", self->_title];
  [v3 appendFormat:@"; shortTitle='%@'", self->_shortTitle];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)effectiveShortTitle
{
  v3 = [(UIIndexBarEntry *)self shortTitle];

  if (v3)
  {
    [(UIIndexBarEntry *)self shortTitle];
  }

  else
  {
    [(UIIndexBarEntry *)self title];
  }
  v4 = ;

  return v4;
}

- (BOOL)hasPoundTitle
{
  v2 = [(UIIndexBarEntry *)self title];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isEqualToString:@"#"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end