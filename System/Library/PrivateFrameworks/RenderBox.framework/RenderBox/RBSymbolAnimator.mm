@interface RBSymbolAnimator
- ($A37143018C4D5433AE0D7FFC21A1DA3D)transform;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)colorForStyle:(unsigned int)style;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)opacities;
- (CGPoint)anchorPoint;
- (CGPoint)position;
- (CGPoint)presentationPosition;
- (CGRect)alignmentRect;
- (CGRect)boundingRect;
- (CGRect)unroundedAlignmentRect;
- (CGSize)size;
- (id).cxx_construct;
- (id)copyDebugDescriptionForUpdate:(_RBSymbolUpdate *)update;
- (id)fillProviderForStyle:(unsigned int)style;
- (int)scaleLevel;
- (uint64_t)notifyObservers;
- (uint64_t)unblockObservers;
- (unsigned)addAnimation:(unsigned int)animation options:(id)options;
- (unsigned)depth;
- (void)addObserver:(uint64_t)observer;
- (void)cancelAllAnimations;
- (void)cancelAnimation:(unsigned int)animation;
- (void)cancelAnimationWithID:(unsigned int)d;
- (void)dealloc;
- (void)endUpdate:(_RBSymbolUpdate *)update;
- (void)notifyObservers;
- (void)removeAllAnimations;
- (void)removeAnimation:(unsigned int)animation;
- (void)removeAnimationWithID:(unsigned int)d;
- (void)removeObserver:(uint64_t)observer;
- (void)setAnchorPoint:(CGPoint)point;
- (void)setColor:(id)color forStyle:(unsigned int)style;
- (void)setCurrentTime:(double)time;
- (void)setDepth:(unsigned int)depth;
- (void)setFillProvider:(id)provider forStyle:(unsigned int)style;
- (void)setFlipsRightToLeft:(BOOL)left;
- (void)setGlyph:(id)glyph;
- (void)setHidden:(BOOL)hidden;
- (void)setOpacities:(id)opacities;
- (void)setPosition:(CGPoint)position;
- (void)setPresentationPosition:(CGPoint)position;
- (void)setPriority:(float)priority ofAnimationWithID:(unsigned int)d;
- (void)setRenderingMode:(unsigned int)mode;
- (void)setRenderingOptions:(unsigned int)options;
- (void)setScaleLevel:(int)level;
- (void)setSize:(CGSize)size;
- (void)setTransform:(id)transform;
- (void)setVariableValue:(double)value;
@end

@implementation RBSymbolAnimator

- (id).cxx_construct
{
  RB::Symbol::Animator::Animator(&self->_animator);
  self->_lock._lock._os_unfair_lock_opaque = 0;
  self->_observers._p_2 = 0;
  *&self->_observers.var0 = 0x200000000;
  self->_needs_notify.__a_.__a_value = 0;
  return self;
}

- (void)notifyObservers
{
  v23 = *MEMORY[0x1E69E9840];
  if (self && (*(self + 120) & 1) != 0)
  {
    v20 = 0;
    v21 = 0;
    v22 = 4;
    os_unfair_lock_lock((self + 80));
    if (*(self + 104))
    {
      v2 = *(self + 104);
    }

    else
    {
      v2 = (self + 88);
    }

    v3 = *(self + 112);
    if (v3)
    {
      v4 = 8 * v3;
      do
      {
        v5 = *v2;
        selfCopy = self;
        v7 = v5;
        v8 = v21;
        v9 = v21 + 1;
        if (v22 < v21 + 1)
        {
          RB::vector<std::pair<RB::objc_ptr<RBSymbolAnimator *>,RB::objc_ptr<objc_object  {objcproto24RBSymbolAnimatorObserver}*>>,4ul,unsigned long>::reserve_slow(v19, v9);
          v8 = v21;
          v9 = v21 + 1;
        }

        v10 = v20;
        if (!v20)
        {
          v10 = v19;
        }

        v11 = &v10[16 * v8];
        *v11 = selfCopy;
        v11[1] = v7;
        v21 = v9;
        ++v2;
        v4 -= 8;
      }

      while (v4);
    }

    os_unfair_lock_unlock((self + 80));
    *(self + 120) = 0;
    if (v21)
    {
      if (!pthread_main_np())
      {
        operator new();
      }

      v12 = v20;
      v13 = v19;
      if (v20)
      {
        v13 = v20;
      }

      if (!v21)
      {
        goto LABEL_28;
      }

      v14 = (v13 + 8);
      v15 = 16 * v21;
      do
      {
        [*v14 symbolAnimatorDidChange:*v14];
        v14 += 2;
        v15 -= 16;
      }

      while (v15);
      v12 = v20;
      v16 = v19;
      if (v20)
      {
        v16 = v20;
      }

      if (!v21)
      {
        goto LABEL_28;
      }

      v17 = 0;
      v18 = (v16 + 8);
      do
      {

        ++v17;
        v18 += 2;
      }

      while (v17 < v21);
    }

    v12 = v20;
LABEL_28:
    if (v12)
    {
      free(v12);
    }
  }
}

- (CGRect)alignmentRect
{
  v2 = RB::Symbol::Model::glyph_info(self->_animator._model._p);
  v3.i32[0] = 0;
  v4 = v2[10];
  v5 = vmvn_s8(vceqz_f32(v4));
  *v6.i8 = vpmin_u32(v5, v5);
  v7 = vdupq_lane_s32(*&vcgtq_s32(v3, v6), 0);
  v8 = vbslq_s8(v7, vcvtq_f64_f32(v4), *(MEMORY[0x1E695F050] + 16));
  v9 = vbslq_s8(v7, vcvtq_f64_f32(v2[9]), *MEMORY[0x1E695F050]);
  v10 = *&v9.i64[1];
  v11 = *&v8.i64[1];
  result.size.width = *v8.i64;
  result.origin.x = *v9.i64;
  result.size.height = v11;
  result.origin.y = v10;
  return result;
}

- (void)dealloc
{
  RB::Symbol::Animator::remove_all_animations(&self->_animator._lock._lock);
  v3.receiver = self;
  v3.super_class = RBSymbolAnimator;
  [(RBSymbolAnimator *)&v3 dealloc];
}

- (void)addObserver:(uint64_t)observer
{
  if (observer)
  {
    os_unfair_lock_lock((observer + 80));
    v4 = *(observer + 104);
    if (v4)
    {
      v5 = *(observer + 104);
    }

    else
    {
      v5 = (observer + 88);
    }

    v6 = *(observer + 112);
    if (v6)
    {
      v7 = 8 * v6;
      while (*v5 != a2)
      {
        ++v5;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (*(observer + 116) < (v6 + 1))
      {
        RB::vector<objc_object  {objcproto24RBSymbolAnimatorObserver}*,2ul,unsigned int>::reserve_slow((observer + 88), v6 + 1);
        v4 = *(observer + 104);
        v6 = *(observer + 112);
      }

      if (!v4)
      {
        v4 = observer + 88;
      }

      *(v4 + 8 * v6) = a2;
      ++*(observer + 112);
      *(observer + 120) = 1;
    }

    os_unfair_lock_unlock((observer + 80));
  }
}

- (void)setGlyph:(id)glyph
{
  if (RB::Symbol::Animator::set_glyph(&self->_animator, glyph))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)setRenderingMode:(unsigned int)mode
{
  if (RB::Symbol::Animator::set_rendering_mode(&self->_animator, mode))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)setRenderingOptions:(unsigned int)options
{
  if (RB::Symbol::Animator::set_rendering_options(&self->_animator, options))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)setFlipsRightToLeft:(BOOL)left
{
  if (RB::Symbol::Animator::set_flips_rtl(&self->_animator, left))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- ($A37143018C4D5433AE0D7FFC21A1DA3D)transform
{
  v2 = RB::Symbol::Animator::transform(&self->_animator._lock._lock);
  v3 = *(&v2 + 1);
  v5 = v4;
  v7 = v6;
  v8 = *&v2;
  v9 = v3;
  result.var1.dy = v7;
  result.var1.dx = v5;
  result.var0.dy = v9;
  result.var0.dx = v8;
  return result;
}

- (void)setTransform:(id)transform
{
  dy = transform.var0.dy;
  v5 = transform.var1.dy;
  v6[0] = vcvt_f32_f64(transform.var0);
  v6[1] = vcvt_f32_f64(transform.var1);
  if (RB::Symbol::Animator::set_transform(&self->_animator._lock._lock, v6))
  {
    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)setVariableValue:(double)value
{
  valueCopy = value;
  if (RB::Symbol::Animator::set_variable_value(&self->_animator._lock._lock, valueCopy))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)colorForStyle:(unsigned int)style
{
  v3 = RB::Symbol::Animator::color(&self->_animator, style);
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)setColor:(id)color forStyle:(unsigned int)style
{
  colorCopy = color;
  if (RB::Symbol::Animator::set_color(&self->_animator, style, &colorCopy))
  {
    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (id)fillProviderForStyle:(unsigned int)style
{
  RB::Symbol::Animator::fill(&self->_animator, style, &v5);
  v3 = v5;

  return v3;
}

- (void)setFillProvider:(id)provider forStyle:(unsigned int)style
{
  if (RB::Symbol::Animator::set_fill(&self->_animator, style, provider))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)opacities
{
  v4 = RB::Symbol::Model::alpha(self->_animator._model._p, 0, v2);
  v5 = RB::Symbol::Model::alpha(self->_animator._model._p, 1uLL, v4);
  v6 = RB::Symbol::Model::alpha(self->_animator._model._p, 2uLL, v5);
  v7 = RB::Symbol::Model::alpha(self->_animator._model._p, 3uLL, v6);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.var3 = v7;
  result.var2 = v10;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (void)setOpacities:(id)opacities
{
  opacitiesCopy = opacities;
  if (RB::Symbol::Animator::set_alpha(&self->_animator._lock._lock, &opacitiesCopy.var0, 4uLL))
  {
    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)setHidden:(BOOL)hidden
{
  if (RB::Symbol::Animator::set_hidden(&self->_animator._lock._lock, hidden))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (int)scaleLevel
{
  v2 = RB::Symbol::Animator::scale_level(&self->_animator._lock._lock);
  if (v2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (v2 >= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)setScaleLevel:(int)level
{
  if (RB::Symbol::Animator::set_scale_level(&self->_animator._lock._lock, level))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (unsigned)depth
{
  scaleLevel = [(RBSymbolAnimator *)self scaleLevel];
  if (scaleLevel == -1)
  {
    return 2;
  }

  else
  {
    return scaleLevel == 1;
  }
}

- (void)setDepth:(unsigned int)depth
{
  if (depth == 2)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = depth == 1;
  }

  [(RBSymbolAnimator *)self setScaleLevel:v3];
}

- (CGPoint)anchorPoint
{
  v2 = vcvtq_f64_f32(COERCE_FLOAT32X2_T(RB::Symbol::Animator::anchor_point(&self->_animator._lock._lock)));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)setAnchorPoint:(CGPoint)point
{
  y = point.y;
  if (RB::Symbol::Animator::set_anchor_point(&self->_animator, vcvt_f32_f64(point)))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (CGPoint)position
{
  v2 = vcvtq_f64_f32(COERCE_FLOAT32X2_T(RB::Symbol::Animator::position(&self->_animator._lock._lock)));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)setPosition:(CGPoint)position
{
  y = position.y;
  if (RB::Symbol::Animator::set_position(&self->_animator, vcvt_f32_f64(position)))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (CGSize)size
{
  v2 = vcvtq_f64_f32(COERCE_FLOAT32X2_T(RB::Symbol::Animator::size(&self->_animator._lock._lock)));
  v3 = v2.f64[1];
  result.width = v2.f64[0];
  result.height = v3;
  return result;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  if (RB::Symbol::Animator::set_size(&self->_animator, vcvt_f32_f64(size)))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (CGPoint)presentationPosition
{
  v2 = vcvtq_f64_f32(COERCE_FLOAT32X2_T(RB::Symbol::Animator::presentation_position(&self->_animator._lock._lock)));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)setPresentationPosition:(CGPoint)position
{
  y = position.y;
  if (RB::Symbol::Animator::set_presentation_position(&self->_animator, vcvt_f32_f64(position)))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (unsigned)addAnimation:(unsigned int)animation options:(id)options
{
  v68 = 0;
  animationCopy = animation;
  v69 = xmmword_195E47680;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  if (options)
  {
    v7 = [options objectForKeyedSubscript:RBSymbolAnimationPriority];
    if (v7)
    {
      [v7 floatValue];
      LODWORD(v69) = v8;
    }

    v9 = [options objectForKeyedSubscript:RBSymbolAnimationSpeed];
    if (v9)
    {
      [v9 floatValue];
      v11 = v10;
      *(&v69 + 1) = v10;
      v12 = [options objectForKeyedSubscript:RBSymbolAnimationClampsSpeed];
      if (!v12 || [v12 BOOLValue])
      {
        v13 = 0.5;
        if (v11 >= 0.5)
        {
          v13 = v11;
        }

        if (v13 > 2.0)
        {
          v13 = 2.0;
        }

        *(&v69 + 1) = v13;
      }
    }

    v14 = [options objectForKeyedSubscript:RBSymbolAnimationRepeatCount];
    if (v14)
    {
      [v14 floatValue];
      DWORD2(v69) = v15;
    }

    v16 = [options objectForKeyedSubscript:RBSymbolAnimationRepeatDelay];
    if (v16)
    {
      [v16 floatValue];
      HIDWORD(v69) = v17;
    }

    v18 = [options objectForKeyedSubscript:RBSymbolAnimationByLayer];
    if (v18)
    {
      v19 = 16;
      if ([v18 BOOLValue])
      {
        v20 = 16;
      }

      else
      {
        v20 = 0;
      }

      animationCopy.i32[1] = v20;
      v68 = 16;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    v71 = [options objectForKeyedSubscript:RBSymbolAnimationTiming];
    v21 = [options objectForKeyedSubscript:RBSymbolAnimationOnCompletion];
    if (v21)
    {
      v72 = v21;
    }

    switch(animation)
    {
      case 1u:
        v44 = [options objectForKeyedSubscript:RBSymbolAnimationVariableColorOptions];
        if (v44)
        {
          unsignedIntValue = [v44 unsignedIntValue];
          v20 |= (unsignedIntValue << 27) & 0x40000000 | (unsignedIntValue << 31) | (((unsignedIntValue >> 1) & 1) << 29);
          if ((unsignedIntValue & 0xB) != 0)
          {
            animationCopy.i32[1] = v20;
          }

          v19 |= 0xE0000000;
          v68 = v19;
        }

        v46 = [options objectForKeyedSubscript:RBSymbolAnimationSymbolDefaults];
        if (v46 || (v56 = [(RBSymbolAnimator *)self glyph]) != 0 && (v57 = v56, (objc_opt_respondsToSelector() & 1) != 0) && (v46 = [(CUINamedVectorGlyph *)v57 symbolDefaults]) != 0)
        {
          v47 = [v46 objectForKeyedSubscript:@"variableColorContinuous"];
          if (v47)
          {
            if ([v47 BOOLValue])
            {
              animationCopy.i32[1] = v20 | 0x10000000;
            }

            v48 = v19 | 0x10000000;
            goto LABEL_143;
          }
        }

        break;
      case 2u:
        v49 = [options objectForKeyedSubscript:RBSymbolAnimationPulseOptions];
        if (v49)
        {
          v50 = [v49 unsignedIntValue] & 0xF;
          if (v50 == 2)
          {
            goto LABEL_88;
          }

          if (v50 == 1)
          {
            goto LABEL_72;
          }
        }

        break;
      case 3u:
        v38 = [options objectForKeyedSubscript:RBSymbolAnimationBounceOptions];
        if (!v38)
        {
          break;
        }

        unsignedIntValue2 = [v38 unsignedIntValue];
        if ((unsignedIntValue2 & 0xF) == 1)
        {
          goto LABEL_52;
        }

        if ((unsignedIntValue2 & 0xF) == 2)
        {
          v20 |= 0x80000000;
          animationCopy.i32[1] = v20;
LABEL_52:
          v68 = v19 | 0x80000000;
        }

        if ((unsignedIntValue2 & 0x10) != 0)
        {
          animationCopy.i32[1] = v20 | 0x20;
        }

        break;
      case 4u:
      case 8u:
        animationCopy.i32[0] = 4;
        break;
      case 5u:
      case 9u:
        v22 = [options objectForKeyedSubscript:RBSymbolAnimationAppearDisappearOptions];
        if (!v22)
        {
          break;
        }

        unsignedIntValue3 = [v22 unsignedIntValue];
        v24 = unsignedIntValue3 & 0xF;
        switch(v24)
        {
          case 1:
            goto LABEL_95;
          case 2:
            v25 = 0x40000000;
            break;
          case 3:
            v25 = 0x80000000;
            break;
          default:
            v48 = 16;
            if ((unsignedIntValue3 & 0x10) != 0)
            {
              goto LABEL_143;
            }

            goto LABEL_144;
        }

        animationCopy.i32[1] = v20 | v25;
LABEL_95:
        v68 = v19 | 0xC0000000;
        v48 = -1073741808;
        if ((unsignedIntValue3 & 0x10) != 0)
        {
          goto LABEL_143;
        }

        break;
      case 6u:
        v40 = [options objectForKeyedSubscript:RBSymbolAnimationReplaceOptions];
        if (!v40)
        {
          break;
        }

        unsignedIntValue4 = [v40 unsignedIntValue];
        v42 = unsignedIntValue4 & 0xF;
        if (v42 > 2)
        {
          if (v42 == 4)
          {
            v43 = -1073741824;
          }

          else
          {
            if (v42 != 3)
            {
              goto LABEL_108;
            }

            v43 = 0x80000000;
          }
        }

        else
        {
          if (v42 == 1)
          {
            goto LABEL_107;
          }

          if (v42 != 2)
          {
            goto LABEL_108;
          }

          v43 = 0x40000000;
        }

        v20 |= v43;
        animationCopy.i32[1] = v20;
LABEL_107:
        v19 |= 0xC0000000;
        v68 = v19;
LABEL_108:
        if ((unsignedIntValue4 & 0x10) != 0)
        {
          v19 |= 0x10u;
          v68 = v19;
          if ((unsignedIntValue4 & 0x20) == 0)
          {
LABEL_110:
            if ((unsignedIntValue4 & 0x40) == 0)
            {
              goto LABEL_111;
            }

            goto LABEL_115;
          }
        }

        else if ((unsignedIntValue4 & 0x20) == 0)
        {
          goto LABEL_110;
        }

        v20 &= ~0x20000000u;
        v19 |= 0x20000000u;
        animationCopy.i32[1] = v20;
        v68 = v19;
        if ((unsignedIntValue4 & 0x40) == 0)
        {
LABEL_111:
          if ((unsignedIntValue4 & 0x80) == 0)
          {
            break;
          }

LABEL_116:
          v28 = v20 & 0xF7FFFFFF;
          v29 = v19 | 0x8000000;
          goto LABEL_117;
        }

LABEL_115:
        v20 &= ~0x10000000u;
        v19 |= 0x10000000u;
        animationCopy.i32[1] = v20;
        v68 = v19;
        if ((unsignedIntValue4 & 0x80) == 0)
        {
          break;
        }

        goto LABEL_116;
      case 7u:
        v55 = [options objectForKeyedSubscript:RBSymbolAnimationInterpolateOptions];
        if (!v55)
        {
          break;
        }

        if ([v55 unsignedIntValue])
        {
          goto LABEL_87;
        }

        goto LABEL_88;
      case 0xAu:
        v31 = [options objectForKeyedSubscript:RBSymbolAnimationWiggleAngle];
        if (v31)
        {
          [v31 floatValue];
          v33 = __sincosf_stret(v32);
          v70 = __PAIR64__(LODWORD(v33.__sinval), LODWORD(v33.__cosval));
          v19 |= 0x80000000;
          v68 = v19;
        }

        v34 = [options objectForKeyedSubscript:RBSymbolAnimationWiggleOptions];
        if (!v34)
        {
          goto LABEL_129;
        }

        unsignedIntValue5 = [v34 unsignedIntValue];
        v36 = unsignedIntValue5 & 0xF;
        if ((unsignedIntValue5 & 0xF) == 0 || (v19 & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        if (v36 == 3)
        {
          v20 |= 0x80000000;
          animationCopy.i32[1] = v20;
        }

        else
        {
          if (v36 == 2)
          {
            v37 = 0x3F80000000000000;
          }

          else
          {
            if (v36 != 1)
            {
              goto LABEL_123;
            }

            v37 = 1065353216;
          }

          v70 = v37;
        }

        v19 |= 0x80000000;
        v68 = v19;
LABEL_123:
        if ((unsignedIntValue5 & 0xF0) == 0x10)
        {
          goto LABEL_126;
        }

        if ((unsignedIntValue5 & 0xF0) == 0x20)
        {
          v20 |= 0x40000000u;
          animationCopy.i32[1] = v20;
LABEL_126:
          v19 |= 0x40000000u;
          v68 = v19;
        }

        if ((unsignedIntValue5 & 0x100) != 0)
        {
          v20 |= 0x20u;
          animationCopy.i32[1] = v20;
        }

LABEL_129:
        if ((v19 & 0x80000000) != 0)
        {
          break;
        }

        glyph = [options objectForKeyedSubscript:RBSymbolAnimationSymbolDefaults];
        if (!glyph)
        {
          glyph = [(RBSymbolAnimator *)self glyph];
          if (glyph)
          {
            if (objc_opt_respondsToSelector())
            {
              glyph = [(CUINamedVectorGlyph *)glyph symbolDefaults];
            }

            else
            {
              glyph = 0;
            }
          }
        }

        v60 = [(CUINamedVectorGlyph *)glyph objectForKeyedSubscript:@"wiggleStyle"];
        if (!v60)
        {
          break;
        }

        unsignedIntValue6 = [v60 unsignedIntValue];
        if ((unsignedIntValue6 - 1) >= 2)
        {
          if (unsignedIntValue6 != 3)
          {
            break;
          }

          v62 = [(CUINamedVectorGlyph *)glyph objectForKeyedSubscript:@"wiggleAngle"];
          if (!v62)
          {
            break;
          }

          [v62 doubleValue];
          *&v63 = v63 * 0.0174532925;
          v64 = __sincosf_stret(*&v63);
          v70 = __PAIR64__(LODWORD(v64.__sinval), LODWORD(v64.__cosval));
          v68 = v19 | 0x80000000;
          if (v19 >> 30)
          {
            break;
          }
        }

        else
        {
          animationCopy.i32[1] = v20 | 0x80000000;
          v68 = v19 | 0x80000000;
          if (v19 >> 30)
          {
            break;
          }

          if (unsignedIntValue6 != 1)
          {
            animationCopy.i32[1] = v20 | 0xC0000000;
          }
        }

        v48 = v19 | 0xC0000000;
LABEL_143:
        v68 = v48;
        break;
      case 0xBu:
        v51 = [options objectForKeyedSubscript:RBSymbolAnimationRotateOptions];
        if (!v51)
        {
          goto LABEL_81;
        }

        unsignedIntValue7 = [v51 unsignedIntValue];
        if ((unsignedIntValue7 & 0xF) == 1)
        {
          goto LABEL_77;
        }

        if ((unsignedIntValue7 & 0xF) == 2)
        {
          v20 |= 0x80000000;
          animationCopy.i32[1] = v20;
LABEL_77:
          v19 |= 0x80000000;
          v68 = v19;
        }

        if ((unsignedIntValue7 & 0x10) != 0)
        {
          v20 |= 0x20u;
          animationCopy.i32[1] = v20;
        }

        if ((v19 & 0x80000000) != 0)
        {
          break;
        }

LABEL_81:
        glyph2 = [options objectForKeyedSubscript:RBSymbolAnimationSymbolDefaults];
        if (!glyph2)
        {
          glyph2 = [(RBSymbolAnimator *)self glyph];
          if (glyph2)
          {
            v58 = glyph2;
            if (objc_opt_respondsToSelector())
            {
              glyph2 = [(CUINamedVectorGlyph *)v58 symbolDefaults];
            }

            else
            {
              glyph2 = 0;
            }
          }
        }

        v54 = [(CUINamedVectorGlyph *)glyph2 objectForKeyedSubscript:@"rotatesClockwise"];
        if (!v54)
        {
          break;
        }

        if (([v54 BOOLValue] & 1) == 0)
        {
LABEL_87:
          animationCopy.i32[1] = v20 | 0x80000000;
        }

LABEL_88:
        v48 = v19 | 0x80000000;
        goto LABEL_143;
      case 0xCu:
        v30 = [options objectForKeyedSubscript:RBSymbolAnimationBreatheOptions];
        if (!v30 || ([v30 unsignedIntValue] & 1) == 0)
        {
          break;
        }

LABEL_72:
        v28 = v20 | 0x80000000;
        v29 = v19 | 0x80000000;
        goto LABEL_117;
      case 0xDu:
      case 0xEu:
        v26 = [options objectForKeyedSubscript:RBSymbolAnimationDrawOnOffOptions];
        if (!v26)
        {
          break;
        }

        unsignedIntValue8 = [v26 unsignedIntValue];
        if (unsignedIntValue8)
        {
          v20 |= 0x80000000;
          v19 |= 0x80000000;
          animationCopy.i32[1] = v20;
          v68 = v19;
        }

        if ((unsignedIntValue8 & 2) == 0)
        {
          break;
        }

        v28 = v20 | 0x40000000;
        v29 = v19 | 0x40000000;
LABEL_117:
        animationCopy.i32[1] = v28;
        v68 = v29;
        break;
      default:
        break;
    }
  }

LABEL_144:
  v65 = RB::Symbol::Animator::add_animation(&self->_animator, &animationCopy);
  if (v65)
  {
    [(RBSymbolAnimator *)self notifyObservers];
  }

  return v65;
}

- (void)cancelAnimationWithID:(unsigned int)d
{
  if (d && RB::Symbol::Animator::cancel_animation_by_id(&self->_animator._lock._lock, d))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)cancelAnimation:(unsigned int)animation
{
  if (RB::Symbol::Animator::cancel_animations_by_mask(&self->_animator._lock._lock, 1 << animation))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)cancelAllAnimations
{
  if (RB::Symbol::Animator::cancel_animations_by_mask(&self->_animator._lock._lock, 0xFFFFFFFF))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)removeAnimationWithID:(unsigned int)d
{
  if (d && RB::Symbol::Animator::remove_animation_by_id(&self->_animator._lock._lock, d))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)removeAnimation:(unsigned int)animation
{
  if (RB::Symbol::Animator::remove_animations_by_mask(&self->_animator._lock._lock, 1 << animation))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)removeAllAnimations
{
  if (RB::Symbol::Animator::remove_all_animations(&self->_animator._lock._lock))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)setPriority:(float)priority ofAnimationWithID:(unsigned int)d
{
  if (RB::Symbol::Animator::set_priority_by_id(&self->_animator._lock._lock, d, priority))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (void)setCurrentTime:(double)time
{
  if (RB::Symbol::Animator::set_current_time(&self->_animator._lock._lock, time))
  {

    [(RBSymbolAnimator *)self notifyObservers];
  }
}

- (CGRect)unroundedAlignmentRect
{
  v2 = RB::Symbol::Model::glyph_info(self->_animator._model._p);
  v3.i32[0] = 0;
  v4 = v2[8];
  v5 = vmvn_s8(vceqz_f32(v4));
  *v6.i8 = vpmin_u32(v5, v5);
  v7 = vdupq_lane_s32(*&vcgtq_s32(v3, v6), 0);
  v8 = vbslq_s8(v7, vcvtq_f64_f32(v4), *(MEMORY[0x1E695F050] + 16));
  v9 = vbslq_s8(v7, vcvtq_f64_f32(v2[7]), *MEMORY[0x1E695F050]);
  v10 = *&v9.i64[1];
  v11 = *&v8.i64[1];
  result.size.width = *v8.i64;
  result.origin.x = *v9.i64;
  result.size.height = v11;
  result.origin.y = v10;
  return result;
}

- (CGRect)boundingRect
{
  v17 = *MEMORY[0x1E69E9840];
  v2.n128_u64[0] = vdup_n_s32(0x437F0000u);
  RB::Symbol::Presentation::Presentation(v16, &self->_animator, 0, 0, 255, 0, v2);
  v3 = RB::Symbol::Presentation::bounding_rect(v16);
  v5 = v4;
  v14 = *(MEMORY[0x1E695F050] + 16);
  v15 = *MEMORY[0x1E695F050];
  RB::Symbol::Presentation::~Presentation(v16);
  v6.i32[0] = 0;
  v7 = vmvn_s8(vceqz_f32(v5));
  *v8.i8 = vpmin_u32(v7, v7);
  v9 = vdupq_lane_s32(*&vcgtq_s32(v6, v8), 0);
  v10 = vbslq_s8(v9, vcvtq_f64_f32(v5), v14);
  v11 = vbslq_s8(v9, vcvtq_f64_f32(*&v3), v15);
  v12 = *&v11.i64[1];
  v13 = *&v10.i64[1];
  result.size.width = *v10.i64;
  result.origin.x = *v11.i64;
  result.size.height = v13;
  result.origin.y = v12;
  return result;
}

- (void)endUpdate:(_RBSymbolUpdate *)update
{
  if (update)
  {
    RB::Symbol::Presentation::~Presentation(update);

    JUMPOUT(0x19A8C09E0);
  }
}

- (id)copyDebugDescriptionForUpdate:(_RBSymbolUpdate *)update
{
  *__p = 0u;
  memset(v8, 0, sizeof(v8));
  RB::Symbol::Presentation::print(update, __p, &self->_animator._lock._lock, 0);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v8[7] >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [v3 initWithUTF8String:v4];
  if ((v8[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

- (uint64_t)notifyObservers
{
  v2 = *(self + 8);
  v3 = *(self + 9);
  if (v2)
  {
    selfCopy = v2;
  }

  else
  {
    selfCopy = self;
  }

  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = 16 * v3;
  v6 = (selfCopy + 8);
  do
  {
    v7 = *v6;
    v6 += 2;
    result = [v7 symbolAnimatorDidChange:v7];
    v5 -= 16;
  }

  while (v5);
  if (self)
  {
    v2 = *(self + 8);
    if (v2)
    {
      selfCopy2 = *(self + 8);
    }

    else
    {
      selfCopy2 = self;
    }

    if (*(self + 9))
    {
      v10 = 0;
      v11 = (selfCopy2 + 8);
      do
      {

        ++v10;
        v11 += 2;
      }

      while (v10 < *(self + 9));
      v2 = *(self + 8);
    }

LABEL_15:
    if (v2)
    {
      free(v2);
    }

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

- (void)removeObserver:(uint64_t)observer
{
  if (observer)
  {
    os_unfair_lock_lock((observer + 80));
    v4 = *(observer + 112);
    if (v4)
    {
      v5 = 0;
      v6 = 8 * v4;
      do
      {
        v7 = *(observer + 104);
        if (!v7)
        {
          v7 = observer + 88;
        }

        v8 = *(v7 + v5);
        if (v8 == a2)
        {
          v9 = v4 - 1;
          *(v7 + v5) = *(v7 + 8 * v9);
          *(v7 + 8 * v9) = v8;
          LODWORD(v4) = *(observer + 112) - 1;
          *(observer + 112) = v4;
        }

        v5 += 8;
      }

      while (v6 != v5);
    }

    os_unfair_lock_unlock((observer + 80));
  }
}

- (uint64_t)unblockObservers
{
  if (result)
  {
    *(result + 120) = 1;
  }

  return result;
}

@end