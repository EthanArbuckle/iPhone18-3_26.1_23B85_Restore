@interface SXDocumentLayout
- (NSString)description;
- (SXDocumentLayout)initWithWidth:(int64_t)a3 margin:(int64_t)a4 gutter:(int64_t)a5 columns:(unint64_t)a6;
@end

@implementation SXDocumentLayout

- (SXDocumentLayout)initWithWidth:(int64_t)a3 margin:(int64_t)a4 gutter:(int64_t)a5 columns:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = SXDocumentLayout;
  result = [(SXDocumentLayout *)&v11 init];
  if (result)
  {
    result->_width = a3;
    result->_margin = a4;
    result->_gutter = a5;
    result->_columns = a6;
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