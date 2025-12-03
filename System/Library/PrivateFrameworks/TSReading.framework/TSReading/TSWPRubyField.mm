@interface TSWPRubyField
- (BOOL)canCopy:(_NSRange)copy;
- (NSString)baseText;
- (TSWPRubyField)initWithContext:(id)context rubyText:(id)text;
- (id)copyWithContext:(id)context;
- (int)baseTextScript;
- (void)dealloc;
- (void)setRubyText:(id)text;
@end

@implementation TSWPRubyField

- (TSWPRubyField)initWithContext:(id)context rubyText:(id)text
{
  v8.receiver = self;
  v8.super_class = TSWPRubyField;
  v5 = [(TSWPSmartField *)&v8 initWithContext:context];
  v6 = v5;
  if (v5)
  {
    [(TSWPRubyField *)v5 setRubyText:text];
  }

  return v6;
}

- (id)copyWithContext:(id)context
{
  v5 = [objc_opt_class() allocWithZone:{-[TSWPRubyField zone](self, "zone")}];
  rubyText = [(TSWPRubyField *)self rubyText];

  return [v5 initWithContext:context rubyText:rubyText];
}

- (void)dealloc
{
  self->_rubyText = 0;
  v3.receiver = self;
  v3.super_class = TSWPRubyField;
  [(TSWPSmartField *)&v3 dealloc];
}

- (void)setRubyText:(id)text
{
  [(TSPObject *)self willModify];
  v5 = [text copy];

  self->_rubyText = v5;
  parentStorage = [(TSWPSmartField *)self parentStorage];

  [(TSWPStorage *)parentStorage smartFieldDidChange:self];
}

- (NSString)baseText
{
  result = [(TSWPSmartField *)self parentStorage];
  if (result)
  {
    parentStorage = [(TSWPSmartField *)self parentStorage];
    range = [(TSWPSmartField *)self range];

    return [(TSWPStorage *)parentStorage substringWithRange:range, v5];
  }

  return result;
}

- (int)baseTextScript
{
  baseText = [(TSWPRubyField *)self baseText];

  return [(NSString *)baseText contentsScript];
}

- (BOOL)canCopy:(_NSRange)copy
{
  length = copy.length;
  location = copy.location;
  range = [(TSWPSmartField *)self range];
  return location <= range && location + length >= range + v6;
}

@end