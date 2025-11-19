@interface NSExpression(VideosUICore)
+ (id)vui_keyPathBitTestExpressionWithKeyPath:()VideosUICore value:;
- (BOOL)vui_isKeyPathBitTestExpression;
@end

@implementation NSExpression(VideosUICore)

+ (id)vui_keyPathBitTestExpressionWithKeyPath:()VideosUICore value:
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = vui_keyPathBitTestExpressionWithKeyPath_value____onceToken;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    +[NSExpression(VideosUICore) vui_keyPathBitTestExpressionWithKeyPath:value:];
  }

  v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v7];

  v9 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v6];

  v10 = MEMORY[0x277CCA9C0];
  v11 = __keyPathBitTestExpressionBlock;
  v15[0] = v8;
  v15[1] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v13 = [v10 expressionForBlock:v11 arguments:v12];

  return v13;
}

- (BOOL)vui_isKeyPathBitTestExpression
{
  if ([a1 expressionType] != 19)
  {
    return 0;
  }

  v2 = [a1 expressionBlock];
  v3 = v2 == __keyPathBitTestExpressionBlock;

  return v3;
}

@end