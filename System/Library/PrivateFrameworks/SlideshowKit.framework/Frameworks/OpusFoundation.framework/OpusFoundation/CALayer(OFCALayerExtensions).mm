@interface CALayer(OFCALayerExtensions)
- (uint64_t)alignOnPixels;
- (uint64_t)animateMoveTo:()OFCALayerExtensions;
- (uint64_t)animateOpacityTo:()OFCALayerExtensions;
- (uint64_t)animateResizeTo:()OFCALayerExtensions;
- (uint64_t)animateTransformTo:()OFCALayerExtensions;
- (uint64_t)containsLayer:()OFCALayerExtensions;
- (uint64_t)removeFromSuperlayerInstantly;
- (void)sublayerNamed:()OFCALayerExtensions;
@end

@implementation CALayer(OFCALayerExtensions)

- (uint64_t)alignOnPixels
{
  [a1 bounds];
  v20 = CGRectIntegral(v19);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  [a1 setBounds:?];
  [a1 position];
  v7 = v6;
  *&v8 = v8;
  v9 = floorf(*&v8);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v10 = CGRectGetWidth(v21);
  if (v10 >= 0)
  {
    v11 = v10 & 1;
  }

  else
  {
    v11 = -(v10 & 1);
  }

  v12 = (v9 + (v11 * 0.5));
  v13 = v7;
  v14 = floorf(v13);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v15 = CGRectGetHeight(v22);
  if (v15 >= 0)
  {
    v16 = v15 & 1;
  }

  else
  {
    v16 = -(v15 & 1);
  }

  return [a1 setPosition:{v12, (v14 + (v16 * 0.5))}];
}

- (void)sublayerNamed:()OFCALayerExtensions
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a1 sublayers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "name")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (uint64_t)containsLayer:()OFCALayerExtensions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a1 sublayers];
  result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (v9 == a3 || ([v9 containsLayer:a3] & 1) != 0)
        {
          return 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      result = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (uint64_t)removeFromSuperlayerInstantly
{
  [MEMORY[0x277CD9FF0] begin];
  v2 = MEMORY[0x277CD9FF0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v2 setValue:v3 forKey:*MEMORY[0x277CDA918]];
  [a1 removeFromSuperlayer];
  v4 = MEMORY[0x277CD9FF0];

  return [v4 commit];
}

- (uint64_t)animateResizeTo:()OFCALayerExtensions
{
  [a1 frame];
  v7 = a2 / v6;
  [a1 frame];
  CATransform3DMakeScale(&v10, v7, a3 / v8, 1.0);
  return [a1 animateTransformTo:&v10];
}

- (uint64_t)animateMoveTo:()OFCALayerExtensions
{
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  [v6 setFromValue:{objc_msgSend(a1, "valueForKey:", @"position"}];
  [v6 setToValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", a2, a3)}];
  [a1 setPosition:{a2, a3}];

  return [a1 addAnimation:v6 forKey:@"position"];
}

- (uint64_t)animateTransformTo:()OFCALayerExtensions
{
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
  [v5 setFromValue:{objc_msgSend(a1, "valueForKey:", @"transform"}];
  v6 = a3[5];
  v19 = a3[4];
  v20 = v6;
  v7 = a3[7];
  v21 = a3[6];
  v22 = v7;
  v8 = a3[1];
  v15 = *a3;
  v16 = v8;
  v9 = a3[3];
  v17 = a3[2];
  v18 = v9;
  [v5 setToValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCATransform3D:", &v15)}];
  v10 = a3[5];
  v19 = a3[4];
  v20 = v10;
  v11 = a3[7];
  v21 = a3[6];
  v22 = v11;
  v12 = a3[1];
  v15 = *a3;
  v16 = v12;
  v13 = a3[3];
  v17 = a3[2];
  v18 = v13;
  [a1 setTransform:&v15];
  return [a1 addAnimation:v5 forKey:@"transform"];
}

- (uint64_t)animateOpacityTo:()OFCALayerExtensions
{
  v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v4 setFromValue:{objc_msgSend(a1, "valueForKey:", @"opacity"}];
  *&v5 = a2;
  [v4 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v5)}];
  *&v6 = a2;
  [a1 setOpacity:v6];

  return [a1 addAnimation:v4 forKey:@"opacity"];
}

@end