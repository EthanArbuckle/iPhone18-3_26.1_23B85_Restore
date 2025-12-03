@interface PCSKeybagKey
- (PCSKeybagKey)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCSKeybagKey

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(PCSKeybagKey *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  [coderCopy encodeInt64:-[PCSKeybagKey flags](self forKey:{"flags"), @"flags"}];
}

- (PCSKeybagKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PCSKeybagKey;
  v5 = [(PCSKeybagKey *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(PCSKeybagKey *)v5 setData:v6];

    -[PCSKeybagKey setFlags:](v5, "setFlags:", [coderCopy decodeInt64ForKey:@"flags"]);
  }

  return v5;
}

@end