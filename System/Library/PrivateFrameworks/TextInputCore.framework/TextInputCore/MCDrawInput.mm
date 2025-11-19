@interface MCDrawInput
+ (RefPtr<TI::Favonius::KeyboardLayout>)copyKeyboardLayout:(const void *)a3;
- (BOOL)_canCompose;
- (BOOL)canComposeNew:(id)a3;
- (BOOL)isComplete;
- (BOOL)isCompleting;
- (BOOL)isDrawing;
- (MCDrawInput)initWithKeyboardLayout:(const void *)a3;
- (MCDrawInput)initWithKeyboardLayout:(const void *)a3 rescaleKeyboardLayout:(const void *)a4;
- (MCDrawInput)initWithKeyboardLayout:(const void *)a3 rescaleKeyboardLayout:(const void *)a4 shouldResample:(BOOL)a5;
- (RefPtr<TI::Favonius::KeyboardLayout>)keyboardLayout;
- (RefPtr<TI::Favonius::KeyboardLayout>)rescaleKeyboardLayout;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)shortDescriptionWithLeadingString:(id)a3;
- (void)_updateSampledInputs;
- (void)_updateSampledInputsWithResampler:(const void *)a3 permanentlyFinalized:(BOOL)a4;
- (void)composeNew:(id)a3;
- (void)composeWith:(id)a3;
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

- (void)_updateSampledInputsWithResampler:(const void *)a3 permanentlyFinalized:(BOOL)a4
{
  v4 = a4;
  if ([(MCDrawInput *)self shouldResample])
  {
    v7 = [(MCKeyboardInput *)self inputs];
    v8 = [v7 count];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 6) - *(a3 + 5)) >> 4);

    if (v8 < v9)
    {
      v10 = [(MCKeyboardInput *)self inputs];
      LODWORD(v11) = [v10 count];

      v12 = *(a3 + 5);
      v13 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 6) - v12) >> 4);
      if (v13 > v11)
      {
        v11 = v11;
        do
        {
          v14 = v11 != 0;
          if (v11 && v4)
          {
            if (v11 == v13 - 1)
            {
              v15 = 2;
            }

            else
            {
              v15 = 1;
            }

            if (*(a3 + 136) == 1)
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
            v16 = [(MCKeyboardInput *)self inputs];
            v17 = [v16 objectAtIndexedSubscript:v11 - 1];
          }

          v18 = (v12 + 48 * v11);
          v19 = [(MCDrawInput *)self _createDrawableTouchInputWithPoint:v14 timestamp:v17 force:TI::CP::Path::inflection_point_count((a3 + 40) radius:v11 touchStage:v11) != 0 previousTouchInput:*v18 isInflectionPoint:v18[1], v18[2], v18[3], v18[5]];
          v20.receiver = self;
          v20.super_class = MCDrawInput;
          [(MCKeyboardInput *)&v20 composeNew:v19];

          ++v11;
          v12 = *(a3 + 5);
          v13 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 6) - v12) >> 4);
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
      v3 = [(MCDrawInput *)self resampler];

      [(MCDrawInput *)self _updateSampledInputsWithResampler:v3 permanentlyFinalized:1];
    }

    else
    {
      v4 = [(MCDrawInput *)self resampler];
      v5 = *(v4 + 4);
      v6 = v4[1];
      v22 = *v4;
      v23 = v6;
      v24 = v5;
      std::vector<TI::CP::PathSample>::vector[abi:nn200100](&v25, v4 + 5);
      std::vector<unsigned int>::vector[abi:nn200100](v27, v4 + 8);
      std::vector<TI::CP::PathSample>::vector[abi:nn200100](v28, v4 + 11);
      std::vector<unsigned int>::vector[abi:nn200100](__p, v4 + 14);
      v7 = *(v4 + 17);
      v30 = *(v4 + 36);
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
          v12 = [(MCKeyboardInput *)self inputs];
          v13 = [v12 objectAtIndexedSubscript:v11];

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
          v17 = [(MCKeyboardInput *)self inputs];
          v18 = [v17 count];

          v10 += 48;
          if (v18 <= v11)
          {
            goto LABEL_18;
          }
        }

        v19 = [(MCKeyboardInput *)self inputs];
        v20 = [v19 count];

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

  v3 = [(MCKeyboardInput *)self inputs];
  v4 = [v3 count];
  v5 = [(MCDrawInput *)self resampler];
  v6 = v4 < 0xAAAAAAAAAAAAAAABLL * ((v5[6] - v5[5]) >> 4);

  return v6;
}

- (BOOL)isComplete
{
  if (*([(MCDrawInput *)self resampler]+ 136) != 1)
  {
    return 0;
  }

  v3 = [(MCKeyboardInput *)self inputs];
  v4 = [v3 count];
  v5 = [(MCDrawInput *)self resampler];
  v6 = v4 >= 0xAAAAAAAAAAAAAAABLL * ((v5[6] - v5[5]) >> 4);

  return v6;
}

- (void)composeWith:(id)a3
{
  v19 = a3;
  if (![(MCDrawInput *)self _canCompose])
  {
    goto LABEL_33;
  }

  if ([(MCDrawInput *)self shouldResample])
  {
    if (![v19 stage])
    {
      v10 = [(MCDrawInput *)self resampler];
      v11 = v10[12];
      if (v10[11] != v11 && *(v11 - 16) > 0.0)
      {
        goto LABEL_33;
      }
    }
  }

  if ([(MCDrawInput *)self shouldResample])
  {
    if ([v19 stage])
    {
      v5 = [(MCDrawInput *)self resampler];
      if (v5[12] == v5[11])
      {
        goto LABEL_33;
      }
    }
  }

  if (-[MCDrawInput shouldResample](self, "shouldResample") || [v19 stage])
  {
    v6 = 0;
  }

  else
  {
    v3 = [(MCKeyboardInput *)self inputs];
    if ([v3 count])
    {

      goto LABEL_33;
    }

    v6 = 1;
  }

  if (-[MCDrawInput shouldResample](self, "shouldResample") || ![v19 stage])
  {
    if (v6)
    {
    }

LABEL_18:
    if (![v19 stage])
    {
      if ([v19 fingerID] > 7)
      {
        v9 = 2;
LABEL_28:
        [(MCDrawInput *)self setDrawHand:v9];
        goto LABEL_29;
      }

      if ([v19 fingerID] >= 2)
      {
        v9 = 1;
        goto LABEL_28;
      }
    }

LABEL_29:
    if (-[MCDrawInput shouldResample](self, "shouldResample") && [v19 stage] == 2)
    {
      TI::CP::PathResampler::finalize([(MCDrawInput *)self resampler]);
      [(MCDrawInput *)self _updateSampledInputs];
    }

    else
    {
      [v19 location];
      v13 = v12;
      v15 = v14;
      [v19 timestamp];
      v17 = v16;
      [v19 radius];
      -[MCDrawInput _appendWithPoint:timestamp:force:radius:touchStage:](self, "_appendWithPoint:timestamp:force:radius:touchStage:", [v19 stage], v13, v15, v17, 0.0, v18);
    }

    goto LABEL_33;
  }

  v7 = [(MCKeyboardInput *)self inputs];
  v8 = [v7 count];

  if (v6)
  {
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_33:
}

- (void)composeNew:(id)a3
{
  v15 = a3;
  if ([(MCDrawInput *)self canComposeNew:?]&& ![(MCDrawInput *)self isCompleting])
  {
    v4 = v15;
    v5 = [(MCKeyboardInput *)self inputs];
    v6 = [v5 count] != 0;

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

- (BOOL)canComposeNew:(id)a3
{
  v4 = a3;
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

- (id)shortDescriptionWithLeadingString:(id)a3
{
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [(MCKeyboardInput *)self inputs];
  v6 = [v5 count];

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

    v8 = [(MCKeyboardInput *)self inputs];
    v9 = [v8 count];
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

    [v4 appendFormat:@"MCDrawInput: %@samples = %lu, shouldResample = %@, shouldRescale = %@", v7, v9, v10, v11];
    if (v13)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v13);
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = MCDrawInput;
  v4 = [(MCKeyboardInput *)&v12 copyWithZone:a3];
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

- (MCDrawInput)initWithKeyboardLayout:(const void *)a3 rescaleKeyboardLayout:(const void *)a4 shouldResample:(BOOL)a5
{
  v15.receiver = self;
  v15.super_class = MCDrawInput;
  v8 = [(MCKeyboardInput *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v10 = *a3;
    if (*a3)
    {
      atomic_fetch_add(v10, 1u);
    }

    m_ptr = v8->_keyboardLayout.m_ptr;
    v9->_keyboardLayout.m_ptr = v10;
    if (m_ptr)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(m_ptr);
    }

    v12 = *a4;
    if (*a4)
    {
      atomic_fetch_add(v12, 1u);
    }

    v13 = v9->_rescaleKeyboardLayout.m_ptr;
    v9->_rescaleKeyboardLayout.m_ptr = v12;
    if (v13)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v13);
    }

    v9->_shouldResample = a5;
    v9->_resampler.m_params.segment_length = 15.0;
    *&v9->_resampler.m_params.inflection_point_detection_mode = 2;
    v9->_resampler.m_params.should_downsample = 1;
    v9->_resampler.m_params.minimum_pause_length = 0.3;
    v9->_resampler.m_params.should_flush_on_pause = 0;
    v9->_drawHand = 0;
  }

  return v9;
}

- (MCDrawInput)initWithKeyboardLayout:(const void *)a3 rescaleKeyboardLayout:(const void *)a4
{
  v6 = 0;
  v4 = [(MCDrawInput *)self initWithKeyboardLayout:a3 rescaleKeyboardLayout:&v6 shouldResample:1];
  if (v6)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v6);
  }

  return v4;
}

- (MCDrawInput)initWithKeyboardLayout:(const void *)a3
{
  v5 = 0;
  v3 = [(MCDrawInput *)self initWithKeyboardLayout:a3 rescaleKeyboardLayout:&v5];
  if (v5)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v5);
  }

  return v3;
}

+ (RefPtr<TI::Favonius::KeyboardLayout>)copyKeyboardLayout:(const void *)a3
{
  v4 = v3;
  v5 = *a3;
  if (*a3)
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
  return a1;
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