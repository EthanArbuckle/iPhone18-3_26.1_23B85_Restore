@interface UISheetPresentationControllerDetent
+ (UISheetPresentationControllerDetent)customDetentWithIdentifier:(UISheetPresentationControllerDetentIdentifier)identifier resolver:(void *)resolver;
+ (UISheetPresentationControllerDetent)largeDetent;
+ (UISheetPresentationControllerDetent)mediumDetent;
+ (id)_detentWithContainerViewBlock:(id)block;
+ (id)_detentWithIdentifier:(id)identifier constant:(double)constant;
+ (id)_detentWithIdentifier:(id)identifier containerViewBlock:(id)block;
+ (id)_detentWithResolutionContextBlock:(id)block;
+ (id)_fullDetent;
- (BOOL)isEqual:(id)equal;
- (CGFloat)resolvedValueInContext:(id)context;
- (NSString)description;
- (UISheetPresentationControllerDetent)initWithBSXPCCoder:(id)coder;
- (UISheetPresentationControllerDetent)initWithCoder:(id)coder;
- (UISheetPresentationControllerDetent)initWithType:(int64_t)type identifier:(id)identifier internalBlock:(id)block constant:(double)constant;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISheetPresentationControllerDetent

+ (UISheetPresentationControllerDetent)largeDetent
{
  v2 = [[self alloc] initWithType:1 identifier:@"com.apple.UIKit.large" internalBlock:&__block_literal_global_17_8 constant:0.0];

  return v2;
}

+ (UISheetPresentationControllerDetent)mediumDetent
{
  v2 = [[self alloc] initWithType:2 identifier:@"com.apple.UIKit.medium" internalBlock:&__block_literal_global_19_3 constant:0.0];

  return v2;
}

+ (id)_fullDetent
{
  v2 = [[self alloc] initWithType:3 identifier:@"com.apple.UIKit.full" internalBlock:&__block_literal_global_22_3 constant:0.0];

  return v2;
}

+ (UISheetPresentationControllerDetent)customDetentWithIdentifier:(UISheetPresentationControllerDetentIdentifier)identifier resolver:(void *)resolver
{
  v6 = resolver;
  v7 = identifier;
  v8 = [self alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__UISheetPresentationControllerDetent_customDetentWithIdentifier_resolver___block_invoke;
  v12[3] = &unk_1E7124C38;
  v13 = v6;
  v9 = v6;
  v10 = [v8 initWithType:0 identifier:v7 internalBlock:v12 constant:0.0];

  return v10;
}

+ (id)_detentWithIdentifier:(id)identifier constant:(double)constant
{
  identifierCopy = identifier;
  v7 = [self alloc];
  v8 = _UISheetDetentInternalBlockForType(4, constant);
  v9 = [v7 initWithType:4 identifier:identifierCopy internalBlock:v8 constant:constant];

  return v9;
}

+ (id)_detentWithResolutionContextBlock:(id)block
{
  v4 = MEMORY[0x1E696AFB0];
  blockCopy = block;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [self _detentWithIdentifier:uUIDString resolutionContextBlock:blockCopy];

  v8[8] = 1;

  return v8;
}

+ (id)_detentWithIdentifier:(id)identifier containerViewBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  v8 = [self alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__UISheetPresentationControllerDetent__detentWithIdentifier_containerViewBlock___block_invoke;
  v12[3] = &unk_1E7124C38;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = [v8 initWithType:0 identifier:identifierCopy internalBlock:v12 constant:0.0];

  return v10;
}

double __80__UISheetPresentationControllerDetent__detentWithIdentifier_containerViewBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _containerView];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

+ (id)_detentWithContainerViewBlock:(id)block
{
  v4 = MEMORY[0x1E696AFB0];
  blockCopy = block;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [self _detentWithIdentifier:uUIDString containerViewBlock:blockCopy];

  v8[8] = 1;

  return v8;
}

- (UISheetPresentationControllerDetent)initWithType:(int64_t)type identifier:(id)identifier internalBlock:(id)block constant:(double)constant
{
  identifierCopy = identifier;
  blockCopy = block;
  v23.receiver = self;
  v23.super_class = UISheetPresentationControllerDetent;
  v12 = [(UISheetPresentationControllerDetent *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v12->__type = type;
    if (identifierCopy)
    {
      v14 = [identifierCopy copy];
      identifier = v13->_identifier;
      v13->_identifier = v14;
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      identifier = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [identifier UUIDString];
      v18 = [v16 stringWithFormat:@"com.apple.UIKit.dynamic.%@", uUIDString];
      v19 = v13->_identifier;
      v13->_identifier = v18;
    }

    v20 = _Block_copy(blockCopy);
    internalBlock = v13->__internalBlock;
    v13->__internalBlock = v20;

    v13->__constant = constant;
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

  string = [v3 string];

  return string;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _type = [(UISheetPresentationControllerDetent *)self _type];
    if (_type == [v5 _type])
    {
      identifier = [(UISheetPresentationControllerDetent *)self identifier];
      identifier2 = [v5 identifier];
      v9 = identifier;
      v10 = identifier2;
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
          _internalBlock = [(UISheetPresentationControllerDetent *)self _internalBlock];
          _internalBlock2 = [v5 _internalBlock];
          v13 = _internalBlock == _internalBlock2;
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
  _internalBlock = [(UISheetPresentationControllerDetent *)self _internalBlock];
  v6 = (_internalBlock)[2](_internalBlock, v4);

  return v6;
}

- (UISheetPresentationControllerDetent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"_type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  [coderCopy decodeDoubleForKey:@"_constant"];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UISheetPresentationControllerDetent)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"_type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  [coderCopy decodeDoubleForKey:@"_constant"];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _type = [(UISheetPresentationControllerDetent *)self _type];
  if (!_type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISheetPresentationController.m" lineNumber:3846 description:{@"Custom detent %@ is not encodable. Custom detents are not supported for remote view controllers yet. rdar://65243005 (Custom sheet detents for remote view controllers)", self}];
  }

  [coderCopy encodeInteger:_type forKey:@"_type"];
  identifier = [(UISheetPresentationControllerDetent *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"_identifier"];

  [(UISheetPresentationControllerDetent *)self _constant];
  [coderCopy encodeDouble:@"_constant" forKey:?];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  _type = [(UISheetPresentationControllerDetent *)self _type];
  if (!_type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISheetPresentationController.m" lineNumber:3855 description:{@"Custom detent %@ is not encodable. Custom detents are not supported for remote view controllers yet. rdar://65243005 (Custom sheet detents for remote view controllers)", self}];
  }

  [coderCopy encodeInt64:_type forKey:@"_type"];
  identifier = [(UISheetPresentationControllerDetent *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"_identifier"];

  [(UISheetPresentationControllerDetent *)self _constant];
  [coderCopy encodeDouble:@"_constant" forKey:?];
}

@end