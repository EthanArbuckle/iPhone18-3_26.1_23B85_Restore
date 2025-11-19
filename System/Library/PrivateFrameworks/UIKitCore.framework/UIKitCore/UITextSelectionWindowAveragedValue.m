@interface UITextSelectionWindowAveragedValue
- (UITextSelectionWindowAveragedValue)initWithDepth:(unint64_t)a3;
- (double)windowAveragedValue;
- (void)addValue:(double)a3;
@end

@implementation UITextSelectionWindowAveragedValue

- (UITextSelectionWindowAveragedValue)initWithDepth:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = UITextSelectionWindowAveragedValue;
  v4 = [(UITextSelectionWindowAveragedValue *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_depth = a3;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4->_depth];
    values = v5->_values;
    v5->_values = v6;
  }

  return v5;
}

- (void)addValue:(double)a3
{
  values = self->_values;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(NSMutableArray *)values insertObject:v5 atIndex:0];

  if ([(NSMutableArray *)self->_values count]> self->_depth)
  {
    v6 = self->_values;

    [(NSMutableArray *)v6 removeLastObject];
  }
}

- (double)windowAveragedValue
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_values;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        v7 = v7 + v9;
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  if ([(NSMutableArray *)self->_values count])
  {
    return v7 / [(NSMutableArray *)self->_values count];
  }

  return v7;
}

@end