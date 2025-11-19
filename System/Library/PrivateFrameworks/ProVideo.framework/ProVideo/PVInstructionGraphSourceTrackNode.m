@interface PVInstructionGraphSourceTrackNode
+ (id)newSourceTrackNode:(int)a3 animation:(id)a4 fillMode:(int)a5 clipNaturalSize:(CGSize)a6;
+ (id)newSourceTrackNode:(int)a3 transform:(CGAffineTransform *)a4 cropRect:(CGRect)a5 clipNaturalSize:(CGSize)a6;
+ (id)newSourceTrackNodeWithStabilizationDelegate:(id)a3 userContext:(id)a4 trackID:(int)a5 dataTrackID:(int)a6 transform:(CGAffineTransform *)a7 clipNaturalSize:(CGSize)a8;
+ (id)newSourceTrackNodeWithStabilizationDelegate:(id)a3 userContext:(id)a4 trackID:(int)a5 transform:(CGAffineTransform *)a6 clipNaturalSize:(CGSize)a7;
- (BOOL)isPassthru;
- (CGRect)cropRect;
- (CGSize)clipNaturalSize;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4;
- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4;
- (PVInstructionGraphSourceTrackNode)init;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)a3;
- (id)instructionGraphNodeDescription;
- (id)requiredSourceSampleDataTrackIDs;
- (id)requiredSourceTrackIDs;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)a3 returnLoadedEffects:(id)a4;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphSourceTrackNode

+ (id)newSourceTrackNode:(int)a3 transform:(CGAffineTransform *)a4 cropRect:(CGRect)a5 clipNaturalSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v8 = a5.size.height;
  v9 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = *&a3;
  v14 = objc_alloc_init(PVInstructionGraphSourceTrackNode);
  [(PVInstructionGraphSourceTrackNode *)v14 setTrackID:v13];
  v15 = *&a4->c;
  v17[0] = *&a4->a;
  v17[1] = v15;
  v17[2] = *&a4->tx;
  [(PVInstructionGraphSourceNode *)v14 setTransform:v17];
  [(PVInstructionGraphSourceTrackNode *)v14 setCropRect:x, y, v9, v8];
  [(PVInstructionGraphSourceTrackNode *)v14 setFillMode:0];
  [(PVInstructionGraphSourceTrackNode *)v14 setClipNaturalSize:width, height];
  return v14;
}

+ (id)newSourceTrackNode:(int)a3 animation:(id)a4 fillMode:(int)a5 clipNaturalSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v8 = *&a5;
  v9 = *&a3;
  v10 = a4;
  v11 = objc_alloc_init(PVInstructionGraphSourceTrackNode);
  [(PVInstructionGraphSourceTrackNode *)v11 setTrackID:v9];
  [(PVInstructionGraphSourceNode *)v11 setTransformAnimation:v10];
  [(PVInstructionGraphSourceTrackNode *)v11 setFillMode:v8];
  [(PVInstructionGraphSourceTrackNode *)v11 setClipNaturalSize:width, height];

  return v11;
}

+ (id)newSourceTrackNodeWithStabilizationDelegate:(id)a3 userContext:(id)a4 trackID:(int)a5 transform:(CGAffineTransform *)a6 clipNaturalSize:(CGSize)a7
{
  v7 = *&a6->c;
  v9[0] = *&a6->a;
  v9[1] = v7;
  v9[2] = *&a6->tx;
  return [a1 newSourceTrackNodeWithStabilizationDelegate:a3 userContext:a4 trackID:*&a5 dataTrackID:0 transform:v9 clipNaturalSize:{a7.width, a7.height}];
}

+ (id)newSourceTrackNodeWithStabilizationDelegate:(id)a3 userContext:(id)a4 trackID:(int)a5 dataTrackID:(int)a6 transform:(CGAffineTransform *)a7 clipNaturalSize:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  v11 = *&a6;
  v12 = *&a5;
  v15 = a3;
  v16 = a4;
  v17 = *&a7->c;
  v20[0] = *&a7->a;
  v20[1] = v17;
  v20[2] = *&a7->tx;
  v18 = [a1 newSourceTrackNode:v12 transform:v20 cropRect:*MEMORY[0x277CBF3A0] clipNaturalSize:{*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), width, height}];
  [v18 setDataTrackID:v11];
  [v18 setStabilizationDelegate:v15];
  [v18 setStabilizationDelegateRespondsToDidStabilize:objc_opt_respondsToSelector() & 1];
  [v18 setUserContext:v16];

  return v18;
}

- (PVInstructionGraphSourceTrackNode)init
{
  v7.receiver = self;
  v7.super_class = PVInstructionGraphSourceTrackNode;
  v2 = [(PVInstructionGraphSourceNode *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = *&v2->_fillMode;
    *&v2->_fillMode = 0;

    BYTE4(v3->super._transform.ty) = 0;
    stabilizationDelegate = v3->_stabilizationDelegate;
    v3->_stabilizationDelegate = 0;

    v3->_sourceTrackloaded.__a_.__a_value = 0;
    *&v3->_stabilizationDelegateRespondsToDidStabilize = 0;
    atomic_store(0, &v3->super._transform.ty);
  }

  return v3;
}

- (id)requiredSourceTrackIDs
{
  if (self->_trackID)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_sourceTrackloaded.__a_.__a_value];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_trackID];
    v6 = [v3 setWithObjects:{v4, v5, 0}];
LABEL_5:
    v9 = v6;

    goto LABEL_6;
  }

  v7 = *&self->_stabilizationDelegateRespondsToDidStabilize;
  v8 = MEMORY[0x277CBEB98];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_sourceTrackloaded.__a_.__a_value];
  if (v7)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:*&self->_stabilizationDelegateRespondsToDidStabilize];
    v6 = [v8 setWithObjects:{v4, v5, 0}];
    goto LABEL_5;
  }

  v9 = [v8 setWithObject:v4];
LABEL_6:

  return v9;
}

- (id)requiredSourceSampleDataTrackIDs
{
  if (self->_dataTrackID || *&self->_stabilizationDelegateRespondsToDidStabilize)
  {
    v2 = MEMORY[0x277CBEB98];
    v3 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v4 = [v2 setWithObjects:{v3, 0}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isPassthru
{
  if (!self->_sourceTrackloaded.__a_.__a_value || *&self->_stabilizationDelegateRespondsToDidStabilize || self->_trackID || self->_dataTrackID)
  {
    return 0;
  }

  v5 = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
  if (v5)
  {
    IsIdentity = 0;
  }

  else
  {
    [(PVInstructionGraphSourceNode *)self transform];
    IsIdentity = CGAffineTransformIsIdentity(&v6);
  }

  return IsIdentity;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)a3 returnLoadedEffects:(id)a4
{
  v7 = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate:a3.m_Obj];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && !atomic_fetch_add(&self->super._transform.ty, 1u))
  {
    v8 = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
    v6 = [(PVInstructionGraphSourceTrackNode *)self userContext];
    [v8 loadWithUserContext:v6];
  }
}

- (void)unloadIGNode
{
  v5 = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) != 0 && atomic_fetch_add(&self->super._transform.ty, 0xFFFFFFFF) == 1)
  {
    v6 = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
    v4 = [(PVInstructionGraphSourceTrackNode *)self userContext];
    [v6 unloadWithUserContext:v4];
  }
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v11 = v6;
  HGTraceGuard::HGTraceGuard(v194, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphSourceTrackNode hgNodeForTime:...]");
  v14 = atomic_load(HGLogger::_enabled);
  if (v14)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "SourceTrackID: %d dataTrackID: %d depthTrackID: %d metadataTrackID: %d\n", v12, v13, self->_sourceTrackloaded.__a_.__a_value, *&self->_stabilizationDelegateRespondsToDidStabilize, self->_trackID, self->_dataTrackID);
  }

  PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::GetNode(a4, self, v11);
  PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::GetFrameDataPixelBuffer(a4, self, &v193);
  if (v193 && (v15 = v193[16]) != 0)
  {
    v16 = *(v15 + 24);
  }

  else
  {
    v16 = 0;
  }

  v17 = CVPixelBufferRetain(v16);
  if (v193)
  {
    (*(*v193 + 24))(v193);
  }

  v18 = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
  *&t1.a = *&a3->var0;
  *&t1.c = a3->var3;
  v19 = [(PVInstructionGraphSourceTrackNode *)self userContext];
  v175 = v17;
  v20 = [v18 timedStabilizationConfigForTime:&t1 frameData:v17 userContext:v19];

  v174 = v20;
  v21 = [v20 object];
  if ([v21 isValid])
  {
    PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::GetInputSize(a4, self, &t1);
    a = t1.a;
    b = t1.b;
    d = t1.d;
    c = t1.c;
    [v21 cleanAperture];
    v173 = v24;
    v172 = v25;
    rect2 = v26;
    v28 = v27;
    v29 = *MEMORY[0x277CBF348];
    v30 = *(MEMORY[0x277CBF348] + 8);
    [v21 normalizedCleanAperture];
    v167 = v31;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v200.origin.x = a;
    v200.origin.y = b;
    v200.size.height = d;
    v200.size.width = c;
    v212.origin.x = v173;
    v212.origin.y = v172;
    v212.size.width = rect2;
    v212.size.height = v28;
    v38 = CGRectEqualToRect(v200, v212);
    if (!v38)
    {
      v201.origin.x = v173;
      v201.origin.y = v172;
      v201.size.width = rect2;
      v201.size.height = v28;
      v39 = HGRectMakeWithCGRect(v201);
      v41 = v40;
      v42 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v42);
      (*(*v42 + 96))(v42, 0, v39, SHIDWORD(v39), v41, SHIDWORD(v41));
      (*(*v42 + 120))(v42, 0, *v11);
      v43 = *v11;
      if (*v11 != v42)
      {
        if (v43)
        {
          (*(*v43 + 24))(*v11);
        }

        *v11 = v42;
        (*(*v42 + 16))(v42);
        v43 = *v11;
      }

      v44 = *(MEMORY[0x277CBF2C0] + 16);
      *&v192.a = *MEMORY[0x277CBF2C0];
      *&v192.c = v44;
      *&v192.tx = *(MEMORY[0x277CBF2C0] + 32);
      *&t1.a = *&v192.a;
      *&t1.c = v44;
      *&t1.tx = *&v192.tx;
      CGAffineTransformMakeScale(&t2, rect2 / rect2, v28 / v28);
      CGAffineTransformConcat(&v192, &t1, &t2);
      v45 = *MEMORY[0x277CBF348];
      v46 = *(MEMORY[0x277CBF348] + 8);
      t2 = v192;
      CGAffineTransformMakeTranslation(&v195, v45 - v173 * (rect2 / rect2), v46 - v172 * (v28 / v28));
      CGAffineTransformConcat(&t1, &t2, &v195);
      v192 = t1;
      v191 = v43;
      if (v43)
      {
        (*(*v43 + 16))(v43);
      }

      t1 = v192;
      v47 = (*(**a6.m_Obj + 64))();
      HGXFormForCGAffineTransform(&v191, &t1, v47, &t2);
      v48 = *v11;
      v49 = t2.a;
      if (*v11 == *&t2.a)
      {
        if (v48)
        {
          (*(**&t2.a + 24))(*&t2.a);
        }
      }

      else
      {
        if (v48)
        {
          (*(*v48 + 24))(v48);
          v49 = t2.a;
        }

        *v11 = v49;
        t2.a = 0.0;
      }

      if (v191)
      {
        (*(*v191 + 24))(v191);
      }

      (*(*v42 + 24))(v42);
    }

    [v21 homography];
    v50 = v29 - rect2 * 0.5;
    v51 = v30 - v28 * 0.5;
    v156.size.width = rect2;
    v156.size.height = v28;
    v156.origin.x = v50;
    v156.origin.y = v51;
    v211.origin.x = v33;
    v211.origin.y = v35;
    v211.size.width = v167;
    v211.size.height = v37;
    *v52.i64 = pv_convert_homography_coordinates(v198, v211, v156);
    v165 = v53;
    v166 = v52;
    v164 = v54;
    memset(&v192, 0, sizeof(v192));
    v162 = v51;
    v163 = v50;
    CGAffineTransformMakeTranslation(&v192, v50, v51);
    v55 = *v11;
    v190 = v55;
    if (v55)
    {
      (*(*v55 + 16))(v55);
    }

    t1 = v192;
    v56 = (*(**a6.m_Obj + 64))();
    HGXFormForCGAffineTransform(&v190, &t1, v56, &t2);
    v57 = *v11;
    v58 = t2.a;
    if (*v11 == *&t2.a)
    {
      if (v57)
      {
        (*(**&t2.a + 24))(*&t2.a);
      }
    }

    else
    {
      if (v57)
      {
        (*(*v57 + 24))(v57);
        v58 = t2.a;
      }

      *v11 = v58;
      t2.a = 0.0;
    }

    if (v190)
    {
      (*(*v190 + 24))(v190);
    }

    v59 = *v11;
    v189 = v59;
    if (v59)
    {
      (*(*v59 + 16))(v59);
    }

    v60 = (*(**a6.m_Obj + 64))();
    v199.columns[0] = vtrn1q_s32(0, v166);
    v199.columns[0].i64[0] = v166.i64[0];
    v199.columns[1] = vtrn1q_s32(0, v165);
    v199.columns[1].i64[0] = v165.i64[0];
    v199.columns[3] = vtrn1q_s32(0, v164);
    v199.columns[3].i64[0] = v164.i64[0];
    v199.columns[2] = xmmword_2603429D0;
    v159 = v199.columns[1];
    v160 = v199.columns[0];
    v161 = v199.columns[3];
    HGXFormForSIMDFloat4x4(&v189, v60, &t1, v199);
    v61 = *v11;
    v62 = t1.a;
    if (*v11 == *&t1.a)
    {
      if (v61)
      {
        (*(**&t1.a + 24))(*&t1.a);
      }
    }

    else
    {
      if (v61)
      {
        (*(*v61 + 24))(v61);
        v62 = t1.a;
      }

      *v11 = v62;
      t1.a = 0.0;
    }

    if (v189)
    {
      (*(*v189 + 24))(v189);
    }

    v63 = *v11;
    v188 = v63;
    if (v63)
    {
      (*(*v63 + 16))(v63);
    }

    t2 = v192;
    CGAffineTransformInvert(&t1, &t2);
    v64 = (*(**a6.m_Obj + 64))();
    HGXFormForCGAffineTransform(&v188, &t1, v64, &v195);
    v65 = *v11;
    v66 = v195.a;
    if (*v11 == *&v195.a)
    {
      if (v65)
      {
        (*(**&v195.a + 24))(*&v195.a);
      }
    }

    else
    {
      if (v65)
      {
        (*(*v65 + 24))(v65);
        v66 = v195.a;
      }

      *v11 = v66;
      v195.a = 0.0;
    }

    if (v188)
    {
      (*(*v188 + 24))(v188);
    }

    memset(&v187, 0, sizeof(v187));
    CGAffineTransformMakeScale(&t1, rect2 / v167, v28 / v37);
    CGAffineTransformMakeTranslation(&t2, rect2 * 0.5, v28 * 0.5);
    CGAffineTransformConcat(&v187, &t1, &t2);
    [v21 cropRect];
    t1 = v187;
    v203 = CGRectApplyAffineTransform(v202, &t1);
    x = v203.origin.x;
    y = v203.origin.y;
    width = v203.size.width;
    height = v203.size.height;
    MinX = CGRectGetMinX(v203);
    v204.origin.x = x;
    v204.origin.y = y;
    v204.size.width = width;
    v204.size.height = height;
    MaxX = CGRectGetMaxX(v204);
    v205.origin.x = x;
    v205.origin.y = y;
    v205.size.width = width;
    v205.size.height = height;
    MinY = CGRectGetMinY(v205);
    v206.origin.x = x;
    v206.origin.y = y;
    v206.size.width = width;
    v206.size.height = height;
    v74 = round(MinX);
    v75 = round(MinY);
    v76 = round(MaxX - (x - v74)) - v74;
    v77 = round(CGRectGetMaxY(v206) - (y - v75)) - v75;
    v207.origin.x = 0.0;
    v207.origin.y = 0.0;
    v207.size.width = rect2;
    v207.size.height = v28;
    v213.origin.x = v74;
    v213.origin.y = v75;
    v213.size.width = v76;
    v213.size.height = v77;
    if (CGRectEqualToRect(v207, v213))
    {
      if (v38)
      {
LABEL_102:
        if ([(PVInstructionGraphSourceTrackNode *)self stabilizationDelegateRespondsToDidStabilize])
        {
          v102 = [(PVInstructionGraphSourceTrackNode *)self stabilizationDelegate];
          *&t1.a = *&a3->var0;
          *&t1.c = a3->var3;
          v103 = [(PVInstructionGraphSourceTrackNode *)self userContext];
          [v102 didStabilize:v20 time:&t1 frameData:v175 inputSize:v103 cleanAperture:c centeredCleanAperture:d cleanApertureOriginZero:v173 cropRect:v172 homography:*&v163 homographyMatrix4x4:*&v162 userContext:{*&rect2, *&v28, 0, 0, *&rect2, *&v28, *&v74, *&v75, *&v76, *&v77, v166.i64[0], v166.u32[2], v165.i64[0], v165.u32[2], v164.i64[0], v164.u32[2], *&v160, *&v159, 0, 1065353216, *&v161}];
        }

        goto LABEL_104;
      }
    }

    else
    {
      v208.origin.x = v74;
      v208.origin.y = v75;
      v208.size.width = v76;
      v208.size.height = v77;
      v78 = HGRectMakeWithCGRect(v208);
      v80 = v79;
      v81 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v81);
      (*(*v81 + 96))(v81, 0, v78, SHIDWORD(v78), v80, SHIDWORD(v80));
      (*(*v81 + 120))(v81, 0, *v11);
      v82 = *v11;
      if (*v11 != v81)
      {
        if (v82)
        {
          (*(*v82 + 24))(v82);
        }

        *v11 = v81;
        (*(*v81 + 16))(v81);
      }

      (*(*v81 + 24))(v81);
    }

    v209.origin.x = 0.0;
    v209.origin.y = 0.0;
    v209.size.width = rect2;
    v209.size.height = v28;
    v214.origin.x = v74;
    v214.origin.y = v75;
    v214.size.width = v76;
    v214.size.height = v77;
    v210 = CGRectIntersection(v209, v214);
    v168 = v210.origin.x;
    v158 = v210.origin.y;
    v83 = v210.size.width;
    v84 = v210.size.height;
    v85 = [v21 fillMode];
    v86 = v85;
    if (!v85)
    {
      goto LABEL_102;
    }

    v157 = v77;
    if (v85 > 2)
    {
      v87 = v76;
      v89 = d;
      v88 = c;
      if (v85 != 3)
      {
        if (v85 == 13)
        {
          v88 = c;
          v89 = c / (v83 / v84);
        }

        else
        {
          v88 = v83;
          v89 = v84;
          if (v85 == 14)
          {
            v89 = d;
            v88 = d * (v83 / v84);
          }
        }
      }

LABEL_77:
      v91 = v88 / v83;
      v92 = *(MEMORY[0x277CBF2C0] + 16);
      *&v186.a = *MEMORY[0x277CBF2C0];
      *&v186.c = v92;
      *&v186.tx = *(MEMORY[0x277CBF2C0] + 32);
      *&t1.a = *&v186.a;
      *&t1.c = v92;
      *&t1.tx = *&v186.tx;
      v93 = v89 / v84;
      CGAffineTransformMakeScale(&t2, v91, v93);
      CGAffineTransformConcat(&v186, &t1, &t2);
      if ((v86 - 1) >= 6 && (v86 - 13) >= 2)
      {
        v95 = *MEMORY[0x277CBF348];
        v94 = c - v88;
      }

      else
      {
        v94 = c - v88;
        v95 = (c - v88) * 0.5;
      }

      v96 = *(MEMORY[0x277CBF348] + 8);
      v76 = v87;
      if (v86 <= 0xE && ((1 << v86) & 0x619E) != 0)
      {
        v97 = d - v89;
        v96 = (d - v89) * 0.5;
      }

      else
      {
        v97 = d - v89;
      }

      v77 = v157;
      if (v86 <= 9)
      {
        if (v86 == 6)
        {
          goto LABEL_91;
        }

        if (v86 != 8)
        {
          goto LABEL_92;
        }
      }

      else if (v86 != 10)
      {
        if (v86 == 11)
        {
LABEL_91:
          v96 = v97;
          goto LABEL_92;
        }

        if (v86 == 12)
        {
          v95 = v94;
          goto LABEL_91;
        }

LABEL_92:
        t2 = v186;
        CGAffineTransformMakeTranslation(&v195, v95 - v168 * v91, v96 - v158 * v93);
        CGAffineTransformConcat(&t1, &t2, &v195);
        v186 = t1;
        v98 = *v11;
        v185 = v98;
        if (v98)
        {
          (*(*v98 + 16))(v98);
        }

        t1 = v186;
        v99 = (*(**a6.m_Obj + 64))();
        HGXFormForCGAffineTransform(&v185, &t1, v99, &t2);
        v100 = *v11;
        v101 = t2.a;
        if (*v11 == *&t2.a)
        {
          if (v100)
          {
            (*(**&t2.a + 24))(*&t2.a);
          }
        }

        else
        {
          if (v100)
          {
            (*(*v100 + 24))(v100);
            v101 = t2.a;
          }

          *v11 = v101;
          t2.a = 0.0;
        }

        if (v185)
        {
          (*(*v185 + 24))(v185);
        }

        goto LABEL_102;
      }

      v95 = v94;
      goto LABEL_92;
    }

    if (v85 == 1)
    {
      v87 = v76;
      if (c <= d)
      {
        v90 = d / v84;
        if (v83 * (d / v84) < c)
        {
          v90 = c / v83;
        }
      }

      else
      {
        v90 = c / v83;
        if (v84 * (c / v83) < d)
        {
          v90 = d / v84;
        }
      }
    }

    else
    {
      v87 = v76;
      v88 = v83;
      v89 = v84;
      if (v85 != 2)
      {
        goto LABEL_77;
      }

      v90 = c / v83;
      if (v84 * (c / v83) > d)
      {
        v90 = d / v84;
      }
    }

    v88 = v83 * v90;
    v89 = v84 * v90;
    goto LABEL_77;
  }

LABEL_104:
  CVPixelBufferRelease(v175);
  if (!self->_depthTrackID)
  {
    [(PVInstructionGraphSourceNode *)self transform];
    t2 = t1;
    v115 = v20;
    goto LABEL_165;
  }

  memset(&v195, 0, sizeof(v195));
  [(PVInstructionGraphSourceNode *)self transform];
  v104 = MEMORY[0x277CBF2C0];
  v105 = *(MEMORY[0x277CBF2C0] + 16);
  *&v192.a = *MEMORY[0x277CBF2C0];
  *&v192.c = v105;
  *&v192.tx = *(MEMORY[0x277CBF2C0] + 32);
  userContext = self->_userContext;
  v106 = self->_clipNaturalSize.width;
  v108 = (*(**a6.m_Obj + 40))();
  v110 = v109;
  v111 = [(PVInstructionGraphSourceNode *)self transformAnimationContentMode];
  v112 = v111;
  if (!v111 || v111 == 3)
  {
    v113 = v110;
    v114 = v108;
    goto LABEL_129;
  }

  depthTrackID = self->_depthTrackID;
  if (depthTrackID <= 2)
  {
    if (depthTrackID == 1)
    {
      if (v108 <= v110)
      {
        v117 = v110 / v106;
        if (*&userContext * (v110 / v106) < v108)
        {
          v117 = v108 / *&userContext;
        }
      }

      else
      {
        v117 = v108 / *&userContext;
        if (v106 * (v108 / *&userContext) < v110)
        {
          v117 = v110 / v106;
        }
      }
    }

    else
    {
      v114 = *&userContext;
      v113 = v106;
      if (depthTrackID != 2)
      {
        goto LABEL_125;
      }

      v117 = v108 / *&userContext;
      if (v106 * (v108 / *&userContext) > v110)
      {
        v117 = v110 / v106;
      }
    }

    v114 = *&userContext * v117;
    v113 = v106 * v117;
    goto LABEL_125;
  }

  if (depthTrackID == 3)
  {
    v114 = v108;
    goto LABEL_123;
  }

  if (depthTrackID == 13)
  {
    v113 = v108 / (*&userContext / v106);
    v114 = v108;
    goto LABEL_125;
  }

  v114 = *&userContext;
  v113 = v106;
  if (depthTrackID == 14)
  {
    v114 = *&userContext / v106 * v110;
LABEL_123:
    v113 = v110;
  }

LABEL_125:
  v118 = [(PVInstructionGraphSourceNode *)self transformAnimation];
  [v118 aspectRatio];
  v120 = self->_depthTrackID;
  if (v120 <= 3)
  {
    if (v120 == 1)
    {
      if (v114 / v119 <= v113)
      {
        v113 = v114 / v119;
      }

      v114 = v119 * v113;
    }

    else if (v120 == 2)
    {
      if (v114 <= v113)
      {
        v140 = v113;
        if (v113 * v119 < v114)
        {
          v140 = v114 / v119;
        }
      }

      else
      {
        v140 = v114 / v119;
        if (v114 / v119 < v113)
        {
          v140 = v113;
        }
      }

      v114 = v119 * v140;
      v113 = v140;
    }
  }

  else if ((v120 - 4) >= 9)
  {
    if (v120 == 13)
    {
      v113 = v114 / v119;
    }

    else if (v120 == 14)
    {
      v114 = v113 * v119;
    }
  }

  else
  {
    v113 = 1.0;
    v114 = v119;
  }

LABEL_129:
  v121 = [(PVInstructionGraphSourceNode *)self transformAnimation];
  rect2a = v110;
  *&v187.a = *&a3->var0;
  *&v187.c = a3->var3;
  v122 = [PVTransformAnimation getTransformInfoFromAnimation:v121 atTime:&v187 renderSize:v112 contentMode:0 invertY:&t1 outInfo:v114, v113];

  v123 = 0.0;
  v124 = 1.0;
  v125 = 1.0;
  v126 = 0uLL;
  v115 = v174;
  if (v122)
  {
    ty = t1.ty;
    v123 = v184;
    v125 = ty;
    v126 = vcvtq_f64_f32(vcvt_f32_f64(*&t1.d));
  }

  v171 = v126;
  v128 = *&userContext * -0.5;
  v129 = v106 * -0.5;
  memset(&v187, 0, sizeof(v187));
  v130 = v128;
  v131 = v129;
  CGAffineTransformMakeTranslation(&v187, v128, v129);
  v186 = v192;
  v182 = v187;
  CGAffineTransformConcat(&v192, &v186, &v182);
  v132 = self->_depthTrackID;
  if (!v132)
  {
    goto LABEL_162;
  }

  v133 = v104[1];
  *&v182.a = *v104;
  *&v182.c = v133;
  *&v182.tx = v104[2];
  CGAffineTransformTranslate(&v186, &v182, v130, v131);
  *&v180.a = *&v186.tx;
  v182 = v186;
  v181 = v195;
  CGAffineTransformConcat(&v186, &v182, &v181);
  v134 = fabs(*&userContext * v186.a + v106 * v186.c);
  v135 = fabs(*&userContext * v186.b + v106 * v186.d);
  if (v132 <= 2)
  {
    if (v132 == 1)
    {
      if (v108 <= rect2a)
      {
        v139 = rect2a / v135;
        if (v134 * (rect2a / v135) < v108)
        {
          v139 = v108 / v134;
        }
      }

      else
      {
        v139 = v108 / v134;
        if (v135 * (v108 / v134) < rect2a)
        {
          v139 = rect2a / v135;
        }
      }

      v136 = v134 * v139;
      goto LABEL_161;
    }

    if (v132 == 2)
    {
      v137 = v135 * (v108 / v134);
      v138 = rect2a / v135;
      if (v137 <= rect2a)
      {
        v138 = v108 / v134;
      }

      v136 = v134 * v138;
      goto LABEL_161;
    }

    goto LABEL_146;
  }

  v136 = v108;
  if (v132 == 3)
  {
LABEL_161:
    v124 = v136 / v134;
    goto LABEL_162;
  }

  if (v132 != 13)
  {
    if (v132 == 14)
    {
      v136 = rect2a * (v134 / v135);
      goto LABEL_161;
    }

LABEL_146:
    v136 = v134;
    goto LABEL_161;
  }

  v124 = v108 / (v134 / v135) / v135;
LABEL_162:
  v182 = v192;
  v181 = v195;
  CGAffineTransformConcat(&v186, &v182, &v181);
  v192 = v186;
  if (v123 != 0.0)
  {
    v182 = v192;
    CGAffineTransformMakeRotation(&v181, ((v123 * 3.1416) / 180.0));
    CGAffineTransformConcat(&v186, &v182, &v181);
    v192 = v186;
  }

  memset(&v186, 0, sizeof(v186));
  CGAffineTransformMakeScale(&v186, v125 * v124, v125 * v124);
  v181 = v192;
  v180 = v186;
  CGAffineTransformConcat(&v182, &v181, &v180);
  v192 = v182;
  v141 = *&userContext * 0.5 + floor(v108 - *&userContext) * 0.5 + v171.f64[0];
  v142 = v106 * 0.5 + floor(rect2a - v106) * 0.5 + v171.f64[1];
  CGAffineTransformMakeTranslation(&v182, v141, v142);
  v187 = v182;
  v181 = v192;
  v180 = v182;
  CGAffineTransformConcat(&v182, &v181, &v180);
  v192 = v182;
  t2 = v182;
LABEL_165:
  v143 = *v11;
  v179 = v143;
  if (v143)
  {
    (*(*v143 + 16))(v143);
  }

  t1 = t2;
  v144 = (*(**a6.m_Obj + 64))();
  HGXFormForCGAffineTransform(&v179, &t1, v144, &v195);
  v145 = *v11;
  v146 = v195.a;
  if (*v11 == *&v195.a)
  {
    if (v145)
    {
      (*(**&v195.a + 24))(*&v195.a);
    }
  }

  else
  {
    if (v145)
    {
      (*(*v145 + 24))(v145);
      v146 = v195.a;
    }

    *v11 = v146;
    v195.a = 0.0;
  }

  if (v179)
  {
    (*(*v179 + 24))(v179);
  }

  v147 = *v11;
  v178 = v147;
  if (v147)
  {
    (*(*v147 + 16))(v147);
  }

  (*(**a6.m_Obj + 56))(&t1);
  v148 = (*(**a6.m_Obj + 64))();
  HGXFormForCGAffineTransform(&v178, &t1, v148, &v195);
  v149 = *v11;
  v150 = v195.a;
  if (*v11 == *&v195.a)
  {
    if (v149)
    {
      (*(**&v195.a + 24))(*&v195.a);
    }
  }

  else
  {
    if (v149)
    {
      (*(*v149 + 24))(v149);
      v150 = v195.a;
    }

    *v11 = v150;
    v195.a = 0.0;
  }

  if (v178)
  {
    (*(*v178 + 24))(v178);
  }

  if (-[PVInstructionGraphNode isDebugDrawingEnabled](self, "isDebugDrawingEnabled") && [v21 isValid])
  {
    v151 = (*(**a6.m_Obj + 40))();
    v153 = v152;
    v154 = HGObject::operator new(0x280uLL);
    HGHWMultiBlend::HGHWMultiBlend(v154);
    (*(*v154 + 96))(v154, 0, 9.0, 0.0, 0.0, 0.0);
    (*(*v154 + 120))(v154, 0, *v11);
    t1.b = 0.0;
    t1.a = 0.0;
    *&t1.c = xmmword_260342700;
    coloredDotHGNode(v151 * 0.5 + -13.0, v153 * 0.5 + -13.0, 26.0, 26.0);
  }

  HGTraceGuard::~HGTraceGuard(v194);
  return v155;
}

- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4
{
  v6 = v4;
  v7 = a3;
  *v6 = 0;
  *(v6 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v6 + 16) = _Q0;
  p_userContext = &self->_userContext;
  v15 = p_userContext->f64[0];
  v14 = p_userContext->f64[1];
  v23 = v7;
  if (v14 <= p_userContext->f64[0])
  {
    [v7 outputSize];
    v17 = v15 / v18;
  }

  else
  {
    [v7 outputSize];
    v17 = v14 / v16;
  }

  *(v6 + 16) = vdivq_f64(*p_userContext, vdupq_lane_s64(*&v17, 0));

  result.var3 = v22;
  result.var2 = v21;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4
{
  v27 = a4;
  v7 = (*(**a5.m_Obj + 40))();
  v9 = v8;
  v10 = (*(**a5.m_Obj + 48))();
  [v27 outputSize];
  v12 = v11;
  [v27 outputSize];
  v13 = v7;
  v14 = v9;
  v15 = v10 * v13;
  v16 = v10 * v14;
  v18 = v12 / v17;
  v19 = (v13 / v14);
  if (vabdd_f64(v18, v19) >= 0.0000001)
  {
    v20 = v27;
    if (v18 > v19)
    {
LABEL_5:
      [v20 outputSize];
      v22 = v16 / v21;
      goto LABEL_7;
    }
  }

  else
  {
    v20 = v27;
    if (v16 > v15)
    {
      goto LABEL_5;
    }
  }

  [v20 outputSize];
  v22 = v15 / v23;
LABEL_7:
  retstr->var0[3][3] = 1.0;
  retstr->var0[2][2] = 1.0;
  retstr->var0[1][1] = 1.0;
  retstr->var0[0][0] = 1.0;
  *&retstr->var0[0][1] = 0u;
  *&retstr->var0[0][3] = 0u;
  *&retstr->var0[1][2] = 0u;
  *&retstr->var0[2][0] = 0u;
  *&retstr->var0[2][3] = 0u;
  *&retstr->var0[3][1] = 0u;
  v24 = v22;
  v25 = PCMatrix44Tmpl<double>::leftScale(retstr, v24, -v24, 1.0);
  v25.f64[0] = v15 * 0.5;
  PCMatrix44Tmpl<double>::leftTranslate(retstr, v25, v16 * 0.5, 0.0);

  return result;
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)a3
{
  v8 = *a3.m_Obj;
  if (v8)
  {
    (*(*v8 + 16))(v8, a2);
  }

  v7.receiver = self;
  v7.super_class = PVInstructionGraphSourceTrackNode;
  v4 = [(PVInstructionGraphNode *)&v7 dotTreeLabel:&v8];
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v5 = [v4 stringByAppendingFormat:@"\nTrack: %d\nSize: [%.0f x %.0f]", self->_sourceTrackloaded.__a_.__a_value, self->_userContext, *&self->_clipNaturalSize.width];

  return v5;
}

- (id)instructionGraphNodeDescription
{
  v13.receiver = self;
  v13.super_class = PVInstructionGraphSourceTrackNode;
  v3 = [(PVInstructionGraphSourceNode *)&v13 instructionGraphNodeDescription];
  v4 = [v3 mutableCopy];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:@"class"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_sourceTrackloaded.__a_.__a_value];
  [v4 setObject:v7 forKeyedSubscript:@"trackID"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:*&self->_stabilizationDelegateRespondsToDidStabilize];
  [v4 setObject:v8 forKeyedSubscript:@"dataTrackID"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_trackID];
  [v4 setObject:v9 forKeyedSubscript:@"depthTrackID"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:*&self->_stabilizationDelegateRespondsToDidStabilize];
  [v4 setObject:v10 forKeyedSubscript:@"metadataTrackID"];

  v11 = NSStringFromSIMDDouble2(2, *&self->_userContext);
  [v4 setObject:v11 forKeyedSubscript:@"clipNaturalSize"];

  return v4;
}

- (CGRect)cropRect
{
  height = self->_clipNaturalSize.height;
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  result.size.height = width;
  result.size.width = y;
  result.origin.y = x;
  result.origin.x = height;
  return result;
}

- (CGSize)clipNaturalSize
{
  userContext = self->_userContext;
  width = self->_clipNaturalSize.width;
  result.height = width;
  result.width = *&userContext;
  return result;
}

@end