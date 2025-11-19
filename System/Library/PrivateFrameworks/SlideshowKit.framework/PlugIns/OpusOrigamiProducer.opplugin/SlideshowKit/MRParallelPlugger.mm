@interface MRParallelPlugger
- (BOOL)applyAtTime:(double)a3 toSublayer:(id)a4 withArguments:(id)a5;
- (MRParallelPlugger)init;
- (void)dealloc;
- (void)setCurrentLayoutIndex:(unsigned __int8)a3;
- (void)setOpacityAnimationPath:(id)a3;
- (void)setPlug:(id)a3;
@end

@implementation MRParallelPlugger

- (MRParallelPlugger)init
{
  v3.receiver = self;
  v3.super_class = MRParallelPlugger;
  result = [(MRParallelPlugger *)&v3 init];
  if (result)
  {
    result->mNeedsUpdate = 1;
  }

  return result;
}

- (void)dealloc
{
  [(MRParallelPlugger *)self setPlug:0];

  self->mAnimationContext = 0;
  v3.receiver = self;
  v3.super_class = MRParallelPlugger;
  [(MRParallelPlugger *)&v3 dealloc];
}

- (void)setOpacityAnimationPath:(id)a3
{
  mAnimationPathOpacity = self->mAnimationPathOpacity;
  if (a3)
  {
    if (mAnimationPathOpacity)
    {

      self->mAnimationPathOpacity->animationPath = a3;
    }

    else
    {
      v6 = [MRAnimationPathScalar alloc];
      [(MCPlugParallel *)self->mPlug opacity];
      self->mAnimationPathOpacity = [(MRAnimationPathScalar *)v6 initWithMCAnimationPath:a3 andValue:?];
    }
  }

  else
  {

    self->mAnimationPathOpacity = 0;
  }
}

- (BOOL)applyAtTime:(double)a3 toSublayer:(id)a4 withArguments:(id)a5
{
  mPlugWasSetSinceLastRendering = self->mPlugWasSetSinceLastRendering;
  self->mPlugWasSetSinceLastRendering = 0;
  [objc_msgSend(a4 "clock")];
  v10 = [a5 skipsAnimations];
  v11 = [a4 renderingState];
  v11[240] = 1;
  [objc_msgSend(a4 "superlayer")];
  [(MCPlugParallel *)self->mPlug sizeForParentAspectRatio:v12 / v13];
  *&v14 = v14;
  *&v15 = v15;
  *v11 = LODWORD(v14);
  *(v11 + 1) = LODWORD(v15);
  v16 = [a4 persistentState];
  v17 = [a4 animationTriggers];
  v18 = [a4 motions];
  v183 = 0.0;
  v184 = 0.0;
  if ([(MCPlug *)self->mPlug countOfAnimationPaths]|| self->mAnimationPathOpacity)
  {
    mAnimationContext = self->mAnimationContext;
    if (!mAnimationContext)
    {
      mAnimationContext = objc_alloc_init(MRAnimationContext);
      self->mAnimationContext = mAnimationContext;
    }

    mAnimationContext->state = v16;
    mAnimationPathParam1 = self->mAnimationPathParam1;
    if (mAnimationPathParam1)
    {
      v19 = ValueForScalarAnimationPath(mAnimationPathParam1, self->mPlug, self->mAnimationContext, v17, a3, 0.0);
      v184 = v19;
      v22 = &v184;
    }

    else
    {
      v22 = 0;
    }

    self->mAnimationContext->param1 = v22;
    mAnimationPathParam2 = self->mAnimationPathParam2;
    if (mAnimationPathParam2)
    {
      v19 = ValueForScalarAnimationPath(mAnimationPathParam2, self->mPlug, self->mAnimationContext, v17, a3, 0.0);
      v183 = v19;
      v24 = &v183;
    }

    else
    {
      v24 = 0;
    }

    self->mAnimationContext->param2 = v24;
  }

  mAnimationPathXY = self->mAnimationPathXY;
  v180 = v17;
  v182 = v18;
  if (mAnimationPathXY)
  {
    v26 = [a4 clock];
    [(MCPlugParallel *)self->mPlug position];
    [MRUtilities valueForPointAnimationPath:mAnimationPathXY withPlugTiming:v26 atTime:0 defaultsTo:0 previousKeyPoint:0 nextKeyPoint:a3 animationIsOver:v27, v28];
    *&v19 = v19;
    v30 = v29;
    v31 = *(v11 + 2) != *&v19 || *(v11 + 3) != v30;
    v35 = v31 || mPlugWasSetSinceLastRendering;
    *(v11 + 2) = LODWORD(v19);
    *(v11 + 3) = v30;
    v18 = v182;
    goto LABEL_21;
  }

  if (v18)
  {
    v32 = [v18 objectForKey:@"positionX"];
    if (v32)
    {
      v33 = v32;
      [v32 startTime];
      if (v34 < 0.0)
      {
        [v33 setStartTime:a3];
        [v33 setStartValue:*(v11 + 2)];
        v35 = mPlugWasSetSinceLastRendering;
        goto LABEL_193;
      }

      [v33 valueAtTime:a3];
      v155 = v159;
      [v33 startTime];
      v161 = a3 - v160;
      [v33 duration];
      if (v161 >= v162)
      {
        [v18 removeObjectForKey:@"positionX"];
      }

      goto LABEL_180;
    }
  }

  mAnimationPathX = self->mAnimationPathX;
  if (mAnimationPathX && (!-[MCAnimationPath isTriggered](mAnimationPathX->animationPath, "isTriggered") || [v17 objectForKey:@"positionX"]))
  {
    if (v10)
    {
      self->mAnimationPathX->speed = 0.0;
      self->mAnimationPathX->time = -1.0e10;
    }

    v49 = self->mAnimationPathX;
    self->mAnimationContext->animationPath = v49;
    animationPath = v49->animationPath;
    v51 = [a4 clock];
    [(MCPlugParallel *)self->mPlug position];
    v53 = ValueForScalarAnimationPath(animationPath, v51, self->mAnimationContext, v17, a3, v52);
    goto LABEL_179;
  }

  if (mPlugWasSetSinceLastRendering)
  {
    [(MCPlugParallel *)self->mPlug position];
LABEL_179:
    v155 = v53;
LABEL_180:
    v156 = self->mAnimationPathX;
    if (v156)
    {
      v157 = 0.0;
      if ((v10 & 1) == 0)
      {
        time = v156->time;
        if (time < a3)
        {
          v157 = (v155 - v156->value) / (a3 - time);
        }
      }

      v156->speed = v157;
      self->mAnimationPathX->value = v155;
      self->mAnimationPathX->time = a3;
    }

    v19 = *(v11 + 2);
    if (v155 == v19)
    {
      v35 = mPlugWasSetSinceLastRendering;
      if (!v18)
      {
        goto LABEL_196;
      }
    }

    else
    {
      *&v19 = v155;
      *(v11 + 2) = LODWORD(v19);
      v35 = 1;
      if (!v18)
      {
        goto LABEL_196;
      }
    }

    goto LABEL_193;
  }

  v35 = 0;
  if (!v18)
  {
LABEL_196:
    mAnimationPathY = self->mAnimationPathY;
    if (mAnimationPathY && (!-[MCAnimationPath isTriggered](mAnimationPathY->animationPath, "isTriggered") || [v17 objectForKey:@"positionY"]))
    {
      if (v10)
      {
        self->mAnimationPathY->speed = 0.0;
        self->mAnimationPathY->time = -1.0e10;
      }

      v167 = self->mAnimationPathY;
      self->mAnimationContext->animationPath = v167;
      v168 = v167->animationPath;
      v169 = [a4 clock];
      [(MCPlugParallel *)self->mPlug position];
      v171 = ValueForScalarAnimationPath(v168, v169, self->mAnimationContext, v17, a3, v170);
      v18 = v182;
    }

    else
    {
      if (!mPlugWasSetSinceLastRendering)
      {
        goto LABEL_21;
      }

      [(MCPlugParallel *)self->mPlug position];
      v171 = v172;
    }

    goto LABEL_206;
  }

LABEL_193:
  v163 = [v18 objectForKey:@"positionY"];
  if (!v163)
  {
    goto LABEL_196;
  }

  v164 = v163;
  [v163 startTime];
  if (v165 < 0.0)
  {
    [v164 setStartTime:a3];
    [v164 setStartValue:*(v11 + 3)];
    goto LABEL_22;
  }

  [v164 valueAtTime:a3];
  v171 = v173;
  [v164 startTime];
  v175 = a3 - v174;
  [v164 duration];
  if (v175 >= v176)
  {
    [v18 removeObjectForKey:@"positionY"];
  }

LABEL_206:
  v177 = self->mAnimationPathY;
  if (v177)
  {
    v178 = 0.0;
    if ((v10 & 1) == 0)
    {
      v179 = v177->time;
      if (v179 < a3)
      {
        v178 = (v171 - v177->value) / (a3 - v179);
      }
    }

    v177->speed = v178;
    self->mAnimationPathY->value = v171;
    self->mAnimationPathY->time = a3;
  }

  v19 = *(v11 + 3);
  if (v171 != v19)
  {
    *&v19 = v171;
    *(v11 + 3) = LODWORD(v19);
    v35 = 1;
  }

LABEL_21:
  if (!v18)
  {
    v40 = 1;
    goto LABEL_27;
  }

LABEL_22:
  v36 = [v18 objectForKey:@"zPosition"];
  if (v36)
  {
    v37 = v36;
    [v36 startTime];
    if (v38 < 0.0)
    {
      v39 = mPlugWasSetSinceLastRendering;
      [v37 setStartTime:a3];
      [v37 setStartValue:*(v11 + 4)];
      goto LABEL_54;
    }

    [v37 valueAtTime:a3];
    v46 = v54;
    [v37 startTime];
    v56 = a3 - v55;
    [v37 duration];
    if (v56 >= v57)
    {
      [v18 removeObjectForKey:@"zPosition"];
    }

    v40 = 0;
    goto LABEL_44;
  }

  v40 = 0;
LABEL_27:
  mAnimationPathZ = self->mAnimationPathZ;
  if (mAnimationPathZ && (!-[MCAnimationPath isTriggered](mAnimationPathZ->animationPath, "isTriggered") || [v17 objectForKey:@"zPosition"]))
  {
    if (v10)
    {
      self->mAnimationPathZ->speed = 0.0;
      self->mAnimationPathZ->time = -1.0e10;
    }

    v42 = self->mAnimationPathZ;
    self->mAnimationContext->animationPath = v42;
    v43 = v42->animationPath;
    v44 = [a4 clock];
    [(MCPlugParallel *)self->mPlug zPosition];
    v46 = ValueForScalarAnimationPath(v43, v44, self->mAnimationContext, v17, a3, v45);
    v18 = v182;
LABEL_44:
    v58 = self->mAnimationPathZ;
    if (v58)
    {
      v59 = 0.0;
      if ((v10 & 1) == 0)
      {
        v60 = v58->time;
        if (v60 < a3)
        {
          v59 = (v46 - v58->value) / (a3 - v60);
        }
      }

      v58->speed = v59;
      self->mAnimationPathZ->value = v46;
      self->mAnimationPathZ->time = a3;
    }

    v19 = *(v11 + 4);
    if (v46 != v19)
    {
      v39 = mPlugWasSetSinceLastRendering;
      *&v19 = v46;
      *(v11 + 4) = LODWORD(v19);
      v35 = 1;
      v61 = 1;
      if (v40)
      {
        goto LABEL_58;
      }

      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (mPlugWasSetSinceLastRendering)
  {
    [(MCPlugParallel *)self->mPlug zPosition];
    v46 = v47;
    goto LABEL_44;
  }

LABEL_52:
  v39 = mPlugWasSetSinceLastRendering;
  if (v40)
  {
    v61 = 1;
    goto LABEL_58;
  }

LABEL_54:
  v62 = [v18 objectForKey:@"scale"];
  if (v62)
  {
    v63 = v62;
    [v62 startTime];
    if (v64 < 0.0)
    {
      v181 = v35;
      [v63 setStartTime:a3];
      [v63 setStartValue:*(v11 + 5)];
      goto LABEL_79;
    }

    [v63 valueAtTime:a3];
    v70 = v72;
    [v63 startTime];
    v74 = a3 - v73;
    [v63 duration];
    if (v74 >= v75)
    {
      [v18 removeObjectForKey:@"scale"];
    }

    v61 = 0;
    goto LABEL_69;
  }

  v61 = 0;
LABEL_58:
  mAnimationPathScale = self->mAnimationPathScale;
  if (mAnimationPathScale && (!-[MCAnimationPath isTriggered](mAnimationPathScale->animationPath, "isTriggered") || [v180 objectForKey:@"scale"]))
  {
    if (v10)
    {
      self->mAnimationPathScale->speed = 0.0;
      self->mAnimationPathScale->time = -1.0e10;
    }

    v66 = self->mAnimationPathScale;
    self->mAnimationContext->animationPath = v66;
    v67 = v66->animationPath;
    v68 = [a4 clock];
    [(MCPlugParallel *)self->mPlug scale];
    v70 = ValueForScalarAnimationPath(v67, v68, self->mAnimationContext, v180, a3, v69);
    v18 = v182;
LABEL_69:
    v76 = self->mAnimationPathScale;
    if (v76)
    {
      v77 = 0.0;
      if ((v10 & 1) == 0)
      {
        v78 = v76->time;
        if (v78 < a3)
        {
          v77 = (v70 - v76->value) / (a3 - v78);
        }
      }

      v76->speed = v77;
      self->mAnimationPathScale->value = v70;
      self->mAnimationPathScale->time = a3;
    }

    v19 = *(v11 + 5);
    if (v70 != v19)
    {
      *&v19 = v70;
      *(v11 + 5) = LODWORD(v19);
      v181 = 1;
      v79 = 1;
      if (v61)
      {
        goto LABEL_83;
      }

      goto LABEL_79;
    }

    goto LABEL_77;
  }

  if (v39)
  {
    [(MCPlugParallel *)self->mPlug scale];
    v70 = v71;
    goto LABEL_69;
  }

LABEL_77:
  v181 = v35;
  if (v61)
  {
    v79 = 1;
    goto LABEL_83;
  }

LABEL_79:
  v80 = [v18 objectForKey:@"xRotationAngle"];
  if (v80)
  {
    v81 = v80;
    [v80 startTime];
    if (v82 < 0.0)
    {
      [v81 setStartTime:a3];
      [v81 setStartValue:*(v11 + 7)];
      v83 = v39;
      v84 = v180;
      goto LABEL_106;
    }

    [v81 valueAtTime:a3];
    v90 = v92;
    [v81 startTime];
    v94 = a3 - v93;
    [v81 duration];
    v83 = v39;
    if (v94 >= v95)
    {
      [v18 removeObjectForKey:@"xRotationAngle"];
    }

    v79 = 0;
    goto LABEL_94;
  }

  v79 = 0;
LABEL_83:
  mAnimationPathRX = self->mAnimationPathRX;
  if (mAnimationPathRX && (!-[MCAnimationPath isTriggered](mAnimationPathRX->animationPath, "isTriggered") || [v180 objectForKey:@"xRotationAngle"]))
  {
    v83 = v39;
    if (v10)
    {
      self->mAnimationPathRX->speed = 0.0;
      self->mAnimationPathRX->time = -1.0e10;
    }

    v86 = self->mAnimationPathRX;
    self->mAnimationContext->animationPath = v86;
    v87 = v86->animationPath;
    v88 = [a4 clock];
    [(MCPlugParallel *)self->mPlug xRotationAngle];
    v84 = v180;
    v90 = ValueForScalarAnimationPath(v87, v88, self->mAnimationContext, v180, a3, v89);
    v18 = v182;
LABEL_95:
    v96 = self->mAnimationPathRX;
    if (v96)
    {
      v97 = 0.0;
      if ((v10 & 1) == 0)
      {
        v98 = v96->time;
        if (v98 < a3)
        {
          v97 = (v90 - v96->value) / (a3 - v98);
        }
      }

      v96->speed = v97;
      self->mAnimationPathRX->value = v90;
      self->mAnimationPathRX->time = a3;
    }

    v19 = v90 * 57.2957764;
    if (v90 * 57.2957764 != *(v11 + 7))
    {
      *&v19 = v19;
      *(v11 + 7) = LODWORD(v19);
      v181 = 1;
      v99 = 1;
      if (v79)
      {
        goto LABEL_110;
      }

      goto LABEL_106;
    }

    goto LABEL_104;
  }

  v83 = v39;
  if (v39)
  {
    [(MCPlugParallel *)self->mPlug xRotationAngle];
    v90 = v91;
LABEL_94:
    v84 = v180;
    goto LABEL_95;
  }

  v84 = v180;
LABEL_104:
  if (v79)
  {
    v99 = 1;
    goto LABEL_110;
  }

LABEL_106:
  v100 = [v18 objectForKey:@"yRotationAngle"];
  if (v100)
  {
    v101 = v100;
    [v100 startTime];
    if (v102 < 0.0)
    {
      [v101 setStartTime:a3];
      [v101 setStartValue:*(v11 + 8)];
      goto LABEL_131;
    }

    [v101 valueAtTime:a3];
    v108 = v110;
    [v101 startTime];
    v112 = a3 - v111;
    [v101 duration];
    if (v112 >= v113)
    {
      [v18 removeObjectForKey:@"yRotationAngle"];
    }

    v99 = 0;
    goto LABEL_121;
  }

  v99 = 0;
LABEL_110:
  mAnimationPathRY = self->mAnimationPathRY;
  if (mAnimationPathRY && (!-[MCAnimationPath isTriggered](mAnimationPathRY->animationPath, "isTriggered") || [v84 objectForKey:@"yRotationAngle"]))
  {
    if (v10)
    {
      self->mAnimationPathRY->speed = 0.0;
      self->mAnimationPathRY->time = -1.0e10;
    }

    v104 = self->mAnimationPathRY;
    self->mAnimationContext->animationPath = v104;
    v105 = v104->animationPath;
    v106 = [a4 clock];
    [(MCPlugParallel *)self->mPlug yRotationAngle];
    v108 = ValueForScalarAnimationPath(v105, v106, self->mAnimationContext, v84, a3, v107);
    v18 = v182;
LABEL_121:
    v114 = self->mAnimationPathRY;
    if (v114)
    {
      v115 = 0.0;
      if ((v10 & 1) == 0)
      {
        v116 = v114->time;
        if (v116 < a3)
        {
          v115 = (v108 - v114->value) / (a3 - v116);
        }
      }

      v114->speed = v115;
      self->mAnimationPathRY->value = v108;
      self->mAnimationPathRY->time = a3;
    }

    v19 = v108 * 57.2957764;
    if (v108 * 57.2957764 != *(v11 + 8))
    {
      *&v19 = v19;
      *(v11 + 8) = LODWORD(v19);
      v181 = 1;
      v117 = 1;
      if (v99)
      {
        goto LABEL_135;
      }

      goto LABEL_131;
    }

    goto LABEL_129;
  }

  if (v83)
  {
    [(MCPlugParallel *)self->mPlug yRotationAngle];
    v108 = v109;
    goto LABEL_121;
  }

LABEL_129:
  if (v99)
  {
    v117 = 1;
    goto LABEL_135;
  }

LABEL_131:
  v118 = [v18 objectForKey:@"rotationAngle"];
  if (v118)
  {
    v119 = v118;
    [v118 startTime];
    if (v120 < 0.0)
    {
      [v119 setStartTime:a3];
      [v119 setStartValue:*(v11 + 9)];
      goto LABEL_154;
    }

    [v119 valueAtTime:a3];
    v126 = v128;
    [v119 startTime];
    v130 = a3 - v129;
    [v119 duration];
    if (v130 >= v131)
    {
      [v18 removeObjectForKey:@"rotationAngle"];
    }

    v117 = 0;
    goto LABEL_146;
  }

  v117 = 0;
LABEL_135:
  mAnimationPathRZ = self->mAnimationPathRZ;
  if (mAnimationPathRZ && (!-[MCAnimationPath isTriggered](mAnimationPathRZ->animationPath, "isTriggered") || [v84 objectForKey:@"rotationAngle"]))
  {
    if (v10)
    {
      self->mAnimationPathRZ->speed = 0.0;
      self->mAnimationPathRZ->time = -1.0e10;
    }

    v122 = self->mAnimationPathRZ;
    self->mAnimationContext->animationPath = v122;
    v123 = v122->animationPath;
    v124 = [a4 clock];
    [(MCPlugParallel *)self->mPlug rotationAngle];
    v126 = ValueForScalarAnimationPath(v123, v124, self->mAnimationContext, v84, a3, v125);
    v18 = v182;
  }

  else
  {
    if (!v83)
    {
      goto LABEL_153;
    }

    [(MCPlugParallel *)self->mPlug rotationAngle];
    v126 = v127;
  }

LABEL_146:
  v132 = self->mAnimationPathRZ;
  if (v132)
  {
    v133 = 0.0;
    if ((v10 & 1) == 0)
    {
      v134 = v132->time;
      if (v134 < a3)
      {
        v133 = (v126 - v132->value) / (a3 - v134);
      }
    }

    v132->speed = v133;
    self->mAnimationPathRZ->value = v126;
    self->mAnimationPathRZ->time = a3;
  }

  v19 = v126 * 57.2957764;
  if (v126 * 57.2957764 != *(v11 + 9))
  {
    *&v19 = v19;
    *(v11 + 9) = LODWORD(v19);
    v181 = 1;
  }

LABEL_153:
  if (v117)
  {
    goto LABEL_157;
  }

LABEL_154:
  v135 = [v18 objectForKey:@"opacity"];
  if (!v135)
  {
LABEL_157:
    mAnimationPathOpacity = self->mAnimationPathOpacity;
    if (mAnimationPathOpacity && (!-[MCAnimationPath isTriggered](mAnimationPathOpacity->animationPath, "isTriggered", v19) || [v84 objectForKey:@"opacity"]))
    {
      if (v10)
      {
        self->mAnimationPathOpacity->speed = 0.0;
        self->mAnimationPathOpacity->time = -1.0e10;
      }

      v139 = self->mAnimationPathOpacity;
      self->mAnimationContext->animationPath = v139;
      v140 = v139->animationPath;
      v141 = [a4 clock];
      [(MCPlugParallel *)self->mPlug opacity];
      v143 = ValueForScalarAnimationPath(v140, v141, self->mAnimationContext, v180, a3, v142);
    }

    else
    {
      if (!v83)
      {
        goto LABEL_173;
      }

      [(MCPlugParallel *)self->mPlug opacity];
    }

    v144 = v143;
    v145 = v181;
    goto LABEL_166;
  }

  v136 = v135;
  [v135 startTime];
  if (v137 < 0.0)
  {
    [v136 setStartTime:a3];
    [v136 setStartValue:*(v11 + 11)];
LABEL_173:
    v145 = v181;
    goto LABEL_174;
  }

  [v136 valueAtTime:a3];
  v144 = v151;
  [v136 startTime];
  v153 = a3 - v152;
  [v136 duration];
  v145 = v181;
  if (v153 >= v154)
  {
    [v18 removeObjectForKey:@"opacity"];
  }

LABEL_166:
  v146 = self->mAnimationPathOpacity;
  if (v146)
  {
    v147 = 0.0;
    if ((v10 & 1) == 0)
    {
      v148 = v146->time;
      if (v148 < a3)
      {
        v147 = (v144 - v146->value) / (a3 - v148);
      }
    }

    v146->speed = v147;
    self->mAnimationPathOpacity->value = v144;
    self->mAnimationPathOpacity->time = a3;
  }

  if (v144 != *(v11 + 11))
  {
    v149 = v144;
    *(v11 + 11) = v149;
    v145 = 1;
  }

LABEL_174:
  *(v11 + 10) = 1065353216;
  *(v11 + 6) = 1065353216;
  return v145;
}

- (void)setPlug:(id)a3
{
  self->mNeedsUpdate = 0;
  if ([a3 container])
  {

    self->mAnimationPathParam1 = 0;
    self->mAnimationPathParam2 = 0;

    self->mAnimationPathXY = 0;
    self->mAnimationPathX = 0;

    self->mAnimationPathY = 0;
    self->mAnimationPathZ = 0;

    self->mAnimationPathScale = 0;
    self->mAnimationPathRX = 0;

    self->mAnimationPathRY = 0;
    self->mAnimationPathRZ = 0;

    self->mAnimationPathOpacity = 0;
  }

  self->mPlug = 0;
  if (a3)
  {
    self->mPlug = [a3 snapshot];
    -[MRParallelPlugger setCurrentLayoutIndex:](self, "setCurrentLayoutIndex:", [a3 currentLayoutIndex]);
  }

  self->mPlugWasSetSinceLastRendering = 1;
}

- (void)setCurrentLayoutIndex:(unsigned __int8)a3
{
  v3 = a3;
  self->mCurrentLayoutIndex = a3;
  [(MCPlugParallel *)self->mPlug setCurrentLayoutIndex:?];
  self->mPlugWasSetSinceLastRendering = 1;
  if (![(MCPlug *)self->mPlug countOfAnimationPaths])
  {
    return;
  }

  if (!v3)
  {
    self->mAnimationPathParam1 = [(MCPlug *)self->mPlug animationPathForKey:@"param1"];
    self->mAnimationPathParam2 = [(MCPlug *)self->mPlug animationPathForKey:@"param2"];
    self->mAnimationPathXY = [(MCPlug *)self->mPlug animationPathForKey:@"position"];
    goto LABEL_12;
  }

  v5 = -[MCPlug animationPathForKey:](self->mPlug, "animationPathForKey:", [@"param1" stringByAppendingFormat:@":%d", v3]);
  if (!v5)
  {
    v5 = [(MCPlug *)self->mPlug animationPathForKey:@"param1"];
  }

  self->mAnimationPathParam1 = v5;
  v6 = -[MCPlug animationPathForKey:](self->mPlug, "animationPathForKey:", [@"param2" stringByAppendingFormat:@":%d", v3]);
  if (!v6)
  {
    v6 = [(MCPlug *)self->mPlug animationPathForKey:@"param2"];
  }

  self->mAnimationPathParam2 = v6;
  v7 = -[MCPlug animationPathForKey:](self->mPlug, "animationPathForKey:", [@"position" stringByAppendingFormat:@":%d", v3]);
  if (!v7)
  {
    v7 = [(MCPlug *)self->mPlug animationPathForKey:@"position"];
  }

  self->mAnimationPathXY = v7;
  v8 = -[MCPlug animationPathForKey:](self->mPlug, "animationPathForKey:", [@"positionX" stringByAppendingFormat:@":%d", v3]);
  if (!v8)
  {
LABEL_12:
    v8 = [(MCPlug *)self->mPlug animationPathForKey:@"positionX"];
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v9 = v8;
  if (([v8 isTriggered] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[MRAnimationPathPhysics alloc] initWithMCAnimationPath:v9];
      [(MCPlugParallel *)self->mPlug position];
      *&v11 = v11;
      [(MRAnimationPathPhysics *)v10 setBaseValue:v11];
    }

    else
    {
      v12 = [MRAnimationPathScalar alloc];
      [(MCPlugParallel *)self->mPlug position];
      self->mAnimationPathX = [(MRAnimationPathScalar *)v12 initWithMCAnimationPath:v9 andValue:?];
    }
  }

LABEL_17:
  mPlug = self->mPlug;
  if (!v3)
  {
    goto LABEL_20;
  }

  v14 = -[MCPlug animationPathForKey:](mPlug, "animationPathForKey:", [@"positionY" stringByAppendingFormat:@":%d", v3]);
  if (!v14)
  {
    mPlug = self->mPlug;
LABEL_20:
    v14 = [(MCPlug *)mPlug animationPathForKey:@"positionY"];
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  v15 = v14;
  if (([v14 isTriggered] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[MRAnimationPathPhysics alloc] initWithMCAnimationPath:v15];
      [(MCPlugParallel *)self->mPlug position];
      *&v18 = v17;
      [(MRAnimationPathPhysics *)v16 setBaseValue:v18];
    }

    else
    {
      v19 = [MRAnimationPathScalar alloc];
      [(MCPlugParallel *)self->mPlug position];
      self->mAnimationPathY = [(MRAnimationPathScalar *)v19 initWithMCAnimationPath:v15 andValue:v20];
    }
  }

LABEL_25:
  v21 = self->mPlug;
  if (!v3)
  {
    goto LABEL_28;
  }

  v22 = -[MCPlug animationPathForKey:](v21, "animationPathForKey:", [@"zPosition" stringByAppendingFormat:@":%d", v3]);
  if (!v22)
  {
    v21 = self->mPlug;
LABEL_28:
    v22 = [(MCPlug *)v21 animationPathForKey:@"zPosition"];
    if (!v22)
    {
      goto LABEL_33;
    }
  }

  v23 = v22;
  if (([v22 isTriggered] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[MRAnimationPathPhysics alloc] initWithMCAnimationPath:v23];
      [(MCPlugParallel *)self->mPlug zPosition];
      *&v25 = v25;
      [(MRAnimationPathPhysics *)v24 setBaseValue:v25];
    }

    else
    {
      v26 = [MRAnimationPathScalar alloc];
      [(MCPlugParallel *)self->mPlug zPosition];
      self->mAnimationPathZ = [(MRAnimationPathScalar *)v26 initWithMCAnimationPath:v23 andValue:?];
    }
  }

LABEL_33:
  v27 = self->mPlug;
  if (!v3)
  {
    goto LABEL_36;
  }

  v28 = -[MCPlug animationPathForKey:](v27, "animationPathForKey:", [@"scale" stringByAppendingFormat:@":%d", v3]);
  if (!v28)
  {
    v27 = self->mPlug;
LABEL_36:
    v28 = [(MCPlug *)v27 animationPathForKey:@"scale"];
    if (!v28)
    {
      goto LABEL_41;
    }
  }

  v29 = v28;
  if (([v28 isTriggered] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[MRAnimationPathPhysics alloc] initWithMCAnimationPath:v29];
      [(MCPlugParallel *)self->mPlug scale];
      *&v31 = v31;
      [(MRAnimationPathPhysics *)v30 setBaseValue:v31];
    }

    else
    {
      v32 = [MRAnimationPathScalar alloc];
      [(MCPlugParallel *)self->mPlug scale];
      self->mAnimationPathScale = [(MRAnimationPathScalar *)v32 initWithMCAnimationPath:v29 andValue:?];
    }
  }

LABEL_41:
  v33 = self->mPlug;
  if (!v3)
  {
    goto LABEL_44;
  }

  v34 = -[MCPlug animationPathForKey:](v33, "animationPathForKey:", [@"xRotationAngle" stringByAppendingFormat:@":%d", v3]);
  if (!v34)
  {
    v33 = self->mPlug;
LABEL_44:
    v34 = [(MCPlug *)v33 animationPathForKey:@"xRotationAngle"];
    if (!v34)
    {
      goto LABEL_49;
    }
  }

  v35 = v34;
  if (([v34 isTriggered] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[MRAnimationPathPhysics alloc] initWithMCAnimationPath:v35];
      [(MCPlugParallel *)self->mPlug xRotationAngle];
      *&v37 = v37;
      [(MRAnimationPathPhysics *)v36 setBaseValue:v37];
    }

    else
    {
      v38 = [MRAnimationPathScalar alloc];
      [(MCPlugParallel *)self->mPlug xRotationAngle];
      self->mAnimationPathRX = [(MRAnimationPathScalar *)v38 initWithMCAnimationPath:v35 andValue:?];
    }
  }

LABEL_49:
  v39 = self->mPlug;
  if (!v3)
  {
    goto LABEL_52;
  }

  v40 = -[MCPlug animationPathForKey:](v39, "animationPathForKey:", [@"yRotationAngle" stringByAppendingFormat:@":%d", v3]);
  if (!v40)
  {
    v39 = self->mPlug;
LABEL_52:
    v40 = [(MCPlug *)v39 animationPathForKey:@"yRotationAngle"];
    if (!v40)
    {
      goto LABEL_57;
    }
  }

  v41 = v40;
  if (([v40 isTriggered] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[MRAnimationPathPhysics alloc] initWithMCAnimationPath:v41];
      [(MCPlugParallel *)self->mPlug yRotationAngle];
      *&v43 = v43;
      [(MRAnimationPathPhysics *)v42 setBaseValue:v43];
    }

    else
    {
      v44 = [MRAnimationPathScalar alloc];
      [(MCPlugParallel *)self->mPlug yRotationAngle];
      self->mAnimationPathRY = [(MRAnimationPathScalar *)v44 initWithMCAnimationPath:v41 andValue:?];
    }
  }

LABEL_57:
  v45 = self->mPlug;
  if (!v3)
  {
    goto LABEL_60;
  }

  v46 = -[MCPlug animationPathForKey:](v45, "animationPathForKey:", [@"rotationAngle" stringByAppendingFormat:@":%d", v3]);
  if (!v46)
  {
    v45 = self->mPlug;
LABEL_60:
    v46 = [(MCPlug *)v45 animationPathForKey:@"rotationAngle"];
    if (!v46)
    {
      goto LABEL_65;
    }
  }

  v47 = v46;
  if (([v46 isTriggered] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [[MRAnimationPathPhysics alloc] initWithMCAnimationPath:v47];
      [(MCPlugParallel *)self->mPlug rotationAngle];
      *&v49 = v49;
      [(MRAnimationPathPhysics *)v48 setBaseValue:v49];
    }

    else
    {
      v50 = [MRAnimationPathScalar alloc];
      [(MCPlugParallel *)self->mPlug rotationAngle];
      self->mAnimationPathRZ = [(MRAnimationPathScalar *)v50 initWithMCAnimationPath:v47 andValue:?];
    }
  }

LABEL_65:
  v51 = self->mPlug;
  if (!v3)
  {
    goto LABEL_68;
  }

  v52 = -[MCPlug animationPathForKey:](v51, "animationPathForKey:", [@"opacity" stringByAppendingFormat:@":%d", v3]);
  if (!v52)
  {
    v51 = self->mPlug;
LABEL_68:
    v52 = [(MCPlug *)v51 animationPathForKey:@"opacity"];
    if (!v52)
    {
      return;
    }
  }

  v53 = v52;
  if (([v52 isTriggered] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = [[MRAnimationPathPhysics alloc] initWithMCAnimationPath:v53];
      [(MCPlugParallel *)self->mPlug opacity];
      *&v55 = v55;

      [(MRAnimationPathPhysics *)v54 setBaseValue:v55];
    }

    else
    {
      v56 = [MRAnimationPathScalar alloc];
      [(MCPlugParallel *)self->mPlug opacity];
      self->mAnimationPathOpacity = [(MRAnimationPathScalar *)v56 initWithMCAnimationPath:v53 andValue:?];
    }
  }
}

@end