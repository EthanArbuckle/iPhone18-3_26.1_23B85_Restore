@interface MREffectOrigamiTitle
- (BOOL)getVerticesCoordinates:(MREffectOrigamiTitle *)self withMatrix:(SEL)a2 forElement:(CGPoint *)(a3;
- (BOOL)isLoadedForTime:(double)a3;
- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (CGSize)_maxSizeForTextElement:(id)a3;
- (MREffectOrigamiTitle)init;
- (id)_retainedByUserBackColorImageInContext:(id)a3;
- (id)elementHitAtPoint:(CGPoint)a3 withInverseMatrix:(float)a4[16] localPoint:(CGPoint *)a5;
- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)_cleanup;
- (void)_loadForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)_unload;
- (void)renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)renderBreakImage:(id)a3 atProgress:(double)a4 withKey:(id)a5 inContext:(id)a6 withArguments:(id)a7 inRect:(CGRect)a8 withAttributes:(id)a9;
- (void)renderFallBreakImage:(id)a3 atProgress:(double)a4 inContext:(id)a5 withArguments:(id)a6 inRect:(CGRect)a7 withAttributes:(id)a8 :(CGPoint *)a9 :(CGPoint)a10;
- (void)renderFallImage:(id)a3 atProgress:(double)a4 inContext:(id)a5 withArguments:(id)a6 inRect:(CGRect)a7 withAttributes:(id)a8 :(CGPoint *)a9 :(CGPoint)a10;
- (void)renderFallImage:(id)a3 atProgress:(double)a4 strength:(double)a5 inContext:(id)a6 withArguments:(id)a7 inRect:(CGRect)a8 withAttributes:(id)a9 :(CGPoint *)a10 :(CGPoint)a11;
- (void)renderStillImage:(id)a3 withKey:(id)a4 inContext:(id)a5 withArguments:(id)a6 inRect:(CGRect)a7 withAttributes:(id)a8;
- (void)renderTextEffectAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)renderTitleEffectAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
@end

@implementation MREffectOrigamiTitle

- (MREffectOrigamiTitle)init
{
  v4.receiver = self;
  v4.super_class = MREffectOrigamiTitle;
  v2 = [(MREffectOrigamiTitle *)&v4 init];
  if (v2)
  {
    *(v2 + 193) = objc_alloc_init(MRCroppingSprite);
    if (([*(v2 + 4) hasSuffix:@"Text"] & 1) == 0)
    {
      *(v2 + 249) = objc_alloc_init(NSMutableDictionary);
    }

    v5[0] = xmmword_1638E0;
    v5[1] = xmmword_1638F0;
    *(v2 + 281) = [[MRCAMLBezierData alloc] initWithControlPoints:v5];
    [v2 _setupSwingTimings];
    *(v2 + 305) = -1082130432;
    *(v2 + 321) = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)_cleanup
{
  *(&self->mBackColorForImage[2] + 1) = 0;

  *(&self->mWordIndexForGlyph + 1) = 0;
  *&self->mLineWordCounts[1] = 0;

  *(&self->mText0Renderer + 1) = 0;
  *(&self->mPatchworkAtEnd + 1) = 0;

  *(&self->mWordCount + 1) = 0;

  [(MREffectOrigamiTitle *)self _cleanupSwingTimings];
}

- (BOOL)isLoadedForTime:(double)a3
{
  v4 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer textsForElementIDs] objectForKey:@"text0"];
  v5 = [(NSString *)self->super.mEffectID rangeOfString:@"LTitleP"];
  v7 = [(NSString *)self->super.mEffectID rangeOfString:@"Text"]== 0x7FFFFFFFFFFFFFFFLL && v5 == 0x7FFFFFFFFFFFFFFFLL;
  if (!v4 || ![v4 length])
  {
    goto LABEL_13;
  }

  v8 = [*(&self->mText0Sprite + 1) count];
  if (v8 == 0 && !v7)
  {
    v9 = *(&self->mText0Offsets + 1);
    if (!v9)
    {
      return v9 & 1;
    }

LABEL_13:
    LOBYTE(v9) = !self->super.mNeedsToUpdateTexts;
    return v9 & 1;
  }

  if (v8)
  {
    goto LABEL_13;
  }

  LOBYTE(v9) = 0;
  return v9 & 1;
}

- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (![(MRLayer *)self->super.mEffectLayer isActivated])
  {
    [*(&self->mBackColorForImage[2] + 1) removeAllObjects];
  }

  v10.receiver = self;
  v10.super_class = MREffectOrigamiTitle;
  return [(MREffect *)&v10 prerenderForTime:a4 inContext:a5 withArguments:a3];
}

- (void)renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (a3 >= 0.0 && self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration > a3)
  {
    if ([(NSString *)self->super.mEffectID rangeOfString:@"Title"]== 0x7FFFFFFFFFFFFFFFLL)
    {

      [(MREffectOrigamiTitle *)self renderTextEffectAtTime:a4 inContext:a5 withArguments:a3];
    }

    else
    {

      [(MREffectOrigamiTitle *)self renderTitleEffectAtTime:a4 inContext:a5 withArguments:a3];
    }
  }
}

- (void)renderTitleEffectAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  v8 = self;
  [(MREffect *)self _computePhaseTimeForTime:?];
  v10 = v9;
  [a4 blend:2];
  v139 = [NSDictionary dictionaryWithObject:@"back" forKey:@"direction"];
  v11 = [(NSString *)v8->super.mEffectID rangeOfString:@"LTitleP"];
  [a4 localAspectRatio];
  v137 = v10;
  v13 = 1.0 / v12;
  v146 = a4;
  v138 = v8;
  if (v10 >= 5.0 && v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(&v8->mText0Renderer + 1) reset];
    goto LABEL_48;
  }

  __asm { FMOV            V2.2D, #2.0 }

  v136 = vmulq_f64(*(&v8->mSprites + 1), vdivq_f64(_Q2, v8->super.mPixelSize));
  y = CGPointZero.y;
  x = CGPointZero.x;
  v145 = y;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [(NSString *)v8->super.mEffectID hasSuffix:@"1"];
    v19 = v136.f64[0] * 0.5 + -0.23333333;
    v20 = -0.645;
    if (v18)
    {
      v19 = 0.0;
    }

    else
    {
      v20 = 0.0;
    }

    x = v19;
    v145 = v20;
  }

  if (![(NSString *)[(MRLayerEffect *)v8->super.mEffectLayer editedElement] isEqualToString:@"text0"]|| ![(MRLayerEffect *)v8->super.mEffectLayer _hideTextWhileEditing])
  {
    v133 = v11;
    v134 = a3;
    v167 = CGPointZero;
    v21 = v8;
    v22 = *(&v8->mImageSize.height + 1);
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    obj = *(&v21->mText0Sprite + 1);
    v147 = [obj countByEnumeratingWithState:&v152 objects:v178 count:16];
    if (!v147)
    {
      goto LABEL_36;
    }

    v23 = 0;
    v24 = 0;
    LODWORD(v25) = 0;
    v26 = v10 / (v22 * 0.3);
    v148 = v26;
    v142 = *v153;
    v27 = 0.0;
    v141.y = y;
    v141.x = CGPointZero.x;
    v143 = a5;
    while (1)
    {
      for (i = 0; i != v147; i = i + 1)
      {
        if (*v153 != v142)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v152 + 1) + 8 * i);
        v30 = [objc_msgSend(*&v138->mLineWordCounts[1] objectAtIndex:{v25), "integerValue"}];
        v149 = v30;
        if (v24)
        {
          v32 = *(&v138->mText0Image + v24 + 1);
          v31 = v23 + v32 + ~v30;
        }

        else
        {
          v31 = v30 - v23;
          v32 = *(&v138->mText0Image + v24 + 1);
        }

        v33 = v32 - 1;
        [v29 width];
        v35 = (v34 + v34) / v138->super.mPixelSize.width;
        [v29 height];
        v37 = (v36 + v36) / v138->super.mPixelSize.width;
        v38 = v148 + ((v31 & 1) * 0.2 + (v31 >> 1) * 0.1 + v24 * 0.1) / (*(&v138->mImageSize.height + 1) * -0.3);
        v39 = v38;
        if (v31 == v33)
        {
          v27 = v38;
        }

        [objc_msgSend(*(&v138->mText0Images + 1) objectAtIndex:{v25), "CGPointValue"}];
        width = v138->super.mPixelSize.width;
        *&v40 = (v40 + v40) / width;
        *&v42 = (v42 + v42) / width;
        v43 = x + *&v40;
        v44 = *&v42;
        a4 = v146;
        [v146 localAspectRatio];
        v46 = v145 / v45 + v44;
        if (v39 >= 1.0)
        {
          a5 = v143;
          [(MREffectOrigamiTitle *)v138 renderStillImage:v29 withKey:@"text0" inContext:v146 withArguments:v143 inRect:0 withAttributes:v43, v46, v35, v37];
        }

        else
        {
          if (v31 == v33)
          {
            v47 = &v167;
          }

          else
          {
            v47 = 0;
          }

          a5 = v143;
          [(MREffectOrigamiTitle *)v138 renderFallImage:v29 atProgress:v146 strength:v143 inContext:v139 withArguments:v47 inRect:v39 withAttributes:v24 * 0.1 + 0.3];
        }

        v25 = (v25 + 1);
        if ([*&v138->mLineWordCounts[1] count] <= v25)
        {
          v48 = v149 + 1;
        }

        else
        {
          v48 = [objc_msgSend(*&v138->mLineWordCounts[1] objectAtIndex:{v25), "integerValue"}];
          if (v48 == v149)
          {
            continue;
          }
        }

        v49 = v23 + *(&v138->mText0Image + v24 + 1);
        if (v48 >= v49)
        {
          do
          {
            v23 = v49;
            v49 = v49 + *(&v138->mText0Image + ++v24 + 1);
          }

          while (v48 >= v49);
          v141 = v167;
          v148 = v27;
        }
      }

      v147 = [obj countByEnumeratingWithState:&v152 objects:v178 count:16];
      if (!v147)
      {
LABEL_36:
        v8 = v138;
        a3 = v134;
        v11 = v133;
        break;
      }
    }
  }

  [*(&v8->mText0Renderer + 1) fakeRenderInContext:a4 atPosition:x andSize:v145 zRotation:{*&v136, 0.0}];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = [(NSString *)v8->super.mEffectID hasSuffix:@"1"];
    if (v50)
    {
      v51 = v13 * -0.3333333;
    }

    else
    {
      v51 = -v13;
    }

    if (v50)
    {
      v52 = 2.0;
    }

    else
    {
      v52 = 0.6666667;
    }

    v53 = 1.3333333;
    if (!v50)
    {
      v53 = 2.0;
    }

    v54 = v13 * v53;
    v55 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](v8->super.mEffectLayer "slideProvidersForElementIDs")];
    v56 = a4;
    v57 = v55;
    mPhaseInDuration = v8->super.mPhaseInDuration;
    if (mPhaseInDuration <= a3)
    {
      [(MREffectOrigamiTitle *)v8 renderBreakImage:v55 atProgress:@"image0" withKey:v56 inContext:a5 withArguments:0 inRect:(a3 - mPhaseInDuration) / v8->super.mMainDuration withAttributes:-1.0, v51, v52, v54];
    }

    else
    {
      [(MREffectOrigamiTitle *)v8 renderFallBreakImage:v55 atProgress:v56 inContext:a5 withArguments:v139 inRect:0 withAttributes:a3];
    }

    goto LABEL_97;
  }

LABEL_48:
  mDefaultPhaseInDuration = v8->super.mDefaultPhaseInDuration;
  if (v137 <= mDefaultPhaseInDuration)
  {
    goto LABEL_98;
  }

  v60 = v137 - mDefaultPhaseInDuration;
  if (![(NSString *)v8->super.mEffectID hasSuffix:@"5"])
  {
    v69 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](v8->super.mEffectLayer "slideProvidersForElementIDs")];
    v70 = a4;
    v57 = v69;
    v71 = v60 * v8->super.mMainDuration / v8->super.mDefaultMainDuration / 1.33333333;
    v72 = v13 + v13;
    v73 = -v13;
    v74 = v72;
    if (v71 < 1.0)
    {
      v75 = v71;
      v76 = CGPointZero.x;
      v77 = CGPointZero.y;
      v78 = -1.0;
      v79 = 2.0;
      v80 = v8;
      v81 = v57;
      v82 = v70;
      v83 = a5;
      v84 = -v13;
LABEL_94:
      [(MREffectOrigamiTitle *)v80 renderFallImage:v81 atProgress:v82 inContext:v83 withArguments:v139 inRect:0 withAttributes:v75];
LABEL_97:
      [v57 releaseByUser];
      a4 = v146;
      goto LABEL_98;
    }

    v85 = @"image0";
    v86 = -1.0;
    v87 = 2.0;
    v88 = v8;
    v89 = v57;
    v90 = a5;
    v91 = -v13;
    v92 = v74;
LABEL_96:
    [(MREffectOrigamiTitle *)v88 renderStillImage:v89 withKey:v85 inContext:v70 withArguments:v90 inRect:0 withAttributes:v86, v91, v87, v92];
    goto LABEL_97;
  }

  if (v60 > 0.2)
  {
    v61 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](v8->super.mEffectLayer "slideProvidersForElementIDs")];
    v62 = a4;
    v63 = v61;
    v64 = (v60 + -0.2) * v8->super.mMainDuration / v8->super.mDefaultMainDuration / 1.33333333;
    v65 = v13;
    v66 = v13 + v13;
    v67 = -v65;
    v68 = v66;
    if (v64 >= 1.0)
    {
      [(MREffectOrigamiTitle *)v8 renderStillImage:v61 withKey:@"image3" inContext:v62 withArguments:a5 inRect:0 withAttributes:0.333333343, v67, 0.666666687, v68];
    }

    else
    {
      [(MREffectOrigamiTitle *)v8 renderFallImage:v61 atProgress:v62 inContext:a5 withArguments:v139 inRect:0 withAttributes:v64];
    }

    [v63 releaseByUser];
    a4 = v146;
  }

  if (v60 >= 3.0 && v60 < 3.5)
  {
    v94 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](v8->super.mEffectLayer "slideProvidersForElementIDs")];
    v95 = v13;
    v96 = -v13;
    [(MREffectOrigamiTitle *)v8 renderStillImage:v94 withKey:@"image1" inContext:v146 withArguments:a5 inRect:0 withAttributes:-0.166666667, v96, 0.5, v95 * 0.75];
    [v94 releaseByUser];
    v97 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](v8->super.mEffectLayer "slideProvidersForElementIDs")];
    a4 = v146;
    v98 = v96;
    v13 = v95;
    [(MREffectOrigamiTitle *)v8 renderStillImage:v97 withKey:@"image2" inContext:v146 withArguments:a5 inRect:0 withAttributes:-1.0, v98, 0.833333333, v95 * 0.75];
    [v97 releaseByUser];
  }

  if (v60 <= 3.0)
  {
    [*(&v8->mPatchworkAtEnd + 1) removeObjectForKey:@"image4"];
  }

  else
  {
    v99 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](v8->super.mEffectLayer "slideProvidersForElementIDs")];
    if (v60 >= 4.0)
    {
      v111 = v13;
      v112 = v13 + v13;
      [(MREffectOrigamiTitle *)v8 renderStillImage:v99 withKey:@"image4" inContext:a4 withArguments:a5 inRect:0 withAttributes:-1.0, -v111, 1.33333337, v112];
    }

    else
    {
      v100 = (v60 + -3.0) * v8->super.mMainDuration / v8->super.mDefaultMainDuration;
      *&v100 = v100;
      [*(&v8->mBreakCurve + 1) valueAtTime:v100];
      v102 = __sincosf_stret(3.1416 - v101);
      v103 = v13;
      v104 = v13 + v13;
      LODWORD(v167.x) = -1082130432;
      v105 = -v103;
      v106 = v104 * 0.375;
      *&v107 = v105 + (1.0 - v102.__cosval) * v106;
      *&v108 = v106 * v102.__sinval;
      *(&v167.x + 4) = __PAIR64__(v108, v107);
      HIDWORD(v167.y) = 1051372204;
      v168 = v107;
      v169 = v108;
      v170[0] = -1.0;
      v109 = v105 + v106;
      v170[1] = v109;
      v171 = 0x3EAAAAAC00000000;
      v172 = v109;
      v173 = 0xBF80000000000000;
      v174 = v104 - v103;
      v175 = 0x3EAAAAAC00000000;
      v176 = v104 - v103;
      v177 = 0;
      v165 = xmmword_1639F0;
      v166[0] = unk_163A00;
      HIDWORD(v110) = 1065353216;
      v166[1] = xmmword_163A10;
      LOBYTE(v151.x) = 0;
      *&v110 = 1.3333 / v104;
      [v99 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v151 state:v110];
      [a4 cull:1];
      SetLightingColors(v156, &v167, *[a4 foreColor]);
      [v146 setShader:@"ColoredTexture"];
      [v146 setVertex3DPointer:&v167];
      [v146 setTextureCoordinatesPointer:&v165 onTextureUnit:0];
      [v146 setColorsPointer:v156];
      [v146 drawTriangleStripFromOffset:0 count:4];
      [v146 unsetColorsPointer];
      [v146 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [v146 unsetVertexPointer];
      [v146 unsetShader];
      SetLightingColors(v156, v170, *[v146 foreColor]);
      a4 = v146;
      [v146 setShader:@"ColoredTexture"];
      [v146 setVertex3DPointer:v170];
      v8 = v138;
      [v146 setTextureCoordinatesPointer:v166 onTextureUnit:0];
      [v146 setColorsPointer:v156];
      [v146 drawTriangleStripFromOffset:0 count:4];
      [v146 unsetColorsPointer];
      [v146 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [v146 unsetVertexPointer];
      [v146 unsetShader];
      [v146 cull:0];
      [v99 unsetOnContext:v146 onTextureUnit:0 state:&v151];
    }

    [v99 releaseByUser];
  }

  v151 = CGPointZero;
  if (v60 < 3.5)
  {
    v113 = a3;
    v114 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](v8->super.mEffectLayer "slideProvidersForElementIDs")];
    mMainDuration = v8->super.mMainDuration;
    mDefaultMainDuration = v8->super.mDefaultMainDuration;
    v117 = v60 * mMainDuration / mDefaultMainDuration / 1.33333333;
    v118 = v13 * -0.25;
    v119 = v13;
    v120 = v13 * 1.25;
    if (v117 >= 1.0)
    {
      if (v60 >= 3.0)
      {
        v121 = (v60 + -3.0) * mMainDuration / mDefaultMainDuration;
        *&v121 = v121;
        [*(&v8->mBreakCurve + 1) valueAtTime:v121];
        v123 = __sincosf_stret(3.1416 - v122);
        v156[0] = -1.0;
        v156[1] = v118;
        v157 = 0xBF80000000000000;
        v158 = v118 - (v123.__cosval * v120);
        v159 = v123.__sinval * v120;
        v160 = 1051372204;
        v161 = v118;
        v162 = 0x3EAAAAAC00000000;
        v163 = v158;
        v164 = v123.__sinval * v120;
        HIDWORD(v124) = -1082130432;
        v165 = xmmword_163A20;
        v166[0] = unk_163A30;
        v150 = 0;
        *&v124 = 1.3333 / v120;
        [v114 setOnContext:a4 onTextureUnit:0 withReferenceAspectRatio:&v150 state:v124];
        [a4 cull:2];
        SetLightingColors(&v167, v156, *[a4 foreColor]);
        [a4 setShader:@"ColoredTexture"];
        [a4 setVertex3DPointer:v156];
        [a4 setTextureCoordinatesPointer:&v165 onTextureUnit:0];
        [a4 setColorsPointer:&v167];
        [a4 drawTriangleStripFromOffset:0 count:4];
        [a4 unsetColorsPointer];
        [a4 unsetTextureCoordinatesPointerOnTextureUnit:0];
        [a4 unsetVertexPointer];
        [a4 unsetShader];
        [a4 cull:0];
        [v114 unsetOnContext:a4 onTextureUnit:0 state:&v150];
      }

      else
      {
        [(MREffectOrigamiTitle *)v8 renderStillImage:v114 withKey:@"image0" inContext:a4 withArguments:a5 inRect:0 withAttributes:-1.0, v118, 1.33333337, v120];
      }
    }

    else
    {
      [(MREffectOrigamiTitle *)v8 renderFallImage:v114 atProgress:a4 inContext:a5 withArguments:v139 inRect:&v151 withAttributes:v117];
    }

    [v114 releaseByUser];
    a3 = v113;
    v13 = v119;
  }

  if (v60 > 0.075 && v60 < 3.0)
  {
    v126 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](v8->super.mEffectLayer "slideProvidersForElementIDs")];
    v127 = a4;
    v128 = v126;
    v129 = (v60 + -0.075) * v8->super.mMainDuration / v8->super.mDefaultMainDuration / 1.33333333;
    if (v129 >= 1.0)
    {
      [(MREffectOrigamiTitle *)v8 renderStillImage:v126 withKey:@"image2" inContext:v127 withArguments:a5 inRect:0 withAttributes:-1.0, -v13, 0.833333333, v13 * 0.75];
    }

    else
    {
      [(MREffectOrigamiTitle *)v8 renderFallImage:v126 atProgress:v127 inContext:a5 withArguments:v139 inRect:0 withAttributes:v129];
    }

    [v128 releaseByUser];
    a4 = v146;
  }

  if (v60 > 0.05 && v60 < 3.0)
  {
    v131 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](v8->super.mEffectLayer "slideProvidersForElementIDs")];
    v70 = a4;
    v57 = v131;
    v132 = (v60 + -0.05) * v8->super.mMainDuration / v8->super.mDefaultMainDuration / 1.2;
    v73 = v13 * 0.75;
    if (v132 < 1.0)
    {
      v75 = v132;
      v77 = v151.y;
      v76 = v151.x;
      v78 = -0.166666667;
      v79 = 0.5;
      v80 = v8;
      v81 = v57;
      v84 = -v13;
      v74 = v13 * 0.75;
      v82 = v70;
      v83 = a5;
      goto LABEL_94;
    }

    v85 = @"image1";
    v86 = -0.166666667;
    v87 = 0.5;
    v88 = v8;
    v89 = v57;
    v90 = a5;
    v91 = -v13;
    v92 = v13 * 0.75;
    goto LABEL_96;
  }

LABEL_98:
  [a4 blend:0];
}

- (void)renderTextEffectAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  [a4 localAspectRatio];
  width = 1.0;
  v11 = 1.0 / v9;
  [*(&self->mText0Offsets + 1) relativeSizeInContextPixelSize:{self->super.mPixelSize.width, self->super.mPixelSize.height}];
  v13 = v12;
  v25 = v14;
  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-Text"])
  {
    v15 = 0;
    y = -v11;
    height = v11 + v11;
    v18 = -0.5;
    v19 = 0.0;
    x = 0.0;
    goto LABEL_10;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LText1"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami3-LText1"])
  {
    v15 = 0;
    y = v11 * -0.5;
    height = v11 * 1.5;
    v18 = v13 * 0.5 + -0.85;
    x = -1.0;
    width = 2.0;
    v19 = -0.75;
    goto LABEL_10;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LText2"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami3-LText2"])
  {
    v15 = 0;
    y = -v11;
    height = v11 + v11;
    v18 = v13 * -0.5 + -0.1;
    x = 0.0;
LABEL_9:
    v19 = -0.3333333;
    goto LABEL_10;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LTextP1"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami3-LTextP1"])
  {
    y = v11 * -0.3333333;
    height = v11 * 1.3333333;
    v18 = v13 * 0.5 + -0.85;
    x = -1.0;
    width = 2.0;
    v15 = 1;
    v19 = -0.6666667;
  }

  else
  {
    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LTextP2"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami3-LTextP2"])
    {
      y = -v11;
      height = v11 + v11;
      v18 = v13 * 0.5 + -0.23333333;
      x = -1.0;
      v15 = 1;
      width = 0.6666667;
      goto LABEL_9;
    }

    v15 = 0;
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v18 = CGPointZero.x;
    v19 = CGPointZero.y;
  }

LABEL_10:
  v21 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  if (v15)
  {
    v22 = (a3 - self->super.mPhaseInDuration) / self->super.mMainDuration;
    v23 = 0.0;
    if (v22 >= 0.0)
    {
      v23 = (a3 - self->super.mPhaseInDuration) / self->super.mMainDuration;
      if (v22 > 1.0)
      {
        v23 = 1.0;
      }
    }

    [(MREffectOrigamiTitle *)self renderBreakImage:v21 atProgress:@"image0" withKey:a4 inContext:a5 withArguments:0 inRect:v23 withAttributes:x, y, width, height];
  }

  else
  {
    [(MREffectOrigamiTitle *)self renderStillImage:v21 withKey:@"image0" inContext:a4 withArguments:a5 inRect:0 withAttributes:x, y, width, height];
  }

  [v21 releaseByUser];
  if ([(NSString *)[(MRLayerEffect *)self->super.mEffectLayer editedElement] isEqualToString:@"text0"]&& [(MRLayerEffect *)self->super.mEffectLayer _hideTextWhileEditing])
  {
    v24 = *(&self->mText0Renderer + 1);

    [v24 fakeRenderInContext:a4 atPosition:v18 andSize:v19 zRotation:{v13, v25, 0.0}];
  }

  else
  {
    [a4 blend:2];
    [a4 setShader:@"PlainTexture"];
    [*(&self->mText0Renderer + 1) renderImage:*(&self->mText0Offsets + 1) inContext:a4 atPosition:v18 andSize:v19 zRotation:{v13, v25, 0.0}];
    [a4 unsetShader];

    [a4 blend:0];
  }
}

- (id)elementHitAtPoint:(CGPoint)a3 withInverseMatrix:(float)a4[16] localPoint:(CGPoint *)a5
{
  y = a3.y;
  x = a3.x;
  if (([*(&self->mText0Renderer + 1) hitAtPoint:? withInverseMatrix:? localPoint:?] & 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = *(&self->mPatchworkAtEnd + 1);
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v12)
    {
      return 0;
    }

    v13 = v12;
    v10 = 0;
    v14 = *v22;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v21 + 1) + 8 * v15);
      v17 = [*(&self->mPatchworkAtEnd + 1) objectForKey:{v16, v20}];
      v20 = 0;
      if (!v17 || ![v17 hitAtPoint:a4 withInverseMatrix:&v20 localPoint:{x, y}])
      {
        goto LABEL_20;
      }

      if (v10)
      {
        break;
      }

      if (a5)
      {
        goto LABEL_18;
      }

LABEL_19:
      v10 = v16;
LABEL_20:
      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (!v13)
        {
          return v10;
        }

        goto LABEL_5;
      }
    }

    if ([v16 compare:v10] == -1)
    {
      v10 = v16;
      v18 = a5 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_20;
    }

LABEL_18:
    *a5 = v20;
    goto LABEL_19;
  }

  return @"text0";
}

- (BOOL)getVerticesCoordinates:(MREffectOrigamiTitle *)self withMatrix:(SEL)a2 forElement:(CGPoint *)(a3
{
  if ([a5 isEqualToString:@"text0"])
  {
    v9 = *(&self->mText0Renderer + 1);
  }

  else
  {
    v9 = [*(&self->mPatchworkAtEnd + 1) objectForKey:a5];
    if (!v9)
    {
      return v9;
    }
  }

  LOBYTE(v9) = [v9 getVerticesCoordinates:a3 withMatrix:a4];
  return v9;
}

- (void)renderFallImage:(id)a3 atProgress:(double)a4 strength:(double)a5 inContext:(id)a6 withArguments:(id)a7 inRect:(CGRect)a8 withAttributes:(id)a9 :(CGPoint *)a10 :(CGPoint)a11
{
  y = a11.y;
  x = a11.x;
  v17 = a8.origin.x;
  v18 = a8.origin.y;
  width = a8.size.width;
  height = a8.size.height;
  if (a4 <= 0.0)
  {
    v23 = -3.1416;
  }

  else
  {
    v21 = a4 * 18.8495559;
    v22 = a4 * 18.8495559;
    v23 = a5 * 6.28318531 * sinf(v22) / v21;
  }

  if (v23 < -3.14159265)
  {
    v23 = 3.1416;
  }

  if (v23 > 3.14159265)
  {
    v23 = 3.1416;
  }

  v24 = __sincosf_stret(v23);
  v25 = [objc_msgSend(a9 objectForKey:{@"direction", "isEqualToString:", @"back"}];
  v26 = 1.0 - v24.__cosval;
  v27 = x + v18 + v26 * height;
  v37[0] = v17;
  v37[1] = v27;
  v28 = -height;
  if (!v25)
  {
    v28 = height;
  }

  v29 = (v28 * v24.__sinval);
  v30 = y + v29;
  v37[2] = v30;
  v37[3] = v17;
  v31 = x + (v18 + height);
  v32 = y;
  v37[4] = v31;
  v37[5] = v32;
  v37[6] = v17 + width;
  v37[7] = x + v18 + v26 * height;
  v37[8] = v30;
  v37[9] = v17 + width;
  v37[10] = v31;
  v37[11] = v32;
  if (a10)
  {
    a10->x = v26 * height;
    a10->y = v29;
  }

  HIDWORD(v33) = -1082130432;
  v36[0] = xmmword_163A20;
  v36[1] = unk_163A30;
  v34 = 0;
  *&v33 = width / height;
  [a3 setOnContext:a6 onTextureUnit:0 withReferenceAspectRatio:&v34 state:v33];
  [a6 cull:2];
  SetLightingColors(v35, v37, *[a6 foreColor]);
  [a6 setShader:@"ColoredTexture"];
  [a6 setVertex3DPointer:v37];
  [a6 setTextureCoordinatesPointer:v36 onTextureUnit:0];
  [a6 setColorsPointer:v35];
  [a6 drawTriangleStripFromOffset:0 count:4];
  [a6 unsetColorsPointer];
  [a6 unsetTextureCoordinatesPointerOnTextureUnit:0];
  [a6 unsetVertexPointer];
  [a6 unsetShader];
  [a6 cull:0];
  [a3 unsetOnContext:a6 onTextureUnit:0 state:&v34];
}

- (void)renderFallImage:(id)a3 atProgress:(double)a4 inContext:(id)a5 withArguments:(id)a6 inRect:(CGRect)a7 withAttributes:(id)a8 :(CGPoint *)a9 :(CGPoint)a10
{
  y = a10.y;
  x = a10.x;
  v16 = a7.origin.x;
  v17 = a7.origin.y;
  width = a7.size.width;
  height = a7.size.height;
  *&a4 = a4;
  [*(&self->mBreakCurve + 1) valueAtTime:{a3, a5, a6, a4}];
  v21 = 3.1416 - v20;
  if (y != 0.0)
  {
    v21 = fmax(v21 * 2.5, -3.14159265);
    if (v21 > 3.14159265)
    {
      v21 = 3.1416;
    }
  }

  v24 = __sincosf_stret(v21);
  cosval = v24.__cosval;
  LODWORD(v22) = *&v24;
  v25 = [objc_msgSend(a8 objectForKey:{@"direction", "isEqualToString:", @"back"}];
  v26 = x + (v17 + ((1.0 - cosval) * height));
  v38[0] = v16;
  v38[1] = v26;
  v27 = -height;
  if (!v25)
  {
    v27 = height;
  }

  v28 = (v22 * v27);
  v29 = y + v28;
  v38[2] = v29;
  v38[3] = v16;
  v30 = x + (v17 + height);
  v31 = y;
  v38[4] = v30;
  v38[5] = v31;
  v38[6] = v16 + width;
  v38[7] = x + (v17 + ((1.0 - cosval) * height));
  v38[8] = v29;
  v38[9] = v16 + width;
  v38[10] = v30;
  v38[11] = v31;
  if (a9)
  {
    a9->x = ((1.0 - cosval) * height);
    a9->y = v28;
  }

  v37[0] = xmmword_163A20;
  v37[1] = unk_163A30;
  v34 = 0;
  [a3 setUsesBackgroundColorAsBorderColor:1];
  LODWORD(v32) = 1.0;
  [a5 setBackColorRed:v36 green:0.0 blue:0.0 alpha:0.0 saveTo:v32];
  *&v33 = width / height;
  [a3 setOnContext:a5 onTextureUnit:0 withReferenceAspectRatio:&v34 state:v33];
  [a5 cull:2];
  SetLightingColors(v35, v38, *[a5 foreColor]);
  [a5 setShader:@"ColoredTexture"];
  [a5 setVertex3DPointer:v38];
  [a5 setTextureCoordinatesPointer:v37 onTextureUnit:0];
  [a5 setColorsPointer:v35];
  [a5 drawTriangleStripFromOffset:0 count:4];
  [a5 unsetColorsPointer];
  [a5 unsetTextureCoordinatesPointerOnTextureUnit:0];
  [a5 unsetVertexPointer];
  [a5 unsetShader];
  [a5 cull:0];
  [a3 unsetOnContext:a5 onTextureUnit:0 state:&v34];
  [a5 setBackColor:v36 saveTo:0];
}

- (void)renderFallBreakImage:(id)a3 atProgress:(double)a4 inContext:(id)a5 withArguments:(id)a6 inRect:(CGRect)a7 withAttributes:(id)a8 :(CGPoint *)a9 :(CGPoint)a10
{
  y = a10.y;
  x = a10.x;
  height = a7.size.height;
  width = a7.size.width;
  v17 = a7.origin.y;
  v18 = a7.origin.x;
  [a3 aspectRatio];
  v23 = v22;
  if (v22 >= 0.5 && v22 <= 2.0)
  {
    goto LABEL_8;
  }

  v25 = width / height / v22;
  if (v23 >= 1.0)
  {
    v25 = v23 / (width / height);
  }

  if (v25 < 1.1)
  {
LABEL_8:

    [(MREffectOrigamiTitle *)self renderFallImage:a3 atProgress:a5 inContext:a6 withArguments:0 inRect:a9 withAttributes:a4];
  }

  else
  {
    v80 = y;
    v26 = [objc_msgSend(objc_msgSend(-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"breakInformation", "objectForKey:", @"image0", "objectForKey:", @"panEndDirection", "intValue"}];
    v27 = width;
    v28 = height;
    if (v27 >= v28)
    {
      v29 = height;
    }

    else
    {
      v29 = v27;
    }

    v78 = v29;
    v75 = v27;
    if (v23 <= 1.0)
    {
      [a3 height];
      v36 = v35;
      [a3 width];
      v33 = v36 * v27 - v37 * v28;
      [a3 width];
    }

    else
    {
      [a3 width];
      v31 = v30;
      [a3 height];
      v33 = v31 * v28 - v32 * v27;
      [a3 height];
    }

    v38 = v18;
    v39 = v17;
    v40 = v33 / (v34 * v78);
    v41 = v40;
    v42 = vcvtps_u32_f32(v41);
    if (v40 <= 0.0)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    [a3 scale];
    v79 = v44;
    [a3 centerX];
    v77 = v45;
    [a3 centerY];
    v76 = v46;
    [a3 setScale:1.0];
    [a3 setCenterX:0.0];
    [a3 setCenterY:0.0];
    if (v23 <= 1.0)
    {
      if (v40 <= 0.0)
      {
        v56 = v28;
        v55 = v80;
        v49 = v75;
      }

      else
      {
        v49 = v75;
        v56 = v75 / v23;
        v55 = v80;
      }

      v47 = 1.0 / v56;
      if (v43)
      {
        v57 = (v56 - v28) / (v56 * v43);
        v58 = v57 + v57;
        v59 = 0.0;
        if (v26 == -1)
        {
          v59 = v43;
        }

        v60 = v58 * v59 + -1.0;
      }

      else
      {
        v60 = -1.0;
      }

      v61 = v60 + (v28 + v28) * v47;
      if (!v43)
      {
        v61 = 1.0;
      }

      v62 = v60;
      v85 = -1.0;
      v86 = v62;
      v87 = -1.0;
      v88 = LODWORD(v61);
      v89 = 1065353216;
      v90 = v62;
      v91 = 1065353216;
      v92 = LODWORD(v61);
      v54 = v47 * v49;
    }

    else
    {
      v47 = v28;
      v48 = v23 * v28;
      if (v40 <= 0.0)
      {
        v48 = v75;
      }

      v49 = v75;
      v50 = v43;
      if (v26 != -1)
      {
        v50 = 0.0;
      }

      v51 = v50 * ((v48 - v75) / (v48 * v43)) * 2.0 + -1.0;
      if (!v43)
      {
        v51 = -1.0;
      }

      v52 = v51 + (v75 + v75) * (1.0 / v48);
      if (!v43)
      {
        v52 = 1.0;
      }

      v53 = v51;
      v85 = v53;
      v86 = -1.0;
      v87 = v53;
      v88 = 1065353216;
      v89 = LODWORD(v52);
      v90 = -1.0;
      v91 = LODWORD(v52);
      v92 = 1065353216;
      v54 = v48 / v47;
      v55 = v80;
    }

    *&v47 = a4;
    [*(&self->mBreakCurve + 1) valueAtTime:v47];
    v66 = __sincosf_stret(3.1416 - v63);
    cosval = v66.__cosval;
    LODWORD(v64) = *&v66;
    v67 = [objc_msgSend(a8 objectForKey:{@"direction", "isEqualToString:", @"back"}];
    v69 = x + (v39 + ((1.0 - cosval) * v28));
    v84[0] = v38;
    v84[1] = v69;
    v70 = -v28;
    if (!v67)
    {
      v70 = v28;
    }

    v71 = (v64 * v70);
    v72 = v55 + v71;
    v84[2] = v72;
    v84[3] = v38;
    v73 = x + (v39 + v28);
    v74 = v55;
    v84[4] = v73;
    v84[5] = v74;
    v84[6] = v38 + v49;
    v84[7] = x + (v39 + ((1.0 - cosval) * v28));
    v84[8] = v72;
    v84[9] = v38 + v49;
    v84[10] = v73;
    v84[11] = v74;
    if (a9)
    {
      v68 = ((1.0 - cosval) * v28);
      a9->x = v68;
      a9->y = v71;
    }

    v82 = 0;
    *&v68 = v54;
    [a3 setOnContext:a5 onTextureUnit:0 withReferenceAspectRatio:&v82 state:v68];
    [a5 cull:2];
    SetLightingColors(v83, v84, *[a5 foreColor]);
    [a5 setShader:@"ColoredTexture"];
    [a5 setVertex3DPointer:v84];
    [a5 setTextureCoordinatesPointer:&v85 onTextureUnit:0];
    [a5 setColorsPointer:v83];
    [a5 drawTriangleStripFromOffset:0 count:4];
    [a5 unsetColorsPointer];
    [a5 unsetTextureCoordinatesPointerOnTextureUnit:0];
    [a5 unsetVertexPointer];
    [a5 unsetShader];
    [a5 cull:0];
    [a3 unsetOnContext:a5 onTextureUnit:0 state:&v82];
    [a3 setScale:v79];
    [a3 setCenterX:v77];
    [a3 setCenterY:v76];
  }
}

- (void)renderStillImage:(id)a3 withKey:(id)a4 inContext:(id)a5 withArguments:(id)a6 inRect:(CGRect)a7 withAttributes:(id)a8
{
  x = a7.origin.x;
  y = a7.origin.y;
  width = a7.size.width;
  height = a7.size.height;
  v33[0] = x;
  v33[1] = y;
  v33[2] = x;
  v33[3] = y + height;
  v33[4] = x + width;
  v33[5] = y;
  v33[6] = x + width;
  v33[7] = y + height;
  v16 = [a8 objectForKey:{@"slideRect", a4, a5, a6}];
  v32[0] = xmmword_163A20;
  v32[1] = unk_163A30;
  if (v16)
  {
    MyGLRectFromString(v16, v32);
  }

  v29 = 0;
  [a3 setUsesBackgroundColorAsBorderColor:{objc_msgSend(a4, "hasPrefix:", @"text"}];
  LODWORD(v17) = 1.0;
  [a5 setBackColorRed:v31 green:0.0 blue:0.0 alpha:0.0 saveTo:v17];
  *&v18 = width / height;
  [a3 setOnContext:a5 onTextureUnit:0 withReferenceAspectRatio:&v29 state:v18];
  *&v19 = SetLightingColors2D(v30, v33, *[a5 foreColor]);
  [a5 setShader:{@"ColoredTexture", v19}];
  [a5 setVertex2DPointer:v33];
  [a5 setTextureCoordinatesPointer:v32 onTextureUnit:0];
  [a5 setColorsPointer:v30];
  [a5 drawTriangleStripFromOffset:0 count:4];
  [a5 unsetColorsPointer];
  [a5 unsetTextureCoordinatesPointerOnTextureUnit:0];
  [a5 unsetVertexPointer];
  [a5 unsetShader];
  [a3 unsetOnContext:a5 onTextureUnit:0 state:&v29];
  [a5 setBackColor:v31 saveTo:0];
  if (([a4 isEqualToString:@"text0"] & 1) == 0)
  {
    v20 = *(&self->mPatchworkAtEnd + 1);
    v21 = [v20 objectForKey:a4];
    if (!v21)
    {
      v21 = objc_alloc_init(MRCroppingSprite);
      [v20 setObject:v21 forKey:a4];
    }

    v22 = width;
    v23 = x + v22 * 0.5;
    v24 = y + height * 0.5;
    v25 = v23;
    [a5 localAspectRatio];
    v27 = (v26 * v24);
    [a5 localAspectRatio];
    [(MRCroppingSprite *)v21 fakeRenderInContext:a5 atPosition:v25 andSize:v27 zRotation:v22, (v28 * height), 0.0];
  }
}

- (void)renderBreakImage:(id)a3 atProgress:(double)a4 withKey:(id)a5 inContext:(id)a6 withArguments:(id)a7 inRect:(CGRect)a8 withAttributes:(id)a9
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  [a3 aspectRatio];
  v20 = v19;
  if (v19 >= 0.5 && v19 <= 2.0)
  {
    goto LABEL_8;
  }

  v22 = width / height / v19;
  if (v20 >= 1.0)
  {
    v22 = v20 / (width / height);
  }

  if (v22 < 1.1)
  {
LABEL_8:

    [(MREffectOrigamiTitle *)self renderStillImage:a3 withKey:a5 inContext:a6 withArguments:a7 inRect:0 withAttributes:x, y, width, height];
    return;
  }

  v23 = [objc_msgSend(objc_msgSend(-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"breakInformation", "objectForKey:", @"image0", "objectForKey:", @"panEndDirection", "intValue"}];
  v24 = width;
  v25 = height;
  if (v24 >= v25)
  {
    v26 = height;
  }

  else
  {
    v26 = v24;
  }

  v155 = v26;
  v153 = v24;
  v154 = height;
  if (v20 <= 1.0)
  {
    [a3 height];
    v33 = v32;
    [a3 width];
    v30 = v33 * v24 - v34 * v25;
    [a3 width];
  }

  else
  {
    [a3 width];
    v28 = v27;
    [a3 height];
    v30 = v28 * v25 - v29 * v24;
    [a3 height];
  }

  v35 = v30 / (v31 * v155);
  v36 = v35;
  v37 = vcvtps_u32_f32(v36);
  mMainDuration = self->super.mMainDuration;
  if (v35 <= 0.0)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  v40 = 0.6 / mMainDuration;
  v41 = 1.0;
  if (v39)
  {
    v41 = (mMainDuration + v39 * -0.6) / (mMainDuration * (v39 + 1));
  }

  v42 = x;
  v149 = v42;
  v43 = y;
  v156 = v43;
  v44 = vcvtmd_u64_f64(a4 / (v40 + v41));
  v45 = fmod(a4, v40 + v41);
  if (v39 >= v44)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0.0;
  }

  if (v39 < v44)
  {
    v44 = v39;
  }

  [a3 scale];
  v152 = v47;
  [a3 centerX];
  v151 = v48;
  [a3 centerY];
  v150 = v49;
  [a3 setScale:1.0];
  [a3 setCenterX:0.0];
  [a3 setCenterY:0.0];
  if (v20 <= 1.0)
  {
    v88 = v154;
    if (v35 <= 0.0)
    {
      v89 = v154;
    }

    else
    {
      v89 = v24 / v20;
    }

    v92 = (v89 - v88) / (v89 * v39);
    v93 = 1.0 / v89;
    if (v46 <= v41)
    {
      v77 = v149;
      v87 = v154;
      v166 = v149;
      v167 = v156;
      v168 = v149;
      v169 = v156 + v154;
      v24 = v153;
      v170 = v149 + v153;
      v171 = v156;
      v172 = v149 + v153;
      v173 = v156 + v154;
      if (v39)
      {
        v128 = v39 - v44;
        if (v23 != -1)
        {
          v128 = v44;
        }

        v129 = (v92 + v92) * v128 + -1.0;
      }

      else
      {
        v129 = -1.0;
      }

      if (v39)
      {
        v136 = v129 + (v154 + v154) * v93;
      }

      else
      {
        v136 = 1.0;
      }

      v158 = -1.0;
      v137 = v129;
      v159 = v137;
      v160 = -1.0;
      v138 = v136;
      v161 = v138;
      v162 = 1.0;
      v163 = v137;
      v164 = 1.0;
      v165 = v138;
      v157 = 0;
      v139 = v93 * v153;
      *&v139 = v139;
      [a3 setOnContext:a6 onTextureUnit:0 withReferenceAspectRatio:&v157 state:v139];
      *&v140 = SetLightingColors2D(&v182, &v166, *[a6 foreColor]);
      [a6 setShader:{@"ColoredTexture", v140}];
      [a6 setVertex2DPointer:&v166];
      [a6 setTextureCoordinatesPointer:&v158 onTextureUnit:0];
      [a6 setColorsPointer:&v182];
      [a6 drawTriangleStripFromOffset:0 count:4];
      [a6 unsetColorsPointer];
      [a6 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [a6 unsetVertexPointer];
      [a6 unsetShader];
      [a3 unsetOnContext:a6 onTextureUnit:0 state:&v157];
      v126 = *(&self->mBackColorForImage[2] + 1);
      v127 = (v129 + v136) / (v136 - v129);
    }

    else
    {
      [*(&self->mWordCount + 1) evaluatAtTime:(v46 - v41) / v40];
      v95 = v94;
      v96 = 0.5;
      v97 = v89 * 0.5 * v92;
      *&v94 = v94 * 1.57079633;
      v98 = __sincosf_stret(*&v94);
      v99 = v97 * v98.__cosval;
      v100 = -(v97 * v98.__sinval);
      v87 = v154;
      v101 = v99 + v156;
      v102 = v99 + v101;
      v103 = (v92 + v92) * v44 + -1.0;
      v104 = v92 + v103;
      v105 = v92 + v92 + v103;
      v106 = 2.0;
      v107 = (v156 + v154) - v99;
      v108 = v107 - v99;
      v109 = (v93 * v88 + v92 * (v39 - v44)) * 2.0 + -1.0;
      v110 = v109 - v92;
      v111 = v109 - v92 - v92;
      if (v23 == -1)
      {
        v106 = -2.0;
        v103 = (v93 * v88 + v92 * (v39 - v44)) * 2.0 + -1.0;
        v96 = -0.5;
        v112 = v156 + v154;
      }

      else
      {
        v112 = v156;
      }

      if (v23 == -1)
      {
        v101 = v107;
        v113 = v156;
      }

      else
      {
        v108 = v102;
        v113 = v156 + v154;
      }

      if (v23 == -1)
      {
        v114 = v110;
      }

      else
      {
        v114 = v104;
      }

      if (v23 == -1)
      {
        v115 = v111;
      }

      else
      {
        v115 = v105;
      }

      v116 = v88 + (v97 + v97) * v95;
      v77 = v149;
      v182 = v149;
      v183 = v112;
      v184 = 0;
      v24 = v153;
      v185 = v149 + v153;
      v186 = v112;
      v187 = 0;
      v117 = v101;
      v188 = v149;
      v189 = v117;
      v118 = v100;
      v190 = v118;
      v191 = v149 + v153;
      v192 = v117;
      v193 = v118;
      v119 = v108;
      v194 = v149;
      v195 = v119;
      v196 = 0;
      v197 = v149 + v153;
      v198 = v119;
      v199 = 0;
      v120 = v103 + v116 * v106 * v93;
      v200 = v149;
      v201 = v113;
      v202 = 0;
      v203 = v149 + v153;
      v204 = v113;
      v205 = 0;
      v166 = -1.0;
      v121 = v103;
      v167 = v121;
      v168 = 1.0;
      v169 = v121;
      v170 = -1.0;
      v122 = v114;
      v171 = v122;
      v172 = 1.0;
      v173 = v122;
      v174 = -1.0;
      v123 = v115;
      v175 = v123;
      v176 = 1.0;
      v177 = v123;
      v178 = -1.0;
      v124 = v120;
      v179 = v124;
      v180 = 1.0;
      v181 = v124;
      v157 = 0;
      v125 = v93 * v153;
      *&v125 = v125;
      [a3 setOnContext:a6 onTextureUnit:0 withReferenceAspectRatio:&v157 state:v125];
      SetLightingColors(&v158, &v182, *[a6 foreColor]);
      [a6 setShader:@"ColoredTexture"];
      [a6 setVertex3DPointer:&v182];
      [a6 setTextureCoordinatesPointer:&v166 onTextureUnit:0];
      [a6 setColorsPointer:&v158];
      [a6 drawTriangleStripFromOffset:0 count:4];
      [a6 unsetColorsPointer];
      [a6 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [a6 unsetVertexPointer];
      [a6 unsetShader];
      SetLightingColors(&v158, &v188, *[a6 foreColor]);
      [a6 setShader:@"ColoredTexture"];
      [a6 setVertex3DPointer:&v188];
      [a6 setTextureCoordinatesPointer:&v170 onTextureUnit:0];
      [a6 setColorsPointer:&v158];
      [a6 drawTriangleStripFromOffset:0 count:4];
      [a6 unsetColorsPointer];
      [a6 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [a6 unsetVertexPointer];
      [a6 unsetShader];
      SetLightingColors(&v158, &v194, *[a6 foreColor]);
      [a6 setShader:@"ColoredTexture"];
      [a6 setVertex3DPointer:&v194];
      [a6 setTextureCoordinatesPointer:&v174 onTextureUnit:0];
      [a6 setColorsPointer:&v158];
      [a6 drawTriangleStripFromOffset:0 count:4];
      [a6 unsetColorsPointer];
      [a6 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [a6 unsetVertexPointer];
      [a6 unsetShader];
      [a3 unsetOnContext:a6 onTextureUnit:0 state:&v157];
      v126 = *(&self->mBackColorForImage[2] + 1);
      v127 = v120 / ((v88 + v88) * v93) - v96;
    }

    [a3 aspectRatio];
    v135 = v127 * v141 / (v24 / v87);
  }

  else
  {
    v50 = v154;
    v51 = v24;
    if (v35 <= 0.0)
    {
      v52 = v24;
    }

    else
    {
      v52 = v20 * v154;
    }

    v53 = (v52 - v51) / (v52 * v39);
    if (v46 > v41)
    {
      v54 = 1.0 / v52;
      v148 = v154;
      [*(&self->mWordCount + 1) evaluatAtTime:(v46 - v41) / v40];
      v56 = v55;
      v57 = v52 * 0.5 * v53;
      *&v55 = v55 * 1.57079633;
      v58 = __sincosf_stret(*&v55);
      v59 = v57 * v58.__cosval;
      v60 = -(v57 * v58.__sinval);
      v61 = v59 + v149;
      v62 = v59 + v61;
      v63 = (v53 + v53) * v44 + -1.0;
      v64 = v53 + v63;
      v65 = v53 + v53 + v63;
      v66 = 2.0;
      v67 = (v149 + v153) - v59;
      v68 = v67 - v59;
      v69 = (1.0 / v52 * v51 + v53 * (v39 - v44)) * 2.0 + -1.0;
      v70 = v69 - v53;
      v71 = v69 - v53 - v53;
      if (v23 == -1)
      {
        v66 = -2.0;
        v63 = (v54 * v51 + v53 * (v39 - v44)) * 2.0 + -1.0;
        v72 = -0.5;
      }

      else
      {
        v72 = 0.5;
      }

      if (v23 == -1)
      {
        v73 = v71;
      }

      else
      {
        v73 = v65;
      }

      if (v23 == -1)
      {
        v64 = v70;
        v74 = v149;
      }

      else
      {
        v74 = v149 + v153;
      }

      if (v23 == -1)
      {
        v61 = v67;
      }

      else
      {
        v68 = v62;
      }

      if (v23 == -1)
      {
        v75 = v149 + v153;
      }

      else
      {
        v75 = v149;
      }

      v76 = v57 + v57;
      v77 = v149;
      v78 = v63 + (v51 + v76 * v56) * v66 * v54;
      v182 = v75;
      v183 = v156;
      v184 = 0;
      v185 = v75;
      v186 = v156 + v154;
      v187 = 0;
      v79 = v61;
      v188 = v79;
      v189 = v156;
      v80 = v60;
      v190 = v80;
      v191 = v79;
      v192 = v156 + v154;
      v193 = v80;
      v81 = v68;
      v194 = v81;
      v195 = v156;
      v196 = 0;
      v197 = v81;
      v198 = v156 + v154;
      v199 = 0;
      v200 = v74;
      v201 = v156;
      v202 = 0;
      v203 = v74;
      v204 = v156 + v154;
      v205 = 0;
      v82 = v63;
      v166 = v82;
      v167 = -1.0;
      v168 = v82;
      v169 = 1.0;
      v83 = v64;
      v170 = v83;
      v171 = -1.0;
      v172 = v83;
      v173 = 1.0;
      v84 = v73;
      v174 = v84;
      v175 = -1.0;
      v176 = v84;
      v177 = 1.0;
      v85 = v78;
      v178 = v85;
      v179 = -1.0;
      v180 = v85;
      v181 = 1.0;
      v157 = 0;
      v86 = v52 / v148;
      *&v86 = v52 / v148;
      [a3 setOnContext:a6 onTextureUnit:0 withReferenceAspectRatio:&v157 state:v86];
      SetLightingColors(&v158, &v182, *[a6 foreColor]);
      [a6 setShader:@"ColoredTexture"];
      [a6 setVertex3DPointer:&v182];
      [a6 setTextureCoordinatesPointer:&v166 onTextureUnit:0];
      [a6 setColorsPointer:&v158];
      [a6 drawTriangleStripFromOffset:0 count:4];
      [a6 unsetColorsPointer];
      [a6 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [a6 unsetVertexPointer];
      [a6 unsetShader];
      SetLightingColors(&v158, &v188, *[a6 foreColor]);
      [a6 setShader:@"ColoredTexture"];
      [a6 setVertex3DPointer:&v188];
      [a6 setTextureCoordinatesPointer:&v170 onTextureUnit:0];
      [a6 setColorsPointer:&v158];
      [a6 drawTriangleStripFromOffset:0 count:4];
      [a6 unsetColorsPointer];
      [a6 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [a6 unsetVertexPointer];
      [a6 unsetShader];
      SetLightingColors(&v158, &v194, *[a6 foreColor]);
      [a6 setShader:@"ColoredTexture"];
      [a6 setVertex3DPointer:&v194];
      [a6 setTextureCoordinatesPointer:&v174 onTextureUnit:0];
      [a6 setColorsPointer:&v158];
      [a6 drawTriangleStripFromOffset:0 count:4];
      [a6 unsetColorsPointer];
      [a6 unsetTextureCoordinatesPointerOnTextureUnit:0];
      [a6 unsetVertexPointer];
      [a6 unsetShader];
      [a3 unsetOnContext:a6 onTextureUnit:0 state:&v157];
      [*(&self->mBackColorForImage[2] + 1) setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v78 / ((v51 + v51) * v54) - v72), @"image0"}];
      v87 = v154;
      v24 = v153;
      goto LABEL_85;
    }

    v77 = v149;
    v166 = v149;
    v167 = v156;
    v168 = v149;
    v169 = v156 + v154;
    v170 = v149 + v24;
    v171 = v156;
    v172 = v149 + v24;
    v173 = v156 + v154;
    v87 = v154;
    if (v39)
    {
      v90 = v39 - v44;
      if (v23 != -1)
      {
        v90 = v44;
      }

      v91 = v53 * v90 * 2.0 + -1.0;
    }

    else
    {
      v91 = -1.0;
    }

    if (v39)
    {
      v130 = v91 + (v24 + v24) * (1.0 / v52);
    }

    else
    {
      v130 = 1.0;
    }

    v131 = v91;
    v158 = v131;
    v159 = -1.0;
    v160 = v131;
    v161 = 1.0;
    v132 = v130;
    v162 = v132;
    v163 = -1.0;
    v164 = v132;
    v165 = 1.0;
    v157 = 0;
    v133 = v52 / v50;
    *&v133 = v52 / v50;
    [a3 setOnContext:a6 onTextureUnit:0 withReferenceAspectRatio:&v157 state:v133];
    *&v134 = SetLightingColors2D(&v182, &v166, *[a6 foreColor]);
    [a6 setShader:{@"ColoredTexture", v134}];
    [a6 setVertex2DPointer:&v166];
    [a6 setTextureCoordinatesPointer:&v158 onTextureUnit:0];
    [a6 setColorsPointer:&v182];
    [a6 drawTriangleStripFromOffset:0 count:4];
    [a6 unsetColorsPointer];
    [a6 unsetTextureCoordinatesPointerOnTextureUnit:0];
    [a6 unsetVertexPointer];
    [a6 unsetShader];
    [a3 unsetOnContext:a6 onTextureUnit:0 state:&v157];
    v126 = *(&self->mBackColorForImage[2] + 1);
    v135 = (v91 + v130) / (v130 - v91);
  }

  [v126 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v135), @"image0"}];
LABEL_85:
  v142 = *(&self->mPatchworkAtEnd + 1);
  v143 = [v142 objectForKey:@"image0"];
  if (!v143)
  {
    v143 = objc_alloc_init(MRCroppingSprite);
    [v142 setObject:v143 forKey:@"image0"];
  }

  v144 = (v77 + (v24 * 0.5));
  [a6 localAspectRatio];
  v146 = ((v156 + (v87 * 0.5)) * v145);
  [a6 localAspectRatio];
  [(MRCroppingSprite *)v143 fakeRenderInContext:a6 atPosition:v144 andSize:v146 zRotation:v24, (v147 * v87), 0.0];
  [a3 setScale:v152];
  [a3 setCenterX:v151];
  [a3 setCenterY:v150];
}

- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  v9 = +[NSMutableArray array];
  v10 = a4;
  [a4 localAspectRatio];
  v12 = 1.0 / v11;
  if (![(NSString *)self->super.mEffectID hasSuffix:@"5"])
  {
    if ([(NSString *)self->super.mEffectID hasSuffix:@"Text"])
    {
      v20 = [objc_msgSend(a4 "imageManager")];
      [v20 setLabel:@"Marimba OrigamiTitle Background"];
      [v20 setClampMode:2];
      [*(&self->mText0Offsets + 1) relativeSizeInContextPixelSize:{self->super.mPixelSize.width, self->super.mPixelSize.height}];
      v22 = v21;
      v24 = v23;
      v25 = v9;
      v26 = -v12;
      v27 = v12 + v12;
      [v9 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", objc_msgSend(v20, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, v26, 1.0, v27), @"rectangle", 0)}];
      v28 = [*(&self->mText0Offsets + 1) insertingInCollection];
      v29 = [NSValue valueWithCGRect:(v22 + 1.0) * -0.5, v24 * -0.5, v22, v24];
      v30 = v28;
      v9 = v25;
      [v25 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v30, @"image", &__kCFBooleanTrue, @"needsBlend", v29, @"rectangle", 0)}];
      v31 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [v25 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", objc_msgSend(v31, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", 0.0, v26, 1.0, v27), @"rectangle", 0)}];
LABEL_5:
      v32 = v31;
LABEL_27:
      [v32 releaseByUser];
      goto LABEL_28;
    }

    v33 = [(NSString *)self->super.mEffectID hasSuffix:@"Title1"];
    [a4 localAspectRatio];
    v35 = v34;
    if (v33)
    {
      v36 = 2.0 / v35;
      v37 = 2.0 / v35 * -0.5;
      v38 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:ImageKey(0)];
      v20 = [v38 retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:a3];
      if ([v38 defaultKenBurnsType] == 1 || (objc_msgSend(v20, "width"), v40 = v39, objc_msgSend(v20, "height"), *&v41 = v41, v42 = (v40 / *&v41), objc_msgSend(v20, "scale"), v44 = v43, objc_msgSend(a4, "localAspectRatio"), v46 = v44 * v45 / v42, v44 >= 1.0) && v46 >= 1.0)
      {
        v47 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v20, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, v36 * -0.5, 2.0, v36), @"rectangle", 0}];
        [v9 addObject:v47];

        goto LABEL_28;
      }

      v31 = [(MREffectOrigamiTitle *)self _retainedByUserBackColorImageInContext:a4];
      [v20 setCenterX:0.0];
      [v20 setCenterY:0.0];
      v73 = [NSDictionary alloc];
      v74 = [v20 insertingInCollection];
      if (v44 >= 1.0)
      {
        v83 = [NSValue valueWithCGRect:-1.0, v37 * v46, 2.0, v36 * v46];
        v84 = 2.0 / v36;
        *&v84 = 2.0 / v36;
        v85 = [v73 initWithObjectsAndKeys:{v74, @"image", v83, @"rectangle", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v84), @"referenceAspectRatio", 0}];
        [v9 addObject:v85];

        v86 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v31, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, v36 * -0.5, 2.0, v37 * (v46 + -1.0)), @"rectangle", &__kCFBooleanTrue, @"onTop", 0}];
        [v9 addObject:v86];

        v79 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v31, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, (v36 + v37) * v46, 2.0, (v36 + v37) * (1.0 - v46)), @"rectangle", &__kCFBooleanTrue, @"onTop", 0}];
      }

      else
      {
        v75 = [NSValue valueWithCGRect:-v44, v36 * -0.5, v44 + v44, v36];
        v76 = 2.0 / v36;
        *&v76 = 2.0 / v36;
        v77 = [v73 initWithObjectsAndKeys:{v74, @"image", v75, @"rectangle", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v76), @"referenceAspectRatio", 0}];
        [v9 addObject:v77];

        v78 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v31, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, v36 * -0.5, -(v44 + -1.0), v36), @"rectangle", &__kCFBooleanTrue, @"onTop", 0}];
        [v9 addObject:v78];

        v79 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v31, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v44, v36 * -0.5, 1.0 - v44, v36), @"rectangle", &__kCFBooleanTrue, @"onTop", 0}];
      }

      v87 = v79;
      [v9 addObject:v79];

      goto LABEL_5;
    }

    width = 1.0;
    v49 = 1.0 / v35;
    [*(&self->mText0Offsets + 1) relativeSizeInContextPixelSize:{self->super.mPixelSize.width, self->super.mPixelSize.height}];
    v51 = v50;
    v94 = v52;
    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-Text"])
    {
      v53 = v9;
      v90 = 0;
      y = -v49;
      height = v49 + v49;
      x = -1.0;
      v57 = 0.0;
      v88 = 0.0;
      v89 = -0.5;
      v92 = -v49;
      v93 = v49 + v49;
      v58 = 1.0;
LABEL_17:
      v91 = v57;
      goto LABEL_18;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LText1"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami3-LText1"])
    {
      v53 = v9;
      v90 = 0;
      v92 = v49 * -0.5;
      v93 = v49 * 1.5;
      y = -v49;
      height = v49 * 0.5;
      v89 = v51 * 0.5 + -0.85;
      x = -1.0;
      width = 2.0;
      v59 = -0.75;
LABEL_16:
      v88 = v59;
      v58 = 2.0;
      v57 = -1.0;
      goto LABEL_17;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LText2"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami3-LText2"])
    {
      v53 = v9;
      v90 = 0;
      y = -v49;
      height = v49 + v49;
      v88 = -0.3333333;
      v89 = v51 * -0.5 + -0.1;
      v91 = 0.0;
      v92 = -v49;
      x = -1.0;
      v93 = v49 + v49;
      v58 = 1.0;
      goto LABEL_18;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LTextP1"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami3-LTextP1"])
    {
      v53 = v9;
      v92 = v49 * -0.3333333;
      v93 = v49 * 1.3333333;
      y = -v49;
      height = v49 * 0.6666667;
      v89 = v51 * 0.5 + -0.85;
      x = -1.0;
      width = 2.0;
      v90 = 1;
      v59 = -0.6666667;
      goto LABEL_16;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LTextP2"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami3-LTextP2"])
    {
      v53 = v9;
      y = -v49;
      height = v49 + v49;
      v89 = v51 * 0.5 + -0.23333333;
      v91 = -1.0;
      v90 = 1;
      v58 = 0.6666667;
      width = 1.3333333;
      x = -0.3333333;
      v88 = -0.3333333;
    }

    else
    {
      if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LTitleP1"])
      {
        v53 = v9;
        v92 = v49 * -0.3333333;
        v93 = v49 * 1.3333333;
        y = -v49;
        height = v49 * 0.6666667;
        x = -1.0;
        width = 2.0;
        v89 = 0.0;
        v90 = 1;
        v59 = -0.645;
        goto LABEL_16;
      }

      v53 = v9;
      if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LTitleP2"])
      {
        v90 = 0;
        x = CGRectZero.origin.x;
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
        v88 = CGPointZero.y;
        v89 = CGPointZero.x;
        v92 = y;
        v93 = height;
        v58 = width;
        v91 = CGRectZero.origin.x;
LABEL_18:
        v20 = [objc_msgSend(v10 "imageManager")];
        [v20 setLabel:@"Marimba OrigamiTitle Background"];
        [v20 setClampMode:2];
        [v53 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", objc_msgSend(v20, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", x, y, width, height), @"rectangle", 0)}];
        v60 = [*(&self->mText0Offsets + 1) insertingInCollection];
        v61 = [NSValue valueWithCGRect:v89 + v51 * -0.5, v94 * -0.5 + v88 * v49, v51];
        v62 = v60;
        v9 = v53;
        [v53 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v62, @"image", &__kCFBooleanTrue, @"needsBlend", v61, @"rectangle", 0)}];
        v63 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        v64 = v63;
        if (!v90)
        {
          v71 = v63;
          v67 = v93;
          v68 = v58;
          goto LABEL_26;
        }

        [v63 aspectRatio];
        v66 = v65;
        v67 = v93;
        v68 = v58;
        if (v65 >= 0.5 && v65 <= 2.0)
        {
          goto LABEL_24;
        }

        v69 = v65 / (v58 / v93);
        v70 = v68 / v93 / v65;
        if (v66 >= 1.0)
        {
          v70 = v66 / (v68 / v93);
        }

        if (v70 < 1.1)
        {
LABEL_24:
          v71 = v64;
LABEL_26:
          [v9 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", objc_msgSend(v71, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v91, v92, v68, v67), @"rectangle", 0)}];
          v32 = v71;
          goto LABEL_27;
        }

        v80 = [objc_msgSend(objc_msgSend(-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"breakInformation", "objectForKey:", @"image0", "objectForKey:", @"panEndDirection", "intValue"}];
        [v64 setScale:{fmax(v69, 1.0)}];
        [v64 setCenterX:0.0];
        [v64 setCenterY:0.0];
        v71 = [v64 retainedByUserImage];
        v81 = [*(&self->mBackColorForImage[2] + 1) objectForKeyedSubscript:@"image0"];
        if (v81)
        {
          [v81 doubleValue];
          if (v66 < 1.0)
          {
LABEL_48:
            [v71 setCenterY:v82];
            goto LABEL_49;
          }
        }

        else
        {
          if (v66 < 1.0)
          {
            v82 = 1.0 - v69;
            if (v80 != -1)
            {
              v82 = v69 + -1.0;
            }

            goto LABEL_48;
          }

          v82 = 1.0 - v69;
          if (v80 == -1)
          {
            v82 = v69 + -1.0;
          }
        }

        [v71 setCenterX:v82];
LABEL_49:
        v9 = v53;
        [v64 releaseByUser];
        goto LABEL_26;
      }

      y = -v49;
      height = v49 + v49;
      v91 = -1.0;
      v88 = 0.0;
      v89 = v51 * 0.5 + -0.23333333;
      v90 = 1;
      v58 = 0.6666667;
      x = -0.3333333;
      width = 1.3333333;
    }

    v92 = y;
    v93 = height;
    goto LABEL_18;
  }

  v13 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v14 = v9;
  v15 = [v13 insertingInCollection];
  v16 = -v12;
  v17 = v12 + v12;
  v18 = [NSValue valueWithCGRect:0.333333343, v16, 0.666666687, v17];
  v19 = v15;
  v9 = v14;
  [v14 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v19, @"image", v18, @"rectangle", 0)}];
  [v13 releaseByUser];
  v20 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  [v14 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", objc_msgSend(v20, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, v16, 1.33333337, v17), @"rectangle", 0)}];
LABEL_28:
  [v20 releaseByUser];
  return v9;
}

- (id)_retainedByUserBackColorImageInContext:(id)a3
{
  v5 = [a3 backColor];
  v7 = *(&self->mBigSwing + 1);
  if (v7)
  {
    LODWORD(v6) = *v5;
    if (*v5 == *(&self->mBackColorImage + 1))
    {
      LODWORD(v6) = v5[1];
      if (*&v6 == *(&self->mBackColorImage + 5))
      {
        LODWORD(v6) = v5[2];
        if (*&v6 == *(self->mBackColorForImage + 1))
        {
          goto LABEL_11;
        }
      }
    }

    [v7 releaseByUser];
  }

  LODWORD(v6) = *v5;
  if (*v5 <= 0.0 && (LODWORD(v6) = v5[1], *&v6 <= 0.0) && (LODWORD(v6) = v5[2], *&v6 <= 0.0))
  {
    *(&self->mBigSwing + 1) = [a3 retainedByUserBlackImage];
  }

  else
  {
    v8 = [objc_msgSend(a3 imageManager];
    *(&self->mBigSwing + 1) = v8;
    [(MROrigamiAnimationPath *)v8 setLabel:@"Marimba Origami Background"];
    [*(&self->mBigSwing + 1) setClampMode:2];
  }

  *(&self->mBackColorImage + 1) = *v5;
  *(&self->mBackColorImage + 5) = v5[1];
  *(self->mBackColorForImage + 1) = v5[2];
  v7 = *(&self->mBigSwing + 1);
LABEL_11:

  return [v7 retainByUser];
}

- (void)_loadForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  self->super.mNeedsToUpdateTexts = 0;
  v6 = *(&self->mText0Offsets + 1);
  if (v6)
  {
    [v6 releaseByUser];
    *(&self->mText0Offsets + 1) = 0;
  }

  v7 = *(&self->mText0Sprite + 1);
  if (v7)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v55;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v55 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v54 + 1) + 8 * i) removingFromCollection];
        }

        v9 = [v7 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v9);
    }

    *(&self->mText0Sprite + 1) = 0;
    *(&self->mText0Images + 1) = 0;

    *&self->mLineWordCounts[1] = 0;
  }

  v12 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer textsForElementIDs:a4] objectForKey:@"text0"];
  v13 = *(&self->super._isInInteractiveMode + 1);
  if (v12)
  {
    v14 = v12;
    if (!v13)
    {
      *(&self->super._isInInteractiveMode + 1) = objc_alloc_init(MRTextRenderer);
    }

    if (![v14 length])
    {
      [*(&self->super._isInInteractiveMode + 1) setPlaceholderText:{objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager, "sharedManager"), "defaultStringForTextInEffectID:presetID:atIndex:needsNSConversion:", self->super.mEffectID, -[NSDictionary objectForKey:](self->super.mAttributes, "objectForKey:", @"PresetID", 0, 0)}];
    }

    [*(&self->super._isInInteractiveMode + 1) setResolution:{self->super.mPixelSize.width, self->super.mPixelSize.height}];
    v15 = [(NSString *)self->super.mEffectID rangeOfString:@"LTitleP"];
    v16 = [(NSString *)self->super.mEffectID rangeOfString:@"LTitleP2"];
    v17 = dbl_163900[[(NSString *)self->super.mEffectID rangeOfString:@"LText"]== 0x7FFFFFFFFFFFFFFFLL];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0.9;
    }

    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0.55;
    }

    __asm { FMOV            V2.2D, #0.5 }

    _Q2.f64[0] = v17;
    [*(&self->super._isInInteractiveMode + 1) setDefinedSize:{vmulq_f64(self->super.mPixelSize, _Q2)}];
    [*(&self->super._isInInteractiveMode + 1) setMaxNumberOfLines:3];
    [*(&self->super._isInInteractiveMode + 1) setText:v14];
    [*(&self->super._isInInteractiveMode + 1) setTruncate:1];
    [(MRLayerEffect *)self->super.mEffectLayer _rendererSize];
    [MRRenderer textScaleForResolution:?];
    [*(&self->super._isInInteractiveMode + 1) setScale:?];
    [*(&self->super._isInInteractiveMode + 1) setInset:{1.0, 1.0}];
    [*(&self->super._isInInteractiveMode + 1) sizeOfContext];
    *(&self->mSprites + 1) = v23;
    *(&self->mImageSize.width + 1) = v24;
    if ([(NSString *)self->super.mEffectID rangeOfString:@"Text"]== 0x7FFFFFFFFFFFFFFFLL && v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_26;
    }

    v25 = [*(&self->super._isInInteractiveMode + 1) retainedContext];
    if (v25)
    {
      v26 = v25;
      v27 = [objc_msgSend(a4 "imageManager")];
      *(&self->mText0Offsets + 1) = v27;
      [(NSMutableArray *)v27 setLabel:@"Marimba Origami Text"];
      CGContextRelease(v26);
    }

    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_26:
      *(&self->mText0Sprite + 1) = objc_alloc_init(NSMutableArray);
      *(&self->mText0Images + 1) = objc_alloc_init(NSMutableArray);
      *&self->mLineWordCounts[1] = objc_alloc_init(NSMutableArray);
      *(&self->mImageSize.height + 1) = [*(&self->super._isInInteractiveMode + 1) countOfWords];
      [*(&self->super._isInInteractiveMode + 1) cacheText];
      if (![(NSString *)[(MRLayerEffect *)self->super.mEffectLayer editedElement] isEqualToString:@"text0"]|| ![(MRLayerEffect *)self->super.mEffectLayer _hideTextWhileEditing])
      {
        v28 = [*(&self->super._isInInteractiveMode + 1) rangeOfGlyphsForWordsInRange:{0, 1}];
        v53 = v29;
        [*(&self->super._isInInteractiveMode + 1) sizeOfContext];
        v31 = v30;
        v33 = v32;
        v34 = [*(&self->super._isInInteractiveMode + 1) numberOfLinesForTruncatedText];
        if (v34 >= 1)
        {
          v35 = v34;
          v36 = 0;
          v37 = 0;
          v51 = v34;
          do
          {
            v38 = [*(&self->super._isInInteractiveMode + 1) rangeOfGlyphsOnLine:v36];
            if (v38 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v39 >= 1)
              {
                v40 = v38;
                v41 = &v38[v39];
                do
                {
                  [*(&self->super._isInInteractiveMode + 1) originOfGlyphAtIndex:v40];
                  v43 = v42;
                  v45 = v44;
                  v46 = [*(&self->super._isInInteractiveMode + 1) retainedContextOfGlyphAtIndex:v40];
                  if (v46)
                  {
                    v47 = v46;
                    v48 = [objc_msgSend(a4 "imageManager")];
                    [v48 setLabel:@"Marimba Origami Text"];
                    [*(&self->mText0Sprite + 1) addObject:{objc_msgSend(v48, "insertingInCollection")}];
                    [v48 releaseByUser];
                    CGContextRelease(v47);
                    [*(&self->mText0Images + 1) addObject:{+[NSValue valueWithCGPoint:](NSValue, "valueWithCGPoint:", v43 + v31 * -0.5, v45 + v33 * -0.5)}];
                    if (v40 < v28 || v40 >= &v28[v53])
                    {
                      if (v37 + 1 < *(&self->mImageSize.height + 1))
                      {
                        ++v37;
                      }

                      else
                      {
                        v37 = *(&self->mImageSize.height + 1);
                      }

                      v28 = [*(&self->super._isInInteractiveMode + 1) rangeOfGlyphsForWordsInRange:{v37, 1}];
                      v53 = v49;
                    }

                    [*&self->mLineWordCounts[1] addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v37)}];
                  }

                  ++v40;
                }

                while (v40 < v41);
              }

              [*(&self->super._isInInteractiveMode + 1) rangeOfWordsOnLine:v36];
              v36[&self->mText0Image + 1] = v50;
              v35 = v51;
            }

            ++v36;
          }

          while (v36 != v35);
        }
      }

      [*(&self->super._isInInteractiveMode + 1) clearCache];
    }
  }

  else if (v13)
  {

    *(&self->super._isInInteractiveMode + 1) = 0;
  }
}

- (CGSize)_maxSizeForTextElement:(id)a3
{
  v3 = vmulq_f64(self->super.mPixelSize, xmmword_163910);
  v4 = v3.f64[1];
  result.width = v3.f64[0];
  result.height = v4;
  return result;
}

- (void)_unload
{
  v3 = *(&self->mText0Sprite + 1);
  if (v3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * v7) removingFromCollection];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    *(&self->mText0Sprite + 1) = 0;
    *(&self->mText0Images + 1) = 0;

    *&self->mLineWordCounts[1] = 0;
  }

  [*(&self->mText0Offsets + 1) releaseByUser];
  *(&self->mText0Offsets + 1) = 0;
  v8 = *(&self->super._isInInteractiveMode + 1);
  if (v8)
  {
    [v8 cleanup];

    *(&self->super._isInInteractiveMode + 1) = 0;
  }

  v9 = *(&self->mBigSwing + 1);
  if (v9)
  {
    [v9 releaseByUser];
    *(&self->mBigSwing + 1) = 0;
  }

  *(&self->mBackColorImage + 1) = -1082130432;
}

@end