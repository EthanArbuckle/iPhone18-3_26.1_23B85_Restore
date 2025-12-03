@interface MRTransitionAccordion
- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)setAttributes:(id)attributes;
@end

@implementation MRTransitionAccordion

- (void)setAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = MRTransitionAccordion;
  [(MRTransition *)&v4 setAttributes:attributes];
  self->super._direction = 0;
}

- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  v6.receiver = self;
  v6.super_class = MRTransitionAccordion;
  return [(MRTransition *)&v6 prerenderForTime:context inContext:arguments withArguments:time];
}

- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  [context localAspectRatio];
  v10 = 1.0 / v9;
  if ((1.0 / v9) > 0.0)
  {
    v11 = time * time * (time * -2.0 + 3.0);
    if (self->super._direction - 1) < 8u && ((0x8Bu >> (self->super._direction - 1)))
    {
      v12 = dword_1640C0[(self->super._direction - 1)];
    }

    else
    {
      LOBYTE(v12) = [-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"direction", "unsignedIntegerValue"}];
    }

    LODWORD(v13) = [-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"numberOfFoldingsIn", "unsignedCharValue"}];
    v14 = [-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"numberOfFoldingsOut", "unsignedCharValue"}];
    mSourceLayer = self->super.mSourceLayer;
    [(MRLayerClock *)[(MRLayer *)mSourceLayer clock] externalTime];
    v16 = [(MRLayer *)mSourceLayer patchworkAtTime:context inContext:arguments withArguments:?];
    mTargetLayer = self->super.mTargetLayer;
    [(MRLayerClock *)[(MRLayer *)mTargetLayer clock] externalTime];
    v18 = [(MRLayer *)mTargetLayer patchworkAtTime:context inContext:arguments withArguments:?];
    if ((v12 & 0xFA) != 0)
    {
      v19 = v12;
    }

    else
    {
      v19 = v12 + 2;
    }

    if ((v12 & 0xFA) != 0)
    {
      v20 = v14;
    }

    else
    {
      v20 = v13;
    }

    if ((v12 & 0xFA) != 0)
    {
      v13 = v13;
    }

    else
    {
      v13 = v14;
    }

    v21 = 1.0 - v11;
    if ((v12 & 0xFA) != 0)
    {
      v21 = v11;
    }

    v22 = v21;
    if ((v12 & 0xFA) != 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = v16;
    }

    if ((v12 & 0xFA) != 0)
    {
      v24 = v16;
    }

    else
    {
      v24 = v18;
    }

    v25 = v19 & 0xFC;
    v26 = v19 & 1;
    if (v19)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    [context cull:v27];
    v28 = 1.0;
    v29 = 1.0 - v22;
    if (v25)
    {
      v111 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      if (v26)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = v10;
      }

      if (v20)
      {
        v31 = 2 * v20 + 1;
      }

      else
      {
        v31 = 2;
      }

      LOWORD(v101) = 2 * v31;
      BYTE2(v101) = v26;
      v32 = v30 + v30;
      v33 = (4 * v20);
      if (!v20)
      {
        v33 = 2.0;
      }

      v34 = v32 / v33;
      v35 = -v30;
      v36 = 0.0;
      if (v20)
      {
        v36 = sqrt((1.0 - (v29 * v29))) * v35 / (v20 + v20);
      }

      v37 = 0;
      v38 = (v22 + -1.0) * v30;
      v39 = v29 * v34;
      v40 = 2 * v31 - 1;
      v41 = &v102;
      do
      {
        v42 = v35 + (v37 * v34);
        if (v37)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = v38;
        }

        if (v37)
        {
          v44 = v35 * v22;
        }

        else
        {
          v44 = v35;
        }

        if (!v20)
        {
          v42 = v43;
        }

        *(v41 - 3) = v42;
        v45 = &v101 + 4 * v40 + 1;
        *v45 = -v42;
        v46 = v35 + (v39 * v37);
        if (!v20)
        {
          v46 = v44;
        }

        *(v41 - 2) = v46;
        v47 = -v46;
        if (v37)
        {
          v48 = v36;
        }

        else
        {
          v48 = 0.0;
        }

        v45[1] = v47;
        v45[2] = v48;
        *(v41 - 1) = v48;
        *v41 = v31 - 1 == v37;
        v41 += 16;
        *(v45 + 12) = 0;
        ++v37;
        --v40;
      }

      while (v31 != v37);
      v49 = 0;
      v50 = 0;
      LOWORD(v90) = (2 * v13) | 1;
      BYTE2(v90) = v26;
      v51 = 2 * v13;
      v52 = v32 / (2 * v13);
      v53 = sqrt((1.0 - (v22 * v22))) * v35 / v13;
      v54 = -(v22 * v52);
      do
      {
        v55.f32[0] = v35 + (v49 * v52);
        v56 = &v90 + v50;
        v57 = (&v90 + 16 * v51 + 4);
        *(v56 + 1) = v55.i32[0];
        *(v56 + 2) = v54 * v13;
        v55.f32[1] = v54 * v13;
        *v57 = vneg_f32(v55);
        if (v49)
        {
          v58 = v53;
        }

        else
        {
          v58 = 0.0;
        }

        v57[1].f32[0] = v58;
        *(v56 + 3) = v58;
        --v13;
        v57[1].i8[4] = 0;
        v56[16] = 0;
        v50 += 16;
        ++v49;
        --v51;
      }

      while (v13 != -1);
      v87 = v109;
      v88 = v110;
      LODWORD(v89) = v111;
      v83 = v105;
      v84 = v106;
      v85 = v107;
      v86 = v108;
      v79 = v101;
      v80 = v102;
      v81 = v103;
      v82 = v104;
      RenderPatchworkWithMesh(v24, &v79, context);
      v87 = v98;
      v88 = v99;
      LODWORD(v89) = v100;
      v83 = v94;
      v84 = v95;
      v85 = v96;
      v86 = v97;
      v79 = v90;
      v80 = v91;
      v81 = v92;
      v82 = v93;
      v59 = v23;
    }

    else
    {
      v111 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      if (v20)
      {
        v60 = 2 * v20 + 1;
      }

      else
      {
        v60 = 2;
      }

      LOWORD(v101) = v60;
      BYTE2(v101) = v26;
      if (!v26)
      {
        v28 = v10;
      }

      v61 = v28 + v28;
      v62 = (v28 + v28) / (v60 - 1);
      v63 = -v28;
      v64 = 0.0;
      if (v20)
      {
        v64 = sqrt((1.0 - (v29 * v29))) * v63 / v20;
      }

      v65 = 0;
      v66 = &v101 + 1;
      do
      {
        if (v20)
        {
          *v66 = (v65 * v62) - v28;
          v67 = ((v29 * v62) * v65) - v28;
          v68 = v66;
        }

        else if (v65)
        {
          v68 = &v101 + 4 * v65 + 1;
          *v66 = v28;
          v67 = ((v22 * -2.0) + 1.0) * v28;
        }

        else
        {
          *(&v101 + 1) = ((v22 * 2.0) + -1.0) * v28;
          v68 = &v101 + 1;
          v67 = -v28;
        }

        if (v65)
        {
          v69 = v64;
        }

        else
        {
          v69 = 0.0;
        }

        v68[1] = v67;
        v68[2] = v69;
        *(v68 + 12) = 0;
        ++v65;
        v66 += 4;
      }

      while (v60 != v65);
      if (v13)
      {
        v70 = (2 * v13 + 1);
      }

      else
      {
        v70 = 2;
      }

      LOWORD(v90) = v70;
      BYTE2(v90) = v26;
      v71 = 0.0;
      if (v13)
      {
        v71 = sqrt((1.0 - (v22 * v22))) * v63 / v13;
      }

      v72 = 0;
      v73 = -v61;
      v74 = &v90 + 1;
      v75 = v61 / (v70 - 1);
      do
      {
        if (v13)
        {
          *v74 = (v72 * v75) - v28;
          v76 = v28 + (v22 * (v73 + (v75 * v72)));
          v77 = v74;
        }

        else if (v72)
        {
          v77 = &v90 + 4 * v72 + 1;
          *v74 = ((v22 * 2.0) + -1.0) * v28;
          v76 = v28;
        }

        else
        {
          *(&v90 + 1) = -v28;
          v77 = &v90 + 1;
          v76 = ((v22 * -2.0) + 1.0) * v28;
        }

        if (v72)
        {
          v78 = v71;
        }

        else
        {
          v78 = 0.0;
        }

        v77[1] = v76;
        v77[2] = v78;
        *(v77 + 12) = 0;
        ++v72;
        v74 += 4;
      }

      while (v70 != v72);
      if (v22 >= 0.5)
      {
        v87 = v109;
        v88 = v110;
        LODWORD(v89) = v111;
        v83 = v105;
        v84 = v106;
        v85 = v107;
        v86 = v108;
        v79 = v101;
        v80 = v102;
        v81 = v103;
        v82 = v104;
        RenderPatchworkWithMesh(v24, &v79, context);
      }

      v87 = v98;
      v88 = v99;
      LODWORD(v89) = v100;
      v83 = v94;
      v84 = v95;
      v85 = v96;
      v86 = v97;
      v79 = v90;
      v80 = v91;
      v81 = v92;
      v82 = v93;
      if (v13 == 2)
      {
        RenderPatchworkWithMeshInverted(v23, &v79, context);
      }

      else
      {
        RenderPatchworkWithMesh(v23, &v79, context);
      }

      if (v22 >= 0.5)
      {
        goto LABEL_98;
      }

      v87 = v109;
      v88 = v110;
      LODWORD(v89) = v111;
      v83 = v105;
      v84 = v106;
      v85 = v107;
      v86 = v108;
      v79 = v101;
      v80 = v102;
      v81 = v103;
      v82 = v104;
      v59 = v24;
    }

    RenderPatchworkWithMesh(v59, &v79, context);
LABEL_98:
    [context cull:{0, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89}];
    [v24 removeImages];
    [v23 removeImages];
  }
}

@end