@interface SUIUpdateSearchQueryCommand
- (SUIUpdateSearchQueryCommand)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUIUpdateSearchQueryCommand

- (SUIUpdateSearchQueryCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SUIUpdateSearchQueryCommand;
  v5 = [(SUIUpdateSearchQueryCommand *)&v7 initWithCoder:v4];
  if (v5)
  {
    -[SUIUpdateSearchQueryCommand setQueryKind:](v5, "setQueryKind:", [v4 decodeIntegerForKey:@"queryKind"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUIUpdateSearchQueryCommand;
  v4 = a3;
  [(SUIUpdateSearchQueryCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[SUIUpdateSearchQueryCommand queryKind](self forKey:{"queryKind", v5.receiver, v5.super_class), @"queryKind"}];
}

@end