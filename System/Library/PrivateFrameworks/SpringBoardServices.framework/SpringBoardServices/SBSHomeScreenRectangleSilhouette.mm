@interface SBSHomeScreenRectangleSilhouette
- (BOOL)isEqual:(id)equal;
- (CGRect)frame;
- (NSString)description;
- (SBSHomeScreenRectangleSilhouette)initWithBSXPCCoder:(id)coder;
- (SBSHomeScreenRectangleSilhouette)initWithCoder:(id)coder;
- (SBSHomeScreenRectangleSilhouette)initWithFrame:(CGRect)frame cornerRadius:(double)radius;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSHomeScreenRectangleSilhouette

- (SBSHomeScreenRectangleSilhouette)initWithFrame:(CGRect)frame cornerRadius:(double)radius
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = SBSHomeScreenRectangleSilhouette;
  result = [(SBSHomeScreenRectangleSilhouette *)&v10 init];
  if (result)
  {
    result->_frame.origin.y = y;
    result->_frame.size.width = width;
    result->_frame.size.height = height;
    result->_cornerRadius = radius;
    result->_frame.origin.x = x;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      [(SBSHomeScreenRectangleSilhouette *)self frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [(SBSHomeScreenRectangleSilhouette *)v7 frame];
      v26.origin.x = v16;
      v26.origin.y = v17;
      v26.size.width = v18;
      v26.size.height = v19;
      v25.origin.x = v9;
      v25.origin.y = v11;
      v25.size.width = v13;
      v25.size.height = v15;
      if (CGRectEqualToRect(v25, v26))
      {
        [(SBSHomeScreenRectangleSilhouette *)self cornerRadius];
        v21 = v20;
        [(SBSHomeScreenRectangleSilhouette *)v7 cornerRadius];
        v23 = v21 == v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  [(SBSHomeScreenRectangleSilhouette *)self frame];
  v4 = v3;
  v6 = v5;
  [(SBSHomeScreenRectangleSilhouette *)self cornerRadius];
  return v6 ^ v7 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __47__SBSHomeScreenRectangleSilhouette_description__block_invoke;
  v10 = &unk_1E735F7F0;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696B098];
  coderCopy = coder;
  [(SBSHomeScreenRectangleSilhouette *)self frame];
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  v10 = [v4 valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [coderCopy encodeObject:v10 forKey:@"frame"];

  [(SBSHomeScreenRectangleSilhouette *)self cornerRadius];
  [coderCopy encodeDouble:@"cornerRadius" forKey:?];
}

- (SBSHomeScreenRectangleSilhouette)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"frame"];
  [v6 bs_CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [coderCopy decodeDoubleForKey:@"cornerRadius"];
  v16 = v15;

  return [(SBSHomeScreenRectangleSilhouette *)self initWithFrame:v8 cornerRadius:v10, v12, v14, v16];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v4 = MEMORY[0x1E696B098];
  coderCopy = coder;
  [(SBSHomeScreenRectangleSilhouette *)self frame];
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  v10 = [v4 valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [coderCopy encodeObject:v10 forKey:@"frame"];

  [(SBSHomeScreenRectangleSilhouette *)self cornerRadius];
  [coderCopy encodeDouble:@"cornerRadius" forKey:?];
}

- (SBSHomeScreenRectangleSilhouette)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeCGRectForKey:@"frame"];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [coderCopy decodeDoubleForKey:@"cornerRadius"];
  v14 = v13;

  return [(SBSHomeScreenRectangleSilhouette *)self initWithFrame:v6 cornerRadius:v8, v10, v12, v14];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  [(SBSHomeScreenRectangleSilhouette *)self frame];
  v4 = [formatterCopy appendRect:@"frame" withName:?];
  [(SBSHomeScreenRectangleSilhouette *)self cornerRadius];
  v5 = [formatterCopy appendFloat:@"cornerRadius" withName:?];
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end