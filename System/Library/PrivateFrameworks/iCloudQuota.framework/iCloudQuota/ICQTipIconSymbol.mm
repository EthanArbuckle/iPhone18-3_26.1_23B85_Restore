@interface ICQTipIconSymbol
- (ICQTipIconSymbol)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQTipIconSymbol

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQTipIconSymbol);
  [(ICQTipIconSymbol *)v4 setId:self->_id];
  [(ICQTipIconSymbol *)v4 setPath:self->_path];
  [(ICQTipIconSymbol *)v4 setSystemColorName:self->_systemColorName];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  id = self->_id;
  coderCopy = coder;
  [coderCopy encodeObject:id forKey:@"id"];
  [coderCopy encodeObject:self->_path forKey:@"path"];
  [coderCopy encodeObject:self->_systemColorName forKey:@"systemColorName"];
}

- (ICQTipIconSymbol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICQTipIconSymbol;
  v5 = [(ICQTipIconSymbol *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    id = v5->_id;
    v5->_id = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemColorName"];
    systemColorName = v5->_systemColorName;
    v5->_systemColorName = v10;
  }

  return v5;
}

@end