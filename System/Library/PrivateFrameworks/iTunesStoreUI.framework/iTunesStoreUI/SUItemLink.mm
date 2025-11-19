@interface SUItemLink
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation SUItemLink

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUItemLink;
  [(SUItemLink *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = self->_linkTarget;
  v5[2] = self->_linkType;
  v5[3] = [(NSString *)self->_title copyWithZone:a3];
  v5[4] = self->_url;
  return v5;
}

@end