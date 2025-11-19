@interface PVColorSpace
+ (id)ProResLogColorSpace;
+ (id)extendedDisplayP3ColorSpace;
+ (id)extendedLinearSRGBColorSpace;
+ (id)extendedSRGBColorSpace;
+ (id)p3HLGGammaColorSpace;
+ (id)p3PQGammaColorSpace;
+ (id)p3d65GammaColorSpace;
+ (id)preferredDisplayColorSpace;
+ (id)pvColorSpaceForCVPixelBuffer:(__CVBuffer *)a3;
+ (id)pvColorSpaceFromCGColorSpace:(CGColorSpace *)a3;
+ (id)rec2020GammaColorSpace;
+ (id)rec2020LinearColorSpace;
+ (id)rec2100HLGColorSpace;
+ (id)rec2100PQColorSpace;
+ (id)rec601_1_1_6_GammaColorSpace;
+ (id)rec601_EBU_3213_GammaColorSpace;
+ (id)rec601_SMPTE_C_GammaColorSpace;
+ (id)rec709GammaColorSpace;
+ (id)rec709LinearColorSpace;
+ (id)sRGBColorSpace;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCGColorSpace:(CGColorSpace *)a3;
- (BOOL)isHDRSpace;
- (BOOL)isWideGamutSpace;
- (CGColorSpace)cgColorSpace;
- (PVColorSpace)initWithType:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)name;
- (id)nclcTriplet;
@end

@implementation PVColorSpace

+ (id)preferredDisplayColorSpace
{
  if (+[PVDeviceCharacteristics hasExtendedColorDisplay])
  {
    [a1 p3d65GammaColorSpace];
  }

  else
  {
    [a1 sRGBColorSpace];
  }
  v3 = ;

  return v3;
}

+ (id)sRGBColorSpace
{
  v2 = [[a1 alloc] initWithType:0];

  return v2;
}

+ (id)rec601_1_1_6_GammaColorSpace
{
  v2 = [[a1 alloc] initWithType:1];

  return v2;
}

+ (id)rec601_SMPTE_C_GammaColorSpace
{
  v2 = [[a1 alloc] initWithType:2];

  return v2;
}

+ (id)rec601_EBU_3213_GammaColorSpace
{
  v2 = [[a1 alloc] initWithType:3];

  return v2;
}

+ (id)rec709GammaColorSpace
{
  v2 = [[a1 alloc] initWithType:4];

  return v2;
}

+ (id)rec709LinearColorSpace
{
  v2 = [[a1 alloc] initWithType:5];

  return v2;
}

+ (id)extendedSRGBColorSpace
{
  v2 = [[a1 alloc] initWithType:6];

  return v2;
}

+ (id)extendedLinearSRGBColorSpace
{
  v2 = [[a1 alloc] initWithType:7];

  return v2;
}

+ (id)extendedDisplayP3ColorSpace
{
  v2 = [[a1 alloc] initWithType:8];

  return v2;
}

+ (id)p3d65GammaColorSpace
{
  v2 = [[a1 alloc] initWithType:9];

  return v2;
}

+ (id)p3HLGGammaColorSpace
{
  v2 = [[a1 alloc] initWithType:10];

  return v2;
}

+ (id)p3PQGammaColorSpace
{
  v2 = [[a1 alloc] initWithType:11];

  return v2;
}

+ (id)rec2100HLGColorSpace
{
  v2 = [[a1 alloc] initWithType:12];

  return v2;
}

+ (id)rec2100PQColorSpace
{
  v2 = [[a1 alloc] initWithType:13];

  return v2;
}

+ (id)rec2020LinearColorSpace
{
  v2 = [[a1 alloc] initWithType:14];

  return v2;
}

+ (id)rec2020GammaColorSpace
{
  v2 = [[a1 alloc] initWithType:15];

  return v2;
}

+ (id)ProResLogColorSpace
{
  v2 = [[a1 alloc] initWithType:16];

  return v2;
}

+ (id)pvColorSpaceFromCGColorSpace:(CGColorSpace *)a3
{
  if (!a3)
  {
    goto LABEL_32;
  }

  v4 = +[PVColorSpace sRGBColorSpace];
  v5 = [v4 isEqualToCGColorSpace:a3];

  if (v5)
  {
    v6 = +[PVColorSpace sRGBColorSpace];
    goto LABEL_33;
  }

  v7 = +[PVColorSpace rec601_1_1_6_GammaColorSpace];
  v8 = [v7 isEqualToCGColorSpace:a3];

  if (v8)
  {
    v6 = +[PVColorSpace rec601_1_1_6_GammaColorSpace];
    goto LABEL_33;
  }

  v9 = +[PVColorSpace rec601_SMPTE_C_GammaColorSpace];
  v10 = [v9 isEqualToCGColorSpace:a3];

  if (v10)
  {
    v6 = +[PVColorSpace rec601_SMPTE_C_GammaColorSpace];
    goto LABEL_33;
  }

  v11 = +[PVColorSpace rec601_EBU_3213_GammaColorSpace];
  v12 = [v11 isEqualToCGColorSpace:a3];

  if (v12)
  {
    v6 = +[PVColorSpace rec601_EBU_3213_GammaColorSpace];
    goto LABEL_33;
  }

  v13 = +[PVColorSpace rec709GammaColorSpace];
  v14 = [v13 isEqualToCGColorSpace:a3];

  if (v14)
  {
    v6 = +[PVColorSpace rec709GammaColorSpace];
    goto LABEL_33;
  }

  v15 = +[PVColorSpace extendedSRGBColorSpace];
  v16 = [v15 isEqualToCGColorSpace:a3];

  if (v16)
  {
    v6 = +[PVColorSpace extendedSRGBColorSpace];
    goto LABEL_33;
  }

  v17 = +[PVColorSpace extendedLinearSRGBColorSpace];
  v18 = [v17 isEqualToCGColorSpace:a3];

  if (v18)
  {
    v6 = +[PVColorSpace extendedLinearSRGBColorSpace];
    goto LABEL_33;
  }

  v19 = +[PVColorSpace extendedDisplayP3ColorSpace];
  v20 = [v19 isEqualToCGColorSpace:a3];

  if (v20)
  {
    v6 = +[PVColorSpace extendedDisplayP3ColorSpace];
    goto LABEL_33;
  }

  v21 = +[PVColorSpace p3d65GammaColorSpace];
  v22 = [v21 isEqualToCGColorSpace:a3];

  if (v22)
  {
    v6 = +[PVColorSpace p3d65GammaColorSpace];
    goto LABEL_33;
  }

  v23 = +[PVColorSpace p3HLGGammaColorSpace];
  v24 = [v23 isEqualToCGColorSpace:a3];

  if (v24)
  {
    v6 = +[PVColorSpace p3HLGGammaColorSpace];
    goto LABEL_33;
  }

  v25 = +[PVColorSpace p3PQGammaColorSpace];
  v26 = [v25 isEqualToCGColorSpace:a3];

  if (v26)
  {
    v6 = +[PVColorSpace p3PQGammaColorSpace];
    goto LABEL_33;
  }

  v27 = +[PVColorSpace rec2020LinearColorSpace];
  v28 = [v27 isEqualToCGColorSpace:a3];

  if (v28)
  {
    v6 = +[PVColorSpace rec2020LinearColorSpace];
    goto LABEL_33;
  }

  v29 = +[PVColorSpace rec2020GammaColorSpace];
  v30 = [v29 isEqualToCGColorSpace:a3];

  if (v30)
  {
    v6 = +[PVColorSpace rec2020GammaColorSpace];
    goto LABEL_33;
  }

  v31 = +[PVColorSpace rec2100HLGColorSpace];
  v32 = [v31 isEqualToCGColorSpace:a3];

  if (v32)
  {
    v6 = +[PVColorSpace rec2100HLGColorSpace];
    goto LABEL_33;
  }

  v33 = +[PVColorSpace rec2100PQColorSpace];
  v34 = [v33 isEqualToCGColorSpace:a3];

  if (v34)
  {
    v6 = +[PVColorSpace rec2100PQColorSpace];
  }

  else
  {
LABEL_32:
    v6 = 0;
  }

LABEL_33:

  return v6;
}

+ (id)pvColorSpaceForCVPixelBuffer:(__CVBuffer *)a3
{
  v3 = a3;
  if (!a3)
  {
    goto LABEL_13;
  }

  v4 = CVBufferCopyAttachment(a3, *MEMORY[0x277CC4C00], 0);
  if (!v4)
  {
    v3 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  v6 = CVBufferCopyAttachment(v3, *MEMORY[0x277CC4D10], 0);
  v7 = CVBufferCopyAttachment(v3, *MEMORY[0x277CC4CC0], 0);
  v8 = CVBufferCopyAttachment(v3, @"LogTransferFunction", 0);
  if (!v8)
  {
LABEL_17:
    if (CFEqual(v5, *MEMORY[0x277CC4C30]))
    {
      v12 = +[PVColorSpace p3d65GammaColorSpace];
      if (v7)
      {
        if (CFEqual(v7, *MEMORY[0x277CC4CD0]))
        {
          v13 = +[PVColorSpace p3HLGGammaColorSpace];
LABEL_28:
          v3 = v13;

          goto LABEL_8;
        }

        if (CFEqual(v7, *MEMORY[0x277CC4CF0]))
        {
          v13 = +[PVColorSpace p3PQGammaColorSpace];
          goto LABEL_28;
        }
      }

      v3 = v12;
      goto LABEL_8;
    }

    if (!CFEqual(v5, *MEMORY[0x277CC4C20]))
    {
      if (CFEqual(v5, *MEMORY[0x277CC4C18]))
      {
        if (v7)
        {
          if (CFEqual(v7, *MEMORY[0x277CC4CD0]))
          {
            v10 = +[PVColorSpace rec2100HLGColorSpace];
            goto LABEL_7;
          }

          if (CFEqual(v7, *MEMORY[0x277CC4CF0]))
          {
            v10 = +[PVColorSpace rec2100PQColorSpace];
            goto LABEL_7;
          }

          if (CFEqual(v7, *MEMORY[0x277CC4CE0]))
          {
            v10 = +[PVColorSpace rec2020LinearColorSpace];
            goto LABEL_7;
          }

          if (CFEqual(v7, *MEMORY[0x277CC4CD8]) || CFEqual(v7, *MEMORY[0x277CC4CC8]))
          {
            v10 = +[PVColorSpace rec2020GammaColorSpace];
            goto LABEL_7;
          }
        }
      }

      else if (CFEqual(v5, *MEMORY[0x277CC4C38]))
      {
        if (v7)
        {
          v3 = 0;
          if (!CFEqual(v7, *MEMORY[0x277CC4CD8]) || !v6)
          {
            goto LABEL_8;
          }

          if (CFEqual(v6, *MEMORY[0x277CC4D20]))
          {
            v10 = +[PVColorSpace rec601_SMPTE_C_GammaColorSpace];
            goto LABEL_7;
          }
        }
      }

      else
      {
        v3 = 0;
        if (!CFEqual(v5, *MEMORY[0x277CC4C10]))
        {
          goto LABEL_8;
        }

        if (!v7)
        {
          goto LABEL_8;
        }

        v3 = 0;
        if (!CFEqual(v7, *MEMORY[0x277CC4CD8]) || !v6)
        {
          goto LABEL_8;
        }

        if (CFEqual(v6, *MEMORY[0x277CC4D20]))
        {
          v10 = +[PVColorSpace rec601_EBU_3213_GammaColorSpace];
          goto LABEL_7;
        }
      }

      v3 = 0;
      goto LABEL_8;
    }

    if (v7 | v6)
    {
      if (v6 && CFEqual(v6, *MEMORY[0x277CC4D20]))
      {
        v10 = +[PVColorSpace rec601_1_1_6_GammaColorSpace];
        goto LABEL_7;
      }

      if (!v7)
      {
        goto LABEL_56;
      }

      if (!CFEqual(v7, *MEMORY[0x277CC4CD8]))
      {
        if (CFEqual(v7, *MEMORY[0x277CC4CE0]))
        {
          v10 = +[PVColorSpace rec709LinearColorSpace];
          goto LABEL_7;
        }

        if (CFEqual(v7, *MEMORY[0x277CC4D08]))
        {
          v10 = +[PVColorSpace sRGBColorSpace];
          goto LABEL_7;
        }

LABEL_56:
        NSLog(&cfstr_UnknownTransfe.isa, v7, v6);
      }
    }

    v10 = +[PVColorSpace rec709GammaColorSpace];
    goto LABEL_7;
  }

  v9 = v8;
  if (!CFEqual(v8, @"AppleLog") && !CFEqual(v9, @"com.apple.rec2020.apple-log"))
  {
    CFRelease(v9);
    goto LABEL_17;
  }

  CFRelease(v9);
  v10 = +[PVColorSpace ProResLogColorSpace];
LABEL_7:
  v3 = v10;
LABEL_8:
  CFRelease(v5);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

LABEL_13:

  return v3;
}

- (PVColorSpace)initWithType:(int)a3
{
  v5.receiver = self;
  v5.super_class = PVColorSpace;
  result = [(PVColorSpace *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[PVColorSpace allocWithZone:?]];
  if (result)
  {
    *(result + 2) = self->_type;
  }

  return result;
}

- (BOOL)isWideGamutSpace
{
  if ([(PVColorSpace *)self isExtendedSRGBColorSpace]|| [(PVColorSpace *)self isExtendedLinearSRGBColorSpace]|| [(PVColorSpace *)self isExtendedDisplayP3ColorSpace]|| [(PVColorSpace *)self isP3d65GammaColorSpace]|| [(PVColorSpace *)self isRec2020LinearColorSpace]|| [(PVColorSpace *)self isRec2020GammaColorSpace])
  {
    return 1;
  }

  return [(PVColorSpace *)self isHDRSpace];
}

- (BOOL)isHDRSpace
{
  if ([(PVColorSpace *)self isP3HLGGammaColorSpace]|| [(PVColorSpace *)self isP3PQGammaColorSpace]|| [(PVColorSpace *)self isRec2100HLGColorSpace]|| [(PVColorSpace *)self isRec2100PQColorSpace])
  {
    return 1;
  }

  return [(PVColorSpace *)self isProResLogColorSpace];
}

- (BOOL)isEqualToCGColorSpace:(CGColorSpace *)a3
{
  v4 = [(PVColorSpace *)self cgColorSpace];
  result = 0;
  if (a3)
  {
    if (v4)
    {
      return CFEqual(v4, a3) != 0;
    }
  }

  return result;
}

- (id)nclcTriplet
{
  {
    v16 = self;
    self = v16;
    if (v4)
    {
      v5 = *MEMORY[0x277CC4C20];
      v6 = *MEMORY[0x277CC4D08];
      v7 = *MEMORY[0x277CC4D28];
      [PVColorSpace nclcTriplet]::s_NCLCTripletsMap[0] = MakePVNCLCTriplet(*MEMORY[0x277CC4C20], 0, *MEMORY[0x277CC4D08], 13, *MEMORY[0x277CC4D28], 1);
      v8 = *MEMORY[0x277CC4CD8];
      v9 = *MEMORY[0x277CC4D20];
      qword_280C5C708 = MakePVNCLCTriplet(v5, 0, *MEMORY[0x277CC4CD8], 1, *MEMORY[0x277CC4D20], 2);
      qword_280C5C710 = MakePVNCLCTriplet(*MEMORY[0x277CC4C38], 2, v8, 1, v9, 2);
      qword_280C5C718 = MakePVNCLCTriplet(*MEMORY[0x277CC4C10], 1, v8, 1, v9, 2);
      qword_280C5C720 = MakePVNCLCTriplet(v5, 0, v8, 1, v7, 1);
      v10 = *MEMORY[0x277CC4CE0];
      qword_280C5C728 = MakePVNCLCTriplet(v5, 0, *MEMORY[0x277CC4CE0], 8, v7, 1);
      qword_280C5C730 = MakePVNCLCTriplet(v5, 0, v6, 13, v7, 1);
      qword_280C5C738 = MakePVNCLCTriplet(v5, 0, v10, 8, v7, 1);
      v11 = *MEMORY[0x277CC4C30];
      qword_280C5C740 = MakePVNCLCTriplet(*MEMORY[0x277CC4C30], 5, v6, 13, v7, 1);
      qword_280C5C748 = MakePVNCLCTriplet(v11, 5, v8, 1, v7, 1);
      v12 = *MEMORY[0x277CC4CD0];
      qword_280C5C750 = MakePVNCLCTriplet(v11, 5, *MEMORY[0x277CC4CD0], 18, v7, 1);
      v13 = *MEMORY[0x277CC4CF0];
      qword_280C5C758 = MakePVNCLCTriplet(v11, 5, *MEMORY[0x277CC4CF0], 16, v7, 1);
      v14 = *MEMORY[0x277CC4C18];
      v15 = *MEMORY[0x277CC4D18];
      qword_280C5C760 = MakePVNCLCTriplet(*MEMORY[0x277CC4C18], 3, v12, 18, *MEMORY[0x277CC4D18], 3);
      qword_280C5C768 = MakePVNCLCTriplet(v14, 3, v13, 16, v15, 3);
      qword_280C5C770 = MakePVNCLCTriplet(v14, 3, v10, 8, v15, 3);
      qword_280C5C778 = MakePVNCLCTriplet(v14, 3, v8, 1, v15, 3);
      qword_280C5C780 = MakePVNCLCTriplet(v14, 3, v8, 1, v15, 3);
      qword_280C5C788 = MakePVNCLCTriplet(0, 0, 0, 1, 0, 0);
      self = v16;
    }
  }

  v2 = [PVColorSpace nclcTriplet]::s_NCLCTripletsMap[self->_type];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if (v4)
  {
    v5 = self->_type == v4->_type;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)name
{
  type = self->_type;
  if (type > 0x10)
  {
    return @"unknown";
  }

  else
  {
    return off_279AA6388[type];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PVColorSpace *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (CGColorSpace)cgColorSpace
{
  type = self->_type;
  if (type > 8)
  {
    if (type > 11)
    {
      switch(type)
      {
        case 12:
          if ([PVColorSpace cgColorSpace]::onceToken_2100HLG != -1)
          {
            [PVColorSpace cgColorSpace];
          }

          return [PVColorSpace cgColorSpace]::s_2100HLGCS;
        case 13:
          if ([PVColorSpace cgColorSpace]::onceToken_2100PQ != -1)
          {
            [PVColorSpace cgColorSpace];
          }

          return [PVColorSpace cgColorSpace]::s_2100PQCS;
        case 14:
          if ([PVColorSpace cgColorSpace]::onceToken_2020Lin != -1)
          {
            [PVColorSpace cgColorSpace];
          }

          return [PVColorSpace cgColorSpace]::s_2020LinearCS;
        default:
LABEL_50:
          v4 = [PVColorSpace cgColorSpace]::s_proCoreColorSpaceMap[type];

          return PCColorSpaceCache::getCGColorSpaceByID(v4);
      }
    }

    else if (type == 9)
    {
      if ([PVColorSpace cgColorSpace]::onceToken_p3d65 != -1)
      {
        [PVColorSpace cgColorSpace];
      }

      return [PVColorSpace cgColorSpace]::s_displayP3;
    }

    else if (type == 10)
    {
      if ([PVColorSpace cgColorSpace]::onceToken_p3HLG != -1)
      {
        [PVColorSpace cgColorSpace];
      }

      return [PVColorSpace cgColorSpace]::s_p3HLGCS;
    }

    else
    {
      if ([PVColorSpace cgColorSpace]::onceToken_p3PQ != -1)
      {
        [PVColorSpace cgColorSpace];
      }

      return [PVColorSpace cgColorSpace]::s_p3PQCS;
    }
  }

  else if (type > 5)
  {
    if (type == 6)
    {
      if ([PVColorSpace cgColorSpace]::onceToken_xrsRGB != -1)
      {
        [PVColorSpace cgColorSpace];
      }

      return [PVColorSpace cgColorSpace]::s_extendedSRGB;
    }

    else if (type == 7)
    {
      if ([PVColorSpace cgColorSpace]::onceToken_xrLinearsRGB != -1)
      {
        [PVColorSpace cgColorSpace];
      }

      return [PVColorSpace cgColorSpace]::s_extendedLinearSRGB;
    }

    else
    {
      if ([PVColorSpace cgColorSpace]::onceToken_xrDisplayP3 != -1)
      {
        [PVColorSpace cgColorSpace];
      }

      return [PVColorSpace cgColorSpace]::s_extendedDisplayP3;
    }
  }

  else
  {
    switch(type)
    {
      case 1:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = *"";
        v7[2] = __28__PVColorSpace_cgColorSpace__block_invoke;
        v7[3] = &unk_279AA4DD8;
        v7[4] = self;
        if ([PVColorSpace cgColorSpace]::onceToken_601Gamma != -1)
        {
          dispatch_once(&[PVColorSpace cgColorSpace]::onceToken_601Gamma, v7);
        }

        return [PVColorSpace cgColorSpace]::s_601Gamma;
      case 2:
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = *"";
        v6[2] = __28__PVColorSpace_cgColorSpace__block_invoke_2;
        v6[3] = &unk_279AA4DD8;
        v6[4] = self;
        if ([PVColorSpace cgColorSpace]::onceToken_601_SMPTE_C_Gamma != -1)
        {
          dispatch_once(&[PVColorSpace cgColorSpace]::onceToken_601_SMPTE_C_Gamma, v6);
        }

        return [PVColorSpace cgColorSpace]::s_601_SMPTE_C_Gamma;
      case 3:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = *"";
        block[2] = __28__PVColorSpace_cgColorSpace__block_invoke_3;
        block[3] = &unk_279AA4DD8;
        block[4] = self;
        if ([PVColorSpace cgColorSpace]::onceToken_601_EBU_3213_Gamma != -1)
        {
          dispatch_once(&[PVColorSpace cgColorSpace]::onceToken_601_EBU_3213_Gamma, block);
        }

        return [PVColorSpace cgColorSpace]::s_601_EBU_3213_Gamma;
      default:
        goto LABEL_50;
    }
  }
}

void __28__PVColorSpace_cgColorSpace__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) nclcTriplet];
  -[PVColorSpace cgColorSpace]::s_601Gamma = makeColorSpaceFromNCLC([v1 colorPrimary], objc_msgSend(v1, "transferFunction"), objc_msgSend(v1, "ycbcrMatrix"));
}

void __28__PVColorSpace_cgColorSpace__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) nclcTriplet];
  -[PVColorSpace cgColorSpace]::s_601_SMPTE_C_Gamma = makeColorSpaceFromNCLC([v1 colorPrimary], objc_msgSend(v1, "transferFunction"), objc_msgSend(v1, "ycbcrMatrix"));
}

void __28__PVColorSpace_cgColorSpace__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) nclcTriplet];
  -[PVColorSpace cgColorSpace]::s_601_EBU_3213_Gamma = makeColorSpaceFromNCLC([v1 colorPrimary], objc_msgSend(v1, "transferFunction"), objc_msgSend(v1, "ycbcrMatrix"));
}

CGColorSpaceRef __28__PVColorSpace_cgColorSpace__block_invoke_4()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
  [PVColorSpace cgColorSpace]::s_extendedSRGB = result;
  return result;
}

CGColorSpaceRef __28__PVColorSpace_cgColorSpace__block_invoke_5()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF428]);
  [PVColorSpace cgColorSpace]::s_extendedLinearSRGB = result;
  return result;
}

CGColorSpaceRef __28__PVColorSpace_cgColorSpace__block_invoke_6()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3F8]);
  [PVColorSpace cgColorSpace]::s_extendedDisplayP3 = result;
  return result;
}

CGColorSpaceRef __28__PVColorSpace_cgColorSpace__block_invoke_7()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
  [PVColorSpace cgColorSpace]::s_displayP3 = result;
  return result;
}

CGColorSpaceRef __28__PVColorSpace_cgColorSpace__block_invoke_8()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E8]);
  [PVColorSpace cgColorSpace]::s_p3HLGCS = result;
  return result;
}

CGColorSpaceRef __28__PVColorSpace_cgColorSpace__block_invoke_9()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3F0]);
  [PVColorSpace cgColorSpace]::s_p3PQCS = result;
  return result;
}

CGColorSpaceRef __28__PVColorSpace_cgColorSpace__block_invoke_10()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF478]);
  [PVColorSpace cgColorSpace]::s_2100HLGCS = result;
  return result;
}

CGColorSpaceRef __28__PVColorSpace_cgColorSpace__block_invoke_11()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF480]);
  [PVColorSpace cgColorSpace]::s_2100PQCS = result;
  return result;
}

CGColorSpaceRef __28__PVColorSpace_cgColorSpace__block_invoke_12()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF420]);
  [PVColorSpace cgColorSpace]::s_2020LinearCS = result;
  return result;
}

@end