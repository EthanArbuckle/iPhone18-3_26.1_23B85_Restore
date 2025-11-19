@interface UIAlertVisualStyleUpdatableConstraints
- (UIAlertVisualStyleUpdatableConstraints)init;
- (void)addConstraint:(id)a3 forKey:(id)a4;
@end

@implementation UIAlertVisualStyleUpdatableConstraints

- (UIAlertVisualStyleUpdatableConstraints)init
{
  v6.receiver = self;
  v6.super_class = UIAlertVisualStyleUpdatableConstraints;
  v2 = [(UIAlertVisualStyleUpdatableConstraints *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    constraintsByKey = v2->_constraintsByKey;
    v2->_constraintsByKey = v3;
  }

  return v2;
}

- (void)addConstraint:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }
  }
}

@end