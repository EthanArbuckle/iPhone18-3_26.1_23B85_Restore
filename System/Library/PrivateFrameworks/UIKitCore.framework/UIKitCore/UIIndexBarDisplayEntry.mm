@interface UIIndexBarDisplayEntry
- (id)description;
@end

@implementation UIIndexBarDisplayEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@"; entryIndex = %d", self->_entryIndex];
  [v3 appendFormat:@"; displayEntryIndex = %d", self->_displayEntryIndex];
  entry = self->_entry;
  if (entry)
  {
    [v3 appendFormat:@"; type=%d", -[UIIndexBarEntry type](entry, "type")];
    v5 = [(UIIndexBarEntry *)self->_entry title];
    [v3 appendFormat:@"; title='%@'", v5];

    v6 = [(UIIndexBarEntry *)self->_entry shortTitle];
    [v3 appendFormat:@"; shortTitle='%@'", v6];
  }

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

@end