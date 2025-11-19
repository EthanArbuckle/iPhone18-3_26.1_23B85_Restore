@interface TSWPRubyField
- (BOOL)canCopy:(_NSRange)a3;
- (NSString)baseText;
- (TSWPRubyField)initWithContext:(id)a3 rubyText:(id)a4;
- (id)copyWithContext:(id)a3;
- (int)baseTextScript;
- (void)dealloc;
- (void)setRubyText:(id)a3;
@end

@implementation TSWPRubyField

- (TSWPRubyField)initWithContext:(id)a3 rubyText:(id)a4
{
  v8.receiver = self;
  v8.super_class = TSWPRubyField;
  v5 = [(TSWPSmartField *)&v8 initWithContext:a3];
  v6 = v5;
  if (v5)
  {
    [(TSWPRubyField *)v5 setRubyText:a4];
  }

  return v6;
}

- (id)copyWithContext:(id)a3
{
  v5 = [objc_opt_class() allocWithZone:{-[TSWPRubyField zone](self, "zone")}];
  v6 = [(TSWPRubyField *)self rubyText];

  return [v5 initWithContext:a3 rubyText:v6];
}

- (void)dealloc
{
  self->_rubyText = 0;
  v3.receiver = self;
  v3.super_class = TSWPRubyField;
  [(TSWPSmartField *)&v3 dealloc];
}

- (void)setRubyText:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = [a3 copy];

  self->_rubyText = v5;
  v6 = [(TSWPSmartField *)self parentStorage];

  [(TSWPStorage *)v6 smartFieldDidChange:self];
}

- (NSString)baseText
{
  result = [(TSWPSmartField *)self parentStorage];
  if (result)
  {
    v4 = [(TSWPSmartField *)self parentStorage];
    v6 = [(TSWPSmartField *)self range];

    return [(TSWPStorage *)v4 substringWithRange:v6, v5];
  }

  return result;
}

- (int)baseTextScript
{
  v2 = [(TSWPRubyField *)self baseText];

  return [(NSString *)v2 contentsScript];
}

- (BOOL)canCopy:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(TSWPSmartField *)self range];
  return location <= v5 && location + length >= v5 + v6;
}

@end