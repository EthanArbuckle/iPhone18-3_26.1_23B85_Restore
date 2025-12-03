@interface UIAlertVisualStyleUpdatableConstraints
- (UIAlertVisualStyleUpdatableConstraints)init;
- (void)addConstraint:(id)constraint forKey:(id)key;
@end

@implementation UIAlertVisualStyleUpdatableConstraints

- (UIAlertVisualStyleUpdatableConstraints)init
{
  v6.receiver = self;
  v6.super_class = UIAlertVisualStyleUpdatableConstraints;
  v2 = [(UIAlertVisualStyleUpdatableConstraints *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    constraintsByKey = v2->_constraintsByKey;
    v2->_constraintsByKey = dictionary;
  }

  return v2;
}

- (void)addConstraint:(id)constraint forKey:(id)key
{
  if (constraint)
  {
    if (key)
    {
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }
  }
}

@end