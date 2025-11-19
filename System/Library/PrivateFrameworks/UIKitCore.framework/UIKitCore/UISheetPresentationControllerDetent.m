@interface UISheetPresentationControllerDetent
+ (UISheetPresentationControllerDetent)customDetentWithIdentifier:(UISheetPresentationControllerDetentIdentifier)identifier resolver:(void *)resolver;
+ (UISheetPresentationControllerDetent)largeDetent;
+ (UISheetPresentationControllerDetent)mediumDetent;
+ (id)_detentWithContainerViewBlock:(id)a3;
+ (id)_detentWithIdentifier:(id)a3 constant:(double)a4;
+ (id)_detentWithIdentifier:(id)a3 containerViewBlock:(id)a4;
+ (id)_detentWithResolutionContextBlock:(id)a3;
+ (id)_fullDetent;
- (BOOL)isEqual:(id)a3;
- (CGFloat)resolvedValueInContext:(id)context;
- (NSString)description;
- (UISheetPresentationControllerDetent)initWithBSXPCCoder:(id)a3;
- (UISheetPresentationControllerDetent)initWithCoder:(id)a3;
- (UISheetPresentationControllerDetent)initWithType:(int64_t)a3 identifier:(id)a4 internalBlock:(id)a5 constant:(double)a6;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISheetPresentationControllerDetent

+ (UISheetPresentationControllerDetent)largeDetent
{
  v2 = [[a1 alloc] initWithType:1 identifier:@"com.apple.UIKit.large" internalBlock:&__block_literal_global_17_8 constant:0.0];

  return v2;
}

+ (UISheetPresentationControllerDetent)mediumDetent
{
  v2 = [[a1 alloc] initWithType:2 identifier:@"com.apple.UIKit.medium" internalBlock:&__block_literal_global_19_3 constant:0.0];

  return v2;
}

+ (id)_fullDetent
{
  v2 = [[a1 alloc] initWithType:3 identifier:@"com.apple.UIKit.full" internalBlock:&__block_literal_global_22_3 constant:0.0];

  return v2;
}

+ (UISheetPresentationControllerDetent)customDetentWithIdentifier:(UISheetPresentationControllerDetentIdentifier)identifier resolver:(void *)resolver
{
  v6 = resolver;
  v7 = identifier;
  v8 = [a1 alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__UISheetPresentationControllerDetent_customDetentWithIdentifier_resolver___block_invoke;
  v12[3] = &unk_1E7124C38;
  v13 = v6;
  v9 = v6;
  v10 = [v8 initWithType:0 identifier:v7 internalBlock:v12 constant:0.0];

  return v10;
}

+ (id)_detentWithIdentifier:(id)a3 constant:(double)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = _UISheetDetentInternalBlockForType(4, a4);
  v9 = [v7 initWithType:4 identifier:v6 internalBlock:v8 constant:a4];

  return v9;
}

+ (id)_detentWithResolutionContextBlock:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [a1 _detentWithIdentifier:v7 resolutionContextBlock:v5];

  v8[8] = 1;

  return v8;
}

+ (id)_detentWithIdentifier:(id)a3 containerViewBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__UISheetPresentationControllerDetent__detentWithIdentifier_containerViewBlock___block_invoke;
  v12[3] = &unk_1E7124C38;
  v13 = v6;
  v9 = v6;
  v10 = [v8 initWithType:0 identifier:v7 internalBlock:v12 constant:0.0];

  return v10;
}

double __80__UISheetPresentationControllerDetent__detentWithIdentifier_containerViewBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _containerView];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

+ (id)_detentWithContainerViewBlock:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [a1 _detentWithIdentifier:v7 containerViewBlock:v5];

  v8[8] = 1;

  return v8;
}

- (UISheetPresentationControllerDetent)initWithType:(int64_t)a3 identifier:(id)a4 internalBlock:(id)a5 constant:(double)a6
{
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = UISheetPresentationControllerDetent;
  v12 = [(UISheetPresentationControllerDetent *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v12->__type = a3;
    if (v10)
    {
      v14 = [v10 copy];
      identifier = v13->_identifier;
      v13->_identifier = v14;
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      identifier = [MEMORY[0x1E696AFB0] UUID];
      v17 = [identifier UUIDString];
      v18 = [v16 stringWithFormat:@"com.apple.UIKit.dynamic.%@", v17];
      v19 = v13->_identifier;
      v13->_identifier = v18;
    }

    v20 = _Block_copy(v11);
    internalBlock = v13->__internalBlock;
    v13->__internalBlock = v20;

    v13->__constant = a6;
  }

  return v13;
}

- (NSString)description
{
  v3 = [UIDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [(UISheetPresentationControllerDetent *)self _type]- 1;
  if (v4 > 3)
  {
    v5 = @"custom";
  }

  else
  {
    v5 = off_1E7124C78[v4];
  }

  v6 = [v3 appendName:@"_type" object:v5];
  v7 = NSStringFromSelector(sel__identifier);
  v8 = [v3 appendKey:v7];

  if ([(UISheetPresentationControllerDetent *)self _type]== 4)
  {
    v9 = NSStringFromSelector(sel__constant);
    v10 = [v3 appendKey:v9];
  }

  v11 = [v3 string];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UISheetPresentationControllerDetent *)self _type];
    if (v6 == [v5 _type])
    {
      v7 = [(UISheetPresentationControllerDetent *)self identifier];
      v8 = [v5 identifier];
      v9 = v7;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {

        goto LABEL_10;
      }

      if (v9 && v10)
      {
        v12 = [v9 isEqual:v10];

        if ((v12 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_10:
        if ([(UISheetPresentationControllerDetent *)self _type]== 4)
        {
          [(UISheetPresentationControllerDetent *)self _constant];
          v15 = v14;
          [v5 _constant];
          v13 = v15 == v16;
        }

        else
        {
          v18 = [(UISheetPresentationControllerDetent *)self _internalBlock];
          v19 = [v5 _internalBlock];
          v13 = v18 == v19;
        }

        goto LABEL_14;
      }
    }

LABEL_13:
    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (CGFloat)resolvedValueInContext:(id)context
{
  v4 = context;
  v5 = [(UISheetPresentationControllerDetent *)self _internalBlock];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (UISheetPresentationControllerDetent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"_type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  [v4 decodeDoubleForKey:@"_constant"];
  v8 = v7;

  v9 = _UISheetDetentInternalBlockForType(v5, v8);
  if (v9)
  {
    v16.receiver = self;
    v16.super_class = UISheetPresentationControllerDetent;
    v10 = [(UISheetPresentationControllerDetent *)&v16 init];
    v11 = v10;
    if (v10)
    {
      v10->__type = v5;
      objc_storeStrong(&v10->_identifier, v6);
      v12 = _Block_copy(v9);
      internalBlock = v11->__internalBlock;
      v11->__internalBlock = v12;

      v11->__constant = v8;
    }

    self = v11;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (UISheetPresentationControllerDetent)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"_type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  [v4 decodeDoubleForKey:@"_constant"];
  v8 = v7;

  v9 = _UISheetDetentInternalBlockForType(v5, v8);
  if (v9)
  {
    v16.receiver = self;
    v16.super_class = UISheetPresentationControllerDetent;
    v10 = [(UISheetPresentationControllerDetent *)&v16 init];
    v11 = v10;
    if (v10)
    {
      v10->__type = v5;
      objc_storeStrong(&v10->_identifier, v6);
      v12 = _Block_copy(v9);
      internalBlock = v11->__internalBlock;
      v11->__internalBlock = v12;

      v11->__constant = v8;
    }

    self = v11;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v5 = [(UISheetPresentationControllerDetent *)self _type];
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISheetPresentationController.m" lineNumber:3846 description:{@"Custom detent %@ is not encodable. Custom detents are not supported for remote view controllers yet. rdar://65243005 (Custom sheet detents for remote view controllers)", self}];
  }

  [v8 encodeInteger:v5 forKey:@"_type"];
  v6 = [(UISheetPresentationControllerDetent *)self identifier];
  [v8 encodeObject:v6 forKey:@"_identifier"];

  [(UISheetPresentationControllerDetent *)self _constant];
  [v8 encodeDouble:@"_constant" forKey:?];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8 = a3;
  v5 = [(UISheetPresentationControllerDetent *)self _type];
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISheetPresentationController.m" lineNumber:3855 description:{@"Custom detent %@ is not encodable. Custom detents are not supported for remote view controllers yet. rdar://65243005 (Custom sheet detents for remote view controllers)", self}];
  }

  [v8 encodeInt64:v5 forKey:@"_type"];
  v6 = [(UISheetPresentationControllerDetent *)self identifier];
  [v8 encodeObject:v6 forKey:@"_identifier"];

  [(UISheetPresentationControllerDetent *)self _constant];
  [v8 encodeDouble:@"_constant" forKey:?];
}

@end