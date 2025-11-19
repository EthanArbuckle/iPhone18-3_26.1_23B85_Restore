@interface NSExpression
@end

@implementation NSExpression

void __76__NSExpression_VideosUICore__vui_keyPathBitTestExpressionWithKeyPath_value___block_invoke()
{
  v0 = __keyPathBitTestExpressionBlock;
  __keyPathBitTestExpressionBlock = &__block_literal_global_3;
}

id __76__NSExpression_VideosUICore__vui_keyPathBitTestExpressionWithKeyPath_value___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 objectAtIndex:0];
  v5 = [v3 objectAtIndex:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    v7 = [v4 unsignedIntegerValue];
    v8 = [v6 unsignedIntegerValue];

    v9 = v8 & v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];

  return v10;
}

@end