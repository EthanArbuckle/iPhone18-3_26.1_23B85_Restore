@interface PVTransformAnimation
+ (BOOL)getTransformInfoFromAnimation:(id)a3 atLocalTime:(id *)a4 outInfo:(PVTransformAnimationInfo *)a5;
+ (BOOL)getTransformInfoFromAnimation:(id)a3 atLocalTime:(id *)a4 renderSize:(CGSize)a5 contentMode:(int)a6 invertY:(BOOL)a7 outInfo:(PVTransformAnimationInfo *)a8;
+ (BOOL)getTransformInfoFromAnimation:(id)a3 atTime:(id *)a4 outInfo:(PVTransformAnimationInfo *)a5;
+ (BOOL)getTransformInfoFromAnimation:(id)a3 atTime:(id *)a4 renderSize:(CGSize)a5 contentMode:(int)a6 invertY:(BOOL)a7 outInfo:(PVTransformAnimationInfo *)a8;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)presentationTimeRange;
- (BOOL)isEqual:(id)a3;
- (CGSize)basisForRenderSize:(CGSize)a3 contentMode:(int)a4;
- (CGSize)basisForRenderSize:(CGSize)result contentMode:(int)a4 invertY:(BOOL)a5;
- (PVTransformAnimation)initWithAnimation:(id)a3 liveTransform:(PVTransformAnimationInfo *)a4 presentationTimeRange:(id *)a5;
- (PVTransformAnimation)initWithAnimation:(id)a3 simplify:(BOOL)a4 tolerance:(double)a5 smoothness:(unsigned int)a6;
- (PVTransformAnimation)initWithAnimationInfo:(PVTransformAnimationInfo *)a3;
- (PVTransformAnimation)initWithCoder:(id)a3;
- (PVTransformAnimation)initWithLiveTransform:(PVTransformAnimationInfo *)a3;
- (PVTransformAnimationInfo)transformInfoAtLocalTime:(SEL)a3;
- (PVTransformAnimationInfo)transformInfoAtTime:(SEL)a3;
- (id)animationInfoFromData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataFromAnimationInfo:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)_commonInit:(id)a3 liveTransform:(PVTransformAnimationInfo *)a4 presentationTimeRange:(id *)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setPresentationTimeRange:(id *)a3;
@end

@implementation PVTransformAnimation

- (PVTransformAnimation)initWithAnimation:(id)a3 simplify:(BOOL)a4 tolerance:(double)a5 smoothness:(unsigned int)a6
{
  v6 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v13.receiver = self;
  v13.super_class = PVTransformAnimation;
  v11 = [(PVTransformAnimation *)&v13 init];
  if (v11)
  {
    if (v6 && [v8 count])
    {
      operator new();
    }

    v9 = *(MEMORY[0x277CC08C8] + 16);
    time1[0] = *MEMORY[0x277CC08C8];
    time1[1] = v9;
    time1[2] = *(MEMORY[0x277CC08C8] + 32);
    [(PVTransformAnimation *)v11 _commonInit:v8 liveTransform:0 presentationTimeRange:time1];
  }

  return v11;
}

- (PVTransformAnimation)initWithAnimationInfo:(PVTransformAnimationInfo *)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *&a3->time.epoch;
  v10[0] = *&a3->time.value;
  v10[1] = v4;
  v10[2] = *&a3->translation.y;
  rotation = a3->rotation;
  v5 = [MEMORY[0x277CCAE60] valueWithPVTransformAnimationInfo:v10];
  v6 = [PVTransformAnimation alloc];
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [(PVTransformAnimation *)v6 initWithAnimation:v7];

  return v8;
}

- (PVTransformAnimation)initWithLiveTransform:(PVTransformAnimationInfo *)a3
{
  v9.receiver = self;
  v9.super_class = PVTransformAnimation;
  v4 = [(PVTransformAnimation *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *(MEMORY[0x277CC08C8] + 16);
    v8[0] = *MEMORY[0x277CC08C8];
    v8[1] = v6;
    v8[2] = *(MEMORY[0x277CC08C8] + 32);
    [(PVTransformAnimation *)v4 _commonInit:0 liveTransform:a3 presentationTimeRange:v8];
  }

  return v5;
}

- (PVTransformAnimation)initWithAnimation:(id)a3 liveTransform:(PVTransformAnimationInfo *)a4 presentationTimeRange:(id *)a5
{
  v8 = a3;
  if (a4)
  {
    v9 = [(PVTransformAnimation *)self initWithLiveTransform:a4];
  }

  else
  {
    v9 = [(PVTransformAnimation *)self initWithAnimation:v8];
  }

  v10 = v9;
  if (v9)
  {
    v11 = *&a5->var0.var0;
    v12 = *&a5->var1.var1;
    *&v9->_presentationTimeRange.start.epoch = *&a5->var0.var3;
    *&v9->_presentationTimeRange.duration.timescale = v12;
    *&v9->_presentationTimeRange.start.value = v11;
  }

  return v10;
}

- (void)_commonInit:(id)a3 liveTransform:(PVTransformAnimationInfo *)a4 presentationTimeRange:(id *)a5
{
  objc_storeStrong(&self->_animationData, a3);
  self->_liveTransform = a4;
  v8 = *&a5->var0.var0;
  v9 = *&a5->var1.var1;
  *&self->_presentationTimeRange.start.epoch = *&a5->var0.var3;
  *&self->_presentationTimeRange.duration.timescale = v9;
  *&self->_presentationTimeRange.start.value = v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PVTransformAnimation;
  [(PVTransformAnimation *)&v2 dealloc];
}

- (PVTransformAnimationInfo)transformInfoAtTime:(SEL)a3
{
  v44 = *MEMORY[0x277D85DE8];
  retstr->translation.x = 0.0;
  retstr->translation.y = 0.0;
  *&retstr->scale = xmmword_2603426F0;
  retstr->time = *a4;
  v5 = *&self->time.timescale;
  if (v5)
  {
    v6 = *(v5 + 16);
    *&retstr->time.value = *v5;
    *&retstr->time.epoch = v6;
    *&retstr->translation.y = *(v5 + 32);
    retstr->rotation = *(v5 + 48);
    return self;
  }

  v8 = self;
  p_epoch = &self->time.epoch;
  v10 = [self->time.epoch count];
  v11 = [*p_epoch firstObject];
  v23 = v11;
  v25 = [*p_epoch lastObject];
  if (v11)
  {
    [v11 PVTransformAnimationInfoValue];
  }

  else
  {
    v34 = 0.0;
    v33 = 0u;
    memset(time1, 0, sizeof(time1));
  }

  v39 = *time1;
  v40 = *&time1[16];
  v41 = v33;
  v42 = v34;
  time2 = **&MEMORY[0x277CC08F0];
  v12 = CMTimeCompare(time1, &time2);
  if ((BYTE4(v8->scale) & 1) != 0 && (v8[1].time.flags & 1) != 0 && !v8[1].time.epoch && (v8[1].time.value & 0x8000000000000000) == 0)
  {
    *&time2.value = v39;
    time2.epoch = v40;
    rhs = *&v8->translation.y;
    CMTimeAdd(time1, &time2, &rhs);
    v39 = *time1;
    *&v40 = *&time1[16];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v8->time.epoch;
  v13 = [obj countByEnumeratingWithState:&v26 objects:v43 count:16];
  if (!v13)
  {
    v14 = 0;
    goto LABEL_45;
  }

  v22 = v12;
  v14 = 0;
  v15 = *v27;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v27 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v26 + 1) + 8 * i);
      if (v17)
      {
        [*(*(&v26 + 1) + 8 * i) PVTransformAnimationInfoValue];
      }

      else
      {
        v34 = 0.0;
        v33 = 0u;
        memset(time1, 0, sizeof(time1));
      }

      v18 = *&time1[16];
      *&retstr->time.value = *time1;
      *&retstr->time.epoch = v18;
      *&retstr->translation.y = v33;
      retstr->rotation = v34;
      if ((BYTE4(v8->scale) & 1) != 0 && (v8[1].time.flags & 1) != 0 && !v8[1].time.epoch && (v8[1].time.value & 0x8000000000000000) == 0)
      {
        time2 = retstr->time;
        rhs = *&v8->translation.y;
        CMTimeAdd(time1, &time2, &rhs);
        *&retstr->time.value = *time1;
        retstr->time.epoch = *&time1[16];
      }

      if (v10 == 1)
      {
        v14 = 0;
        *&retstr->time.value = *&a4->var0;
        retstr->time.epoch = a4->var3;
LABEL_44:
        v11 = v23;
        goto LABEL_45;
      }

      if (v17 == v25)
      {
        goto LABEL_44;
      }

      *time1 = *&a4->var0;
      *&time1[16] = a4->var3;
      *&time2.value = v39;
      time2.epoch = v40;
      if (CMTimeCompare(time1, &time2) < 0)
      {
        if (v22 >= 1)
        {
          v20 = *MEMORY[0x277CC08F0];
          *&time1[16] = *(MEMORY[0x277CC08F0] + 16);
          retstr->translation.y = 0.0;
          v21 = *&time1[16];
          *&retstr->time.value = v20;
          *&retstr->time.epoch = v21;
          *&retstr->scale = xmmword_2603426F0;
        }

        goto LABEL_44;
      }

      v19 = [v8->time.epoch objectAtIndex:{objc_msgSend(v8->time.epoch, "indexOfObject:", v17) + 1}];

      v14 = v19;
      if (v19)
      {
        [v19 PVTransformAnimationInfoValue];
      }

      else
      {
        v34 = 0.0;
        v33 = 0u;
        memset(time1, 0, sizeof(time1));
      }

      v35 = *time1;
      v36 = *&time1[16];
      v37 = v33;
      v38 = v34;
      if ((BYTE4(v8->scale) & 1) != 0 && (v8[1].time.flags & 1) != 0 && !v8[1].time.epoch && (v8[1].time.value & 0x8000000000000000) == 0)
      {
        *&time2.value = v35;
        time2.epoch = v36;
        rhs = *&v8->translation.y;
        CMTimeAdd(time1, &time2, &rhs);
        v35 = *time1;
        *&v36 = *&time1[16];
      }

      *time1 = *&a4->var0;
      *&time1[16] = a4->var3;
      time2 = retstr->time;
      if ((CMTimeCompare(time1, &time2) & 0x80000000) == 0)
      {
        *time1 = *&a4->var0;
        *&time1[16] = a4->var3;
        *&time2.value = v35;
        time2.epoch = v36;
        if (CMTimeCompare(time1, &time2) < 0)
        {
          goto LABEL_44;
        }
      }
    }

    v13 = [obj countByEnumeratingWithState:&v26 objects:v43 count:16];
    v11 = v23;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_45:

  return self;
}

- (PVTransformAnimationInfo)transformInfoAtLocalTime:(SEL)a3
{
  v29 = *MEMORY[0x277D85DE8];
  retstr->translation.x = 0.0;
  retstr->translation.y = 0.0;
  *&retstr->scale = xmmword_2603426F0;
  retstr->time = *a4;
  v5 = *&self->time.timescale;
  if (v5)
  {
    v6 = *(v5 + 16);
    *&retstr->time.value = *v5;
    *&retstr->time.epoch = v6;
    *&retstr->translation.y = *(v5 + 32);
    retstr->rotation = *(v5 + 48);
  }

  else
  {
    v8 = self;
    v9 = [self->time.epoch count];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v8->time.epoch;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          if (v14)
          {
            [*(*(&v24 + 1) + 8 * i) PVTransformAnimationInfoValue];
          }

          else
          {
            v23 = 0.0;
            v22 = 0u;
            memset(time1, 0, sizeof(time1));
          }

          v15 = *&time1[16];
          *&retstr->time.value = *time1;
          *&retstr->time.epoch = v15;
          *&retstr->translation.y = v22;
          retstr->rotation = v23;
          if (v9 == 1)
          {
            goto LABEL_19;
          }

          *time1 = *&retstr->time.value;
          *&time1[16] = retstr->time.epoch;
          time2 = *a4;
          if (!CMTimeCompare(time1, &time2))
          {
            goto LABEL_20;
          }

          *time1 = *&retstr->time.value;
          *&time1[16] = retstr->time.epoch;
          time2 = *a4;
          if (CMTimeCompare(time1, &time2) >= 1)
          {
            v16 = [v8->time.epoch firstObject];
            v17 = v14 == v16;

            if (!v17)
            {
              goto LABEL_20;
            }

            v18 = *MEMORY[0x277CC08F0];
            *&time1[16] = *(MEMORY[0x277CC08F0] + 16);
            retstr->translation.y = 0.0;
            v19 = *&time1[16];
            *&retstr->time.value = v18;
            *&retstr->time.epoch = v19;
            *&retstr->scale = xmmword_2603426F0;
LABEL_19:
            *&retstr->time.value = *&a4->var0;
            retstr->time.epoch = a4->var3;
            goto LABEL_20;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  return self;
}

+ (BOOL)getTransformInfoFromAnimation:(id)a3 atTime:(id *)a4 outInfo:(PVTransformAnimationInfo *)a5
{
  v7 = a3;
  v8 = v7;
  v23 = *MEMORY[0x277CC08F0];
  v24 = *(MEMORY[0x277CC08F0] + 16);
  if (v7)
  {
    v15 = *&a4->var0;
    var3 = a4->var3;
    [v7 transformInfoAtTime:&v15];
    v23 = v17;
    v24 = v18;
    v10 = v19;
    v9 = v20;
    v11 = v21;
    v12 = v22;
    v13 = 1;
    if (fabs(v19) < 0.0000001 && fabs(v20) < 0.0000001 && fabs(v21 + -1.0) < 0.0001)
    {
      v13 = fabs(v22) >= 0.0000001;
    }
  }

  else
  {
    v13 = 0;
    v11 = 1.0;
    v12 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
  }

  if (a5)
  {
    *&a5->time.value = v23;
    a5->time.epoch = v24;
    a5->translation.x = v10;
    a5->translation.y = v9;
    a5->scale = v11;
    a5->rotation = v12;
  }

  return v13;
}

+ (BOOL)getTransformInfoFromAnimation:(id)a3 atLocalTime:(id *)a4 outInfo:(PVTransformAnimationInfo *)a5
{
  v7 = a3;
  v8 = v7;
  v23 = *MEMORY[0x277CC08F0];
  v24 = *(MEMORY[0x277CC08F0] + 16);
  if (v7)
  {
    v15 = *&a4->var0;
    var3 = a4->var3;
    [v7 transformInfoAtLocalTime:&v15];
    v23 = v17;
    v24 = v18;
    v10 = v19;
    v9 = v20;
    v11 = v21;
    v12 = v22;
    v13 = 1;
    if (fabs(v19) < 0.0000001 && fabs(v20) < 0.0000001 && fabs(v21 + -1.0) < 0.0001)
    {
      v13 = fabs(v22) >= 0.0000001;
    }
  }

  else
  {
    v13 = 0;
    v11 = 1.0;
    v12 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
  }

  if (a5)
  {
    *&a5->time.value = v23;
    a5->time.epoch = v24;
    a5->translation.x = v10;
    a5->translation.y = v9;
    a5->scale = v11;
    a5->rotation = v12;
  }

  return v13;
}

+ (BOOL)getTransformInfoFromAnimation:(id)a3 atTime:(id *)a4 renderSize:(CGSize)a5 contentMode:(int)a6 invertY:(BOOL)a7 outInfo:(PVTransformAnimationInfo *)a8
{
  v9 = a7;
  v10 = *&a6;
  height = a5.height;
  width = a5.width;
  v15 = a3;
  v21 = *a4;
  v16 = [a1 getTransformInfoFromAnimation:v15 atTime:&v21 outInfo:a8];
  v17 = v16 ^ 1;
  if (!a8)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    [v15 basisForRenderSize:v10 contentMode:v9 invertY:{width, height}];
    v19.f64[1] = v18;
    a8->translation = vmulq_f64(v19, a8->translation);
  }

  return v16;
}

+ (BOOL)getTransformInfoFromAnimation:(id)a3 atLocalTime:(id *)a4 renderSize:(CGSize)a5 contentMode:(int)a6 invertY:(BOOL)a7 outInfo:(PVTransformAnimationInfo *)a8
{
  v9 = a7;
  v10 = *&a6;
  height = a5.height;
  width = a5.width;
  v15 = a3;
  v21 = *a4;
  v16 = [a1 getTransformInfoFromAnimation:v15 atLocalTime:&v21 outInfo:a8];
  v17 = v16 ^ 1;
  if (!a8)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    [v15 basisForRenderSize:v10 contentMode:v9 invertY:{width, height}];
    v19.f64[1] = v18;
    a8->translation = vmulq_f64(v19, a8->translation);
  }

  return v16;
}

- (PVTransformAnimation)initWithCoder:(id)a3
{
  v4 = a3;
  if ([PVTransformAnimation initWithCoder:]::onceToken != -1)
  {
    [PVTransformAnimation initWithCoder:];
  }

  v5 = objc_alloc_init(objc_opt_class());

  if (v5)
  {
    v6 = [v4 decodeIntForKey:@"PVTransformAnimation_CodingVersion"];
    if (v6 >= 1)
    {
      v7 = [v4 decodeObjectOfClasses:-[PVTransformAnimation initWithCoder:]::whitelist forKey:@"PVTransformAnimation_AnimationData"];
      v8 = [(PVTransformAnimation *)v5 animationInfoFromData:v7];
      animationData = v5->_animationData;
      v5->_animationData = v8;

      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
      v22 = 0;
      v15 = [v4 decodeTopLevelObjectOfClasses:v14 forKey:@"PVTransformAnimation_PresentationTimeRange" error:&v22];
      v16 = v22;

      if (v15)
      {
        CMTimeRangeMakeFromDictionary(&v21, v15);
        v17 = *&v21.duration.timescale;
        v18 = *&v21.start.epoch;
        *&v5->_presentationTimeRange.start.value = *&v21.start.value;
        *&v5->_presentationTimeRange.start.epoch = v18;
        *&v5->_presentationTimeRange.duration.timescale = v17;
      }

      if (v6 != 1)
      {
        [v4 decodeDoubleForKey:@"PVTransformAnimation_AspectRatio"];
        v5->_aspectRatio = v19;
      }
    }
  }

  return v5;
}

void __38__PVTransformAnimation_initWithCoder___block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = [PVTransformAnimation initWithCoder:]::whitelist;
  [PVTransformAnimation initWithCoder:]::whitelist = v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:2 forKey:@"PVTransformAnimation_CodingVersion"];
  v5 = [(PVTransformAnimation *)self dataFromAnimationInfo:self->_animationData];
  [v4 encodeObject:v5 forKey:@"PVTransformAnimation_AnimationData"];

  v6 = *&self->_presentationTimeRange.start.epoch;
  *&v8.start.value = *&self->_presentationTimeRange.start.value;
  *&v8.start.epoch = v6;
  *&v8.duration.timescale = *&self->_presentationTimeRange.duration.timescale;
  v7 = CMTimeRangeCopyAsDictionary(&v8, *MEMORY[0x277CBECE8]);
  [v4 encodeObject:v7 forKey:@"PVTransformAnimation_PresentationTimeRange"];
  [v4 encodeDouble:@"PVTransformAnimation_AspectRatio" forKey:self->_aspectRatio];
}

- (id)animationInfoFromData:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = v3;
  if (v3 && [v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v20, "count")}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v20;
    v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v5)
    {
      v6 = *v31;
      v7 = *MEMORY[0x277CCA308];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v10 = objc_alloc(MEMORY[0x277CCAAC8]);
          v29 = 0;
          v11 = [v10 initForReadingFromData:v9 error:&v29];
          v12 = v29;
          v13 = MEMORY[0x277CBEB98];
          v34[0] = objc_opt_class();
          v34[1] = objc_opt_class();
          v34[2] = objc_opt_class();
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
          v15 = [v13 setWithArray:v14];

          v28 = 0;
          v16 = [v11 decodeTopLevelObjectOfClasses:v15 forKey:v7 error:&v28];
          v17 = v28;
          [v11 finishDecoding];
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
          v24 = 0u;
          if (v16)
          {
            [v16 PVTransformAnimationInfo];
          }

          v22[0] = v24;
          v22[1] = v25;
          v22[2] = v26;
          v23 = v27;
          v18 = [MEMORY[0x277CCAE60] valueWithPVTransformAnimationInfo:{v22, v20}];
          [v4 addObject:v18];
        }

        v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dataFromAnimationInfo:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = v3;
  if (v3 && [v3 count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v14;
    v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = *v23;
      v7 = *MEMORY[0x277CCA308];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v21 = 0;
          v19 = 0u;
          v20 = 0u;
          v18 = 0u;
          if (v9)
          {
            [v9 PVTransformAnimationInfoValue];
          }

          v16[0] = v18;
          v16[1] = v19;
          v16[2] = v20;
          v17 = v21;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithPVTransformAnimationInfo:{v16, v14}];
          v11 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
          [v11 encodeObject:v10 forKey:v7];
          [v11 finishEncoding];
          v12 = [v11 encodedData];
          [v4 addObject:v12];
        }

        v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  animationData = self->_animationData;
  if (animationData)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](animationData, "count", a3)}];
    v6 = self->_animationData;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = *"";
    v16[2] = __37__PVTransformAnimation_copyWithZone___block_invoke;
    v16[3] = &unk_279AA5818;
    v7 = v5;
    v17 = v7;
    [(NSArray *)v6 enumerateObjectsUsingBlock:v16];
    v8 = [v7 copy];

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [PVTransformAnimation alloc];
  liveTransform = self->_liveTransform;
  v12 = *&self->_presentationTimeRange.start.epoch;
  v15[0] = *&self->_presentationTimeRange.start.value;
  v15[1] = v12;
  v15[2] = *&self->_presentationTimeRange.duration.timescale;
  v13 = [(PVTransformAnimation *)v10 initWithAnimation:v9 liveTransform:liveTransform presentationTimeRange:v15];
  [(PVTransformAnimation *)self aspectRatio];
  [(PVTransformAnimation *)v13 setAspectRatio:?];

  return v13;
}

void __37__PVTransformAnimation_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  [v2 addObject:?];
}

- (CGSize)basisForRenderSize:(CGSize)a3 contentMode:(int)a4
{
  [(PVTransformAnimation *)self basisForRenderSize:*&a4 contentMode:0 invertY:a3.width, a3.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)basisForRenderSize:(CGSize)result contentMode:(int)a4 invertY:(BOOL)a5
{
  if (a4)
  {
    if (a4 != 3)
    {
      aspectRatio = self->_aspectRatio;
      if (fabs(aspectRatio) >= 0.0000001)
      {
        if (a4 <= 2)
        {
          if (a4 == 1)
          {
            if (result.width <= result.height)
            {
              height = result.height;
              if (result.height * aspectRatio < result.width)
              {
                height = result.width / aspectRatio;
              }
            }

            else
            {
              height = result.width / aspectRatio;
              if (result.width / aspectRatio < result.height)
              {
                height = result.height;
              }
            }

            result.width = aspectRatio * height;
            result.height = height;
          }

          else if (a4 == 2)
          {
            v6 = result.width / aspectRatio;
            if (v6 <= result.height)
            {
              result.height = v6;
            }

            result.width = aspectRatio * result.height;
          }

          else
          {
            result.width = self->_aspectRatio;
            result.height = 1.0;
          }
        }

        else if (a4 == 13)
        {
          result.height = result.width / aspectRatio;
        }

        else
        {
          result.width = result.height * aspectRatio;
          if (a4 != 14)
          {
            result.width = self->_aspectRatio;
            result.height = 1.0;
          }
        }
      }
    }
  }

  if (a5)
  {
    result.height = -result.height;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (self == v4)
  {
    v12 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    aspectRatio = self->_aspectRatio;
    [(PVTransformAnimation *)v6 aspectRatio];
    if (vabdd_f64(aspectRatio, v8) < 0.0001 && (v9 = *&self->_presentationTimeRange.start.epoch, *&range1.start.value = *&self->_presentationTimeRange.start.value, *&range1.start.epoch = v9, *&range1.duration.timescale = *&self->_presentationTimeRange.duration.timescale, [(PVTransformAnimation *)v6 presentationTimeRange], CMTimeRangeEqual(&range1, &v14)))
    {
      animationData = self->_animationData;
      v11 = [(PVTransformAnimation *)v6 animationData];
      v12 = [(NSArray *)animationData isEqualToArray:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (unint64_t)hash
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = [(NSArray *)self->_animationData hash];
  timescale = self->_presentationTimeRange.start.timescale;
  if (timescale)
  {
    v4 = ((self->_presentationTimeRange.start.value << 10) / timescale);
  }

  else
  {
    v4 = 0;
  }

  v5 = v16;
  v6 = v16[3] ^ v4;
  v16[3] = v6;
  v7 = self->_presentationTimeRange.duration.timescale;
  if (v7)
  {
    v8 = ((self->_presentationTimeRange.duration.value << 10) / v7);
  }

  else
  {
    v8 = 0;
  }

  v5[3] = v8 ^ v6;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_aspectRatio];
  v10 = [v9 hash];
  v16[3] ^= v10;

  animationData = self->_animationData;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = *"";
  v14[2] = __28__PVTransformAnimation_hash__block_invoke;
  v14[3] = &unk_279AA5840;
  v14[4] = &v15;
  [(NSArray *)animationData enumerateObjectsUsingBlock:v14];
  v12 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v12;
}

void __28__PVTransformAnimation_hash__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) ^= [v3 hash];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v16.receiver = self;
  v16.super_class = PVTransformAnimation;
  v4 = [(PVTransformAnimation *)&v16 description];
  v5 = [v3 initWithString:v4];

  v6 = *&self->_presentationTimeRange.start.epoch;
  *&range.start.value = *&self->_presentationTimeRange.start.value;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *&self->_presentationTimeRange.duration.timescale;
  v7 = CMTimeRangeCopyDescription(0, &range);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" presentationTimeRange = %@\n", v7];
  [v5 appendString:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"aspectRatio = %.3f\n", *&self->_aspectRatio];
  [v5 appendString:v9];

  animationData = self->_animationData;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = *"";
  v13[2] = __35__PVTransformAnimation_description__block_invoke;
  v13[3] = &unk_279AA5868;
  v11 = v5;
  v14 = v11;
  [(NSArray *)animationData enumerateObjectsUsingBlock:v13];

  return v11;
}

void __35__PVTransformAnimation_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (v3)
  {
    [v3 PVTransformAnimationInfoValue];
  }

  v5 = *(a1 + 32);
  v7[0] = v9;
  v7[1] = v10;
  v7[2] = v11;
  v8 = v12;
  v6 = NSStringFromPVTransformAnimationInfo(v7, 5);
  [v5 appendString:v6];
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)presentationTimeRange
{
  v3 = *&self[1].var0.var0;
  *&retstr->var0.var0 = *&self->var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var3;
  return self;
}

- (void)setPresentationTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var1.var1;
  *&self->_presentationTimeRange.start.epoch = *&a3->var0.var3;
  *&self->_presentationTimeRange.duration.timescale = v4;
  *&self->_presentationTimeRange.start.value = v3;
}

@end