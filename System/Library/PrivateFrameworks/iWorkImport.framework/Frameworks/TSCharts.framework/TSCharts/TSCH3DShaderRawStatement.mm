@interface TSCH3DShaderRawStatement
+ (id)statementWithString:(id)string linkageType:(TSCH3DShaderType)type;
- (TSCH3DShaderRawStatement)initWithString:(id)string linkageType:(TSCH3DShaderType)type;
@end

@implementation TSCH3DShaderRawStatement

+ (id)statementWithString:(id)string linkageType:(TSCH3DShaderType)type
{
  stringCopy = string;
  v7 = [self alloc];
  v12 = objc_msgSend_initWithString_linkageType_(v7, v8, v9, v10, v11, stringCopy, type._value);

  return v12;
}

- (TSCH3DShaderRawStatement)initWithString:(id)string linkageType:(TSCH3DShaderType)type
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = TSCH3DShaderRawStatement;
  v8 = [(TSCH3DShaderRawStatement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_string, string);
    v9->_linkageType = type;
  }

  return v9;
}

@end