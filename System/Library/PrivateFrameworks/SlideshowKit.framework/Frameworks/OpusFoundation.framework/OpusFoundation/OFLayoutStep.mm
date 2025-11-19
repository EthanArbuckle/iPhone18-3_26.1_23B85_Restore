@interface OFLayoutStep
+ (BOOL)_parseCGPoint:(CGPoint *)a3 withScanner:(id)a4;
+ (id)_stepFrom1DString:(id)a3 targetView:(id)a4 anchorView:(id)a5;
+ (id)_stepsFrom2DString:(id)a3 targetView:(id)a4 anchorView:(id)a5;
+ (id)stepForTarget:(id)a3 attribute:(unint64_t)a4 sizeMultiplier:(double)a5 relatedBy:(int64_t)a6 toAnchorView:(id)a7 attribute:(unint64_t)a8 sizeMultiplier:(double)a9 multiplier:(double)a10 constant:(double)a11;
+ (id)stepsFromString:(id)a3 targetView:(id)a4 anchorView:(id)a5;
+ (unint64_t)layoutAttributeFromScanner:(id)a3;
- (OFLayoutStep)init;
- (void)run;
@end

@implementation OFLayoutStep

- (OFLayoutStep)init
{
  v3.receiver = self;
  v3.super_class = OFLayoutStep;
  result = [(OFLayoutStep *)&v3 init];
  if (result)
  {
    result->_multiplier = 1.0;
  }

  return result;
}

- (void)run
{
  anchorView = self->_anchorView;
  v4 = 0.0;
  v5 = 0.0;
  if (anchorView)
  {
    anchorAttribute = self->_anchorAttribute;
    anchorSizeMultiplier = self->_anchorSizeMultiplier;
    p_x = &anchorView->_layoutInfo->var0.origin.x;
    if (p_x)
    {
      v9 = *p_x;
      v10 = p_x[1];
      v5 = p_x[2];
      v11 = p_x[3];
    }

    else
    {
      [-[OFViewProxy superview](anchorView "superview")];
    }

    if (anchorAttribute > 2)
    {
      if (anchorAttribute != 3)
      {
        v5 = v11;
        if (anchorAttribute != 4)
        {
LABEL_11:
          v5 = 0.0;
        }
      }
    }

    else
    {
      if (anchorAttribute != 1)
      {
        if (anchorAttribute == 2)
        {
          v5 = v10 + anchorSizeMultiplier * v11;
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      v5 = v9 + anchorSizeMultiplier * v5;
    }
  }

LABEL_13:
  v12 = self->_constant + v5 * self->_multiplier;
  targetView = self->_targetView;
  if (!targetView)
  {
    goto LABEL_25;
  }

  targetAttribute = self->_targetAttribute;
  targetSizeMultiplier = self->_targetSizeMultiplier;
  v16 = &targetView->_layoutInfo->var0.origin.x;
  if (v16)
  {
    v17 = *v16;
    v18 = v16[1];
    v4 = v16[2];
    v19 = v16[3];
  }

  else
  {
    [-[OFViewProxy superview](targetView "superview")];
    v4 = v20;
  }

  if (targetAttribute > 2)
  {
    if (targetAttribute != 3)
    {
      v4 = v19;
      if (targetAttribute != 4)
      {
LABEL_23:
        v4 = 0.0;
      }
    }
  }

  else
  {
    if (targetAttribute != 1)
    {
      if (targetAttribute == 2)
      {
        v4 = v18 + targetSizeMultiplier * v19;
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v4 = v17 + targetSizeMultiplier * v4;
  }

LABEL_25:
  v21 = v4 - v12 > 0.0;
  if (v4 - v12 < 0.0)
  {
    v21 = -1;
  }

  if (!v21)
  {
    v22 = self->_targetView;
    goto LABEL_32;
  }

  v22 = self->_targetView;
  if (v21 == self->_relation)
  {
LABEL_32:
    if (v22->_layoutInfo)
    {
      return;
    }

    self->_targetView->_layoutInfo = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    v30 = self->_targetView;
    layoutInfo = v30->_layoutInfo;
    [-[OFViewProxy superview](v30 "superview")];
    v26 = v32;
    v28 = v33;
    v29 = v34;
    layoutInfo->var0.origin.x = v35;
    goto LABEL_47;
  }

  v23 = self->_targetAttribute;
  v24 = self->_targetSizeMultiplier;
  v25 = &v22->_layoutInfo->var0.origin.x;
  if (v25)
  {
    v27 = *v25;
    v26 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
  }

  else
  {
    [-[OFViewProxy superview](self->_targetView "superview")];
    v27 = v36;
    v26 = v37;
    v28 = v38;
    v29 = v39;
  }

  if (v23 > 2)
  {
    if (v23 == 3)
    {
      v27 = v27 + (v28 - v12) * v24;
      v28 = v12;
    }

    else
    {
      if (v23 != 4)
      {
        return;
      }

      v26 = v26 + (v29 - v12) * v24;
      v29 = v12;
    }
  }

  else if (v23 == 1)
  {
    v27 = v12 - v24 * v28;
  }

  else
  {
    if (v23 != 2)
    {
      return;
    }

    v26 = v12 - v24 * v29;
  }

  layoutInfo = v22->_layoutInfo;
  if (!layoutInfo)
  {
    v22->_layoutInfo = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    layoutInfo = v22->_layoutInfo;
  }

  layoutInfo->var0.origin.x = v27;
LABEL_47:
  layoutInfo->var0.origin.y = v26;
  layoutInfo->var0.size.width = v28;
  layoutInfo->var0.size.height = v29;
}

+ (id)stepForTarget:(id)a3 attribute:(unint64_t)a4 sizeMultiplier:(double)a5 relatedBy:(int64_t)a6 toAnchorView:(id)a7 attribute:(unint64_t)a8 sizeMultiplier:(double)a9 multiplier:(double)a10 constant:(double)a11
{
  if (a3)
  {
    result = objc_alloc_init(objc_opt_class());
    *(result + 1) = a3;
    *(result + 2) = a4;
    *(result + 3) = a5;
    *(result + 4) = a6;
    *(result + 5) = a7;
    *(result + 6) = a8;
    *(result + 7) = a9;
    *(result + 8) = a10;
    *(result + 9) = a11;
  }

  else
  {
    NSLog(&cfstr_STargetviewMus.isa, a2, 0, a4, a6, a7, a8, a5, a9, a10, a11, "+[OFLayoutStep stepForTarget:attribute:sizeMultiplier:relatedBy:toAnchorView:attribute:sizeMultiplier:multiplier:constant:]");
    return 0;
  }

  return result;
}

+ (id)stepsFromString:(id)a3 targetView:(id)a4 anchorView:(id)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v9 = [MEMORY[0x277CCAC80] scannerWithString:?];
    v10 = [MEMORY[0x277CBEB18] array];
    v12 = 0;
    if ([v9 scanString:@"t.size" intoString:&v12] & 1) != 0 || (objc_msgSend(v9, "scanString:intoString:", @"t.location", &v12) & 1) != 0 || (objc_msgSend(v9, "scanString:intoString:", @"t.x", &v12) & 1) != 0 || (objc_msgSend(v9, "scanString:intoString:", @"t.y", &v12) & 1) != 0 || (objc_msgSend(v9, "scanString:intoString:", @"t.width", &v12) & 1) != 0 || (objc_msgSend(v9, "scanString:intoString:", @"t.height", &v12))
    {
      if (([v12 isEqualToString:@"t.size"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"t.location"))
      {
        return [a1 _stepsFrom2DString:a3 targetView:a4 anchorView:a5];
      }

      else
      {
        result = [a1 _stepFrom1DString:a3 targetView:a4 anchorView:a5];
        if (result)
        {
          v13[0] = result;
          return [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
        }
      }
    }

    else
    {
      NSLog(&cfstr_SLayoutStringM.isa, "+[OFLayoutStep stepsFromString:targetView:anchorView:]");
      return [v10 copy];
    }
  }

  else
  {
    NSLog(&cfstr_STargetviewCan.isa, a2, a3, 0, a5, "+[OFLayoutStep stepsFromString:targetView:anchorView:]");
    return 0;
  }

  return result;
}

+ (id)_stepFrom1DString:(id)a3 targetView:(id)a4 anchorView:(id)a5
{
  v9 = objc_alloc_init(objc_opt_class());
  v9[1] = a4;
  v9[5] = a5;
  v10 = [MEMORY[0x277CCAC80] scannerWithString:a3];
  [v10 scanString:@"t." intoString:0];
  v9[2] = [a1 layoutAttributeFromScanner:v10];
  if ([v10 scanString:@"(" intoString:0)]
  {
    if (([v10 scanDouble:v9 + 3] & 1) == 0)
    {
      goto LABEL_18;
    }

    if (([v10 scanString:@"" intoString:?], 0) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v11 = [v10 scanString:@"=" intoString:0];
  v12 = 0;
  if ((v11 & 1) == 0)
  {
    if ([v10 scanString:@"<=" intoString:0])
    {
      v12 = -1;
    }

    else
    {
      if (([v10 scanString:@">=" intoString:0] & 1) == 0)
      {
        NSLog(&cfstr_RelationMustBe.isa);
        return 0;
      }

      v12 = 1;
    }
  }

  v9[4] = v12;
  if ([v10 scanString:@"a." intoString:0])
  {
    v9[6] = [a1 layoutAttributeFromScanner:v10];
    if (![v10 scanString:@"(" intoString:0)]
    {
LABEL_13:
      if ([v10 scanString:@"*" intoString:0] && (objc_msgSend(v10, "scanDouble:", v9 + 8) & 1) == 0)
      {
        NSLog(&cfstr_MissingNumberA_0.isa);
        return 0;
      }

      goto LABEL_15;
    }

    if ([v10 scanDouble:v9 + 7])
    {
      if ([v10 scanString:@"" intoString:?], 0))
      {
        goto LABEL_13;
      }

LABEL_21:
      NSLog(&cfstr_MissingAfterTA.isa);
      return 0;
    }

LABEL_18:
    NSLog(&cfstr_MissingNumberA.isa);
    return 0;
  }

LABEL_15:
  v13 = [v10 scanString:@"-" intoString:0];
  v14 = [v10 scanString:@"+" intoString:0];
  if (([v10 scanDouble:v9 + 9] & 1) == 0)
  {
    if (((v14 | v13) & 1) == 0)
    {
      return v9;
    }

    NSLog(&cfstr_MissingNumberA_1.isa);
    return 0;
  }

  if (v13)
  {
    *(v9 + 9) = -*(v9 + 9);
  }

  return v9;
}

+ (id)_stepsFrom2DString:(id)a3 targetView:(id)a4 anchorView:(id)a5
{
  v30[2] = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(objc_opt_class());
  v9[1] = a4;
  v9[5] = a5;
  v10 = objc_alloc_init(objc_opt_class());
  v10[1] = a4;
  v10[5] = a5;
  v11 = [MEMORY[0x277CCAC80] scannerWithString:a3];
  [v11 scanString:@"t." intoString:0];
  if ([v11 scanString:@"size" intoString:0])
  {
    v12 = 4;
    v13 = 3;
  }

  else
  {
    v14 = [v11 scanString:@"location" intoString:0];
    result = 0;
    if (!v14)
    {
      return result;
    }

    v12 = 2;
    v13 = 1;
  }

  v9[2] = v13;
  v10[2] = v12;
  v28 = 0;
  v29 = 0;
  if ([a1 _parseCGPoint:&v28 withScanner:v11])
  {
    v16 = v29;
    v9[3] = v28;
    v10[3] = v16;
  }

  if (([v11 scanString:@"=" intoString:0] & 1) == 0)
  {
    NSLog(&cfstr_Expected.isa);
    return 0;
  }

  if ([v11 scanString:@"a." intoString:0])
  {
    if ([v11 scanString:@"size" intoString:0])
    {
      v17 = 4;
      v18 = 3;
    }

    else
    {
      v19 = [v11 scanString:@"location" intoString:0];
      result = 0;
      if (!v19)
      {
        return result;
      }

      v17 = 2;
      v18 = 1;
    }

    v9[6] = v18;
    v10[6] = v17;
    v26 = 0;
    v27 = 0;
    if ([a1 _parseCGPoint:&v26 withScanner:v11])
    {
      v20 = v29;
      v9[7] = v28;
      v10[7] = v20;
    }

    if ([v11 scanString:@"*" intoString:0])
    {
      v24 = 0;
      v25 = 0;
      if ([a1 _parseCGPoint:&v24 withScanner:v11])
      {
        v21 = v25;
        v9[8] = v24;
        v10[8] = v21;
      }
    }
  }

  v22 = [v11 scanString:@"+" intoString:0];
  v26 = 0;
  v27 = 0;
  if (![a1 _parseCGPoint:&v26 withScanner:v11])
  {
    if (!v22)
    {
      goto LABEL_24;
    }

    NSLog(&cfstr_MissingXYAfter.isa);
    return 0;
  }

  v23 = v27;
  v9[8] = v26;
  v10[8] = v23;
LABEL_24:
  v30[0] = v9;
  v30[1] = v10;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
}

+ (unint64_t)layoutAttributeFromScanner:(id)a3
{
  if ([a3 scanString:@"x" intoString:0])
  {
    return 1;
  }

  if ([a3 scanString:@"y" intoString:0])
  {
    return 2;
  }

  if ([a3 scanString:@"width" intoString:0])
  {
    return 3;
  }

  if ([a3 scanString:@"height" intoString:0])
  {
    return 4;
  }

  return 0;
}

+ (BOOL)_parseCGPoint:(CGPoint *)a3 withScanner:(id)a4
{
  v6 = objc_msgSend(a4, "scanString:intoString:", @"("), 0;
  if (v6)
  {
    if ([a4 scanDouble:a3])
    {
      if ([a4 scanString:@" intoString:{", 0}])
      {
        if ([a4 scanDouble:&a3->y])
        {
          if ([a4 scanString:@"" intoString:?], 0))
          {
            LOBYTE(v6) = 1;
            return v6;
          }

          NSLog(&cfstr_MissingVectorS_0.isa);
        }

        else
        {
          NSLog(&cfstr_CouldNotReadYV.isa);
        }
      }

      else
      {
        NSLog(&cfstr_MissingVectorS.isa);
      }
    }

    else
    {
      NSLog(&cfstr_CouldNotReadXV.isa);
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

@end