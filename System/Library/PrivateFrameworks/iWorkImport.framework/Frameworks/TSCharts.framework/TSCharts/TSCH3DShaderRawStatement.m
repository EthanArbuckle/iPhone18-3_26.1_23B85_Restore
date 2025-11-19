@interface TSCH3DShaderRawStatement
+ (id)statementWithString:(id)a3 linkageType:(TSCH3DShaderType)a4;
- (TSCH3DShaderRawStatement)initWithString:(id)a3 linkageType:(TSCH3DShaderType)a4;
@end

@implementation TSCH3DShaderRawStatement

+ (id)statementWithString:(id)a3 linkageType:(TSCH3DShaderType)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v12 = objc_msgSend_initWithString_linkageType_(v7, v8, v9, v10, v11, v6, a4._value);

  return v12;
}

- (TSCH3DShaderRawStatement)initWithString:(id)a3 linkageType:(TSCH3DShaderType)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSCH3DShaderRawStatement;
  v8 = [(TSCH3DShaderRawStatement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_string, a3);
    v9->_linkageType = a4;
  }

  return v9;
}

@end