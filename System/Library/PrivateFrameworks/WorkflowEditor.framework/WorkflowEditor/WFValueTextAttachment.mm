@interface WFValueTextAttachment
+ (id)humanReadableStringFromValueTextAttributedString:(id)string;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (NSAttributedString)displayString;
- (UIEdgeInsets)borderInsets;
- (UIEdgeInsets)textInsets;
- (WFValueTextAttachment)initWithData:(id)data ofType:(id)type;
- (id)imageForBounds:(CGRect)bounds textContainer:(id)container characterIndex:(unint64_t)index;
- (void)setAttributes:(id)attributes;
- (void)setRequiresRedraw:(BOOL)redraw;
- (void)setSelected:(BOOL)selected;
@end

@implementation WFValueTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  y = fragment.origin.y;
  x = fragment.origin.x;
  [(WFValueTextAttachment *)self textInsets:container];
  v31 = v8;
  v32 = v7;
  v10 = v9;
  v12 = v11;
  [(WFValueTextAttachment *)self borderInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  displayString = [(WFValueTextAttachment *)self displayString];
  [displayString size];
  v23 = v22;
  v25 = v24;

  v26 = v20 + v10 + v12 + v16 + v23;
  v27 = v18 + v32 + v31 + v14;
  v28 = v27 + v25;
  v29 = y - v27;
  v30 = x;
  result.size.height = v28;
  result.size.width = v26;
  result.origin.y = v29;
  result.origin.x = v30;
  return result;
}

- (id)imageForBounds:(CGRect)bounds textContainer:(id)container characterIndex:(unint64_t)index
{
  height = bounds.size.height;
  width = bounds.size.width;
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  [(WFValueTextAttachment *)self borderInsets:container];
  v11 = v8 + v10;
  v13 = v9 + v12;
  v15 = width - (v10 + v14);
  v17 = height - (v12 + v16);
  v41.width = width;
  v41.height = height;
  UIGraphicsBeginImageContextWithOptions(v41, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  displayString = [(WFValueTextAttachment *)self displayString];
  [(WFValueTextAttachment *)self textInsets];
  [displayString drawInRect:{v11 + v23, v13 + v20, v15 - (v23 + v21), v17 - (v20 + v22)}];

  [(WFValueTextAttachment *)self setRequiresRedraw:0];
  if ([(WFValueTextAttachment *)self selected])
  {
    v42.origin.x = v8;
    v42.origin.y = v9;
    v42.size.width = width;
    v42.size.height = height;
    v39.b = 0.0;
    v39.c = 0.0;
    v39.a = 1.0;
    *&v39.d = xmmword_2746606B0;
    v39.ty = CGRectGetHeight(v42);
    CGContextConcatCTM(CurrentContext, &v39);
    Image = CGBitmapContextCreateImage(CurrentContext);
    v25 = CGImageGetWidth(Image);
    v26 = CGImageGetHeight(Image);
    BitsPerComponent = CGImageGetBitsPerComponent(Image);
    BitsPerPixel = CGImageGetBitsPerPixel(Image);
    BytesPerRow = CGImageGetBytesPerRow(Image);
    DataProvider = CGImageGetDataProvider(Image);
    Decode = CGImageGetDecode(Image);
    ShouldInterpolate = CGImageGetShouldInterpolate(Image);
    v33 = CGImageMaskCreate(v25, v26, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, Decode, ShouldInterpolate);
    v43.origin.x = v8;
    v43.origin.y = v9;
    v43.size.width = width;
    v43.size.height = height;
    CGContextClearRect(CurrentContext, v43);
    v44.origin.x = v8;
    v44.origin.y = v9;
    v44.size.width = width;
    v44.size.height = height;
    CGContextClipToMask(CurrentContext, v44, v33);
    attributes = [(WFValueTextAttachment *)self attributes];
    v35 = [attributes objectForKey:*MEMORY[0x277D740C0]];
    CGContextSetFillColorWithColor(CurrentContext, [v35 CGColor]);

    v45.origin.x = v11;
    v45.origin.y = v13;
    v45.size.width = v15;
    v45.size.height = v17;
    v36 = CGPathCreateWithRoundedRect(v45, 3.0, 3.0, 0);
    CGContextAddPath(CurrentContext, v36);
    CGContextFillPath(CurrentContext);
    CGPathRelease(v36);
    v37 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGImageRelease(v33);
    CGImageRelease(Image);
  }

  else
  {
    v37 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [(WFValueTextAttachment *)self setImage:v37];
  }

  return v37;
}

- (void)setAttributes:(id)attributes
{
  v7 = [attributes mutableCopy];
  [v7 removeObjectForKey:*MEMORY[0x277D74060]];
  v4 = [v7 copy];
  if ([(WFValueTextAttachment *)self requiresRedraw])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(NSDictionary *)self->_attributes isEqual:v4]^ 1;
  }

  [(WFValueTextAttachment *)self setRequiresRedraw:v5];
  attributes = self->_attributes;
  self->_attributes = v4;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(WFValueTextAttachment *)self requiresRedraw])
  {
    v5 = 1;
  }

  else
  {
    v5 = self->_selected != selectedCopy;
  }

  [(WFValueTextAttachment *)self setRequiresRedraw:v5];
  self->_selected = selectedCopy;
}

- (void)setRequiresRedraw:(BOOL)redraw
{
  if (redraw)
  {
    displayString = self->_displayString;
    self->_displayString = 0;
  }

  self->_requiresRedraw = redraw;
}

- (NSAttributedString)displayString
{
  displayString = self->_displayString;
  if (!displayString)
  {
    attributes = [(WFValueTextAttachment *)self attributes];
    v5 = [attributes mutableCopy];

    v6 = objc_alloc(MEMORY[0x277CCAB48]);
    valueName = [(WFValueTextAttachment *)self valueName];
    if (valueName)
    {
      v8 = [v6 initWithString:valueName attributes:v5];
    }

    else
    {
      stringValue = [(WFValueTextAttachment *)self stringValue];
      v8 = [v6 initWithString:stringValue attributes:v5];
    }

    grayColor = [MEMORY[0x277D75348] grayColor];
    [v5 setObject:grayColor forKey:*MEMORY[0x277D740C0]];

    if (!self->_selected)
    {
      v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" attributes:{", v5}];
      [(NSAttributedString *)v8 appendAttributedString:v11];
    }

    v12 = self->_displayString;
    self->_displayString = v8;

    displayString = self->_displayString;
  }

  return displayString;
}

- (UIEdgeInsets)borderInsets
{
  v2 = 0.0;
  if (self->_selected)
  {
    v3 = 3.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = 0.0;
  result.right = v3;
  result.bottom = v5;
  result.left = v4;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)textInsets
{
  v2 = 3.0;
  if (!self->_selected)
  {
    v2 = 0.0;
  }

  v3 = 3.0;
  v4 = 3.0;
  v5 = v2;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

- (WFValueTextAttachment)initWithData:(id)data ofType:(id)type
{
  v8.receiver = self;
  v8.super_class = WFValueTextAttachment;
  v4 = [(WFValueTextAttachment *)&v8 initWithData:data ofType:type];
  v5 = v4;
  if (v4)
  {
    [(WFValueTextAttachment *)v4 setCornerRadius:3.0];
    v6 = v5;
  }

  return v5;
}

+ (id)humanReadableStringFromValueTextAttributedString:(id)string
{
  v3 = [string mutableCopy];
  v4 = *MEMORY[0x277D74060];
  v5 = [v3 length];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__WFValueTextAttachment_humanReadableStringFromValueTextAttributedString___block_invoke;
  v9[3] = &unk_279EDB978;
  v10 = v3;
  v6 = v3;
  [v6 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v9}];
  string = [v6 string];

  return string;
}

void __74__WFValueTextAttachment_humanReadableStringFromValueTextAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v14;
  if (isKindOfClass)
  {
    v9 = [v14 valueName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v14 stringValue];
    }

    v12 = v11;

    if (a3 + a4 != [*(a1 + 32) length])
    {
      v13 = [v12 stringByAppendingString:{@", "}];

      v12 = v13;
    }

    [*(a1 + 32) replaceCharactersInRange:a3 withString:{a4, v12}];

    v8 = v14;
  }
}

@end