@interface UIIndexBarEntry
+ (UIIndexBarEntry)entryWithTitle:(id)title;
+ (UIIndexBarEntry)entryWithType:(int64_t)type;
+ (id)_dotImageInView:(id)view;
+ (id)_externalDotImageInView:(id)view;
+ (id)entryForDotInView:(id)view;
+ (id)entryForNumbers;
+ (id)entryForSearch;
- (BOOL)hasPoundTitle;
- (NSString)effectiveShortTitle;
- (id)description;
@end

@implementation UIIndexBarEntry

+ (UIIndexBarEntry)entryWithType:(int64_t)type
{
  v4 = objc_alloc_init(self);
  [v4 setType:type];

  return v4;
}

+ (UIIndexBarEntry)entryWithTitle:(id)title
{
  titleCopy = title;
  v5 = [self entryWithType:0];
  [v5 setTitle:titleCopy];

  return v5;
}

+ (id)entryForNumbers
{
  v2 = [self entryWithType:2];
  v3 = _UIImageWithName(@"UISectionListPoundSign");
  [v2 setImage:v3];

  return v2;
}

+ (id)entryForSearch
{
  v2 = [self entryWithType:3];
  v3 = _UIImageWithName(@"UITableViewIndexSearchGlyph");
  [v2 setImage:v3];

  return v2;
}

+ (id)entryForDotInView:(id)view
{
  viewCopy = view;
  v5 = [self entryWithType:1];
  v6 = [self _dotImageInView:viewCopy];

  [v5 setImage:v6];

  return v5;
}

+ (id)_dotImageInView:(id)view
{
  viewCopy = view;
  traitCollection = [viewCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    [self _externalDotImageInView:viewCopy];
  }

  else
  {
    _UIImageWithName(@"UITableViewIndexDot");
  }
  v7 = ;

  return v7;
}

+ (id)_externalDotImageInView:(id)view
{
  viewCopy = view;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIIndexBarEntry__externalDotImageInView___block_invoke;
  block[3] = &unk_1E70F3590;
  v10 = viewCopy;
  v4 = _MergedGlobals_1387;
  v5 = viewCopy;
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
  shortTitle = [(UIIndexBarEntry *)self shortTitle];

  if (shortTitle)
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
  title = [(UIIndexBarEntry *)self title];
  v3 = title;
  if (title)
  {
    v4 = [title isEqualToString:@"#"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end