@interface SAUUIDToSymbolicate
- (id)debugDescription;
@end

@implementation SAUUIDToSymbolicate

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  firstObject = [(NSMutableArray *)self->_binaries firstObject];
  uuid = [firstObject uuid];
  firstObject2 = [(NSMutableArray *)self->_binaries firstObject];
  name = [firstObject2 name];
  v8 = [v3 initWithFormat:@"%@ %@ (%lu)", uuid, name, -[NSMutableArray count](self->_binaries, "count")];

  return v8;
}

@end