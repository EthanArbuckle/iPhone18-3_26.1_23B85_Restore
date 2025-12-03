@interface RBSDurationAttribute
+ (id)attributeWithDuration:(double)duration warningDuration:(double)warningDuration startPolicy:(unint64_t)policy endPolicy:(unint64_t)endPolicy;
- (BOOL)isEqual:(id)equal;
- (RBSDurationAttribute)initWithRBSXPCCoder:(id)coder;
- (id)_initWithInvalidationDuration:(unint64_t)duration warningDuration:(double)warningDuration startPolicy:(double)policy endPolicy:;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSDurationAttribute

- (unint64_t)hash
{
  v3 = self->_endPolicy ^ self->_startPolicy;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_invalidationDuration];
  v5 = v3 ^ [v4 hash];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_warningDuration];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  invalidationDuration = self->_invalidationDuration;
  warningDuration = self->_warningDuration;
  v7 = NSStringFromRBSDurationStartPolicy(self->_startPolicy);
  v8 = NSStringFromRBSDurationEndPolicy(self->_endPolicy);
  v9 = [v3 initWithFormat:@"<%@| invalidationDuration:%.2f warningDuration:%.2f startPolicy:%@ endPolicy:%@>", v4, *&invalidationDuration, *&warningDuration, v7, v8];

  return v9;
}

+ (id)attributeWithDuration:(double)duration warningDuration:(double)warningDuration startPolicy:(unint64_t)policy endPolicy:(unint64_t)endPolicy
{
  v6 = [[RBSDurationAttribute alloc] _initWithInvalidationDuration:policy warningDuration:endPolicy startPolicy:duration endPolicy:warningDuration];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = RBSDurationAttribute;
  v5 = [(RBSAttribute *)&v7 isEqual:equalCopy]&& self->_startPolicy == *(equalCopy + 3) && self->_endPolicy == *(equalCopy + 4) && vabdd_f64(self->_invalidationDuration, *(equalCopy + 1)) < 0.00000011920929 && vabdd_f64(self->_warningDuration, *(equalCopy + 2)) < 0.00000011920929;

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RBSDurationAttribute;
  coderCopy = coder;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:coderCopy];
  [(RBSDurationAttribute *)self invalidationDuration:v5.receiver];
  [coderCopy encodeDouble:@"invalidationDuration" forKey:?];
  [(RBSDurationAttribute *)self warningDuration];
  [coderCopy encodeDouble:@"warningDuration" forKey:?];
  [coderCopy encodeInt64:-[RBSDurationAttribute startPolicy](self forKey:{"startPolicy"), @"startPolicy"}];
  [coderCopy encodeInt64:-[RBSDurationAttribute endPolicy](self forKey:{"endPolicy"), @"endPolicy"}];
}

- (RBSDurationAttribute)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RBSDurationAttribute;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"invalidationDuration"];
    [(RBSDurationAttribute *)v5 setInvalidationDuration:?];
    [coderCopy decodeDoubleForKey:@"warningDuration"];
    [(RBSDurationAttribute *)v5 setWarningDuration:?];
    -[RBSDurationAttribute setStartPolicy:](v5, "setStartPolicy:", [coderCopy decodeInt64ForKey:@"startPolicy"]);
    -[RBSDurationAttribute setEndPolicy:](v5, "setEndPolicy:", [coderCopy decodeInt64ForKey:@"endPolicy"]);
  }

  return v5;
}

- (id)_initWithInvalidationDuration:(unint64_t)duration warningDuration:(double)warningDuration startPolicy:(double)policy endPolicy:
{
  if (result)
  {
    v9 = result;
    if (warningDuration < 0.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_2();
      [v12 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if (policy < 0.0 || policy >= warningDuration)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_2();
      [v18 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if ((a2 - 104) <= 0xFFFFFFFFFFFFFF98)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_2();
      [v14 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if (duration >= 3)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_2();
      [v16 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    v19.receiver = v9;
    v19.super_class = RBSDurationAttribute;
    result = objc_msgSendSuper2(&v19, sel__init);
    if (result)
    {
      *(result + 1) = warningDuration;
      *(result + 2) = policy;
      *(result + 3) = a2;
      *(result + 4) = duration;
    }
  }

  return result;
}

@end