@interface PCSKeybagKey
- (PCSKeybagKey)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCSKeybagKey

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(PCSKeybagKey *)self data];
  [v5 encodeObject:v4 forKey:@"data"];

  [v5 encodeInt64:-[PCSKeybagKey flags](self forKey:{"flags"), @"flags"}];
}

- (PCSKeybagKey)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PCSKeybagKey;
  v5 = [(PCSKeybagKey *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(PCSKeybagKey *)v5 setData:v6];

    -[PCSKeybagKey setFlags:](v5, "setFlags:", [v4 decodeInt64ForKey:@"flags"]);
  }

  return v5;
}

@end