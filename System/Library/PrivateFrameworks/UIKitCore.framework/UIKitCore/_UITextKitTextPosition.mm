@interface _UITextKitTextPosition
+ (id)positionWithOffset:(int64_t)offset affinity:(int64_t)affinity;
+ (id)positionWithTextContentManager:(id)manager location:(id)location affinity:(int64_t)affinity;
- (_UITextKitTextPosition)init;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation _UITextKitTextPosition

- (_UITextKitTextPosition)init
{
  v3.receiver = self;
  v3.super_class = _UITextKitTextPosition;
  result = [(_UITextKitTextPosition *)&v3 init];
  if (result)
  {
    result->_offset = 0;
    result->_affinity = 0;
  }

  return result;
}

+ (id)positionWithOffset:(int64_t)offset affinity:(int64_t)affinity
{
  v6 = objc_opt_new();
  v6[1] = offset;
  v6[2] = affinity;

  return v6;
}

+ (id)positionWithTextContentManager:(id)manager location:(id)location affinity:(int64_t)affinity
{
  locationCopy = location;
  managerCopy = manager;
  documentRange = [managerCopy documentRange];
  location = [documentRange location];
  v12 = [managerCopy offsetFromLocation:location toLocation:locationCopy];

  v13 = [self positionWithOffset:v12 affinity:affinity];
  v14 = v13[3];
  v13[3] = locationCopy;

  return v13;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (!compareCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextKitTextViewEditingSupport.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"pos"}];
  }

  offset = [(_UITextKitTextPosition *)self offset];
  if (offset <= [compareCopy offset])
  {
    offset2 = [(_UITextKitTextPosition *)self offset];
    if (offset2 >= [compareCopy offset])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = _UITextKitTextPosition;
  v4 = [(_UITextKitTextPosition *)&v9 description];
  v5 = v4;
  if (self->_affinity)
  {
    v6 = @"B";
  }

  else
  {
    v6 = @"F";
  }

  v7 = [v3 stringWithFormat:@"%@ (%li%@)", v4, self->_offset, v6];

  return v7;
}

@end