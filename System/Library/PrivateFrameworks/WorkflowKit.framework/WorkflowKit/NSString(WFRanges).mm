@interface NSString(WFRanges)
- (id)allRangesOfString:()WFRanges options:;
@end

@implementation NSString(WFRanges)

- (id)allRangesOfString:()WFRanges options:
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [a1 rangeOfString:v6 options:a4 range:{0, objc_msgSend(a1, "length")}];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      v12 = [MEMORY[0x1E696B098] valueWithRange:{v10, v11}];
      [v7 addObject:v12];

      v10 = [a1 rangeOfString:v6 options:a4 range:{v10 + v11, objc_msgSend(a1, "length") - (v10 + v11)}];
      v11 = v13;
    }

    while (v10 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

@end