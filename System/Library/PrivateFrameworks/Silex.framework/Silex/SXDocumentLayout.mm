@interface SXDocumentLayout
- (NSString)description;
- (SXDocumentLayout)initWithWidth:(int64_t)width margin:(int64_t)margin gutter:(int64_t)gutter columns:(unint64_t)columns;
@end

@implementation SXDocumentLayout

- (SXDocumentLayout)initWithWidth:(int64_t)width margin:(int64_t)margin gutter:(int64_t)gutter columns:(unint64_t)columns
{
  v11.receiver = self;
  v11.super_class = SXDocumentLayout;
  result = [(SXDocumentLayout *)&v11 init];
  if (result)
  {
    result->_width = width;
    result->_margin = margin;
    result->_gutter = gutter;
    result->_columns = columns;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; width: %li", -[SXDocumentLayout width](self, "width")];
  [v3 appendFormat:@"; margin: %li", -[SXDocumentLayout margin](self, "margin")];
  [v3 appendFormat:@"; gutter: %li", -[SXDocumentLayout gutter](self, "gutter")];
  [v3 appendFormat:@"; columns: %li", -[SXDocumentLayout columns](self, "columns")];
  [v3 appendString:@">"];

  return v3;
}

@end