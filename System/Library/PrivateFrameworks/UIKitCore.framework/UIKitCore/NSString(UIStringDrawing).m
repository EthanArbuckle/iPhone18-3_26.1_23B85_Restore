@interface NSString(UIStringDrawing)
- (uint64_t)drawAtPoint:()UIStringDrawing forWidth:withFont:fontSize:lineBreakMode:baselineAdjustment:;
- (uint64_t)drawAtPoint:()UIStringDrawing forWidth:withFont:lineBreakMode:;
- (uint64_t)drawAtPoint:()UIStringDrawing forWidth:withFont:minFontSize:actualFontSize:lineBreakMode:baselineAdjustment:;
- (uint64_t)drawAtPoint:()UIStringDrawing withFont:;
- (uint64_t)sizeWithFont:()UIStringDrawing forWidth:lineBreakMode:;
- (uint64_t)sizeWithFont:()UIStringDrawing minFontSize:actualFontSize:forWidth:lineBreakMode:;
- (void)sizeWithFont:()UIStringDrawing;
@end

@implementation NSString(UIStringDrawing)

- (void)sizeWithFont:()UIStringDrawing
{
  if (a3)
  {
    if (*MEMORY[0x1E695F060] >= 0.0)
    {
      return [objc_msgSend(result stringByReplacingOccurrencesOfString:@"\n" withString:{&stru_1EFB14550), "_legacy_sizeWithFont:forWidth:lineBreakMode:", a3, 0, 3.40282347e38}];
    }
  }

  return result;
}

- (uint64_t)sizeWithFont:()UIStringDrawing forWidth:lineBreakMode:
{
  v8 = [a1 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EFB14550];

  return [v8 _legacy_sizeWithFont:a4 forWidth:a5 lineBreakMode:a2];
}

- (uint64_t)drawAtPoint:()UIStringDrawing withFont:
{
  v8 = [a1 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EFB14550];

  return [v8 _legacy_drawAtPoint:a5 withFont:{a2, a3}];
}

- (uint64_t)drawAtPoint:()UIStringDrawing forWidth:withFont:lineBreakMode:
{
  v12 = [a1 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EFB14550];

  return [v12 _legacy_drawAtPoint:a6 forWidth:a7 withFont:a2 lineBreakMode:{a3, a4}];
}

- (uint64_t)sizeWithFont:()UIStringDrawing minFontSize:actualFontSize:forWidth:lineBreakMode:
{
  v12 = [a1 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EFB14550];

  return [v12 _legacy_sizeWithFont:a5 minFontSize:a6 actualFontSize:a7 forWidth:a2 lineBreakMode:a3];
}

- (uint64_t)drawAtPoint:()UIStringDrawing forWidth:withFont:fontSize:lineBreakMode:baselineAdjustment:
{
  v16 = [a1 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EFB14550];

  return [v16 _legacy_drawAtPoint:a7 forWidth:a8 withFont:a9 fontSize:a2 lineBreakMode:a3 baselineAdjustment:{a4, a5}];
}

- (uint64_t)drawAtPoint:()UIStringDrawing forWidth:withFont:minFontSize:actualFontSize:lineBreakMode:baselineAdjustment:
{
  v18 = [a1 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1EFB14550];

  return [v18 _legacy_drawAtPoint:a7 forWidth:a8 withFont:a9 minFontSize:a10 actualFontSize:a2 lineBreakMode:a3 baselineAdjustment:{a4, a5}];
}

@end