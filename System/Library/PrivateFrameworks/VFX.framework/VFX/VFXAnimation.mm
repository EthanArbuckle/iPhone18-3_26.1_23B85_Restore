@interface VFXAnimation
+ (id)animationFromWorld:(id)world;
+ (id)animationNamed:(id)named;
+ (id)animationWithCAAnimation:(id)animation;
+ (id)animationWithCFXAnimation:(__CFXAnimation *)animation;
+ (id)animationWithContentsOfURL:(id)l;
+ (id)animationWithMDLTransform:(id)transform;
+ (int64_t)componentCountAtKeyPath:(id)path target:(id)target;
- (CAAnimation)caAnimation;
- (NSString)description;
- (VFXAnimation)initWithCAAnimation:(id)animation;
- (VFXAnimation)initWithCFXAnimation:(__CFXAnimation *)animation;
- (VFXAnimation)initWithCoder:(id)coder;
- (float)repeatDuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodeAnimation:(id)animation;
- (id)encodeAnimation:(id)animation;
- (id)subAnimations;
- (id)userAnimation;
- (id)valueForUndefinedKey:(id)key;
- (void)_optimizeKeyframesWithTarget:(id)target;
- (void)_setAnimationRef:(__CFXAnimation *)ref;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)prepareWithTarget:(id)target implicitDuration:(double)duration;
- (void)setAdditive:(BOOL)additive;
- (void)setAnimationDidStart:(id)start;
- (void)setAnimationDidStop:(id)stop;
- (void)setAnimationEvents:(id)events;
- (void)setAppliedOnCompletion:(BOOL)completion;
- (void)setAutoreverses:(BOOL)autoreverses;
- (void)setBeginTime:(double)time;
- (void)setBlendInDuration:(double)duration;
- (void)setBlendOutDuration:(double)duration;
- (void)setCumulative:(BOOL)cumulative;
- (void)setDuration:(double)duration;
- (void)setFillsBackward:(BOOL)backward;
- (void)setFillsForward:(BOOL)forward;
- (void)setKeyPath:(id)path;
- (void)setRemovedOnCompletion:(BOOL)completion;
- (void)setRepeatCount:(float)count;
- (void)setRepeatDuration:(float)duration;
- (void)setTimeOffset:(double)offset;
- (void)setTimingFunction:(id)function;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation VFXAnimation

- (void)dealloc
{
  animationRef = self->_animationRef;
  if (animationRef)
  {
    sub_1AF16CDFC(animationRef, 0);
  }

  animationDidStart = self->_animationDidStart;
  if (animationDidStart)
  {
    _Block_release(animationDidStart);
  }

  animationDidStop = self->_animationDidStop;
  if (animationDidStop)
  {
    _Block_release(animationDidStop);
  }

  v6 = self->_animationRef;
  if (v6)
  {
    CFRelease(v6);
    self->_animationRef = 0;
  }

  v7.receiver = self;
  v7.super_class = VFXAnimation;
  [(VFXAnimation *)&v7 dealloc];
}

- (VFXAnimation)initWithCFXAnimation:(__CFXAnimation *)animation
{
  v12.receiver = self;
  v12.super_class = VFXAnimation;
  v4 = [(VFXAnimation *)&v12 init];
  v7 = v4;
  if (v4)
  {
    v4->_userInfoLock._os_unfair_lock_opaque = 0;
    objc_msgSend__setAnimationRef_(v4, v5, animation, v6);
    objc_msgSend__updateModelFromPresentation(v7, v8, v9, v10);
    v7->_didMutate = 0;
  }

  return v7;
}

- (VFXAnimation)initWithCAAnimation:(id)animation
{
  v70.receiver = self;
  v70.super_class = VFXAnimation;
  v4 = [(VFXAnimation *)&v70 init];
  v8 = v4;
  if (v4)
  {
    v4->_userInfoLock._os_unfair_lock_opaque = 0;
    v4->_userAnimation = objc_msgSend_copy(animation, v5, v6, v7);
    objc_msgSend_duration(animation, v9, v10, v11);
    v8->_duration = v12;
    objc_msgSend_repeatCount(animation, v13, v14, v15);
    v8->_repeatCount = v16;
    v8->_autoreverses = objc_msgSend_autoreverses(animation, v17, v18, v19);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8->_additive = objc_msgSend_isAdditive(animation, v20, v21, v22);
      v8->_cumulative = objc_msgSend_isCumulative(animation, v23, v24, v25);
      v29 = objc_msgSend_keyPath(animation, v26, v27, v28);
      v8->_keyPath = objc_msgSend_copy(v29, v30, v31, v32);
    }

    v8->_removedOnCompletion = objc_msgSend_isRemovedOnCompletion(animation, v20, v21, v22);
    objc_msgSend_beginTime(animation, v33, v34, v35);
    v8->_beginTime = v36;
    objc_msgSend_timeOffset(animation, v37, v38, v39);
    v8->_timeOffset = v40;
    v44 = objc_msgSend_fillMode(animation, v41, v42, v43);
    v48 = *MEMORY[0x1E69797E0];
    v49 = v44 == *MEMORY[0x1E69797E0] || objc_msgSend_fillMode(animation, v45, v46, v47) == *MEMORY[0x1E69797E8];
    v8->_fillForward = v49;
    v53 = objc_msgSend_fillMode(animation, v45, v46, v47) == v48 || objc_msgSend_fillMode(animation, v50, v51, v52) == *MEMORY[0x1E69797D8];
    v8->_fillBackward = v53;
    if (v8->_animationEvents)
    {
      v54 = sub_1AF0D5194();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF42E0(v54, v50, v51, v52, v55, v56, v57, v58);
      }
    }

    v59 = objc_msgSend_animationEvents(animation, v50, v51, v52);
    v8->_animationEvents = objc_msgSend_copy(v59, v60, v61, v62);
    v66 = objc_msgSend_timingFunction(animation, v63, v64, v65);
    v8->_timingFunction = objc_msgSend_functionWithCAMediaTimingFunction_(VFXTimingFunction, v67, v66, v68);
    v8->_didMutate = 0;
  }

  return v8;
}

+ (id)animationWithCFXAnimation:(__CFXAnimation *)animation
{
  v4 = [VFXAnimation alloc];
  v7 = objc_msgSend_initWithCFXAnimation_(v4, v5, animation, v6);

  return v7;
}

- (void)_setAnimationRef:(__CFXAnimation *)ref
{
  animationRef = self->_animationRef;
  if (animationRef != ref)
  {
    if (animationRef)
    {
      CFRelease(animationRef);
      self->_animationRef = 0;
    }

    if (ref)
    {
      v6 = CFRetain(ref);
    }

    else
    {
      v6 = 0;
    }

    self->_animationRef = v6;
  }

  if (ref)
  {

    sub_1AF16CDFC(ref, self);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[26] = 0;
  animationRef = self->_animationRef;
  if (animationRef)
  {
    v6 = sub_1AF113C58(animationRef);
    objc_msgSend__setAnimationRef_(v4, v7, v6, v8);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  *(v4 + 8) = self->_timingFunction;
  *(v4 + 9) = self->_animationEvents;
  animationDidStart = self->_animationDidStart;
  if (animationDidStart)
  {
    *(v4 + 10) = _Block_copy(animationDidStart);
  }

  animationDidStop = self->_animationDidStop;
  if (animationDidStop)
  {
    *(v4 + 11) = _Block_copy(animationDidStop);
  }

  *(v4 + 3) = *&self->_duration;
  v4[8] = LODWORD(self->_repeatCount);
  *(v4 + 5) = *&self->_timeOffset;
  *(v4 + 6) = *&self->_beginTime;
  *(v4 + 56) = self->_autoreverses;
  *(v4 + 57) = self->_removedOnCompletion;
  *(v4 + 58) = self->_applyOnCompletion;
  *(v4 + 59) = self->_additive;
  *(v4 + 60) = self->_cumulative;
  *(v4 + 61) = self->_fillForward;
  *(v4 + 62) = self->_fillBackward;
  *(v4 + 15) = objc_msgSend_copy(self->_userAnimation, v9, v10, v11);
  *(v4 + 128) = self->_didMutate;
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3 = sub_1AF112998(self->_animationRef);
  v6 = objc_msgSend_componentsJoinedByString_(v3, v4, @".", v5);

  self->_keyPath = v6;
  self->_duration = sub_1AF112A24(self->_animationRef);
  self->_repeatCount = sub_1AF112B54(self->_animationRef);
  self->_autoreverses = sub_1AF112BFC(self->_animationRef);
  self->_beginTime = sub_1AF113034(self->_animationRef);
  self->_timeOffset = sub_1AF1130D0(self->_animationRef);
  self->_removedOnCompletion = sub_1AF112E80(self->_animationRef);
  v7 = sub_1AF1135C8(self->_animationRef);
  self->_fillForward = v7 & 1;
  self->_fillBackward = (v7 & 2) != 0;
  v8 = sub_1AF113448(self->_animationRef);
  v9 = sub_1AF290934(v8);
  animationEvents = self->_animationEvents;
  if (animationEvents != v9)
  {
    v11 = v9;

    self->_animationEvents = v11;
  }

  v12 = sub_1AF112CC8(self->_animationRef);
  if (v12)
  {
    v13 = v12;

    v14 = [VFXTimingFunction alloc];
    self->_timingFunction = objc_msgSend_initWithTimingFunctionRef_(v14, v15, v13, v16);
  }

  self->_applyOnCompletion = sub_1AF113270(self->_animationRef);
  self->_additive = sub_1AF112E34(self->_animationRef);
  self->_cumulative = sub_1AF112D7C(self->_animationRef);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF293900;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (id)encodeAnimation:(id)animation
{
  v205 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = MEMORY[0x1E696AD98];
  objc_msgSend_duration(animation, v7, v8, v9);
  v13 = objc_msgSend_numberWithDouble_(v6, v10, v11, v12);
  objc_msgSend_setValue_forKey_(v5, v14, v13, @"duration");
  v18 = objc_msgSend_timingFunction(animation, v15, v16, v17);
  objc_msgSend_setValue_forKey_(v5, v19, v18, @"timingFunction");
  v23 = objc_msgSend_fillMode(animation, v20, v21, v22);
  objc_msgSend_setValue_forKey_(v5, v24, v23, @"fillMode");
  v25 = MEMORY[0x1E696AD98];
  isRemovedOnCompletion = objc_msgSend_isRemovedOnCompletion(animation, v26, v27, v28);
  v32 = objc_msgSend_numberWithBool_(v25, v30, isRemovedOnCompletion, v31);
  objc_msgSend_setValue_forKey_(v5, v33, v32, @"removedOnCompletion");
  v34 = MEMORY[0x1E696AD98];
  v38 = objc_msgSend_autoreverses(animation, v35, v36, v37);
  v41 = objc_msgSend_numberWithBool_(v34, v39, v38, v40);
  objc_msgSend_setValue_forKey_(v5, v42, v41, @"autoreverses");
  v43 = MEMORY[0x1E696AD98];
  objc_msgSend_speed(animation, v44, v45, v46);
  v50 = objc_msgSend_numberWithFloat_(v43, v47, v48, v49);
  objc_msgSend_setValue_forKey_(v5, v51, v50, @"speed");
  v52 = MEMORY[0x1E696AD98];
  objc_msgSend_timeOffset(animation, v53, v54, v55);
  v59 = objc_msgSend_numberWithDouble_(v52, v56, v57, v58);
  objc_msgSend_setValue_forKey_(v5, v60, v59, @"timeOffset");
  v61 = MEMORY[0x1E696AD98];
  objc_msgSend_repeatCount(animation, v62, v63, v64);
  v68 = objc_msgSend_numberWithFloat_(v61, v65, v66, v67);
  objc_msgSend_setValue_forKey_(v5, v69, v68, @"repeatCount");
  v70 = MEMORY[0x1E696AD98];
  objc_msgSend_beginTime(animation, v71, v72, v73);
  v77 = objc_msgSend_numberWithDouble_(v70, v74, v75, v76);
  objc_msgSend_setValue_forKey_(v5, v78, v77, @"beginTime");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v82 = objc_msgSend_keyPath(animation, v79, v80, v81);
    objc_msgSend_setValue_forKey_(v5, v83, v82, @"keyPath");
    v84 = MEMORY[0x1E696AD98];
    isCumulative = objc_msgSend_isCumulative(animation, v85, v86, v87);
    v91 = objc_msgSend_numberWithBool_(v84, v89, isCumulative, v90);
    objc_msgSend_setValue_forKey_(v5, v92, v91, @"cumulative");
    v93 = MEMORY[0x1E696AD98];
    isAdditive = objc_msgSend_isAdditive(animation, v94, v95, v96);
    v100 = objc_msgSend_numberWithBool_(v93, v98, isAdditive, v99);
    objc_msgSend_setValue_forKey_(v5, v101, v100, @"additive");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v105 = objc_msgSend_fromValue(animation, v102, v103, v104);
    v108 = VFXDataFromValue(v105, 1, v106, v107);
    objc_msgSend_setValue_forKey_(v5, v109, v108, @"from");
    v113 = objc_msgSend_toValue(animation, v110, v111, v112);
    v116 = VFXDataFromValue(v113, 1, v114, v115);
    objc_msgSend_setValue_forKey_(v5, v117, v116, @"to");
    v121 = objc_msgSend_byValue(animation, v118, v119, v120);
    v124 = VFXDataFromValue(v121, 1, v122, v123);
    objc_msgSend_setValue_forKey_(v5, v125, v124, @"by");
    objc_msgSend_setValue_forKey_(v5, v126, @"basic", @"type");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v130 = objc_msgSend_values(animation, v127, v128, v129);
    v134 = VFXDataFromArrayOfValues(v130, v131, v132, v133);
    objc_msgSend_setValue_forKey_(v5, v135, v134, @"values");
    v139 = objc_msgSend_keyTimes(animation, v136, v137, v138);
    objc_msgSend_setValue_forKey_(v5, v140, v139, @"keyTimes");
    v144 = objc_msgSend_timingFunctions(animation, v141, v142, v143);
    objc_msgSend_setValue_forKey_(v5, v145, v144, @"timingFunctions");
    v149 = objc_msgSend_tensionValues(animation, v146, v147, v148);
    objc_msgSend_setValue_forKey_(v5, v150, v149, @"tensionValues");
    v154 = objc_msgSend_continuityValues(animation, v151, v152, v153);
    objc_msgSend_setValue_forKey_(v5, v155, v154, @"continuityValues");
    v159 = objc_msgSend_biasValues(animation, v156, v157, v158);
    objc_msgSend_setValue_forKey_(v5, v160, v159, @"biasValues");
    v164 = objc_msgSend_calculationMode(animation, v161, v162, v163);
    objc_msgSend_setValue_forKey_(v5, v165, v164, @"calculationMode");
    v169 = objc_msgSend_rotationMode(animation, v166, v167, v168);
    objc_msgSend_setValue_forKey_(v5, v170, v169, @"rotationMode");
    objc_msgSend_setValue_forKey_(v5, v171, @"keyframe", @"type");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v172 = objc_alloc(MEMORY[0x1E695DF70]);
    v176 = objc_msgSend_animations(animation, v173, v174, v175);
    v180 = objc_msgSend_count(v176, v177, v178, v179);
    v183 = objc_msgSend_initWithCapacity_(v172, v181, v180, v182);
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v187 = objc_msgSend_animations(animation, v184, v185, v186, 0);
    v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v188, &v200, v204, 16);
    if (v189)
    {
      v192 = v189;
      v193 = *v201;
      do
      {
        v194 = 0;
        do
        {
          if (*v201 != v193)
          {
            objc_enumerationMutation(v187);
          }

          v195 = objc_msgSend_encodeAnimation_(self, v190, *(*(&v200 + 1) + 8 * v194), v191);
          objc_msgSend_addObject_(v183, v196, v195, v197);
          ++v194;
        }

        while (v192 != v194);
        v192 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v190, &v200, v204, 16);
      }

      while (v192);
    }

    objc_msgSend_setValue_forKey_(v5, v190, v183, @"animations");
    objc_msgSend_setValue_forKey_(v5, v198, @"group", @"type");
  }

  return v5;
}

- (id)decodeAnimation:(id)animation
{
  v209 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_valueForKey_(animation, a2, @"type", v3);
  v9 = objc_msgSend_valueForKey_(animation, v7, @"keyPath", v8);
  if (objc_msgSend_isEqualToString_(v6, v10, @"basic", v11))
  {
    v14 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v12, v9, v13);
    v17 = objc_msgSend_valueForKey_(animation, v15, @"from", v16);
    v21 = VFXValueFromData(v17, v18, v19, v20);
    objc_msgSend_setFromValue_(v14, v22, v21, v23);
    v26 = objc_msgSend_valueForKey_(animation, v24, @"to", v25);
    v30 = VFXValueFromData(v26, v27, v28, v29);
    objc_msgSend_setToValue_(v14, v31, v30, v32);
    v35 = objc_msgSend_valueForKey_(animation, v33, @"by", v34);
    v39 = VFXValueFromData(v35, v36, v37, v38);
    objc_msgSend_setByValue_(v14, v40, v39, v41);
  }

  else if (objc_msgSend_isEqualToString_(v6, v12, @"keyframe", v13))
  {
    v14 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979390], v44, v9, v45);
    v48 = objc_msgSend_valueForKey_(animation, v46, @"values", v47);
    v52 = VFXArrayOfValueFromData(v48, v49, v50, v51);
    objc_msgSend_setValues_(v14, v53, v52, v54);
    v57 = objc_msgSend_valueForKey_(animation, v55, @"keyTimes", v56);
    objc_msgSend_setKeyTimes_(v14, v58, v57, v59);
    v62 = objc_msgSend_valueForKey_(animation, v60, @"timingFunctions", v61);
    objc_msgSend_setTimingFunctions_(v14, v63, v62, v64);
    v67 = objc_msgSend_valueForKey_(animation, v65, @"tensionValues", v66);
    objc_msgSend_setTensionValues_(v14, v68, v67, v69);
    v72 = objc_msgSend_valueForKey_(animation, v70, @"continuityValues", v71);
    objc_msgSend_setContinuityValues_(v14, v73, v72, v74);
    v77 = objc_msgSend_valueForKey_(animation, v75, @"biasValues", v76);
    objc_msgSend_setBiasValues_(v14, v78, v77, v79);
    v82 = objc_msgSend_valueForKey_(animation, v80, @"calculationMode", v81);
    objc_msgSend_setCalculationMode_(v14, v83, v82, v84);
    v87 = objc_msgSend_valueForKey_(animation, v85, @"rotationMode", v86);
    objc_msgSend_setRotationMode_(v14, v88, v87, v89);
  }

  else if (objc_msgSend_isEqualToString_(v6, v44, @"group", v45))
  {
    v14 = objc_msgSend_animation(MEMORY[0x1E6979308], v42, v90, v43);
    v93 = objc_msgSend_valueForKey_(animation, v91, @"animations", v92);
    v94 = objc_alloc(MEMORY[0x1E695DF70]);
    v98 = objc_msgSend_count(v93, v95, v96, v97);
    v101 = objc_msgSend_initWithCapacity_(v94, v99, v98, v100);
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v102, &v204, v208, 16);
    if (v103)
    {
      v106 = v103;
      v107 = *v205;
      do
      {
        v108 = 0;
        do
        {
          if (*v205 != v107)
          {
            objc_enumerationMutation(v93);
          }

          v109 = objc_msgSend_decodeAnimation_(self, v104, *(*(&v204 + 1) + 8 * v108), v105);
          objc_msgSend_addObject_(v101, v110, v109, v111);
          ++v108;
        }

        while (v106 != v108);
        v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v104, &v204, v208, 16);
      }

      while (v106);
    }

    objc_msgSend_setAnimations_(v14, v104, v101, v105);
  }

  else
  {
    v14 = 0;
  }

  v112 = objc_msgSend_valueForKey_(animation, v42, @"duration", v43);
  objc_msgSend_doubleValue(v112, v113, v114, v115);
  objc_msgSend_setDuration_(v14, v116, v117, v118);
  v121 = objc_msgSend_valueForKey_(animation, v119, @"timingFunction", v120);
  objc_msgSend_setTimingFunction_(v14, v122, v121, v123);
  v126 = objc_msgSend_valueForKey_(animation, v124, @"fillMode", v125);
  objc_msgSend_setFillMode_(v14, v127, v126, v128);
  v131 = objc_msgSend_valueForKey_(animation, v129, @"removedOnCompletion", v130);
  v135 = objc_msgSend_BOOLValue(v131, v132, v133, v134);
  objc_msgSend_setRemovedOnCompletion_(v14, v136, v135, v137);
  v140 = objc_msgSend_valueForKey_(animation, v138, @"autoreverses", v139);
  v144 = objc_msgSend_BOOLValue(v140, v141, v142, v143);
  objc_msgSend_setAutoreverses_(v14, v145, v144, v146);
  v149 = objc_msgSend_valueForKey_(animation, v147, @"speed", v148);
  objc_msgSend_floatValue(v149, v150, v151, v152);
  objc_msgSend_setSpeed_(v14, v153, v154, v155);
  v158 = objc_msgSend_valueForKey_(animation, v156, @"timeOffset", v157);
  objc_msgSend_floatValue(v158, v159, v160, v161);
  objc_msgSend_setTimeOffset_(v14, v163, v164, v165, v162);
  v168 = objc_msgSend_valueForKey_(animation, v166, @"repeatCount", v167);
  objc_msgSend_floatValue(v168, v169, v170, v171);
  objc_msgSend_setRepeatCount_(v14, v172, v173, v174);
  v177 = objc_msgSend_valueForKey_(animation, v175, @"beginTime", v176);
  objc_msgSend_floatValue(v177, v178, v179, v180);
  objc_msgSend_setBeginTime_(v14, v182, v183, v184, v181);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v187 = objc_msgSend_valueForKey_(animation, v185, @"cumulative", v186);
    v191 = objc_msgSend_BOOLValue(v187, v188, v189, v190);
    objc_msgSend_setCumulative_(v14, v192, v191, v193);
    v196 = objc_msgSend_valueForKey_(animation, v194, @"additive", v195);
    v200 = objc_msgSend_BOOLValue(v196, v197, v198, v199);
    objc_msgSend_setAdditive_(v14, v201, v200, v202);
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_caAnimation(self, a2, coder, v3);
  v9 = objc_msgSend_encodeAnimation_(self, v7, v6, v8);
  sub_1AF37266C(coder, v9, @"animation");
  v13 = objc_msgSend_keyPath(self, v10, v11, v12);
  objc_msgSend_encodeObject_forKey_(coder, v14, v13, @"keyPath");
  objc_msgSend_duration(self, v15, v16, v17);
  objc_msgSend_encodeDouble_forKey_(coder, v18, @"duration", v19);
  objc_msgSend_repeatCount(self, v20, v21, v22);
  objc_msgSend_encodeDouble_forKey_(coder, v24, @"repeatCount", v25, v23);
  objc_msgSend_timeOffset(self, v26, v27, v28);
  objc_msgSend_encodeDouble_forKey_(coder, v29, @"timeOffset", v30);
  objc_msgSend_beginTime(self, v31, v32, v33);
  objc_msgSend_encodeDouble_forKey_(coder, v34, @"beginTime", v35);
  v39 = objc_msgSend_autoreverses(self, v36, v37, v38);
  objc_msgSend_encodeBool_forKey_(coder, v40, v39, @"autoreverses");
  isRemovedOnCompletion = objc_msgSend_isRemovedOnCompletion(self, v41, v42, v43);
  objc_msgSend_encodeBool_forKey_(coder, v45, isRemovedOnCompletion, @"removedOnCompletion");
  isAppliedOnCompletion = objc_msgSend_isAppliedOnCompletion(self, v46, v47, v48);
  objc_msgSend_encodeBool_forKey_(coder, v50, isAppliedOnCompletion, @"applyOnCompletion");
  isAdditive = objc_msgSend_isAdditive(self, v51, v52, v53);
  objc_msgSend_encodeBool_forKey_(coder, v55, isAdditive, @"additive");
  isCumulative = objc_msgSend_isCumulative(self, v56, v57, v58);
  objc_msgSend_encodeBool_forKey_(coder, v60, isCumulative, @"cumulative");
  v64 = objc_msgSend_fillsForward(self, v61, v62, v63);
  objc_msgSend_encodeBool_forKey_(coder, v65, v64, @"fillForward");
  v69 = objc_msgSend_fillsBackward(self, v66, v67, v68);
  objc_msgSend_encodeBool_forKey_(coder, v70, v69, @"fillBackward");
  v74 = objc_msgSend_timingFunction(self, v71, v72, v73);
  objc_msgSend_encodeObject_forKey_(coder, v75, v74, @"timingFunction");
  if (self->_userInfo)
  {
    os_unfair_lock_lock(&self->_userInfoLock);
    objc_msgSend_encodeObject_forKey_(coder, v76, self->_userInfo, @"userInfo");

    os_unfair_lock_unlock(&self->_userInfoLock);
  }
}

- (VFXAnimation)initWithCoder:(id)coder
{
  v102[1] = *MEMORY[0x1E69E9840];
  v101.receiver = self;
  v101.super_class = VFXAnimation;
  v4 = [(VFXAnimation *)&v101 init];
  v5 = v4;
  if (v4)
  {
    v4->_userInfoLock._os_unfair_lock_opaque = 0;
    v6 = sub_1AF373844();
    v102[0] = objc_opt_class();
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v102, 1);
    v11 = objc_msgSend_setByAddingObjectsFromArray_(v6, v9, v8, v10);
    v12 = sub_1AF3726E8(coder, @"animation", v11);
    if (v12)
    {
      v16 = v12;
      v17 = objc_msgSend_immediateMode(VFXTransaction, v13, v14, v15);
      objc_msgSend_setImmediateMode_(VFXTransaction, v18, 1, v19);
      v5->_userAnimation = objc_msgSend_decodeAnimation_(v5, v20, v16, v21);
      v22 = objc_opt_class();
      v24 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v23, v22, @"keyPath");
      objc_msgSend_setKeyPath_(v5, v25, v24, v26);
      objc_msgSend_decodeDoubleForKey_(coder, v27, @"duration", v28);
      objc_msgSend_setDuration_(v5, v29, v30, v31);
      objc_msgSend_decodeDoubleForKey_(coder, v32, @"repeatCount", v33);
      *&v34 = v34;
      objc_msgSend_setRepeatCount_(v5, v35, v36, v37, v34);
      objc_msgSend_decodeDoubleForKey_(coder, v38, @"timeOffset", v39);
      objc_msgSend_setTimeOffset_(v5, v40, v41, v42);
      objc_msgSend_decodeDoubleForKey_(coder, v43, @"beginTime", v44);
      objc_msgSend_setBeginTime_(v5, v45, v46, v47);
      objc_msgSend_beginTime(v5, v48, v49, v50);
      objc_msgSend_setBeginTime_(v5->_userAnimation, v51, v52, v53);
      v56 = objc_msgSend_decodeBoolForKey_(coder, v54, @"autoreverses", v55);
      objc_msgSend_setAutoreverses_(v5, v57, v56, v58);
      v61 = objc_msgSend_decodeBoolForKey_(coder, v59, @"appliedOnCompletion", v60);
      objc_msgSend_setAppliedOnCompletion_(v5, v62, v61, v63);
      v66 = objc_msgSend_decodeBoolForKey_(coder, v64, @"removedOnCompletion", v65);
      objc_msgSend_setRemovedOnCompletion_(v5, v67, v66, v68);
      v71 = objc_msgSend_decodeBoolForKey_(coder, v69, @"additive", v70);
      objc_msgSend_setAdditive_(v5, v72, v71, v73);
      v76 = objc_msgSend_decodeBoolForKey_(coder, v74, @"cumulative", v75);
      objc_msgSend_setCumulative_(v5, v77, v76, v78);
      v81 = objc_msgSend_decodeBoolForKey_(coder, v79, @"fillForward", v80);
      objc_msgSend_setFillsForward_(v5, v82, v81, v83);
      v86 = objc_msgSend_decodeBoolForKey_(coder, v84, @"fillBackward", v85);
      objc_msgSend_setFillsBackward_(v5, v87, v86, v88);
      v89 = objc_opt_class();
      v91 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v90, v89, @"timingFunction");
      objc_msgSend_setTimingFunction_(v5, v92, v91, v93);
      v94 = sub_1AF37287C();
      v96 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v95, v94, @"userInfo");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_userInfo = objc_msgSend_mutableCopy(v96, v97, v98, v99);
      }

      v5->_didMutate = 0;
      objc_msgSend_setImmediateMode_(VFXTransaction, v97, v17, v99);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

+ (id)animationNamed:(id)named
{
  v6 = VFXGetResourceBundle(self, a2, named, v3);
  v10 = objc_msgSend_pathExtension(named, v7, v8, v9);
  v15 = objc_msgSend_stringByDeletingPathExtension(named, v11, v12, v13);
  if (v10)
  {
    result = objc_msgSend_URLForResource_withExtension_(v6, v14, v15, v10);
  }

  else
  {
    result = objc_msgSend_URLForResource_withExtension_(v6, v14, v15, @"vfx-anim");
  }

  if (result)
  {

    return MEMORY[0x1EEE66B58](self, sel_animationWithContentsOfURL_, result, v17);
  }

  return result;
}

+ (id)animationFromWorld:(id)world
{
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, world, v3);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v9 = objc_msgSend_rootNode(world, v6, v7, v8);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1AF294B48;
  v35[3] = &unk_1E7A7E1F8;
  v35[4] = v5;
  v35[5] = &v36;
  objc_msgSend_enumerateHierarchyUsingBlock_(v9, v10, v35, v11);
  if (objc_msgSend_count(v5, v12, v13, v14))
  {
    if (objc_msgSend_count(v5, v15, v16, v17) == 1)
    {
      v21 = objc_msgSend_objectAtIndexedSubscript_(v5, v18, 0, v20);
      v24 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v22, v21, v23);
    }

    else
    {
      v26 = objc_msgSend_animation(MEMORY[0x1E6979308], v18, v19, v20);
      objc_msgSend_setAnimations_(v26, v27, v5, v28);
      objc_msgSend_setDuration_(v26, v29, v30, v31, v37[3]);
      v24 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v32, v26, v33);
    }

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  _Block_object_dispose(&v36, 8);
  return v25;
}

+ (id)animationWithContentsOfURL:(id)l
{
  v25[3] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], a2, l, v3);
  v24 = 0;
  v7 = MEMORY[0x1E696ACD0];
  v8 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v25, 3);
  v13 = objc_msgSend_setWithArray_(v8, v11, v10, v12);
  v15 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v7, v14, v13, v6, &v24);
  if (v24 && (v16 = sub_1AF0D5194(), os_log_type_enabled(v16, OS_LOG_TYPE_ERROR)))
  {
    sub_1AFDF4358(l, &v24, v16, v17);
    if (!v15)
    {
      return v15;
    }
  }

  else if (!v15)
  {
    return v15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return objc_msgSend_animationFromWorld_(self, v18, v15, v19);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return objc_msgSend_animationWithCAAnimation_(VFXAnimation, v21, v15, v22);
  }

  return v15;
}

+ (id)animationWithCAAnimation:(id)animation
{
  v4 = [VFXAnimation alloc];
  v7 = objc_msgSend_initWithCAAnimation_(v4, v5, animation, v6);

  return v7;
}

- (void)prepareWithTarget:(id)target implicitDuration:(double)duration
{
  if (self->_animationRef || (v13 = objc_msgSend_caAnimation(self, a2, target, v4)) == 0)
  {
LABEL_2:
    objc_msgSend_duration(self, a2, target, v4);
    if (v10 == 0.0)
    {
      if (duration == 0.0)
      {
        v11 = sub_1AF0D5194();
        duration = 0.25;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 0;
          _os_log_impl(&dword_1AF0CE000, v11, OS_LOG_TYPE_DEFAULT, "Warning: default duration is zero - using default transaction duration", v28, 2u);
        }
      }

      objc_msgSend_setDuration_(self, v7, v8, v9, duration);
    }

    return;
  }

  v14 = sub_1AF2919D4(v13, target);
  if (v14)
  {
    v18 = v14;
    v19 = objc_msgSend_timingFunction(self, v15, v16, v17);
    if (v19)
    {
      v23 = objc_msgSend_cfxTimingFunction(v19, v20, v21, v22);
      sub_1AF112C48(v18, v23);
    }

    objc_msgSend__setAnimationRef_(self, v20, v18, v22);
    objc_msgSend__updateModelFromPresentation(self, v24, v25, v26);
    goto LABEL_2;
  }

  v27 = sub_1AF0D5194();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF43F0();
  }
}

- (id)userAnimation
{
  if (*(self + 15))
  {
    return *(self + 15);
  }

  return self;
}

- (CAAnimation)caAnimation
{
  didMutate = self->_didMutate;
  self->_didMutate = 0;
  userAnimation = self->_userAnimation;
  if (didMutate || userAnimation == 0)
  {
    objc_sync_enter(self);
    userAnimation = self->_caAnimationCache;
    objc_sync_exit(self);
    if (didMutate || !userAnimation)
    {
      animationRef = self->_animationRef;
      if (animationRef)
      {
        userAnimation = sub_1AF291C18(animationRef);
LABEL_18:
        objc_sync_enter(self);

        self->_caAnimationCache = userAnimation;
        objc_sync_exit(self);
        return userAnimation;
      }

      v10 = self->_userAnimation;
      if (v10)
      {
        userAnimation = objc_msgSend_copy(v10, v6, v7, v8);
        objc_msgSend_duration(self, v11, v12, v13);
        objc_msgSend_setDuration_(userAnimation, v14, v15, v16);
        objc_msgSend_repeatCount(self, v17, v18, v19);
        objc_msgSend_setRepeatCount_(userAnimation, v20, v21, v22);
        v26 = objc_msgSend_autoreverses(self, v23, v24, v25);
        objc_msgSend_setAutoreverses_(userAnimation, v27, v26, v28);
        objc_msgSend_beginTime(self, v29, v30, v31);
        objc_msgSend_setBeginTime_(userAnimation, v32, v33, v34);
        objc_msgSend_timeOffset(self, v35, v36, v37);
        objc_msgSend_setTimeOffset_(userAnimation, v38, v39, v40);
        isRemovedOnCompletion = objc_msgSend_isRemovedOnCompletion(self, v41, v42, v43);
        objc_msgSend_setRemovedOnCompletion_(userAnimation, v45, isRemovedOnCompletion, v46);
        v50 = objc_msgSend_fillsForward(self, v47, v48, v49);
        v54 = objc_msgSend_fillsBackward(self, v51, v52, v53);
        v57 = MEMORY[0x1E69797E0];
        if (!v50)
        {
          v57 = MEMORY[0x1E69797D8];
        }

        v58 = MEMORY[0x1E69797E8];
        if (!v50)
        {
          v58 = MEMORY[0x1E69797F0];
        }

        if (!v54)
        {
          v57 = v58;
        }

        objc_msgSend_setFillMode_(userAnimation, v55, *v57, v56);
        v62 = objc_msgSend_animationEvents(self, v59, v60, v61);
        objc_msgSend_setAnimationEvents_(userAnimation, v63, v62, v64);
        goto LABEL_18;
      }

      v66 = sub_1AF0D5194();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF442C();
      }

      return 0;
    }
  }

  return userAnimation;
}

- (void)setKeyPath:(id)path
{
  self->_keyPath = objc_msgSend_copy(path, v5, v6, v7);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_setKeyPath_(self->_userAnimation, v8, self->_keyPath, v9);
  }

  if (self->_animationRef)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF295218;
    v10[3] = &unk_1E7A7E220;
    v10[4] = path;
    v10[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v10);
  }
}

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    objc_msgSend__didMutate(self, a2, v3, v4);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF295344;
      v8[3] = &unk_1E7A7E248;
      v8[4] = self;
      *&v8[5] = duration;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (void)setRepeatCount:(float)count
{
  if (self->_repeatCount != count)
  {
    self->_repeatCount = count;
    objc_msgSend__didMutate(self, a2, v3, v4);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF295414;
      v8[3] = &unk_1E7A7E270;
      v8[4] = self;
      countCopy = count;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (float)repeatDuration
{
  objc_msgSend_duration(self, a2, v2, v3);
  v6 = v5;
  objc_msgSend_repeatCount(self, v7, v8, v9);
  result = v6 * v10;
  if (self->_autoreverses)
  {
    return result + result;
  }

  return result;
}

- (void)setRepeatDuration:(float)duration
{
  if (duration != 0.0)
  {
    duration = self->_duration;
    if (duration != 0.0)
    {
      v6 = duration / duration;
      *&v6 = v6;
      if (self->_autoreverses)
      {
        *&v6 = *&v6 * 0.5;
      }

      objc_msgSend_setRepeatCount_(self, a2, v3, v4, v6);
    }
  }
}

- (void)setTimeOffset:(double)offset
{
  if (self->_timeOffset != offset)
  {
    self->_timeOffset = offset;
    objc_msgSend__didMutate(self, a2, v3, v4);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF295570;
      v8[3] = &unk_1E7A7E248;
      v8[4] = self;
      *&v8[5] = offset;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (void)setBeginTime:(double)time
{
  if (self->_beginTime != time)
  {
    self->_beginTime = time;
    objc_msgSend__didMutate(self, a2, v3, v4);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF29563C;
      v8[3] = &unk_1E7A7E248;
      v8[4] = self;
      *&v8[5] = time;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (void)setAutoreverses:(BOOL)autoreverses
{
  if (self->_autoreverses != autoreverses)
  {
    v11 = v4;
    v12 = v5;
    self->_autoreverses = autoreverses;
    objc_msgSend__didMutate(self, a2, autoreverses, v3);
    if (self->_animationRef)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF295704;
      v9[3] = &unk_1E7A7E298;
      v9[4] = self;
      autoreversesCopy = autoreverses;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (void)setFillsForward:(BOOL)forward
{
  if (self->_fillForward != forward)
  {
    v11 = v4;
    v12 = v5;
    self->_fillForward = forward;
    objc_msgSend__didMutate(self, a2, forward, v3);
    if (self->_animationRef)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2957CC;
      v9[3] = &unk_1E7A7E298;
      v9[4] = self;
      forwardCopy = forward;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (void)setFillsBackward:(BOOL)backward
{
  if (self->_fillBackward != backward)
  {
    v11 = v4;
    v12 = v5;
    self->_fillBackward = backward;
    objc_msgSend__didMutate(self, a2, backward, v3);
    if (self->_animationRef)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2958D0;
      v9[3] = &unk_1E7A7E298;
      v9[4] = self;
      backwardCopy = backward;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (void)setTimingFunction:(id)function
{
  timingFunction = self->_timingFunction;
  if (timingFunction != function)
  {
    v12[8] = v3;
    v12[9] = v4;

    self->_timingFunction = function;
    objc_msgSend__didMutate(self, v8, v9, v10);
    if (self->_animationRef)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1AF2959E8;
      v12[3] = &unk_1E7A7E220;
      v12[4] = function;
      v12[5] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v12);
    }
  }
}

- (void)setRemovedOnCompletion:(BOOL)completion
{
  if (self->_removedOnCompletion != completion)
  {
    v11 = v4;
    v12 = v5;
    self->_removedOnCompletion = completion;
    objc_msgSend__didMutate(self, a2, completion, v3);
    if (self->_animationRef)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF295AE0;
      v9[3] = &unk_1E7A7E298;
      v9[4] = self;
      completionCopy = completion;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (void)setAppliedOnCompletion:(BOOL)completion
{
  if (self->_applyOnCompletion != completion)
  {
    v11 = v4;
    v12 = v5;
    self->_applyOnCompletion = completion;
    objc_msgSend__didMutate(self, a2, completion, v3);
    if (self->_animationRef)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF295BA8;
      v9[3] = &unk_1E7A7E298;
      v9[4] = self;
      completionCopy = completion;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (void)setAnimationDidStart:(id)start
{
  animationDidStart = self->_animationDidStart;
  if (animationDidStart)
  {
    _Block_release(animationDidStart);
  }

  self->_animationDidStart = 0;
  if (start)
  {
    self->_animationDidStart = _Block_copy(start);
  }

  if (self->_animationRef)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF295C74;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setAnimationDidStop:(id)stop
{
  animationDidStop = self->_animationDidStop;
  if (animationDidStop)
  {
    _Block_release(animationDidStop);
  }

  self->_animationDidStop = 0;
  if (stop)
  {
    self->_animationDidStop = _Block_copy(stop);
  }

  if (self->_animationRef)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF295E68;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setAnimationEvents:(id)events
{
  animationEvents = self->_animationEvents;
  if (animationEvents != events)
  {
    v12[8] = v3;
    v12[9] = v4;

    self->_animationEvents = events;
    objc_msgSend__didMutate(self, v8, v9, v10);
    if (self->_animationRef)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1AF2962B4;
      v12[3] = &unk_1E7A7E220;
      v12[4] = self;
      v12[5] = events;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v12);
    }
  }
}

- (void)setBlendInDuration:(double)duration
{
  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF4468();
  }
}

- (void)setBlendOutDuration:(double)duration
{
  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF44A4();
  }
}

- (void)setAdditive:(BOOL)additive
{
  if (self->_additive != additive)
  {
    v11 = v4;
    v12 = v5;
    self->_additive = additive;
    objc_msgSend__didMutate(self, a2, additive, v3);
    if (self->_animationRef)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF296430;
      v9[3] = &unk_1E7A7E298;
      v9[4] = self;
      additiveCopy = additive;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (void)setCumulative:(BOOL)cumulative
{
  if (self->_cumulative != cumulative)
  {
    v11 = v4;
    v12 = v5;
    self->_cumulative = cumulative;
    objc_msgSend__didMutate(self, a2, cumulative, v3);
    if (self->_animationRef)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF296550;
      v9[3] = &unk_1E7A7E298;
      v9[4] = self;
      cumulativeCopy = cumulative;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  os_unfair_lock_lock(&self->_userInfoLock);
  userInfo = self->_userInfo;
  if (!value || userInfo)
  {
    if (value)
    {
      objc_msgSend_setValue_forKey_(userInfo, v7, value, key);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(userInfo, v7, key, v8);
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_userInfo = v10;
    objc_msgSend_setValue_forKey_(v10, v11, value, key);
  }

  os_unfair_lock_unlock(&self->_userInfoLock);
}

- (id)valueForUndefinedKey:(id)key
{
  os_unfair_lock_lock(&self->_userInfoLock);
  v7 = objc_msgSend_valueForKey_(self->_userInfo, v5, key, v6);
  os_unfair_lock_unlock(&self->_userInfoLock);

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  duration = self->_duration;
  return objc_msgSend_stringWithFormat_(v3, v7, @"<%@: %p, keyPath=%@ duration=%f repeatCount=%f>", v8, v5, self, self->_keyPath, duration, self->_repeatCount);
}

- (void)_optimizeKeyframesWithTarget:(id)target
{
  objc_msgSend_prepareWithTarget_implicitDuration_(self, a2, target, v3, 0.0);
  animationRef = self->_animationRef;
  if (animationRef)
  {
    sub_1AF29679C(animationRef);
    self->_didMutate = 1;

    self->_userAnimation = 0;
  }

  else
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AF0CE000, v6, OS_LOG_TYPE_DEFAULT, "Warning: failed to optimize keyframes", v7, 2u);
    }
  }
}

- (id)subAnimations
{
  animationRef = self->_animationRef;
  if (!animationRef)
  {
    return 0;
  }

  v4 = CFGetTypeID(animationRef);
  if (v4 == sub_1AF1157BC())
  {
    v5 = CFRetain(self->_animationRef);
  }

  else
  {
    if (v4 != sub_1AF1142BC())
    {
      return 0;
    }

    v5 = sub_1AF11447C(self->_animationRef);
  }

  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = sub_1AF115980(v5);
  v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v8, v7, v9);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v12 = sub_1AF1159CC(v6, i);
      v13 = sub_1AF113C58(v12);
      v16 = objc_msgSend_animationWithCFXAnimation_(VFXAnimation, v14, v13, v15);
      objc_msgSend_addObject_(v10, v17, v16, v18);
      CFRelease(v13);
    }
  }

  CFRelease(v6);
  return v10;
}

+ (int64_t)componentCountAtKeyPath:(id)path target:(id)target
{
  v5 = objc_msgSend___CFObject(target, a2, path, target);
  if (!v5)
  {
    return -1;
  }

  v6 = sub_1AF1DB6D0(v5, path, 1);
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  v8 = sub_1AF1DE538(v6);
  v9 = sub_1AF2884B4(v8);
  CFRelease(v7);
  return v9;
}

+ (id)animationWithMDLTransform:(id)transform
{
  v5 = objc_msgSend_transformAnimation(transform, a2, transform, v3);

  return objc_msgSend_animationWithCAAnimation_(VFXAnimation, v4, v5, v6);
}

@end