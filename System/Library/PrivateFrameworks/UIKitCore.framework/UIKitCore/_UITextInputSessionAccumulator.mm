@interface _UITextInputSessionAccumulator
+ (id)accumulatorWithName:(id)a3 type:(int64_t)a4 depthRange:(_NSRange)a5 block:(id)a6;
- (BOOL)_increaseWithActions:(id)a3;
- (_NSRange)depthRange;
- (id)description;
- (void)_increaseWithCount:(unint64_t)a3 source:(int64_t)a4;
- (void)enumerateAnalytics:(id)a3;
- (void)reset;
@end

@implementation _UITextInputSessionAccumulator

- (void)reset
{
  self->_values[8] = 0;
  *&self->_values[6] = 0u;
  *&self->_values[4] = 0u;
  *&self->_values[2] = 0u;
  *self->_values = 0u;
}

- (_NSRange)depthRange
{
  length = self->_depthRange.length;
  location = self->_depthRange.location;
  result.length = length;
  result.location = location;
  return result;
}

+ (id)accumulatorWithName:(id)a3 type:(int64_t)a4 depthRange:(_NSRange)a5 block:(id)a6
{
  length = a5.length;
  location = a5.location;
  v10 = a6;
  v11 = a3;
  v12 = objc_alloc_init(objc_opt_class());
  v13 = [v11 copy];

  v14 = v12[10];
  v12[10] = v13;

  v12[11] = a4;
  v12[13] = location;
  v12[14] = length;
  v15 = [v10 copy];

  v16 = v12[12];
  v12[12] = v15;

  [v12 reset];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _UITextInputSessionAccumulator;
  v4 = [(_UITextInputSessionAccumulator *)&v8 description];
  v5 = [(_UITextInputSessionAccumulator *)self name];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (BOOL)_increaseWithActions:(id)a3
{
  block = self->_block;
  v5 = block[2];
  v6 = a3;
  v7 = v5(block, v6);
  v8 = [v6 firstObject];

  -[_UITextInputSessionAccumulator _increaseWithCount:source:](self, "_increaseWithCount:source:", v7, [v8 source]);
  return v7 != 0;
}

- (void)_increaseWithCount:(unint64_t)a3 source:(int64_t)a4
{
  if (self->_type)
  {
    values = &self->_values[a4];
  }

  else
  {
    values = self->_values;
  }

  *values += a3;
}

- (void)enumerateAnalytics:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_type || !self->_values[0])
  {
    for (i = 1; i != 10; ++i)
    {
      if (*(&self->super.isa + i))
      {
        v6 = [UITextInputSessionActionAnalytics stringValueForSource:i - 1];
        v12[0] = @"SessionAction";
        v7 = [(_UITextInputSessionAccumulator *)self name];
        v12[1] = @"InputSource";
        v13[0] = v7;
        v13[1] = v6;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

        v4[2](v4, v8, *(&self->super.isa + i));
      }
    }
  }

  else
  {
    v9 = [UITextInputSessionActionAnalytics stringValueForSource:0];
    v14[0] = @"SessionAction";
    v10 = [(_UITextInputSessionAccumulator *)self name];
    v14[1] = @"InputSource";
    v15[0] = v10;
    v15[1] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

    v4[2](v4, v11, self->_values[0]);
  }
}

@end