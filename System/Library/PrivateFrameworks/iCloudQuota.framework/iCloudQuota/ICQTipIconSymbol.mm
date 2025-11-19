@interface ICQTipIconSymbol
- (ICQTipIconSymbol)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQTipIconSymbol

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQTipIconSymbol);
  [(ICQTipIconSymbol *)v4 setId:self->_id];
  [(ICQTipIconSymbol *)v4 setPath:self->_path];
  [(ICQTipIconSymbol *)v4 setSystemColorName:self->_systemColorName];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  id = self->_id;
  v5 = a3;
  [v5 encodeObject:id forKey:@"id"];
  [v5 encodeObject:self->_path forKey:@"path"];
  [v5 encodeObject:self->_systemColorName forKey:@"systemColorName"];
}

- (ICQTipIconSymbol)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICQTipIconSymbol;
  v5 = [(ICQTipIconSymbol *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    id = v5->_id;
    v5->_id = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemColorName"];
    systemColorName = v5->_systemColorName;
    v5->_systemColorName = v10;
  }

  return v5;
}

@end