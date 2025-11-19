@interface _UITextKitTextPosition
+ (id)positionWithOffset:(int64_t)a3 affinity:(int64_t)a4;
+ (id)positionWithTextContentManager:(id)a3 location:(id)a4 affinity:(int64_t)a5;
- (_UITextKitTextPosition)init;
- (id)description;
- (int64_t)compare:(id)a3;
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

+ (id)positionWithOffset:(int64_t)a3 affinity:(int64_t)a4
{
  v6 = objc_opt_new();
  v6[1] = a3;
  v6[2] = a4;

  return v6;
}

+ (id)positionWithTextContentManager:(id)a3 location:(id)a4 affinity:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 documentRange];
  v11 = [v10 location];
  v12 = [v9 offsetFromLocation:v11 toLocation:v8];

  v13 = [a1 positionWithOffset:v12 affinity:a5];
  v14 = v13[3];
  v13[3] = v8;

  return v13;
}

- (int64_t)compare:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UITextKitTextViewEditingSupport.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"pos"}];
  }

  v6 = [(_UITextKitTextPosition *)self offset];
  if (v6 <= [v5 offset])
  {
    v8 = [(_UITextKitTextPosition *)self offset];
    if (v8 >= [v5 offset])
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