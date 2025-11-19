@interface SAUUIDToSymbolicate
- (id)debugDescription;
@end

@implementation SAUUIDToSymbolicate

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(NSMutableArray *)self->_binaries firstObject];
  v5 = [v4 uuid];
  v6 = [(NSMutableArray *)self->_binaries firstObject];
  v7 = [v6 name];
  v8 = [v3 initWithFormat:@"%@ %@ (%lu)", v5, v7, -[NSMutableArray count](self->_binaries, "count")];

  return v8;
}

@end