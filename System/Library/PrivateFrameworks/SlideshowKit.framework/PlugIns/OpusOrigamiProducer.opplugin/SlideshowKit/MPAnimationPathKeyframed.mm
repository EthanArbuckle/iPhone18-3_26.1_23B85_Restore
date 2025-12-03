@interface MPAnimationPathKeyframed
+ (id)animationPath;
- (MPAnimationPathKeyframed)init;
- (double)parentMainDuration;
- (double)parentPhaseInDuration;
- (double)parentPhaseOutDuration;
- (double)relativeTimeForKeyframe:(id)keyframe;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createKeyframeWithFunction:(id)function atTime:(double)time forDuration:(double)duration;
- (id)createKeyframeWithFunction:(id)function atTime:(double)time offsetType:(unint64_t)type forDuration:(double)duration;
- (id)createKeyframeWithPoint:(CGPoint)point atTime:(double)time;
- (id)createKeyframeWithPoint:(CGPoint)point atTime:(double)time offsetType:(unint64_t)type;
- (id)createKeyframeWithScalar:(double)scalar atTime:(double)time;
- (id)createKeyframeWithScalar:(double)scalar atTime:(double)time offsetType:(unint64_t)type;
- (id)createKeyframeWithVector:(id)vector atTime:(double)time;
- (id)createKeyframeWithVector:(id)vector atTime:(double)time offsetType:(unint64_t)type;
- (id)description;
- (id)fullDebugLog;
- (id)orderedKeyframes;
- (void)addKeyframe:(id)keyframe;
- (void)addKeyframes:(id)keyframes;
- (void)copyKeyframes:(id)keyframes;
- (void)dealloc;
- (void)removeAllKeyframes;
- (void)removeKeyframe:(id)keyframe;
- (void)removeKeyframes:(id)keyframes;
- (void)setAnimationPath:(id)path;
@end

@implementation MPAnimationPathKeyframed

+ (id)animationPath
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (MPAnimationPathKeyframed)init
{
  v4.receiver = self;
  v4.super_class = MPAnimationPathKeyframed;
  v2 = [(MPAnimationPath *)&v4 init];
  if (v2)
  {
    v2->_keyframes = objc_alloc_init(NSMutableSet);
  }

  return v2;
}

- (void)dealloc
{
  [(MPAnimationPathKeyframed *)self cleanup];

  v3.receiver = self;
  v3.super_class = MPAnimationPathKeyframed;
  [(MPAnimationPath *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPAnimationPathKeyframed;
  v4 = [(MPAnimationPath *)&v6 copyWithZone:zone];
  [v4 copyKeyframes:self->_keyframes];
  return v4;
}

- (id)description
{
  v3 = [[NSString stringWithFormat:?], "stringByAppendingFormat:", @"\t                Keyframe Count: %d\n", [(NSMutableSet *)self->_keyframes count]];
  if (self->super._animationPath)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  return [(NSString *)v3 stringByAppendingFormat:@"\t           Has MCAnimationPath: %@\n", v4];
}

- (id)orderedKeyframes
{
  v2 = [-[MPAnimationPathKeyframed keyframes](self "keyframes")];

  return [v2 sortedArrayUsingSelector:"relativeTimeCompare:"];
}

- (void)addKeyframe:(id)keyframe
{
  v4 = [NSArray arrayWithObject:keyframe];

  [(MPAnimationPathKeyframed *)self addKeyframes:v4];
}

- (void)addKeyframes:(id)keyframes
{
  [(NSMutableSet *)self->_keyframes addObjectsFromArray:?];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v5 = [keyframes countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v79;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v79 != v7)
        {
          objc_enumerationMutation(keyframes);
        }

        [*(*(&v78 + 1) + 8 * i) setParentPath:self];
      }

      v6 = [keyframes countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v6);
  }

  if (self->super._animationPath)
  {
    animatedParent = [(MPAnimationPath *)self animatedParent];
    [keyframes lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v10 = [keyframes countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v75;
        do
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v75 != v12)
            {
              objc_enumerationMutation(keyframes);
            }

            v14 = *(*(&v74 + 1) + 8 * j);
            [v14 scalar];
            v16 = v15;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *&v17 = v16;
              [objc_msgSend(animatedParent convertMPAttributeToMCAttribute:+[NSNumber numberWithFloat:](NSNumber withKey:{"numberWithFloat:", v17), -[MPAnimationPath key](self, "key")), "floatValue"}];
              v16 = v18;
            }

            animationPath = self->super._animationPath;
            [v14 time];
            v22 = v21;
            offsetType = [v14 offsetType];
            v20 = v16;
            *&v24 = v20;
            [v14 setKeyframe:{-[MCAnimationPath createKeyframeWithScalar:atTime:offsetKind:](animationPath, "createKeyframeWithScalar:atTime:offsetKind:", offsetType, v24, v22)}];
          }

          v11 = [keyframes countByEnumeratingWithState:&v74 objects:v85 count:16];
        }

        while (v11);
      }
    }

    else
    {
      [keyframes lastObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v25 = [keyframes countByEnumeratingWithState:&v70 objects:v84 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v71;
          do
          {
            for (k = 0; k != v26; k = k + 1)
            {
              if (*v71 != v27)
              {
                objc_enumerationMutation(keyframes);
              }

              v29 = *(*(&v70 + 1) + 8 * k);
              [v29 point];
              x = v30;
              y = v32;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v87.x = x;
                v87.y = y;
                v34 = [animatedParent convertMPAttributeToMCAttribute:NSStringFromCGPoint(v87) withKey:{-[MPAnimationPath key](self, "key")}];
                v35 = CGPointFromString(v34);
                x = v35.x;
                y = v35.y;
              }

              v36 = self->super._animationPath;
              [v29 time];
              [v29 setKeyframe:{-[MCAnimationPath createKeyframeWithPoint:atTime:offsetKind:](v36, "createKeyframeWithPoint:atTime:offsetKind:", objc_msgSend(v29, "offsetType"), x, y, v37)}];
            }

            v26 = [keyframes countByEnumeratingWithState:&v70 objects:v84 count:16];
          }

          while (v26);
        }
      }

      else
      {
        [keyframes lastObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v38 = [keyframes countByEnumeratingWithState:&v66 objects:v83 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v67;
            do
            {
              for (m = 0; m != v39; m = m + 1)
              {
                if (*v67 != v40)
                {
                  objc_enumerationMutation(keyframes);
                }

                v42 = *(*(&v66 + 1) + 8 * m);
                vector = [v42 vector];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  vector = +[MPVector vectorFromString:](MPVector, "vectorFromString:", [animatedParent convertMPAttributeToMCAttribute:objc_msgSend(vector withKey:{"string"), -[MPAnimationPath key](self, "key")}]);
                }

                v44 = self->super._animationPath;
                if (vector)
                {
                  [vector vector];
                }

                else
                {
                  v64[0] = 0;
                  v64[1] = 0;
                  v65 = 0;
                }

                [v42 time];
                [v42 setKeyframe:{-[MCAnimationPath createKeyframeWithVector:atTime:offsetKind:](v44, "createKeyframeWithVector:atTime:offsetKind:", v64, objc_msgSend(v42, "offsetType"), v45)}];
              }

              v39 = [keyframes countByEnumeratingWithState:&v66 objects:v83 count:16];
            }

            while (v39);
          }
        }

        else
        {
          [keyframes lastObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v46 = [keyframes countByEnumeratingWithState:&v60 objects:v82 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v61;
              do
              {
                for (n = 0; n != v47; n = n + 1)
                {
                  if (*v61 != v48)
                  {
                    objc_enumerationMutation(keyframes);
                  }

                  v50 = *(*(&v60 + 1) + 8 * n);
                  v51 = self->super._animationPath;
                  function = [v50 function];
                  [v50 time];
                  v54 = v53;
                  offsetType2 = [v50 offsetType];
                  [v50 duration];
                  v57 = [(MCAnimationPath *)v51 createKeyframeWithFunction:function atTime:offsetType2 offsetKind:v54 forDuration:v56];
                  [v57 setFunctionParameters:{objc_msgSend(v50, "functionParameters")}];
                  [v50 innerEaseInControl];
                  *&v58 = v58;
                  [v57 setInnerEaseInControl:v58];
                  [v50 innerEaseOutControl];
                  *&v59 = v59;
                  [v57 setInnerEaseOutControl:v59];
                  [v50 functionTimeFactor];
                  [v57 setFunctionTimeFactor:?];
                  [v50 functionTimeOffset];
                  [v57 setFunctionTimeOffset:?];
                  [v50 setKeyframe:v57];
                }

                v47 = [keyframes countByEnumeratingWithState:&v60 objects:v82 count:16];
              }

              while (v47);
            }
          }
        }
      }
    }
  }
}

- (void)removeKeyframe:(id)keyframe
{
  if ([(NSMutableSet *)self->_keyframes containsObject:?])
  {
    [(NSMutableSet *)self->_keyframes removeObject:keyframe];
    [keyframe setParentPath:0];
    if (self->super._animationPath)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        -[MCAnimationPath removeKeyframe:](self->super._animationPath, "removeKeyframe:", [keyframe keyframe]);

        [keyframe setKeyframe:0];
      }
    }
  }
}

- (void)removeKeyframes:(id)keyframes
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [keyframes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(keyframes);
        }

        [(MPAnimationPathKeyframed *)self removeKeyframe:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [keyframes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeAllKeyframes
{
  v3 = [(NSMutableSet *)self->_keyframes copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MPAnimationPathKeyframed *)self removeKeyframe:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)createKeyframeWithScalar:(double)scalar atTime:(double)time
{
  v5 = [MPAnimationKeyframe1D keyframe1DWithScalar:scalar atTime:time];
  [(MPAnimationPathKeyframed *)self addKeyframe:v5];
  return v5;
}

- (id)createKeyframeWithScalar:(double)scalar atTime:(double)time offsetType:(unint64_t)type
{
  v6 = [MPAnimationKeyframe1D keyframe1DWithScalar:type atTime:scalar offsetType:time];
  [(MPAnimationPathKeyframed *)self addKeyframe:v6];
  return v6;
}

- (id)createKeyframeWithPoint:(CGPoint)point atTime:(double)time
{
  time = [MPAnimationKeyframe2D keyframe2DWithPoint:point.x atTime:point.y, time];
  [(MPAnimationPathKeyframed *)self addKeyframe:time];
  return time;
}

- (id)createKeyframeWithPoint:(CGPoint)point atTime:(double)time offsetType:(unint64_t)type
{
  time = [MPAnimationKeyframe2D keyframe2DWithPoint:type atTime:point.x offsetType:point.y, time];
  [(MPAnimationPathKeyframed *)self addKeyframe:time];
  return time;
}

- (id)createKeyframeWithVector:(id)vector atTime:(double)time
{
  v5 = [MPAnimationKeyframeVector keyframeVectorWithVector:vector atTime:time];
  [(MPAnimationPathKeyframed *)self addKeyframe:v5];
  return v5;
}

- (id)createKeyframeWithVector:(id)vector atTime:(double)time offsetType:(unint64_t)type
{
  v6 = [MPAnimationKeyframeVector keyframeVectorWithVector:vector atTime:type offsetType:time];
  [(MPAnimationPathKeyframed *)self addKeyframe:v6];
  return v6;
}

- (id)createKeyframeWithFunction:(id)function atTime:(double)time forDuration:(double)duration
{
  v6 = [MPAnimationKeyframeFunction keyframeFunctionWithFunction:function atTime:time withDuration:duration];
  [(MPAnimationPathKeyframed *)self addKeyframe:v6];
  return v6;
}

- (id)createKeyframeWithFunction:(id)function atTime:(double)time offsetType:(unint64_t)type forDuration:(double)duration
{
  v7 = [MPAnimationKeyframeFunction keyframeFunctionWithFunction:function atTime:type offsetType:time withDuration:duration];
  [(MPAnimationPathKeyframed *)self addKeyframe:v7];
  return v7;
}

- (double)relativeTimeForKeyframe:(id)keyframe
{
  [keyframe time];
  v6 = v5;
  [(MPAnimationPathKeyframed *)self parentPhaseInDuration];
  v8 = v7;
  [(MPAnimationPathKeyframed *)self parentPhaseOutDuration];
  v10 = v9;
  [(MPAnimationPathKeyframed *)self parentMainDuration];
  v12 = v11;
  v13 = v8 + v10 + v11;
  offsetType = [keyframe offsetType];
  v15 = v6 + v8;
  v16 = v6 + v8 + v12;
  v17 = v6 + v13;
  if (offsetType != (&stru_20.flags + 3))
  {
    v17 = v6;
  }

  if (offsetType != (&stru_20.flags + 2))
  {
    v16 = v17;
  }

  if (offsetType != (&stru_20.flags + 1))
  {
    v15 = v16;
  }

  v18 = v8 + v12 + v6 * v10;
  v19 = v13 + v6 * v10;
  v20 = v6 + 1.0;
  v21 = (v6 + 1.0) * v13;
  if (offsetType != (&dword_4 + 3))
  {
    v21 = v6;
  }

  if (offsetType != (&dword_4 + 2))
  {
    v19 = v21;
  }

  if (offsetType != (&dword_4 + 1))
  {
    v18 = v19;
  }

  if (offsetType <= 100)
  {
    v15 = v18;
  }

  v22 = v20 * v8;
  v23 = v8 + v6 * v12;
  v24 = v8 + v20 * v12;
  if (offsetType != &dword_4)
  {
    v24 = v6;
  }

  if (offsetType != (&dword_0 + 3))
  {
    v23 = v24;
  }

  if (offsetType != (&dword_0 + 2))
  {
    v22 = v23;
  }

  v25 = v6 * v13;
  v26 = v6 * v8;
  if (offsetType != (&dword_0 + 1))
  {
    v26 = v6;
  }

  if (offsetType)
  {
    v25 = v26;
  }

  if (offsetType <= 1)
  {
    v22 = v25;
  }

  if (offsetType <= 4)
  {
    v15 = v22;
  }

  return v15 / v13;
}

- (double)parentPhaseInDuration
{
  animatedParent = [(MPAnimationPath *)self animatedParent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    animatedParent = [animatedParent parent];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    animatedParent = [animatedParent parentEffect];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return 0.0;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            return 0.0;
          }
        }
      }
    }
  }

  [animatedParent phaseInDuration];
  return result;
}

- (double)parentPhaseOutDuration
{
  animatedParent = [(MPAnimationPath *)self animatedParent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    animatedParent = [animatedParent parent];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    animatedParent = [animatedParent parentEffect];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return 0.0;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            return 0.0;
          }
        }
      }
    }
  }

  [animatedParent phaseOutDuration];
  return result;
}

- (double)parentMainDuration
{
  animatedParent = [(MPAnimationPath *)self animatedParent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    animatedParent = [animatedParent parent];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parentEffect = [animatedParent parentEffect];
LABEL_7:

    [parentEffect mainDuration];
    return result;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parentEffect = animatedParent;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [animatedParent duration];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), result = 0.0, (isKindOfClass))
    {
      [animatedParent duration];
      v7 = v6;
      [animatedParent phaseOutDuration];
      v9 = v7 - v8;
      [animatedParent phaseInDuration];
      return v9 - v10;
    }
  }

  return result;
}

- (id)fullDebugLog
{
  v3 = [[NSString stringByAppendingFormat:@"\n%@\n" stringWithFormat:?], "stringByAppendingFormat:", @"======================= Animation Path Keyframes =======================\n"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyframes = self->_keyframes;
  v5 = [(NSMutableSet *)keyframes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(keyframes);
        }

        v3 = -[NSString stringByAppendingFormat:](v3, "stringByAppendingFormat:", @"%@\n", [*(*(&v10 + 1) + 8 * v8) fullDebugLog]);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)keyframes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)copyKeyframes:(id)keyframes
{
  v5 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [keyframes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(keyframes);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) copy];
        [v5 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [keyframes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(MPAnimationPathKeyframed *)self addKeyframes:v5];
}

- (void)setAnimationPath:(id)path
{
  v87.receiver = self;
  v87.super_class = MPAnimationPathKeyframed;
  [(MPAnimationPath *)&v87 setAnimationPath:path];
  if (self->super._animationPath)
  {
    if ([(NSMutableSet *)self->_keyframes count])
    {
      animatedParent = [(MPAnimationPath *)self animatedParent];
      [(NSMutableSet *)self->_keyframes anyObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        keyframes = self->_keyframes;
        v6 = [(NSMutableSet *)keyframes countByEnumeratingWithState:&v83 objects:v92 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v84;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v84 != v8)
              {
                objc_enumerationMutation(keyframes);
              }

              v10 = *(*(&v83 + 1) + 8 * i);
              [v10 scalar];
              v12 = v11;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *&v13 = v12;
                [objc_msgSend(animatedParent convertMPAttributeToMCAttribute:+[NSNumber numberWithFloat:](NSNumber withKey:{"numberWithFloat:", v13), -[MPAnimationPath key](self, "key")), "floatValue"}];
                v12 = v14;
              }

              animationPath = self->super._animationPath;
              [v10 time];
              v18 = v17;
              offsetType = [v10 offsetType];
              v16 = v12;
              *&v20 = v16;
              [v10 setKeyframe:{-[MCAnimationPath createKeyframeWithScalar:atTime:offsetKind:](animationPath, "createKeyframeWithScalar:atTime:offsetKind:", offsetType, v20, v18)}];
            }

            v7 = [(NSMutableSet *)keyframes countByEnumeratingWithState:&v83 objects:v92 count:16];
          }

          while (v7);
        }
      }

      else
      {
        [(NSMutableSet *)self->_keyframes anyObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v27 = self->_keyframes;
          v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v79 objects:v91 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v80;
            do
            {
              for (j = 0; j != v29; j = j + 1)
              {
                if (*v80 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v79 + 1) + 8 * j);
                [v32 point];
                x = v33;
                y = v35;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v93.x = x;
                  v93.y = y;
                  v37 = [animatedParent convertMPAttributeToMCAttribute:NSStringFromCGPoint(v93) withKey:{-[MPAnimationPath key](self, "key")}];
                  v38 = CGPointFromString(v37);
                  x = v38.x;
                  y = v38.y;
                }

                v39 = self->super._animationPath;
                [v32 time];
                [v32 setKeyframe:{-[MCAnimationPath createKeyframeWithPoint:atTime:offsetKind:](v39, "createKeyframeWithPoint:atTime:offsetKind:", objc_msgSend(v32, "offsetType"), x, y, v40)}];
              }

              v29 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v79 objects:v91 count:16];
            }

            while (v29);
          }
        }

        else
        {
          [(NSMutableSet *)self->_keyframes anyObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v41 = self->_keyframes;
            v42 = [(NSMutableSet *)v41 countByEnumeratingWithState:&v75 objects:v90 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v76;
              do
              {
                for (k = 0; k != v43; k = k + 1)
                {
                  if (*v76 != v44)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v46 = *(*(&v75 + 1) + 8 * k);
                  vector = [v46 vector];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    vector = +[MPVector vectorFromString:](MPVector, "vectorFromString:", [animatedParent convertMPAttributeToMCAttribute:objc_msgSend(vector withKey:{"string"), -[MPAnimationPath key](self, "key")}]);
                  }

                  v48 = self->super._animationPath;
                  if (vector)
                  {
                    [vector vector];
                  }

                  else
                  {
                    v73[0] = 0;
                    v73[1] = 0;
                    v74 = 0;
                  }

                  [v46 time];
                  [v46 setKeyframe:{-[MCAnimationPath createKeyframeWithVector:atTime:offsetKind:](v48, "createKeyframeWithVector:atTime:offsetKind:", v73, objc_msgSend(v46, "offsetType"), v49)}];
                }

                v43 = [(NSMutableSet *)v41 countByEnumeratingWithState:&v75 objects:v90 count:16];
              }

              while (v43);
            }
          }

          else
          {
            [(NSMutableSet *)self->_keyframes anyObject];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v50 = self->_keyframes;
              v51 = [(NSMutableSet *)v50 countByEnumeratingWithState:&v69 objects:v89 count:16];
              if (v51)
              {
                v52 = v51;
                v53 = *v70;
                do
                {
                  for (m = 0; m != v52; m = m + 1)
                  {
                    if (*v70 != v53)
                    {
                      objc_enumerationMutation(v50);
                    }

                    v55 = *(*(&v69 + 1) + 8 * m);
                    v56 = self->super._animationPath;
                    function = [v55 function];
                    [v55 time];
                    v59 = v58;
                    offsetType2 = [v55 offsetType];
                    [v55 duration];
                    v62 = [(MCAnimationPath *)v56 createKeyframeWithFunction:function atTime:offsetType2 offsetKind:v59 forDuration:v61];
                    [v62 setFunctionParameters:{objc_msgSend(v55, "functionParameters")}];
                    [v55 innerEaseInControl];
                    *&v63 = v63;
                    [v62 setInnerEaseInControl:v63];
                    [v55 innerEaseOutControl];
                    *&v64 = v64;
                    [v62 setInnerEaseOutControl:v64];
                    [v55 functionTimeFactor];
                    [v62 setFunctionTimeFactor:?];
                    [v55 functionTimeOffset];
                    [v62 setFunctionTimeOffset:?];
                    [v55 setKeyframe:v62];
                  }

                  v52 = [(NSMutableSet *)v50 countByEnumeratingWithState:&v69 objects:v89 count:16];
                }

                while (v52);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v21 = self->_keyframes;
    v22 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v65 objects:v88 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v66;
      do
      {
        for (n = 0; n != v23; n = n + 1)
        {
          if (*v66 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v65 + 1) + 8 * n);
          [(NSMutableSet *)self->_keyframes anyObject];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [(NSMutableSet *)self->_keyframes anyObject];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [(NSMutableSet *)self->_keyframes anyObject];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [(NSMutableSet *)self->_keyframes anyObject];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }
            }
          }

          [v26 setKeyframe:0];
        }

        v23 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v65 objects:v88 count:16];
      }

      while (v23);
    }
  }
}

@end