@interface MCDrawInput
+ (RefPtr<TI::Favonius::KeyboardLayout>)copyKeyboardLayout:(const void *)layout;
- (BOOL)_canCompose;
- (BOOL)canComposeNew:(id)new;
- (BOOL)isComplete;
- (BOOL)isCompleting;
- (BOOL)isDrawing;
- (MCDrawInput)initWithKeyboardLayout:(const void *)layout;
- (MCDrawInput)initWithKeyboardLayout:(const void *)layout rescaleKeyboardLayout:(const void *)keyboardLayout;
- (MCDrawInput)initWithKeyboardLayout:(const void *)layout rescaleKeyboardLayout:(const void *)keyboardLayout shouldResample:(BOOL)resample;
- (RefPtr<TI::Favonius::KeyboardLayout>)keyboardLayout;
- (RefPtr<TI::Favonius::KeyboardLayout>)rescaleKeyboardLayout;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)shortDescriptionWithLeadingString:(id)string;
- (void)_updateSampledInputs;
- (void)_updateSampledInputsWithResampler:(const void *)resampler permanentlyFinalized:(BOOL)finalized;
- (void)composeNew:(id)new;
- (void)composeWith:(id)with;
@end

@implementation MCDrawInput

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0x402E000000000000;
  *(self + 8) = 1;
  *(self + 72) = 1;
  *(self + 10) = 0x3FD3333333333333;
  *(self + 88) = 0;
  *(self + 49) = 0;
  *(self + 50) = 0;
  *(self + 192) = 0;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  return self;
}

- (RefPtr<TI::Favonius::KeyboardLayout>)rescaleKeyboardLayout
{
  m_ptr = self->_rescaleKeyboardLayout.m_ptr;
  *v2 = m_ptr;
  if (m_ptr)
  {
    atomic_fetch_add(m_ptr, 1u);
  }

  return self;
}

- (RefPtr<TI::Favonius::KeyboardLayout>)keyboardLayout
{
  m_ptr = self->_keyboardLayout.m_ptr;
  *v2 = m_ptr;
  if (m_ptr)
  {
    atomic_fetch_add(m_ptr, 1u);
  }

  return self;
}

- (void)_updateSampledInputsWithResampler:(const void *)resampler permanentlyFinalized:(BOOL)finalized
{
  finalizedCopy = finalized;
  if ([(MCDrawInput *)self shouldResample])
  {
    inputs = [(MCKeyboardInput *)self inputs];
    v8 = [inputs count];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((*(resampler + 6) - *(resampler + 5)) >> 4);

    if (v8 < v9)
    {
      inputs2 = [(MCKeyboardInput *)self inputs];
      LODWORD(v11) = [inputs2 count];

      v12 = *(resampler + 5);
      v13 = 0xAAAAAAAAAAAAAAABLL * ((*(resampler + 6) - v12) >> 4);
      if (v13 > v11)
      {
        v11 = v11;
        do
        {
          v14 = v11 != 0;
          if (v11 && finalizedCopy)
          {
            if (v11 == v13 - 1)
            {
              v15 = 2;
            }

            else
            {
              v15 = 1;
            }

            if (*(resampler + 136) == 1)
            {
              v14 = v15;
            }

            else
            {
              v14 = 1;
            }
          }

          if (v11 < 1)
          {
            v17 = 0;
          }

          else
          {
            inputs3 = [(MCKeyboardInput *)self inputs];
            v17 = [inputs3 objectAtIndexedSubscript:v11 - 1];
          }

          v18 = (v12 + 48 * v11);
          v19 = [(MCDrawInput *)self _createDrawableTouchInputWithPoint:v14 timestamp:v17 force:TI::CP::Path::inflection_point_count((resampler + 40) radius:v11 touchStage:v11) != 0 previousTouchInput:*v18 isInflectionPoint:v18[1], v18[2], v18[3], v18[5]];
          v20.receiver = self;
          v20.super_class = MCDrawInput;
          [(MCKeyboardInput *)&v20 composeNew:v19];

          ++v11;
          v12 = *(resampler + 5);
          v13 = 0xAAAAAAAAAAAAAAABLL * ((*(resampler + 6) - v12) >> 4);
        }

        while (v13 > v11);
      }
    }
  }
}

- (void)_updateSampledInputs
{
  if ([(MCDrawInput *)self shouldResample])
  {
    if (*([(MCDrawInput *)self resampler]+ 136) == 1)
    {
      resampler = [(MCDrawInput *)self resampler];

      [(MCDrawInput *)self _updateSampledInputsWithResampler:resampler permanentlyFinalized:1];
    }

    else
    {
      resampler2 = [(MCDrawInput *)self resampler];
      v5 = *(resampler2 + 4);
      v6 = resampler2[1];
      v22 = *resampler2;
      v23 = v6;
      v24 = v5;
      std::vector<TI::CP::PathSample>::vector[abi:nn200100](&v25, resampler2 + 5);
      std::vector<unsigned int>::vector[abi:nn200100](v27, resampler2 + 8);
      std::vector<TI::CP::PathSample>::vector[abi:nn200100](v28, resampler2 + 11);
      std::vector<unsigned int>::vector[abi:nn200100](__p, resampler2 + 14);
      v7 = *(resampler2 + 17);
      v30 = *(resampler2 + 36);
      __p[3] = v7;
      TI::CP::PathResampler::finalize(&v22);
      v8 = [(MCKeyboardInput *)self inputs:v22];
      v9 = [v8 count];

      if (v9)
      {
        v10 = 0;
        v11 = 0;
        while (1)
        {
          inputs = [(MCKeyboardInput *)self inputs];
          v13 = [inputs objectAtIndexedSubscript:v11];

          if (0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 4) <= v11)
          {
            break;
          }

          [v13 touchPoint];
          if (v15 != *(v25 + v10) || v14 != *(v25 + v10 + 8))
          {
            break;
          }

          ++v11;
          inputs2 = [(MCKeyboardInput *)self inputs];
          v18 = [inputs2 count];

          v10 += 48;
          if (v18 <= v11)
          {
            goto LABEL_18;
          }
        }

        inputs3 = [(MCKeyboardInput *)self inputs];
        v20 = [inputs3 count];

        for (i = v20 - v11; i; --i)
        {
          [(MCKeyboardInput *)self removeComposingInput];
        }
      }

LABEL_18:
      [(MCDrawInput *)self _updateSampledInputsWithResampler:&v22 permanentlyFinalized:0];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v28[0])
      {
        v28[1] = v28[0];
        operator delete(v28[0]);
      }

      if (v27[0])
      {
        v27[1] = v27[0];
        operator delete(v27[0]);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }
    }
  }
}

- (BOOL)isDrawing
{
  if ([(MCDrawInput *)self isCompleting])
  {
    return 0;
  }

  else
  {
    return ![(MCDrawInput *)self isComplete];
  }
}

- (BOOL)isCompleting
{
  if (*([(MCDrawInput *)self resampler]+ 136) != 1)
  {
    return 0;
  }

  inputs = [(MCKeyboardInput *)self inputs];
  v4 = [inputs count];
  resampler = [(MCDrawInput *)self resampler];
  v6 = v4 < 0xAAAAAAAAAAAAAAABLL * ((resampler[6] - resampler[5]) >> 4);

  return v6;
}

- (BOOL)isComplete
{
  if (*([(MCDrawInput *)self resampler]+ 136) != 1)
  {
    return 0;
  }

  inputs = [(MCKeyboardInput *)self inputs];
  v4 = [inputs count];
  resampler = [(MCDrawInput *)self resampler];
  v6 = v4 >= 0xAAAAAAAAAAAAAAABLL * ((resampler[6] - resampler[5]) >> 4);

  return v6;
}

- (void)composeWith:(id)with
{
  withCopy = with;
  if (![(MCDrawInput *)self _canCompose])
  {
    goto LABEL_33;
  }

  if ([(MCDrawInput *)self shouldResample])
  {
    if (![withCopy stage])
    {
      resampler = [(MCDrawInput *)self resampler];
      v11 = resampler[12];
      if (resampler[11] != v11 && *(v11 - 16) > 0.0)
      {
        goto LABEL_33;
      }
    }
  }

  if ([(MCDrawInput *)self shouldResample])
  {
    if ([withCopy stage])
    {
      resampler2 = [(MCDrawInput *)self resampler];
      if (resampler2[12] == resampler2[11])
      {
        goto LABEL_33;
      }
    }
  }

  if (-[MCDrawInput shouldResample](self, "shouldResample") || [withCopy stage])
  {
    v6 = 0;
  }

  else
  {
    inputs = [(MCKeyboardInput *)self inputs];
    if ([inputs count])
    {

      goto LABEL_33;
    }

    v6 = 1;
  }

  if (-[MCDrawInput shouldResample](self, "shouldResample") || ![withCopy stage])
  {
    if (v6)
    {
    }

LABEL_18:
    if (![withCopy stage])
    {
      if ([withCopy fingerID] > 7)
      {
        v9 = 2;
LABEL_28:
        [(MCDrawInput *)self setDrawHand:v9];
        goto LABEL_29;
      }

      if ([withCopy fingerID] >= 2)
      {
        v9 = 1;
        goto LABEL_28;
      }
    }

LABEL_29:
    if (-[MCDrawInput shouldResample](self, "shouldResample") && [withCopy stage] == 2)
    {
      TI::CP::PathResampler::finalize([(MCDrawInput *)self resampler]);
      [(MCDrawInput *)self _updateSampledInputs];
    }

    else
    {
      [withCopy location];
      v13 = v12;
      v15 = v14;
      [withCopy timestamp];
      v17 = v16;
      [withCopy radius];
      -[MCDrawInput _appendWithPoint:timestamp:force:radius:touchStage:](self, "_appendWithPoint:timestamp:force:radius:touchStage:", [withCopy stage], v13, v15, v17, 0.0, v18);
    }

    goto LABEL_33;
  }

  inputs2 = [(MCKeyboardInput *)self inputs];
  v8 = [inputs2 count];

  if (v6)
  {
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_33:
}

- (void)composeNew:(id)new
{
  newCopy = new;
  if ([(MCDrawInput *)self canComposeNew:?]&& ![(MCDrawInput *)self isCompleting])
  {
    v4 = newCopy;
    inputs = [(MCKeyboardInput *)self inputs];
    v6 = [inputs count] != 0;

    [v4 touchPoint];
    v8 = v7;
    v10 = v9;
    [v4 timestamp];
    v12 = v11;
    [v4 radius];
    v14 = v13;

    [(MCDrawInput *)self _appendWithPoint:v6 timestamp:v8 force:v10 radius:v12 touchStage:0.0, v14];
  }
}

- (BOOL)canComposeNew:(id)new
{
  newCopy = new;
  if ([(MCDrawInput *)self isComplete])
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)_canCompose
{
  if ([(MCDrawInput *)self isCompleting])
  {
    return 0;
  }

  else
  {
    return ![(MCDrawInput *)self isComplete];
  }
}

- (id)shortDescriptionWithLeadingString:(id)string
{
  string = [MEMORY[0x277CCAB68] string];
  inputs = [(MCKeyboardInput *)self inputs];
  v6 = [inputs count];

  if (v6)
  {
    if ([(MCDrawInput *)self shouldResample])
    {
      v7 = @"resampled ";
    }

    else
    {
      v7 = &stru_283FDFAF8;
    }

    inputs2 = [(MCKeyboardInput *)self inputs];
    v9 = [inputs2 count];
    if ([(MCDrawInput *)self shouldResample])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    [(MCDrawInput *)self rescaleKeyboardLayout];
    if (v13)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    [string appendFormat:@"MCDrawInput: %@samples = %lu, shouldResample = %@, shouldRescale = %@", v7, v9, v10, v11];
    if (v13)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v13);
    }
  }

  return string;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = MCDrawInput;
  v4 = [(MCKeyboardInput *)&v12 copyWithZone:zone];
  if (v4)
  {
    [MCDrawInput copyKeyboardLayout:&self->_keyboardLayout];
    v5 = *(v4 + 5);
    *(v4 + 5) = v11;
    if (v5)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v5);
    }

    [MCDrawInput copyKeyboardLayout:&self->_rescaleKeyboardLayout];
    v6 = *(v4 + 6);
    *(v4 + 6) = 0;
    if (v6)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v6);
    }

    v4[32] = self->_shouldResample;
    v8 = *&self->_resampler.m_params.segment_length;
    v7 = *&self->_resampler.m_params.should_downsample;
    v4[88] = self->_resampler.m_params.should_flush_on_pause;
    *(v4 + 56) = v8;
    *(v4 + 72) = v7;
    TI::CP::Path::operator=((v4 + 96), &self->_resampler.m_resampled_path.m_samples.__begin_);
    TI::CP::Path::operator=((v4 + 144), &self->_resampler.m_raw_path.m_samples.__begin_);
    v9 = *&self->_resampler.m_is_final;
    *(v4 + 50) = self->_resampler.m_retroactively_processed_sample_count;
    *(v4 + 24) = v9;
    *(v4 + 9) = self->_drawHand;
  }

  return v4;
}

- (MCDrawInput)initWithKeyboardLayout:(const void *)layout rescaleKeyboardLayout:(const void *)keyboardLayout shouldResample:(BOOL)resample
{
  v15.receiver = self;
  v15.super_class = MCDrawInput;
  v8 = [(MCKeyboardInput *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v10 = *layout;
    if (*layout)
    {
      atomic_fetch_add(v10, 1u);
    }

    m_ptr = v8->_keyboardLayout.m_ptr;
    v9->_keyboardLayout.m_ptr = v10;
    if (m_ptr)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(m_ptr);
    }

    v12 = *keyboardLayout;
    if (*keyboardLayout)
    {
      atomic_fetch_add(v12, 1u);
    }

    v13 = v9->_rescaleKeyboardLayout.m_ptr;
    v9->_rescaleKeyboardLayout.m_ptr = v12;
    if (v13)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v13);
    }

    v9->_shouldResample = resample;
    v9->_resampler.m_params.segment_length = 15.0;
    *&v9->_resampler.m_params.inflection_point_detection_mode = 2;
    v9->_resampler.m_params.should_downsample = 1;
    v9->_resampler.m_params.minimum_pause_length = 0.3;
    v9->_resampler.m_params.should_flush_on_pause = 0;
    v9->_drawHand = 0;
  }

  return v9;
}

- (MCDrawInput)initWithKeyboardLayout:(const void *)layout rescaleKeyboardLayout:(const void *)keyboardLayout
{
  v6 = 0;
  v4 = [(MCDrawInput *)self initWithKeyboardLayout:layout rescaleKeyboardLayout:&v6 shouldResample:1];
  if (v6)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v6);
  }

  return v4;
}

- (MCDrawInput)initWithKeyboardLayout:(const void *)layout
{
  v5 = 0;
  v3 = [(MCDrawInput *)self initWithKeyboardLayout:layout rescaleKeyboardLayout:&v5];
  if (v5)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v5);
  }

  return v3;
}

+ (RefPtr<TI::Favonius::KeyboardLayout>)copyKeyboardLayout:(const void *)layout
{
  v4 = v3;
  v5 = *layout;
  if (*layout)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x4812000000;
    v12[3] = __Block_byref_object_copy__12914;
    v12[4] = __Block_byref_object_dispose__12915;
    v12[5] = "";
    memset(&v12[6], 0, 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __34__MCDrawInput_copyKeyboardLayout___block_invoke;
    v10 = &unk_278731D18;
    v11 = v12;
    v6 = *(v5 + 8);
    for (i = *(v5 + 16); v6 != i; ++v6)
    {
      v9(v8, v6);
    }

    operator new();
  }

  *v4 = 0;
  return self;
}

void __34__MCDrawInput_copyKeyboardLayout___block_invoke(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  KB::String::String(v10, (*a2 + 8));
  v3 = *a2;
  if (*(*a2 + 40) >= 0xFuLL)
  {
    LOWORD(v9) = *(*a2 + 40);
    operator new[]();
  }

  v9 = *(*a2 + 40);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = *(v3 + 62);
  operator new();
}

@end