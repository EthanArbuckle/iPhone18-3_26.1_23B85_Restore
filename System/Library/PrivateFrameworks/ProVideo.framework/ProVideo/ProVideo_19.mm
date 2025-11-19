uint64_t TXSequenceBehavior::getNumObjects(TXSequenceBehavior *this)
{
  if (*(this + 796) == 1)
  {
    return *(this + 200);
  }

  ValueAsInt = OZChannel::getValueAsInt((this + 28368), MEMORY[0x277CC08F0], 0.0);
  result = 1;
  if (ValueAsInt <= 1)
  {
    if (ValueAsInt)
    {
      if (ValueAsInt == 1)
      {
        result = TXTextLayout::getComposedCharacterCountIgnoringSpaces(*(this + 101));
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (ValueAsInt == 2)
    {
      result = (*(**(this + 101) + 224))(*(this + 101));
      goto LABEL_14;
    }

    if (ValueAsInt == 3)
    {
      result = *(*(this + 101) + 19324);
      goto LABEL_14;
    }

    if (ValueAsInt != 5)
    {
      goto LABEL_14;
    }
  }

  result = TXTextLayout::getComposedCharacterCount(*(this + 101));
LABEL_14:
  *(this + 200) = result;
  *(this + 796) = 1;
  return result;
}

uint64_t TXSequenceBehavior::shuffle(TXSequenceBehavior *this, unsigned int a2, const CMTime *a3)
{
  result = TXSequenceBehavior::getNumObjects(this);
  if (result)
  {
    v6 = result;
    ValueAsInt = OZChannel::getValueAsInt((this + 32088), MEMORY[0x277CC08F0], 0.0);
    if (*(this + 9010) != v6 || ValueAsInt != *(this + 9011))
    {
      v8 = *(this + 4504);
      if (v8)
      {
        MEMORY[0x2666E9ED0](v8, 0x1000C8052888210);
        *(this + 4504) = 0;
      }

      operator new[]();
    }

    return *(*(this + 4504) + 4 * a2);
  }

  return result;
}

void TXSequenceBehavior::createInfluenceCache(TXSequenceBehavior *this, const CMTime *a2)
{
  v4 = Li3DEngineScene::sceneManager((this + 544));
  OZLockingGroup::WriteSentry::WriteSentry(v9, v4);
  TXSequenceBehavior::getAnimationDuration(this, &time1);
  *(this + 772) = time1;
  *(this + 768) = 1;
  v5 = *(this + 93);
  v6 = *(this + 94);
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = *(*v5 + 2);
    *&time1.value = **v5;
    time1.epoch = v8;
    time2 = *a2;
    if (!CMTimeCompare(&time1, &time2))
    {
      ++*(v7 + 24);
      goto LABEL_8;
    }

    ++v5;
  }

  if (OZChannel::getValueAsInt((this + 29056), MEMORY[0x277CC08F0], 0.0) != 1)
  {
    operator new();
  }

LABEL_8:
  OZLockingGroup::WriteSentry::~WriteSentry(v9);
}

void sub_25FB5F8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXSequenceBehavior::clearInfluenceCache(TXSequenceBehavior *this, const CMTime *a2)
{
  v4 = Li3DEngineScene::sceneManager((this + 544));
  OZLockingGroup::WriteSentry::WriteSentry(v12, v4);
  v5 = *(this + 93);
  if (v5 != *(this + 94))
  {
    v6 = v5 + 8;
    while (1)
    {
      v7 = *v5;
      v11 = *(*v5 + 16);
      *&time1.value = **v5;
      time1.epoch = v11;
      time2 = *a2;
      if (!CMTimeCompare(&time1, &time2))
      {
        v8 = *(v7 + 24) - 1;
        *(v7 + 24) = v8;
        if (!v8)
        {
          break;
        }
      }

      v5 += 8;
      v6 += 8;
      if (v5 == *(this + 94))
      {
        goto LABEL_10;
      }
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v7 + 32, *(v7 + 40));
    MEMORY[0x2666E9F00](v7, 0x1020C40A41566E0);
    v9 = *(this + 94);
    v10 = v9 - v6;
    if (v9 != v6)
    {
      memmove(v6 - 8, v6, v9 - v6);
    }

    *(this + 94) = &v6[v10 - 8];
  }

LABEL_10:
  *(this + 768) = 0;
  OZLockingGroup::WriteSentry::~WriteSentry(v12);
}

void sub_25FB5F9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

double TXSequenceBehavior::getInfluence(TXSequenceBehavior *this, CMTime *a2, double a3, OZChannel *a4, int a5)
{
  if (OZChannel::getValueAsInt((this + 29056), MEMORY[0x277CC08F0], 0.0) != 1)
  {
    v17 = *(this + 93);
    v18 = *(this + 94);
    while (v17 != v18)
    {
      v19 = *v17;
      v38 = **v17;
      v35[0] = v38;
      time2 = *a2;
      if (!CMTimeCompare(v35, &time2))
      {
        LODWORD(time2.value) = a3;
        v35[0].value = &time2;
        v11 = std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v19[1].timescale, &time2)[5];
        return *&v11;
      }

      ++v17;
    }
  }

  memset(&v38, 0, sizeof(v38));
  v10 = MEMORY[0x277CC08F0];
  *&v11 = 0.0;
  OZChannel::getValueAsDouble((this + 33056), MEMORY[0x277CC08F0], 0.0);
  v13 = v12;
  v14 = (*(*this + 336))(this);
  OZSceneSettings::getFrameDuration((v14 + 336), &v36);
  operator*(&v36, &v37, v13);
  v35[0] = *a2;
  time2 = v37;
  v15.n128_f64[0] = PC_CMTimeSaferSubtract(v35, &time2, &v38);
  (*(*this + 608))(v35, this, v15);
  if (OZChannel::getValueAsInt((this + 29056), v10, 0.0) == 1)
  {
    InfluenceForTranscription = TXSequenceBehavior::getInfluenceForTranscription(this, a2, a3, a4);
  }

  else
  {
    v20 = TXSequenceBehavior::charIndexToChannelUnitIndex(this, a3, a5);
    if ((v20 & 0x80000000) != 0)
    {
      return *&v11;
    }

    v21 = v20;
    if (OZChannel::getValueAsInt((this + 31832), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      v21 = TXSequenceBehavior::shuffle(this, v21, v22);
    }

    v23 = (*(*this + 712))(this, v21);
    LOBYTE(v36.value) = 0;
    memset(&time2, 0, sizeof(time2));
    TXSequenceBehavior::getSelection(this, &v38, &time2, &v36);
    if (OZChannel::getValueAsInt((this + 32800), MEMORY[0x277CC08F0], 0.0) == 2)
    {
      if (OZChannel::getValueAsInt((this + 35880), MEMORY[0x277CC08F0], 0.0))
      {
        PerObjectSpeed = TXSequenceBehavior::getPerObjectSpeed(this);
      }

      else
      {
        PerObjectSpeed = OZChannel::getValueAsInt((this + 32240), MEMORY[0x277CC08F0], 0.0);
      }

      v25 = PerObjectSpeed;
    }

    else
    {
      v25 = 0;
    }

    value = time2.value;
    v27 = *&time2.timescale;
    InfluenceForTranscription = 0.0;
    if (time2.value != *&time2.timescale)
    {
      value_low = LOBYTE(v36.value);
      do
      {
        v29 = TXSequenceBehavior::trapezoid(this, v23, *value, *value + value[1], value[4], value[4], value_low, value[6], value[7], v25);
        InfluenceForTranscription = v29 * TXSequenceBehavior::trapezoid(this, v23, value[2], value[2] + value[3], 0.0, 0.0, 0, value[6], 1.0, 0) + InfluenceForTranscription;
        value += 8;
      }

      while (value != v27);
      value = time2.value;
    }

    *&v37.value = InfluenceForTranscription;
    if (value)
    {
      *&time2.timescale = value;
      operator delete(value);
    }
  }

  if (InfluenceForTranscription <= 1.0)
  {
    v30 = InfluenceForTranscription;
  }

  else
  {
    v30 = 1.0;
  }

  if (InfluenceForTranscription >= 0.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0.0;
  }

  *&v37.value = v31;
  if (OZChannel::getValueAsInt((this + 28112), MEMORY[0x277CC08F0], 0.0) == 3)
  {
    v31 = 1.0 - v31;
    *&v37.value = v31;
  }

  if (OZChannel::getValueAsInt((this + 29056), MEMORY[0x277CC08F0], 0.0) == 1 && OZChannel::getValueAsInt((this + 28368), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    v32 = *(*(this + 101) + 63804) + *(*(this + 101) + 19324);
    ValueAsInt = OZChannel::getValueAsInt((this + 33056), MEMORY[0x277CC08F0], 0.0);
    if (v32 > ValueAsInt)
    {
      *&v37.value = v31 + (v32 + ~ValueAsInt);
    }
  }

  TXSequenceBehavior::applySubselection(this, &v38, a3, &v37.value);
  v11 = v37.value;
  return *&v11;
}

void sub_25FB5FED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double TXSequenceBehavior::getInfluenceForTranscription(TXSequenceBehavior *this, CMTime *a2, double a3, OZChannel *a4)
{
  v8 = *(this + 101);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  v37 = *a2;
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  v11 = a3;
  ValueAsInt = OZChannel::getValueAsInt((this + 28368), MEMORY[0x277CC08F0], 0.0);
  v12 = TXSequenceBehavior::charIndexToUnitIndex(this, a3, ValueAsInt);
  time = v37;
  time2 = *(this + 36080);
  if (CMTimeCompare(&time, &time2) || v12 != *(this + 9026))
  {
    ActiveTranscriptionByUnit = TXTranscriptionGenerator::getActiveTranscriptionByUnit(v9, &ValueAsInt, a2);
    memset(&time, 0, sizeof(time));
    std::vector<TXTranscriptionSegment>::__init_with_size[abi:ne200100]<TXTranscriptionSegment*,TXTranscriptionSegment*>(&time, *ActiveTranscriptionByUnit, ActiveTranscriptionByUnit[1], 0xAAAAAAAAAAAAAAABLL * ((ActiveTranscriptionByUnit[1] - *ActiveTranscriptionByUnit) >> 4));
    if (0xAAAAAAAAAAAAAAABLL * ((*&time.timescale - time.value) >> 4) <= v12)
    {
      v13 = 0.0;
      if (OZChannel::getValueAsInt((this + 28112), MEMORY[0x277CC08F0], 0.0) == 1)
      {
        v13 = 1.0;
      }

      goto LABEL_33;
    }

    Lifespan = TXSequenceBehavior::getLifespan(this, &time, v12);
    v35 = -1.0;
    TXSequenceBehavior::computeStartTime(this, a3, a2, &time, v12, &v35, Lifespan);
    v17 = v16;
    memset(&time2, 0, sizeof(time2));
    v18 = (*(*this + 336))(this);
    OZSceneSettings::getFrameDuration((v18 + 336), &v34);
    v19 = OZChannel::getValueAsInt((this + 29208), MEMORY[0x277CC08F0], 0.0);
    operator*(&v34, v19, &time2);
    v34 = time2;
    v20 = CMTimeGetSeconds(&v34);
    v21 = v35;
    if (v35 < 0.0)
    {
      if (Seconds >= v17)
      {
        if (fabs(v20) >= 0.0000001)
        {
          v25 = OZChannel::getValueAsInt((this + 32240), MEMORY[0x277CC08F0], 0.0);
          v27 = (Seconds - v17) / v20;
          v28 = 1.0;
          if (v27 <= 1.0)
          {
            v28 = (Seconds - v17) / v20;
          }

          if (v27 >= 0.0)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0.0;
          }

          v24 = TXSequenceBehavior::computePosition(this, v25, v29, v26);
        }

        else if (Seconds >= v17)
        {
          v30 = OZChannel::getValueAsInt((this + 28112), MEMORY[0x277CC08F0], 0.0);
          v24 = 1.0;
          if (v30 == 1)
          {
            v24 = 0.0;
          }
        }

        else
        {
          v23 = OZChannel::getValueAsInt((this + 28112), MEMORY[0x277CC08F0], 0.0);
          v24 = 1.0;
          if (v23 != 1)
          {
            v24 = 0.0;
          }
        }

        v35 = v24;
        v31 = OZChannel::getValueAsInt((this + 28112), MEMORY[0x277CC08F0], 0.0);
        v21 = v35;
        if (v31 != 1)
        {
          goto LABEL_32;
        }

        v21 = 1.0 - v35;
      }

      else
      {
        v22 = OZChannel::getValueAsInt((this + 28112), MEMORY[0x277CC08F0], 0.0);
        v21 = 1.0;
        if (v22 != 1)
        {
          v21 = 0.0;
        }
      }

      v35 = v21;
    }

LABEL_32:
    v32 = *&a2->value;
    *(this + 4512) = a2->epoch;
    *(this + 2255) = v32;
    *(this + 9026) = v12;
    *(this + 4514) = v21;
    TXSequenceBehavior::deactivateSegmentsIfNecessary(this, a4, v21, ValueAsInt, v12, v11, a2);
    v13 = v35;
LABEL_33:
    time2.value = &time;
    std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&time2);
    return v13;
  }

  TXSequenceBehavior::deactivateSegmentsIfNecessary(this, a4, *(this + 4514), ValueAsInt, v12, v11, a2);
  return *(this + 4514);
}

void sub_25FB60330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  a19 = &a23;
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t TXSequenceBehavior::getSelection(uint64_t a1, const CMTime *a2, void *a3, BOOL *a4)
{
  (*(*a1 + 608))(&v37);
  memset(&v36, 0, sizeof(v36));
  TXSequenceBehavior::getAnimationDuration(a1, &v36);
  v30[0] = v36;
  v8 = MEMORY[0x277CC08F0];
  time2 = **&MEMORY[0x277CC08F0];
  result = CMTimeCompare(v30, &time2);
  if (result >= 1)
  {
    memset(&v35, 0, sizeof(v35));
    v10 = (*(*a1 + 336))(a1);
    OZSceneSettings::getFrameDuration((v10 + 336), &v38);
    v30[0] = v36;
    time2 = v38;
    PC_CMTimeSaferSubtract(v30, &time2, &v35);
    v30[0] = v35;
    time2 = *v8;
    if (CMTimeCompare(v30, &time2))
    {
      time2 = v37;
      v30[0] = *a2;
      PC_CMTimeSaferSubtract(v30, &time2, &v38);
      operator/(&v38.value, &v35, v30);
      Seconds = CMTimeGetSeconds(v30);
    }

    else
    {
      Seconds = 1.0;
    }

    if (Seconds <= 0.999999)
    {
      v12 = Seconds;
    }

    else
    {
      v12 = 0.999999;
    }

    if (Seconds >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0.0;
    }

    memset(&v34, 0, sizeof(v34));
    operator*(&v36, &v38, v13);
    time2 = v37;
    v30[0] = v38;
    PC_CMTimeSaferAdd(v30, &time2, &v34);
    ValueAsInt = OZChannel::getValueAsInt((a1 + 28112), v8, 0.0);
    v16 = OZChannel::getValueAsInt((a1 + 33208), v8, 0.0) == 1 && (ValueAsInt & 0xFFFFFFFE) == 2;
    *a4 = v16;
    if (OZChannel::getValueAsInt((a1 + 32800), v8, 0.0) == 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = OZChannel::getValueAsInt((a1 + 32240), MEMORY[0x277CC08F0], 0.0);
    }

    v18 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((a1 + 32648), MEMORY[0x277CC08F0], 0.0);
    v20 = v19;
    if (OZChannel::getValueAsInt((a1 + 32800), v18, 0.0) == 1)
    {
      if (v17 == 6)
      {
        v22 = 0.0;
        OZChannel::getValueAsDouble((a1 + 32496), &v34, 0.0);
        if (v23 <= 0.999999)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0.999999;
        }

        if (v23 >= 0.0)
        {
          v22 = v24;
        }
      }

      else
      {
        v22 = TXSequenceBehavior::computePosition(a1, v17, v13, v21);
      }

      if (*a4)
      {
        v25 = 0;
      }

      else
      {
        v25 = vcvtmd_s64_f64(v20 * v22 + 0.0000001);
        v22 = v20 * v22 - v25;
      }
    }

    else
    {
      v25 = vcvtmd_s64_f64(v13 * v20 + 0.0000001);
      v26 = v13 * v20 - v25;
      if (v17 == 6)
      {
        memset(&v33, 0, sizeof(v33));
        TXSequenceBehavior::getAnimationDuration(a1, &v33);
        memset(&v32, 0, sizeof(v32));
        operator*(&v33, &v32, v26);
        memset(&v31, 0, sizeof(v31));
        (*(*a1 + 608))(v30, a1);
        v38 = v30[0];
        time2 = v32;
        PC_CMTimeSaferAdd(&time2, &v38, &v31);
        OZChannel::getValueAsDouble((a1 + 32496), &v31, 0.0);
      }

      else
      {
        v27 = TXSequenceBehavior::computePosition(a1, v17, v26, v21);
      }

      v22 = v27;
      if (*a4)
      {
        v22 = (v27 + v25) / v20;
      }
    }

    result = OZChannel::getValueAsInt((a1 + 33208), MEMORY[0x277CC08F0], 0.0);
    v29 = result == 2 && (v25 & 0x80000001) == 1;
    if ((ValueAsInt - 2) < 2)
    {
      return TXSequenceBehavior::getSequenceThroughSelection(a1, a2, v29, a3, v22);
    }

    else if (ValueAsInt == 1)
    {
      return TXSequenceBehavior::getSequenceFromSelection(a1, a2, v29, a3, v22);
    }

    else if (!ValueAsInt)
    {
      return TXSequenceBehavior::getSequenceToSelection(a1, a2, v29, a3, v22);
    }
  }

  return result;
}

uint64_t TXSequenceBehavior::getPerObjectSpeed(TXSequenceBehavior *this)
{
  v2 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 32240), MEMORY[0x277CC08F0], 0.0);
  if (OZChannel::getValueAsInt((this + 28112), v2, 0.0) == 1)
  {
    v4 = ValueAsInt - 1;
    if (ValueAsInt - 1) <= 4 && ((0x1Bu >> v4))
    {
      return dword_26034A638[v4];
    }
  }

  return ValueAsInt;
}

uint64_t TXSequenceBehavior::applySubselection(TXSequenceBehavior *this, const CMTime *a2, double a3, double *a4)
{
  result = OZChannel::getValueAsInt((this + 28368), MEMORY[0x277CC08F0], 0.0);
  if (result != 5)
  {
    result = OZChannel::getValueAsInt((this + 30816), MEMORY[0x277CC08F0], 0.0);
    if (result)
    {
      if (OZChannel::getValueAsInt((this + 30816), MEMORY[0x277CC08F0], 0.0) == 8)
      {
        ValueAsInt = OZChannel::getValueAsInt((this + 31376), MEMORY[0x277CC08F0], 0.0);
        result = TXTextLayout::isEmoji(*(this + 101), a3);
        if (ValueAsInt)
        {
          if (!result)
          {
            return result;
          }
        }

        else if (result)
        {
          return result;
        }

        goto LABEL_20;
      }

      v15 = 0;
      result = TXSequenceBehavior::charIndexToSelectionIndex(this, a3, &v15);
      if (result)
      {
        ValueAsUint = OZChannel::getValueAsUint((this + 31072), a2, 0.0);
        v11 = OZChannel::getValueAsUint((this + 31224), a2, 0.0);
        if (v11 >= ValueAsUint)
        {
          v12 = ValueAsUint;
        }

        else
        {
          v12 = v11;
        }

        if (v11 > ValueAsUint)
        {
          ValueAsUint = v11;
        }

        result = OZChannel::getValueAsInt((this + 31376), MEMORY[0x277CC08F0], 0.0);
        v13 = v15 < v12 || v15 >= ValueAsUint;
        v14 = !v13;
        if ((result == 0) != v14)
        {
LABEL_20:
          *a4 = 0.0;
        }
      }
    }
  }

  return result;
}

void TXSequenceBehavior::computeStartTimeForWord(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4, uint64_t a5, uint64_t a6, double *a7)
{
  v11 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((a1 + 29360), MEMORY[0x277CC08F0], 0.0);
  OZChannel::getValueAsInt((a1 + 29768), v11, 0.0);
  v13 = TXSequenceBehavior::charIndexToTriggerIndex(a1, a3);
  v14 = OZChannel::getValueAsInt((a1 + 29616), v11, 0.0) + v13;
  if (ValueAsInt == 1)
  {
    v15 = *(a1 + 808);
    if (v14 < v15[4831])
    {
      TXTranscriptionGenerator::getActiveTranscriptionByLine(v16, a4);
      if (OZChannel::getValueAsInt((a1 + 30024), MEMORY[0x277CC08F0], 0.0) == 2)
      {
        v17 = MEMORY[0x277CC08F0];
        v18 = OZChannel::getValueAsInt((a1 + 30280), MEMORY[0x277CC08F0], 0.0);
        v19 = (*(*a1 + 336))(a1);
        OZSceneSettings::getFrameDuration((v19 + 336), &v25);
        operator*(&v25, &time, v18);
        CMTimeGetSeconds(&time);
        LineIndex = TXTextLayout::getLineIndex(*(a1 + 808), a3);
        TXTextLayout::lineIndexToCharIndex(*(a1 + 808), LineIndex);
        (*(**(a1 + 808) + 720))();
        TXTextLayout::lineIndexToCharIndex(*(a1 + 808), LineIndex + 1);
        (*(**(a1 + 808) + 720))();
        (*(**(a1 + 808) + 720))();
        memset(&time, 0, sizeof(time));
        v21 = (*(*a1 + 336))(a1);
        OZSceneSettings::getFrameDuration((v21 + 336), &v25);
        v22 = OZChannel::getValueAsInt((a1 + 29208), v17, 0.0);
        operator*(&v25, v22, &time);
        v25 = time;
        CMTimeGetSeconds(&v25);
      }

      else
      {
        (*(**(a1 + 808) + 720))(*(a1 + 808), a3);
        TXTextLayout::getLineIndex(*(a1 + 808), a3);
      }

      return;
    }
  }

  else if (ValueAsInt || v14 < (*(**(a1 + 808) + 224))(*(a1 + 808)))
  {
    return;
  }

  if (a7)
  {
    v23 = OZChannel::getValueAsInt((a1 + 28112), MEMORY[0x277CC08F0], 0.0);
    v24 = 1.0;
    if (v23 != 1)
    {
      v24 = 0.0;
    }

    *a7 = v24;
  }
}

uint64_t TXSequenceBehavior::charIndexToTriggerIndex(TXSequenceBehavior *this, unsigned int a2)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 29360), MEMORY[0x277CC08F0], 0.0);
  switch(ValueAsInt)
  {
    case 2:
      v8 = *(this + 101);
      if (!v8)
      {
        return 0;
      }

      if (!v9)
      {
        return 0;
      }

      return TXTranscriptionGenerator::charIndexToBlockIndex(v9, a2);
    case 1:
      v7 = *(this + 101);

      return TXTextLayout::getLineIndex(v7, a2);
    case 0:
      v5 = *(**(this + 101) + 720);

      return v5();
    default:
      return 0;
  }
}

uint64_t TXSequenceBehavior::charIndexToUnitIndex(TXSequenceBehavior *this, unsigned int a2, int a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v7 = *(this + 101);

      return TXTextLayout::getLineIndex(v7, a2);
    }

    if (a3 == 6)
    {
      v9 = *(this + 101);
      if (!v9)
      {
        return 0;
      }

      if (!v10)
      {
        return 0;
      }

      return TXTranscriptionGenerator::charIndexToBlockIndex(v10, a2);
    }

    if (a3 != 5)
    {
      return 0;
    }

LABEL_11:
    v6 = *(this + 101);

    return TXTextLayout::getComposedCharacterIndex(v6, a2);
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v4 = *(**(this + 101) + 720);

      return v4();
    }

    return 0;
  }

  v8 = *(this + 101);

  return TXTextLayout::getComposedCharacterIndexWithoutSpaces(v8, a2);
}

double TXSequenceBehavior::computeStartTimeForLine(uint64_t a1, int a2, unsigned int a3, int a4, void *a5, double *a6, double a7)
{
  v13 = *(*a5 + 48 * a2 + 8);
  v14 = MEMORY[0x277CC08F0];
  v15 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((a1 + 29360), MEMORY[0x277CC08F0], 0.0);
  v17 = OZChannel::getValueAsInt((a1 + 29768), v14, 0.0);
  v18 = TXSequenceBehavior::charIndexToTriggerIndex(a1, a3);
  v19 = OZChannel::getValueAsInt((a1 + 29616), v14, 0.0);
  if (ValueAsInt == 1)
  {
    v20 = v19 + v18;
    if (v19 + v18 >= *(*(a1 + 808) + 19324))
    {
      if (a4)
      {
        return v13 + a7;
      }

      else if (a6)
      {
        v21 = OZChannel::getValueAsInt((a1 + 28112), MEMORY[0x277CC08F0], 0.0);
        v22 = 1.0;
        if (v21 != 1)
        {
          v22 = 0.0;
        }

        *a6 = v22;
      }
    }

    else if (*(*a5 + 48 * v20 + 8) + (*(*a5 + 48 * v20 + 8) + *(*a5 + 48 * v20 + 16) - *(*a5 + 48 * v20 + 8)) * v17 <= v13 + a7)
    {
      return *(*a5 + 48 * v20 + 8) + (*(*a5 + 48 * v20 + 8) + *(*a5 + 48 * v20 + 16) - *(*a5 + 48 * v20 + 8)) * v17;
    }

    else
    {
      return v13 + a7;
    }
  }

  return v15;
}

double TXSequenceBehavior::computeStartTimeForAll(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, double *a5)
{
  v8 = *(a1 + 808);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x277CC08F0];
  v11 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((a1 + 33056), MEMORY[0x277CC08F0], 0.0);
  v13 = OZChannel::getValueAsInt((a1 + 29768), v10, 0.0);
  v14 = *(a1 + 808);
  v15 = *(v14 + 19324);
  if (*(v14 + 63804) + v15 > ValueAsInt)
  {
    v16 = v13;
    v17 = v15 + OZChannel::getValueAsInt((a1 + 29616), MEMORY[0x277CC08F0], 0.0) - 1;
    if (v17 < v15)
    {
      ActiveTranscriptionByLine = TXTranscriptionGenerator::getActiveTranscriptionByLine(v9, a3);
      if (0xAAAAAAAAAAAAAAABLL * ((ActiveTranscriptionByLine[1] - *ActiveTranscriptionByLine) >> 4) > v17)
      {
        return *(*ActiveTranscriptionByLine + 48 * v17 + 8) + (*(*ActiveTranscriptionByLine + 48 * v17 + 8) + *(*ActiveTranscriptionByLine + 48 * v17 + 16) - *(*ActiveTranscriptionByLine + 48 * v17 + 8)) * v16;
      }
    }
  }

  if (a5)
  {
    v19 = OZChannel::getValueAsInt((a1 + 28112), MEMORY[0x277CC08F0], 0.0);
    v20 = 1.0;
    if (v19 != 1)
    {
      v20 = 0.0;
    }

    *a5 = v20;
  }

  return v11;
}

double TXSequenceBehavior::computeEndTime(TXSequenceBehavior *this, double a2, CMTime *a3, int a4)
{
  (*(*this + 352))(this);
  v8 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((this + 28368), MEMORY[0x277CC08F0], 0.0);
  v9 = TXSequenceBehavior::charIndexToUnitIndex(this, a2, ValueAsInt);
  v10 = *(this + 101);
  if (v10)
  {
  }

  TranscriptionByUnit = TXTranscriptionGenerator::getTranscriptionByUnit(v10, &ValueAsInt);
  if (0xAAAAAAAAAAAAAAABLL * ((TranscriptionByUnit[1] - *TranscriptionByUnit) >> 4) > v9)
  {
    v12 = TranscriptionByUnit;
    Lifespan = TXSequenceBehavior::getLifespan(this, TranscriptionByUnit, v9);
    TXSequenceBehavior::computeStartTime(this, a2, a3, v12, v9, 0, Lifespan);
    v15 = v14;
    memset(&v21, 0, sizeof(v21));
    v16 = (*(*this + 336))(this);
    OZSceneSettings::getFrameDuration((v16 + 336), &v20);
    v17 = OZChannel::getValueAsInt((this + 29208), MEMORY[0x277CC08F0], 0.0);
    operator*(&v20, v17, &v21);
    v20 = v21;
    v18 = v15 + CMTimeGetSeconds(&v20);
    if (a4)
    {
      return v18;
    }

    else
    {
      return v18 - Lifespan;
    }
  }

  return v8;
}

double TXSequenceBehavior::getLifespan(void *a1, void *a2, int a3)
{
  v6 = a1[101];
  if (v6)
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt(v7 + 425, MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt == 1)
  {
    v10 = (*(*a1 + 336))(a1);
    OZSceneSettings::getFrameDuration((v10 + 336), &v13);
    v11 = OZChannel::getValueAsInt((v7 + 64856), MEMORY[0x277CC08F0], 0.0);
    operator*(&v13, v11, &time);
    return CMTimeGetSeconds(&time);
  }

  else if (!ValueAsInt && 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4) > a3)
  {
    return *(*a2 + 48 * a3 + 16);
  }

  return v8;
}

uint64_t TXSequenceBehavior::computeStartTime(uint64_t a1, uint64_t a2, CMTime *a3, void *a4, uint64_t a5, double *a6, double a7)
{
  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  ValueAsInt = OZChannel::getValueAsInt((a1 + 28368), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt > 3)
  {
    if (ValueAsInt == 4)
    {
      TXSequenceBehavior::computeStartTimeForAll(a1, 0, a3, v16, a6);
    }

    else if (ValueAsInt == 6)
    {
      OZChannel::getValueAsInt((a1 + 29768), MEMORY[0x277CC08F0], 0.0);
    }
  }

  else if (ValueAsInt == 2)
  {
    TXSequenceBehavior::computeStartTimeForWord(a1, a5, a2, a3, 0, a4, a6);
  }

  else if (ValueAsInt == 3)
  {
    TXSequenceBehavior::computeStartTimeForLine(a1, a5, a2, Seconds - *(*a4 + 48 * a5 + 8) > a7, a4, a6, a7);
  }

  memset(&time, 0, sizeof(time));
  v17 = (*(*a1 + 336))(a1);
  OZSceneSettings::getFrameDuration((v17 + 336), &v21);
  v18 = MEMORY[0x277CC08F0];
  v19 = OZChannel::getValueAsInt((a1 + 29208), MEMORY[0x277CC08F0], 0.0);
  operator*(&v21, v19, &time);
  v21 = time;
  CMTimeGetSeconds(&v21);
  return OZChannel::getValueAsInt((a1 + 29768), v18, 0.0);
}

void TXSequenceBehavior::deactivateSegmentsIfNecessary(TXSequenceBehavior *this, OZChannel *a2, double a3, int a4, int a5, double a6, CMTime *a7)
{
  v8 = *(this + 101);
  if (v8)
  {
    if (v15)
    {
      v16 = v15;
      ValueAsInt = OZChannel::getValueAsInt((this + 28112), MEMORY[0x277CC08F0], 0.0);
      if (a2)
      {
        var3 = a2->var3;
        if (var3 == 1044)
        {
          if (a3 != 1.0 || ValueAsInt)
          {
            return;
          }
        }

        else if (a3 != 1.0 || ValueAsInt || var3 != 1050)
        {
          return;
        }

        OZChannel::getValueAsDouble(a2, a7, 0.0);
        if (v19 == 0.0)
        {
          switch(a4)
          {
            case 6:
              v23 = TXSequenceBehavior::charIndexToUnitIndex(this, a6, 6);

              TXTranscriptionGenerator::deactivateBlock(v16, v23);
              break;
            case 3:

              TXSequenceBehavior::deactivateLineSegment(this, a6, a7, v16);
              break;
            case 2:
              v20 = MEMORY[0x277CC08F0];
              v21 = OZChannel::getValueAsInt((v16 + 65008), MEMORY[0x277CC08F0], 0.0);
              v22 = OZChannel::getValueAsInt((v16 + 61800), v20, 0.0);
              if (v21 == 1 && v22)
              {

                TXTranscriptionGenerator::deactivateWordSegment(v16, a5, a7);
              }

              else
              {

                TXSequenceBehavior::deactivateLineSegmentIfLastWordFadedOut(this, a5, a6, a7, v16);
              }

              break;
          }
        }
      }
    }
  }
}

void TXSequenceBehavior::deactivateLineSegmentIfLastWordFadedOut(TXTextLayout **this, int a2, double a3, CMTime *a4, TXTranscriptionGenerator *a5)
{
  LineIndex = TXTextLayout::getLineIndex(this[101], a3);
  if (getIndexOfLastWordInLine(LineIndex, a5, v9) == a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v10 = 0;
      v11 = a2 + 1;
      do
      {
        TXTranscriptionGenerator::deactivateWordSegment(a5, v10++, a4);
      }

      while (v11 != v10);
    }

    TXTranscriptionGenerator::deactivateLineSegment(a5, LineIndex, a4);
  }
}

void TXSequenceBehavior::deactivateLineSegment(TXTextLayout **this, double a2, CMTime *a3, TXTranscriptionGenerator *a4)
{
  LineIndex = TXTextLayout::getLineIndex(this[101], a2);
  IndexOfLastWordInLine = getIndexOfLastWordInLine(LineIndex, a4, v7);
  if ((IndexOfLastWordInLine & 0x80000000) == 0)
  {
    v9 = 0;
    v10 = IndexOfLastWordInLine + 1;
    do
    {
      TXTranscriptionGenerator::deactivateWordSegment(a4, v9++, a3);
    }

    while (v10 != v9);
  }

  TXTranscriptionGenerator::deactivateLineSegment(a4, LineIndex, a3);
}

uint64_t getIndexOfLastWordInLine(int a1, TXTranscriptionGenerator *this, const CMTime *a3)
{
  if (a1 + 1 >= *(this + 4831))
  {
    v5 = (*(*this + 224))(this);
  }

  else
  {
    v4 = TXTextLayout::lineIndexToCharIndex(this, a1 + 1);
    v5 = (*(*this + 720))(this, v4);
  }

  return (v5 - 1);
}

double TXSequenceBehavior::objectIndexToPercent(TXSequenceBehavior *this, unsigned int a2)
{
  NumObjects = TXSequenceBehavior::getNumObjects(this);
  if (OZChannel::getValueAsInt((this + 31832), MEMORY[0x277CC08F0], 0.0) == 2 || OZChannel::getValueAsInt((this + 31832), MEMORY[0x277CC08F0], 0.0) == 3)
  {
    NumObjects = (NumObjects + 1) >> 1;
  }

  return (a2 / NumObjects);
}

double TXSequenceBehavior::getSpreadInPercent(TXSequenceBehavior *this)
{
  NumObjects = TXSequenceBehavior::getNumObjects(this);
  isCenterAnimation = TXSequenceBehavior::isCenterAnimation(this);
  v4 = NumObjects > 1 && isCenterAnimation;
  v5 = NumObjects >> v4;
  OZChannel::getValueAsDouble((this + 31680), MEMORY[0x277CC08F0], 0.0);
  return v6 / v5;
}

void TXSequenceBehavior::getCustomSpeed(TXSequenceBehavior *this, double a2)
{
  if (OZChannel::getValueAsInt((this + 32800), MEMORY[0x277CC08F0], 0.0) == 2 || OZChannel::getValueAsInt((this + 29056), MEMORY[0x277CC08F0], 0.0) == 1)
  {
    CustomSpeedDuration = TXSequenceBehavior::getCustomSpeedDuration(this);
  }

  else
  {
    (*(*this + 608))(v16, this);
    time = v16[1];
    Seconds = CMTimeGetSeconds(&time);
    v6 = Seconds / *((*(*this + 336))(this) + 368);
    v7 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((this + 33464), MEMORY[0x277CC08F0], 0.0);
    v9 = v6 - v8;
    OZChannel::getValueAsDouble((this + 33056), v7, 0.0);
    CustomSpeedDuration = v9 - v10;
  }

  v11 = CustomSpeedDuration * a2;
  memset(&v15, 0, sizeof(v15));
  v12 = (*(*this + 336))(this);
  OZSceneSettings::getFrameDuration((v12 + 336), &v13);
  operator*(&v13, &v14, v11);
  (*(*this + 608))(v16, this);
  v17 = v16[0];
  time = v14;
  PC_CMTimeSaferAdd(&time, &v17, &v15);
  OZChannel::getValueAsDouble((this + 32496), &v15, 0.0);
}

uint64_t TXSequenceBehavior::getSequenceToSelection(uint64_t a1, const CMTime *a2, int a3, void *a4, double a5)
{
  SpreadInPercent = TXSequenceBehavior::getSpreadInPercent(a1);
  v11 = 1.0;
  if (OZChannel::getValueAsInt((a1 + 28368), MEMORY[0x277CC08F0], 0.0) == 5)
  {
    TXSequenceBehavior::getSpan(a1, a2);
    v11 = v12;
  }

  if (OZChannel::getValueAsInt((a1 + 28368), MEMORY[0x277CC08F0], 0.0) == 5)
  {
    TXSequenceBehavior::getSpan(a1, a2);
  }

  else
  {
    v13 = 1.0 / TXSequenceBehavior::getNumObjects(a1);
  }

  if (SpreadInPercent <= 0.0)
  {
    v14 = -1.0 - v13;
    v15 = 0.0001 - v13;
  }

  else
  {
    v14 = -1.0 - SpreadInPercent;
    v15 = -v13;
  }

  TXSequenceBehavior::makeSelection(a1, a2, a5, v14, v15, v11, SpreadInPercent, a3, v17);
  return std::vector<OZSequenceSelection>::push_back[abi:ne200100](a4, v17);
}

uint64_t TXSequenceBehavior::getSequenceFromSelection(uint64_t a1, const CMTime *a2, int a3, void *a4, double a5)
{
  SpreadInPercent = TXSequenceBehavior::getSpreadInPercent(a1);
  v11 = 1.0;
  if (OZChannel::getValueAsInt((a1 + 28368), MEMORY[0x277CC08F0], 0.0) == 5)
  {
    TXSequenceBehavior::getSpan(a1, a2);
    v11 = v12;
  }

  if (OZChannel::getValueAsInt((a1 + 28368), MEMORY[0x277CC08F0], 0.0) == 5)
  {
    TXSequenceBehavior::getSpan(a1, a2);
  }

  else
  {
    v13 = 1.0 / TXSequenceBehavior::getNumObjects(a1);
  }

  v14 = 0.0001 - v13;
  if (SpreadInPercent > 0.0)
  {
    v14 = 0.0;
  }

  TXSequenceBehavior::makeSelection(a1, a2, a5, v14, SpreadInPercent + 1.0 - v13 + 0.0001, v11, SpreadInPercent, a3, v16);
  return std::vector<OZSequenceSelection>::push_back[abi:ne200100](a4, v16);
}

uint64_t TXSequenceBehavior::getSequenceThroughSelection(uint64_t a1, const CMTime *a2, int a3, void *a4, double a5)
{
  v10 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((a1 + 33208), MEMORY[0x277CC08F0], 0.0);
  if (OZChannel::getValueAsInt((a1 + 28368), v10, 0.0) == 5)
  {
    TXSequenceBehavior::getSpan(a1, a2);
    v13 = v12;
  }

  else
  {
    v13 = 1.0 / TXSequenceBehavior::getNumObjects(a1);
  }

  SpreadInPercent = TXSequenceBehavior::getSpreadInPercent(a1);
  v15 = 1.0;
  if (ValueAsInt == 1)
  {
    OZChannel::getValueAsDouble((a1 + 32648), MEMORY[0x277CC08F0], 0.0);
  }

  if (SpreadInPercent <= 0.0)
  {
    v16 = -0.0001 - v13;
    v17 = v15 - v13 + 0.0001;
  }

  else
  {
    v16 = -v13 - SpreadInPercent;
    v17 = v15 - v13;
  }

  TXSequenceBehavior::makeSelection(a1, a2, a5, v16, SpreadInPercent + v17, v13, SpreadInPercent, a3, v20);
  v21[1] = v20[1];
  v21[2] = v20[2];
  v22 = v20[3];
  v21[0] = v20[0];
  if (ValueAsInt == 1)
  {
    OZChannel::getValueAsDouble((a1 + 32648), MEMORY[0x277CC08F0], 0.0);
    *&v22 = v18;
  }

  return std::vector<OZSequenceSelection>::push_back[abi:ne200100](a4, v21);
}

__n128 TXSequenceBehavior::makeSelection@<Q0>(TXSequenceBehavior *this@<X0>, const CMTime *a2@<X1>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, int a8@<W2>, uint64_t a9@<X8>)
{
  if (a8)
  {
    v14 = a5;
  }

  else
  {
    v14 = a4;
  }

  if (!a8)
  {
    a4 = a5;
  }

  v15 = v14 + (a4 - v14) * a3;
  if (OZChannel::getValueAsInt((this + 28368), MEMORY[0x277CC08F0], 0.0) == 5)
  {
    OZChannel::getValueAsDouble((this + 28624), a2, 0.0);
    v15 = v15 + v16;
  }

  *a9 = v15;
  *(a9 + 8) = a6;
  *(a9 + 16) = xmmword_260342700;
  *(a9 + 32) = a7;
  *(a9 + 40) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a9 + 48) = result;
  return result;
}

uint64_t std::vector<OZSequenceSelection>::push_back[abi:ne200100](void *a1, _OWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OZSequenceSelection>::__emplace_back_slow_path<OZSequenceSelection>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = a2[1];
    v5 = a2[3];
    v3[2] = a2[2];
    v3[3] = v5;
    v3[1] = v4;
    result = (v3 + 4);
  }

  a1[1] = result;
  return result;
}

void TXSequenceBehavior::notify(TXSequenceBehavior *this, char a2)
{
  if ((a2 & 8) != 0)
  {
    v3 = *(this + 101);
    if (v3)
    {
      v4 = (*(*this + 336))(this);
      v5 = *(v4 + 198);
      v6 = *(v5 + 168);
      if (v6)
      {
        if (OZNotificationManager::wasChannelModified(v6, (this + 3768)))
        {
          goto LABEL_7;
        }

        v7 = *(v5 + 168);
        if (!v7)
        {
          return;
        }

        if (OZNotificationManager::wasChannelModified(v7, (this + 3616)))
        {
LABEL_7:
          TXTextLayout::setAllParagraphsDirty(v3);
        }

        v8 = *(v5 + 168);
        if (v8 && OZNotificationManager::wasChannelModified(v8, (this + 35472)) && *(this + 36048) != (OZChannel::getValueAsInt((this + 35472), MEMORY[0x277CC08F0], 0.0) == 1))
        {
          TXTextLayout::getTextObject(v3, *(v3 + 19264), &v30);
          v28 = 0uLL;
          v29 = 0;
          OZScene::getCurrentTime(v4, &v28);
          v9 = *(v30 + 264);
          if (v9)
          {
            v10 = *(v9 + 8);
            v11 = *(v9 + 16);
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v10 = 0;
            v11 = 0;
          }

          *&v27.value = v28;
          v27.epoch = v29;
          Size = TXTextStyle::getSize(v10, &v27, 0.0);
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          OZChannel::getValueAsDouble((this + 17056), MEMORY[0x277CC08F0], 0.0);
          v14 = v13;
          v15 = this + 17208;
          OZChannel::getValueAsDouble((this + 17208), MEMORY[0x277CC08F0], 0.0);
          v17 = v16;
          v18 = this + 1112;
          OZChannel::getValueAsDouble((this + 1112), MEMORY[0x277CC08F0], 0.0);
          v20 = v19;
          OZChannel::getValueAsDouble((this + 1264), MEMORY[0x277CC08F0], 0.0);
          v22 = v21;
          ValueAsInt = OZChannel::getValueAsInt((this + 35472), MEMORY[0x277CC08F0], 0.0);
          v24 = Size;
          v25 = *(*(this + 2132) + 712);
          if (ValueAsInt == 1)
          {
            v25(this + 17056, MEMORY[0x277CC08F0], 1, v14 * 100.0 / v24);
            (*(*v15 + 712))(this + 17208, MEMORY[0x277CC08F0], 1, v17 * 100.0 / v24);
            v26 = 100.0;
            (*(*v18 + 712))(this + 1112, MEMORY[0x277CC08F0], 1, v20 * 100.0 / v24);
          }

          else
          {
            v25(this + 17056, MEMORY[0x277CC08F0], 1, v14 * v24 / 100.0);
            (*(*v15 + 712))(this + 17208, MEMORY[0x277CC08F0], 1, v17 * v24 / 100.0);
            (*(*v18 + 712))(this + 1112, MEMORY[0x277CC08F0], 1, v20 * v24 / 100.0);
            v26 = v24;
            v24 = 100.0;
          }

          (*(*(this + 158) + 712))(this + 1264, MEMORY[0x277CC08F0], 1, v22 * v26 / v24);
          *(this + 36048) = OZChannel::getValueAsInt((this + 35472), MEMORY[0x277CC08F0], 0.0) == 1;
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }
        }
      }
    }
  }
}

void sub_25FB62B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void *TXSequenceBehavior::finishInitializing(TXSequenceBehavior *this)
{
  OZChannelFolder::finishInitializing((this + 56));

  return TXSequenceBehavior::updateUnitsChannel(this);
}

uint64_t TXSequenceBehavior::arAddChannel(TXSequenceBehavior *this, OZChannelBase *a2)
{
  (*(a2->var0 + 36))(a2, 0);
  result = (*(*this + 680))(this, a2);
  if (a2->var3 == 1031)
  {
    Channel = TXSequenceChannels::findChannel((this + 816), 1032, 0, 0);
    v6 = *(*this + 680);

    return v6(this, Channel);
  }

  return result;
}

uint64_t TXSequenceBehavior::arRemoveChannel(TXSequenceBehavior *this, OZChannelBase *a2)
{
  (*(a2->var0 + 36))(a2, 0);
  result = (*(*this + 696))(this, a2);
  if (a2->var3 == 1031)
  {
    Channel = TXSequenceChannels::findChannel((this + 816), 1032, 0, 0);
    v6 = *(*this + 696);

    return v6(this, Channel);
  }

  return result;
}

void *TXSequenceBehavior::arGetChannelList(uint64_t a1, char **a2)
{
  TXSequenceChannels::getChannelList(a1 + 816, a2);
  result = (*(*a1 + 336))(a1);
  if (result && *(result[198] + 324) == 1)
  {
    v6 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      v7 = *a2;
      while (*v7 != a1 + 26816)
      {
        v7 += 8;
        v6 += 8;
        if (v7 == v5)
        {
          v6 = a2[1];
          break;
        }
      }
    }

    if (v5 != v6)
    {
      v8 = v5 - (v6 + 8);
      if (v5 != v6 + 8)
      {
        result = memmove(v6, v6 + 8, v5 - (v6 + 8));
      }

      a2[1] = &v6[v8];
    }
  }

  return result;
}

uint64_t TXSequenceBehavior::arGetObjectManipulator(TXSequenceBehavior *this)
{
  v1 = (*(*this + 312))(this);

  return OZChannelBase::getObjectManipulator(v1);
}

uint64_t non-virtual thunk toTXSequenceBehavior::arGetObjectManipulator(TXSequenceBehavior *this)
{
  v1 = (*(*(this - 67) + 312))(this - 536);

  return OZChannelBase::getObjectManipulator(v1);
}

BOOL TXSequenceBehavior::arHideChannel(TXSequenceBehavior *this, OZChannelBase *a2)
{
  if (a2->var3 == 1032)
  {
    return 1;
  }

  v9 = v2;
  v10 = v3;
  v5 = *(this + 101);
  if (!v5)
  {
    return 0;
  }

  if ((*(*v5 + 296))(v5))
  {
    return ((a2->var3 - 1007) & 0xFFFFFFFB) == 0;
  }

  var1 = a2->var1;
  v8 = xmmword_26034A5A0;
  return (OZFactory::isKindOfClass(var1, &v8) & 1) != 0;
}

uint64_t TXSequenceBehavior::getLockDependencies(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = result + 544;
  for (i = *(a4 + 8); i; i = *i)
  {
    v10 = i[4];
    if (v8 >= v10)
    {
      if (v10 >= v8)
      {
        return result;
      }

      ++i;
    }
  }

  v13 = (result + 544);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(a4, &v13);
  if (a2)
  {
    PCDirectedGraph<OZLocking *>::addEdge(a3, a2, v8);
  }

  else
  {
    v12 = v8;
    v13 = &v12;
    std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::__emplace_unique_key_args<OZLocking *,std::piecewise_construct_t const&,std::tuple<OZLocking * const&>,std::tuple<>>(a3, &v12);
  }

  v11 = *(v7 + 808);
  if (v11)
  {
    OZLocking::getLockDependenciesForElement((v11 + 200), v8, a3, a4);
  }

  v13 = v8;
  return std::__tree<OZLocking *>::__erase_unique<OZLocking *>(a4, &v13);
}

void *PCDirectedGraph<OZLocking *>::addEdge(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a3;
  v6[0] = a2;
  v6[2] = v6;
  v3 = std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::__emplace_unique_key_args<OZLocking *,std::piecewise_construct_t const&,std::tuple<OZLocking * const&>,std::tuple<>>(a1, v6);
  return std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>((v3 + 5), &v5);
}

uint64_t TXSequenceBehavior::getLockingGroups(TXSequenceBehavior *this)
{
  result = (*(*this + 336))(this);
  if (result)
  {
    return (*(*this + 336))(this) + 1784;
  }

  return result;
}

uint64_t non-virtual thunk toTXSequenceBehavior::getLockingGroups(TXSequenceBehavior *this)
{
  v1 = this - 544;
  result = (*(*(this - 68) + 336))(this - 544);
  if (result)
  {
    return (*(*v1 + 336))(v1) + 1784;
  }

  return result;
}

void TXSequenceCurveNode::~TXSequenceCurveNode(TXSequenceCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

void TXSequenceCurveNode::solveNode(TXSequenceCurveNode *this, const CMTime *a2, double a3, double a4)
{
  v7 = *(this + 4);
  (*(**(this + 2) + 336))(&v8);
  TXSequenceBehavior::getValue(v7, &v8, a3, *(this + 5), a4);
}

void OZChannelUint32::OZChannelUint32(OZChannelUint32 *this, double a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannelUint32_FactoryBase = getOZChannelUint32_FactoryBase();
  OZChannel::OZChannel(this, OZChannelUint32_FactoryBase, a3, a4, a5, a6, a7, a8);
  this->var0 = &unk_287246400;
  this->var2 = &unk_287246760;
  OZChannelUint32Info = OZChannelUint32::createOZChannelUint32Info(v17);
  if (a8)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelUint32::_OZChannelUint32Info;
    this->var17 = OZChannelUint32::_OZChannelUint32Info;
  }

  this->var16 = var17;
  OZChannelUint32::createOZChannelUint32Impl(OZChannelUint32Info);
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelUint32::_OZChannelUint32Impl;
    this->var15 = OZChannelUint32::_OZChannelUint32Impl;
  }

  this->var14 = var15;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

long double PCRandom::noise(PCRandom *this, double a2, double a3, unsigned int a4, int a5, double a6, double a7)
{
  v7 = a6;
  v8 = -1640531527;
  v9 = (a3 + a3) * a2;
  v10 = (a7 + a7) * a2;
  v11 = v9;
  if ((a5 & 0xFFFFFFFD) != 0 || (v11 ? (v12 = v9 < v10) : (v12 = 0), v13 = a6, v12))
  {
    v14 = -32;
    v15 = -1640531527;
    v16 = this;
    v17 = a4;
    do
    {
      v16 += (v11 + 16 * v17) ^ (v15 + v17) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v17 >> 5));
      v17 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v16) ^ (v15 + v16) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v16 >> 5));
      v15 -= 1640531527;
      v18 = __CFADD__(v14++, 1);
    }

    while (!v18);
    v13 = (v17 ^ v16) / 2147483650.0;
  }

  if ((a5 - 3) < 0xFFFFFFFE || ceil(v9) < v10)
  {
    v21 = -32;
    do
    {
      LODWORD(this) = ((v11 + 1 + 16 * a4) ^ (v8 + a4) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (a4 >> 5))) + this;
      a4 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * this) ^ (v8 + this) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (this >> 5));
      v8 -= 1640531527;
      v18 = __CFADD__(v21++, 1);
    }

    while (!v18);
    v7 = (a4 ^ this) / 2147483650.0;
    v19 = v11;
    v20 = 1.0;
  }

  else
  {
    v19 = v11;
    v20 = v10 - v11;
  }

  v22 = cos((v9 - v19) / v20 * 3.14159265);
  return v7 * ((1.0 - v22) * 0.5) + v13 * (1.0 - (1.0 - v22) * 0.5);
}

uint64_t *std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::vector<OZSequenceSelection>::__emplace_back_slow_path<OZSequenceSelection>(void *a1, _OWORD *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OZSequenceSelection>>(a1, v7);
  }

  v8 = (v2 << 6);
  __p = 0;
  v14 = v8;
  v16 = 0;
  *v8 = *a2;
  v10 = a2[2];
  v9 = a2[3];
  v8[1] = a2[1];
  v8[2] = v10;
  v8[3] = v9;
  v15 = (v2 << 6) + 64;
  std::vector<OZSequenceSelection>::__swap_out_circular_buffer(a1, &__p);
  v11 = a1[1];
  if (v15 != v14)
  {
    v15 += (v14 - v15 + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_25FB63918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<OZSequenceSelection>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = *v2;
      v6 = v2[1];
      v7 = v2[3];
      v5[2] = v2[2];
      v5[3] = v7;
      v5[1] = v6;
      v2 += 4;
      v5 += 4;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v8 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v8;
  v9 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OZSequenceSelection>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::__emplace_unique_key_args<OZLocking *,std::piecewise_construct_t const&,std::tuple<OZLocking * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<OZLocking *>::__erase_unique<OZLocking *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void TXHelperFunctions::GetTextObjectContainingCharIndex(TXHelperFunctions *this@<X0>, TXTextLayout *a2@<X1>, int a3@<W2>, unint64_t *a4@<X3>, void *a5@<X8>)
{
  if (a3 && Li3DEngineScene::sceneManager(this))
  {
    v11 = Li3DEngineScene::sceneManager(this);
    OZLockingGroup::acquireReadLocks(v11);
  }

  *a5 = 0;
  a5[1] = 0;
  if (a4)
  {
    v12 = *(this + 7353);
    v13 = *(this + 7354) - v12;
    if (v13)
    {
      v14 = v13 >> 4;
      v15 = *a4;
      if ((v13 >> 4) <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v13 >> 4;
      }

      v17 = v15 + v14;
      while (1)
      {
        v18 = v15 % v14;
        v19 = *(v12 + 16 * (v15 % v14));
        v20 = *(v19 + 736);
        if (v20 <= a2 && (*(v19 + 740) + v20) > a2)
        {
          break;
        }

        v18 = v17 % v14;
        v19 = *(v12 + 16 * (v17 % v14));
        v22 = *(v19 + 736);
        if (v22 <= a2 && (*(v19 + 740) + v22) > a2)
        {
          break;
        }

        ++v15;
        --v17;
        if (!--v16)
        {
          goto LABEL_19;
        }
      }

      v29 = *(v12 + 16 * v18 + 8);
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      *a5 = v19;
      a5[1] = v29;
      goto LABEL_33;
    }
  }

LABEL_19:
  v24 = *(this + 7353);
  v25 = *(this + 7354);
  if (v24 != v25)
  {
    v18 = 0;
    while (1)
    {
      v26 = *v24;
      v27 = *(*v24 + 736);
      if (v27 <= a2 && (*(*v24 + 740) + v27) > a2)
      {
        break;
      }

      ++v18;
      v24 += 2;
      if (v24 == v25)
      {
        goto LABEL_34;
      }
    }

    v30 = v24[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    *a5 = v26;
    a5[1] = v30;
    if (a4)
    {
LABEL_33:
      *a4 = v18;
    }
  }

LABEL_34:
  if (a3)
  {
    if (Li3DEngineScene::sceneManager(this))
    {
      v31 = Li3DEngineScene::sceneManager(this);
      OZLockingGroup::releaseReadLocks(v31);
    }
  }
}

void sub_25FB63DD0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void TXHelperFunctions::SetCaretMovementMap(uint64_t a1, uint64_t *a2)
{
  v29 = 0;
  __dst = 0;
  v31 = 0;
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 960);
    while (1)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v26, *(v2 + 24 * v5), *(v2 + 24 * v5 + 8), (*(v2 + 24 * v5 + 8) - *(v2 + 24 * v5)) >> 3);
      v8 = v26;
      v9 = v27;
      if (v27 != v26)
      {
        break;
      }

      v21 = (v27 - v26) >> 3;
LABEL_27:
      std::vector<unsigned long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v29, __dst, v8, v9, v21);
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      v2 = *a2;
      v5 = ++v6;
      if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v6)
      {
        if (v29)
        {
          __dst = v29;
          operator delete(v29);
        }

        return;
      }
    }

    v10 = 0;
    v11 = v6 + 1;
    v12 = v6 - 1;
    v13 = 1;
    while (1)
    {
      v14 = *&v8[8 * v10];
      if (v13 != 1)
      {
        v16 = *&v8[8 * v13 - 16];
        goto LABEL_15;
      }

      if (v7)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) < v6 + 2)
        {
          goto LABEL_14;
        }

        v15 = (*a2 + 24 * v11);
        __p = 0;
        v24 = 0;
        v25 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *v15, v15[1], (v15[1] - *v15) >> 3);
      }

      else
      {
        if (!v6)
        {
LABEL_14:
          v16 = 0xFFFFFFFFLL;
          goto LABEL_15;
        }

        v17 = (*a2 + 24 * v12);
        v24 = 0;
        v25 = 0;
        __p = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *v17, v17[1], (v17[1] - *v17) >> 3);
      }

      v16 = *(v24 - 1);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

LABEL_15:
      if (((v27 - v26) >> 3) - 1 == v10)
      {
        if (v7)
        {
          if (!v6)
          {
            goto LABEL_23;
          }

          v18 = (*a2 + 24 * v12);
          v24 = 0;
          v25 = 0;
          __p = 0;
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *v18, v18[1], (v18[1] - *v18) >> 3);
        }

        else
        {
          v20 = *a2;
          if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v11)
          {
LABEL_23:
            v19 = 0xFFFFFFFFLL;
            goto LABEL_24;
          }

          __p = 0;
          v24 = 0;
          v25 = 0;
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *(v20 + 24 * v11), *(v20 + 24 * v11 + 8), (*(v20 + 24 * v11 + 8) - *(v20 + 24 * v11)) >> 3);
        }

        v19 = *__p;
        v24 = __p;
        operator delete(__p);
      }

      else
      {
        v19 = *(v26 + v13);
      }

LABEL_24:
      TXParagraphStyle::setCaretPositionPair(a1, v14, v16, v19);
      v10 = v13;
      v8 = v26;
      v9 = v27;
      v21 = (v27 - v26) >> 3;
      if (v21 <= v13++)
      {
        goto LABEL_27;
      }
    }
  }
}

void sub_25FB64088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void TXTextLayoutBehaviorNode::~TXTextLayoutBehaviorNode(TXTextLayoutBehaviorNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double TXTextLayoutBehaviorNode::solveNode(TXTextLayoutBehaviorNode *this, const CMTime *a2, double a3, double a4)
{
  v5 = *(this + 4);
  if (v5[320] == 1)
  {
    if (!(*(*v5 + 272))(v5, a2, a3))
    {
      return a4;
    }

    v5 = *(this + 4);
  }

  v7 = (*(*v5 + 712))(v5);
  v8 = *(this + 4);
  if (v8)
  {
    v9 = (*(*v8 + 312))(v8);
    if (OZChannelBase::isEnabled(v9, 0, 1))
    {
      if ((*((*(**(this + 4) + 320))(*(this + 4)) + 1024) & 2) == 0 && ((*(**(this + 4) + 768))(*(this + 4)) & 1) == 0)
      {
        v11 = (*(**(this + 4) + 680))(*(this + 4));
        v12 = !TXTextLayout::isVerticalLayout(v7);
        if (v11 == 1)
        {
          v13 = 3.0;
          v14 = 4.0;
        }

        else
        {
          v13 = 4.0;
          v14 = 3.0;
        }

        if (v12)
        {
          return v13;
        }

        else
        {
          return v14;
        }
      }
    }
  }

  return OZChannel::getInitialValue((v7 + 20464));
}

void TXTextScrollCurveNode::TXTextScrollCurveNode(TXTextScrollCurveNode *this, TXTextScrollBehavior *a2, OZChannel *a3, int a4)
{
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, a2, a3);
  *v7 = &unk_2872019D8;
  *(v7 + 32) = a2;
  PCMutex::PCMutex((v7 + 48), 1);
  *(this + 6) = &unk_2871D83A0;
  *(this + 10) = a4;
  *(this + 120) = 0;
}

void TXTextScrollCurveNode::TXTextScrollCurveNode(TXTextScrollCurveNode *this, const TXTextScrollCurveNode *a2)
{
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, a2);
  *v3 = &unk_2872019D8;
  PCMutex::PCMutex((v3 + 48), 1);
  *(this + 6) = &unk_2871D83A0;
  *(this + 120) = 0;
}

void TXTextScrollCurveNode::~TXTextScrollCurveNode(TXTextScrollCurveNode *this)
{
  *this = &unk_2872019D8;
  PCMutex::~PCMutex((this + 48));

  OZEaseInInterpolator::~OZEaseInInterpolator(this);
}

{
  *this = &unk_2872019D8;
  PCMutex::~PCMutex((this + 48));
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double TXTextScrollCurveNode::solveNode(TXTextScrollCurveNode *this, const CMTime *a2, double a3, double a4)
{
  v7 = (*(**(this + 4) + 312))(*(this + 4), a3);
  if (OZChannelBase::isEnabled(v7, 0, 1) && (*((*(**(this + 4) + 320))(*(this + 4)) + 1024) & 2) == 0)
  {
    v9 = *a2;
    return TXTextScrollCurveNode::getOffset(this, &v9) + a4;
  }

  return a4;
}

double TXTextScrollCurveNode::getOffset(TXTextScrollBehavior **this, CMTime *a2)
{
  v4 = (this + 6);
  v147 = (this + 6);
  PCMutex::lock((this + 6));
  v148 = 1;
  if (TXTextScrollBehavior::getComputeOffsetForPreInceptionProjects(this[4]))
  {
    *&time1.var0.var0 = *&a2->value;
    time1.var0.var3 = a2->epoch;
    OffsetPreInception = TXTextScrollCurveNode::getOffsetPreInception(this, &time1);
    goto LABEL_78;
  }

  v6 = this[4];
  if (*(v6 + 320) == 1)
  {
    OffsetPreInception = 0.0;
    if (!(*(*v6 + 272))(v6))
    {
      goto LABEL_78;
    }

    v6 = this[4];
  }

  v7 = (*(*v6 + 712))(v6);
  v8 = (*(*this[4] + 720))(this[4]);
  OffsetPreInception = 0.0;
  if (v7 | v8 && (this[15] & 1) == 0)
  {
    *(this + 120) = 1;
    memset(&v146, 0, sizeof(v146));
    v9 = (*(**(*(this[4] + 47) + 32) + 336))(&v146);
    CurrentConversion = OZMEChannelTimeConverter::GetCurrentConversion(v9);
    v144 = 0uLL;
    v145 = 0;
    v11 = (*(*v8 + 272))(v8);
    FrameDuration = OZSceneSettings::getFrameDuration((v11 + 336), &v144);
    if (CurrentConversion)
    {
      *&time1.var0.var0 = *(CurrentConversion + 76);
      time1.var0.var3 = *(CurrentConversion + 92);
      time2 = **&MEMORY[0x277CC08F0];
      if (CMTimeCompare(&time1, &time2))
      {
        FrameDuration = *(CurrentConversion + 76);
        v144 = FrameDuration;
        v145 = *(CurrentConversion + 92);
      }
    }

    v13 = *((*(*v8 + 272))(v8, FrameDuration) + 368);
    memset(&v143, 0, sizeof(v143));
    if (CurrentConversion)
    {
      v143 = *(CurrentConversion + 52);
    }

    else
    {
      CMTimeMake(&v143, 1, 1);
    }

    operator*(&v146.value, &v143, &time1);
    Seconds = CMTimeGetSeconds(&time1);
    operator*(&v146.value, &v143, &time1);
    v15 = CMTimeGetSeconds(&time1);
    v16 = *(v8 + 960);
    {
      v18 = (*v17 + 1328);
    }

    else
    {
      v18 = (*(*(*v8 + 272))(v8) + 96);
    }

    v19 = (*v18)();
    (*(*this[4] + 608))(&v139);
    memset(&v138, 0, sizeof(v138));
    *&time1.var0.var0 = v139;
    time1.var0.var3 = v140;
    v20 = operator*(&time1.var0.var0, &v143, &v138);
    if (!(*(*(this[4] + 2) + 24))(v20))
    {
      goto LABEL_77;
    }

    time1.var0 = v138;
    v21 = floor(v13 * Seconds + 0.0000001);
    if (v21 < v13 * CMTimeGetSeconds(&time1))
    {
      goto LABEL_77;
    }

    v22 = *(this + 10);
    if (v22 != (*(*this[4] + 680))(this[4]))
    {
      goto LABEL_77;
    }

    if (v7)
    {
      if (TXTextLayout::getEnableScroll(v7))
      {
LABEL_77:
        *(this + 120) ^= 1u;
        goto LABEL_78;
      }

      v23 = *(TXTextLayout::getParagraphStyleAtIndex(v7, 0) + 960) == 1 || TXTextLayout::isVerticalLayout(v7);
    }

    else
    {
      v23 = 0;
    }

    memset(&v137, 0, sizeof(v137));
    *&time1.var0.var0 = v141;
    time1.var0.var3 = v142;
    operator*(&time1.var0.var0, &v143, &v137);
    memset(&v136, 0, sizeof(v136));
    OZChannel::getValueAsDouble((this[4] + 3088), MEMORY[0x277CC08F0], 0.0);
    operator*(&v143, &v136, v24);
    operator*(&v144, &v136, &v133);
    time1.var0 = v137;
    time2 = v133;
    PC_CMTimeSaferSubtract(&time1, &time2, &v134);
    operator/(&v134, &v144, &time1);
    v25 = CMTimeGetSeconds(&time1) + -1.0;
    if (v25 > 0.0)
    {
      v111 = 1.0;
      if (*(theApp + 81) == 1)
      {
        v26 = (*(*v8 + 272))(v8);
        if (v26)
        {
          v111 = OZSceneSettings::getHostAppProjectHeight((v26 + 336)) / *(v26 + 348);
        }
      }

      OZRenderState::OZRenderState(&time1);
      time1.var0 = v146;
      TXTextScrollBehavior::getContentBounds(this[4], &time1, &time2);
      v107 = *&time2.timescale;
      v108 = *&time2.value;
      v27 = *&time2.epoch;
      v28 = *&v124;
      v29 = *(*v8 + 272);
      if (*(this + 10) == 1)
      {
        v30 = *(v29(v8) + 348);
      }

      else
      {
        v31 = *(v29(v8) + 344);
        v32 = 1.0;
        if (v7)
        {
          v32 = v19;
        }

        v30 = v32 * v31;
      }

      v109 = v25;
      v33 = (*(*this[4] + 704))(this[4]);
      time2 = v138;
      v34 = CMTimeGetSeconds(&time2);
      time2 = v137;
      v35 = CMTimeGetSeconds(&time2);
      v36 = v13 * v15;
      v37 = vabdd_f64(v21, v13 * v15 + -0.5);
      if (v33)
      {
        v38 = v37 < 0.1;
      }

      else
      {
        v38 = 0;
      }

      if (v38)
      {
        v36 = v21;
      }

      v39 = v36 - v13 * v34;
      v40 = v13 * v35;
      if (v39 <= v40)
      {
        v40 = v39;
      }

      v110 = v40;
      v41 = 0.0;
      if ((*(*this[4] + 688))(this[4]) == 2)
      {
        v42 = (*(*this[4] + 680))(this[4]);
        v43 = *(*this[4] + 728);
        if (v42 == 1)
        {
          v43();
        }

        else
        {
          v44 = -(v43)();
        }

        v41 = v44 + 0.0;
      }

      v45 = v111 * v27;
      v46 = v111 * v28;
      v47 = v111 * v30;
      if ((*(*this[4] + 688))(this[4]) == 2 || !(*(*this[4] + 776))(this[4]))
      {
        if (*(this + 10))
        {
          v50 = v111 * v28;
        }

        else
        {
          v50 = v111 * v27;
        }
      }

      else
      {
        time1.var4 = 0;
        v131 = 1.0;
        v128 = 0x3FF0000000000000;
        v125 = 1.0;
        time2.value = 0x3FF0000000000000;
        *&time2.timescale = 0u;
        v124 = 0u;
        v126 = 0u;
        v127 = 0u;
        v129 = 0u;
        v130 = 0u;
        if (*(this + 10))
        {
          OZChannel::getValueAsDouble((v8 + 1352), &v146, 0.0);
          v49 = v48;
          InitialValue = OZChannel::getInitialValue((v8 + 1504));
        }

        else
        {
          v49 = OZChannel::getInitialValue((v8 + 1352));
          OZChannel::getValueAsDouble((v8 + 1504), &v146, 0.0);
          InitialValue = v72;
        }

        OZChannel::getValueAsDouble((v8 + 1952), &v146, 0.0);
        v74 = v73;
        v134 = 0uLL;
        v135 = 0;
        memset(&v133, 0, sizeof(v133));
        v121 = 0uLL;
        v122 = 0.0;
        v120 = 0uLL;
        (*(*v8 + 1320))(v8, &v134, &time1, 0);
        if (!v7)
        {
          *&v134 = *&v134 / v19;
        }

        OZTransformNode::getRotation(v8, &v133, &time1);
        OZTransformNode::getPivot(v8, &v121, &time1);
        OZTransformNode::getShear(v8, &v120, &v120 + 1, &time1);
        v121 = vmulq_n_f64(v121, v111);
        v122 = v111 * v122;
        v75 = OZRenderState::OZRenderState(&v119, &time1);
        v118[0] = v111 * v49;
        v118[1] = v111 * InitialValue;
        v118[2] = v111 * v74;
        v116 = v134;
        v117 = v135;
        v115 = v133;
        v114 = v120;
        v112 = v121;
        v113 = v122;
        TXTextScrollCurveNode::getTransformMatrixForElement(v75, &time2.value, v8, &v119, v118, &v116, &v115.value, &v114, v112.f64, 0);
        v76 = v111 * v107 + v46;
        v77 = v111 * v108 + v45;
        v78 = v111 * v108 * *(&v129 + 1);
        v79 = v131 + v78 + v76 * *&v130;
        v80 = v111 * v108 * *&time2.value;
        v81 = (*&v124 + v80 + v76 * *&time2.timescale) / v79;
        v82 = v131 + v77 * *(&v129 + 1) + v76 * *&v130;
        v83 = (*&v124 + v77 * *&time2.value + v76 * *&time2.timescale) / v82;
        v84 = v111 * v107 * *&v130;
        v85 = v131 + v78 + v84;
        v86 = v111 * v107 * *&time2.timescale;
        v87 = (*&v124 + v80 + v86) / v85;
        v88 = v131 + v77 * *(&v129 + 1) + v84;
        v89 = v77 * *&time2.value + v86;
        v90 = (*&v124 + v89) / v88;
        if (v90 <= v83)
        {
          v91 = (*&v124 + v89) / v88;
        }

        else
        {
          v91 = (*&v124 + v77 * *&time2.value + v76 * *&time2.timescale) / v82;
        }

        if (v90 >= v83)
        {
          v92 = v90;
        }

        else
        {
          v92 = (*&v124 + v77 * *&time2.value + v76 * *&time2.timescale) / v82;
        }

        if (v87 <= v91)
        {
          v93 = v87;
        }

        else
        {
          v93 = v91;
        }

        if (v81 <= v93)
        {
          v93 = v81;
        }

        if (v87 >= v92)
        {
          v94 = v87;
        }

        else
        {
          v94 = v92;
        }

        if (v81 >= v94)
        {
          v94 = v81;
        }

        if (*(this + 10) == 1)
        {
          v95 = v111 * v108 * *(&v124 + 1);
          v96 = v76 * v125;
          v97 = (*(&v126 + 1) + v95 + v96) / v79;
          v98 = v111 * v107 * v125;
          v99 = (*(&v126 + 1) + v95 + v98) / v85;
          v100 = v77 * *(&v124 + 1);
          v101 = (*(&v126 + 1) + v100 + v98) / v88;
          v102 = (*(&v126 + 1) + v100 + v96) / v82;
          if (v101 >= v102)
          {
            v103 = v101;
          }

          else
          {
            v103 = v102;
          }

          if (v101 <= v102)
          {
            v102 = v101;
          }

          if (v99 >= v103)
          {
            v104 = v99;
          }

          else
          {
            v104 = v103;
          }

          if (v97 >= v104)
          {
            v104 = v97;
          }

          if (v99 <= v102)
          {
            v102 = v99;
          }

          if (v97 <= v102)
          {
            v102 = v97;
          }

          v41 = v41 - (v47 * 0.5 + v104);
          v50 = vabdd_f64(v104, v102);
        }

        else
        {
          if (v23)
          {
            v50 = vabdd_f64(v94, v93);
            v105 = v47 * -0.5 - v93 - v50;
          }

          else
          {
            v105 = v47 * 0.5 - v93;
            v50 = vabdd_f64(v94, v93);
          }

          v41 = v41 + v105;
        }
      }

      v51 = (*(*this[4] + 688))(this[4]);
      v52 = this[4];
      if (v51 == 1)
      {
        time2 = *a2;
        v53 = (*(*v52 + 696))(v52, &time2);
        v54 = (*(*this[4] + 848))(this[4]);
        v55 = v111 * v53 / v13;
        (*(*v54 + 712))(v54, MEMORY[0x277CC08F0], 1, v55);
        v56 = -(v110 * v55);
        if (v23)
        {
          v56 = v110 * v55;
        }

        if (*(this + 10))
        {
          v57 = v110 * v55;
        }

        else
        {
          v57 = v56;
        }
      }

      else
      {
        if ((*(*v52 + 688))(v52) == 2)
        {
          v58 = (*(*this[4] + 680))(this[4]);
          v59 = *(*this[4] + 736);
          if (v58 == 1)
          {
            v60 = v59();
            (*(*this[4] + 728))(this[4]);
          }

          else
          {
            v60 = v59();
            v61 = (*(*this[4] + 728))(this[4]);
          }

          v62 = v60 - v61;
        }

        else
        {
          v62 = v47 + v50;
        }

        v63 = v62 / v109;
        if (v33)
        {
          v64 = vcvtpd_s64_f64(v63);
          v63 = (((v33 == 2) & v64) + v64);
        }

        v65 = this[4];
        v65[483] = v63;
        v57 = v110 * v63;
        if (!(*(*v65 + 688))(v65))
        {
          v66 = this[4];
          time2 = *a2;
          v57 = v57 * (*(*v66 + 744))(v66, &time2);
        }

        v67 = -v57;
        if (v23)
        {
          v67 = v57;
        }

        if (!*(this + 10))
        {
          v57 = v67;
        }

        v68 = (*(*this[4] + 848))(this[4]);
        v69 = this[4];
        time2 = *a2;
        v70 = (*(*v69 + 744))(v69, &time2);
        (*(*v68 + 712))(v68, MEMORY[0x277CC08F0], 1, v63 * v70);
      }

      OffsetPreInception = 1.0 / v111 * (v41 + v57);
    }

    goto LABEL_77;
  }

LABEL_78:
  PCMutex::unlock(v4);
  return OffsetPreInception;
}

void sub_25FB65628(_Unwind_Exception *a1)
{
  *(v1 + 120) ^= 1u;
  PCLockSentry<PCMutex>::~PCLockSentry(v2 - 160);
  _Unwind_Resume(a1);
}

void TXTextScrollCurveNode::solveNode(TXTextScrollBehavior **this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v3 = *(a2 + 10);
  v9 = *(a2 + 5);
  v8 = *(a2 + 4);
  if (*(a2 + 36))
  {
    v6 = 0;
    do
    {
      v7 = *(v3 + 8 * v6);
      v11 = v8;
      *(v2 + 8 * v6) = v7 + TXTextScrollCurveNode::getOffset(this, &v11);
      v11 = v8;
      v10 = v9;
      PC_CMTimeSaferAdd(&v11, &v10, &v8);
      ++v6;
    }

    while (v6 < *(a2 + 36));
  }
}

void TXTextScrollCurveNode::getTransformMatrixForElement(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, double *a5, double *a6, double *a7, uint64_t a8, double *a9, char a10)
{
  v17 = a3[120];
  {
    v19 = v18;
    (*(*v18 + 1328))(v18);
    v21 = 0;
  }

  else
  {
    v19 = 0;
    v20 = *(a4 + 40);
    v21 = 1;
  }

  if (v20 == 0.0)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = v20;
  }

  v23 = *a6;
  v24 = (*(*a3 + 1328))(a3);
  PCMatrix44Tmpl<double>::setTransformation(a2, 0, 4, *a5, a5[1], a5[2], *a7, a7[1], a7[2], v23 * v24 / v22, a6[1], v25, v26, v27, v28, v29, a6[2], *a8, *(a8 + 8), *a9, a9[1], a9[2], *&v22);
  if (v21)
  {
    if (a10 && *(a4 + 64) == 1)
    {

      PCMatrix44Tmpl<double>::leftMult(a2, (a4 + 72));
    }
  }

  else if (!*(a4 + 48) && (a10 & 1) == 0)
  {
    v43 = 0x3FF0000000000000;
    v40 = 0x3FF0000000000000;
    v37 = 0x3FF0000000000000;
    v34 = 0x3FF0000000000000;
    v35 = 0u;
    v36 = 0u;
    v38 = 0u;
    v39 = 0u;
    v41 = 0u;
    v42 = 0u;
    (*(*v19 + 1256))(v19, &v34, a4);
    PCMatrix44Tmpl<double>::operator*(&v34, a2, v33);
    if (v33 != a2)
    {
      for (i = 0; i != 8; i += 2)
      {
        v31 = &a2[i];
        v32 = *&v33[i * 16 + 16];
        *v31 = *&v33[i * 16];
        v31[1] = v32;
      }
    }
  }
}

double PCMatrix44Tmpl<double>::setTransformation(uint64_t a1, int a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, long double a19, double a20, double a21, double a22, uint64_t a23)
{
  *(a1 + 120) = 0x3FF0000000000000;
  if (a19 == 0.0 && a18 == 0.0 && a9 == 0.0 && a8 == 0.0 && a7 == 0.0 && !a2)
  {
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0;
    *a1 = a10;
    *(a1 + 40) = a11;
    *(a1 + 24) = a4 - a10 * a20;
    *(a1 + 56) = a5 - a11 * a21;
    *(a1 + 80) = a17;
    *(a1 + 88) = a6 - a17 * a22;
    result = 1.0;
    if (*&a23 != 1.0)
    {
      *(a1 + 32) = *&a23 * 0.0;
      *(a1 + 64) = *&a23 * 0.0;
      result = 0.0 / *&a23;
      *(a1 + 8) = 0.0 / *&a23;
      *(a1 + 16) = 0.0 / *&a23;
    }

    return result;
  }

  *(a1 + 80) = 0x3FF0000000000000;
  *(a1 + 40) = 0x3FF0000000000000;
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v42 = a9;
        v43 = a6;
        PCMatrix44Tmpl<double>::rightRotate(a1, a3, a7, a8, v42);
        PCMatrix44Tmpl<double>::rightShear(a1, a18, a19);
        PCMatrix44Tmpl<double>::rightScale(a1, a10, a11, a17);
        v38 = a1;
        v39 = a4;
        v40 = a5;
        v41 = v43;
        break;
      case 4:
        PCMatrix44Tmpl<double>::rightShear(a1, a18, a19);
        PCMatrix44Tmpl<double>::rightScale(a1, a10, a11, a17);
        PCMatrix44Tmpl<double>::rightTranslate(a1, a4, a5, a6);
        goto LABEL_25;
      case 5:
        PCMatrix44Tmpl<double>::rightShear(a1, a18, a19);
        PCMatrix44Tmpl<double>::rightScale(a1, a10, a11, a17);
        PCMatrix44Tmpl<double>::rightRotate(a1, a3, a7, a8, a9);
        v38 = a1;
        v39 = a4;
        v40 = a5;
        v41 = a6;
        break;
      default:
        goto LABEL_26;
    }

    PCMatrix44Tmpl<double>::rightTranslate(v38, v39, v40, v41);
    goto LABEL_26;
  }

  switch(a2)
  {
    case 0:
      PCMatrix44Tmpl<double>::rightTranslate(a1, a4, a5, a6);
      PCMatrix44Tmpl<double>::rightRotate(a1, a3, a7, a8, a9);
      goto LABEL_20;
    case 1:
      PCMatrix44Tmpl<double>::rightTranslate(a1, a4, a5, a6);
      PCMatrix44Tmpl<double>::rightShear(a1, a18, a19);
      PCMatrix44Tmpl<double>::rightScale(a1, a10, a11, a17);
LABEL_25:
      PCMatrix44Tmpl<double>::rightRotate(a1, a3, a7, a8, a9);
      break;
    case 2:
      v32 = a9;
      v33 = a6;
      PCMatrix44Tmpl<double>::rightRotate(a1, a3, a7, a8, v32);
      PCMatrix44Tmpl<double>::rightTranslate(a1, a4, a5, v33);
LABEL_20:
      PCMatrix44Tmpl<double>::rightShear(a1, a18, a19);
      PCMatrix44Tmpl<double>::rightScale(a1, a10, a11, a17);
      break;
  }

LABEL_26:
  *(a1 + 32) = *(a1 + 32) * *&a23;
  *(a1 + 64) = *(a1 + 64) * *&a23;
  *(a1 + 8) = vdivq_f64(*(a1 + 8), vdupq_lane_s64(a23, 0));

  return PCMatrix44Tmpl<double>::rightTranslate(a1, -a20, -a21, -a22);
}

double TXTextScrollCurveNode::getOffsetPreInception(TXTextScrollCurveNode *this, CMTime *a2)
{
  v4 = *(this + 4);
  if (v4[320] == 1)
  {
    v5 = 0.0;
    if (!(*(*v4 + 272))(v4))
    {
      return v5;
    }

    v4 = *(this + 4);
  }

  v6 = (*(*v4 + 712))(v4);
  v7 = (*(**(this + 4) + 720))();
  v5 = 0.0;
  if (v6 | v7 && (*(this + 120) & 1) == 0)
  {
    v8 = v7;
    *(this + 120) = 1;
    v119 = this + 48;
    PCMutex::lock((this + 48));
    v120 = 1;
    memset(&v118, 0, sizeof(v118));
    v9 = (*(**(*(*(this + 4) + 376) + 32) + 336))(&v118);
    CurrentConversion = OZMEChannelTimeConverter::GetCurrentConversion(v9);
    memset(&v117, 0, sizeof(v117));
    v11 = (*(*v8 + 272))(v8);
    FrameDuration = OZSceneSettings::getFrameDuration((v11 + 336), &v117);
    if (CurrentConversion)
    {
      *&time1.var0.var0 = *(CurrentConversion + 76);
      time1.var0.var3 = *(CurrentConversion + 92);
      time2 = **&MEMORY[0x277CC08F0];
      if (CMTimeCompare(&time1, &time2))
      {
        FrameDuration = *(CurrentConversion + 76);
        *&v117.var0 = FrameDuration;
        v117.var3 = *(CurrentConversion + 92);
      }
    }

    v13 = *((*(*v8 + 272))(v8, FrameDuration) + 368);
    time1.var0 = v118;
    Seconds = CMTimeGetSeconds(&time1);
    time1.var0 = v118;
    v15 = CMTimeGetSeconds(&time1);
    if (CurrentConversion)
    {
      operator*(&v118.value, CurrentConversion + 52, &time1);
      v16 = CMTimeGetSeconds(&time1);
      operator*(&v118.value, CurrentConversion + 52, &time1);
      if (vabdd_f64(floor(v13 * v16 + 0.0000001), v13 * CMTimeGetSeconds(&time1) + -0.5) >= 0.1)
      {
        time1.var0 = v118;
        v20 = CMTimeGetSeconds(&time1);
        time1.var0 = v118;
        v18 = 0;
        v17 = v13 * v20;
        v19 = floor(v13 * CMTimeGetSeconds(&time1) + 0.0000001);
      }

      else
      {
        memset(&v114, 0, sizeof(v114));
        time1.var0 = v117;
        PC_CMTimeHalve(&time1, &v114);
        operator*(&v118.value, CurrentConversion + 52, &v116);
        time1.var0 = v116;
        time2 = v114;
        PC_CMTimeSaferSubtract(&time1, &time2, &v110);
        operator/(&v110, CurrentConversion + 52, &time1);
        v17 = v13 * CMTimeGetSeconds(&time1);
        v18 = 1;
        v19 = v17;
      }
    }

    else
    {
      v19 = floor(v13 * Seconds + 0.0000001);
      v17 = v13 * v15;
      v18 = vabdd_f64(v19, v13 * v15 + -0.5) < 0.1;
    }

    v21 = *(v8 + 120);
    {
      v23 = (*v22 + 1328);
    }

    else
    {
      v23 = (*(*(*v8 + 272))(v8) + 96);
    }

    v24 = (*v23)();
    if ((*(*(*(this + 4) + 16) + 24))() && ((*(**(this + 4) + 608))(&time1), time2 = time1.var0, v19 >= v13 * CMTimeGetSeconds(&time2)))
    {
      v26 = *(this + 10);
      v5 = 0.0;
      if (v26 == (*(**(this + 4) + 680))(*(this + 4)))
      {
        if (v6)
        {
          if (TXTextLayout::getEnableScroll(v6))
          {
            goto LABEL_21;
          }

          v27 = *(TXTextLayout::getParagraphStyleAtIndex(v6, 0) + 960) == 1 || TXTextLayout::isVerticalLayout(v6);
        }

        else
        {
          v27 = 0;
        }

        (*(**(this + 4) + 608))(&v114);
        v116 = v115;
        OZChannel::getValueAsDouble((*(this + 4) + 3088), MEMORY[0x277CC08F0], 0.0);
        operator*(&v117, &v113, v28);
        time1.var0 = v116;
        time2 = v113;
        PC_CMTimeSaferSubtract(&time1, &time2, &v110);
        operator/(&v110, &v117, &time1);
        v29 = CMTimeGetSeconds(&time1) + -1.0;
        if (v29 > 0.0)
        {
          v90 = 1.0;
          if (*(theApp + 81) == 1)
          {
            v30 = (*(*v8 + 272))(v8);
            if (v30)
            {
              v90 = OZSceneSettings::getHostAppProjectHeight((v30 + 336)) / *(v30 + 348);
            }
          }

          OZRenderState::OZRenderState(&time1);
          TXTextScrollBehavior::getContentBounds(*(this + 4), &time1, &v110);
          v88 = vmulq_n_f64(v110, v90);
          v89 = vmulq_n_f64(v111, v90);
          v110 = v88;
          v111 = v89;
          time1.var0 = v118;
          v31 = *(*v8 + 272);
          if (*(this + 10) == 1)
          {
            v32 = *(v31(v8) + 348);
          }

          else
          {
            v33 = *(v31(v8) + 344);
            v34 = 1.0;
            if (v6)
            {
              v34 = v24;
            }

            v32 = v34 * v33;
          }

          v35 = (*(**(this + 4) + 704))(*(this + 4));
          if (v35)
          {
            v36 = v18;
          }

          else
          {
            v36 = 0;
          }

          time2 = v114;
          if (v36)
          {
            v37 = CMTimeGetSeconds(&time2);
          }

          else
          {
            v37 = CMTimeGetSeconds(&time2);
            v19 = v17;
          }

          time2 = v115;
          v38 = v19 - v13 * v37;
          if (v38 > v13 * CMTimeGetSeconds(&time2))
          {
            time2 = v115;
            v38 = v13 * CMTimeGetSeconds(&time2);
          }

          v39 = 0.0;
          if ((*(**(this + 4) + 688))(*(this + 4)) == 2)
          {
            v40 = (*(**(this + 4) + 680))(*(this + 4));
            v41 = *(**(this + 4) + 728);
            if (v40 == 1)
            {
              v41();
            }

            else
            {
              v42 = -(v41)();
            }

            v39 = v42 + 0.0;
          }

          v43 = v90 * v32;
          if ((*(**(this + 4) + 688))(*(this + 4)) == 2 || !(*(**(this + 4) + 776))(*(this + 4)))
          {
            if (*(this + 10))
            {
              v46 = v89.f64[1];
            }

            else
            {
              v46 = v89.f64[0];
            }
          }

          else
          {
            time1.var4 = 0;
            v109 = 1.0;
            v106 = 0x3FF0000000000000;
            v103 = 1.0;
            time2.value = 0x3FF0000000000000;
            *&time2.timescale = 0u;
            v102 = 0u;
            v104 = 0u;
            v105 = 0u;
            v107 = 0u;
            v108 = 0u;
            if (*(this + 10))
            {
              OZChannel::getValueAsDouble((v8 + 1352), &v118, 0.0);
              v87 = v44;
              InitialValue = OZChannel::getInitialValue((v8 + 1504));
            }

            else
            {
              v87 = OZChannel::getInitialValue((v8 + 1352));
              OZChannel::getValueAsDouble((v8 + 1504), &v118, 0.0);
            }

            v63 = InitialValue;
            OZChannel::getValueAsDouble((v8 + 1952), &v118, 0.0);
            v65 = v64;
            memset(&v116, 0, sizeof(v116));
            memset(&v113, 0, sizeof(v113));
            v99 = 0uLL;
            v100 = 0.0;
            v98 = 0uLL;
            (*(*v8 + 1320))(v8, &v116, &time1, 0);
            if (!v6)
            {
              *&v116.var0 = *&v116.var0 / v24;
            }

            OZTransformNode::getRotation(v8, &v113, &time1);
            OZTransformNode::getPivot(v8, &v99, &time1);
            OZTransformNode::getShear(v8, &v98, &v98 + 1, &time1);
            v99 = vmulq_n_f64(v99, v90);
            v100 = v90 * v100;
            v66 = OZRenderState::OZRenderState(&v97, &time1);
            v96[0] = v90 * v87;
            v96[1] = v90 * v63;
            v96[2] = v90 * v65;
            v95 = v116;
            v94 = v113;
            v93 = v98;
            v91 = v99;
            v92 = v100;
            TXTextScrollCurveNode::getTransformMatrixForElement(v66, &time2.value, v8, &v97, v96, &v95.var0, &v94.value, &v93, v91.f64, 0);
            v67 = vaddq_f64(v88, v89);
            v68 = v109 + v88.f64[0] * *(&v107 + 1) + v67.f64[1] * *&v108;
            v69 = (*&v102 + v88.f64[0] * *&time2.value + v67.f64[1] * *&time2.timescale) / v68;
            v70 = v109 + v67.f64[0] * *(&v107 + 1) + v67.f64[1] * *&v108;
            v71 = (*&v102 + v67.f64[0] * *&time2.value + v67.f64[1] * *&time2.timescale) / v70;
            v72 = v109 + v88.f64[0] * *(&v107 + 1) + v88.f64[1] * *&v108;
            v73 = (*&v102 + v88.f64[0] * *&time2.value + v88.f64[1] * *&time2.timescale) / v72;
            v74 = v109 + v67.f64[0] * *(&v107 + 1) + v88.f64[1] * *&v108;
            v75 = v67.f64[0] * *&time2.value + v88.f64[1] * *&time2.timescale;
            v76 = (*&v102 + v75) / v74;
            if (v76 <= v71)
            {
              v77 = (*&v102 + v75) / v74;
            }

            else
            {
              v77 = (*&v102 + v67.f64[0] * *&time2.value + v67.f64[1] * *&time2.timescale) / v70;
            }

            if (v76 >= v71)
            {
              v78 = v76;
            }

            else
            {
              v78 = (*&v102 + v67.f64[0] * *&time2.value + v67.f64[1] * *&time2.timescale) / v70;
            }

            if (v73 <= v77)
            {
              v79 = (*&v102 + v88.f64[0] * *&time2.value + v88.f64[1] * *&time2.timescale) / v72;
            }

            else
            {
              v79 = v77;
            }

            if (v69 <= v79)
            {
              v79 = (*&v102 + v88.f64[0] * *&time2.value + v67.f64[1] * *&time2.timescale) / v68;
            }

            if (v73 >= v78)
            {
              v80 = (*&v102 + v88.f64[0] * *&time2.value + v88.f64[1] * *&time2.timescale) / v72;
            }

            else
            {
              v80 = v78;
            }

            if (v69 >= v80)
            {
              v80 = (*&v102 + v88.f64[0] * *&time2.value + v67.f64[1] * *&time2.timescale) / v68;
            }

            if (*(this + 10) == 1)
            {
              v81 = (*(&v104 + 1) + v88.f64[0] * *(&v102 + 1) + v67.f64[1] * v103) / v68;
              v82 = (*(&v104 + 1) + v88.f64[0] * *(&v102 + 1) + v88.f64[1] * v103) / v72;
              v67.f64[0] = v67.f64[0] * *(&v102 + 1);
              v83 = (*(&v104 + 1) + v67.f64[0] + v88.f64[1] * v103) / v74;
              v67.f64[0] = (*(&v104 + 1) + v67.f64[0] + v67.f64[1] * v103) / v70;
              if (v83 >= v67.f64[0])
              {
                v84 = v83;
              }

              else
              {
                v84 = v67.f64[0];
              }

              if (v83 <= v67.f64[0])
              {
                v67.f64[0] = v83;
              }

              if (v82 >= v84)
              {
                v85 = v82;
              }

              else
              {
                v85 = v84;
              }

              if (v81 >= v85)
              {
                v85 = v81;
              }

              if (v82 <= v67.f64[0])
              {
                v67.f64[0] = v82;
              }

              if (v81 <= v67.f64[0])
              {
                v67.f64[0] = v81;
              }

              v39 = v39 - (v43 * 0.5 + v85);
              v46 = vabdd_f64(v85, v67.f64[0]);
            }

            else
            {
              if (v27)
              {
                v46 = vabdd_f64(v80, v79);
                v86 = v43 * -0.5 - v79 - v46;
              }

              else
              {
                v86 = v43 * 0.5 - v79;
                v46 = vabdd_f64(v80, v79);
              }

              v39 = v39 + v86;
            }
          }

          v47 = (*(**(this + 4) + 688))(*(this + 4));
          v48 = *(this + 4);
          if (v47 == 1)
          {
            time2 = *a2;
            v49 = (*(*v48 + 696))(v48, &time2);
            v50 = (*(**(this + 4) + 848))(*(this + 4));
            v51 = v90 * v49 / v13;
            (*(*v50 + 712))(v50, MEMORY[0x277CC08F0], 1, v51);
            v52 = v38 * v51;
          }

          else
          {
            if ((*(*v48 + 688))(v48) == 2)
            {
              v53 = (*(**(this + 4) + 680))(*(this + 4));
              v54 = *(**(this + 4) + 736);
              if (v53 == 1)
              {
                v55 = v54();
                (*(**(this + 4) + 728))(*(this + 4));
              }

              else
              {
                v55 = v54();
                v56 = (*(**(this + 4) + 728))(*(this + 4));
              }

              v57 = v55 - v56;
            }

            else
            {
              v57 = v43 + v46;
            }

            v58 = v57 / v29;
            if (v35)
            {
              v59 = vcvtpd_s64_f64(v58);
              v58 = (((v35 == 2) & v59) + v59);
            }

            v60 = *(this + 4);
            v60[483] = v58;
            v52 = v38 * v58;
            if (!(*(*v60 + 688))(v60))
            {
              v61 = *(this + 4);
              time2 = *a2;
              v52 = v52 * (*(*v61 + 744))(v61, &time2);
            }
          }

          v62 = -v52;
          if (v27)
          {
            v62 = v52;
          }

          if (*(this + 10))
          {
            v62 = v52;
          }

          v5 = 1.0 / v90 * (v39 + v62);
        }
      }
    }

    else
    {
      v5 = 0.0;
    }

LABEL_21:
    PCMutex::unlock((this + 48));
    *(this + 120) ^= 1u;
  }

  return v5;
}

void sub_25FB66ED8(_Unwind_Exception *a1)
{
  PCLockSentry<PCMutex>::~PCLockSentry(v2 - 176);
  *(v1 + 120) ^= 1u;
  _Unwind_Resume(a1);
}

__n128 TXTextScrollBehavior::getContentBounds@<Q0>(TXTextScrollBehavior *this@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 584) == 1)
  {
    v6 = (*(*this + 712))(this);
    v7 = (*(*this + 720))(this);
    if (v6)
    {
      TXTextLayout::getTypographicBounds(v6, this + 552, a2, 1, 0);
    }

    else
    {
      (*(*v7 + 1520))(v7, this + 552, a2);
    }

    *(this + 584) = 0;
  }

  result = *(this + 552);
  v9 = *(this + 568);
  *a3 = result;
  *(a3 + 16) = v9;
  return result;
}

__n128 TXTextScrollCurveNode::getNeededRange(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a2 + 96);
  *(a2 + 40) = *(a2 + 112);
  result = *(a2 + 120);
  *(a2 + 48) = result;
  *(a2 + 64) = *(a2 + 136);
  *(a2 + 72) = *(a2 + 144);
  *(a2 + 88) = 0;
  *(a2 + 80) = *(a2 + 152);
  return result;
}

void TXTextScrollBehavior::TXTextScrollBehavior(TXTextScrollBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_287201AD0;
  *(v5 + 16) = &unk_287201E40;
  *(v5 + 48) = &unk_287202098;
  *(v5 + 336) = &unk_2872020F0;
  *(v5 + 536) = 0;
  *(v5 + 552) = 0u;
  *(v5 + 568) = 0xBFF0000000000000;
  *(v5 + 576) = 0xBFF0000000000000;
  PCURL::PCURL(&v7, @"Text Scroll Text Behavior Scroll Direction Enum");
  PCURL::PCURL(&v6, @"Text Scroll Text Scroll Direction");
  OZChannelEnum::OZChannelEnum((this + 592), 1u, &v7, &v6, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Speed Control Enum");
  PCURL::PCURL(&v6, @"Text Scroll Speed Control");
  OZChannelEnum::OZChannelEnum((this + 848), 0, &v7, &v6, (this + 56), 0xCEu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Fixed Scroll Rate");
  OZChannelDouble::OZChannelDouble((this + 1104), 1, &v7, (this + 56), 0xCCu, 0x400000, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Auto Scroll Rate");
  OZChannelDouble::OZChannelDouble((this + 1256), 1, &v7, (this + 56), 0xCDu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Text Start Position");
  OZChannelDouble::OZChannelDouble((this + 1408), 0.0, &v7, (this + 56), 0xD0u, 138412032, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Text End Position");
  OZChannelDouble::OZChannelDouble((this + 1560), 0.0, &v7, (this + 56), 0xD1u, 138412032, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Vertical Flicker Adjustment Enum");
  PCURL::PCURL(&v6, @"Text Scroll Vertical Flicker Adjustment");
  OZChannelEnum::OZChannelEnum((this + 1712), 0, &v7, &v6, (this + 56), 0xCFu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Horizontal Flicker Adjustment Enum");
  PCURL::PCURL(&v6, @"Text Scroll Horizontal Flicker Adjustment");
  OZChannelEnum::OZChannelEnum((this + 1968), 0, &v7, &v6, (this + 56), 0xD2u, 0x400000, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Line Spacing Enum");
  PCURL::PCURL(&v6, @"Text Scroll Line Spacing");
  OZChannelEnum::OZChannelEnum((this + 2224), 0, &v7, &v6, (this + 56), 0xD4u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Scroll Rate Label");
  OZChannelDouble::OZChannelDouble((this + 2480), 0.0, &v7, (this + 56), 0xD3u, 32778, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Allow Glyph Animation");
  OZChannelBool::OZChannelBool((this + 2632), 0, &v7, (this + 56), 0xD5u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Start Off Screen");
  OZChannelBool::OZChannelBool((this + 2784), 1, &v7, (this + 56), 0xD6u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Reverse Direction");
  OZChannelBool::OZChannelBool((this + 2936), &v7, (this + 56), 0xD7u, 0xAu, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll End Offset");
  OZChannelDouble::OZChannelDouble((this + 3088), 0.0, &v7, (this + 56), 0xD8u, 10, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Scroll Initialized");
  OZChannelBool::OZChannelBool((this + 3240), &v7, (this + 56), 0xD9u, 2u, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Hidden Channel");
  OZChannelDouble::OZChannelDouble((this + 3392), 5, &v7, (this + 56), 0xDAu, 2, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Hidden Channel");
  OZChannelDouble::OZChannelDouble((this + 3544), 13, &v7, (this + 56), 0xDBu, 2, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Hidden Channel");
  OZChannelBool::OZChannelBool((this + 3696), 0, &v7, (this + 56), 0xDCu, 2u, 0, 0);
  PCString::~PCString(&v7);
  OZChannelBase::setFlag(this + 33, 0x100000000, 0);
  OZChannelBase::setFlag((this + 3392), 0x100000000, 0);
  OZChannelBase::setFlag((this + 3544), 0x100000000, 0);
  OZChannel::setKeyframable((this + 1408), 0);
  OZChannel::setKeyframable((this + 1560), 0);
  *(this + 482) = 0;
  *(this + 3848) = 0;
  TXTextScrollBehavior::setResetChannelFlags(this);
  OZChannel::setValue((this + 3240), MEMORY[0x277CC08F0], 0.0, 0);
  OZChannel::setValue((this + 2936), MEMORY[0x277CC08F0], 0.0, 0);
  *(this + 584) = 1;
}

void sub_25FB67860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 3544));
  OZChannel::~OZChannel((v12 + 3392));
  OZChannelBool::~OZChannelBool((v12 + 3240));
  OZChannel::~OZChannel((v12 + 3088));
  OZChannelBool::~OZChannelBool((v12 + 2936));
  OZChannelBool::~OZChannelBool((v12 + 2784));
  OZChannelBool::~OZChannelBool((v12 + 2632));
  OZChannel::~OZChannel((v12 + 2480));
  OZChannelEnum::~OZChannelEnum((v12 + 2224));
  OZChannelEnum::~OZChannelEnum((v12 + 1968));
  OZChannelEnum::~OZChannelEnum((v12 + 1712));
  OZChannel::~OZChannel((v12 + 1560));
  OZChannel::~OZChannel((v12 + 1408));
  OZChannel::~OZChannel((v12 + 1256));
  OZChannel::~OZChannel((v12 + 1104));
  OZChannelEnum::~OZChannelEnum((v12 + 848));
  OZChannelEnum::~OZChannelEnum((v12 + 592));
  OZChannelBehavior::~OZChannelBehavior(v12);
  _Unwind_Resume(a1);
}

OZChannelBase *TXTextScrollBehavior::setResetChannelFlags(TXTextScrollBehavior *this)
{
  if ((*(*this + 688))(this) == 1)
  {
    OZChannelBase::setFlag((this + 1256), 0x400000, 1);
    OZChannelBase::resetFlag((this + 1104), 0x400000, 1);
    OZChannelBase::setFlag((this + 1712), 0x8000, 1);
    OZChannelBase::setFlag((this + 1968), 0x8000, 1);
  }

  else
  {
    if ((*(*this + 688))(this) == 2)
    {
      OZChannelBase::setFlag((this + 1256), 0x400000, 1);
      OZChannelBase::setFlag((this + 1104), 0x400000, 1);
      OZChannelBase::resetFlag((this + 1712), 0x8000, 1);
      OZChannelBase::resetFlag((this + 1968), 0x8000, 1);
      OZChannelBase::resetFlag((this + 1408), 0x400000, 1);
      OZChannelBase::resetFlag((this + 1560), 0x400000, 1);
      OZChannelBase::setFlag((this + 2784), 0x400000, 1);
      goto LABEL_7;
    }

    OZChannelBase::resetFlag((this + 1256), 0x400000, 1);
    OZChannelBase::setFlag((this + 1104), 0x400000, 1);
    OZChannelBase::resetFlag((this + 1712), 0x8000, 1);
    OZChannelBase::resetFlag((this + 1968), 0x8000, 1);
  }

  OZChannelBase::setFlag((this + 1408), 0x400000, 1);
  OZChannelBase::setFlag((this + 1560), 0x400000, 1);
  OZChannelBase::resetFlag((this + 2784), 0x400000, 1);
LABEL_7:
  if ((*(*this + 680))(this))
  {
    OZChannelBase::resetFlag((this + 1712), 0x400000, 1);
    OZChannelBase::setFlag((this + 1968), 0x400000, 1);
  }

  else
  {
    OZChannelBase::setFlag((this + 1712), 0x400000, 1);
    OZChannelBase::resetFlag((this + 1968), 0x400000, 1);
  }

  if ((*(*this + 752))(this))
  {
    OZChannelBase::resetFlag((this + 2224), 0x400000, 1);
  }

  else
  {
    OZChannelBase::setFlag((this + 2224), 0x400000, 1);
  }

  if ((*(*this + 712))(this))
  {

    return OZChannelBase::resetFlag((this + 2632), 0x400000, 1);
  }

  else
  {

    return OZChannelBase::setFlag((this + 2632), 0x400000, 1);
  }
}

void TXTextScrollBehavior::TXTextScrollBehavior(TXTextScrollBehavior *this, const TXTextScrollBehavior *a2, char a3)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *v5 = &unk_287201AD0;
  *(v5 + 16) = &unk_287201E40;
  *(v5 + 48) = &unk_287202098;
  *(v5 + 336) = &unk_2872020F0;
  *(v5 + 552) = 0u;
  *(v5 + 568) = 0xBFF0000000000000;
  *(v5 + 576) = 0xBFF0000000000000;
  OZChannelEnum::OZChannelEnum((v5 + 592), (a2 + 592), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 848), (a2 + 848), (this + 56));
  OZChannel::OZChannel((this + 1104), (a2 + 1104), (this + 56));
  *(this + 138) = &unk_287245C60;
  *(this + 140) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1256), (a2 + 1256), (this + 56));
  *(this + 157) = &unk_287245C60;
  *(this + 159) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1408), (a2 + 1408), (this + 56));
  *(this + 176) = &unk_287245C60;
  *(this + 178) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1560), (a2 + 1560), (this + 56));
  *(this + 195) = &unk_287245C60;
  *(this + 197) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 1712), (a2 + 1712), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1968), (a2 + 1968), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 2224), (a2 + 2224), (this + 56));
  OZChannel::OZChannel((this + 2480), (a2 + 2480), (this + 56));
  *(this + 310) = &unk_287245C60;
  *(this + 312) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 2632), (a2 + 2632), (this + 56));
  OZChannelBool::OZChannelBool((this + 2784), (a2 + 2784), (this + 56));
  OZChannelBool::OZChannelBool((this + 2936), (a2 + 2936), (this + 56));
  OZChannel::OZChannel((this + 3088), (a2 + 3088), (this + 56));
  *(this + 386) = &unk_287245C60;
  *(this + 388) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 3240), (a2 + 3240), (this + 56));
  OZChannel::OZChannel((this + 3392), (a2 + 3392), (this + 56));
  *(this + 424) = &unk_287245C60;
  *(this + 426) = &unk_287245FC0;
  OZChannel::OZChannel((this + 3544), (a2 + 3544), (this + 56));
  *(this + 443) = &unk_287245C60;
  *(this + 445) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 3696), a2 + 33, (this + 56));
  OZChannel::setSliderMin((this + 1104), 0.0);
  OZChannel::setSliderMax((this + 1104), 200.0);
  OZChannel::setSuffix((this + 1104), "px");
  OZChannel::setSliderMin((this + 1256), 0.0);
  OZChannel::setSliderMax((this + 1256), 10.0);
  OZChannel::setCoarseDelta((this + 1256), 1.0);
  OZChannel::setSuffix((this + 1256), " x");
  OZChannel::setSliderMin((this + 1408), -2000.0);
  OZChannel::setSliderMax((this + 1408), 2000.0);
  OZChannel::setCoarseDelta((this + 1408), 1.0);
  OZChannel::setSliderMin((this + 1560), -2000.0);
  OZChannel::setSliderMax((this + 1560), 2000.0);
  OZChannel::setCoarseDelta((this + 1560), 1.0);
  *(this + 584) = 1;
}

void sub_25FB682CC(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v9);
  OZChannel::~OZChannel(v8);
  OZChannelBool::~OZChannelBool((v1 + 3240));
  OZChannel::~OZChannel(v7);
  OZChannelBool::~OZChannelBool((v1 + 2936));
  OZChannelBool::~OZChannelBool((v1 + 2784));
  OZChannelBool::~OZChannelBool((v1 + 2632));
  OZChannel::~OZChannel(v6);
  OZChannelEnum::~OZChannelEnum((v1 + 2224));
  OZChannelEnum::~OZChannelEnum((v1 + 1968));
  OZChannelEnum::~OZChannelEnum((v1 + 1712));
  OZChannel::~OZChannel(v5);
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZChannelEnum::~OZChannelEnum((v1 + 848));
  OZChannelEnum::~OZChannelEnum((v1 + 592));
  OZChannelBehavior::~OZChannelBehavior(v1);
  _Unwind_Resume(a1);
}

uint64_t TXTextScrollBehavior::initializeParameters(TXTextScrollBehavior *this)
{
  v2 = *(this + 67);
  if (v2)
  {
    ValueAsInt = OZChannel::getValueAsInt((v2 + 20464), MEMORY[0x277CC08F0], 0.0);
    v4 = *(this + 67);
    if (ValueAsInt == 3)
    {
      if (TXTextLayout::isVerticalLayout(v4))
      {
LABEL_4:
        v5 = MEMORY[0x277CC08F0];
        v6 = (this + 592);
        v7 = 0.0;
LABEL_10:
        OZChannel::setValue(v6, v5, v7, 0);
        goto LABEL_11;
      }
    }

    else
    {
      v8 = OZChannel::getValueAsInt((v4 + 20464), MEMORY[0x277CC08F0], 0.0);
      isVerticalLayout = TXTextLayout::isVerticalLayout(*(this + 67));
      if (v8 == 4)
      {
        if (!isVerticalLayout)
        {
          goto LABEL_4;
        }
      }

      else if (isVerticalLayout)
      {
        goto LABEL_4;
      }
    }

    v5 = MEMORY[0x277CC08F0];
    v6 = (this + 592);
    v7 = 1.0;
    goto LABEL_10;
  }

LABEL_11:
  v10 = MEMORY[0x277CC08F0];

  return OZChannel::setValue((this + 3240), v10, 1.0, 1);
}

void *TXTextScrollBehavior::didAddToNode(TXTextScrollBehavior *this, OZSceneNode *a2)
{
  result = OZChannelBehavior::didAddToNode(this, a2);
  if (a2)
  {
    v6 = result;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 | v6)
  {
    *(this + 67) = v5;
    *(this + 68) = v6;
    if (!v5)
    {
      OZChannelBehavior::didAddToNode(this, a2);
      operator new();
    }

    if (!OZChannel::getValueAsInt((this + 3240), MEMORY[0x277CC08F0], 0.0))
    {
      TXTextScrollBehavior::initializeParameters(this);
    }

    if (OZChannel::getValueAsInt((this + 592), MEMORY[0x277CC08F0], 0.0) == 1)
    {
      if (!TXTextLayout::isVerticalLayout(v5) || (*(v5 + 52258) & 1) != 0)
      {
        if (TXTextLayout::isVerticalLayout(v5) || (*(v5 + 52257) & 1) != 0)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (OZChannel::getValueAsInt((this + 592), MEMORY[0x277CC08F0], 0.0))
      {
        goto LABEL_24;
      }

      if (TXTextLayout::isVerticalLayout(v5) && (*(v5 + 52257) & 1) == 0)
      {
LABEL_22:
        TXTextLayout::initializeScrollMargins(v5);
        v7 = 3;
        goto LABEL_23;
      }

      if (TXTextLayout::isVerticalLayout(v5) || (*(v5 + 52258) & 1) != 0)
      {
LABEL_24:
        *(this + 968) = OZChannel::getValueAsInt((this + 592), MEMORY[0x277CC08F0], 0.0);
        OZChannelBehavior::didAddToNode(this, a2);
        operator new();
      }
    }

    TXTextLayout::initializeTickerMargins(v5);
    v7 = 4;
LABEL_23:
    TXTextLayout::cacheMargins(v5, v7);
    TXTextLayout::interlockMargins(v5, 0);
    TXTextLayout::setAllParagraphsDirty(v5);
    goto LABEL_24;
  }

  return result;
}

uint64_t TXTextScrollBehavior::operator=(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  v4 = v3;
  *(a1 + 536) = v3[67];
  *(a1 + 544) = v3[68];
  OZChannelBase::operator=(a1 + 592, (v3 + 74));
  OZChannelBase::operator=(a1 + 848, (v4 + 106));
  OZChannelBase::operator=(a1 + 1104, (v4 + 138));
  OZChannelBase::operator=(a1 + 1256, (v4 + 157));
  OZChannelBase::operator=(a1 + 1712, (v4 + 214));
  OZChannelBase::operator=(a1 + 1408, (v4 + 176));
  OZChannelBase::operator=(a1 + 1968, (v4 + 246));
  OZChannelBase::operator=(a1 + 2224, (v4 + 278));
  OZChannelBase::operator=(a1 + 2480, (v4 + 310));

  return OZChannelBase::operator=(a1 + 2632, (v4 + 329));
}

uint64_t TXTextScrollBehavior::canUseAdaptiveLineSpacing(TXTextScrollBehavior *this)
{
  result = (*(*this + 712))(this);
  if (result)
  {
    if ((*(*this + 680))(this) == 1)
    {
      result = (*(*this + 704))(this);
      if (result)
      {
        return (*(*this + 688))(this) != 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TXTextScrollBehavior::getAdaptiveLineSpacing(TXTextScrollBehavior *this)
{
  result = (*(*this + 752))(this);
  if (result)
  {
    v3 = MEMORY[0x277CC08F0];

    return OZChannel::getValueAsInt((this + 2224), v3, 0.0);
  }

  return result;
}

void TXTextScrollBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 8); i != a2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      if (v5)
      {
        TXTextScrollBehavior::setResetChannelFlags(v5);
      }
    }
  }
}

void TXTextScrollBehavior::notify(TXTextScrollBehavior *this, __int16 a2)
{
  if ((a2 & 0x1867) != 0)
  {
    *(this + 584) = 1;
  }

  OZChannelBehavior::notify(this, a2);
  v4 = (*(*this + 712))(this);
  if (v4)
  {
    v5 = v4;
    if (a2 < 0)
    {
      TXTextLayout::setAllParagraphsDirty(v4);
    }

    if ((a2 & 8) != 0)
    {
      v6 = *((*(*this + 336))(this) + 1584);
      v7 = (*(*this + 784))(this);
      v8 = *(v6 + 168);
      if (!v8 || !OZNotificationManager::wasChannelModified(v8, v7))
      {
        v11 = (*(*this + 832))(this, v7);
        v12 = *(v6 + 168);
        if (!v12 || !OZNotificationManager::wasChannelModified(v12, v11))
        {
          v13 = (*(*this + 856))(this, v11);
          v14 = *(v6 + 168);
          if (!v14 || !OZNotificationManager::wasChannelModified(v14, v13))
          {
            return;
          }
        }

LABEL_32:

        TXTextLayout::setAllParagraphsDirty(v5);
        return;
      }

      if ((*(*this + 680))(this) == 1)
      {
        if (*(v5 + 52257) != 1 || TXTextLayout::isVerticalLayout(v5))
        {
          if (*(v5 + 52258) != 1 || !TXTextLayout::isVerticalLayout(v5))
          {
            if (TXTextLayout::isVerticalLayout(v5))
            {
LABEL_16:
              TXTextLayout::initializeTickerMargins(v5);
              v9 = v5;
              v10 = 4;
LABEL_31:
              TXTextLayout::cacheMargins(v9, v10);
              goto LABEL_32;
            }

LABEL_30:
            TXTextLayout::initializeScrollMargins(v5);
            v9 = v5;
            v10 = 3;
            goto LABEL_31;
          }

          goto LABEL_24;
        }
      }

      else
      {
        if (!TXTextLayout::isVerticalLayout(v5) && *(v5 + 52258) == 1)
        {
LABEL_24:
          v15 = v5;
          v16 = 4;
LABEL_28:
          TXTextLayout::setCachedMargins(v15, v16);
          goto LABEL_32;
        }

        if (!TXTextLayout::isVerticalLayout(v5) || *(v5 + 52257) != 1)
        {
          if (!TXTextLayout::isVerticalLayout(v5))
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }
      }

      v15 = v5;
      v16 = 3;
      goto LABEL_28;
    }
  }
}

uint64_t TXTextScrollBehavior::parseBegin(TXTextScrollBehavior *this, PCSerializerReadStream *a2)
{
  v4 = OZBehavior::parseBegin(this, a2);
  LODWORD(v5) = *(a2 + 26);
  v6 = MEMORY[0x277CC08F0];
  OZChannel::setValue((this + 3392), MEMORY[0x277CC08F0], v5, 0);
  LODWORD(v7) = *(a2 + 27);
  OZChannel::setValue((this + 3544), v6, v7, 0);
  return v4;
}

uint64_t TXTextScrollBehavior::parseEnd(TXTextScrollBehavior *this, PCSerializerReadStream *a2)
{
  TXTextScrollBehavior::setResetChannelFlags(this);
  OZChannelBase::setFlag(this + 33, 0x100000000, 0);
  OZChannelBase::setFlag((this + 3392), 0x100000000, 0);
  OZChannelBase::setFlag((this + 3544), 0x100000000, 0);

  return OZBehavior::parseEnd(this, a2);
}

void TXTextScrollBehavior::~TXTextScrollBehavior(TXTextScrollBehavior *this)
{
  TXTextScrollBehavior::~TXTextScrollBehavior(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287201AD0;
  *(this + 2) = &unk_287201E40;
  *(this + 6) = &unk_287202098;
  *(this + 42) = &unk_2872020F0;
  OZChannelBool::~OZChannelBool((this + 3696));
  OZChannel::~OZChannel((this + 3544));
  OZChannel::~OZChannel((this + 3392));
  OZChannelBool::~OZChannelBool((this + 3240));
  OZChannel::~OZChannel((this + 3088));
  OZChannelBool::~OZChannelBool((this + 2936));
  OZChannelBool::~OZChannelBool((this + 2784));
  OZChannelBool::~OZChannelBool((this + 2632));
  OZChannel::~OZChannel((this + 2480));
  OZChannelEnum::~OZChannelEnum((this + 2224));
  OZChannelEnum::~OZChannelEnum((this + 1968));
  OZChannelEnum::~OZChannelEnum((this + 1712));
  OZChannel::~OZChannel((this + 1560));
  OZChannel::~OZChannel((this + 1408));
  OZChannel::~OZChannel((this + 1256));
  OZChannel::~OZChannel((this + 1104));
  OZChannelEnum::~OZChannelEnum((this + 848));
  OZChannelEnum::~OZChannelEnum((this + 592));

  OZChannelBehavior::~OZChannelBehavior(this);
}

uint64_t TXTextScrollBehavior::getInterlaceAdjust(TXTextScrollBehavior *this)
{
  v2 = (*(*this + 680))(this);
  v3 = 1968;
  if (v2 == 1)
  {
    v3 = 1712;
  }

  v4 = MEMORY[0x277CC08F0];

  return OZChannel::getValueAsInt((this + v3), v4, 0.0);
}

void non-virtual thunk toTXTextScrollBehavior::~TXTextScrollBehavior(TXTextScrollBehavior *this)
{
  TXTextScrollBehavior::~TXTextScrollBehavior((this - 16));
}

{
  TXTextScrollBehavior::~TXTextScrollBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextScrollBehavior::~TXTextScrollBehavior((this - 48));
}

{
  TXTextScrollBehavior::~TXTextScrollBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextScrollBehavior::~TXTextScrollBehavior((this - 336));
}

{
  TXTextScrollBehavior::~TXTextScrollBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void TXTextBehavior::TXTextBehavior(TXTextBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *v4 = &unk_287202148;
  v4[2] = &unk_287202400;
  v4[6] = &unk_287202658;
  v4[42] = &unk_2872026B0;
}

void TXTextBehavior::TXTextBehavior(TXTextBehavior *this, const TXTextBehavior *a2, char a3)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *v3 = &unk_287202148;
  v3[2] = &unk_287202400;
  v3[6] = &unk_287202658;
  v3[42] = &unk_2872026B0;
}

void non-virtual thunk toTXTextBehavior::~TXTextBehavior(TXTextBehavior *this)
{
  OZChannelBehavior::~OZChannelBehavior((this - 16));
}

{
  OZChannelBehavior::~OZChannelBehavior((this - 48));
}

{
  OZChannelBehavior::~OZChannelBehavior((this - 336));
}

{
  OZChannelBehavior::~OZChannelBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZChannelBehavior::~OZChannelBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZChannelBehavior::~OZChannelBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void TXTextBehavior::~TXTextBehavior(TXTextBehavior *this)
{
  OZChannelBehavior::~OZChannelBehavior(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t TXTextBehavior::getPreviewSceneNode(TXTextBehavior *this)
{
  PCSharedCount::PCSharedCount(&v8);
  NextUniqueID = OZChannelBase::getNextUniqueID(v1);
  v3 = TXTextInput::create(&v8, NextUniqueID);
  PCString::~PCString(&v8);
  v4 = MEMORY[0x277CC08F0];
  v8 = **&MEMORY[0x277CC08F0];
  PCURL::PCURL(&v6, @"Text Behavior Preview Text");
  (*(*v3 + 144))(v3, &v8, &v6);
  PCString::~PCString(&v6);
  TXTextLayout::didFinishInitializing(v3, 1);
  TXTextLayout::getCurrentStyleForInsertion(v3, &v6);
  if (v6.var0)
  {
    v8 = *v4;
    OZChannel::setValue(&v6.var0[61].length, &v8, 16.0, 0);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v3 + 200;
}

void sub_25FB69780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, PCString a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TXTypeOnCurveNode::~TXTypeOnCurveNode(TXTypeOnCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double TXTypeOnCurveNode::solveNode(TXTypeOnCurveNode *this, const CMTime *a2, double a3, double a4)
{
  v4 = *(this + 4);
  v6 = *a2;
  return TXTypeOnBehavior::getTypeOn(v4, &v6, a4);
}

double TXTypeOnBehavior::getTypeOn(TXTypeOnBehavior *this, CMTime *a2, double a3)
{
  memset(&v18, 0, sizeof(v18));
  (*(**(*(this + 47) + 32) + 336))(&v18);
  v16 = v18;
  if ((*(*this + 296))(this, &v16, 1, 1, 1))
  {
    (*(*this + 608))(&v16, this);
    time2 = v16;
    time1 = v18;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v7 = (this + 536);
    }

    else
    {
      v6 = (*(*this + 336))(this);
      OZSceneSettings::getFrameDuration((v6 + 336), &v14);
      time1 = v16;
      time2 = v18;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        time1 = v16;
        time2 = v17;
        PC_CMTimeSaferAdd(&time1, &time2, &v20);
        time1 = v20;
        *&time2.value = v14;
        time2.epoch = v15;
        PC_CMTimeSaferSubtract(&time1, &time2, &v19);
        time1 = v18;
        time2 = v19;
        if (CMTimeCompare(&time1, &time2) <= 0 || (v17.flags & 1) != 0 && (v17.flags & 0x10) != 0)
        {
          time2 = v16;
          time1 = v18;
          PC_CMTimeSaferSubtract(&time1, &time2, &v20);
          time2 = v17;
          operator/(&v20.value, &time2, &time1);
          Seconds = CMTimeGetSeconds(&time1);
          OZChannel::getValueAsDouble((this + 536), a2, 0.0);
          v12 = v11;
          OZChannel::getValueAsDouble((this + 688), a2, 0.0);
          return v12 + Seconds * (v13 - v12);
        }
      }

      v7 = (this + 688);
    }

    OZChannel::getValueAsDouble(v7, a2, 0.0);
    return v8;
  }

  return a3;
}

void TXTypeOnCurveNode::solveNode(TXTypeOnCurveNode *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v3 = *(a2 + 10);
  v9 = *(a2 + 5);
  v8 = *(a2 + 4);
  if (*(a2 + 36))
  {
    v6 = 0;
    do
    {
      v7 = *(this + 4);
      v11 = v8;
      *(v2 + 8 * v6) = TXTypeOnBehavior::getTypeOn(v7, &v11, *(v3 + 8 * v6));
      v11 = v8;
      v10 = v9;
      PC_CMTimeSaferAdd(&v11, &v10, &v8);
      ++v6;
    }

    while (v6 < *(a2 + 36));
  }
}

__n128 TXTypeOnCurveNode::getNeededRange(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a2 + 96);
  *(a2 + 40) = *(a2 + 112);
  result = *(a2 + 120);
  *(a2 + 48) = result;
  *(a2 + 64) = *(a2 + 136);
  *(a2 + 72) = *(a2 + 144);
  *(a2 + 88) = 0;
  *(a2 + 80) = *(a2 + 152);
  return result;
}

void TXFadeOnCurveNode::~TXFadeOnCurveNode(TXFadeOnCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

void TXFadeOnCurveNode::solveNode(TXFadeOnCurveNode *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v9 = *(a2 + 5);
  v8 = *(a2 + 4);
  if (*(a2 + 36))
  {
    v5 = 0;
    v6 = MEMORY[0x277CC08F0];
    do
    {
      if (OZChannel::getValueAsInt((*(this + 4) + 840), v6, 0.0))
      {
        v7 = 1.0;
      }

      else
      {
        v7 = 0.0;
      }

      *(v2 + 8 * v5) = v7;
      v11 = v8;
      v10 = v9;
      PC_CMTimeSaferAdd(&v11, &v10, &v8);
      ++v5;
    }

    while (v5 < *(a2 + 36));
  }
}

__n128 TXFadeOnCurveNode::getNeededRange(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a2 + 96);
  *(a2 + 40) = *(a2 + 112);
  result = *(a2 + 120);
  *(a2 + 48) = result;
  *(a2 + 64) = *(a2 + 136);
  *(a2 + 72) = *(a2 + 144);
  *(a2 + 88) = 0;
  *(a2 + 80) = *(a2 + 152);
  return result;
}

void TXTypeOnBehavior::TXTypeOnBehavior(TXTypeOnBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3, a4);
  *v5 = &unk_2872028E0;
  v5[2] = &unk_287202B98;
  v5[6] = &unk_287202DF0;
  v5[42] = &unk_287202E48;
  PCURL::PCURL(&v6, @"Text Type On Behavior Start");
  OZChannelPercent::OZChannelPercent((this + 536), 0.0, &v6, (this + 56), 0xC8u, 2u, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Text Type On Behavior End");
  OZChannelPercent::OZChannelPercent((this + 688), 1.0, &v6, (this + 56), 0xC9u, 2u, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Text Type On Behavior Fade On");
  OZChannelBool::OZChannelBool((this + 840), 0, &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  *(this + 62) = 0u;
  *(this + 63) = 0u;
  OZChannel::setKeyframable((this + 840), 0);
}

void sub_25FB6A11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelBool::~OZChannelBool((v10 + 840));
  OZChannelPercent::~OZChannelPercent((v10 + 688));
  OZChannelPercent::~OZChannelPercent((v10 + 536));
  TXTextBehavior::~TXTextBehavior(v10);
  _Unwind_Resume(a1);
}

void TXTypeOnBehavior::TXTypeOnBehavior(TXTypeOnBehavior *this, const TXTypeOnBehavior *a2, char a3)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3);
  *v5 = &unk_2872028E0;
  *(v5 + 16) = &unk_287202B98;
  *(v5 + 48) = &unk_287202DF0;
  *(v5 + 336) = &unk_287202E48;
  OZChannelPercent::OZChannelPercent((v5 + 536), (a2 + 536), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 688), (a2 + 688), (this + 56));
  OZChannelBool::OZChannelBool((this + 840), (a2 + 840), (this + 56));
  *(this + 62) = 0u;
  *(this + 63) = 0u;
}

void sub_25FB6A274(_Unwind_Exception *a1)
{
  OZChannelPercent::~OZChannelPercent((v1 + 688));
  OZChannelPercent::~OZChannelPercent((v1 + 536));
  TXTextBehavior::~TXTextBehavior(v1);
  _Unwind_Resume(a1);
}

void TXTypeOnBehavior::~TXTypeOnBehavior(TXTypeOnBehavior *this)
{
  *this = &unk_2872028E0;
  *(this + 2) = &unk_287202B98;
  *(this + 6) = &unk_287202DF0;
  *(this + 42) = &unk_287202E48;
  OZChannelBool::~OZChannelBool((this + 840));
  OZChannelPercent::~OZChannelPercent((this + 688));
  OZChannelPercent::~OZChannelPercent((this + 536));

  TXTextBehavior::~TXTextBehavior(this);
}

{
  TXTypeOnBehavior::~TXTypeOnBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXTypeOnBehavior::~TXTypeOnBehavior(TXTypeOnBehavior *this)
{
  TXTypeOnBehavior::~TXTypeOnBehavior((this - 16));
}

{
  TXTypeOnBehavior::~TXTypeOnBehavior((this - 48));
}

{
  TXTypeOnBehavior::~TXTypeOnBehavior((this - 336));
}

{
  TXTypeOnBehavior::~TXTypeOnBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXTypeOnBehavior::~TXTypeOnBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXTypeOnBehavior::~TXTypeOnBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

__n128 TXTypeOnBehavior::operator=(__n128 *a1, const void *a2)
{
  TXTextBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(&a1[33].n128_i64[1], &v4[33].n128_i64[1]);
  OZChannelBase::operator=(&a1[43], &v5[43]);
  OZChannelBase::operator=(&a1[52].n128_i64[1], &v5[52].n128_i64[1]);
  result = v5[62];
  a1[62] = result;
  return result;
}

OZChannelBehavior *TXTypeOnBehavior::didAddToNode(OZChannelBehavior *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
    v3 = this;
    if (this)
    {
      v4 = this;
      OZChannelBehavior::didAddToNode(v3, lpsrc);
      *(v3 + 124) = v4 + 23968;
      *(v3 + 125) = v4 + 24120;

      return TXTypeOnBehavior::typeOnBehaviorDidLoad(v3);
    }
  }

  return this;
}

uint64_t TXTypeOnBehavior::typeOnBehaviorDidLoad(uint64_t this)
{
  if (!*(this + 1016))
  {
    operator new();
  }

  if (!*(this + 1008))
  {
    operator new();
  }

  return this;
}

void TXTypeOnBehavior::willRemove(TXTypeOnBehavior *this)
{
  OZChannel::deleteCurveProcessingNode(*(this + 124), *(this + 127));
  *(this + 127) = 0;
  OZChannel::deleteCurveProcessingNode(*(this + 125), *(this + 126));
  *(this + 126) = 0;
  OZChannelBehavior::clearChannels(this);

  OZChannelBehavior::willRemove(this);
}

void TXCrawlCurveNode::~TXCrawlCurveNode(TXCrawlCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double TXCrawlCurveNode::solveNode(TXCrawlCurveNode *this, const CMTime *a2, double a3, double a4)
{
  v4 = *(this + 4);
  v6 = *a2;
  return (*(*v4 + 680))(v4, &v6) + a4;
}

void TXCrawlCurveNode::solveNode(TXCrawlCurveNode *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v3 = *(a2 + 10);
  v10 = *(a2 + 5);
  v9 = *(a2 + 4);
  if (*(a2 + 36))
  {
    v6 = 0;
    do
    {
      v7 = *(v3 + 8 * v6);
      v8 = *(this + 4);
      v12 = v9;
      *(v2 + 8 * v6) = v7 + (*(*v8 + 680))();
      v12 = v9;
      v11 = v10;
      PC_CMTimeSaferAdd(&v12, &v11, &v9);
      ++v6;
    }

    while (v6 < *(a2 + 36));
  }
}

__n128 TXCrawlCurveNode::getNeededRange(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a2 + 96);
  *(a2 + 40) = *(a2 + 112);
  result = *(a2 + 120);
  *(a2 + 48) = result;
  *(a2 + 64) = *(a2 + 136);
  *(a2 + 72) = *(a2 + 144);
  *(a2 + 88) = 0;
  *(a2 + 80) = *(a2 + 152);
  return result;
}

void TXCrawlBehavior::TXCrawlBehavior(TXCrawlBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3, a4);
  *v5 = &unk_287202F80;
  v5[2] = &unk_287203240;
  v5[6] = &unk_287203498;
  v5[42] = &unk_2872034F0;
  v5[67] = 0;
  PCURL::PCURL(&v6, @"Text Crawl Behavior Rate");
  OZChannelDouble::OZChannelDouble((this + 544), 10.0, &v6, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Text Crawl Behavior X Offset");
  OZChannelDouble::OZChannelDouble((this + 696), &v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Text Crawl Behavior End Offset");
  OZChannelDouble::OZChannelDouble((this + 848), &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  OZChannel::setKeyframable((this + 848), 0);
}

void sub_25FB6AC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannel::~OZChannel((v10 + 848));
  OZChannel::~OZChannel((v10 + 696));
  OZChannel::~OZChannel((v10 + 544));
  TXTextBehavior::~TXTextBehavior(v10);
  _Unwind_Resume(a1);
}

void TXCrawlBehavior::TXCrawlBehavior(TXCrawlBehavior *this, const TXCrawlBehavior *a2, char a3)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3);
  *v5 = &unk_287202F80;
  *(v5 + 16) = &unk_287203240;
  *(v5 + 48) = &unk_287203498;
  *(v5 + 336) = &unk_2872034F0;
  OZChannel::OZChannel((v5 + 544), (a2 + 544), (v5 + 56));
  *(this + 68) = &unk_287245C60;
  *(this + 70) = &unk_287245FC0;
  OZChannel::OZChannel((this + 696), (a2 + 696), (this + 56));
  *(this + 87) = &unk_287245C60;
  *(this + 89) = &unk_287245FC0;
  OZChannel::OZChannel((this + 848), (a2 + 848), (this + 56));
  *(this + 106) = &unk_287245C60;
  *(this + 108) = &unk_287245FC0;
}

void sub_25FB6AE88(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  TXTextBehavior::~TXTextBehavior(v1);
  _Unwind_Resume(a1);
}

void TXCrawlBehavior::~TXCrawlBehavior(TXCrawlBehavior *this)
{
  *this = &unk_287202F80;
  *(this + 2) = &unk_287203240;
  *(this + 6) = &unk_287203498;
  *(this + 42) = &unk_2872034F0;
  OZChannel::~OZChannel((this + 848));
  OZChannel::~OZChannel((this + 696));
  OZChannel::~OZChannel((this + 544));

  TXTextBehavior::~TXTextBehavior(this);
}

{
  TXCrawlBehavior::~TXCrawlBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXCrawlBehavior::~TXCrawlBehavior(TXCrawlBehavior *this)
{
  TXCrawlBehavior::~TXCrawlBehavior((this - 16));
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 48));
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 336));
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t TXCrawlBehavior::operator=(uint64_t a1, const void *a2)
{
  TXTextBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  *(a1 + 536) = v4[67];
  OZChannelBase::operator=(a1 + 544, (v4 + 68));
  OZChannelBase::operator=(a1 + 696, (v5 + 87));

  return OZChannelBase::operator=(a1 + 848, (v5 + 106));
}

OZChannelBehavior *TXCrawlBehavior::didAddToNode(OZChannelBehavior *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
    v3 = this;
    if (this)
    {
      *(v3 + 67) = this;
      OZChannelBehavior::didAddToNode(v3, lpsrc);
      operator new();
    }
  }

  return this;
}

void TXCrawlBehavior::getXOffset(TXCrawlBehavior *this, CMTime *a2)
{
  memset(&v13, 0, sizeof(v13));
  (*(**(*(this + 47) + 32) + 336))(&v13);
  v11[0] = v13;
  if ((*(*this + 296))(this, v11, 1, 1, 1))
  {
    v3 = (*(*this + 336))(this, 0.0);
    memset(&v12, 0, sizeof(v12));
    if (v3)
    {
      FrameDuration = OZSceneSettings::getFrameDuration((v3 + 336), &v12);
    }

    else
    {
      OZFigTimeForChannelSeconds(&v12, 0.0333333333, 0x40000);
    }

    (*(*this + 608))(v11, this, FrameDuration);
    memset(&v10, 0, sizeof(v10));
    time2 = v11[0];
    time1 = v13;
    PC_CMTimeSaferSubtract(&time1, &time2, &v10);
    memset(&v9, 0, sizeof(v9));
    v8 = v11[1];
    OZChannel::getValueAsDouble((this + 848), MEMORY[0x277CC08F0], 0.0);
    operator*(&v12, &v7, v5);
    time1 = v8;
    time2 = v7;
    PC_CMTimeSaferSubtract(&time1, &time2, &v9);
    time1 = v10;
    time2 = v9;
    if (CMTimeCompare(&time1, &time2) >= 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = &v10;
    }

    time1 = *v6;
    CMTimeGetSeconds(&time1);
    OZChannel::getValueAsDouble((this + 544), &v10, 0.0);
  }
}

void TXCrawlRightBehavior::TXCrawlRightBehavior(TXCrawlRightBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  TXCrawlBehavior::TXCrawlBehavior(this, a2, a3, a4);
  *v4 = &unk_287203530;
  v4[2] = &unk_2872037F0;
  v4[6] = &unk_287203A48;
  v4[42] = &unk_287203AA0;
}

void TXCrawlRightBehavior::TXCrawlRightBehavior(TXCrawlRightBehavior *this, const TXCrawlRightBehavior *a2, char a3)
{
  TXCrawlBehavior::TXCrawlBehavior(this, a2, a3);
  *v3 = &unk_287203530;
  v3[2] = &unk_2872037F0;
  v3[6] = &unk_287203A48;
  v3[42] = &unk_287203AA0;
}

void non-virtual thunk toTXCrawlRightBehavior::~TXCrawlRightBehavior(TXCrawlRightBehavior *this)
{
  TXCrawlBehavior::~TXCrawlBehavior((this - 16));
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 48));
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 336));
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void TXCrawlRightBehavior::~TXCrawlRightBehavior(TXCrawlRightBehavior *this)
{
  TXCrawlBehavior::~TXCrawlBehavior(this);

  JUMPOUT(0x2666E9F00);
}

double TXCrawlRightBehavior::getXOffset(TXCrawlRightBehavior *this, CMTime *a2)
{
  OZChannel::getValueAsDouble((this + 696), a2, 0.0);
  v5 = v4;
  v8 = *a2;
  TXCrawlBehavior::getXOffset(this, &v8);
  return v5 + v6;
}

void TXCrawlLeftBehavior::TXCrawlLeftBehavior(TXCrawlLeftBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  TXCrawlBehavior::TXCrawlBehavior(this, a2, a3, a4);
  *v4 = &unk_287203AC8;
  v4[2] = &unk_287203D88;
  v4[6] = &unk_287203FE0;
  v4[42] = &unk_287204038;
}

void TXCrawlLeftBehavior::TXCrawlLeftBehavior(TXCrawlLeftBehavior *this, const TXCrawlLeftBehavior *a2, char a3)
{
  TXCrawlBehavior::TXCrawlBehavior(this, a2, a3);
  *v3 = &unk_287203AC8;
  v3[2] = &unk_287203D88;
  v3[6] = &unk_287203FE0;
  v3[42] = &unk_287204038;
}

void non-virtual thunk toTXCrawlLeftBehavior::~TXCrawlLeftBehavior(TXCrawlLeftBehavior *this)
{
  TXCrawlBehavior::~TXCrawlBehavior((this - 16));
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 48));
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 336));
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXCrawlBehavior::~TXCrawlBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void TXCrawlLeftBehavior::~TXCrawlLeftBehavior(TXCrawlLeftBehavior *this)
{
  TXCrawlBehavior::~TXCrawlBehavior(this);

  JUMPOUT(0x2666E9F00);
}

double TXCrawlLeftBehavior::getXOffset(TXCrawlLeftBehavior *this, CMTime *a2)
{
  OZChannel::getValueAsDouble((this + 696), a2, 0.0);
  v5 = v4;
  v8 = *a2;
  TXCrawlBehavior::getXOffset(this, &v8);
  return v5 - v6;
}

void TXScrollCurveNode::~TXScrollCurveNode(TXScrollCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double TXScrollCurveNode::solveNode(TXScrollCurveNode *this, const CMTime *a2, double a3, double a4)
{
  v4 = *(this + 4);
  v6 = *a2;
  return (*(*v4 + 680))(v4, &v6) + a4;
}

void TXScrollCurveNode::solveNode(TXScrollCurveNode *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v3 = *(a2 + 10);
  v10 = *(a2 + 5);
  v9 = *(a2 + 4);
  if (*(a2 + 36))
  {
    v6 = 0;
    do
    {
      v7 = *(v3 + 8 * v6);
      v8 = *(this + 4);
      v12 = v9;
      *(v2 + 8 * v6) = v7 + (*(*v8 + 680))();
      v12 = v9;
      v11 = v10;
      PC_CMTimeSaferAdd(&v12, &v11, &v9);
      ++v6;
    }

    while (v6 < *(a2 + 36));
  }
}

__n128 TXScrollCurveNode::getNeededRange(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a2 + 96);
  *(a2 + 40) = *(a2 + 112);
  result = *(a2 + 120);
  *(a2 + 48) = result;
  *(a2 + 64) = *(a2 + 136);
  *(a2 + 72) = *(a2 + 144);
  *(a2 + 88) = 0;
  *(a2 + 80) = *(a2 + 152);
  return result;
}

void TXScrollBehavior::TXScrollBehavior(TXScrollBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3, a4);
  *v5 = &unk_287204188;
  v5[2] = &unk_287204460;
  v5[6] = &unk_2872046B8;
  v5[42] = &unk_287204710;
  v5[67] = 0;
  PCURL::PCURL(&v6, @"Text Scroll Behavior Rate");
  OZChannelDouble::OZChannelDouble((this + 544), 10.0, &v6, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Text Scroll Behavior Y Offset");
  OZChannelDouble::OZChannelDouble((this + 696), &v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Text Scroll Behavior End Offset");
  OZChannelDouble::OZChannelDouble((this + 848), &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  OZChannel::setKeyframable((this + 848), 0);
}

void sub_25FB6BE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannel::~OZChannel((v10 + 848));
  OZChannel::~OZChannel((v10 + 696));
  OZChannel::~OZChannel((v10 + 544));
  TXTextBehavior::~TXTextBehavior(v10);
  _Unwind_Resume(a1);
}

void TXScrollBehavior::TXScrollBehavior(TXScrollBehavior *this, const TXScrollBehavior *a2, char a3)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3);
  *v5 = &unk_287204188;
  *(v5 + 16) = &unk_287204460;
  *(v5 + 48) = &unk_2872046B8;
  *(v5 + 336) = &unk_287204710;
  OZChannel::OZChannel((v5 + 544), (a2 + 544), (v5 + 56));
  *(this + 68) = &unk_287245C60;
  *(this + 70) = &unk_287245FC0;
  OZChannel::OZChannel((this + 696), (a2 + 696), (this + 56));
  *(this + 87) = &unk_287245C60;
  *(this + 89) = &unk_287245FC0;
  OZChannel::OZChannel((this + 848), (a2 + 848), (this + 56));
  *(this + 106) = &unk_287245C60;
  *(this + 108) = &unk_287245FC0;
}

void sub_25FB6C090(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  TXTextBehavior::~TXTextBehavior(v1);
  _Unwind_Resume(a1);
}

void TXScrollBehavior::~TXScrollBehavior(TXScrollBehavior *this)
{
  *this = &unk_287204188;
  *(this + 2) = &unk_287204460;
  *(this + 6) = &unk_2872046B8;
  *(this + 42) = &unk_287204710;
  OZChannel::~OZChannel((this + 848));
  OZChannel::~OZChannel((this + 696));
  OZChannel::~OZChannel((this + 544));

  TXTextBehavior::~TXTextBehavior(this);
}

{
  TXScrollBehavior::~TXScrollBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXScrollBehavior::~TXScrollBehavior(TXScrollBehavior *this)
{
  TXScrollBehavior::~TXScrollBehavior((this - 16));
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 48));
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 336));
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t TXScrollBehavior::operator=(uint64_t a1, const void *a2)
{
  TXTextBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  *(a1 + 536) = v4[67];
  OZChannelBase::operator=(a1 + 544, (v4 + 68));
  OZChannelBase::operator=(a1 + 696, (v5 + 87));

  return OZChannelBase::operator=(a1 + 848, (v5 + 106));
}

OZChannelBehavior *TXScrollBehavior::didAddToNode(OZChannelBehavior *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
    v3 = this;
    if (this)
    {
      *(v3 + 67) = this;
      OZChannelBehavior::didAddToNode(v3, lpsrc);
      operator new();
    }
  }

  return this;
}

void TXScrollBehavior::getYOffset(TXScrollBehavior *this, CMTime *a2)
{
  memset(&v13, 0, sizeof(v13));
  (*(**(*(this + 47) + 32) + 336))(&v13);
  v11[0] = v13;
  if ((*(*this + 296))(this, v11, 1, 1, 1))
  {
    v3 = (*(*this + 336))(this, 0.0);
    memset(&v12, 0, sizeof(v12));
    if (v3)
    {
      FrameDuration = OZSceneSettings::getFrameDuration((v3 + 336), &v12);
    }

    else
    {
      OZFigTimeForChannelSeconds(&v12, 0.0333333333, 0x40000);
    }

    (*(*this + 608))(v11, this, FrameDuration);
    memset(&v10, 0, sizeof(v10));
    time2 = v11[0];
    time1 = v13;
    PC_CMTimeSaferSubtract(&time1, &time2, &v10);
    memset(&v9, 0, sizeof(v9));
    v8 = v11[1];
    OZChannel::getValueAsDouble((this + 848), MEMORY[0x277CC08F0], 0.0);
    operator*(&v12, &v7, v5);
    time1 = v8;
    time2 = v7;
    PC_CMTimeSaferSubtract(&time1, &time2, &v9);
    time1 = v10;
    time2 = v9;
    if (CMTimeCompare(&time1, &time2) >= 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = &v10;
    }

    time1 = *v6;
    CMTimeGetSeconds(&time1);
    OZChannel::getValueAsDouble((this + 544), &v10, 0.0);
  }
}

void TXScrollUpBehavior::TXScrollUpBehavior(TXScrollUpBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  TXScrollBehavior::TXScrollBehavior(this, a2, a3, a4);
  *v4 = &unk_287204750;
  v4[2] = &unk_287204A28;
  v4[6] = &unk_287204C80;
  v4[42] = &unk_287204CD8;
}

void TXScrollUpBehavior::TXScrollUpBehavior(TXScrollUpBehavior *this, const TXScrollUpBehavior *a2, char a3)
{
  TXScrollBehavior::TXScrollBehavior(this, a2, a3);
  *v3 = &unk_287204750;
  v3[2] = &unk_287204A28;
  v3[6] = &unk_287204C80;
  v3[42] = &unk_287204CD8;
}

void non-virtual thunk toTXScrollUpBehavior::~TXScrollUpBehavior(TXScrollUpBehavior *this)
{
  TXScrollBehavior::~TXScrollBehavior((this - 16));
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 48));
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 336));
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void TXScrollUpBehavior::~TXScrollUpBehavior(TXScrollUpBehavior *this)
{
  TXScrollBehavior::~TXScrollBehavior(this);

  JUMPOUT(0x2666E9F00);
}

double TXScrollUpBehavior::getYOffset(TXScrollUpBehavior *this, CMTime *a2)
{
  OZChannel::getValueAsDouble((this + 696), a2, 0.0);
  v5 = v4;
  v8 = *a2;
  TXScrollBehavior::getYOffset(this, &v8);
  return v5 + v6;
}

void TXScrollDownBehavior::TXScrollDownBehavior(TXScrollDownBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  TXScrollBehavior::TXScrollBehavior(this, a2, a3, a4);
  *v4 = &unk_287204D00;
  v4[2] = &unk_287204FD8;
  v4[6] = &unk_287205230;
  v4[42] = &unk_287205288;
}

void TXScrollDownBehavior::TXScrollDownBehavior(TXScrollDownBehavior *this, const TXScrollDownBehavior *a2, char a3)
{
  TXScrollBehavior::TXScrollBehavior(this, a2, a3);
  *v3 = &unk_287204D00;
  v3[2] = &unk_287204FD8;
  v3[6] = &unk_287205230;
  v3[42] = &unk_287205288;
}

void non-virtual thunk toTXScrollDownBehavior::~TXScrollDownBehavior(TXScrollDownBehavior *this)
{
  TXScrollBehavior::~TXScrollBehavior((this - 16));
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 48));
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 336));
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXScrollBehavior::~TXScrollBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void TXScrollDownBehavior::~TXScrollDownBehavior(TXScrollDownBehavior *this)
{
  TXScrollBehavior::~TXScrollBehavior(this);

  JUMPOUT(0x2666E9F00);
}

double TXScrollDownBehavior::getYOffset(TXScrollDownBehavior *this, CMTime *a2)
{
  OZChannel::getValueAsDouble((this + 696), a2, 0.0);
  v5 = v4;
  v8 = *a2;
  TXScrollBehavior::getYOffset(this, &v8);
  return v5 - v6;
}

void TXTextTrackingBehavior::TXTextTrackingBehavior(TXTextTrackingBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3, a4);
  *v5 = &unk_2872052E0;
  v5[2] = &unk_2872055A0;
  v5[6] = &unk_2872057F8;
  v5[42] = &unk_287205850;
  PCURL::PCURL(&v6, @"Text Tracking Behavior Rate");
  OZChannelDouble::OZChannelDouble((this + 536), 2.0, &v6, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Text Tracking Behavior Rate");
  OZChannelPercent::OZChannelPercent((this + 688), 0.1, &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Text Tracking Behavior End Offset");
  OZChannelUint32::OZChannelUint32((this + 840), &v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v6);
  *(this + 1000) = 0;
  OZChannel::setSliderMin((this + 536), 0.0);
  OZChannel::setSliderMax((this + 536), 10.0);
  OZChannel::setMin((this + 688), -1000.0);
  OZChannel::setMax((this + 688), 1000.0);
  OZChannel::setSliderMin((this + 688), 0.0);
  OZChannel::setSliderMax((this + 688), 1.0);
  OZChannel::setKeyframable((this + 840), 0);
  OZChannel::setSliderMax((this + 840), 100.0);
  *(this + 1000) = 0;
}

void sub_25FB6CE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelPercent::~OZChannelPercent((v10 + 688));
  OZChannel::~OZChannel((v10 + 536));
  TXTextBehavior::~TXTextBehavior(v10);
  _Unwind_Resume(a1);
}

void TXTextTrackingBehavior::TXTextTrackingBehavior(TXTextTrackingBehavior *this, const TXTextTrackingBehavior *a2, char a3)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3);
  *v5 = &unk_2872052E0;
  *(v5 + 16) = &unk_2872055A0;
  *(v5 + 48) = &unk_2872057F8;
  *(v5 + 336) = &unk_287205850;
  OZChannel::OZChannel((v5 + 536), (a2 + 536), (v5 + 56));
  *(this + 67) = &unk_287245C60;
  *(this + 69) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 688), (a2 + 688), (this + 56));
  OZChannel::OZChannel((this + 840), (a2 + 840), (this + 56));
  *(this + 105) = &unk_287246400;
  *(this + 107) = &unk_287246760;
  *(this + 1000) = 0;
}

void sub_25FB6D024(_Unwind_Exception *a1)
{
  OZChannelPercent::~OZChannelPercent((v1 + 688));
  OZChannel::~OZChannel(v2);
  TXTextBehavior::~TXTextBehavior(v1);
  _Unwind_Resume(a1);
}

void TXTextTrackingBehavior::~TXTextTrackingBehavior(TXTextTrackingBehavior *this)
{
  *this = &unk_2872052E0;
  *(this + 2) = &unk_2872055A0;
  *(this + 6) = &unk_2872057F8;
  *(this + 42) = &unk_287205850;
  OZChannel::~OZChannel((this + 840));
  OZChannelPercent::~OZChannelPercent((this + 688));
  OZChannel::~OZChannel((this + 536));

  TXTextBehavior::~TXTextBehavior(this);
}

{
  TXTextTrackingBehavior::~TXTextTrackingBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXTextTrackingBehavior::~TXTextTrackingBehavior(TXTextTrackingBehavior *this)
{
  TXTextTrackingBehavior::~TXTextTrackingBehavior((this - 16));
}

{
  TXTextTrackingBehavior::~TXTextTrackingBehavior((this - 48));
}

{
  TXTextTrackingBehavior::~TXTextTrackingBehavior((this - 336));
}

{
  TXTextTrackingBehavior::~TXTextTrackingBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextTrackingBehavior::~TXTextTrackingBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextTrackingBehavior::~TXTextTrackingBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t TXTextTrackingBehavior::operator=(uint64_t a1, const void *a2)
{
  TXTextBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 536, (v4 + 536));
  OZChannelBase::operator=(a1 + 688, (v5 + 688));
  result = OZChannelBase::operator=(a1 + 840, (v5 + 840));
  *(a1 + 1000) = v5[1000];
  return result;
}

char *TXTextTrackingBehavior::didAddToNode(char *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
    v3 = this;
    if (this)
    {
      v4 = this;
      *(v3 + 992) = this;
      *(v3 + 1000) = 1;
      OZChannel::getValueAsDouble((this + 60520), MEMORY[0x277CC08F0], 0.0);
      v5 = (v3 + 688);
      if (v6 >= 4.0)
      {
        OZChannelBase::resetFlag(v5, 2, 0);
        OZChannelBase::setFlag((v3 + 536), 2, 0);
      }

      else
      {
        OZChannelBase::setFlag(v5, 2, 0);
        OZChannelBase::resetFlag((v3 + 536), 2, 0);
      }

      OZChannelBehavior::didAddToNode(v3, lpsrc);
      OZChannel::getValueAsDouble((v4 + 60520), MEMORY[0x277CC08F0], 0.0);
      operator new();
    }
  }

  return this;
}

void TXTextTrackingBehavior::willRemove(TXTextLayout **this)
{
  TXTextLayout::invalidateLayout(this[124]);
  TXTextLayout::setAllParagraphsDirty(this[124]);

  OZChannelBehavior::willRemove(this);
}

void TXTextTrackingBehavior::getMultiplier(TXTextTrackingBehavior *this, CMTime *a2)
{
  memset(&v14, 0, sizeof(v14));
  (*(**(*(this + 47) + 32) + 336))(&v14);
  v13[0] = v14;
  if ((*(*this + 296))(this, v13, 1, 1, 1))
  {
    (*(*this + 608))(v13, this, 0.0);
    v15 = v13[0];
    time = v14;
    v3.n128_f64[0] = PC_CMTimeSaferSubtract(&time, &v15, &v12);
    v4 = (*(*this + 336))(this, v3);
    OZSceneSettings::getFrameDuration((v4 + 336), &v15);
    operator/(&v12.value, &v15, &time);
    Seconds = CMTimeGetSeconds(&time);
    time = v13[1];
    CMTimeGetSeconds(&time);
    (*(*this + 336))(this);
    v6 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((this + 840), MEMORY[0x277CC08F0], 0.0);
    memset(&time, 0, sizeof(time));
    v7 = (*(*this + 336))(this);
    OZScene::getCurrentTime(v7, &time);
    OZChannel::getValueAsDouble((*(this + 124) + 60520), v6, 0.0);
    v9 = v8;
    v10 = (*(*this + 336))(this);
    OZSceneSettings::getFrameDuration((v10 + 336), &v12);
    operator*(&v12, &v15, Seconds);
    if (v9 >= 4.0)
    {
      v11 = (this + 688);
    }

    else
    {
      v11 = (this + 536);
    }

    OZChannel::getValueAsDouble(v11, &v15, 0.0);
    OZBehavior::getSceneFrameRate(this);
  }
}

void TXCollectionEnum::TXCollectionEnum(TXCollectionEnum *this, unsigned int a2, const PCString *a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7, OZChannelImpl *a8, OZChannelInfo *a9)
{
  OZChannelEnum::OZChannelEnum(this, a2, a3, a4, a5, a6, a7, a8, a9);
  *v9 = &unk_2872058A8;
  v9[2] = &unk_287205C18;
}

void TXCollectionEnum::TXCollectionEnum(TXCollectionEnum *this, const TXCollectionEnum *a2, OZChannelFolder *a3)
{
  OZChannelEnum::OZChannelEnum(this, a2, a3);
  *v3 = &unk_2872058A8;
  v3[2] = &unk_287205C18;
}

void non-virtual thunk toTXCollectionEnum::~TXCollectionEnum(PCString *this)
{
  OZChannelEnum::~OZChannelEnum(this - 2);
}

{
  OZChannelEnum::~OZChannelEnum(this - 2);

  JUMPOUT(0x2666E9F00);
}

void TXCollectionEnum::~TXCollectionEnum(PCString *this)
{
  OZChannelEnum::~OZChannelEnum(this);

  JUMPOUT(0x2666E9F00);
}

void TXOldSequenceCurveNode::~TXOldSequenceCurveNode(TXOldSequenceCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

void TXOldSequenceCurveNode::solveNode(TXOldSequenceCurveNode *this, const CMTime *a2, double a3, double a4)
{
  ValueAsInt = OZChannel::getValueAsInt((*(this + 4) + 29688), MEMORY[0x277CC08F0], 0.0);
  v9 = *(this + 4);
  if (ValueAsInt)
  {
    TXSequenceParams::getInfluence((v9 + 27720), a2, a3);
    memset(&time, 0, sizeof(time));
    v15 = *a2;
    TXSequenceParams::objectLocalToGlobalTime((v9 + 27720), &v15, &time);
    OZChannel::getValueAsDouble(*(this + 5), &time, 0.0);
  }

  else
  {
    (*(**(this + 2) + 320))(&v13);
    time = *a2;
    v15 = v13;
    v10.n128_f64[0] = PC_CMTimeSaferAdd(&time, &v15, &v14);
    v11 = (*(**(this + 4) + 336))(v10);
    operator*(&v14, &time, *(v11 + 368));
    Seconds = CMTimeGetSeconds(&time);
    TXSequenceParams::getValue((v9 + 27720), Seconds, a3, *(this + 5), a4);
  }
}

double TXSequenceParams::getValue(TXSequenceParams *this, Float64 a2, double a3, OZChannel *a4, double a5)
{
  memset(&v46, 0, sizeof(v46));
  v10 = (*(**this + 336))(*this);
  OZSceneSettings::getFrameDuration((v10 + 336), v45);
  operator*(v45, &v46, a2);
  v11 = *this;
  v45[0] = v46;
  if ((*(*v11 + 296))())
  {
    if (OZChannel::getValueAsInt((this + 696), MEMORY[0x277CC08F0], 0.0))
    {
      v39 = TXSequenceParams::shuffle(this, a3, a2);
    }

    else
    {
      v39 = a3;
    }

    (*(**this + 608))(v45);
    time = v45[1];
    Seconds = CMTimeGetSeconds(&time);
    v13 = Seconds * *((*(**this + 336))() + 368);
    time = v45[0];
    v14 = CMTimeGetSeconds(&time);
    v37 = a2 - v14 * *((*(**this + 336))() + 368);
    v43 = 0.0;
    v44 = 0.0;
    TXTextSequenceBehavior::getKeyframeExtent(*this, &v44, &v43);
    if (vabdd_f64(v43, v44) >= 0.0000001)
    {
      v16 = v43 - v44;
    }

    else
    {
      v16 = v13;
    }

    v38 = v16;
    NumObjects = TXSequenceParams::getNumObjects(this, v15);
    v18 = (*(**this + 336))();
    OZSceneSettings::getFrameDuration((v18 + 336), &v47);
    operator*(&v47, &time, a2);
    OZChannel::getValueAsDouble((this + 1816), &time, 0.0);
    v20 = -1.0 / (v19 + 1.0) + 1.0;
    v21 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((this + 544), MEMORY[0x277CC08F0], 0.0);
    v23 = v22;
    v24 = v13 / (v22 * (NumObjects - (NumObjects + -1.0) * v20));
    v25 = (1.0 - v20) * (v24 * TXSequenceParams::charIndexToSelectionIndex(this, v39, a2));
    v26 = v13 / v23;
    v27 = v37 / (v13 / v23);
    v28 = fmax(floor(v27 + 0.0000001), 0.0);
    v29 = v27 - v28;
    ValueAsInt = OZChannel::getValueAsInt((this + 136), v21, 0.0);
    v31 = OZChannel::getValueAsInt((this + 1000), v21, 0.0);
    v32 = 1.0 - v29;
    if (v31 != 1)
    {
      v32 = v29;
    }

    if (ValueAsInt == 1 && (v28 & 0x80000001) == 1)
    {
      v32 = 1.0 - v32;
    }

    v33 = v38 * ((v26 * v32 - v25) / v24);
    v34 = (*(**this + 336))(*this);
    OZSceneSettings::getFrameDuration((v34 + 336), &v40);
    operator*(&v40, &v41, v33);
    v47 = v45[0];
    time = v41;
    PC_CMTimeSaferAdd(&time, &v47, &v42);
    OZChannel::getValueAsDouble(a4, &v42, 0.0);
    return v35;
  }

  return a5;
}

double TXSequenceParams::getInfluence(TXSequenceParams *this, const CMTime *a2, double a3)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator((this + 8));
  memset(&v31, 0, sizeof(v31));
  v29 = *a2;
  TXSequenceParams::objectLocalToGlobalTime(this, &v29, &v31);
  v7 = *this;
  v29 = v31;
  v8 = 0.0;
  if ((*(*v7 + 296))())
  {
    if (!OZChannel::getValueAsInt((this + 1968), MEMORY[0x277CC08F0], 0.0))
    {
      return 1.0;
    }

    if (OZChannelBase::isEnabled((this + 8), 0, 1))
    {
      v9 = *(*(*ObjectManipulator + 216))(ObjectManipulator);
      (*(v9 + 712))(&v29);
      time2 = v29;
      time1 = v31;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        *&v31.value = *&v29.value;
        epoch = v29.epoch;
      }

      else
      {
        v10 = (*(*ObjectManipulator + 264))(ObjectManipulator);
        OZSceneSettings::getFrameDuration((v10 + 336), &v26);
        time1 = v29;
        time2 = v30;
        PC_CMTimeSaferAdd(&time1, &time2, &v32);
        time1 = v32;
        *&time2.value = v26;
        time2.epoch = v27;
        PC_CMTimeSaferSubtract(&time1, &time2, &v28);
        time1 = v31;
        time2 = v28;
        if (CMTimeCompare(&time1, &time2) < 1)
        {
LABEL_10:
          time1 = v31;
          Seconds = CMTimeGetSeconds(&time1);
          v14 = Seconds * *((*(*ObjectManipulator + 264))(ObjectManipulator) + 368);
          v15 = TXSequenceParams::charIndexToSelectionIndex(this, a3, v14);
          v8 = 0.0;
          if (OZChannel::getValueAsInt((this + 696), MEMORY[0x277CC08F0], 0.0))
          {
            LODWORD(v15) = TXSequenceParams::shuffle(this, v15, v14);
          }

          v16 = TXSequenceParams::normalizeIndex(this, v15, v14);
          time1 = v31;
          Offset = TXSequenceParams::getOffset(this, &time1);
          time1 = v31;
          v18 = Offset + TXSequenceParams::getStart(this, &time1);
          time1 = v31;
          TXSequenceParams::getEnd(this, &time1);
          v20 = Offset + v19;
          if (v18 <= Offset + v19)
          {
            time1 = v31;
            Span = TXSequenceParams::getSpan(this, &time1);
            OZChannel::getValueAsDouble((this + 1816), &v31, 0.0);
            v23 = Span * v22;
            if (v18 - v23 <= v16)
            {
              if (v16 >= v18)
              {
                v8 = 1.0;
                if (v16 >= v20)
                {
                  v24 = v20 + v23;
                  v8 = 0.0;
                  if (v24 > v16)
                  {
                    return 1.0 - (v16 - v20) / (v24 - v20);
                  }
                }
              }

              else
              {
                return (v16 - (v18 - v23)) / (v18 - (v18 - v23)) + 0.0;
              }
            }
          }

          return v8;
        }

        v11 = (*(*ObjectManipulator + 264))(ObjectManipulator);
        OZSceneSettings::getFrameDuration((v11 + 336), &v26);
        time1 = v29;
        time2 = v30;
        PC_CMTimeSaferAdd(&time1, &time2, &v32);
        time1 = v32;
        *&time2.value = v26;
        time2.epoch = v27;
        PC_CMTimeSaferSubtract(&time1, &time2, &v28);
        *&v31.value = *&v28.value;
        epoch = v28.epoch;
      }

      v31.epoch = epoch;
      goto LABEL_10;
    }
  }

  return v8;
}

double TXSequenceParams::objectLocalToGlobalTime@<D0>(TXSequenceParams *this@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator((this + 8));
  v6 = *(*(*ObjectManipulator + 232))(ObjectManipulator);
  v7 = *(*(v6 + 640))();
  (*(v7 + 320))(&v9);
  v11 = *a2;
  v10 = v9;
  return PC_CMTimeSaferAdd(&v11, &v10, a3);
}

void TXSequenceInfluenceCurveNode::~TXSequenceInfluenceCurveNode(TXSequenceInfluenceCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

void TXSequenceParams::TXSequenceParams(TXSequenceParams *this, OZChannelFolder *a2, unsigned int a3, TXTextSequenceBehavior *a4)
{
  *this = a4;
  v7 = (this + 8);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Params");
  OZChannelFolder::OZChannelFolder(v7, &v9, a2, a3, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Offset Behavior Enum");
  PCURL::PCURL(&v8, @"Text Sequence Behavior Offset Behavior");
  OZChannelEnum::OZChannelEnum((this + 136), &v9, &v8, v7, 0x6Bu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Offset");
  OZChannelPercent::OZChannelPercent((this + 392), 0.0, &v9, v7, 0x6Cu, 2u, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Repeat");
  OZChannelDouble::OZChannelDouble((this + 544), 1.0, &v9, v7, 0x6Du, 16, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Random");
  OZChannelBool::OZChannelBool((this + 696), &v9, v7, 0x69u, 0, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Random Seed");
  OZChannelSeed::OZChannelSeed((this + 848), &v9, v7, 0x6Eu, 0, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Offset Direction Enum");
  PCURL::PCURL(&v8, @"Text Sequence Behavior Offset Direction");
  OZChannelEnum::OZChannelEnum((this + 1000), &v9, &v8, v7, 0x68u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Select Enum");
  PCURL::PCURL(&v8, @"Text Sequence Behavior Select");
  OZChannelEnum::OZChannelEnum((this + 1256), &v9, &v8, v7, 0x64u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Start");
  OZChannelPercent::OZChannelPercent((this + 1512), 0.0, &v9, v7, 0x65u, 2u, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior End");
  OZChannelPercent::OZChannelPercent((this + 1664), 0.1, &v9, v7, 0x66u, 2u, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Spread");
  OZChannelDouble::OZChannelDouble((this + 1816), 1.0, &v9, v7, 0x67u, 0, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Text Sequence Behavior Map Animation Enum");
  PCURL::PCURL(&v8, @"Text Sequence Behavior Map Animation");
  OZChannelEnum::OZChannelEnum((this + 1968), 1u, &v9, &v8, v7, 0x6Au, 16, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  *(this + 139) = 0u;
  OZChannel::setMin((this + 392), -1.0);
  OZChannel::setSliderMin((this + 392), -1.0);
  OZChannel::setKeyframable((this + 544), 0);
  OZChannel::setMin((this + 544), 0.0);
  OZChannel::setMin((this + 1816), 0.0);
  OZChannel::setSliderMin((this + 1816), 0.0);
}

void sub_25FB6EB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v13 + 1816));
  OZChannelPercent::~OZChannelPercent((v13 + 1664));
  OZChannelPercent::~OZChannelPercent((v13 + 1512));
  OZChannelEnum::~OZChannelEnum((v13 + 1256));
  OZChannelEnum::~OZChannelEnum((v13 + 1000));
  OZChannel::~OZChannel((v13 + 848));
  OZChannelBool::~OZChannelBool((v13 + 696));
  OZChannel::~OZChannel((v13 + 544));
  OZChannelPercent::~OZChannelPercent((v13 + 392));
  OZChannelEnum::~OZChannelEnum((v13 + 136));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void TXSequenceParams::TXSequenceParams(TXSequenceParams *this, const TXSequenceParams *a2, OZChannelFolder *a3, TXTextSequenceBehavior *a4)
{
  *this = a4;
  v6 = (this + 136);
  OZChannelFolder::OZChannelFolder((this + 8), (a2 + 8), a3);
  OZChannelEnum::OZChannelEnum(v6, (a2 + 136), (this + 8));
  OZChannelPercent::OZChannelPercent((this + 392), (a2 + 392), (this + 8));
  OZChannel::OZChannel((this + 544), (a2 + 544), (this + 8));
  *(this + 68) = &unk_287245C60;
  *(this + 70) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 696), (a2 + 696), (this + 8));
  OZChannel::OZChannel((this + 848), (a2 + 848), (this + 8));
  *(this + 106) = &unk_287247AE0;
  *(this + 108) = &unk_287247E40;
  OZChannelEnum::OZChannelEnum((this + 1000), (a2 + 1000), (this + 8));
  OZChannelEnum::OZChannelEnum((this + 1256), (a2 + 1256), (this + 8));
  OZChannelPercent::OZChannelPercent((this + 1512), (a2 + 1512), (this + 8));
  OZChannelPercent::OZChannelPercent((this + 1664), (a2 + 1664), (this + 8));
  OZChannel::OZChannel((this + 1816), (a2 + 1816), (this + 8));
  *(this + 227) = &unk_287245C60;
  *(this + 229) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 1968), (a2 + 1968), (this + 8));
  *(this + 278) = 0;
  *(this + 558) = 0;
  *(this + 559) = *(a2 + 559);
}

void sub_25FB6EEC4(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v5);
  OZChannelPercent::~OZChannelPercent((v1 + 1664));
  OZChannelPercent::~OZChannelPercent((v1 + 1512));
  OZChannelEnum::~OZChannelEnum((v1 + 1256));
  OZChannelEnum::~OZChannelEnum((v1 + 1000));
  OZChannel::~OZChannel(v4);
  OZChannelBool::~OZChannelBool((v1 + 696));
  OZChannel::~OZChannel(v3);
  OZChannelPercent::~OZChannelPercent((v1 + 392));
  OZChannelEnum::~OZChannelEnum(v2);
  OZChannelFolder::~OZChannelFolder((v1 + 8));
  _Unwind_Resume(a1);
}

void TXSequenceParams::~TXSequenceParams(TXSequenceParams *this)
{
  v2 = *(this + 278);
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C8052888210);
    *(this + 278) = 0;
  }

  OZChannelEnum::~OZChannelEnum((this + 1968));
  OZChannel::~OZChannel((this + 1816));
  OZChannelPercent::~OZChannelPercent((this + 1664));
  OZChannelPercent::~OZChannelPercent((this + 1512));
  OZChannelEnum::~OZChannelEnum((this + 1256));
  OZChannelEnum::~OZChannelEnum((this + 1000));
  OZChannel::~OZChannel((this + 848));
  OZChannelBool::~OZChannelBool((this + 696));
  OZChannel::~OZChannel((this + 544));
  OZChannelPercent::~OZChannelPercent((this + 392));
  OZChannelEnum::~OZChannelEnum((this + 136));
  OZChannelFolder::~OZChannelFolder((this + 8));
}

double TXSequenceParams::getOffset(TXSequenceParams *this, CMTime *a2)
{
  v4 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((this + 136), a2, 0.0);
  v6 = MEMORY[0x277CC08F0];
  v7 = OZChannel::getValueAsInt((this + 1256), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt >= 5)
  {
    if (ValueAsInt == 5)
    {
      v28 = 1.0 / TXSequenceParams::getNumObjects(this, v8);
      OZChannel::getValueAsDouble((this + 1816), a2, 0.0);
      v30 = v29 * v28 + 1.0;
      OZChannel::getValueAsDouble((this + 392), a2, 0.0);
      v32 = v31;
      v33 = OZChannel::getValueAsInt((this + 1000), a2, 0.0);
      v34 = 1.0 - v32;
      if (v33 != 1)
      {
        v34 = v32;
      }

      return v30 * v34 + 0.0;
    }
  }

  else
  {
    v9 = v7;
    ObjectManipulator = OZChannelBase::getObjectManipulator((this + 8));
    if (ObjectManipulator)
    {
      v11 = *(*(*ObjectManipulator + 216))(ObjectManipulator);
      (*(v11 + 712))(&v42);
      v41 = v43;
      time1 = v43;
      time2 = *v6;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        v13 = 1.0 / TXSequenceParams::getNumObjects(this, v12);
        v14 = 0.0;
        OZChannel::getValueAsDouble((this + 1816), a2, 0.0);
        v16 = v15;
        v17 = -(v15 * v13) - v13;
        if (v9 != 3)
        {
          v14 = v17;
        }

        v18 = (*(**this + 336))();
        OZSceneSettings::getFrameDuration((v18 + 336), &v39);
        time1 = v41;
        *&time2.value = v39;
        time2.epoch = v40;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          v19 = (*(**this + 336))(*this);
          OZSceneSettings::getFrameDuration((v19 + 336), &v39);
          time1 = v41;
          *&time2.value = v39;
          time2.epoch = v40;
          PC_CMTimeSaferSubtract(&time1, &time2, &v41);
        }

        v20 = v16 * v13;
        OZChannel::getValueAsDouble((this + 544), a2, 0.0);
        operator/(&v41.value, &time1, v21);
        v41 = time1;
        if (ValueAsInt == 1)
        {
          operator/(&v41.value, &time1, 2.0);
          v41 = time1;
        }

        v22 = v20 + 1.0;
        time2 = v42;
        time1 = *a2;
        PC_CMTimeSaferSubtract(&time1, &time2, &v39);
        operator/(&v39, &v41, &time1);
        Seconds = CMTimeGetSeconds(&time1);
        if (OZChannel::getValueAsInt((this + 1000), a2, 0.0) == 1)
        {
          v24 = 0;
          v25 = floor(Seconds + 0.0000001);
          v26 = v25 > 0.0 && v25 == Seconds;
          v27 = v25 - Seconds + 1.0;
          if (v26)
          {
            v27 = 0.0;
          }
        }

        else
        {
          v35 = fmax(floor(Seconds + -0.000001 + 0.0000001), 0.0);
          v27 = Seconds - v35;
          if (v35 >= 0)
          {
            v24 = v35 & 1;
          }

          else
          {
            v24 = -(v35 & 1);
          }
        }

        v36 = v22 - v14;
        v4 = v14 + v36 * v27;
        switch(ValueAsInt)
        {
          case 4u:
            v37 = sin((v4 - v14) * 3.14159265 / v36 + -1.57079633) * 0.5 + 0.5;
            return v14 + v36 * v37;
          case 3u:
            v37 = sin((v4 - v14) * 3.14159265 / v36 * 0.5);
            return v14 + v36 * v37;
          case 2u:
            v37 = 1.0 - cos((v4 - v14) * 3.14159265 / v36 * 0.5);
            return v14 + v36 * v37;
        }

        if (ValueAsInt == 1 && (!OZChannel::getValueAsInt((this + 1000), a2, 0.0) && v24 == 1 || OZChannel::getValueAsInt((this + 1000), a2, 0.0) == 1 && !v24))
        {
          return 1.0 - v4;
        }
      }
    }
  }

  return v4;
}

uint64_t TXSequenceParams::getNumObjects(TXSequenceParams *this, const CMTime *a2)
{
  v3 = *(*this + 27704);
  ValueAsInt = OZChannel::getValueAsInt((this + 1256), MEMORY[0x277CC08F0], 0.0);
  result = 1;
  if (ValueAsInt > 1)
  {
    switch(ValueAsInt)
    {
      case 2:
        return v3[4831];
      case 3:
        if (!OZChannel::getValueAsInt((this + 1968), MEMORY[0x277CC08F0], 0.0))
        {
          return 1;
        }

        break;
      case 4:
        break;
      default:
        return result;
    }

    goto LABEL_13;
  }

  if (!ValueAsInt)
  {
LABEL_13:
    StringPtr = TXChannelString::getStringPtr((v3 + 4762));

    return PCString::size(StringPtr);
  }

  if (ValueAsInt == 1)
  {
    v6 = *(*v3 + 224);

    return v6(v3);
  }

  return result;
}

double TXSequenceParams::getStart(TXSequenceParams *this, CMTime *a2)
{
  if (OZChannel::getValueAsInt((this + 1256), a2, 0.0) != 4)
  {
    return 0.0;
  }

  OZChannel::getValueAsDouble((this + 1512), a2, 0.0);
  return result;
}

void TXSequenceParams::getEnd(TXSequenceParams *this, CMTime *a2)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 1256), a2, 0.0);
  if (ValueAsInt >= 3)
  {
    if (ValueAsInt == 4)
    {

      OZChannel::getValueAsDouble((this + 1664), a2, 0.0);
    }
  }

  else
  {
    v5 = *a2;
    TXSequenceParams::getSpan(this, &v5);
  }
}

double TXSequenceParams::getSpan(TXSequenceParams *this, CMTime *a2)
{
  v2 = *(*this + 27704);
  ValueAsInt = OZChannel::getValueAsInt((this + 1256), a2, 0.0);
  v4 = 1.0;
  if (ValueAsInt <= 1)
  {
    if (ValueAsInt)
    {
      if (ValueAsInt != 1)
      {
        return 1.0 / v4;
      }

      v5 = (*(*v2 + 224))(v2, 1.0);
LABEL_10:
      v4 = v5;
      return 1.0 / v4;
    }

LABEL_9:
    StringPtr = TXChannelString::getStringPtr((v2 + 4762));
    v5 = PCString::size(StringPtr);
    goto LABEL_10;
  }

  if (ValueAsInt == 2)
  {
    LODWORD(v4) = v2[4831];
    v4 = *&v4;
    return 1.0 / v4;
  }

  if (ValueAsInt == 4 || ValueAsInt == 3)
  {
    goto LABEL_9;
  }

  return 1.0 / v4;
}

uint64_t TXSequenceParams::shuffle(TXSequenceParams *this, const CMTime *a2, Float64 a3)
{
  result = TXSequenceParams::getNumObjects(this, a2);
  if (result)
  {
    v7 = result;
    ValueAsInt = OZChannel::getValueAsInt((this + 848), MEMORY[0x277CC08F0], 0.0);
    if (*(this + 558) != v7 || ValueAsInt != *(this + 559))
    {
      v10 = *(this + 278);
      if (v10)
      {
        MEMORY[0x2666E9ED0](v10, 0x1000C8052888210);
        *(this + 278) = 0;
      }

      operator new[]();
    }

    v9 = *(this + 278);
    return *(v9 + 4 * TXSequenceParams::charIndexToSelectionIndex(this, a2, a3));
  }

  return result;
}

uint64_t TXSequenceParams::charIndexToSelectionIndex(TXSequenceParams *this, uint64_t a2, Float64 a3)
{
  memset(&v12, 0, sizeof(v12));
  v6 = (*(**this + 336))(*this);
  OZSceneSettings::getFrameDuration((v6 + 336), &v11);
  operator*(&v11, &v12, a3);
  v7 = *(*this + 27704);
  ValueAsInt = OZChannel::getValueAsInt((this + 1256), &v12, 0.0);
  if (ValueAsInt <= 1)
  {
    if (!ValueAsInt)
    {
      return a2;
    }

    if (ValueAsInt != 1)
    {
      return 0;
    }

    return (*(*v7 + 720))(v7, a2);
  }

  switch(ValueAsInt)
  {
    case 2:
      return TXTextLayout::getLineIndex(v7, a2);
    case 3:
      if (OZChannel::getValueAsInt((this + 1968), MEMORY[0x277CC08F0], 0.0))
      {
        return a2;
      }

      else
      {
        return 0;
      }

    case 4:
      return a2;
    default:
      return 0;
  }
}

double TXSequenceParams::normalizeIndex(TXSequenceParams *this, unsigned int a2, Float64 a3)
{
  memset(&v16, 0, sizeof(v16));
  v6 = (*(**this + 336))(*this);
  OZSceneSettings::getFrameDuration((v6 + 336), &v15);
  operator*(&v15, &v16, a3);
  v7 = *(*this + 27704);
  v8 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((this + 1256), &v16, 0.0);
  if (ValueAsInt > 2)
  {
    if ((ValueAsInt - 3) > 1)
    {
      return v8;
    }

    goto LABEL_8;
  }

  switch(ValueAsInt)
  {
    case 0:
LABEL_8:
      v11 = a2 + 0.5;
      StringPtr = TXChannelString::getStringPtr((v7 + 4762));
      v13 = PCString::size(StringPtr);
      return v11 / v13;
    case 1:
      v11 = a2 + 0.5;
      v13 = (*(*v7 + 224))(v7);
      return v11 / v13;
    case 2:
      v10 = v7[4831];
      v8 = a2;
      if (v10 != 1)
      {
        return (v8 + 0.5) / v10;
      }

      break;
  }

  return v8;
}

void TXTextSequenceBehavior::getKeyframeExtent(TXTextSequenceBehavior *this, double *a2, double *a3)
{
  v3 = *(this + 69);
  v4 = *(this + 68);
  if (v3 == v4)
  {
    *a2 = 0.0;
    *a3 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = *v4;
      if ((*(*v4 + 56) & 0x1000) != 0)
      {
        memset(&time, 0, sizeof(time));
        OZChannelFolder::getAllDescendantsFlattened(v15, &time, 0, 0);
        value = time.value;
        v16 = *&time.timescale;
        if (time.value != *&time.timescale)
        {
          do
          {
            if (*value)
            {
            }

            else
            {
              v18 = 0;
            }

            OZChannel::getKeyframeMinTime(v18, &v25);
            v28 = v25;
            OZChannel::getKeyframeMaxTime(v18, &v25);
            v27 = v25;
            v25 = v28;
            Seconds = CMTimeGetSeconds(&v25);
            v25 = v27;
            v20 = CMTimeGetSeconds(&v25);
            if (v6 <= Seconds)
            {
              v21 = v6;
            }

            else
            {
              v21 = Seconds;
            }

            if (v7 >= v20)
            {
              v22 = v7;
            }

            else
            {
              v22 = v20;
            }

            if (v5)
            {
              v7 = v22;
            }

            else
            {
              v7 = v20;
            }

            if (v5)
            {
              v6 = v21;
            }

            else
            {
              v6 = Seconds;
            }

            ++value;
            v5 = 1;
          }

          while (value != v16);
          value = time.value;
        }

        if (value)
        {
          *&time.timescale = value;
          operator delete(value);
        }
      }

      else
      {
        OZChannel::getKeyframeMinTime(v9, &v28);
        OZChannel::getKeyframeMaxTime(v9, &v27);
        time = v28;
        v10 = CMTimeGetSeconds(&time);
        time = v27;
        v11 = CMTimeGetSeconds(&time);
        if (v6 <= v10)
        {
          v12 = v6;
        }

        else
        {
          v12 = v10;
        }

        if (v7 >= v11)
        {
          v13 = v7;
        }

        else
        {
          v13 = v11;
        }

        v14 = (v5 & 1) == 0;
        v5 = 1;
        if (v14)
        {
          v7 = v11;
        }

        else
        {
          v7 = v13;
        }

        if (v14)
        {
          v6 = v10;
        }

        else
        {
          v6 = v12;
        }
      }

      v4 += 8;
    }

    while (v4 != v3);
    *a2 = v6;
    *a3 = v7;
  }
}

void sub_25FB6FEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TXTextSequenceBehavior::TXTextSequenceBehavior(TXTextSequenceBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3, a4);
  *v5 = &unk_287205E48;
  v5[2] = &unk_287206100;
  v5[6] = &unk_287206358;
  v5[42] = &unk_2872063B0;
  TXSequenceChannels::TXSequenceChannels((v5 + 67), (this + 56), 0xCAu);
  *(this + 27704) = 0u;
  TXSequenceParams::TXSequenceParams((this + 27720), (this + 56), 0xC9u, this);
}

void sub_25FB6FFF0(_Unwind_Exception *a1)
{
  TXSequenceChannels::~TXSequenceChannels((v1 + 536));
  TXTextBehavior::~TXTextBehavior(v1);
  _Unwind_Resume(a1);
}

void TXTextSequenceBehavior::TXTextSequenceBehavior(TXTextSequenceBehavior *this, const TXTextSequenceBehavior *a2, char a3)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3);
  *v5 = &unk_287205E48;
  v5[2] = &unk_287206100;
  v5[6] = &unk_287206358;
  v5[42] = &unk_2872063B0;
  TXSequenceChannels::TXSequenceChannels((v5 + 67), (a2 + 536), (this + 56));
  *(this + 3463) = *(a2 + 3463);
  *(this + 3464) = 0;
  TXSequenceParams::TXSequenceParams((this + 27720), (a2 + 27720), (this + 56), this);
}

void sub_25FB700F4(_Unwind_Exception *a1)
{
  TXSequenceChannels::~TXSequenceChannels((v1 + 536));
  TXTextBehavior::~TXTextBehavior(v1);
  _Unwind_Resume(a1);
}

void TXTextSequenceBehavior::~TXTextSequenceBehavior(TXTextSequenceBehavior *this)
{
  *this = &unk_287205E48;
  *(this + 2) = &unk_287206100;
  *(this + 6) = &unk_287206358;
  *(this + 42) = &unk_2872063B0;
  TXSequenceParams::~TXSequenceParams((this + 27720));
  TXSequenceChannels::~TXSequenceChannels((this + 536));

  TXTextBehavior::~TXTextBehavior(this);
}

{
  TXTextSequenceBehavior::~TXTextSequenceBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXTextSequenceBehavior::~TXTextSequenceBehavior(TXTextSequenceBehavior *this)
{
  TXTextSequenceBehavior::~TXTextSequenceBehavior((this - 16));
}

{
  TXTextSequenceBehavior::~TXTextSequenceBehavior((this - 48));
}

{
  TXTextSequenceBehavior::~TXTextSequenceBehavior((this - 336));
}

{
  TXTextSequenceBehavior::~TXTextSequenceBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextSequenceBehavior::~TXTextSequenceBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextSequenceBehavior::~TXTextSequenceBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

__n128 TXTextSequenceBehavior::operator=(uint64_t a1, const void *a2)
{
  TXTextBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  TXSequenceChannels::operator=(a1 + 536, (v4 + 536));
  *(a1 + 27720) = *(v5 + 3465);
  OZChannelFolder::operator=(a1 + 27728);
  OZChannelBase::operator=(a1 + 27856, (v5 + 27856));
  OZChannelBase::operator=(a1 + 28112, (v5 + 28112));
  OZChannelBase::operator=(a1 + 28264, (v5 + 28264));
  OZChannelBase::operator=(a1 + 28416, (v5 + 28416));
  OZChannelBase::operator=(a1 + 28568, (v5 + 28568));
  OZChannelBase::operator=(a1 + 28720, (v5 + 28720));
  OZChannelBase::operator=(a1 + 28976, (v5 + 28976));
  OZChannelBase::operator=(a1 + 29232, (v5 + 29232));
  OZChannelBase::operator=(a1 + 29384, (v5 + 29384));
  OZChannelBase::operator=(a1 + 29536, (v5 + 29536));
  OZChannelBase::operator=(a1 + 29688, (v5 + 29688));
  result = *(v5 + 29944);
  *(a1 + 29944) = result;
  *(a1 + 27720) = a1;
  return result;
}

OZChannelBehavior *TXTextSequenceBehavior::didAddToNode(OZChannelBehavior *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
    v3 = this;
    if (this)
    {
      *(v3 + 3463) = this;
      OZChannelBehavior::didAddToNode(v3, lpsrc);

      return TXTextSequenceBehavior::sequenceBehaviorDidLoad(v3);
    }
  }

  return this;
}

uint64_t TXTextSequenceBehavior::sequenceBehaviorDidLoad(TXTextSequenceBehavior *this)
{
  if (!*(this + 3464))
  {
    operator new();
  }

  result = TXSequenceChannels::removeTrackingChannel((this + 536), 1045);
  v3 = *(this + 68);
  for (i = *(this + 69); v3 != i; ++v3)
  {
    v5 = *v3;
    if (((*v3)->var7 & 0x1000) != 0)
    {
      v6 = *(result + 112);
      v7 = *v6;
      v8 = v6[1];
      while (v7 != v8)
      {
        v9 = *v7;
        result = OZChannelBase::testFlag(*v7, 2);
        if ((result & 1) == 0)
        {
          result = TXTextSequenceBehavior::addChannel(this, v9);
        }

        ++v7;
      }
    }

    else
    {
      result = OZChannelBase::testFlag(*v3, 2);
      if ((result & 1) == 0)
      {
        result = TXTextSequenceBehavior::addChannel(this, v5);
      }
    }
  }

  return result;
}

OZChannelFolder *TXTextSequenceBehavior::addChannel(TXTextSequenceBehavior *this, OZChannelBase *a2)
{
  OZChannelBase::resetFlag(a2, 2, 0);
  var6 = a2->var6;
  if (var6)
  {
    OZChannelBase::resetFlag(var6, 2, 0);
  }

  Channel = TXSequenceChannels::findChannel((*(this + 3463) + 25032), a2->var3, 0, 0);

  return TXTextSequenceBehavior::addSequenceNodes(this, a2, Channel);
}

void TXTextSequenceBehavior::willRemove(TXTextSequenceBehavior *this)
{
  OZChannel::deleteCurveProcessingNode((*(this + 3463) + 24880), *(this + 3464));
  v10 = *(this + 3464);
  std::list<OZBehaviorCurveNode *>::remove(this + 344, &v10);
  v2 = *(this + 3463);
  v3 = *(v2 + 25040);
  for (i = *(v2 + 25048); v3 != i; ++v3)
  {
    v5 = *v3;
    if (((*v3)->var7 & 0x1000) != 0)
    {
      v7 = *v6;
      v8 = v6[1];
      while (v7 != v8)
      {
        v9 = *v7++;
        TXTextSequenceBehavior::removeChannel(this, v9);
      }
    }

    else
    {
      TXTextSequenceBehavior::removeChannel(this, v5);
    }
  }

  OZChannelBehavior::clearChannels(this);
  OZChannelBehavior::willRemove(this);
}

char *TXTextSequenceBehavior::removeChannel(TXTextSequenceBehavior *this, OZChannelBase *a2)
{
  OZChannelBase::setFlag(a2, 2, 0);
  var6 = a2->var6;
  if (var6)
  {
    v5 = *(var6 + 14);
    v6 = *v5;
    v7 = v5[1];
    while (v6 != v7)
    {
      if (!OZChannelBase::testFlag(*v6, 2))
      {
        goto LABEL_7;
      }

      ++v6;
    }

    OZChannelBase::setFlag(var6, 2, 0);
  }

LABEL_7:
  if ((a2->var7 & 0x1000) != 0)
  {
    v9 = *(result + 14);
    if (v9)
    {
      v10 = *v9;
      v11 = v9[1];
      while (v10 != v11)
      {
        v12 = *v10++;
        result = TXTextSequenceBehavior::removeCurveNodes(this, v12);
      }
    }
  }

  else
  {

    return TXTextSequenceBehavior::removeCurveNodes(this, a2);
  }

  return result;
}

OZChannelFolder *TXTextSequenceBehavior::addSequenceNodes(TXTextSequenceBehavior *this, OZChannelBase *a2, OZChannelBase *a3)
{
  if ((a2->var7 & 0x1000) != 0)
  {
    v9 = v7[14];
    v10 = v8[14];
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *v9;
      if (*v9 != v9[1])
      {
        v13 = *v10;
        do
        {
          if (v13 == v10[1])
          {
            break;
          }

          v15 = *v12++;
          v14 = v15;
          v16 = *v13++;
          TXTextSequenceBehavior::addSequenceNodes(this, v14, v16);
        }

        while (v12 != v9[1]);
      }
    }
  }

  else
  {
    {
      operator new();
    }
  }

  (*(a2->var0 + 13))(a2, 1, 0);
  var6 = a2->var6;
  if (var6)
  {
    (*(*var6 + 104))(var6, 1, 0);
  }

  (*(a3->var0 + 13))(a3, 1, 0);
  result = a3->var6;
  if (result)
  {
    v19 = *(*result + 104);

    return v19();
  }

  return result;
}

char *TXTextSequenceBehavior::removeCurveNodes(char *this, OZChannelBase *a2)
{
  v2 = (this + 344);
  v3 = *(this + 44);
  if (v3 != this + 344)
  {
    var6 = a2->var6;
    do
    {
      v5 = v3 + 8;
      v3 = *(v3 + 1);
      this = v5[1];
      if (this)
      {
        if (this)
        {
          v6 = this;
          v7 = *(this + 2);
          if (a2->var3 == v7->var3 && (!var6 || (v8 = v7->var6) == 0 || *(var6 + 6) == *(v8 + 6)))
          {
            OZChannel::deleteCurveProcessingNode(*(this + 2), this);
            v16 = v6;
            std::list<OZBehaviorCurveNode *>::remove(v2, &v16);
            NumberOfCurveProcessingNodes = OZChannel::getNumberOfCurveProcessingNodes(v7);
            if (!NumberOfCurveProcessingNodes)
            {
              (*(v7->var0 + 13))(v7, 0, 0);
            }

            v10 = v7->var6;
            this = (*(*v10 + 120))(v10);
            if (!this)
            {
              goto LABEL_15;
            }

            if (!NumberOfCurveProcessingNodes)
            {
              this = (*(*v10 + 104))(v10, 0, 0);
            }

            v10 = *(v10 + 6);
            if (v10)
            {
LABEL_15:
              v11 = *(v10 + 14);
              v12 = *v11;
              v13 = v11[1];
              while (v12 != v13)
              {
                if (*v12)
                {
                  if (v14)
                  {
                    this = OZChannel::getNumberOfCurveProcessingNodes(v14);
                    if (this)
                    {
                      goto LABEL_22;
                    }
                  }
                }

                ++v12;
              }

              this = (*(*v10 + 104))(v10, 0, 0);
            }
          }
        }
      }

LABEL_22:
      ;
    }

    while (v3 != v2);
  }

  return this;
}

double TXTextSequenceBehavior::calcHashForState(uint64_t a1, void *a2, CMTime *a3, uint64_t a4)
{
  OZBehavior::calcHashForState(a1, a2, a3, a4);
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  v9 = *PCHashWriteStream::getHash(v5)->i8;
  (*(*a2 + 40))(a2);
  Hash = PCHashWriteStream::getHash(v6);
  PCHash128::operator+=(&v9, Hash);
  *&result = PCHashWriteStream::setHash(v6, &v9).n128_u64[0];
  return result;
}

uint64_t TXTextSequenceBehavior::getPreviewSceneNode(TXTextSequenceBehavior *this)
{
  PCSharedCount::PCSharedCount(&v8);
  NextUniqueID = OZChannelBase::getNextUniqueID(v1);
  v3 = TXTextInput::create(&v8, NextUniqueID);
  PCString::~PCString(&v8);
  v4 = MEMORY[0x277CC08F0];
  v8 = **&MEMORY[0x277CC08F0];
  PCURL::PCURL(&v6, @"Text Behavior Preview Text");
  (*(*v3 + 144))(v3, &v8, &v6);
  PCString::~PCString(&v6);
  TXTextLayout::didFinishInitializing(v3, 1);
  TXTextLayout::getCurrentStyleForInsertion(v3, &v6);
  if (v6.var0)
  {
    v8 = *v4;
    OZChannel::setValue(&v6.var0[61].length, &v8, 16.0, 0);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v3 + 200;
}

void sub_25FB710DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, PCString a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextSequenceBehavior::parseEnd(TXTextSequenceBehavior *this, PCSerializerReadStream *a2)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 27856), MEMORY[0x277CC08F0], 0.0);
  if (*(a2 + 26) == 1 && ValueAsInt == 1)
  {
    OZChannel::getValueAsDouble((this + 28264), MEMORY[0x277CC08F0], 0.0);
    OZChannel::setDefaultValue((this + 28264), v6 * 0.5);
    (*(*(this + 3533) + 288))(this + 28264, 0);
  }

  if (((*(*(this + 308) + 496))(this + 2464, 1) & 1) == 0 && ((*(*(this + 327) + 496))(this + 2616, 1) & 1) == 0 && ((*(*(this + 346) + 496))(this + 2768, 1) & 1) == 0)
  {
    OZChannelBase::operator=(this + 2768, this + 3184);
    OZChannelBase::resetFlag((this + 2768), 2, 1);
    if (OZChannelBase::testFlag((this + 3184), 2))
    {
      OZChannelBase::setFlag((this + 2328), 2, 1);
    }

    else
    {
      OZChannelBase::resetFlag((this + 2328), 2, 1);
    }
  }

  v7 = *(a2 + 26);
  if (v7 <= 2)
  {
    OZChannel::scaleChannel((this + 5824), 2.0);
    OZChannel::scaleChannel((this + 10656), 2.0);
    OZChannel::scaleChannel((this + 15896), 2.0);
    OZChannel::scaleChannel((this + 22280), 2.0);
    v7 = *(a2 + 26);
  }

  if (v7 <= 3)
  {
    copy1DBlurChannelTo2DBlurChannel(this + 52, (this + 5384));
    copy1DBlurChannelTo2DBlurChannel((this + 10656), (this + 10216));
    copy1DBlurChannelTo2DBlurChannel((this + 15896), (this + 15456));
    copy1DBlurChannelTo2DBlurChannel((this + 22280), (this + 21840));
  }

  return OZBehavior::parseEnd(this, a2);
}

OZChannelBase *copy1DBlurChannelTo2DBlurChannel(OZChannelBase *a1, OZChannel2D *a2)
{
  OZChannelBase::operator=(a2 + 136, a1);
  OZChannelBase::operator=(a2 + 288, a1);
  OZChannelBase::resetFlag((a2 + 136), 8, 1);
  OZChannelBase::resetFlag((a2 + 288), 8, 1);
  OZChannelBase::resetFlag(a2, 2, 1);
  OZChannelBase::resetFlag(a2, 8, 1);
  if (OZChannelBase::testFlag(a1, 2))
  {
    OZChannelBase::setFlag(a2, 2, 1);
  }

  else
  {
    OZChannelBase::resetFlag(a2, 2, 1);
  }

  return OZChannelBase::setFlag(a1, 0x400000, 1);
}

void TXChannelFont::TXChannelFont(TXChannelFont *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannelFontBase::OZChannelFontBase(this, a2, a3, a4, a5, a6);
  *v7 = &unk_287206420;
  *(v7 + 2) = &unk_287206790;
  Instance = TXFontManager::getInstance(v7);
  OZFontManagerBase::getDefaultSystemFont(&v9);
  OZChannelFontBase::init(this, Instance, &v9);
  OZChannelBase::setParameterCtlrClassName(this, @"TXFontController");
  PCString::~PCString(&v9);
}

void TXChannelFont::TXChannelFont(TXChannelFont *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = TXChannelFont_Factory::getInstance(this);

  TXChannelFont::TXChannelFont(this, Instance, a2, a3, a4, a5);
}

void TXChannelFont::TXChannelFont(TXChannelFont *this, const TXChannelFont *a2, OZChannelFolder *a3)
{
  OZChannelFontBase::OZChannelFontBase(this, a2, a3);
  v3->var0 = &unk_287206420;
  v3->var2 = &unk_287206790;
  OZChannelBase::setParameterCtlrClassName(v3, @"TXFontController");
}

void TXChannelFont::reset(TXChannelFont *this, uint64_t a2)
{
  OZChannelBase::reset(this, a2);
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  TXTextStylePtrFromObjectManipulator(ObjectManipulator, &v5);
  if (v5)
  {
    if (PCString::empty(this + 82))
    {
      (*(*this + 824))(&v4, this);
    }

    else
    {
      PCString::PCString(&v4, this + 82);
    }

    (*(*v5 + 168))(v5, &v4, 1);
    PCString::~PCString(&v4);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_25FB717B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, std::__shared_weak_count *a12)
{
  PCString::~PCString(&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void TXChannelFont::undoDidReplace(OZChannelFolder *this)
{
  OZChannelFolder::undoDidReplace(this);
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  TXTextStylePtrFromObjectManipulator(ObjectManipulator, &v3);
  if (v3)
  {
    TXTextStyle::clearCachedFontFace(v3);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_25FB71830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *TXChannelFont::didLoadFontName(OZChannelBase *this)
{
  result = OZChannelBase::getObjectManipulator(this);
  if (result)
  {
    if (result)
    {
      v2 = *(*result + 168);

      return v2();
    }
  }

  return result;
}

void TXChannelFont::~TXChannelFont(PCString *this)
{
  OZChannelFontBase::~OZChannelFontBase(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXChannelFont::~TXChannelFont(PCString *this)
{
  OZChannelFontBase::~OZChannelFontBase(this - 2);
}

{
  OZChannelFontBase::~OZChannelFontBase(this - 2);

  JUMPOUT(0x2666E9F00);
}

uint64_t HTextureBlend::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v13 = v12;
  v14 = HGRenderer::GetInput(a2, this, 1u);
  v15 = HGRenderer::GetDOD(a2, v14);
  if (a3)
  {
    v17 = DOD;
    v18 = v13;
    v19 = v6;
    v20 = v5;
  }

  else
  {
    v19 = v15;
    v20 = v16;
    v17 = v6;
    v18 = v5;
  }

  return HGRectIntersection(v17, v18, v19, v20);
}

void HTextureBlend::~HTextureBlend(HGNode *this)
{
  HgcTXModulate::~HgcTXModulate(this);

  HGObject::operator delete(v1);
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector2<double>>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t std::__tree<PCHash128>::__count_unique<PCHash128>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if (!operator<(a2, (v2 + 28)))
      {
        if (!operator<((v2 + 28), a2))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::__tree<PCHash128>::__emplace_unique_key_args<PCHash128,PCHash128 const&>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<PCHash128>::__find_equal<PCHash128>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<PCHash128>::__find_equal<PCHash128>(uint64_t a1, void *a2, const PCHash128 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!operator<(a3, (v4 + 28)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!operator<((v7 + 28), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

const char *HgcTXAlpha::GetProgram(HgcTXAlpha *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000236\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0)*hg_Params[0];\n    return output;\n}\n//MD5=5499c239:9891868e:bd9ea6d3:bd30d467\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000228\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0*hg_Params[0];\n    return output;\n}\n//MD5=6eae314a:ee581af3:fdfce447:74b07bd6\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001f6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0*hg_ProgramLocal0;\n}\n//MD5=78149511:5c47b7fc:9d3dfb0a:c601ba4b\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FB71E2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FB71F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FB71F6C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FB71F64);
}

uint64_t HgcTXAlpha::BindTexture(HgcTXAlpha *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcTXAlpha::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[62], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcTXAlpha::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 80);
    v7 = 16 * *(a2 + 88);
    v8 = 16 * *(a2 + 24);
    do
    {
      if (v4 < 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v12 = **(a1 + 496);
          v13 = vmulq_f32(*(v6 + v10 - 16), v12);
          v14 = vmulq_f32(*(v6 + v10), v12);
          v15 = vmulq_f32(*(v6 + v10 + 16), v12);
          v16 = (v5 + v10);
          v16[-2] = vmulq_f32(*(v6 + v10 - 32), v12);
          v16[-1] = v13;
          *v16 = v14;
          v16[1] = v15;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          *(v5 + 16 * v9) = vmulq_f32(*(v6 + 16 * v9), **(a1 + 496));
          ++v9;
        }

        while (v9 < v4);
      }

      ++v3;
      v6 += v7;
      v5 += v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcTXAlpha::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcTXAlpha::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcTXAlpha::~HgcTXAlpha(HgcTXAlpha *this)
{
  *this = &unk_287206A68;
  v2 = *(this + 62);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  HgcTXAlpha::~HgcTXAlpha(this);

  HGObject::operator delete(v1);
}

uint64_t HgcTXAlpha::SetParameter(HgcTXAlpha *this, uint64_t a2, __n128 a3, float a4, float a5, double a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 62);
  if (v8->n128_f32[0] == *&a6 && v8->n128_f32[1] == *&a6 && v8->n128_f32[2] == *&a6 && v8->n128_f32[3] == *&a6)
  {
    return 0;
  }

  a3.n128_f32[1] = a4;
  a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  *v8 = vdupq_lane_s32(*&a6, 0);
  v8[9] = a3;
  v7 = 1;
  *(this + 126) = 1;
  HGNode::ClearBits(this, a2, a7);
  return v7;
}

float HgcTXAlpha::GetParameter(HgcTXAlpha *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 62);
    *a3 = v3[36];
    a3[1] = v3[37];
    a3[2] = v3[38];
    result = v3[39];
    a3[3] = result;
  }

  return result;
}

HGNode *HgcTXAlpha::GetOutput(__n128 *this, HGRenderer *a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (this[31].n128_u32[2])
  {
    v5 = this[31].n128_u64[0];
    a4 = vmulq_f32(v5[6], *v5);
    a5 = vmulq_f32(v5[7], *v5);
    v6 = vmulq_f32(v5[8], *v5);
    v5[1] = vmulq_f32(v5[5], *v5);
    *(this[31].n128_u64[0] + 32) = a4;
    *(this[31].n128_u64[0] + 48) = a5;
    *(this[31].n128_u64[0] + 64) = v6;
    v7 = this[31].n128_u64[0];
    this[27] = v7[1];
    this[28] = v7[2];
    this[29] = v7[3];
    a3 = v7[4];
    this[30] = a3;
    this[31].n128_u32[2] = 0;
  }

  return HGColorMatrix::GetOutput(this, a2, a3.n128_f64[0], a4.n128_f64[0], a5.n128_u64[0]);
}

const char *HgcTXPremulColor::GetProgram(HgcTXPremulColor *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000001b6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut output;\n\n    output.color0.w = hg_Params[0].w;\n    output.color0.xyz = hg_Params[0].xyz*hg_Params[0].www;\n    return output;\n}\n//MD5=a5c19c7c:730d39de:48b920fb:a280a93c\n//SIG=00400000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000001b6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut output;\n\n    output.color0.w = hg_Params[0].w;\n    output.color0.xyz = hg_Params[0].xyz*hg_Params[0].www;\n    return output;\n}\n//MD5=a5c19c7c:730d39de:48b920fb:a280a93c\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001a8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp vec4 hg_ProgramLocal0;\nvoid main()\n{\n\n    gl_FragColor.w = hg_ProgramLocal0.w;\n    gl_FragColor.xyz = hg_ProgramLocal0.xyz*hg_ProgramLocal0.www;\n}\n//MD5=6e3bf428:c715c4f4:d1d5c186:d5aa37ca\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
  }
}

void sub_25FB725E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v31 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v31 - 56), "FragmentOut");
  *(v31 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v30, v31 - 64);
  if (*(v31 - 33) < 0)
  {
    operator delete(*(v31 - 56));
  }

  memset(v36, 0, 24);
  LODWORD(v32) = 2;
  std::string::basic_string[abi:ne200100]<0>(&v33, "float4");
  v35 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v36, &v32);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  HGProgramDescriptor::SetArgumentBindings(v30, v36);
  v32 = v36;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v32);
}

void sub_25FB726A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  a10 = &a19;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_25FB726D8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FB726D0);
}

uint64_t HgcTXPremulColor::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcTXPremulColor::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = v5 + 2;
    v7 = 16 * *(a2 + 24);
    do
    {
      if (v4 < 4)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = v6;
        for (i = v4; i > 3; i -= 4)
        {
          v11 = vbslq_s8(*(*(a1 + 408) + 16), **(a1 + 408), vmulq_laneq_f32(**(a1 + 408), **(a1 + 408), 3));
          v9[-2] = v11;
          v9[-1] = v11;
          *v9 = v11;
          v9[1] = v11;
          v9 += 4;
          v8 += 4;
        }
      }

      if (v8 < v4)
      {
        do
        {
          v5[v8++] = vbslq_s8(*(*(a1 + 408) + 16), **(a1 + 408), vmulq_laneq_f32(**(a1 + 408), **(a1 + 408), 3));
        }

        while (v8 < v4);
      }

      ++v3;
      v6 = (v6 + v7);
      v5 = (v5 + v7);
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcTXPremulColor::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcTXPremulColor::HgcTXPremulColor(HgcTXPremulColor *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287206CE0;
  operator new();
}

void HgcTXPremulColor::~HgcTXPremulColor(HGNode *this)
{
  *this = &unk_287206CE0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  HgcTXPremulColor::~HgcTXPremulColor(this);

  HGObject::operator delete(v1);
}

uint64_t HgcTXPremulColor::SetParameter(HgcTXPremulColor *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcTXPremulColor::GetParameter(HgcTXPremulColor *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

const char *HgcTXGlowMix::GetProgram(HgcTXGlowMix *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000029e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r0 = clamp(r0.wwww*half4(hg_Params[0]), 0.00000h, 1.00000h);\n    r0 = half4(hg_Params[1])*r0;\n    output.color0 = float4(r0)*float4(r0.wwww);\n    return output;\n}\n//MD5=d13ab9e4:f9602b4c:6bdbf93d:fd6c672a\n//SIG=00400000:00000001:00000001:00000001:0000:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000027b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.w = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r0 = clamp(r0.wwww*hg_Params[0], 0.00000f, 1.00000f);\n    r0 = hg_Params[1]*r0;\n    output.color0 = r0*r0.wwww;\n    return output;\n}\n//MD5=972021ef:6831d6bb:0c2f8c81:0f83b167\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000027f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0.w = texture2D(hg_Texture0, hg_TexCoord0.xy).w;\n    r0 = clamp(r0.wwww*hg_ProgramLocal0, vec4(0.00000), vec4(1.00000));\n    r0 = hg_ProgramLocal1*r0;\n    gl_FragColor = r0*r0.wwww;\n}\n//MD5=1578383b:5660ee4d:6e591614:1a4b03c4\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FB72B78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344940;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FB72C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FB72CB8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FB72CB0);
}

uint64_t HgcTXGlowMix::BindTexture(HgcTXGlowMix *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcTXGlowMix::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcTXGlowMix::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 80);
    v7 = 16 * *(a2 + 88);
    v8 = 16 * *(a2 + 24);
    do
    {
      if (v4 < 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v12 = *(a1 + 408);
          v13 = v12[1];
          v14 = v12[2];
          v15 = v12[3];
          v16 = vmulq_f32(vminq_f32(vmaxq_f32(vmulq_laneq_f32(*v12, *(v6 + v10 - 32), 3), v14), v15), v13);
          v17 = vmulq_f32(vminq_f32(vmaxq_f32(vmulq_laneq_f32(*v12, *(v6 + v10 - 16), 3), v14), v15), v13);
          v18 = vmulq_f32(vminq_f32(vmaxq_f32(vmulq_laneq_f32(*v12, *(v6 + v10), 3), v14), v15), v13);
          v19 = vmulq_f32(vminq_f32(vmaxq_f32(vmulq_laneq_f32(*v12, *(v6 + v10 + 16), 3), v14), v15), v13);
          v20 = (v5 + v10);
          v20[-2] = vmulq_laneq_f32(v16, v16, 3);
          v20[-1] = vmulq_laneq_f32(v17, v17, 3);
          *v20 = vmulq_laneq_f32(v18, v18, 3);
          v20[1] = vmulq_laneq_f32(v19, v19, 3);
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v21 = vmulq_f32(vminq_f32(vmaxq_f32(vmulq_laneq_f32(**(a1 + 408), *(v6 + 16 * v9), 3), *(*(a1 + 408) + 32)), *(*(a1 + 408) + 48)), *(*(a1 + 408) + 16));
          *(v5 + 16 * v9++) = vmulq_laneq_f32(v21, v21, 3);
        }

        while (v9 < v4);
      }

      ++v3;
      v6 += v7;
      v5 += v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcTXGlowMix::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcTXGlowMix::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcTXGlowMix::HgcTXGlowMix(HgcTXGlowMix *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287206F48;
  operator new();
}

void HgcTXGlowMix::~HgcTXGlowMix(HGNode *this)
{
  *this = &unk_287206F48;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcTXGlowMix::~HgcTXGlowMix(this);

  HGObject::operator delete(v1);
}

uint64_t HgcTXGlowMix::SetParameter(HgcTXGlowMix *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 1)
  {
    v9 = *(this + 51);
    if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a4 || *(v9 + 24) != a5 || *(v9 + 28) != a6)
    {
      *(v9 + 16) = a3.n128_u32[0];
      *(v9 + 20) = a4;
      *(v9 + 24) = a5;
      *(v9 + 28) = a6;
      goto LABEL_13;
    }
  }

  else
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(this + 51);
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a3.n128_f32[0] || *(v7 + 8) != a3.n128_f32[0] || *(v7 + 12) != a3.n128_f32[0])
    {
      v8 = vdupq_lane_s32(a3.n128_u64[0], 0);
      a3.n128_f32[1] = a4;
      *v7 = v8;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v7 + 64) = a3;
LABEL_13:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcTXGlowMix::GetParameter(HgcTXGlowMix *this, int a2, float *a3)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 28;
    v4 = 24;
    v5 = 20;
    v6 = 16;
  }

  else
  {
    v3 = 76;
    v4 = 72;
    v5 = 68;
    v6 = 64;
  }

  v7 = 0;
  v8 = *(this + 51);
  *a3 = *(v8 + v6);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v4);
  a3[3] = *(v8 + v3);
  return v7;
}

const char *HgcTXModulate::GetProgram(HgcTXModulate *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000307\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0.wwww*half4(hg_Params[0]);\n    output.color0 = float4(r1)*float4(r0);\n    return output;\n}\n//MD5=1d09d869:7cd955f7:353fc8a1:a9ec9d54\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002e4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.w = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0.wwww*hg_Params[0];\n    output.color0 = r1*r0;\n    return output;\n}\n//MD5=15c9e9d3:f22bf7b9:996454d7:a5632a63\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000028e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0.w = texture2D(hg_Texture0, hg_TexCoord0.xy).w;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0.wwww*hg_ProgramLocal0;\n    gl_FragColor = r1*r0;\n}\n//MD5=5eb97ec9:baab9bfc:5b1e2b66:f6a473a6\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FB73390(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FB734D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FB73518()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FB73510);
}

uint64_t HgcTXModulate::BindTexture(HgcTXModulate *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcTXModulate::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcTXModulate::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 96);
    v7 = 16 * *(a2 + 88);
    v8 = *(a2 + 80);
    v9 = 16 * *(a2 + 104);
    v10 = 16 * *(a2 + 24);
    do
    {
      if (v4 < 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v14 = **(a1 + 408);
          v15 = vmulq_f32(*(v6 + v12 - 16), vmulq_laneq_f32(v14, *(v8 + v12 - 16), 3));
          v16 = vmulq_f32(*(v6 + v12), vmulq_laneq_f32(v14, *(v8 + v12), 3));
          v17 = vmulq_f32(*(v6 + v12 + 16), vmulq_laneq_f32(v14, *(v8 + v12 + 16), 3));
          v18 = (v5 + v12);
          v18[-2] = vmulq_f32(*(v6 + v12 - 32), vmulq_laneq_f32(v14, *(v8 + v12 - 32), 3));
          v18[-1] = v15;
          *v18 = v16;
          v18[1] = v17;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          *(v5 + 16 * v11) = vmulq_f32(*(v6 + 16 * v11), vmulq_laneq_f32(**(a1 + 408), *(v8 + 16 * v11), 3));
          ++v11;
        }

        while (v11 < v4);
      }

      ++v3;
      v8 += v7;
      v6 += v9;
      v5 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcTXModulate::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcTXModulate::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcTXModulate::HgcTXModulate(HgcTXModulate *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872071B0;
  operator new();
}

void HgcTXModulate::~HgcTXModulate(HGNode *this)
{
  *this = &unk_2872071B0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);
}

{
  HgcTXModulate::~HgcTXModulate(this);

  HGObject::operator delete(v1);
}

uint64_t HgcTXModulate::SetParameter(HgcTXModulate *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcTXModulate::GetParameter(HgcTXModulate *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

NSString *PCReplaceUnsupportedXMLChars(NSString *a1, NSString *a2)
{
  v2 = a1;
  if (a1 && [(NSString *)a1 length])
  {
    v2 = [MEMORY[0x277CCAB68] stringWithString:v2];
    v5 = 0;
    [objc_msgSend(MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[\x00-\b]|\v|\f|[\x0E-\x1F]" options:0 error:{&v5), "replaceMatchesInString:options:range:withTemplate:", v2, 0, 0, -[NSString length](v2, "length"), a2}];
  }

  return v2;
}

BOOL compareVertex(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 > v3)
  {
    return 0;
  }

  if (v2 < v3)
  {
    return 1;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 > v6)
  {
    return 0;
  }

  return v5 < v6;
}

BOOL PCEdgeSegment::operator<(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 > v3)
  {
    v4 = a2[2];
    v5 = a2[3] - v3;
    v6 = v5 * (a1[2] - v4);
    v7 = v2 - v3;
    v8 = a2[4] - v4;
    v9 = v7 * v8;
    if (vabdd_f64(v6, v9) < 0.0000001)
    {
      return v5 * (a1[4] - v4) - v8 * (a1[3] - v3) <= 0.0;
    }

    return v6 - v9 < 0.0;
  }

  v11 = a1[2];
  v12 = a1[3];
  v13 = a2[2];
  v14 = (v12 - v2) * (v13 - v11);
  v15 = v3 - v2;
  v16 = a1[4] - v11;
  v17 = v15 * v16;
  if (vabdd_f64(v14, v17) >= 0.0000001)
  {
    v19 = v14 - v17 <= 0.0;
  }

  else
  {
    if (vabdd_f64(v2, v12) < 0.0000001)
    {
      return v11 < v13;
    }

    v19 = (v12 - v2) * (a2[4] - v11) <= v16 * (a2[3] - v2);
  }

  return !v19;
}

void *PCVertexList::PCVertexList(void *a1, uint64_t *a2)
{
  a1[2] = 0;
  v3 = 0uLL;
  *a1 = 0u;
  v4 = a2[1] - *a2;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = v4 >> 4;
    if ((v4 >> 4) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v4 >> 4;
    }

    do
    {
      v21 = 0u;
      v22 = 0u;
      v18 = 0u;
      v19 = 0u;
      *&v20 = v7;
      v10 = *a2;
      v21 = *(*a2 + v6);
      if (v7 + 1 == v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v7 + 1;
      }

      v22 = *(v10 + 16 * v11);
      *&v17 = v7;
      v18 = *(v10 + 16 * v11);
      v19 = *(v10 + v6);
      if (*&v21 > *&v18 || *&v21 >= *&v18 && *(&v21 + 1) >= *(&v18 + 1))
      {
        v12 = 0;
        v13 = 1;
      }

      else
      {
        v13 = 0;
        v12 = 1;
      }

      *(&v20 + 1) = v13;
      *(&v17 + 1) = v12;
      std::vector<PCEdgeVertex>::push_back[abi:ne200100](a1, &v20);
      std::vector<PCEdgeVertex>::push_back[abi:ne200100](a1, &v17);
      v6 += 16;
      ++v7;
    }

    while (v7 != v9);
    v3 = *a1;
  }

  v14 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v3 + 1) - v3) >> 4));
  *&v20 = compareVertex;
  if (*(&v3 + 1) == v3)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,false>(v3, *(&v3 + 1), &v20, v15, 1);
  return a1;
}

void sub_25FB73DA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PCEdgeVertex>::push_back[abi:ne200100](void *a1, _OWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<PCEdgeVertex>::__emplace_back_slow_path<PCEdgeVertex const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    result = (v3 + 3);
  }

  a1[1] = result;
  return result;
}

uint64_t PCSweepline::PCSweepline(uint64_t a1, __int128 **a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a1 != a2)
  {
    std::vector<PCVector2<double>>::__assign_with_size[abi:ne200100]<PCVector2<double>*,PCVector2<double>*>(a1, *a2, a2[1], a2[1] - *a2);
  }

  return a1;
}

void sub_25FB73E68(_Unwind_Exception *a1)
{
  PCBinaryTree<PCEdgeSegment>::~PCBinaryTree((v1 + 24));
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void PCSweepline::~PCSweepline(PCSweepline *this)
{
  PCBinaryTree<PCEdgeSegment>::~PCBinaryTree(this + 3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t PCSweepline::addSegment(uint64_t a1, unint64_t *a2)
{
  v10 = 0u;
  v11 = 0u;
  v9 = *a2;
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = *(*a1 + 16 * (v9 % v3));
  v5 = *(*a1 + 16 * ((v9 + 1) % v3));
  if ((vmovn_s64(vcgtq_f64(v4, v5)).u8[0] & 1) != 0 || (v6 = vmovn_s64(vcgtq_f64(v5, v4)), ((v6.i32[0] | v6.i32[1]) & 1) == 0))
  {
    v7 = *(*a1 + 16 * ((v9 + 1) % v3));
  }

  else
  {
    v7 = *(*a1 + 16 * (v9 % v3));
    v4 = *(*a1 + 16 * ((v9 + 1) % v3));
  }

  v10 = v7;
  v11 = v4;
  PCBinaryTree<PCEdgeSegment>::insertNode((a1 + 24), &v9);
  return PCBinaryTree<PCEdgeSegment>::findNode(a1 + 24, *(a1 + 24), &v9);
}

uint64_t *PCBinaryTree<PCEdgeSegment>::insertNode(uint64_t **a1, double *a2)
{
  v3 = *a1;
  if (!*a1)
  {
    operator new();
  }

  return PCBinaryTree<PCEdgeSegment>::insertNode(a1, v3, a2);
}

uint64_t PCBinaryTree<PCEdgeSegment>::findNode(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = *a3;
    while (*v3 != *&v5)
    {
      if (PCEdgeSegment::operator<(a3, v3))
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          return v3;
        }
      }

      else
      {
        v3 = *(v3 + 48);
        if (!v3)
        {
          return v3;
        }
      }
    }
  }

  return v3;
}

BOOL PCSweepline::intersect(void *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a2 && a3)
  {
    v5 = (a1[1] - *a1) >> 4;
    if ((*a2 + 1) % v5 == *a3)
    {
      return 0;
    }

    if ((*a3 + 1) % v5 == *a2)
    {
      return 0;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    v10 = *(a3 + 8);
    v11 = *(a3 + 16);
    v13 = *(a3 + 24);
    v12 = *(a3 + 32);
    return ((v8 - v6) * (v11 - v7) - (v10 - v6) * (v9 - v7)) * ((v8 - v6) * (v12 - v7) - (v9 - v7) * (v13 - v6)) <= 0.0 && ((v7 - v11) * (v13 - v10) - (v6 - v10) * (v12 - v11)) * ((v9 - v11) * (v13 - v10) - (v8 - v10) * (v12 - v11)) <= 0.0;
  }

  return result;
}

uint64_t *PCBinaryTree<PCEdgeSegment>::removeNode(uint64_t **a1, uint64_t a2, double *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a1;
  if (*a2 == *a3)
  {
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    v9 = *a1;
    if (*(a2 + 40) != 0)
    {
      if (v6 && !v7)
      {
        if (v8)
        {
          v10 = (v8 + 40);
          if (*(v8 + 40) == a2 || (v10 = (v8 + 48), *(v8 + 48) == a2))
          {
            *v10 = v6;
            v6[7] = v8;
          }
        }

        if (v9 == a2)
        {
          *a1 = 0;
          MEMORY[0x2666E9F00](a2, 0x1020C40CB6E4C77);
          *v5 = v6;
          v6[7] = 0;
        }

        else
        {
          MEMORY[0x2666E9F00](a2, 0x1020C40CB6E4C77);
        }

        goto LABEL_26;
      }

      if (!v6 && v7)
      {
        if (v8)
        {
          v19 = (v8 + 40);
          if (*(v8 + 40) == a2 || (v19 = (v8 + 48), *(v8 + 48) == a2))
          {
            *v19 = v7;
            v7[7] = v8;
          }
        }

        if (v9 == a2)
        {
          *a1 = 0;
          MEMORY[0x2666E9F00](a2, 0x1020C40CB6E4C77);
          *v5 = v7;
          v7[7] = 0;
        }

        else
        {
          MEMORY[0x2666E9F00](a2, 0x1020C40CB6E4C77);
        }

        v6 = v7;
        goto LABEL_26;
      }

      v20 = *(a2 + 48);
      do
      {
        v13 = v20;
        v20 = *(v20 + 40);
      }

      while (v20);
      v21 = *v13;
      v22 = *(v13 + 1);
      *(a2 + 32) = v13[4];
      *a2 = v21;
      *(a2 + 16) = v22;
      v12 = v7;
      goto LABEL_15;
    }

    if (v8)
    {
      v15 = (v8 + 40);
      if (*(v8 + 40) == a2)
      {
LABEL_22:
        *v15 = 0;
        goto LABEL_23;
      }

      v17 = *(v8 + 48);
      v16 = (v8 + 48);
      if (v17 == a2)
      {
        v15 = v16;
        goto LABEL_22;
      }
    }

LABEL_23:
    if (v9 == a2)
    {
      *a1 = 0;
    }

    MEMORY[0x2666E9F00](a2, 0x1020C40CB6E4C77);
    v6 = 0;
    goto LABEL_26;
  }

  if (!PCEdgeSegment::operator<(a2, a3))
  {
    v14 = PCBinaryTree<PCEdgeSegment>::removeNode(v5, *(a2 + 40), a3);
    *(a2 + 40) = v14;
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v12 = *(a2 + 48);
  a1 = v5;
  v13 = a3;
LABEL_15:
  v14 = PCBinaryTree<PCEdgeSegment>::removeNode(a1, v12, v13);
  *(a2 + 48) = v14;
  if (v14)
  {
LABEL_16:
    *(v14 + 56) = a2;
  }

LABEL_17:
  v6 = a2;
LABEL_26:
  v18 = *v5;
  result = PCBinaryTree<PCEdgeSegment>::balance(v5, v6);
  if (v6 == v18)
  {
    *v5 = result;
  }

  return result;
}

uint64_t PCSweepline::getSegmentAboveSegment(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 48);
  if (v2)
  {
    do
    {
      result = v2;
      v2 = *(v2 + 40);
    }

    while (v2);
    return result;
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  if (*(v4 + 40) == a2)
  {
    return *(a2 + 56);
  }

  do
  {
    result = *(v4 + 56);
    if (!result)
    {
      break;
    }

    v5 = *(result + 40) == v4;
    v4 = *(v4 + 56);
  }

  while (!v5);
  return result;
}

uint64_t PCSweepline::getSegmentBelowSegment(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 40);
  if (v2)
  {
    do
    {
      result = v2;
      v2 = *(v2 + 48);
    }

    while (v2);
    return result;
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  if (*(v4 + 48) == a2)
  {
    return *(a2 + 56);
  }

  do
  {
    result = *(v4 + 56);
    if (!result)
    {
      break;
    }

    v5 = *(result + 48) == v4;
    v4 = *(v4 + 56);
  }

  while (!v5);
  return result;
}

uint64_t isSimplePolygon(uint64_t *a1)
{
  PCVertexList::PCVertexList(&__p, a1);
  PCSweepline::PCSweepline(v16, a1);
  v2 = __p;
  if (v19 == __p)
  {
LABEL_10:
    v14 = 1;
    goto LABEL_12;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = &v2[v3];
    if (!*&v2[v3 + 8])
    {
      break;
    }

    v20 = *v5;
    v22 = *(v5 + 1);
    v21 = *(v5 + 2);
    Node = PCBinaryTree<PCEdgeSegment>::findNode(&v17, v17, &v20);
    v7 = Node;
    if (Node)
    {
      SegmentAboveSegment = PCSweepline::getSegmentAboveSegment(Node, Node);
      SegmentBelowSegment = PCSweepline::getSegmentBelowSegment(SegmentAboveSegment, v7);
      if (PCSweepline::intersect(v16, SegmentAboveSegment, SegmentBelowSegment))
      {
        goto LABEL_11;
      }

      PCBinaryTree<PCEdgeSegment>::removeNode(&v17, v17, v7);
    }

LABEL_9:
    ++v4;
    v2 = __p;
    v3 += 48;
    if (v4 >= 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 4))
    {
      goto LABEL_10;
    }
  }

  v10 = PCSweepline::addSegment(v16, v5);
  v11 = PCSweepline::getSegmentAboveSegment(v10, v10);
  v12 = PCSweepline::intersect(v16, v10, v11);
  if (!v12)
  {
    v13 = PCSweepline::getSegmentBelowSegment(v12, v10);
    if (!PCSweepline::intersect(v16, v10, v13))
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v14 = 0;
LABEL_12:
  PCSweepline::~PCSweepline(v16);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_25FB745B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PCEdgeVertex>::__emplace_back_slow_path<PCEdgeVertex const&>(void *a1, _OWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PCEdgeVertex>>(a1, v6);
  }

  v7 = 48 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 16) = a2[1];
  *(v7 + 32) = a2[2];
  v12 = 48 * v2 + 48;
  std::vector<PCEdgeVertex>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 48) % 0x30uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25FB74710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PCEdgeVertex>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = *v2;
      v5[1] = v2[1];
      v5[2] = v2[2];
      v2 += 3;
      v5 += 3;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PCEdgeVertex>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,false>(__int128 *a1, __int128 *a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 3;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3uLL:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(v10, v10 + 3, a2 - 3, a3);
          return;
        case 4uLL:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(v10, v10 + 3, v10 + 6, a2 - 3, a3);
          return;
        case 5uLL:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(v10, v10 + 3, v10 + 6, v10 + 9, a2 - 3, a3);
          return;
      }
    }

    else
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v29 = *a3;
        v39 = *(a2 - 3);
        v40 = *(a2 - 2);
        v41 = *(a2 - 1);
        v30 = v10[1];
        v36 = *v10;
        v37 = v30;
        v38 = v10[2];
        if (v29(&v39, &v36))
        {
          v32 = v10[1];
          v39 = *v10;
          v33 = v10[2];
          v35 = *(a2 - 2);
          v34 = *(a2 - 1);
          *v10 = *v9;
          v10[1] = v35;
          v10[2] = v34;
          *v9 = v39;
          *(a2 - 2) = v32;
          *(a2 - 1) = v33;
        }

        return;
      }
    }

    if (v13 <= 1151)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(v10, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      break;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 < 0x1801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(v16, v10, a2 - 3, a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(v10, v16, a2 - 3, a3);
      v17 = 3 * v15;
      v18 = &v10[3 * v15 - 3];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(v10 + 3, v18, a2 - 6, a3);
      v19 = &v10[v17 + 3];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1 + 6, v19, a2 - 9, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(v18, v16, v19, a3);
      v20 = a1[1];
      v39 = *a1;
      v21 = a1[2];
      v22 = v16[2];
      v23 = *v16;
      a1[1] = v16[1];
      a1[2] = v22;
      *a1 = v23;
      *v16 = v39;
      v16[1] = v20;
      v16[2] = v21;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v24 = *a3;
    v39 = *(a1 - 3);
    v40 = *(a1 - 2);
    v41 = *(a1 - 1);
    v25 = a1[1];
    v36 = *a1;
    v37 = v25;
    v38 = a1[2];
    if (((v24)(&v39, &v36) & 1) == 0)
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PCEdgeVertex *,BOOL (*&)(PCEdgeVertex,PCEdgeVertex)>(a1, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v26 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PCEdgeVertex *,BOOL (*&)(PCEdgeVertex,PCEdgeVertex)>(a1, a2, a3);
    if ((v27 & 1) == 0)
    {
      goto LABEL_20;
    }

    v28 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(a1, v26, a3);
    v10 = v26 + 3;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(v26 + 3, a2, a3))
    {
      a4 = -v12;
      a2 = v26;
      if (v28)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v28)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,false>(a1, v26, a3, -v12, a5 & 1);
      v10 = v26 + 3;
LABEL_22:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v10 != a2)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,PCEdgeVertex*>(v10, a2, a2, a3);
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(__int128 *a1, __int128 *a2, __int128 *a3, unsigned int (**a4)(__int128 *, __int128 *))
{
  v8 = *a4;
  v9 = a2[1];
  v50 = *a2;
  v51 = v9;
  v52 = a2[2];
  v10 = a1[1];
  v47 = *a1;
  v48 = v10;
  v49 = a1[2];
  v11 = v8(&v50, &v47);
  v12 = *a4;
  if (v11)
  {
    v13 = a3[1];
    v50 = *a3;
    v51 = v13;
    v52 = a3[2];
    v14 = a2[1];
    v47 = *a2;
    v48 = v14;
    v49 = a2[2];
    if (v12(&v50, &v47))
    {
      v15 = *a1;
      v16 = a1[1];
      v17 = a1[2];
      v18 = a3[2];
      v19 = *a3;
      a1[1] = a3[1];
      a1[2] = v18;
      *a1 = v19;
LABEL_9:
      *a3 = v15;
      a3[1] = v16;
      result = 1;
      a3[2] = v17;
      return result;
    }

    v36 = *a1;
    v37 = *(a1 + 2);
    v38 = *(a1 + 3);
    v39 = *(a1 + 4);
    v40 = *(a1 + 5);
    v41 = a2[2];
    v42 = *a2;
    a1[1] = a2[1];
    a1[2] = v41;
    *a1 = v42;
    *a2 = v36;
    *(a2 + 2) = v37;
    *(a2 + 3) = v38;
    *(a2 + 4) = v39;
    *(a2 + 5) = v40;
    v43 = *a4;
    v44 = a3[1];
    v50 = *a3;
    v51 = v44;
    v52 = a3[2];
    v47 = *a2;
    *&v48 = v37;
    *(&v48 + 1) = v38;
    *&v49 = v39;
    *(&v49 + 1) = v40;
    if (v43(&v50, &v47))
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v45 = a3[2];
      v46 = *a3;
      a2[1] = a3[1];
      a2[2] = v45;
      *a2 = v46;
      goto LABEL_9;
    }
  }

  else
  {
    v20 = a3[1];
    v50 = *a3;
    v51 = v20;
    v52 = a3[2];
    v21 = a2[1];
    v47 = *a2;
    v48 = v21;
    v49 = a2[2];
    result = (v12)(&v50, &v47);
    if (!result)
    {
      return result;
    }

    v23 = *a2;
    v24 = a2[1];
    v25 = a2[2];
    v26 = a3[2];
    v27 = *a3;
    a2[1] = a3[1];
    a2[2] = v26;
    *a2 = v27;
    *a3 = v23;
    a3[1] = v24;
    a3[2] = v25;
    v28 = *a4;
    v29 = a2[1];
    v50 = *a2;
    v51 = v29;
    v52 = a2[2];
    v30 = a1[1];
    v47 = *a1;
    v48 = v30;
    v49 = a1[2];
    if (v28(&v50, &v47))
    {
      v31 = *a1;
      v32 = a1[1];
      v33 = a1[2];
      v34 = a2[2];
      v35 = *a2;
      a1[1] = a2[1];
      a1[2] = v34;
      *a1 = v35;
      *a2 = v31;
      a2[1] = v32;
      result = 1;
      a2[2] = v33;
      return result;
    }
  }

  return 1;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, unsigned int (**a5)(__int128 *, __int128 *))
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a2, a3, a5);
  v10 = *a5;
  v11 = a4[1];
  v37 = *a4;
  v38 = v11;
  v39 = a4[2];
  v12 = a3[1];
  v34 = *a3;
  v35 = v12;
  v36 = a3[2];
  if (v10(&v37, &v34))
  {
    v14 = *a3;
    v15 = a3[1];
    v16 = a3[2];
    v17 = a4[2];
    v18 = *a4;
    a3[1] = a4[1];
    a3[2] = v17;
    *a3 = v18;
    *a4 = v14;
    a4[1] = v15;
    a4[2] = v16;
    v19 = *a5;
    v20 = a3[1];
    v37 = *a3;
    v38 = v20;
    v39 = a3[2];
    v21 = a2[1];
    v34 = *a2;
    v35 = v21;
    v36 = a2[2];
    if (v19(&v37, &v34))
    {
      v22 = *a2;
      v23 = a2[1];
      v24 = a2[2];
      v25 = a3[2];
      v26 = *a3;
      a2[1] = a3[1];
      a2[2] = v25;
      *a2 = v26;
      *a3 = v22;
      a3[1] = v23;
      a3[2] = v24;
      v27 = *a5;
      v28 = a2[1];
      v37 = *a2;
      v38 = v28;
      v39 = a2[2];
      v29 = a1[1];
      v34 = *a1;
      v35 = v29;
      v36 = a1[2];
      if (v27(&v37, &v34))
      {
        result = *a1;
        v30 = a1[1];
        v31 = a1[2];
        v32 = a2[2];
        v33 = *a2;
        a1[1] = a2[1];
        a1[2] = v32;
        *a1 = v33;
        *a2 = result;
        a2[1] = v30;
        a2[2] = v31;
      }
    }
  }

  return result;
}