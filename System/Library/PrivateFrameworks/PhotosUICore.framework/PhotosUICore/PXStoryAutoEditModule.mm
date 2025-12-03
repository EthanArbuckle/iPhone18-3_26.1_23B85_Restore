@interface PXStoryAutoEditModule
- (PXStoryAutoEditModule)initWithModuleType:(int64_t)type range:(_NSRange)range;
- (_NSRange)range;
- (id)debugDescription;
@end

@implementation PXStoryAutoEditModule

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  moduleType = self->_moduleType;
  if (moduleType > 3)
  {
    v6 = @"??";
  }

  else
  {
    v6 = off_1E7731FC0[moduleType];
  }

  v7 = v6;
  v8 = [v3 stringWithFormat:@"<%@:%p type:%@ [%ld...%ld]>", v4, self, v7, self->_range.location, self->_range.length + self->_range.location];

  return v8;
}

- (PXStoryAutoEditModule)initWithModuleType:(int64_t)type range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8.receiver = self;
  v8.super_class = PXStoryAutoEditModule;
  result = [(PXStoryAutoEditModule *)&v8 init];
  if (result)
  {
    result->_moduleType = type;
    result->_range.location = location;
    result->_range.length = length;
  }

  return result;
}

@end