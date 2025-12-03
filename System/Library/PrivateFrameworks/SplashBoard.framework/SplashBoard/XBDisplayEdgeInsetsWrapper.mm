@interface XBDisplayEdgeInsetsWrapper
+ (id)makeWithEdgeInsets:(UIEdgeInsets)insets;
- (BOOL)hasZeroInsets;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UIEdgeInsets)edgeInsets;
- (XBDisplayEdgeInsetsWrapper)initWithCoder:(id)coder;
- (XBDisplayEdgeInsetsWrapper)initWithTop:(double)top left:(double)left bottom:(double)bottom right:(double)right;
- (XBDisplayEdgeInsetsWrapper)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation XBDisplayEdgeInsetsWrapper

- (XBDisplayEdgeInsetsWrapper)initWithTop:(double)top left:(double)left bottom:(double)bottom right:(double)right
{
  v11.receiver = self;
  v11.super_class = XBDisplayEdgeInsetsWrapper;
  result = [(XBDisplayEdgeInsetsWrapper *)&v11 init];
  if (result)
  {
    result->_topInset = top;
    result->_leftInset = left;
    result->_bottomInset = bottom;
    result->_rightInset = right;
  }

  return result;
}

+ (id)makeWithEdgeInsets:(UIEdgeInsets)insets
{
  v3 = [[self alloc] initWithTop:insets.top left:insets.left bottom:insets.bottom right:insets.right];

  return v3;
}

- (BOOL)hasZeroInsets
{
  [(XBDisplayEdgeInsetsWrapper *)self topInset];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [(XBDisplayEdgeInsetsWrapper *)self leftInset];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [(XBDisplayEdgeInsetsWrapper *)self bottomInset];
  if (!BSFloatIsZero())
  {
    return 0;
  }

  [(XBDisplayEdgeInsetsWrapper *)self rightInset];

  return BSFloatIsZero();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v7 = equalCopy;
    [v7 topInset];
    [(XBDisplayEdgeInsetsWrapper *)self topInset];
    if (BSFloatEqualToFloat() && ([v7 leftInset], -[XBDisplayEdgeInsetsWrapper leftInset](self, "leftInset"), BSFloatEqualToFloat()) && (objc_msgSend(v7, "bottomInset"), -[XBDisplayEdgeInsetsWrapper bottomInset](self, "bottomInset"), BSFloatEqualToFloat()))
    {
      [v7 rightInset];
      [(XBDisplayEdgeInsetsWrapper *)self rightInset];
      v6 = BSFloatEqualToFloat();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(XBDisplayEdgeInsetsWrapper *)self topInset];
  v4 = [v3 appendDouble:@"topInset" withName:1 decimalPrecision:?];
  [(XBDisplayEdgeInsetsWrapper *)self leftInset];
  v5 = [v3 appendDouble:@"leftInset" withName:1 decimalPrecision:?];
  [(XBDisplayEdgeInsetsWrapper *)self bottomInset];
  v6 = [v3 appendDouble:@"bottomInset" withName:1 decimalPrecision:?];
  [(XBDisplayEdgeInsetsWrapper *)self rightInset];
  v7 = [v3 appendDouble:@"rightInset" withName:1 decimalPrecision:?];
  build = [v3 build];

  return build;
}

- (UIEdgeInsets)edgeInsets
{
  [(XBDisplayEdgeInsetsWrapper *)self topInset];
  v4 = v3;
  [(XBDisplayEdgeInsetsWrapper *)self leftInset];
  v6 = v5;
  [(XBDisplayEdgeInsetsWrapper *)self bottomInset];
  v8 = v7;
  [(XBDisplayEdgeInsetsWrapper *)self rightInset];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.right = v10;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [XBDisplayEdgeInsetsWrapper allocWithZone:zone];
  topInset = self->_topInset;
  leftInset = self->_leftInset;
  bottomInset = self->_bottomInset;
  rightInset = self->_rightInset;

  return [(XBDisplayEdgeInsetsWrapper *)v4 initWithTop:topInset left:leftInset bottom:bottomInset right:rightInset];
}

- (XBDisplayEdgeInsetsWrapper)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = MEMORY[0x26D67BD20]();
  v6 = MEMORY[0x26D67BD20](dictionaryCopy, "leftInset");
  v7 = MEMORY[0x26D67BD20](dictionaryCopy, "bottomInset");
  v8 = MEMORY[0x26D67BD20](dictionaryCopy, "rightInset");

  return [(XBDisplayEdgeInsetsWrapper *)self initWithTop:v5 left:v6 bottom:v7 right:v8];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(XBDisplayEdgeInsetsWrapper *)self topInset];
  MEMORY[0x26D67BE60](dictionaryCopy, "topInset");
  [(XBDisplayEdgeInsetsWrapper *)self leftInset];
  MEMORY[0x26D67BE60](dictionaryCopy, "leftInset");
  [(XBDisplayEdgeInsetsWrapper *)self bottomInset];
  MEMORY[0x26D67BE60](dictionaryCopy, "bottomInset");
  [(XBDisplayEdgeInsetsWrapper *)self rightInset];
  MEMORY[0x26D67BE60](dictionaryCopy, "rightInset");
}

- (XBDisplayEdgeInsetsWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = XBDisplayEdgeInsetsWrapper;
  v5 = [(XBDisplayEdgeInsetsWrapper *)&v18 init];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [XBDisplayEdgeInsetsWrapper initWithCoder:];
    }

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"topInset"];
    [coderCopy decodeDoubleForKey:v6];
    v8 = v7;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"leftInset"];
    [coderCopy decodeDoubleForKey:v9];
    v11 = v10;
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bottomInset"];
    [coderCopy decodeDoubleForKey:v12];
    v14 = v13;
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"rightInset"];
    [coderCopy decodeDoubleForKey:v15];
    v5 = [(XBDisplayEdgeInsetsWrapper *)v5 initWithTop:v8 left:v11 bottom:v14 right:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [XBDisplayEdgeInsetsWrapper encodeWithCoder:];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"topInset"];
  [(XBDisplayEdgeInsetsWrapper *)self topInset];
  [coderCopy encodeDouble:v8 forKey:?];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"leftInset"];
  [(XBDisplayEdgeInsetsWrapper *)self leftInset];
  [coderCopy encodeDouble:v5 forKey:?];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bottomInset"];
  [(XBDisplayEdgeInsetsWrapper *)self bottomInset];
  [coderCopy encodeDouble:v6 forKey:?];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"rightInset"];
  [(XBDisplayEdgeInsetsWrapper *)self rightInset];
  [coderCopy encodeDouble:v7 forKey:?];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"[coder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[coder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

@end