@interface CAMediaTimingFunction
@end

@implementation CAMediaTimingFunction

uint64_t __69__CAMediaTimingFunction_TSDCAAnimationAdditions__TSD_valueAtPercent___block_invoke()
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v0 = *MEMORY[0x277CDA7B0];
  v18[0] = *MEMORY[0x277CDA7A8];
  v18[1] = v0;
  v1 = *MEMORY[0x277CDA7C0];
  v18[2] = *MEMORY[0x277CDA7B8];
  v18[3] = v1;
  v18[4] = *MEMORY[0x277CDA7C8];
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
  result = [obj countByEnumeratingWithState:&v10 objects:v19 count:16];
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [MEMORY[0x277CD9EF8] functionWithName:*(*(&v10 + 1) + 8 * v6)];
        [v7 getControlPointAtIndex:0 values:v17];
        [v7 getControlPointAtIndex:1 values:v16];
        [v7 getControlPointAtIndex:2 values:v15];
        [v7 getControlPointAtIndex:3 values:v14];
        v8 = objc_opt_new();
        [v8 moveToPoint:{v17[0], v17[1]}];
        [v8 curveToPoint:v14[0] controlPoint1:v14[1] controlPoint2:{v16[0], v16[1], v15[0], v15[1]}];
        TSD_valueAtPercent__s_CAMediaTimingFunctionsCacheArray[v4] = v7;
        TSD_valueAtPercent__s_TSDBezierPathsCacheArray[v4++] = v8;
        ++v6;
      }

      while (v3 != v6);
      result = [obj countByEnumeratingWithState:&v10 objects:v19 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

@end