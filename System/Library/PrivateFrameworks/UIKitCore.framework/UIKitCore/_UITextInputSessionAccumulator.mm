@interface _UITextInputSessionAccumulator
+ (id)accumulatorWithName:(id)name type:(int64_t)type depthRange:(_NSRange)range block:(id)block;
- (BOOL)_increaseWithActions:(id)actions;
- (_NSRange)depthRange;
- (id)description;
- (void)_increaseWithCount:(unint64_t)count source:(int64_t)source;
- (void)enumerateAnalytics:(id)analytics;
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

+ (id)accumulatorWithName:(id)name type:(int64_t)type depthRange:(_NSRange)range block:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  nameCopy = name;
  v12 = objc_alloc_init(objc_opt_class());
  v13 = [nameCopy copy];

  v14 = v12[10];
  v12[10] = v13;

  v12[11] = type;
  v12[13] = location;
  v12[14] = length;
  v15 = [blockCopy copy];

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
  name = [(_UITextInputSessionAccumulator *)self name];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, name];

  return v6;
}

- (BOOL)_increaseWithActions:(id)actions
{
  block = self->_block;
  v5 = block[2];
  actionsCopy = actions;
  v7 = v5(block, actionsCopy);
  firstObject = [actionsCopy firstObject];

  -[_UITextInputSessionAccumulator _increaseWithCount:source:](self, "_increaseWithCount:source:", v7, [firstObject source]);
  return v7 != 0;
}

- (void)_increaseWithCount:(unint64_t)count source:(int64_t)source
{
  if (self->_type)
  {
    values = &self->_values[source];
  }

  else
  {
    values = self->_values;
  }

  *values += count;
}

- (void)enumerateAnalytics:(id)analytics
{
  v15[2] = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  if (self->_type || !self->_values[0])
  {
    for (i = 1; i != 10; ++i)
    {
      if (*(&self->super.isa + i))
      {
        v6 = [UITextInputSessionActionAnalytics stringValueForSource:i - 1];
        v12[0] = @"SessionAction";
        name = [(_UITextInputSessionAccumulator *)self name];
        v12[1] = @"InputSource";
        v13[0] = name;
        v13[1] = v6;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

        analyticsCopy[2](analyticsCopy, v8, *(&self->super.isa + i));
      }
    }
  }

  else
  {
    v9 = [UITextInputSessionActionAnalytics stringValueForSource:0];
    v14[0] = @"SessionAction";
    name2 = [(_UITextInputSessionAccumulator *)self name];
    v14[1] = @"InputSource";
    v15[0] = name2;
    v15[1] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

    analyticsCopy[2](analyticsCopy, v11, self->_values[0]);
  }
}

@end