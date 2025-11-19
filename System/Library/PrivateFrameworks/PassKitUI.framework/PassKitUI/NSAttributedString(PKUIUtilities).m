@interface NSAttributedString(PKUIUtilities)
+ (id)pkui_attriutedStringWithString:()PKUIUtilities font:paragraphStyle:;
- (double)pkui_sizeThatFits:()PKUIUtilities withNumberOfLines:forceWordWrap:;
@end

@implementation NSAttributedString(PKUIUtilities)

+ (id)pkui_attriutedStringWithString:()PKUIUtilities font:paragraphStyle:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  }

  if (v9)
  {
    [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB688]];
  }

  if (!v7)
  {
    v7 = &stru_1F3BD7330;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v11];

  return v12;
}

- (double)pkui_sizeThatFits:()PKUIUtilities withNumberOfLines:forceWordWrap:
{
  if (a6)
  {
    v10 = [a1 mutableCopy];
    v11 = [a1 length];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __87__NSAttributedString_PKUIUtilities__pkui_sizeThatFits_withNumberOfLines_forceWordWrap___block_invoke;
    v25[3] = &unk_1E8014BF8;
    v12 = v10;
    v26 = v12;
    [a1 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v25}];
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v13 setMaximumNumberOfLines:a5];
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = a1;
  }

  [v14 boundingRectWithSize:33 options:v13 context:{a2, a3}];
  v16.n128_u64[0] = v15;
  v18 = v17;
  PKFloatCeilToPixel(v16, v19);
  v21 = fmin(v20, a2);
  v22.n128_u64[0] = v18;
  PKFloatCeilToPixel(v22, v23);

  return v21;
}

@end