@interface PSCapacityBarCategory
- (PSCapacityBarCategory)initWithIdentifier:(id)identifier title:(id)title color:(id)color bytes:(int64_t)bytes;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PSCapacityBarCategory

- (PSCapacityBarCategory)initWithIdentifier:(id)identifier title:(id)title color:(id)color bytes:(int64_t)bytes
{
  identifierCopy = identifier;
  titleCopy = title;
  colorCopy = color;
  v16.receiver = self;
  v16.super_class = PSCapacityBarCategory;
  v13 = [(PSCapacityBarCategory *)&v16 init];
  if (v13)
  {
    if ([identifierCopy length])
    {
      v14 = identifierCopy;
    }

    else
    {
      v14 = titleCopy;
    }

    objc_storeStrong(&v13->_identifier, v14);
    objc_storeStrong(&v13->_title, title);
    objc_storeStrong(&v13->_color, color);
    v13->_bytes = bytes;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PSCapacityBarCategory alloc];
  title = self->_title;
  color = self->_color;
  bytes = self->_bytes;
  identifier = self->_identifier;

  return [(PSCapacityBarCategory *)v4 initWithIdentifier:identifier title:title color:color bytes:bytes];
}

@end