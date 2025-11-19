@interface RBSDurationAttribute
+ (id)attributeWithDuration:(double)a3 warningDuration:(double)a4 startPolicy:(unint64_t)a5 endPolicy:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (RBSDurationAttribute)initWithRBSXPCCoder:(id)a3;
- (id)_initWithInvalidationDuration:(unint64_t)a3 warningDuration:(double)a4 startPolicy:(double)a5 endPolicy:;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)a3;
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

+ (id)attributeWithDuration:(double)a3 warningDuration:(double)a4 startPolicy:(unint64_t)a5 endPolicy:(unint64_t)a6
{
  v6 = [[RBSDurationAttribute alloc] _initWithInvalidationDuration:a5 warningDuration:a6 startPolicy:a3 endPolicy:a4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSDurationAttribute;
  v5 = [(RBSAttribute *)&v7 isEqual:v4]&& self->_startPolicy == *(v4 + 3) && self->_endPolicy == *(v4 + 4) && vabdd_f64(self->_invalidationDuration, *(v4 + 1)) < 0.00000011920929 && vabdd_f64(self->_warningDuration, *(v4 + 2)) < 0.00000011920929;

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RBSDurationAttribute;
  v4 = a3;
  [(RBSAttribute *)&v5 encodeWithRBSXPCCoder:v4];
  [(RBSDurationAttribute *)self invalidationDuration:v5.receiver];
  [v4 encodeDouble:@"invalidationDuration" forKey:?];
  [(RBSDurationAttribute *)self warningDuration];
  [v4 encodeDouble:@"warningDuration" forKey:?];
  [v4 encodeInt64:-[RBSDurationAttribute startPolicy](self forKey:{"startPolicy"), @"startPolicy"}];
  [v4 encodeInt64:-[RBSDurationAttribute endPolicy](self forKey:{"endPolicy"), @"endPolicy"}];
}

- (RBSDurationAttribute)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSDurationAttribute;
  v5 = [(RBSAttribute *)&v7 initWithRBSXPCCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"invalidationDuration"];
    [(RBSDurationAttribute *)v5 setInvalidationDuration:?];
    [v4 decodeDoubleForKey:@"warningDuration"];
    [(RBSDurationAttribute *)v5 setWarningDuration:?];
    -[RBSDurationAttribute setStartPolicy:](v5, "setStartPolicy:", [v4 decodeInt64ForKey:@"startPolicy"]);
    -[RBSDurationAttribute setEndPolicy:](v5, "setEndPolicy:", [v4 decodeInt64ForKey:@"endPolicy"]);
  }

  return v5;
}

- (id)_initWithInvalidationDuration:(unint64_t)a3 warningDuration:(double)a4 startPolicy:(double)a5 endPolicy:
{
  if (result)
  {
    v9 = result;
    if (a4 < 0.0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_2();
      [v12 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if (a5 < 0.0 || a5 >= a4)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_2();
      [v18 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if ((a2 - 104) <= 0xFFFFFFFFFFFFFF98)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_2();
      [v14 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    if (a3 >= 3)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_2();
      [v16 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
    }

    v19.receiver = v9;
    v19.super_class = RBSDurationAttribute;
    result = objc_msgSendSuper2(&v19, sel__init);
    if (result)
    {
      *(result + 1) = a4;
      *(result + 2) = a5;
      *(result + 3) = a2;
      *(result + 4) = a3;
    }
  }

  return result;
}

@end