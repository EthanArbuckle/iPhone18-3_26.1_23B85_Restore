@interface UIAccessibilityLocationDescriptor
- (BOOL)isEqual:(id)a3;
- (CGPoint)point;
- (NSString)name;
- (UIAccessibilityLocationDescriptor)initWithAttributedName:(NSAttributedString *)attributedName point:(CGPoint)point inView:(UIView *)view;
- (UIAccessibilityLocationDescriptor)initWithName:(NSString *)name point:(CGPoint)point inView:(UIView *)view;
- (UIView)view;
- (unint64_t)hash;
@end

@implementation UIAccessibilityLocationDescriptor

- (UIAccessibilityLocationDescriptor)initWithName:(NSString *)name point:(CGPoint)point inView:(UIView *)view
{
  y = point.y;
  x = point.x;
  v9 = MEMORY[0x1E696AAB0];
  v10 = view;
  v11 = name;
  v12 = [[v9 alloc] initWithString:v11];

  v13 = [(UIAccessibilityLocationDescriptor *)self initWithAttributedName:v12 point:v10 inView:x, y];
  return v13;
}

- (UIAccessibilityLocationDescriptor)initWithAttributedName:(NSAttributedString *)attributedName point:(CGPoint)point inView:(UIView *)view
{
  y = point.y;
  x = point.x;
  v9 = attributedName;
  v10 = view;
  v16.receiver = self;
  v16.super_class = UIAccessibilityLocationDescriptor;
  v11 = [(UIAccessibilityLocationDescriptor *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_point.x = x;
    v11->_point.y = y;
    objc_storeWeak(&v11->_view, v10);
    v13 = [(NSAttributedString *)v9 copy];
    v14 = v12->_attributedName;
    v12->_attributedName = v13;
  }

  return v12;
}

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NSString)name
{
  v2 = [(UIAccessibilityLocationDescriptor *)self attributedName];
  v3 = [v2 string];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UIAccessibilityLocationDescriptor *)self attributedName];
    v7 = [v5 attributedName];
    v8 = [v6 isEqual:v7];

    if (v8 && (-[UIAccessibilityLocationDescriptor view](self, "view"), v9 = objc_claimAutoreleasedReturnValue(), [v5 view], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v9 == v10))
    {
      [(UIAccessibilityLocationDescriptor *)self point];
      v14 = v13;
      v16 = v15;
      [v5 point];
      v11 = v16 == v18 && v14 == v17;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(UIAccessibilityLocationDescriptor *)self view];
  v4 = [v3 hash];
  v5 = MEMORY[0x1E696B098];
  [(UIAccessibilityLocationDescriptor *)self point];
  v6 = [v5 valueWithCGPoint:?];
  v7 = [v6 hash];
  v8 = [(UIAccessibilityLocationDescriptor *)self attributedName];
  v9 = v4 ^ [v8 hash];

  return v7 ^ v9;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end