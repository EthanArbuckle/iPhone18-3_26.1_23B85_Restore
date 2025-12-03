@interface SUIUpdateSearchQueryCommand
- (SUIUpdateSearchQueryCommand)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUIUpdateSearchQueryCommand

- (SUIUpdateSearchQueryCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SUIUpdateSearchQueryCommand;
  v5 = [(SUIUpdateSearchQueryCommand *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    -[SUIUpdateSearchQueryCommand setQueryKind:](v5, "setQueryKind:", [coderCopy decodeIntegerForKey:@"queryKind"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SUIUpdateSearchQueryCommand;
  coderCopy = coder;
  [(SUIUpdateSearchQueryCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[SUIUpdateSearchQueryCommand queryKind](self forKey:{"queryKind", v5.receiver, v5.super_class), @"queryKind"}];
}

@end