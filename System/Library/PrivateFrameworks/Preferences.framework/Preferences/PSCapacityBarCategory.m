@interface PSCapacityBarCategory
- (PSCapacityBarCategory)initWithIdentifier:(id)a3 title:(id)a4 color:(id)a5 bytes:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PSCapacityBarCategory

- (PSCapacityBarCategory)initWithIdentifier:(id)a3 title:(id)a4 color:(id)a5 bytes:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = PSCapacityBarCategory;
  v13 = [(PSCapacityBarCategory *)&v16 init];
  if (v13)
  {
    if ([v10 length])
    {
      v14 = v10;
    }

    else
    {
      v14 = v11;
    }

    objc_storeStrong(&v13->_identifier, v14);
    objc_storeStrong(&v13->_title, a4);
    objc_storeStrong(&v13->_color, a5);
    v13->_bytes = a6;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PSCapacityBarCategory alloc];
  title = self->_title;
  color = self->_color;
  bytes = self->_bytes;
  identifier = self->_identifier;

  return [(PSCapacityBarCategory *)v4 initWithIdentifier:identifier title:title color:color bytes:bytes];
}

@end