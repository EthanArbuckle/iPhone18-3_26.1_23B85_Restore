BOOL OZRetimingUtil::IsReversed(OZRetimingUtil *this, OZChannelObjectRoot *a2)
{
  v2 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    return 0;
  }

  while (1)
  {
    v4 = (*(*v2 + 32))(v2, this);
    if (v4)
    {
      break;
    }

    v2 = v2[1];
    if (!v2)
    {
      return 0;
    }
  }

  return OZChannel::getValueAsInt(v4, MEMORY[0x277CC08F0], 0.0) != 0;
}

OZChannel *OZRetimingUtil::SetReverse(OZChannel *this, OZChannelObjectRoot *a2)
{
  v2 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v3 = a2;
    v4 = this;
    while (1)
    {
      this = (*(*v2 + 32))(v2, v4);
      if (this)
      {
        break;
      }

      v2 = v2[1];
      if (!v2)
      {
        return this;
      }
    }

    v5 = this;
    this = OZChannel::getValueAsInt(this, MEMORY[0x277CC08F0], 0.0);
    if ((((this == 0) ^ v3) & 1) == 0)
    {
      v7 = MEMORY[0x277CC08F0];
      v8 = *(v5->var0 + 89);

      v6.n128_f64[0] = v3;
      return v8(v5, v7, 0, v6);
    }
  }

  return this;
}

void OZRetimingUtil::SetEndCondition(OZRetimingUtil *this, OZChannelObjectRoot *a2)
{
  v2 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v3 = a2;
    while (1)
    {
      v5 = (*(*v2 + 64))(v2, this);
      if (v5)
      {
        break;
      }

      v2 = v2[1];
      if (!v2)
      {
        return;
      }
    }

    if (OZChannel::getValueAsInt(v5, MEMORY[0x277CC08F0], 0.0) != v3)
    {
      v34[0] = 0;
      v34[1] = 0;
      v33 = v34;
      v7 = v33;
      if (v33 != v34)
      {
        v8 = v3;
        v9 = MEMORY[0x277CC08F0];
        do
        {
          v10 = v7[4];
          if (OZRetimingUtil::CanRetimeSimple(v10, v6))
          {
            v11 = &OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
            do
            {
              v12 = *v11;
              v13 = (*(**v11 + 64))(*v11, v10);
              v11 = (v12 + 8);
            }

            while (!v13);
            (*(*v13 + 712))(v13, v9, 0, v8);
            if (!OZRetimingUtil::GetTimeRemap(v10, v14))
            {
              v15 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
              if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
              {
                while (1)
                {
                  v16 = (*(*v15 + 48))(v15, v10);
                  if (v16)
                  {
                    break;
                  }

                  v15 = v15[1];
                  if (!v15)
                  {
                    goto LABEL_16;
                  }
                }
              }

              else
              {
LABEL_16:
                v16 = 0;
              }

              memset(&v32, 0, sizeof(v32));
              memset(&v31, 0, sizeof(v31));
              ObjectManipulator = OZChannelBase::getObjectManipulator(v10);
              memset(&v30[1], 0, sizeof(CMTime));
              (*(v10->var0 + 89))(&time1, v10, FrameDuration);
              memset(&v38, 0, sizeof(v38));
              operator*(&v31, &v38, 0.5);
              time1 = v32;
              time2 = v38;
              PC_CMTimeSaferAdd(&time1, &time2, &v37);
              time1 = v37;
              time2 = v31;
              PC_CMTimeFloorToSampleDuration(&time1, &time2, &v29);
              time1 = v30[0];
              time2 = v29;
              v20 = CMTimeCompare(&time1, &time2);
              v22 = v30;
              if (v20 < 0)
              {
                v22 = &v29;
              }

              v30[1] = *v22;
              if (OZRetimingUtil::GetEndCondition(v10, v21))
              {
                OZRetimingUtil::GetLoopDuration(v10, &v37);
                time2 = v30[1];
                v38 = v37;
                PC_CMTimeSaferAdd(&time2, &v38, &time1);
                v30[1] = time1;
              }

              (*(v10->var0 + 89))(&time1, v10);
              v36 = v30[1];
              OZChannelObjectRootBase::setTimeExtent(v10, &time1, 0);
              OZChannelObjectRoot::recomputeTimeRangeFromChildren(v10, 0, 1, 1, 1, 1);
              TimeScale = OZRetimingUtil::GetTimeScale(v10, v23);
              time2 = time1;
              v38 = v36;
              PC_CMTimeSaferAdd(&time2, &v38, &v37);
              time2 = v37;
              v38 = v31;
              PC_CMTimeSaferSubtract(&time2, &v38, v30);
            }
          }

          v26 = v7[1];
          if (v26)
          {
            do
            {
              v27 = v26;
              v26 = *v26;
            }

            while (v26);
          }

          else
          {
            do
            {
              v27 = v7[2];
              v28 = *v27 == v7;
              v7 = v27;
            }

            while (!v28);
          }

          v7 = v27;
        }

        while (v27 != v34);
      }

      std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::destroy(&v33, v34[0]);
    }
  }
}

__n128 anonymous namespace::GetDurationFromRetimingChannel@<Q0>(OZChannel *this@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v8 = 0.0;
  if (OZChannel::getFirstKeyframe(this, &v10, &v8) && OZChannel::getLastKeyframe(this, &v9, &v7))
  {
    v12 = v9;
    v11 = v10;
    result.n128_f64[0] = PC_CMTimeSaferSubtract(&v12, &v11, a2);
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    *(a2 + 16) = *(v6 + 16);
  }

  return result;
}

OZChannelBase *OZRetimingUtil::GetLoopDuration@<X0>(OZChannelBase *this@<X0>, uint64_t a2@<X8>)
{
  v4 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v5 = this;
    while (1)
    {
      this = (*(*v4 + 72))(v4, v5);
      if (this)
      {
        break;
      }

      v4 = v4[1];
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v7 = this;
    v12 = 0uLL;
    v13 = 0;
    ObjectManipulator = OZChannelBase::getObjectManipulator(v5);
    OZChannel::getValueAsDouble(v7, MEMORY[0x277CC08F0], 0.0);
    return RetimingMath::framesToFig(&v12, v11, v10);
  }

  else
  {
LABEL_5:
    v6 = MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    *(a2 + 16) = *(v6 + 16);
  }

  return this;
}

uint64_t anonymous namespace::SetConstantRetimingCurveExtrapolation(_anonymous_namespace_ *this, OZChannelObjectRoot *a2)
{
  v3 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    while (1)
    {
      v4 = (*(*v3 + 48))(v3, this);
      if (v4)
      {
        break;
      }

      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v5 = v4;
  }

  else
  {
LABEL_4:
    v5 = 0;
  }

  result = OZRetimingUtil::GetEndCondition(this, a2);
  if (result > 1)
  {
    if (result == 2)
    {
      OZRetimingUtil::GetLoopDuration(this, &v14);
      time1 = v14;
      time2 = **&MEMORY[0x277CC08F0];
      v13 = CMTimeCompare(&time1, &time2);
      v8 = *(*v5 + 384);
      if (v13)
      {
        v9 = v5;
        v10 = 2;
        return v8(v9, v10, 0);
      }
    }

    else
    {
      if (result != 3)
      {
        return result;
      }

      OZRetimingUtil::GetLoopDuration(this, &v14);
      time1 = v14;
      time2 = **&MEMORY[0x277CC08F0];
      v11 = CMTimeCompare(&time1, &time2);
      v8 = *(*v5 + 384);
      if (v11)
      {
        v9 = v5;
        v10 = 0;
        return v8(v9, v10, 0);
      }
    }

LABEL_20:
    v9 = v5;
    v10 = 1;
    return v8(v9, v10, 0);
  }

  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    OZRetimingUtil::GetLoopDuration(this, &v14);
    time1 = v14;
    time2 = **&MEMORY[0x277CC08F0];
    v7 = CMTimeCompare(&time1, &time2);
    v8 = *(*v5 + 384);
    if (v7)
    {
      v9 = v5;
      v10 = 3;
      return v8(v9, v10, 0);
    }

    goto LABEL_20;
  }

  v12 = *(*v5 + 384);

  return v12(v5, 1, 0);
}

uint64_t OZRetimingUtil::GetMaxLoopOffset@<X0>(OZChannelBase *this@<X0>, uint64_t a2@<X8>)
{
  (*(this->var0 + 89))(&time1);
  v19 = v21;
  if (result && (result = OZRetimingUtil::CanRetimeSimple(this, v7), result) && (result = OZRetimingUtil::GetTimeRemap(this, v8), !result) && (result = OZRetimingUtil::GetEndCondition(this, v9), result))
  {
    (*(this->var0 + 89))(&time1, this, PotentialLoopOffset);
    v15 = time1;
    (*(this->var0 + 40))(&v14, this);
    time1 = v15;
    time2 = v14;
    PC_CMTimeSaferSubtract(&time1, &time2, &v16);
    time1 = v17;
    time2 = v16;
    PC_CMTimeSaferSubtract(&time1, &time2, &v18);
    time1 = v19;
    time2 = v18;
    result = CMTimeCompare(&time1, &time2);
    v13 = &v19;
    if (result > 0)
    {
      v13 = &v18;
    }

    *a2 = *&v13->value;
    epoch = v13->epoch;
  }

  else
  {
    *a2 = *&v19.value;
    epoch = v19.epoch;
  }

  *(a2 + 16) = epoch;
  return result;
}

__n128 anonymous namespace::GetPotentialLoopOffset@<Q0>(OZChannelBase *this@<X0>, OZChannelObjectRoot *a2@<X1>, uint64_t a3@<X8>)
{
  {
    memset(&v13, 0, sizeof(v13));
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    memset(v12, 0, sizeof(v12));
    v7 = *OZChannelBase::getObjectManipulator(this);
    (*(v7 + 280))(v12);
    TimeScale = OZRetimingUtil::GetTimeScale(this, v8);
  }

  else
  {
    v11 = MEMORY[0x277CC08B0];
    result = *MEMORY[0x277CC08B0];
    *a3 = *MEMORY[0x277CC08B0];
    *(a3 + 16) = *(v11 + 16);
  }

  return result;
}

void OZRetimingUtil::SetLoopOffset(OZChannelBase *this, CMTime *a2, const CMTime *a3)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  memset(&v28, 0, sizeof(v28));
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  v8 = v29;
  v9 = v30;
  if (v29 != v30)
  {
    v10 = MEMORY[0x277CC08F0];
    do
    {
      if (OZRetimingUtil::CanRetimeSimple(*v8, v7) && !OZRetimingUtil::GetTimeRemap(*v8, v7) && OZRetimingUtil::GetEndCondition(*v8, v7))
      {
        (*((*v8)->var0 + 89))(v26);
        memset(&v25, 0, sizeof(v25));
        OZRetimingUtil::GetMaxLoopOffset(*v8, &v25);
        memset(&v24, 0, sizeof(v24));
        time1 = *a2;
        time2 = v28;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v12 = &v28;
        }

        else
        {
          time1 = *a2;
          time2 = v25;
          v11 = CMTimeCompare(&time1, &time2);
          v12 = &v25;
          if (v11 <= 0)
          {
            v12 = a2;
          }
        }

        time1 = *v12;
        time2 = v28;
        PC_CMTimeFloorToSampleDuration(&time1, &time2, &v24);
        OZRetimingUtil::GetLoopOffset(*v8, &v23);
        time1 = v24;
        time2 = v23;
        if (CMTimeCompare(&time1, &time2))
        {
          memset(&v23, 0, sizeof(v23));
          time1 = v27;
          time2 = v24;
          v14.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, &v23);
          v15 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
          if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
          {
            v16 = *v8;
            while (1)
            {
              v17 = (*(*v15 + 72))(v15, v16, v14);
              if (v17)
              {
                break;
              }

              v15 = v15[1];
              if (!v15)
              {
                goto LABEL_18;
              }
            }
          }

          else
          {
LABEL_18:
            v17 = 0;
          }

          v18 = RetimingMath::figToFrames(&v23, &v28, v13);
          (*(*v17 + 712))(v17, v10, 0, v18);
          v19 = *v8;
          TimeScale = OZRetimingUtil::GetTimeScale(*v8, v20);
        }
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = v29;
  }

  if (v8)
  {
    v30 = v8;
    operator delete(v8);
  }
}

void sub_2601646C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::CollectLinkedRoots<anonymous namespace::TruePred>(const void *a1, uint64_t a2)
{
  if (a1)
  {
    if (v14)
    {
      std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v14);
      if (OZChannelFolder::testFoldFlag(v14, 0x4000))
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(v14);
        if (ObjectManipulator)
        {
          if (v4)
          {
            v5 = v4;
            v6 = (*(*v4 + 272))(v4);
            if (v6)
            {
              v7 = *(v5 + 133);
              v8 = *(v5 + 132);
              if (v8 != v7)
              {
                v9 = v6;
                do
                {
                  Node = OZScene::getNode(v9, *v8);
                  if (Node)
                  {
                    v11 = Node;
                    v12 = (*(*Node + 640))(Node);
                    if (OZChannelFolder::testFoldFlag(v12, 0x4000) && ((*(v11[2] + 56))(v11 + 2, 1) & 1) == 0)
                    {
                      v13 = (*(*v11 + 640))(v11);
                      std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v13);
                    }
                  }

                  ++v8;
                }

                while (v8 != v7);
              }
            }
          }
        }
      }
    }
  }
}

void OZRetimingUtil::RemapTimeValue(OZChannelBase *this@<X0>, OZChannelObjectRoot *a2@<X1>, uint64_t *a3@<X8>)
{
  if (OZRetimingUtil::CanRetimeFull(this, a2))
  {
    memset(&v28, 0, sizeof(v28));
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    v10 = RetimingMath::figToFrames(a2, &v28, v9);
    (*(this->var0 + 89))(&v29, this);
    v32 = v29;
    v12 = RetimingMath::figToFrames(&v32, &v28, v11);
    (*(this->var0 + 89))(&v29, this);
    v32 = v29;
    v31 = v30;
    PC_CMTimeSaferAdd(&v32, &v31, v27);
    v14 = RetimingMath::figToFrames(v27, &v28, v13);
    if (!OZRetimingUtil::GetTimeRemap(this, v15))
    {
      IsReversed = OZRetimingUtil::IsReversed(this, v16);
      if (IsReversed)
      {
        v10 = RetimingMath::reverse(IsReversed, v10, v12, v14);
      }
    }

    v18 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
    if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
    {
      while (1)
      {
        v19 = (*(*v18 + 48))(v18, this);
        if (v19)
        {
          break;
        }

        v18 = v18[1];
        if (!v18)
        {
          goto LABEL_8;
        }
      }

      v20 = v19;
    }

    else
    {
LABEL_8:
      v20 = 0;
    }

    memset(&v29, 0, sizeof(v29));
    RetimingMath::framesToFig(&v29.value, &v28, v10, v16);
    OZChannel::getValueAsDouble(v20, &v29, 0.0);
    v23 = v22 + -1.0;
    v24 = round(v23 + v23);
    v25 = vabdd_f64(v24, v23 + v23);
    v26 = v24 * 0.5;
    if (v25 <= 0.0009765625)
    {
      v23 = v26;
    }

    RetimingMath::framesToFig(a3, &v28, v23, v21);
  }

  else
  {
    (*(this->var0 + 89))(&v29, this);
    v31 = v29;
    v32 = *a2;
    PC_CMTimeSaferSubtract(&v32, &v31, a3);
  }
}

BOOL anonymous namespace::HasNaturalDuration(OZChannelBase *this, OZChannelObjectRoot *a2)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  v3 = (*(*ObjectManipulator + 264))(ObjectManipulator);
  v4 = (*(*ObjectManipulator + 288))(ObjectManipulator);
  result = 0;
  if (v4)
  {
    if (v3)
    {
      (*(*ObjectManipulator + 280))(&v8, ObjectManipulator);
      OZSceneSettings::getFrameDuration((v3 + 336), &v6);
      time1 = v8;
      *&time2.value = v6;
      time2.epoch = v7;
      return CMTimeCompare(&time1, &time2) > 0;
    }
  }

  return result;
}

uint64_t OZRetimingUtil::IsUsingRetimingBehaviors(OZChannelBase *this, OZChannelObjectRoot *a2)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (ObjectManipulator)
  {
  }

  if ((ObjectManipulator[1024] & 2) != 0)
  {
    return 0;
  }

  v3 = ObjectManipulator + 1000;
  v4 = *(ObjectManipulator + 126);
  if (v4 == ObjectManipulator + 1000)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v4 + 2);
    if (v5)
    {
      if (v6)
      {
        if (v6[544])
        {
          break;
        }
      }
    }

    v4 = *(v4 + 1);
    if (v4 == v3)
    {
      return 0;
    }
  }

  return 1;
}

BOOL OZRetimingUtil::IsAtDefaultRetimingState(OZChannelBase *this, OZChannelObjectRoot *a2)
{
  v3 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  do
  {
    v4 = (*(v3->var0 + 3))(v3, this);
    if (v4)
    {
      break;
    }

    v3 = v3->var1;
  }

  while (v3);
  v5 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v6 = 0;
    v3 = 0;
    goto LABEL_23;
  }

  do
  {
    v3 = (*(v5->var0 + 4))(v5, this);
    if (v3)
    {
      break;
    }

    v5 = v5->var1;
  }

  while (v5);
  v6 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v5 = 0;
    goto LABEL_23;
  }

  do
  {
    v5 = (*(v6->var0 + 5))(v6, this);
    if (v5)
    {
      break;
    }

    v6 = v6->var1;
  }

  while (v6);
  v6 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    goto LABEL_23;
  }

  do
  {
    v7 = (*(v6->var0 + 6))(v6, this);
    if (v7)
    {
      break;
    }

    v6 = v6->var1;
  }

  while (v6);
  v8 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v6 = 0;
    goto LABEL_25;
  }

  do
  {
    v6 = (*(v8->var0 + 8))(v8, this);
    if (v6)
    {
      break;
    }

    v8 = v8->var1;
  }

  while (v8);
  v9 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
LABEL_24:
    v8 = 0;
    goto LABEL_25;
  }

  while (1)
  {
    v10 = (*(*v9 + 72))(v9, this);
    if (v10)
    {
      break;
    }

    v9 = v9[1];
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  v8 = v10;
LABEL_25:
  memset(&v33, 0, sizeof(v33));
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (!v7)
  {
LABEL_34:
    if (!v4 || (OZChannel::getValueAsDouble(v4, MEMORY[0x277CC08F0], 0.0), fabs(v24 + -1.0) < 0.0000001))
    {
      if ((!v3 || !OZChannel::getValueAsInt(v3, MEMORY[0x277CC08F0], 0.0)) && (!v5 || !OZChannel::getValueAsInt(v5, MEMORY[0x277CC08F0], 0.0)) && (!v6 || !OZChannel::getValueAsInt(v6, MEMORY[0x277CC08F0], 0.0)))
      {
        if (!v8)
        {
          return 1;
        }

        OZChannel::getValueAsDouble(v8, MEMORY[0x277CC08F0], 0.0);
        if (fabs(v25) < 0.0000001)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  memset(&v32, 0, sizeof(v32));
  (*(this->var0 + 40))(&v32, this, FrameDuration);
  (*(this->var0 + 89))(&v30, this);
  if ((*(v7->var0 + 104))(v7) == 2)
  {
    if (OZChannel::useRetimingExtrapolation(v7))
    {
      v29 = 0.0;
      memset(&v28, 0, sizeof(v28));
      v35 = v30;
      v34 = v32;
      PC_CMTimeSaferSubtract(&v35, &v34, &v28);
      v35 = v30;
      v34 = v32;
      PC_CMTimeSaferSubtract(&v35, &v34, &v27);
      v15 = RetimingMath::figToFrames(&v27, &v33, v14);
      Keyframe = OZChannel::getKeyframe(v7, &v28);
      if (Keyframe)
      {
        v17 = Keyframe;
        v18 = v15 + 1.0;
        OZChannel::getKeyframe(v7, Keyframe, 0, &v29);
        if (vabdd_f64(v29, v15 + 1.0) < 0.0000001 && OZChannel::isSmoothKeyframe(v7, v17))
        {
          v27 = v31;
          memset(&v26, 0, sizeof(v26));
          v35 = v28;
          v34 = v31;
          PC_CMTimeSaferAdd(&v35, &v34, &v26);
          v20 = RetimingMath::figToFrames(&v27, &v33, v19);
          v21 = OZChannel::getKeyframe(v7, &v26);
          if (v21)
          {
            v22 = v21;
            OZChannel::getKeyframe(v7, v21, 0, &v29);
            if (vabdd_f64(v29, v18 + v20) < 0.0000001)
            {
              result = OZChannel::isSmoothKeyframe(v7, v22);
              if (!result)
              {
                return result;
              }

              goto LABEL_34;
            }
          }
        }
      }
    }
  }

  return 0;
}

void OZRetimingUtil::FixForRemovedBehavior(OZChannelBase *this, CMTime *a2, const CMTime *a3)
{
  (*(this->var0 + 89))(&v51);
  memset(&v50, 0, sizeof(v50));
  (*(this->var0 + 40))(&v50, this);
  memset(&v49, 0, sizeof(v49));
  memset(&v48, 0, sizeof(v48));
  memset(&v47, 0, sizeof(v47));
  memset(&v46, 0, sizeof(v46));
  memset(&v45, 0, sizeof(v45));
  time1 = v51;
  time2 = v47;
  PC_CMTimeSaferAdd(&time1, &time2, &v58);
  time1 = v58;
  time2 = *a2;
  PC_CMTimeSaferSubtract(&time1, &time2, &v45);
  memset(&v44, 0, sizeof(v44));
  time1 = v51;
  time2 = v46;
  PC_CMTimeSaferAdd(&time1, &time2, &v58);
  time1 = v58;
  time2 = *a2;
  PC_CMTimeSaferSubtract(&time1, &time2, &v44);
  time1 = v49;
  time2 = v48;
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    time1 = v45;
    time2 = v44;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v42 = v44;
      v43 = v44;
      goto LABEL_6;
    }

    v58 = v51;
    time1 = v51;
    time2 = v49;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v34 = &v49;
    }

    else
    {
      time1 = v58;
      time2 = v48;
      v33 = CMTimeCompare(&time1, &time2);
      v34 = &v58;
      if (v33 > 0)
      {
        v34 = &v48;
      }
    }

    v43 = *v34;
    time1 = v51;
    time2 = v52;
    PC_CMTimeSaferAdd(&time1, &time2, &v58);
    time1 = v58;
    time2 = *a2;
    PC_CMTimeSaferSubtract(&time1, &time2, &v54);
    time1 = v54;
    time2 = v45;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v36 = &v45;
    }

    else
    {
      time1 = v54;
      time2 = v44;
      v35 = CMTimeCompare(&time1, &time2);
      v36 = &v44;
      if (v35 <= 0)
      {
        v36 = &v54;
      }
    }

    *&v42.value = *&v36->value;
    epoch = v36->epoch;
  }

  else
  {
    v43 = v49;
    epoch = v49.epoch;
    *&v42.value = *&v49.value;
  }

  v42.epoch = epoch;
LABEL_6:
  time2 = v43;
  time1 = v42;
  v58 = v43;
  PC_CMTimeSaferSubtract(&time1, &v58, &v53);
  time1 = v53;
  v58 = *a2;
  PC_CMTimeSaferAdd(&time1, &v58, &v54);
  v41 = v54;
  time1 = v51;
  v58 = time2;
  if (CMTimeCompare(&time1, &v58) || (time1 = v52, v58 = v41, CMTimeCompare(&time1, &v58)))
  {
    v54.epoch = 0;
    *&v54.value = &v54.timescale;
    memset(&v58, 0, sizeof(v58));
    if (time1.value)
    {
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v58, &time1);
      if (OZChannelFolder::testFoldFlag(time1.value, 0x4000))
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(time1.value);
        if (ObjectManipulator)
        {
          if (v9)
          {
            v10 = v9;
            v11 = (*(*v9 + 272))(v9);
            if (v11)
            {
              v12 = *(v10 + 133);
              for (i = *(v10 + 132); i != v12; ++i)
              {
                Node = OZScene::getNode(v11, *i);
                v15 = Node;
                if (Node)
                {
                  v16 = (*(*Node + 640))(Node);
                  if (OZChannelFolder::testFoldFlag(v16, 0x4000) && ((*(v15[2] + 56))(v15 + 2, 1) & 1) == 0)
                  {
                    v53.value = (*(*v15 + 640))(v15);
                    {
                      std::vector<TXTabStop *>::push_back[abi:ne200100](&v58, &v53);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    value = v58.value;
    v18 = *&v58.timescale;
    if (v58.value != *&v58.timescale)
    {
      do
      {
        time1.value = value;
        v19 = std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::__emplace_unique_key_args<OZChannelObjectRoot *,std::piecewise_construct_t const&,std::tuple<OZChannelObjectRoot * const&>,std::tuple<>>(&v54, value);
        (*(**value + 320))(&time1);
        *(v19 + 11) = time1;
        (*(**value + 712))(&time1);
        if (v19 + 5 != &time1)
        {
          *(v19 + 5) = time1;
          *(v19 + 4) = v56;
          v19[10] = v57;
        }

        v21 = *value;
        TimeScale = 1.0;
        if (OZRetimingUtil::CanRetimeSimple(*value, v20) && !OZRetimingUtil::GetTimeRemap(v21, v22))
        {
          TimeScale = OZRetimingUtil::GetTimeScale(v21, v22);
        }

        *(v19 + 14) = TimeScale;
        *(v19 + 5) = time1;
        ++value;
      }

      while (value != v18);
      value = v58.value;
    }

    if (value)
    {
      *&v58.timescale = value;
      operator delete(value);
    }

    v24 = v54.value;
    if (v54.value != &v54.timescale)
    {
      v25 = MEMORY[0x277CC08F0];
      do
      {
        v26 = *(v24 + 32);
        CanRetimeSimple = OZRetimingUtil::CanRetimeSimple(v26, v7);
        if (OZRetimingUtil::GetTimeRemap(v26, v28))
        {
          CanRetimeSimple = 0;
        }

        v53 = *v25;
        if (CanRetimeSimple)
        {
          OZRetimingUtil::GetLoopOffset(v26, &v37);
          v58 = v51;
          time1 = v37;
          PC_CMTimeSaferAdd(&time1, &v58, &v38);
          time1 = v38;
          v58 = v50;
          PC_CMTimeSaferSubtract(&time1, &v58, &v39);
          v53 = v39;
        }

        OZChannelObjectRootBase::setTimeExtent(v26, &time2, 0);
        OZChannelObjectRoot::recomputeTimeRangeFromChildren(v26, 0, 1, 1, 1, 1);
        if (CanRetimeSimple)
        {
          v58 = time2;
          time1 = v53;
          PC_CMTimeSaferSubtract(&time1, &v58, &v38);
          time1 = v38;
          v58 = v50;
          PC_CMTimeSaferSubtract(&time1, &v58, &v39);
        }

        v30 = *(v24 + 8);
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = v30->value;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = *(v24 + 16);
            v32 = v31->value == v24;
            v24 = v31;
          }

          while (!v32);
        }

        v24 = v31;
      }

      while (v31 != &v54.timescale);
    }

    std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::destroy(&v54, *&v54.timescale);
  }
}

void sub_260165D08(_Unwind_Exception *a1)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::destroy(v1 - 200, *(v1 - 192));
  _Unwind_Resume(a1);
}

uint64_t OZRetimingUtil::FixLoadedRetimingState(OZRetimingUtil *this, OZChannelObjectRoot *a2, const CMTime *a3)
{
  result = OZRetimingUtil::CanRetimeSimple(this, a2);
  if (result)
  {
    result = OZRetimingUtil::GetTimeRemap(this, v6);
    v7 = result;
    if (!result)
    {
      OZRetimingUtil::GetLoopOffset(this, &time1);
      v9 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
      if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
      {
        while (1)
        {
          v10 = (*(*v9 + 48))(v9, this);
          if (v10)
          {
            break;
          }

          v9 = v9[1];
          if (!v9)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
LABEL_6:
        v10 = 0;
      }

      result = OZChannel::setUseRetimingExtrapolation(v10, 1);
    }

    v11 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
    if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
    {
      while (1)
      {
        result = (*(*v11 + 80))(v11, this);
        if (result)
        {
          break;
        }

        v11 = v11[1];
        if (!v11)
        {
          return result;
        }
      }

      v12 = result;
      result = (*(*result + 496))(result, 1);
      if ((result & 1) == 0)
      {
        memset(&v35, 0, sizeof(v35));
        memset(&v34, 0, sizeof(v34));
        ObjectManipulator = OZChannelBase::getObjectManipulator(this);
        time1 = v35;
        time2 = **&MEMORY[0x277CC08B0];
        if (CMTimeCompare(&time1, &time2))
        {
          memset(&v33, 0, sizeof(v33));
          (*(*this + 712))(&time1, this);
          v38 = *&time1.value;
          epoch = time1.epoch;
          (*(*this + 320))(&v32, this);
          *&time2.value = v38;
          time2.epoch = epoch;
          v40 = v32;
          PC_CMTimeSaferSubtract(&time2, &v40, &v33);
          memset(&v32, 0, sizeof(v32));
          time1 = v35;
          time2 = v33;
          PC_CMTimeSaferSubtract(&time1, &time2, &v32);
          if (!v7)
          {
            v27 = &v32;
            goto LABEL_27;
          }

          memset(&v31, 0, sizeof(v31));
          TimeScale = OZRetimingUtil::GetTimeScale(this, v15);
          v18.n128_f64[0] = operator/(&v32.value, &v31, TimeScale);
          (*(*this + 712))(&time1, this, v18);
          memset(&v40, 0, sizeof(v40));
          operator*(&v34, &v40, 0.5);
          time1 = v31;
          time2 = v40;
          PC_CMTimeSaferAdd(&time1, &time2, &v38);
          *&time1.value = v38;
          time1.epoch = epoch;
          time2 = v34;
          PC_CMTimeFloorToSampleDuration(&time1, &time2, &v29);
          time1 = v30;
          time2 = v29;
          if (CMTimeCompare(&time1, &time2) >= 0)
          {
            v20 = &v30;
          }

          else
          {
            v20 = &v29;
          }

          v40 = *v20;
          if (OZRetimingUtil::GetEndCondition(this, v19))
          {
            OZRetimingUtil::GetLoopDuration(this, &v38);
            time1 = v40;
            *&time2.value = v38;
            time2.epoch = epoch;
            PC_CMTimeSaferAdd(&time1, &time2, &v40);
          }
        }

        else
        {
          (*(*this + 712))(&time1, this);
          v40 = v37;
          if (v7 == 1 && OZRetimingUtil::GetEndCondition(this, v21))
          {
            v38 = 0uLL;
            epoch = 0;
            v22 = OZChannelBase::getObjectManipulator(this);
            OZRetimingUtil::GetLoopDuration(this, &v32);
            time1 = v32;
            *&time2.value = v38;
            time2.epoch = epoch;
            PC_CMTimeSaferAdd(&time1, &time2, &v33);
            time1 = v40;
            time2 = v33;
            v24 = CMTimeCompare(&time1, &time2);
            v25 = &v40;
            if (v24 < 0)
            {
              v25 = &v33;
            }

            v26 = *&v25->value;
            v40.epoch = v25->epoch;
            *&v40.value = v26;
          }
        }

        v27 = &v40;
LABEL_27:
        v28 = RetimingMath::figToFrames(v27, &v34, v16);
        return (*(*v12 + 712))(v12, MEMORY[0x277CC08F0], 0, v28);
      }
    }
  }

  return result;
}

uint64_t OZRetimingUtil::FixLoopOffset(OZRetimingUtil *this, OZChannelObjectRoot *a2, const CMTime *a3)
{
  result = OZRetimingUtil::CanRetimeSimple(this, a2);
  if (result)
  {
    result = OZRetimingUtil::GetTimeRemap(this, v6);
    if (!result)
    {
      result = OZRetimingUtil::GetEndCondition(this, v7);
      if (result)
      {
        (*(*this + 712))(&time1, this);
        v19 = v18;
        memset(&v16, 0, sizeof(v16));
        OZRetimingUtil::GetLoopDuration(this, &v16);
        time1 = v19;
        time2 = *a2;
        PC_CMTimeSaferSubtract(&time1, &time2, &v15);
        time1 = v16;
        time2 = v15;
        result = CMTimeCompare(&time1, &time2);
        if (result >= 1)
        {
          time1 = v19;
          PC_CMTimeSaferSubtract(&time1, &time2, &v15);
          v16 = v15;
          time1 = v15;
          v9 = MEMORY[0x277CC08F0];
          time2 = **&MEMORY[0x277CC08F0];
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            v16 = *v9;
          }

          v11 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
          if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
          {
            while (1)
            {
              v12 = (*(*v11 + 72))(v11, this);
              if (v12)
              {
                break;
              }

              v11 = v11[1];
              if (!v11)
              {
                goto LABEL_11;
              }
            }

            v13 = v12;
          }

          else
          {
LABEL_11:
            v13 = 0;
          }

          v14 = RetimingMath::figToFrames(&v16, a2, v10);
          return (*(*v13 + 712))(v13, MEMORY[0x277CC08F0], 0, v14);
        }
      }
    }
  }

  return result;
}

uint64_t OZRetimingUtil::GetRetimeNaturalDurationFlags(OZRetimingUtil *this, OZChannelObjectRoot *a2)
{
  if (!OZRetimingUtil::CanRetimeSimple(this, a2))
  {
    return 0;
  }

  CanRetimeFull = OZRetimingUtil::CanRetimeFull(this, v3);
  v7 = 4 * (OZRetimingUtil::GetEndCondition(this, v5) != 0);
  v8 = v7;
  if (CanRetimeFull)
  {
    v8 = 6;
    if (OZRetimingUtil::GetTimeRemap(this, v6) != 1)
    {
      if (OZRetimingUtil::IsUsingRetimingBehaviors(this, v9))
      {
        return 6;
      }

      else
      {
        return v7;
      }
    }
  }

  return v8;
}

uint64_t OZRetimingUtil::RetimingExaminer::RetimingExaminer(uint64_t this)
{
  v1 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  *(this + 8) = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  *(this + 16) = 0;
  if (v1)
  {
    v1[2] = this;
  }

  OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead = this;
  *this = &unk_287293798;
  return this;
}

void OZRetimingUtil::RetimingExaminer::~RetimingExaminer(OZRetimingUtil::RetimingExaminer *this)
{
  *this = &unk_287293828;
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = (v1 + 8);
  if (!v1)
  {
    v3 = &OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  }

  *v3 = v2;
  if (v2)
  {
    *(v2 + 16) = v1;
  }
}

{
  *this = &unk_287293828;
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = (v1 + 8);
  if (!v1)
  {
    v3 = &OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  }

  *v3 = v2;
  if (v2)
  {
    *(v2 + 16) = v1;
  }
}

{
  *this = &unk_287293828;
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = (v1 + 8);
  if (!v1)
  {
    v3 = &OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  }

  *v3 = v2;
  if (v2)
  {
    *(v2 + 16) = v1;
  }

  JUMPOUT(0x2666E9F00);
}

uint64_t anonymous namespace::EditableRoot(OZChannelBase *this, OZChannelObjectRoot *a2)
{
  if (OZChannelBase::isLocked(this, 1))
  {
    v3 = 0;
  }

  else
  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    v5 = *((*(*ObjectManipulator + 256))(ObjectManipulator) + 8);
    v9 = xmmword_260347AB0;
    isKindOfClass = OZFactory::isKindOfClass(v5, &v9);
    if (OZChannelBase::testFlag(this, 2) || OZChannelBase::testFlag(this, 0x10000))
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = !OZChannelBase::testFlag(this, 32);
    }

    v3 = isKindOfClass | v7;
  }

  return v3 & 1;
}

uint64_t anonymous namespace::ScaleKeyframes(OZChannelBase *this, OZChannelObjectRoot *a2, const CMTime *a3, const CMTime *a4, double a5)
{
  if (result)
  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    v11 = (*(*ObjectManipulator + 264))(ObjectManipulator);
    if (v11)
    {
      v13 = *(v11 + 1504);
      if (v13)
      {
        OZChannelBase::setRangeName(v13, 1);
      }
    }
  }

  return result;
}

__n128 anonymous namespace::GetFrameDuration@<Q0>(_anonymous_namespace_ *this@<X0>, OZObjectManipulator *a2@<X1>, __n128 *a3@<X8>)
{
  v4 = (*(*this + 264))(this, a2);
  if (v4)
  {
    v5 = (v4 + 336);

    result.n128_u64[0] = OZSceneSettings::getFrameDuration(v5, a3).n128_u64[0];
  }

  else
  {
    v7 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a3 = *MEMORY[0x277CC08F0];
    a3[1].n128_u64[0] = *(v7 + 16);
  }

  return result;
}

BOOL anonymous namespace::HasNaturalDurationAndHardOutPoint(OZChannelBase *this, OZChannelObjectRoot *a2)
{
  if (result)
  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    return ((*(*ObjectManipulator + 288))(ObjectManipulator) & 4) == 0;
  }

  return result;
}

__n128 anonymous namespace::ScaleNaturalDuration@<Q0>(_anonymous_namespace_ *this@<X0>, CMTime *a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  operator/(this, &v9, a3);
  memset(&v12, 0, sizeof(v12));
  operator*(a2, &v12, 0.5);
  time1 = v9;
  time2 = v12;
  PC_CMTimeSaferAdd(&time1, &time2, &v11);
  time1 = v11;
  time2 = *a2;
  PC_CMTimeFloorToSampleDuration(&time1, &time2, &v10);
  time1 = *a2;
  time2 = v10;
  if (CMTimeCompare(&time1, &time2) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = &v10;
  }

  result = *&v7->value;
  *a4 = *&v7->value;
  *(a4 + 16) = v7->epoch;
  return result;
}

void anonymous namespace::OffsetKeyframesAndMarkers(_anonymous_namespace_ *this, CMTime *a2, const CMTime *a3)
{
  v5 = *(this + 14);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 >= v7)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = *v6;
    if (*v6)
    {
      if (v9)
      {
        v10 = v9;
        if (!OZChannelBase::testFlag(v9, 0x20000))
        {
          (*(v10->var0 + 58))(v10, 1);
          OZChannel::linearTimeWarp(v10, 1.0, a2);
        }
      }

      else
      {
        if (v11)
        {
          v12 = v11;
          {
          }
        }
      }
    }

    ++v6;
  }

  while (v6 < v7);
  if (this)
  {
LABEL_12:
    if (v14)
    {
      v15 = v14[27];
      if (v15)
      {
        v26[0] = 0;
        v26[1] = 0;
        v25 = v26;
        v18 = *(v15 + 8);
        v16 = (v15 + 8);
        v17 = v18;
        if (v18 != v16 + 1)
        {
          do
          {
            OZTimeMarker::OZTimeMarker(&v23, (v17 + 4));
            v28 = v24;
            v27 = *a2;
            PC_CMTimeSaferAdd(&v28, &v27, &v22);
            v24 = v22;
            std::__tree<OZTimeMarker>::__emplace_unique_key_args<OZTimeMarker,OZTimeMarker const&>(&v25, &v23);
            OZTimeMarker::~OZTimeMarker(&v23);
            v19 = v17[1];
            if (v19)
            {
              do
              {
                v20 = v19;
                v19 = *v19;
              }

              while (v19);
            }

            else
            {
              do
              {
                v20 = v17[2];
                v21 = *v20 == v17;
                v17 = v20;
              }

              while (!v21);
            }

            v17 = v20;
          }

          while (v20 != v16 + 1);
        }

        std::__tree<OZTimeMarker>::swap(v16, &v25);
        std::__tree<OZGuide>::destroy(&v25, v26[0]);
      }
    }
  }
}

uint64_t *std::__tree<OZTimeMarker>::swap(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

double anonymous namespace::SafeGetLoopOffset@<D0>(OZChannelBase *this@<X0>, OZChannelObjectRoot *a2@<X1>, uint64_t a3@<X8>)
{
  if (OZRetimingUtil::CanRetimeSimple(this, a2) && !OZRetimingUtil::GetTimeRemap(this, v5))
  {

    return OZRetimingUtil::GetLoopOffset(this, a3);
  }

  else
  {
    (*(this->var0 + 89))(v7, this);
    result = *&v8;
    *a3 = v8;
    *(a3 + 16) = v9;
  }

  return result;
}

void *std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::__emplace_unique_key_args<OZChannelObjectRoot *,std::piecewise_construct_t const&,std::tuple<OZChannelObjectRoot * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void *anonymous namespace::CollectDependentRootsOf<anonymous namespace::SameEndPred>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      v7 = result;
      do
      {
        result = *v4;
        if (*v4)
        {
          if (result)
          {
            v8 = result;
            v11 = v9;
            {
              std::vector<TXTabStop *>::push_back[abi:ne200100](a3, &v11);
            }
          }
        }

        ++v4;
      }

      while (v4 != v5);
    }
  }

  return result;
}

BOOL anonymous namespace::SameEndPred::operator()(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 712))(v7);
  v5[0] = v7[0];
  time1 = v7[1];
  v3.n128_f64[0] = PC_CMTimeSaferAdd(v5, &time1, &v8);
  (*(*a2 + 712))(v5, a2, v3);
  time1 = v5[0];
  time2 = v5[1];
  PC_CMTimeSaferAdd(&time1, &time2, &v6);
  time1 = v8;
  time2 = v6;
  return CMTimeCompare(&time1, &time2) == 0;
}

void *anonymous namespace::CollectDependentRootsOf<anonymous namespace::SameTimeExtentPred>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      v7 = result;
      do
      {
        result = *v4;
        if (*v4)
        {
          if (result)
          {
            v8 = result;
            v11 = v9;
            {
              std::vector<TXTabStop *>::push_back[abi:ne200100](a3, &v11);
            }
          }
        }

        ++v4;
      }

      while (v4 != v5);
    }
  }

  return result;
}

BOOL anonymous namespace::SameTimeExtentPred::operator()(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 712))(v5);
  (*(*a2 + 712))(v4, a2);
  time1 = v5[0];
  time2 = v4[0];
  if (CMTimeCompare(&time1, &time2))
  {
    return 0;
  }

  time1 = v5[1];
  time2 = v4[1];
  return CMTimeCompare(&time1, &time2) == 0;
}

void OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::~StaticListNode(void *a1)
{
  *a1 = &unk_287293828;
  v2 = a1[1];
  v1 = a1[2];
  v3 = (v1 + 8);
  if (!v1)
  {
    v3 = &OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  }

  *v3 = v2;
  if (v2)
  {
    *(v2 + 16) = v1;
  }

  JUMPOUT(0x2666E9F00);
}

void OZRotoshape::OZRotoshape(OZRotoshape *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZLockingElement::OZLockingElement(this, a2, a3, a4);
  *v5 = &unk_287293848;
  v5[25] = &unk_287293AE0;
  v5[27] = &unk_2872943B8;
  v5[31] = &unk_287294610;
  v5[841] = &unk_287294668;
  OZMoShape::OZMoShape((v5 + 2372), this, (this + 256), (this + 648), 0x161u);
  OZValueCache<OZBoundsCacheItem>::OZValueCache(this + 38128);
  *(this + 4765) = 0;
  *(this + 38114) = 0;
  *(this + 19056) = 0;
  *(this + 38098) = 0;
  *(this + 19048) = 0;
  *(this + 4763) = 0x4014000000000000;
}

void sub_260167550(_Unwind_Exception *a1)
{
  OZMoShape::~OZMoShape((v1 + 18976));
  OZLockingElement::~OZLockingElement(v1);
  _Unwind_Resume(a1);
}

void OZLockingElement::~OZLockingElement(OZLockingElement *this)
{
  OZElement::~OZElement((this + 200));
  *this = &unk_2872018B0;
  PCMutex::~PCMutex((this + 128));
  PCSharedMutex::~PCSharedMutex((this + 8));
}

void OZRotoshape::OZRotoshape(OZRotoshape *this, const OZRotoshape *a2, uint64_t a3)
{
  v3 = a3;
  OZLockingElement::OZLockingElement(this, (a2 + 200), a3);
  *v6 = &unk_287293848;
  v6[25] = &unk_287293AE0;
  v6[27] = &unk_2872943B8;
  v6[31] = &unk_287294610;
  v6[841] = &unk_287294668;
  OZMoShape::OZMoShape((v6 + 2372), (a2 + 18976), this, (this + 256), (this + 648), 0x161u, v3);
  OZValueCache<OZBoundsCacheItem>::OZValueCache(this + 38128);
  *(this + 4765) = 0;
  *(this + 38114) = 0;
  *(this + 19056) = 0;
  *(this + 38096) = *(a2 + 38096);
  *(this + 38097) = *(a2 + 38097);
  *(this + 4763) = *(a2 + 4763);
}

void sub_260167718(_Unwind_Exception *a1)
{
  OZMoShape::~OZMoShape((v1 + v2));
  OZLockingElement::~OZLockingElement(v1);
  _Unwind_Resume(a1);
}

void OZRotoshape::~OZRotoshape(OZRotoshape *this)
{
  *this = &unk_287293848;
  v2 = (this + 200);
  *(this + 25) = &unk_287293AE0;
  *(this + 27) = &unk_2872943B8;
  *(this + 31) = &unk_287294610;
  *(this + 841) = &unk_287294668;
  OZMoShape::resetParticlePaint((this + 18976));
  OZValueCache<OZBoundsCacheItem>::~OZValueCache(this + 38128);
  OZMoShape::~OZMoShape((this + 18976));
  OZElement::~OZElement(v2);
  *this = &unk_2872018B0;
  PCMutex::~PCMutex((this + 128));
  PCSharedMutex::~PCSharedMutex((this + 8));
}

{
  OZRotoshape::~OZRotoshape(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZRotoshape::~OZRotoshape(OZRotoshape *this)
{
  OZRotoshape::~OZRotoshape((this - 200));
}

{
  OZRotoshape::~OZRotoshape((this - 216));
}

{
  OZRotoshape::~OZRotoshape((this - 248));
}

{
  OZRotoshape::~OZRotoshape((this - 6728));
}

{
  OZRotoshape::~OZRotoshape((this - 200));

  JUMPOUT(0x2666E9F00);
}

{
  OZRotoshape::~OZRotoshape((this - 216));

  JUMPOUT(0x2666E9F00);
}

{
  OZRotoshape::~OZRotoshape((this - 248));

  JUMPOUT(0x2666E9F00);
}

{
  OZRotoshape::~OZRotoshape((this - 6728));

  JUMPOUT(0x2666E9F00);
}

double OZRotoshape::operator=(uint64_t a1, const void *a2)
{
  OZElement::operator=(a1 + 200, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4 + 36864;
  OZMoShape::operator=(a1 + 18976, (v4 + 18976));
  *(a1 + 38120) = 0;
  *(a1 + 38114) = 0;
  *(a1 + 38112) = 0;
  *(a1 + 38096) = v5[1232];
  *(a1 + 38097) = *(v5 + 1233);
  result = *(v5 + 155);
  *(a1 + 38104) = result;
  return result;
}

void OZRotoshape::applyStyle(OZRotoshape *this, const OZRotoshape *a2)
{
  v4 = a2 + 36864;
  v5 = this + 36864;
  v6 = *this;
  if ((*(a2 + 1224) & 8) != 0)
  {
    (*(v6 + 432))(this);
  }

  else
  {
    (*(v6 + 440))(this);
  }

  OZMoShape::applyStyle((this + 18976), (a2 + 18976));
  *(v5 + 1249) = 0;
  *(v5 + 157) = 0;
  v5[1234] = v4[1234];
  *(v5 + 616) = v4[1232];
}

uint64_t OZRotoshape::isSimulationGroup(OZRotoshape *this)
{
  v2 = *(this + 4733);
  ValueAsInt = OZChannel::getValueAsInt((this + 25904), MEMORY[0x277CC08F0], 0.0);
  if (!OZChannelBase::isEnabled((this + 25776), 0, 1))
  {
    return 0;
  }

  if ((ValueAsInt - 1) > 1 || v2 == 0)
  {
    return 0;
  }

  v6 = *(*v2 + 152);

  return v6(v2);
}

uint64_t OZRotoshape::acceptsShapeMasks(OZRotoshape *this)
{
  OZRenderState::OZRenderState(&v11);
  OZShapeRenderState::OZShapeRenderState(&var0);
  var0 = v11.var0;
  var10 = v11.var10;
  var16 = v11.var16;
  v8 = *&v11.var1;
  v9 = 1;
  shouldDrawParticles = OZShape::shouldDrawParticles(this + 18976, &var0);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v10);
  v3 = *(this + 4733);
  if (v3)
  {
    LODWORD(v3) = (*(*v3 + 64))(v3);
  }

  return shouldDrawParticles & v3 ^ 1;
}

uint64_t OZRotoshape::restrictImageMaskToStencil(OZRotoshape *this)
{
  OZRenderState::OZRenderState(&v11);
  OZShapeRenderState::OZShapeRenderState(&var0);
  var0 = v11.var0;
  var10 = v11.var10;
  var16 = v11.var16;
  v8 = *&v11.var1;
  v9 = 1;
  shouldDrawParticles = OZShape::shouldDrawParticles(this + 18976, &var0);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v10);
  v3 = *(this + 4733);
  if (v3)
  {
    LODWORD(v3) = (*(*v3 + 64))(v3);
  }

  return shouldDrawParticles & v3;
}

uint64_t OZRotoshape::setScene(OZRotoshape *this, OZScene *a2)
{
  OZSceneNode::setScene(this + 25, a2);
  result = *(this + 4732);
  if (result)
  {
    v4 = *(*result + 280);

    return v4();
  }

  return result;
}

uint64_t OZRotoshape::setIsMask(OZRotoshape *this)
{
  OZElement::setIsMask((this + 200));
  OZChannelBase::setFlag((this + 7032), 2, 0);
  OZChannelBase::setFlag((this + 12872), 2, 0);
  OZChannelBase::setFlag((this + 8432), 2, 0);
  OZChannelBase::setFlag((this + 2152), 2, 0);
  OZChannelBase::setFlag((this + 17720), 2, 0);
  OZChannelBase::setFlag((this + 2440), 2, 0);
  OZChannelBase::setFlag((this + 2592), 2, 0);
  OZChannelBase::setFlag((this + 2896), 2, 0);
  OZChannelBase::setFlag((this + 5080), 2, 0);
  OZChannelBase::setFlag((this + 6408), 2, 0);
  OZChannelBase::setFlag((this + 8584), 2, 0);
  OZChannelBase::setFlag((this + 10136), 2, 0);

  return OZShape::setIsMask((this + 18976));
}

uint64_t OZRotoshape::clearIsMask(OZRotoshape *this)
{
  OZElement::clearIsMask((this + 200));
  OZChannelBase::resetFlag((this + 7032), 2, 0);
  OZChannelBase::resetFlag((this + 12872), 2, 0);
  OZChannelBase::resetFlag((this + 8432), 2, 0);
  OZChannelBase::resetFlag((this + 2152), 2, 0);
  OZChannelBase::resetFlag((this + 17720), 2, 0);
  OZChannelBase::resetFlag((this + 2440), 2, 0);
  OZChannelBase::resetFlag((this + 2592), 2, 0);
  OZChannelBase::resetFlag((this + 2896), 2, 0);
  OZChannelBase::resetFlag((this + 5080), 2, 0);
  OZChannelBase::resetFlag((this + 6408), 2, 0);
  OZChannelBase::resetFlag((this + 8584), 2, 0);
  OZChannelBase::resetFlag((this + 10136), 2, 0);

  return OZShape::clearIsMask((this + 18976));
}

__n128 OZRotoshape::getNaturalDuration@<Q0>(OZRotoshape *this@<X0>, __n128 *a2@<X8>)
{
  v3 = this + 200;
  if ((*(*(this + 25) + 272))(this + 200))
  {
    v4 = ((*(*v3 + 272))(v3) + 336);

    result.n128_u64[0] = OZSceneSettings::getFrameDuration(v4, a2).n128_u64[0];
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    a2[1].n128_u64[0] = *(v6 + 16);
  }

  return result;
}

uint64_t OZRotoshape::isFourCornerPinned(OZRotoshape *this)
{
  v2 = *(this + 4733);
  if (v2)
  {
    v3 = (*(*v2 + 64))(v2) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return OZElement::isFourCornerPinned((this + 200)) & v3;
}

uint64_t OZRotoshape::isCropped(OZRotoshape *this)
{
  v2 = *(this + 4733);
  if (v2)
  {
    v3 = (*(*v2 + 64))(v2) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return OZElement::isCropped((this + 200)) & v3;
}

uint64_t OZRotoshape::isDropShadowEnabled(OZRotoshape *this)
{
  v2 = *(this + 4733);
  if (v2)
  {
    v3 = (*(*v2 + 64))(v2) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return OZElement::isDropShadowEnabled((this + 200)) & v3;
}

uint64_t OZRotoshape::canReflect(OZRotoshape *this)
{
  OZRenderState::OZRenderState(&v12);
  OZShapeRenderState::OZShapeRenderState(&var0);
  var0 = v12.var0;
  var10 = v12.var10;
  var16 = v12.var16;
  v9 = *&v12.var1;
  v10 = 1;
  shouldDrawParticles = OZShape::shouldDrawParticles(this + 18976, &var0);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v11);
  v3 = *(this + 4733);
  if (v3)
  {
    v4 = (*(*v3 + 64))(v3);
  }

  else
  {
    v4 = 0;
  }

  return OZElement::canReflect((this + 200)) & (shouldDrawParticles & v4 ^ 1u);
}

uint64_t OZRotoshape::enable(OZRotoshape *this)
{
  {

    return OZObjectManipulator::enable((this + 216));
  }

  return result;
}

uint64_t OZRotoshape::bakeChannels(OZRotoshape *this, const PCTimeRange *a2, const CMTime *a3)
{
  OZSceneNode::bakeChannels((this + 200), a2, a3);
  (*(*(this + 4713) + 368))(this + 37704, a2, a3);
  v6 = *(*(this + 2398) + 920);

  return v6(this + 19184, a2, a3);
}

uint64_t OZRotoshape::isActiveAtTime(OZRotoshape *this, CMTime *a2, int a3, int a4, int a5)
{
  v5 = a4;
  if ((*(this + 1224) & 8) == 0)
  {
    v13 = *a2;
    v8 = (this + 216);
    v9 = 1;
    return OZObjectManipulator::isActiveAtTime(v8, &v13, a3, a4, v9);
  }

  v11 = *(this + 145);
  if (v11 && (*(v11 + 1024) & 4) != 0)
  {
    return 0;
  }

  result = OZChannel::getValueAsInt((this + 20304), a2, 0.0);
  if (result)
  {
    v13 = *a2;
    v8 = (this + 216);
    a3 = 0;
    a4 = v5;
    v9 = a5;
    return OZObjectManipulator::isActiveAtTime(v8, &v13, a3, a4, v9);
  }

  return result;
}

uint64_t OZRotoshape::isActiveInTimeRange(OZRotoshape *this, const PCTimeRange *a2, int a3, int a4, int a5)
{
  if ((*(this + 1224) & 8) != 0)
  {
    v11 = *(this + 145);
    if (v11 && (*(v11 + 1024) & 4) != 0)
    {
      return 0;
    }

    else
    {
      v12 = *a2;
      result = OZChannel::getValueAsInt((this + 20304), &v12, 0.0);
      if (result)
      {
        return OZObjectManipulator::isActiveInTimeRange((this + 216), a2, 0, a4, a5);
      }
    }
  }

  else
  {
    v8 = (this + 216);

    return OZObjectManipulator::isActiveInTimeRange(v8, a2, a3, a4, 1);
  }

  return result;
}

void OZRotoshape::setTimeOffset(__n128 *this, CMTime *a2, char a3)
{
  v9 = *a2;
  v5 = OZChannelObjectRootBase::setTimeOffset(this + 16, &v9, a3);
  if (this[2366].n128_u64[0])
  {
    v7 = this[12].n128_u64[1];
    v6 = &this[12].n128_i8[8];
    (*(v7 + 1128))(&v9, v6, v5);
    v8 = *a2;
    OZMoShape::initPPaintTime(v6 + 2347, &v8, &v9);
  }
}

void *OZRotoshape::setTimeExtent(OZRotoshape *this, const PCTimeRange *a2, int a3)
{
  result = OZChannelObjectRootBase::setTimeExtent((this + 256), a2, a3);
  if (*(this + 4732))
  {
    v6 = *a2;
    return OZMoShape::initPPaintTime(this + 2372, &v6, a2);
  }

  return result;
}

void OZRotoshape::dirty(OZRotoshape *this)
{
  OZElement::dirty((this + 200));

  OZValueCache<OZBoundsCacheItem>::flush(this + 38128);
}

void non-virtual thunk toOZRotoshape::dirty(OZElement *this)
{
  OZElement::dirty(this);

  OZValueCache<OZBoundsCacheItem>::flush(this + 37928);
}

void non-virtual thunk toOZRotoshape::dirty(OZRotoshape *this)
{
  OZElement::dirty((this - 16));

  OZValueCache<OZBoundsCacheItem>::flush(this + 37912);
}

uint64_t OZRotoshape::didCreateCopyForCopyOnWrite(OZRotoshape *this)
{
  result = *(this + 4732);
  if (result)
  {
    return (*(*result + 920))();
  }

  return result;
}

uint64_t non-virtual thunk toOZRotoshape::didCreateCopyForCopyOnWrite(OZRotoshape *this)
{
  result = *(this + 4707);
  if (result)
  {
    return (*(*result + 920))();
  }

  return result;
}

void OZRotoshape::didAddToScene(OZRotoshape *this, OZScene *a2)
{
  v3 = this + 36864;
  OZTransformNode::didAddToScene((this + 200), a2);
  if ((v3[1234] & 1) == 0 && (*(a2 + 1576) & 1) == 0)
  {
    v4 = *(v3 + 124);
    if (v4)
    {

      OZScene::registerNode(a2, v4);
    }
  }
}

CGColorSpace **OZRotoshape::didFinishLoadingIntoScene(OZRotoshape *this)
{
  v2 = (this + 36864);
  result = OZElement::didFinishLoadingIntoScene((this + 200));
  if (*(v2 + 1234) == 1)
  {
    OZMoShape::completeLoading((this + 18976), v2[155]);
    result = OZRotoshape::completeLoading(this);
    *(v2 + 1234) = 0;
  }

  return result;
}

CGColorSpace **non-virtual thunk toOZRotoshape::didFinishLoadingIntoScene(OZRotoshape *this)
{
  return OZRotoshape::didFinishLoadingIntoScene((this - 200));
}

{
  return OZRotoshape::didFinishLoadingIntoScene((this - 216));
}

OZScene *OZRotoshape::willRemoveFromScene(OZRotoshape *this, OZScene *a2)
{
  result = OZLockingElement::willRemoveFromScene(this, a2);
  v5 = *(this + 4732);
  if (v5)
  {
    if (*(a2 + 1848) == 1)
    {
      if (v6)
      {
        OZLocking::reset(v6);
      }
    }

    OZScene::unregisterNode(a2, v5);

    return OZScene::removeAllDependencies(a2, v5);
  }

  return result;
}

void OZRotoshape::getIconName(OZRotoshape *this@<X0>, PCURL *a2@<X8>)
{
  if ((*(this + 1224) & 8) != 0)
  {
    v4 = @"M_LayersList_ObjectIconColor-ShapeMask";
    if (OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      goto LABEL_13;
    }

    ValueAsInt = OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0);
    v6 = @"M_LayersList_ObjectIconColor-SplineShapeMask";
  }

  else
  {
    if ((OZChannelBase::isEnabled((this + 21760), 0, 1) & 1) == 0 && OZChannelBase::isEnabled((this + 25776), 0, 1))
    {
      if (OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) != 4)
      {
        OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0);
      }

      v4 = @"M_LayersList_ObjectIconColor-PaintShape";
      goto LABEL_13;
    }

    v4 = @"M_LayersList_ObjectIconColor-Shape";
    if (OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      goto LABEL_13;
    }

    ValueAsInt = OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0);
    v6 = @"M_LayersList_ObjectIconColor-SplineShape";
  }

  if (ValueAsInt != 5)
  {
    v4 = v6;
  }

LABEL_13:

  PCURL::PCURL(a2, v4);
}

void OZRotoshape::getIconNameBW(OZRotoshape *this@<X0>, PCURL *a2@<X8>)
{
  if ((*(this + 1224) & 8) != 0)
  {
    v4 = @"M_LayersList_ObjectIconGrey-ShapeMask";
    if (OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      goto LABEL_13;
    }

    ValueAsInt = OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0);
    v6 = @"M_LayersList_ObjectIconGrey-SplineShapeMask";
  }

  else
  {
    if ((OZChannelBase::isEnabled((this + 21760), 0, 1) & 1) == 0 && OZChannelBase::isEnabled((this + 25776), 0, 1))
    {
      if (OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) != 4)
      {
        OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0);
      }

      v4 = @"M_LayersList_ObjectIconGrey-PaintShape";
      goto LABEL_13;
    }

    v4 = @"M_LayersList_ObjectIconGrey-Shape";
    if (OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      goto LABEL_13;
    }

    ValueAsInt = OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0);
    v6 = @"M_LayersList_ObjectIconGrey-SplineShape";
  }

  if (ValueAsInt != 5)
  {
    v4 = v6;
  }

LABEL_13:

  PCURL::PCURL(a2, v4);
}

uint64_t OZRotoshape::getIconID(OZRotoshape *this)
{
  if ((*(this + 1224) & 8) != 0)
  {
    v2 = 36;
    if (OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      return v2;
    }

    v3 = OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) == 5;
    v4 = 15;
    goto LABEL_11;
  }

  if ((OZChannelBase::isEnabled((this + 21760), 0, 1) & 1) != 0 || !OZChannelBase::isEnabled((this + 25776), 0, 1))
  {
    v2 = 35;
    if (OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      return v2;
    }

    v3 = OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) == 5;
    v4 = 14;
LABEL_11:
    if (v3)
    {
      return v2;
    }

    else
    {
      return v4;
    }
  }

  if (OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0) != 4)
  {
    OZChannel::getValueAsInt((this + 20048), MEMORY[0x277CC08F0], 0.0);
  }

  return 9;
}

void OZRotoshape::description(OZRotoshape *this@<X0>, PCURL *a2@<X8>)
{
  if ((*(this + 306) & 8) != 0)
  {
    v2 = @"Rotoshape Mask Short Desc";
  }

  else
  {
    v2 = @"Rotoshape Short Desc";
  }

  PCURL::PCURL(a2, v2);
}

void non-virtual thunk toOZRotoshape::description(OZRotoshape *this@<X0>, PCURL *a2@<X8>)
{
  if ((*(this + 256) & 8) != 0)
  {
    v2 = @"Rotoshape Mask Short Desc";
  }

  else
  {
    v2 = @"Rotoshape Short Desc";
  }

  PCURL::PCURL(a2, v2);
}

void *OZRotoshape::getLockDependencies(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  OZLockingElement::getLockDependencies(a1, a2, a3, a4);
  result = *(a1 + 37856);
  if (result)
  {
    if (result)
    {
      v7 = result;
      PCDirectedGraph<OZLocking *>::addEdge(a3, a1, result);

      return PCDirectedGraph<OZLocking *>::addEdge(a3, v7, a1);
    }
  }

  return result;
}

uint64_t OZRotoshape::acquireObjectLock(OZRotoshape *this)
{
  v1 = ProShade::Snippet::code((this + 18976));

  return PCMutex::lock(v1);
}

uint64_t OZRotoshape::releaseObjectLock(OZRotoshape *this)
{
  v1 = ProShade::Snippet::code((this + 18976));

  return PCMutex::unlock(v1);
}

uint64_t OZRotoshape::setDefaultTranslation(OZRotoshape *this, double a2, double a3, double a4)
{
  v8 = MEMORY[0x277CC08F0];
  (*(*(this + 2612) + 712))();
  (*(*(this + 2631) + 712))(this + 21048, v8, 0, a3);
  OZChannel::setDefaultValue((this + 1552), a2);
  OZChannel::setDefaultValue((this + 1704), a3);

  return OZChannel::setDefaultValue((this + 2152), a4);
}

void OZGroup::OZGroup(OZGroup *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZElement::OZElement(this, a2, a3, a4);
  *v5 = &unk_287294770;
  v5[2] = &unk_2872950B0;
  v5[6] = &unk_287295308;
  v5[816] = &unk_287295360;
  v5[2347] = v5 + 2347;
  v5[2348] = v5 + 2347;
  v5[2349] = 0;
  PCURL::PCURL(&v20, @"Channel Group Members");
  OZChannelFolder::OZChannelFolder((this + 18800), &v20, (this + 56), 0x12Cu, 0, 0);
  PCString::~PCString(&v20);
  PCURL::PCURL(&v20, @"Channel Group Dimension Type Enum");
  PCURL::PCURL(&v19, @"Channel Group Dimension Type");
  Instance = OZGroup::OZGroup_dimensionTypeImpl::getInstance(v6);
  OZChannelEnumDimension::OZChannelEnumDimension((this + 18928), 0, &v20, &v19, (this + 448), 0x133u, 0, Instance);
  PCString::~PCString(&v19);
  PCString::~PCString(&v20);
  PCURL::PCURL(&v20, @"Channel Group Fixed Resolution");
  OZChannelBool::OZChannelBool((this + 19184), &v20, (this + 448), 0x12Du, 0, 0, 0);
  PCString::~PCString(&v20);
  PCURL::PCURL(&v20, @"Channel Group Fixed Width");
  v9 = OZGroup::OZGroup_fixedWidthImpl::getInstance(v8);
  v10 = OZGroup::OZGroup_fixedWidthInfo::getInstance(v9);
  OZChannelUint32::OZChannelUint32((this + 19336), &v20, (this + 448), 0x12Eu, 0, v9, v10);
  PCString::~PCString(&v20);
  PCURL::PCURL(&v20, @"Channel Group Fixed Height");
  v12 = OZGroup::OZGroup_fixedHeightImpl::getInstance(v11);
  v13 = OZGroup::OZGroup_fixedHeightInfo::getInstance(v12);
  OZChannelUint32::OZChannelUint32((this + 19488), &v20, (this + 448), 0x12Fu, 0, v12, v13);
  PCString::~PCString(&v20);
  PCURL::PCURL(&v20, @"Channel Group Is Flattened");
  OZChannelBool::OZChannelBool((this + 19640), 0, &v20, (this + 448), 0x137u, 0, 0, 0);
  PCString::~PCString(&v20);
  PCURL::PCURL(&v20, @"Channel Group Is Layer Order");
  OZChannelBool::OZChannelBool((this + 19792), &v20, (this + 448), 0x131u, 0, 0, 0);
  PCString::~PCString(&v20);
  PCString::PCString(&v20, "Channel Group Freeze Action");
  OZChannelButton::OZChannelButton((this + 19944), OZGroup::freezeCallbackStub, this, &v20, (this + 448), 0x136u, 0xAu);
  PCString::~PCString(&v20);
  PCURL::PCURL(&v20, @"Channel Group Aperture Width");
  OZChannelDouble::OZChannelDouble((this + 20136), &v20, (this + 448), 0x138u, 0, 0, 0);
  PCString::~PCString(&v20);
  PCURL::PCURL(&v20, @"Channel Group Aperture Height");
  OZChannelDouble::OZChannelDouble((this + 20288), &v20, (this + 448), 0x139u, 0, 0, 0);
  PCString::~PCString(&v20);
  v14 = PCString::PCString(&v20, "Hidden Channel");
  v15 = OZGroup::OZGroup_versionImpl::getInstance(v14);
  OZChannelDouble::OZChannelDouble((this + 20440), 5, &v20, (this + 448), 0x13Au, 2, v15, 0);
  PCString::~PCString(&v20);
  PCURL::PCURL(&v20, @"Channel Group New Fixed Res Behavior");
  OZChannelDouble::OZChannelDouble((this + 20592), 1, &v20, (this + 448), 0x13Bu, 0, 0, 0);
  PCString::~PCString(&v20);
  PCString::PCString(&v20, "Host 3D Engine World");
  OZChannelFolder::OZChannelFolder((this + 20744), &v20, (this + 448), 0x13Cu, 0, 0);
  PCString::~PCString(&v20);
  PCString::PCString(&v20, "People Occlusion");
  OZChannelBool::OZChannelBool((this + 20872), 1, &v20, (this + 20744), 0x13Du, 0, 0, 0);
  PCString::~PCString(&v20);
  PCString::PCString(&v20, "Physics");
  OZChannelFolder::OZChannelFolder((this + 21024), &v20, (this + 20744), 0x13Eu, 0, 0);
  PCString::~PCString(&v20);
  PCString::PCString(&v20, "Gravity (m/s)");
  OZChannelDouble::OZChannelDouble((this + 21152), 9.8, &v20, (this + 21024), 0x13Fu, 0, 0, 0);
  PCString::~PCString(&v20);
  PCString::PCString(&v20, "Depth Map");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 21304), &v20, (this + 20744), 0x140u, 0);
  PCString::~PCString(&v20);
  *(this + 22888) = 1;
  OZChannelBase::setFlag((this + 18800), 8, 0);
  OZChannelBase::setFlag((this + 20136), 2, 0);
  OZChannelBase::saveStateAsDefault((this + 20136));
  OZChannelBase::setFlag((this + 20288), 2, 0);
  OZChannelBase::saveStateAsDefault((this + 20288));
  OZChannelBase::setFlag((this + 20592), 4259872, 0);
  OZChannelBase::saveStateAsDefault((this + 20592));
  v16 = PCBlend::modeMenuString(1);
  OZChannelEnum::setStrings(this + 854, v16, 1);
  LODWORD(v20.var0) = 0;
  LayerBlendModes = PCBlend::getLayerBlendModes(&v20, v17);
  OZChannelEnum::setTags((this + 6832), LayerBlendModes, v20.var0);
  OZChannel::setDefaultValue((this + 6832), 34.0);
  OZChannelBase::reset(this + 61, 0);
  (*(*this + 1704))(this, 1);
  OZChannelBase::setFlag((this + 6680), 2048, 0);
  OZChannelBase::saveStateAsDefault((this + 6680));
  OZChannelBase::setFlag(this + 61, 2048, 0);
  OZChannelBase::saveStateAsDefault(this + 61);
  OZChannelBase::setFlag((this + 14568), 2048, 0);
  OZChannelFolder::saveStateAsDefault((this + 14568));
  OZChannelBase::setFlag((this + 17520), 2048, 0);
  OZChannelFolder::saveStateAsDefault((this + 17520));
  OZChannelBase::setFlag((this + 12672), 2048, 0);
  OZChannelFolder::saveStateAsDefault((this + 12672));
  OZChannelBase::setFlag((this + 14568), 2048, 0);
  OZChannelFolder::saveStateAsDefault((this + 14568));
  OZChannelBase::setFlag((this + 8232), 2048, 0);
  OZChannelBase::saveStateAsDefault((this + 8232));
  OZChannelBase::setFlag((this + 19184), 2048, 0);
  OZChannelBase::saveStateAsDefault((this + 19184));
  OZChannelFolder::setFoldFlag((this + 20744), 0x20000);
  OZChannelBase::enable((this + 20744), 0, 0);
  OZChannelFolder::saveStateAsDefault((this + 20744));
  OZChannel::setDefaultValue((this + 21152), 9.8);
  OZChannel::setSliderMin((this + 21152), -100.0);
  OZChannel::setSliderMax((this + 21152), 100.0);
  *(this + 2862) = 0;
}

void sub_2601699FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + v16));
  OZChannelFolder::~OZChannelFolder((v12 + v13));
  OZChannelBool::~OZChannelBool((v12 + 20872));
  OZChannelFolder::~OZChannelFolder((v12 + v18));
  OZChannel::~OZChannel((v12 + v17));
  OZChannel::~OZChannel((v12 + 20440));
  OZChannel::~OZChannel((v12 + v15));
  OZChannel::~OZChannel((v12 + v14));
  OZChannelButton::~OZChannelButton((v12 + 19944));
  OZChannelBool::~OZChannelBool((v12 + 19792));
  OZChannelBool::~OZChannelBool((v12 + 19640));
  OZChannel::~OZChannel((v12 + 19488));
  OZChannel::~OZChannel((v12 + 19336));
  OZChannelBool::~OZChannelBool((v12 + 19184));
  OZChannelEnum::~OZChannelEnum((v12 + 18928));
  OZChannelFolder::~OZChannelFolder((v12 + 18800));
  std::__list_imp<unsigned int>::clear(a10);
  OZElement::~OZElement(v12);
  _Unwind_Resume(a1);
}

void OZGroup::OZGroup(OZGroup *this, const OZGroup *a2, uint64_t a3)
{
  OZElement::OZElement(this, a2, a3);
  *v6 = &unk_287294770;
  v6[2] = &unk_2872950B0;
  v6[6] = &unk_287295308;
  v6[816] = &unk_287295360;
  v6[2347] = v6 + 2347;
  v6[2348] = v6 + 2347;
  v6[2349] = 0;
  PCURL::PCURL(&v26, @"Channel Group Members");
  OZChannelFolder::OZChannelFolder((this + 18800), &v26, (this + 56), 0x12Cu, 0, 0);
  PCString::~PCString(&v26);
  OZChannelEnum::OZChannelEnum((this + 18928), (a2 + 18928), (this + 448));
  *(this + 2366) = &unk_287295720;
  *(this + 2368) = &unk_287295A90;
  OZChannelBool::OZChannelBool((this + 19184), (a2 + 19184), (this + 448));
  OZChannel::OZChannel((this + 19336), (a2 + 19336), (this + 448));
  *(this + 2417) = &unk_287246400;
  *(this + 2419) = &unk_287246760;
  OZChannel::OZChannel((this + 19488), a2 + 174, (this + 448));
  *(this + 2436) = &unk_287246400;
  *(this + 2438) = &unk_287246760;
  OZChannelBool::OZChannelBool((this + 19640), (a2 + 19640), (this + 448));
  OZChannelBool::OZChannelBool((this + 19792), (a2 + 19792), (this + 448));
  OZChannelButton::OZChannelButton((this + 19944), (a2 + 19944), (this + 448));
  OZChannel::OZChannel((this + 20136), (a2 + 20136), (this + 448));
  *(this + 2517) = &unk_287245C60;
  *(this + 2519) = &unk_287245FC0;
  OZChannel::OZChannel((this + 20288), (a2 + 20288), (this + 448));
  *(this + 2536) = &unk_287245C60;
  *(this + 2538) = &unk_287245FC0;
  OZChannel::OZChannel((this + 20440), (a2 + 20440), (this + 448));
  *(this + 2555) = &unk_287245C60;
  *(this + 2557) = &unk_287245FC0;
  OZChannel::OZChannel((this + 20592), (a2 + 20592), (this + 448));
  *(this + 2574) = &unk_287245C60;
  *(this + 2576) = &unk_287245FC0;
  OZChannelFolder::OZChannelFolder((this + 20744), (a2 + 20744), (this + 448));
  OZChannelBool::OZChannelBool((this + 20872), (a2 + 20872), (this + 20744));
  OZChannelFolder::OZChannelFolder((this + 21024), (a2 + 21024), (this + 20744));
  OZChannel::OZChannel((this + 21152), (a2 + 21152), (this + 21024));
  *(this + 2644) = &unk_287245C60;
  *(this + 2646) = &unk_287245FC0;
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 21304), (a2 + 21304), (this + 20744));
  *(this + 11444) = *(a2 + 11444);
  v7 = PCBlend::modeMenuString(1);
  OZChannelEnum::setStrings(this + 854, v7, 1);
  v25 = 0;
  LayerBlendModes = PCBlend::getLayerBlendModes(&v25, v8);
  OZChannelEnum::setTags((this + 6832), LayerBlendModes, v25);
  OZChannelButton::setPrivateData((this + 19944), this);
  if ((a3 & 1) == 0)
  {
    v17 = a2 + 18776;
    if ((a2 + 18776) != *(a2 + 2348))
    {
      do
      {
        v18 = *(*v17 + 16);
        v19 = (*(*(v18 + 16) + 96))(v18 + 16, v10, v11, v12, v13, v14, v15, v16);
        if ((a3 & 0x50) != 0)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          v21 = (*(**(v18 + 8) + 24))(*(v18 + 8), v18, a3);
          if (v21)
          {
            if (v22)
            {
              v23 = v22;
              if ((a3 & 8) == 0)
              {
                OZObjectManipulator::appendCopyToName((v22 + 16));
                v24 = (*(*v23 + 640))(v23);
                OZChannelBase::setNameUnset(v24, 1);
              }

              operator new();
            }
          }
        }

        v17 = *v17;
      }

      while (v17 != *(a2 + 2348));
    }
  }

  (*(*this + 1704))(this, 1);
  *(this + 2862) = 0;
}

void sub_26016A3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, OZChannel *a9, OZChannel *a10, OZChannel *a11, OZChannel *a12, OZChannel *a13, OZChannel *a14, PCString *a15, void *a16, uint64_t a17, PCString a18)
{
  OZChannel::~OZChannel(v19);
  OZChannelFolder::~OZChannelFolder((v18 + 21024));
  OZChannelBool::~OZChannelBool((v18 + 20872));
  OZChannelFolder::~OZChannelFolder((v18 + 20744));
  OZChannel::~OZChannel(a9);
  OZChannel::~OZChannel(a10);
  OZChannel::~OZChannel(a11);
  OZChannel::~OZChannel(a12);
  OZChannelButton::~OZChannelButton((v18 + 19944));
  OZChannelBool::~OZChannelBool((v18 + 19792));
  OZChannelBool::~OZChannelBool((v18 + 19640));
  OZChannel::~OZChannel(a13);
  OZChannel::~OZChannel(a14);
  OZChannelBool::~OZChannelBool((v18 + 19184));
  OZChannelEnum::~OZChannelEnum(a15);
  OZChannelFolder::~OZChannelFolder((v18 + 18800));
  std::__list_imp<unsigned int>::clear(a16);
  OZElement::~OZElement(v18);
  _Unwind_Resume(a1);
}

void OZGroup::~OZGroup(OZGroup *this)
{
  *this = &unk_287294770;
  *(this + 2) = &unk_2872950B0;
  *(this + 6) = &unk_287295308;
  *(this + 816) = &unk_287295360;
  for (i = *(this + 2349); i; i = *(this + 2349))
  {
    v3 = *(this + 2348);
    v4 = v3[1];
    v5 = v3[2];
    v6 = *v3;
    *(v6 + 8) = v4;
    *v4 = v6;
    *(this + 2349) = i - 1;
    operator delete(v3);
    v7 = (*(*v5 + 640))(v5);
    OZChannelFolder::removeDescendant((this + 56), v7);
    v8 = *(this + 121);
    if (v8)
    {
      OZScene::unregisterNode(v8, v5);
      OZScene::removeAllDependencies(*(this + 121), v5);
    }

    (*(*v5 + 8))(v5);
  }

  v9 = *(this + 2862);
  if (v9)
  {
    std::__tree<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::__map_value_compare<SCNParticleSystem *,std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::less<SCNParticleSystem *>,true>,std::allocator<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>>>::destroy(v9 + 144, *(v9 + 152));
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v9 + 120, *(v9 + 128));
    ProCore_Impl::PCNSRefImpl::release((v9 + 112));
    std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::destroy(v9 + 80, *(v9 + 88));
    ProCore_Impl::PCNSRefImpl::release((v9 + 64));
    std::recursive_mutex::~recursive_mutex(v9);
    MEMORY[0x2666E9F00]();
    *(this + 2862) = 0;
  }

  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 21304));
  OZChannel::~OZChannel((this + 21152));
  OZChannelFolder::~OZChannelFolder((this + 21024));
  OZChannelBool::~OZChannelBool((this + 20872));
  OZChannelFolder::~OZChannelFolder((this + 20744));
  OZChannel::~OZChannel((this + 20592));
  OZChannel::~OZChannel((this + 20440));
  OZChannel::~OZChannel((this + 20288));
  OZChannel::~OZChannel((this + 20136));
  OZChannelButton::~OZChannelButton((this + 19944));
  OZChannelBool::~OZChannelBool((this + 19792));
  OZChannelBool::~OZChannelBool((this + 19640));
  OZChannel::~OZChannel((this + 19488));
  OZChannel::~OZChannel((this + 19336));
  OZChannelBool::~OZChannelBool((this + 19184));
  OZChannelEnum::~OZChannelEnum(this + 2366);
  OZChannelFolder::~OZChannelFolder((this + 18800));
  std::__list_imp<unsigned int>::clear(this + 2347);

  OZElement::~OZElement(this);
}

{
  OZGroup::~OZGroup(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZGroup::~OZGroup(OZGroup *this)
{
  OZGroup::~OZGroup((this - 16));
}

{
  OZGroup::~OZGroup((this - 48));
}

{
  OZGroup::~OZGroup((this - 6528));
}

{
  OZGroup::~OZGroup((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZGroup::~OZGroup((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZGroup::~OZGroup((this - 6528));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZGroup::canDelete(OZGroup *this)
{
  if ((*(*(this + 2) + 56))())
  {
    return 0;
  }

  v2 = 1;
  if ((OZGroup::hasUnlockedDescendant(this, 1) & 1) == 0)
  {
    return (*(*this + 960))(this) ^ 1;
  }

  return v2;
}

uint64_t OZGroup::hasUnlockedDescendant(OZGroup *this, int a2)
{
  v4 = (*(*this + 1024))(this);
  v5 = (*(*this + 1032))(this);
  if (v4 == v5)
  {
    return 0;
  }

  v7 = v5;
  while (1)
  {
    while (1)
    {
      v8 = *(v4 + 16);
      if (v8)
      {
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      if (((*(v8[2] + 56))(v8 + 2, 1) & 1) == 0)
      {
        break;
      }

LABEL_12:
      if (v9)
      {
        goto LABEL_13;
      }

LABEL_14:
      v4 = *(v4 + 8);
      if (v4 == v7)
      {
        return 0;
      }
    }

    if (!v9 || (OZGroup::hasLockedDescendant(v9, 1) & 1) == 0)
    {
      break;
    }

LABEL_13:
    if ((a2 & (*(*v9 + 960))(v9) & 1) == 0)
    {
      goto LABEL_14;
    }

    v4 = (*(*v9 + 1024))(v9);
    v7 = (*(*v9 + 1032))(v9);
    result = 0;
    a2 = 1;
    if (v4 == v7)
    {
      return result;
    }
  }

  if (v10 && OZImageElement::isLockedDropZone(v10))
  {
    goto LABEL_12;
  }

  return 1;
}

void OZGroup::getIconName(OZGroup *this@<X0>, PCURL *a2@<X8>)
{
  if ((*(*this + 1640))(this) == 2)
  {
    v4 = @"M_LayersList_ObjectIconColor-360Group";
  }

  else
  {
    v5 = (*(*this + 1656))(this, MEMORY[0x277CC08F0]);
    v6 = (*(*this + 1640))(this);
    if (v5)
    {
      v7 = @"M_LayersList_ObjectIconColor-3DGroupRasterized";
      v8 = @"M_LayersList_ObjectIconColor-2DGroupRasterized";
    }

    else
    {
      v7 = @"M_LayersList_ObjectIconColor-3DGroup";
      v8 = @"M_LayersList_ObjectIconColor-2DGroup";
    }

    if (v6)
    {
      v4 = v7;
    }

    else
    {
      v4 = v8;
    }
  }

  PCURL::PCURL(a2, v4);
}

void OZGroup::getIconNameBW(OZGroup *this@<X0>, PCURL *a2@<X8>)
{
  if ((*(*this + 1640))(this) == 2)
  {
    v4 = @"M_LayersList_ObjectIconGrey-360Group";
  }

  else
  {
    v5 = (*(*this + 1656))(this, MEMORY[0x277CC08F0]);
    v6 = (*(*this + 1640))(this);
    if (v5)
    {
      v7 = @"M_LayersList_ObjectIconGrey-3DGroupRasterized";
      v8 = @"M_LayersList_ObjectIconGrey-2DGroupRasterized";
    }

    else
    {
      v7 = @"M_LayersList_ObjectIconGrey-3DGroup";
      v8 = @"M_LayersList_ObjectIconGrey-2DGroup";
    }

    if (v6)
    {
      v4 = v7;
    }

    else
    {
      v4 = v8;
    }
  }

  PCURL::PCURL(a2, v4);
}

uint64_t OZGroup::getIconID(OZGroup *this)
{
  if ((*(*this + 1640))(this) == 2)
  {
    return 0;
  }

  v3 = (*(*this + 1656))(this, MEMORY[0x277CC08F0]);
  v4 = (*(*this + 1640))(this);
  if (!v3)
  {
    return v4 == 0;
  }

  if (v4)
  {
    return 26;
  }

  return 27;
}

__n128 OZGroup::getNaturalDuration@<Q0>(OZGroup *this@<X0>, __n128 *a2@<X8>)
{
  if ((*(*this + 272))(this))
  {
    v4 = ((*(*this + 272))(this) + 336);

    result.n128_u64[0] = OZSceneSettings::getFrameDuration(v4, a2).n128_u64[0];
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    a2[1].n128_u64[0] = *(v6 + 16);
  }

  return result;
}

void OZGroup::freezeCallback(OZGroup *this)
{
  if (((*(*this + 800))(this) & 1) == 0 && (*(*this + 792))(this))
  {
    if (*(this + 121))
    {
      v4[0] = 0;
      v4[1] = 0;
      v3.var0 = v4;
      v2 = *(this + 20);
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v3, &v2);
      OZChannelBase::setRangeName(*(this + 121), &v3);
      OZDocument::postNotification(*(*(this + 121) + 1584), 136);
      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v3, v4[0]);
    }
  }
}

void OZGroup::copyLinkedIDs(const void **this, const OZSceneNode *a2, uint64_t a3)
{
  OZSceneNode::copyLinkedIDs(this, a2);
  if ((a3 & 1) == 0)
  {
    v6 = (*(*this + 128))(this);
    for (i = (*(*a2 + 1024))(a2); v6 != (*(*this + 129))(this) && i != (*(*a2 + 1032))(a2); i = *(i + 8))
    {
      (*(**(v6 + 16) + 216))(*(v6 + 16), *(i + 16), a3);
      v6 = *(v6 + 8);
    }
  }
}

CGColorSpace **OZGroup::getOriginalBounds(uint64_t a1, uint64_t a2, const OZRenderState *a3)
{
  if ((*(*a1 + 1440))(a1))
  {
    FreezeFootage = OZElement::getFreezeFootage(a1);
    v30[0] = 0;
    v30[1] = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v30[2] = _Q0;
    *&v38.var0.var0 = xmmword_260343AA0;
    v38.var0.var3 = 0x3FF0000000000000;
    memset(&v38.var1, 0, 24);
    *&v38.var4 = 0x3FF0000000000000;
    memset(&v38.var5, 0, 24);
    HIDWORD(v38.var7.var0[1][0]) = 0;
    v38.var7.var0[0][3] = 0.0;
    *&v38.var7.var0[0][1] = 0x3FF0000000000000uLL;
    LOBYTE(v38.var7.var0[1][0]) = 0;
    *&v38.var7.var0[1][1] = *MEMORY[0x277CC08F0];
    v38.var7.var0[1][3] = *(MEMORY[0x277CC08F0] + 16);
    v38.var7.var0[2][0] = 0.0;
    LOWORD(v38.var7.var0[2][1]) = 0;
    v38.var7.var0[2][2] = 0.0;
    LOWORD(v38.var7.var0[2][3]) = 0;
    *(&v38.var7.var0[2][3] + 4) = 0x100000000;
    BYTE4(v38.var7.var0[3][0]) = 0;
    *&v38.var7.var0[3][1] = 0uLL;
    LOWORD(v38.var7.var0[3][3]) = 768;
    *&v38.var8 = 0x408F400000000000;
    LOBYTE(v38.var14) = 0;
    HIDWORD(v38.var14) = 0;
    LOBYTE(v38.var15) = 0;
    *&v38.var16 = -1;
    __asm { FMOV            V0.2D, #1.0 }

    *&v38.var18 = _Q0;
    (*(*FreezeFootage + 1568))();
    v13 = *&v30[2];
    __asm { FMOV            V1.2D, #-0.5 }

    *a2 = vmulq_f64(*&v30[2], _Q1);
    *(a2 + 16) = v13;
    PCCFRef<CGColorSpace *>::~PCCFRef(&v38.var7.var0[3][2]);
    return PCCFRef<CGColorSpace *>::~PCCFRef(&v38.var7.var0[3][1]);
  }

  else if (OZChannel::getValueAsInt((a1 + 19184), MEMORY[0x277CC08F0], 0.0) && !(*(*a1 + 1640))(a1))
  {
    v23 = MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((a1 + 19336), MEMORY[0x277CC08F0], 0.0);
    result = OZChannel::getValueAsInt((a1 + 19488), v23, 0.0);
    *a2 = (ValueAsInt / -2);
    *(a2 + 8) = (result / -2);
    *(a2 + 16) = ValueAsInt;
    *(a2 + 24) = result;
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    v25 = _Q0;
    *(a2 + 16) = _Q0;
    OZRenderState::OZRenderState(&v38, a3);
    v38.var4 = 1;
    v37 = 0x3FF0000000000000;
    v34 = 0x3FF0000000000000;
    v31 = 0x3FF0000000000000;
    v30[0] = 0x3FF0000000000000;
    v38.var16 = 0;
    memset(&v30[1], 0, 32);
    v32 = 0u;
    v33 = 0u;
    v35 = 0u;
    v36 = 0u;
    (*(*a1 + 1272))(a1, v30, a3);
    OZSceneNode::begin_t<OZElement,false,false>(a1, v28);
    if (v28[0] != v28[2])
    {
      v17 = *(v28[0] + 16);
      if (v17)
      {
        if (v18)
        {
          v19 = v18;
          do
          {
            *&v27 = a3->var0.var3;
            v26 = *&a3->var0.var0;
            if ((*(*(v19 + 2) + 104))(v19 + 16, &v26, 0, 1, 1))
            {
              OZElement::getOpacity(v19, a3, 0);
              if (fabs(v20) >= 0.0000001 || a3->var24)
              {
                v26 = 0uLL;
                v27 = v25;
                (*(*v19 + 1528))(v19, &v26, v30, &v38);
                PCRect<double>::operator|=(a2, &v26);
              }
            }

            v21 = OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(v28);
            if (*v21 == v21[2])
            {
              break;
            }

            v22 = *(*v21 + 16);
            if (!v22)
            {
              break;
            }
          }

          while (v19);
        }
      }
    }

    if (a3->var27)
    {
      OZElement::expandBoundsToIncludeDropShadow(a1, a2, a3);
    }

    return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v29);
  }

  return result;
}

void sub_26016B99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *OZSceneNode::begin_t<OZElement,false,false>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 1024))(a1);
  result = (*(*a1 + 1032))(a1);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v4;
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  if (v4 != result)
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      return OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t OZGroup::getProjectedBounds(uint64_t a1, float64x2_t *a2, uint64_t a3, __int128 *a4)
{
  __asm { FMOV            V0.2D, #-1.0 }

  v23 = _Q0;
  a2[1] = _Q0;
  if (OZChannel::getValueAsInt((a1 + 19184), MEMORY[0x277CC08F0], 0.0) && !(*(*a1 + 1640))(a1) && OZChannel::getValueAsInt((a1 + 20592), MEMORY[0x277CC08F0], 0.0))
  {
    v13 = MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((a1 + 19336), MEMORY[0x277CC08F0], 0.0);
    v15 = OZChannel::getValueAsInt((a1 + 19488), v13, 0.0);
    a2->f64[0] = (ValueAsInt / -2);
    a2->f64[1] = (v15 / -2);
    a2[1].f64[0] = ValueAsInt;
    a2[1].f64[1] = v15;
  }

  else
  {
    v38 = 0x3FF0000000000000;
    v35 = 0x3FF0000000000000;
    v32 = 0x3FF0000000000000;
    v29 = 0x3FF0000000000000;
    v30 = 0u;
    v31 = 0u;
    v33 = 0u;
    v34 = 0u;
    v36 = 0u;
    v37 = 0u;
    (*(*a1 + 1256))(a1, &v29, a4);
    OZSceneNode::begin_t<OZElement,false,false>(a1, v27);
    if (v27[0] != v27[2])
    {
      v16 = *(v27[0] + 16);
      if (v16)
      {
        if (v17)
        {
          v18 = v17;
          do
          {
            v25 = *(a4 + 2);
            v24 = *a4;
            if ((*(*(v18 + 2) + 104))(v18 + 16, &v24, 0, 1, 1))
            {
              OZElement::getOpacity(v18, a4, 0);
              if (fabs(v19) >= 0.0000001)
              {
                v26[0] = 0uLL;
                v26[1] = v23;
                PCMatrix44Tmpl<double>::operator*(a3, &v29, &v24);
                (*(*v18 + 1528))(v18, v26, &v24, a4);
                PCRect<double>::operator|=(a2, v26);
              }
            }

            v20 = OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(v27);
            if (*v20 == v20[2])
            {
              break;
            }

            v21 = *(*v20 + 16);
            if (!v21)
            {
              break;
            }
          }

          while (v18);
        }
      }
    }

    if (*(a4 + 241))
    {
      OZElement::expandBoundsToIncludeDropShadow(a1, a2, a4);
    }

    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v28);
  }

  return 1;
}

int8x16_t OZGroup::getImageBoundsWithEffectsAndCrop(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 1656))(a1, MEMORY[0x277CC08F0]);
  v7 = *a1;
  if (v6)
  {
    if ((*(v7 + 416))(a1))
    {
      (*(**(a1[123] + 16) + 80))(*(a1[123] + 16), a2, a3);
    }

    else
    {
      (*(*a1 + 1520))(a1, a2, a3);
    }
  }

  else
  {
    (*(v7 + 1520))(a1, a2, a3);
  }

  result.i64[0] = *(a2 + 16);
  if (*result.i64 >= 0.0)
  {
    result.i64[0] = *(a2 + 24);
    if (*result.i64 >= 0.0)
    {
      v24 = 0.0;
      v25 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v9 = 0uLL;
      if (*(a3 + 232) == 1)
      {
        v10 = (*(*a1 + 1608))(a1);
        v9 = 0uLL;
        v11 = 0uLL;
        if (v10)
        {
          OZChannelCrop::getValue((a1 + 2190), a3, &v25, &v24, &v23, &v22, 0.0);
          v12.f64[0] = v24;
          v13.f64[0] = v25;
          v12.f64[1] = v22;
          __asm { FMOV            V2.2D, #0.5 }

          v19 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
          *&v12.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vaddq_f64(v12, _Q2), v19))));
          v20.i64[0] = SLODWORD(v12.f64[0]);
          v20.i64[1] = SHIDWORD(v12.f64[0]);
          v11 = vcvtq_f64_s64(v20);
          v13.f64[1] = v23;
          *&v13.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vaddq_f64(v13, _Q2), v19))));
          v20.i64[0] = SLODWORD(v13.f64[0]);
          v20.i64[1] = SHIDWORD(v13.f64[0]);
          v9 = vcvtq_f64_s64(v20);
        }
      }

      else
      {
        v11 = 0uLL;
      }

      v21 = vsubq_f64(*(a2 + 16), vaddq_f64(v9, v11));
      result = vbicq_s8(v21, vcltzq_f64(v21));
      *a2 = vaddq_f64(v9, *a2);
      *(a2 + 16) = result;
    }
  }

  return result;
}

void OZGroup::getFourCornerPointsInObjectSpace(uint64_t a1, const OZRenderState *a2, float64x2_t *a3, double *a4, float64x2_t *a5, double *a6)
{
  v12 = *&a2->var0.var0;
  v41.epoch = a2->var0.var3;
  v39 = 0uLL;
  __asm { FMOV            V1.2D, #-1.0 }

  v40 = _Q1;
  *&v41.value = v12;
  OZRenderState::OZRenderState(&v38, a2);
  v38.var19 = 1;
  (*(*a1 + 1560))(a1, &v39, &v38);
  if (a2->var19)
  {
    OZChannel::getValueAsDouble((a1 + 14840), &v41, 0.0);
    v36 = v18;
    OZChannel::getValueAsDouble((a1 + 14992), &v41, 0.0);
    v19.f64[0] = v36;
    v19.f64[1] = v20;
    *a3 = vaddq_f64(v19, v39);
    OZChannel::getValueAsDouble((a1 + 15544), &v41, 0.0);
    v22 = v21;
    OZChannel::getValueAsDouble((a1 + 15696), &v41, 0.0);
    v23 = v39.f64[1];
    *a4 = v22 + v39.f64[0] + v40.f64[0];
    a4[1] = v24 + v23;
    OZChannel::getValueAsDouble((a1 + 16248), &v41, 0.0);
    v37 = v25;
    OZChannel::getValueAsDouble((a1 + 16400), &v41, 0.0);
    v26.f64[0] = v37;
    v26.f64[1] = v27;
    *a5 = vaddq_f64(v26, vaddq_f64(v39, v40));
    OZChannel::getValueAsDouble((a1 + 16952), &v41, 0.0);
    v29 = v28;
    OZChannel::getValueAsDouble((a1 + 17104), &v41, 0.0);
    v30 = v29 + v39.f64[0];
    v32 = v31 + v39.f64[1] + v40.f64[1];
  }

  else
  {
    v33 = v39.f64[1];
    v30 = v39.f64[0];
    a3->f64[0] = v39.f64[0];
    a3->f64[1] = v33;
    v34 = v40.f64[1];
    v35 = v30 + v40.f64[0];
    *a4 = v30 + v40.f64[0];
    a4[1] = v33;
    v32 = v33 + v34;
    a5->f64[0] = v35;
    a5->f64[1] = v32;
  }

  *a6 = v30;
  a6[1] = v32;
}

uint64_t OZGroup::getDocumentSpaceBoundary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 960))(a1))
  {
    v6 = (*(*a1 + 1024))(a1);
    v7 = (*(*a1 + 1032))(a1);
    if (v6 != v7)
    {
      v9 = v7;
      do
      {
        v10 = *(v6 + 16);
        if (v10)
        {
          if (v11)
          {
            v25 = xmmword_2603429E0;
            v26 = xmmword_2603429E0;
            v24 = xmmword_2603429E0;
            (*(*v11 + 1536))(v11, &v24, a3);
            if (vmovn_s64(vcgtq_f64(*a2, vdupq_laneq_s64(*a2, 1))).u8[0] & 1) != 0 || (v12 = *(a2 + 16), (vmovn_s64(vcgtq_f64(v12, vdupq_laneq_s64(v12, 1))).u8[0]) || (v14 = *(a2 + 32), v13 = *(a2 + 40), v14 > v13))
            {
              v15 = v25;
              *a2 = v24;
              *(a2 + 16) = v15;
              *(a2 + 32) = v26;
            }

            else if ((vmovn_s64(vcgtq_f64(v24, vdupq_laneq_s64(v24, 1))).u8[0] & 1) == 0 && (vmovn_s64(vcgtq_f64(v25, vdupq_laneq_s64(v25, 1))).u8[0] & 1) == 0)
            {
              v16 = v26;
              if (*&v26 <= *(&v26 + 1))
              {
                v17.f64[0] = *a2;
                v17.f64[1] = v24.f64[1];
                v18.f64[0] = *(a2 + 16);
                v18.f64[1] = *(&v25 + 1);
                v19.f64[0] = v24.f64[0];
                v19.f64[1] = *(a2 + 8);
                *&v20.f64[0] = v25;
                v20.f64[1] = *(a2 + 24);
                v21 = vbslq_s8(vcgtq_f64(v20, v18), v12, v25);
                *a2 = vbslq_s8(vcgtq_f64(v19, v17), *a2, v24);
                *(a2 + 16) = v21;
                if (v14 >= *&v16)
                {
                  v22 = *&v16;
                }

                else
                {
                  v22 = v14;
                }

                if (v13 <= *(&v16 + 1))
                {
                  v23 = *(&v16 + 1);
                }

                else
                {
                  v23 = v13;
                }

                *(a2 + 32) = v22;
                *(a2 + 40) = v23;
              }
            }
          }
        }

        v6 = *(v6 + 8);
      }

      while (v6 != v9);
    }
  }

  return 1;
}

void *OZGroup::getLocalVolume(uint64_t a1, double *a2, const OZRenderState *a3)
{
  if (OZChannel::getValueAsInt((a1 + 19184), MEMORY[0x277CC08F0], 0.0) && !(*(*a1 + 1640))(a1))
  {
    v33 = MEMORY[0x277CC08F0];
    v34 = OZChannel::getValueAsInt((a1 + 19336), MEMORY[0x277CC08F0], 0.0) >> 1;
    result = OZChannel::getValueAsInt((a1 + 19488), v33, 0.0);
    *a2 = -v34;
    a2[1] = v34;
    a2[2] = -(result >> 1);
    a2[3] = (result >> 1);
    a2[4] = 0.0;
    a2[5] = 0.0;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL | 0x8001000000000000;
    result = (*(*a1 + 960))(a1);
    if (result)
    {
      v8 = (*(*a1 + 1024))(a1);
      result = (*(*a1 + 1032))(a1);
      if (v8 != result)
      {
        v9 = result;
        do
        {
          result = *(v8 + 16);
          if (result)
          {
            if (result)
            {
              v10 = result;
              if (!a3->var23 || (v45.var0.var3 = a3->var0.var3, *&v45.var0.var0 = *&a3->var0.var0, result = (*(result[2] + 104))(), result))
              {
                v57 = xmmword_2603429E0;
                v58 = xmmword_2603429E0;
                v56 = xmmword_2603429E0;
                (*(*v10 + 1360))(v10, &v56, a3);
                v55 = 0x3FF0000000000000;
                v52 = 0x3FF0000000000000;
                v49 = 0x3FF0000000000000;
                v46 = 0x3FF0000000000000;
                v47 = 0u;
                v48 = 0u;
                v50 = 0u;
                v51 = 0u;
                v53 = 0u;
                v54 = 0u;
                OZRenderState::OZRenderState(&v45, a3);
                v45.var4 = 1;
                (*(*v10 + 1256))(v10, &v46, &v45);
                v11 = v6;
                v44 = 0x3FF0000000000000;
                v41 = 0x3FF0000000000000;
                v38 = 0x3FF0000000000000;
                v35 = 0x3FF0000000000000;
                v36 = 0u;
                v37 = 0u;
                v39 = 0u;
                v40 = 0u;
                v42 = 0u;
                v43 = 0u;
                (*(*a1 + 1272))(a1, &v35, &v45);
                PCMatrix44Tmpl<double>::leftMult(&v46, &v35);
                v12 = 0;
                v13 = 0;
                v14 = -1.0;
                v15 = 1.0;
                v16 = 1.0;
                v17 = -1.0;
                v18 = 1.0;
                v19 = -1.0;
                do
                {
                  v20 = (&v57 + 8);
                  if ((v13 & 2) != 0)
                  {
                    v20 = &v57;
                  }

                  v21 = *v20;
                  v22 = (&v58 + 8);
                  if (v13 >= 4)
                  {
                    v22 = &v58;
                  }

                  v23 = *v22;
                  v59 = *(&v56 | v12 & 8 ^ 8);
                  v60 = v21;
                  v61 = v23;
                  result = PCMatrix44Tmpl<double>::transform<double>(&v46, &v59, &v59);
                  if (v12)
                  {
                    if (v15 >= v59)
                    {
                      v15 = v59;
                    }

                    if (v14 <= v59)
                    {
                      v14 = v59;
                    }

                    if (v16 >= v60)
                    {
                      v16 = v60;
                    }

                    if (v17 <= v60)
                    {
                      v17 = v60;
                    }

                    if (v18 >= v61)
                    {
                      v18 = v61;
                    }

                    if (v19 <= v61)
                    {
                      v19 = v61;
                    }
                  }

                  else
                  {
                    v17 = v60;
                    v19 = v61;
                    v18 = v61;
                    v16 = v60;
                    v14 = v59;
                    v15 = v59;
                  }

                  ++v13;
                  v12 += 8;
                }

                while (v12 != 64);
                v25 = *a2;
                v24 = a2[1];
                if (*a2 <= v24 && (v27 = a2[2], v26 = a2[3], v27 <= v26) && (v29 = a2[4], v28 = a2[5], v29 <= v28))
                {
                  v31 = v15 <= v14 && v16 <= v17 && v18 <= v19;
                  v6 = v11;
                  if (!v31)
                  {
                    goto LABEL_36;
                  }

                  if (v25 >= v15)
                  {
                    v25 = v15;
                  }

                  if (v24 <= v14)
                  {
                    v24 = v14;
                  }

                  *a2 = v25;
                  a2[1] = v24;
                  if (v27 >= v16)
                  {
                    v27 = v16;
                  }

                  if (v26 <= v17)
                  {
                    v26 = v17;
                  }

                  a2[2] = v27;
                  a2[3] = v26;
                  if (v29 >= v18)
                  {
                    v32 = v18;
                  }

                  else
                  {
                    v32 = v29;
                  }

                  a2[4] = v32;
                  if (v28 > v19)
                  {
                    v19 = v28;
                  }
                }

                else
                {
                  *a2 = v15;
                  a2[1] = v14;
                  a2[2] = v16;
                  a2[3] = v17;
                  a2[4] = v18;
                  v6 = v11;
                }

                a2[5] = v19;
              }
            }
          }

LABEL_36:
          v8 = *(v8 + 8);
        }

        while (v8 != v9);
      }
    }
  }

  return result;
}

void OZGroup::drawGeometry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PCPrint("File %s, line %d should not have been reached:\n\t", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZGroup.cpp");

  pcAbortImpl();
}

uint64_t OZGroup::gatherWorldLights@<X0>(OZGroup *this@<X0>, const OZRenderState *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = &unk_2871F25A8;
  *(a3 + 24) = 0;
  OZSceneNode::begin_t<OZLight,false,false>(this, v29);
  v6 = (*(*this + 1024))(this);
  v7 = (*(*this + 1032))(this);
  memset(v27, 0, sizeof(v27));
  v28 = 1065353216;
  v23 = v7;
  v24 = v6;
  v25 = v7;
  v26 = 0;
  while (v29[0] != v23)
  {
    if (v29[0] == v29[2])
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v29[0] + 16);
      if (v8)
      {
      }
    }

    OZLight::buildLiLight(v8, a2, v21);
    LiLightSet::add(a3, v21);
    LiLight::~LiLight(v21);
    OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(v29);
  }

  OZSceneNode::begin_t<OZGroup,false,false>(this, v21);
  v9 = (*(*this + 1024))(this);
  v10 = (*(*this + 1032))(this);
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  v15 = v10;
  v16 = v9;
  v17 = v10;
  v18 = 0;
  while (v21[0].var0 != v15)
  {
    if (v21[0].var0 != v21[2].var0)
    {
      v11 = *(v21[0].var0 + 2);
      if (v11)
      {
        if (v12)
        {
          OZGroup::returnGroupLights(v12, a2, v14);
          LiLightSet::add(a3, v14);
          PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v14);
        }
      }
    }

    OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(v21);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v19);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v22);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v27);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v30);
}

void sub_26016CDE8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v3 - 104);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v1);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::returnGroupLights@<X0>(OZGroup *this@<X0>, const OZRenderState *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *&a2->var0.var0;
  var3 = a2->var0.var3;
  v6 = (*(*(this + 2) + 104))();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = &unk_2871F25A8;
  *(a3 + 24) = 0;
  result = (*(*this + 1424))(this);
  if ((result & 1) == 0)
  {
    OZSceneNode::begin_t<OZLight,false,false>(this, v33);
    v8 = (*(*this + 1024))(this);
    v9 = (*(*this + 1032))(this);
    memset(v31, 0, sizeof(v31));
    v32 = 1065353216;
    v27 = v9;
    v28 = v8;
    v29 = v9;
    v30 = 0;
    if (v33[0] == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6;
    }

    if (v10 == 1)
    {
      while (v33[0] != v27)
      {
        if (v33[0] != v33[2])
        {
          v11 = *(v33[0] + 16);
          if (v11)
          {
            if (v12)
            {
              OZLight::buildLiLight(v12, a2, &v24);
              LiLightSet::add(a3, &v24);
              LiLight::~LiLight(&v24);
            }
          }
        }

        OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(v33);
      }

      OZSceneNode::begin_t<OZGroup,false,false>(this, &v24);
      v13 = (*(*this + 1024))(this);
      v14 = (*(*this + 1032))(this);
      memset(v22, 0, sizeof(v22));
      v23 = 1065353216;
      v18 = v14;
      v19 = v13;
      v20 = v14;
      v21 = 0;
      while (v24 != v18)
      {
        if (v24 != var3)
        {
          v15 = *(v24 + 16);
          if (v15)
          {
            if (v16)
            {
              OZGroup::returnGroupLights(v17, v16, a2);
              LiLightSet::add(a3, v17);
              PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v17);
            }
          }
        }

        OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(&v24);
      }

      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v22);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v26);
    }

    else
    {
      *(a3 + 24) = 1;
    }

    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v31);
    return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v34);
  }

  return result;
}

void sub_26016D20C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v3 - 104);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v1);
  _Unwind_Resume(a1);
}

void *OZSceneNode::begin_t<OZLight,false,false>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 1024))(a1);
  result = (*(*a1 + 1032))(a1);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v4;
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  if (v4 != result)
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      return OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

void *OZSceneNode::begin_t<OZGroup,false,false>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 1024))(a1);
  result = (*(*a1 + 1032))(a1);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v4;
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  if (v4 != result)
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      return OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

void *OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator*(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  v1 = *(*a1 + 16);
  if (!v1)
  {
    return 0;
  }

  else
  {
  }
}

void OZGroup::addPostEffects(uint64_t a1@<X0>, uint64_t a2@<X1>, const PCSharedCount *a3@<X2>, PCSharedCount *a4@<X8>)
{
  if (a3->var0)
  {
    if ((*(*a1 + 1640))(a1) == 2)
    {
      v8 = (*(*a1 + 272))(a1);
      v9 = *(v8 + 344);
      v53 = *(v8 + 348);
      v54 = v9;
      v10 = (*(*a1 + 1064))(a1);
      v52 = v10;
      if (*(a2 + 242) != 1)
      {
        v25 = *(a2 + 1280);
        v49 = xmmword_2603429B0;
        v50 = xmmword_2603429B0;
        v51 = 1065353216;
        if (v25)
        {
          v26 = (*(*v25 + 504))(v25);
          (*(*v25 + 16))(v48, v25);
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          v45 = 4;
          memset(v46, 0, sizeof(v46));
          v47 = 0;
          PCMatrix44Tmpl<double>::getTransformation(v48, &v42);
          v46[0] = vnegq_f64(v46[0]);
          PCMatrix44Tmpl<double>::setTransformation(v48, &v42, v27, v28, v29, v30, v31, v32);
          v33 = 0;
          v35 = &v49;
          v36 = v48;
          do
          {
            for (i = 0; i != 3; ++i)
            {
              v38 = *(v36 + i);
              *(v35 + i) = v38;
            }

            ++v33;
            v35 = (v35 + 12);
            v36 += 2;
          }

          while (v33 != 3);
          v34 = v26;
          v39 = v34 * 3.14159265;
          v9 = v54;
        }

        else
        {
          v39 = 282.743339;
        }

        v40 = v9;
        if (*(a2 + 202))
        {
          v40 = *(a2 + 324);
        }

        v41 = v39 / 180.0;
        LODWORD(v42) = LiEquirectProject::computeDistanceToImagePlane(v10, v40, v41);
        PCMakePtr<LiEquirectProject,PCPtr<LiImageSource> const&,int const&,int const&,float const&,PCMatrix33Tmpl<float> &,BOOL &>();
      }

      v49 = xmmword_2603429B0;
      v50 = xmmword_2603429B0;
      v51 = 1065353216;
      if (*(a2 + 1296))
      {
        v11 = *(a2 + 1296);
      }

      else
      {
        v11 = *(a2 + 1280);
      }

      if (v11)
      {
        (*(*v11 + 16))(v48);
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v45 = 4;
        memset(v46, 0, sizeof(v46));
        v47 = 0;
        PCMatrix44Tmpl<double>::getTransformation(v48, &v42);
        *(v46 + 8) = vnegq_f64(*(v46 + 8));
        PCMatrix44Tmpl<double>::setTransformation(v48, &v42, v12, v13, v14, v15, v16, v17);
        v18 = 0;
        v19 = &v49;
        v20 = v48;
        do
        {
          for (j = 0; j != 3; ++j)
          {
            v22 = *(v20 + j);
            *(v19 + j) = v22;
          }

          ++v18;
          v19 = (v19 + 12);
          v20 += 2;
        }

        while (v18 != 3);
      }

      if (!PCMatrix33Tmpl<float>::isIdentity(&v49))
      {
        PCMakePtr<LiEquirectReorient,PCPtr<LiImageSource> const&,int const&,int const&,PCMatrix33Tmpl<float> &,BOOL &>();
      }

      a4->var0 = a3->var0;
      PCSharedCount::PCSharedCount(a4 + 1, a3 + 1);
      return;
    }

    a4->var0 = a3->var0;
    v24 = a4 + 1;
    v23 = a3 + 1;
  }

  else
  {
    a4->var0 = 0;
    v23 = a3 + 1;
    v24 = a4 + 1;
  }

  PCSharedCount::PCSharedCount(v24, v23);
}

void *OZGroup::buildRenderGraph(OZElement *this, OZRenderParams *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  if ((OZElement::shouldCacheRenders(this) & 1) == 0 && OZElement::isCachedRenderDirty(this))
  {
    v30 = 0;
    v31 = 0;
    OZElement::setCachedTexture(this, &v30);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    v29 = 0;
    OZElement::setCachedMetalTexture(this, &v29);
    if (v29)
    {
      (*(*v29 + 24))(v29);
    }
  }

  if ((*(*this + 1440))(this))
  {
    return (*(*this + 1976))(this, a2, a3);
  }

  if (OZElement::shouldCacheRenders(this))
  {
    operator new();
  }

  if (((*(*this + 1656))(this, MEMORY[0x277CC08F0]) & 1) != 0 || (*(*this + 1640))(this) == 2)
  {
    Resolution = OZRenderParams::getResolution(a2, &v28);
    if ((*(*this + 1640))(this, Resolution) == 2 && (*(a2 + 242) & 1) == 0)
    {
      __asm { FMOV            V0.2D, #1.0 }

      *&v25.value = _Q0;
      v10.n128_f64[0] = OZRenderParams::setResolution(a2, &v25);
    }

    v16 = (*(*this + 2072))(this, a2, v10);
    if (!v16)
    {
      LiGraphBuilder::partitionWorld(a3);
    }

    OZRenderGraphState::OZRenderGraphState(&v25, a4);
    LiGraphBuilder::getCurrentLocalToWorld(a3, v24);
    for (i = 0; i != 16; i += 4)
    {
      v18 = &v25 + i * 8;
      v19 = *&v24[i + 2];
      *(v18 + 6) = *&v24[i];
      *(v18 + 7) = v19;
    }

    OZElement::buildRenderGraph(this, a2, a3, &v25);
    if (!v16)
    {
      LiGraphBuilder::partitionWorld(a3);
    }

    OZRenderParams::setResolution(a2, &v28);
  }

  else
  {
    if ((*(*this + 1640))(this) == 1 && OZGroup::isLayerOrder(this) && (OZGroup::isFlattened(this, a2) & 1) == 0)
    {
      LiGraphBuilder::partitionWorld(a3);
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    OZRenderGraphState::OZRenderGraphState(&v25, a4);
    LiGraphBuilder::getCurrentLocalToWorld(a3, v24);
    for (j = 0; j != 16; j += 4)
    {
      v22 = &v25 + j * 8;
      v23 = *&v24[j + 2];
      *(v22 + 6) = *&v24[j];
      *(v22 + 7) = v23;
    }

    (*(*this + 1952))(this, a2, a3, &v25, 0);
    if (v20)
    {
      LiGraphBuilder::partitionWorld(a3);
    }
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&v27);
  return std::__list_imp<unsigned int>::clear(v26);
}

void sub_26016E390(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v5 - 104));
  PCSharedCount::~PCSharedCount(v1 + 1);
  PCSharedCount::~PCSharedCount((v5 - 168));
  PCSharedCount::~PCSharedCount(v4 + 1);
  PCSharedCount::~PCSharedCount(v2 + 1);
  PCSharedCount::~PCSharedCount(v3 + 1);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::isFlattened(OZGroup *this, const OZRenderState *a2)
{
  if (!(*(*this + 1640))(this))
  {
    return 1;
  }

  result = (*(*this + 1632))(this);
  if (!result)
  {
    return result;
  }

  if (a2->var17 != this || ((*(*this + 1864))(this) & 1) != 0 || ((*(*this + 1608))(this) & 1) != 0)
  {
    return 1;
  }

  v5 = *(*this + 1624);

  return v5(this);
}

uint64_t OZGroup::doesTransformFromLocalToScreenSpace(OZGroup *this, const OZRenderParams *a2)
{
  v4 = (*(*this + 2072))(this);
  if ((*(*this + 1656))(this, MEMORY[0x277CC08F0]))
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = 1;
  }

  else if ((*(*this + 1640))(this) == 2)
  {
    v6 = *(a2 + 242) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t OZGroup::shouldBeAppliedToChildrenAtTime(OZElement *this, OZEffect *a2, CMTime *a3)
{
  v6 = (*(*this + 1640))(this);
  OZChannel::getValueAsDouble((this + 20440), MEMORY[0x277CC08F0], 0.0);
  if (v7 >= 4.0)
  {
    BlendMode = (*(*this + 1576))(this, MEMORY[0x277CC08F0]);
  }

  else
  {
    BlendMode = OZElement::getBlendMode(this, MEMORY[0x277CC08F0]);
  }

  v9 = BlendMode;
  v12 = *&a3->value;
  epoch = a3->epoch;
  result = (*(*a2 + 696))(a2, &v12);
  if (result)
  {
    return v6 == 1 && v9 == 34;
  }

  return result;
}

uint64_t OZGroup::getEffectListForChildren@<X0>(uint64_t this@<X0>, CMTime *a2@<X1>, void *a3@<X8>)
{
  v3 = (this + 976);
  *a3 = a3;
  a3[1] = a3;
  a3[2] = 0;
  if (this + 976 != *(this + 984))
  {
    v5 = this;
    while (1)
    {
      v6 = *(*v3 + 16);
      v7 = *a2;
      this = (*(*v6 + 280))(v6, &v7, 0, 1, 1);
      if (this)
      {
        break;
      }

      v3 = *v3;
      if (v3 == *(v5 + 984))
      {
        return this;
      }
    }

    v7 = *a2;
    this = OZGroup::shouldBeAppliedToChildrenAtTime(v5, v6, &v7);
    if (this)
    {
      operator new();
    }
  }

  return this;
}

uint64_t OZGroup::appliesEffectToChildren(OZGroup *this, CMTime *a2)
{
  v2 = this + 976;
  v9[0] = v9;
  v9[1] = v9;
  v9[2] = 0;
  if ((this + 976) == *(this + 123))
  {
    shouldBeAppliedToChildrenAtTime = 0;
  }

  else
  {
    do
    {
      v5 = *(*v2 + 16);
      v8 = *a2;
      shouldBeAppliedToChildrenAtTime = OZGroup::shouldBeAppliedToChildrenAtTime(this, v5, &v8);
      if (shouldBeAppliedToChildrenAtTime)
      {
        break;
      }

      v2 = *v2;
    }

    while (v2 != *(this + 123));
  }

  std::__list_imp<unsigned int>::clear(v9);
  return shouldBeAppliedToChildrenAtTime;
}

void sub_26016EADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::getEffectListForGeodeAtTime@<X0>(uint64_t this@<X0>, CMTime *a2@<X1>, void *a3@<X8>)
{
  v3 = (this + 976);
  *a3 = a3;
  a3[1] = a3;
  a3[2] = 0;
  if (this + 976 != *(this + 984))
  {
    v5 = this;
    do
    {
      v6 = *(*v3 + 16);
      v8 = *a2;
      this = OZGroup::shouldBeAppliedToChildrenAtTime(v5, v6, &v8);
      v7 = *(v5 + 984);
      if ((this & 1) == 0)
      {
        break;
      }

      v3 = *v3;
    }

    while (v3 != v7);
    if (v3 != v7)
    {
      operator new();
    }
  }

  return this;
}

void *OZGroup::addGeodeEffectsToState(OZGroup *this, OZRenderGraphState *a2, CMTime *a3)
{
  v12 = *a3;
  OZGroup::getEffectListForChildren(this, &v12, &v13);
  v4 = v15;
  if (v15)
  {
    v6 = v13;
    v5 = v14;
    v7 = *(v13 + 8);
    v8 = *v14;
    *(v8 + 8) = v7;
    *v7 = v8;
    v10 = *(a2 + 8);
    v9 = (a2 + 64);
    *(v10 + 8) = v5;
    *v5 = v10;
    *v9 = v6;
    *(v6 + 8) = v9;
    v9[2] += v4;
    v15 = 0;
  }

  return std::__list_imp<unsigned int>::clear(&v13);
}

uint64_t OZGroup::setupGraphBuilder(OZGroup *this, LiGraphBuilder *a2, const OZRenderParams *a3)
{
  OZElement::setupGraphBuilder(this);
  v6 = *(*this + 2336);

  return v6(this, a2, a3, 0, 0);
}

void sub_26016F4BC(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 1);
  PCSharedCount::~PCSharedCount(v2 + 1);
  _Unwind_Resume(a1);
}

BOOL OZGroup::shouldLockToCamera(OZGroup *this, int a2)
{
  if ((*(*this + 1640))(this))
  {
    result = 0;
  }

  else
  {
    result = OZGroup::isAtRootLevel(this);
    if (result)
    {
      return result;
    }
  }

  if (a2)
  {
    return (*(*this + 1640))(this) == 2;
  }

  return result;
}

void OZGroup::build3DWorldRenderGraph(OZChannel *this, const OZRenderState *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  OZRenderState::OZRenderState(&v23, a2);
  memset(&v22, 0, sizeof(v22));
  v7 = (*(this->var0 + 80))(this);
  OZRetimingUtil::RemapTimeValue(v7, &v23, &v22.value);
  time = v22;
  Seconds = CMTimeGetSeconds(&time);
  v20 = 0x3FF0000000000000;
  v17 = 0x3FF0000000000000;
  v14 = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v12 = 0u;
  v13 = 0u;
  v15 = 0u;
  v16 = 0u;
  v18 = 0u;
  v19 = 0u;
  OZChannel::getValueAsDouble((this + 21152), &v23, 0.0);
  v10 = v8;
  time = a2->var0;
  OZ3DEngineCore::getMotionLights(&time, this, (a3 + 112), v9);
  time.value = OZGroup::masterScene(this);
  std::allocate_shared[abi:ne200100]<Li3DEngineWorldData,std::allocator<Li3DEngineWorldData>,Li3DEngineScene *,double const&,PCMatrix44Tmpl<double> &,Li3DEngineWorldPhysicsParams &,LiLightSet const&,0>();
}

void sub_26016FFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, char a27)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&a27);
  _Unwind_Resume(a1);
}

void *OZGroup::makeRenderGraphOfElements(OZGroup *this, OZRenderState *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4, uint64_t a5)
{
  OZRenderState::OZRenderState(&v49, a2);
  (*(*this + 2336))(this, a3, a2, a5, 1);
  OZRenderGraphState::OZRenderGraphState(v41, a4);
  (*(*this + 2064))(this, a2, v41);
  if ((*(*this + 1632))(this))
  {
    v41[0] = 0;
    v48 = 257;
  }

  v43 = !OZGroup::shouldLockToCamera(this, a2->var28);
  if (a2->var17 == this && OZGroup::isValidToLightInside(this))
  {
    OZGroup::gatherWorldLights(this, a2, &v38);
    if (v45 < v38.var0.var2)
    {
      v10 = 2 * v38.var0.var2 + 1;
    }

    else
    {
      v10 = v45;
    }

    PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v44, v38.var0.var2, v10);
    if (v38.var0.var2 >= 1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        LiLight::operator=(v46 + v11, v38.var0.var3 + v11);
        ++v12;
        v11 += 944;
      }

      while (v12 < v38.var0.var2);
    }

    goto LABEL_21;
  }

  if ((*(*this + 1424))(this))
  {
    if (!OZGroup::isValidToLightInside(this))
    {
      memset(&v38.var0.var1, 0, 17);
      v38.var0.var0 = &unk_2871F25A8;
      if (v45 < 0)
      {
        v14 = 1;
      }

      else
      {
        v14 = v45;
      }

      PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v44, 0, v14);
LABEL_21:
      var1_low = LOBYTE(v38.var1);
      PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&v38);
      goto LABEL_34;
    }

    OZRenderParams::OZRenderParams(&v38, a2);
    if ((a5 & 1) != 0 || (*(*this + 1656))(this, MEMORY[0x277CC08F0]))
    {
      v38.var5 = this;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    OZGroup::gatherWorldLights(this, &v38, &v33);
    if (v45 < SHIDWORD(v34.var0))
    {
      v15 = 2 * HIDWORD(v34.var0) + 1;
    }

    else
    {
      v15 = v45;
    }

    PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v44, SHIDWORD(v34.var0), v15);
    if (SHIDWORD(v34.var0) >= 1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        LiLight::operator=(v46 + v16, v35 + v16);
        ++v17;
        v16 += 944;
      }

      while (v17 < SHIDWORD(v34.var0));
    }

    var1_low = v36;
    PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&v33);
    if ((v13 & 1) == 0)
    {
      (*(*this + 2344))(&v33, this, v41);
      v18 = a2[4].var7.var0[3][2];
      if (v18 == 0.0)
      {
        throw_PCNullPointerException(1);
      }

      LiLightSet::add(*&v18 + 32, &v33);
      PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&v33);
    }

    OZRenderParams::~OZRenderParams(&v38);
  }

LABEL_34:
  LiGraphBuilder::setLights(a3, &v44);
  *&v38.var0.var0 = *&v49.var0.var0;
  v38.var0.var3 = v49.var0.var3;
  OZGroup::addGeodeEffectsToState(this, v41, &v38);
  OZRenderParams::OZRenderParams(&v38, a2);
  if (OZGroup::isFlattened(this, &v49) && (*(*this + 1656))(this, MEMORY[0x277CC08F0]))
  {
    operator new();
  }

  if ((*(*this + 1640))(this) == 2)
  {
    v39 = 0;
  }

  LiGraphBuilder::getCurrentLocalToWorld(a3, &v33);
  for (i = 0; i != 128; i += 32)
  {
    v20 = &v41[i];
    v21 = *(&v35 + i);
    *(v20 + 6) = *(&v33.var0 + i);
    *(v20 + 7) = v21;
  }

  if (OZChannelBase::isEnabled((this + 20744), 1, 1))
  {
    LiGraphBuilder::partitionWorld(a3);
    WorkingGamut = OZRenderParams::getWorkingGamut(a2);
    v33.var0 = 0;
    PCSharedCount::PCSharedCount(&v34);
    LiGraphBuilder::prepare3DEngine(a3, WorkingGamut, &v33);
    PCSharedCount::~PCSharedCount(&v34);
    OZGroup::build3DWorldRenderGraph(this, a2, a3, v41);
  }

  OZSceneNode::begin_t<OZElement,false,false>(this, &v33);
  if (v33.var0 != v35)
  {
    v23 = *(v33.var0 + 2);
    if (v23)
    {
      if (v24)
      {
        v25 = v24;
        v26 = 0;
        do
        {
          v27 = (*(*v25 + 1576))(v25, &v49) - 25;
          if (!v26 && v27 <= 1)
          {
            LiGraphBuilder::partitionWorld(a3);
          }

          var3 = a2->var0.var3;
          v31 = *&a2->var0.var0;
          if ((*(v25[2] + 104))(v25 + 2, &v31, 0, 1, 1))
          {
            (*(*v25 + 2016))(v25, &v38, a3, v41);
          }

          if (v27 <= 1)
          {
            LiGraphBuilder::partitionWorld(a3);
          }

          v28 = OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(&v33);
          if (*v28 == v28[2])
          {
            break;
          }

          v29 = *(*v28 + 16);
          if (!v29)
          {
            break;
          }

          v26 = v27 < 2;
        }

        while (v25);
      }
    }
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v37);
  if (!v40)
  {
    throw_PCNullPointerException(1);
  }

  OZRenderParams::setShadowLights(a2, (v40 + 32));
  LiGraphBuilder::endInsertingIntoGroup(a3);
  OZRenderParams::~OZRenderParams(&v38);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&v44);
  return std::__list_imp<unsigned int>::clear(v42);
}

void sub_260170A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCSharedCount a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  OZRenderParams::~OZRenderParams(&a29);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&STACK[0x718]);
  std::__list_imp<unsigned int>::clear(&STACK[0x678]);
  _Unwind_Resume(a1);
}

BOOL OZGroup::isValidToLightInside(OZGroup *this)
{
  do
  {
    v2 = (*(*this + 1640))(this);
    if (v2 != 1)
    {
      break;
    }

    if ((*(*this + 1424))(this))
    {
      break;
    }

    v3 = *(this + 120);
    if (!v3)
    {
      break;
    }
  }

  while (this);
  return v2 == 1;
}

void sub_260170E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(va);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&STACK[0x690]);
  std::__list_imp<unsigned int>::clear(&STACK[0x5F0]);
  PCSharedCount::~PCSharedCount(v5 + 1);
  _Unwind_Resume(a1);
}

void OZGroup::makeRenderImageSource(OZGroup *this@<X0>, CMTime *a2@<X1>, const OZRenderGraphState *a3@<X2>, unsigned int a4@<W3>, PCSharedCount *a5@<X8>)
{
  if ((*(*this + 1640))(this) == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = a4;
  }

  (*(*this + 1960))(&v13, this, a2, a3, v10);
  if (OZChannel::getValueAsInt((this + 19184), MEMORY[0x277CC08F0], 0.0))
  {
    v11 = (*(*this + 1640))(this) == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = *a2;
  OZChannel::getValueAsInt((this + 19336), &v12, 0.0);
  v12 = *a2;
  OZChannel::getValueAsInt((this + 19488), &v12, 0.0);
  if (v11)
  {
    operator new();
  }

  PCPtr<LiImageSource>::PCPtr<OZGradientSource>(a5, &v13);
  PCSharedCount::~PCSharedCount(&v14);
}

void sub_260171118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x2666E9F00](v6, 0x10A1C40063EAE96);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::reloadResources(OZGroup *this, PGContext *a2)
{
  OZSceneNode::rbegin_t<OZElement,false,false>(this, v6);
  for (i = OZObject::reverse_iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator*(v6); i; i = OZObject::reverse_iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator*(v4))
  {
    (*(*i + 1456))(i, a2);
    v4 = OZObject::reverse_iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(v6);
  }

  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v7);
}

void sub_260171204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *OZSceneNode::rbegin_t<OZElement,false,false>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 1024))(a1);
  result = (*(*a1 + 1032))(a1);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  if (result != v4)
  {
    return OZObject::reverse_iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(a2);
  }

  return result;
}

uint64_t OZGroup::eval(OZGroup *this, OZRenderParams *a2)
{
  OZSceneNode::rbegin_t<OZElement,false,false>(this, v9);
  v3 = OZObject::reverse_iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator*(v9);
  v4 = 0;
  while (v3)
  {
    v8 = *(a2 + 2);
    v7 = *a2;
    if ((*(v3[2] + 104))(v3 + 2, &v7, 1, 1, 1))
    {
      v4 = (*(*v3 + 96))(v3, a2);
      if (v4 == 1)
      {
        break;
      }
    }

    v5 = OZObject::reverse_iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(v9);
    v3 = OZObject::reverse_iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator*(v5);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v10);
  return v4;
}

void sub_2601713E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::dirty(OZElement *this)
{
  result = OZElement::dirty(this);
  *(this + 22888) = 1;
  return result;
}

uint64_t non-virtual thunk toOZGroup::dirty(OZGroup *this)
{
  result = OZElement::dirty((this - 16));
  *(this + 22872) = 1;
  return result;
}

uint64_t OZGroup::areStaticHashesInvalid(OZGroup *this)
{
  if (OZSceneNode::areStaticHashesInvalid(this))
  {
    return 1;
  }

  v3 = this + 18776;
  v4 = *(this + 2348);
  if (v4 == v3)
  {
    return 0;
  }

  do
  {
    result = (*(**(v4 + 16) + 544))(*(v4 + 16));
    if (result)
    {
      break;
    }

    v4 = *(v4 + 8);
  }

  while (v4 != v3);
  return result;
}

double OZGroup::calcStaticHash(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  OZSceneNode::calcStaticHash(a1, a2, a3, a4);
  if (!v6)
  {
    __cxa_bad_cast();
  }

  v7 = v6;
  v10 = *PCHashWriteStream::getHash(v6)->i8;
  v8 = (*(*a1 + 1024))(a1);
  if (v8 != (*(*a1 + 1032))(a1))
  {
    OZObjectManipulator::getStaticHash();
  }

  *&result = PCHashWriteStream::setHash(v7, &v10).n128_u64[0];
  return result;
}

double OZGroup::calcHashForState(uint64_t a1, void *a2, CMTime *a3, uint64_t a4, int a5)
{
  OZSceneNode::calcHashForState(a1, a2, a3, a4, a5);
  if (!v7)
  {
    __cxa_bad_cast();
  }

  v8 = v7;
  v11 = *PCHashWriteStream::getHash(v7)->i8;
  v9 = (*(*a1 + 1024))(a1);
  if (v9 != (*(*a1 + 1032))(a1))
  {
    OZObjectManipulator::getHashForState();
  }

  *&result = PCHashWriteStream::setHash(v8, &v11).n128_u64[0];
  return result;
}

void *OZGroup::hitCheck(void *a1, float32x2_t *a2, uint64_t a3, void *lpsrc, float64x2_t *a5, uint64_t a6)
{
  v11 = a1;
  if (a6 & 4) != 0 && ((*(*a1 + 680))(a1))
  {
    return 0;
  }

  if ((a6 & 2) != 0)
  {
    *__p = *a3;
    *&v31 = *(a3 + 16);
    if (!(*(v11[2] + 104))(v11 + 2, __p, 1, 1, 1))
    {
      return 0;
    }
  }

  if ((*(*v11 + 680))(v11) && !v13)
  {
    v31 = xmmword_2603429E0;
    v32 = xmmword_2603429E0;
    *__p = xmmword_2603429E0;
    (*(*v11 + 1360))(v11, __p, a3);
    v28 = vcvtq_f64_f32(*a2);
    v29 = 0;
    (*(*v11 + 1384))(v27, v11, &v28, lpsrc, a3, 0);
    if (PCRayIntersectsBox(v27, __p, a5))
    {
      return v11;
    }

    return 0;
  }

  if ((a6 & 1) == 0 || !(*(*v11 + 960))(v11))
  {
    return 0;
  }

  v14 = (*(*v11 + 1024))(v11);
  v15 = (*(*v11 + 1032))(v11);
  v16 = (*(*v11 + 1640))(v11);
  if (v16 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v31 = 0;
    if (v14 != v15)
    {
      v20 = 0;
      do
      {
        if (v20 >= v31)
        {
          v21 = (v20 - __p[0]) >> 3;
          if ((v21 + 1) >> 61)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v22 = (v31 - __p[0]) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v31 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(__p, v23);
          }

          *(8 * v21) = *(v14 + 16);
          v20 = (8 * v21 + 8);
          v24 = (8 * v21 - (__p[1] - __p[0]));
          memcpy(v24, __p[0], __p[1] - __p[0]);
          v25 = __p[0];
          __p[0] = v24;
          __p[1] = v20;
          *&v31 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v20 = *(v14 + 16);
          v20 += 8;
        }

        __p[1] = v20;
        v14 = *(v14 + 8);
      }

      while (v14 != v15);
    }

    v26 = (*(*v11 + 272))(v11);
    v11 = OZScene::hitCheckDepthOrdered(v26, a2, a3, lpsrc, a5, a6, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v11;
  }

  if (v16 || v14 == v15)
  {
    return 0;
  }

  while (1)
  {
    v19 = (*(**(v14 + 16) + 936))(*(v14 + 16), a2, a3, lpsrc, a5, a6);
    if (v19)
    {
      break;
    }

    v14 = *(v14 + 8);
    if (v14 == v15)
    {
      return 0;
    }
  }

  return v19;
}

void sub_260171C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZGroup::getDescendantAtIndex(OZGroup *this, int a2)
{
  if (*(this + 2303))
  {
    v4 = this + 18408;
    v5 = *(this + 2302);
    v6 = v5 != this + 18408;
    v7 = 0;
    if (v5 != this + 18408 && a2 != 0)
    {
      do
      {
        v5 = *(v5 + 1);
        v6 = v5 != v4;
      }

      while (v5 != v4 && a2 - 1 != v7++);
    }

    if (v6)
    {
LABEL_49:
      v15 = v5 + 16;
      goto LABEL_50;
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(this + 124))
  {
    v10 = this + 976;
    v11 = *(this + 123);
    v12 = v11 != this + 976;
    if (v11 != this + 976 && v7 != a2)
    {
      do
      {
        v11 = *(v11 + 1);
        v12 = v11 != v10;
      }

      while (v11 != v10 && a2 - 1 != v7++);
    }

    if (v12)
    {
      v15 = v11 + 16;
      v16 = 48;
      goto LABEL_51;
    }
  }

  if (!*(this + 127))
  {
    goto LABEL_38;
  }

  v17 = this + 1000;
  for (i = *(this + 126); i != v17 && v7 != a2; i = *(i + 8))
  {
    v20 = (*(**(i + 16) + 312))(*(i + 16));
    if (v20)
    {
      v7 += !OZChannelBase::testFlag(v20, 2);
    }
  }

  if (i == v17 || (v21 = *(i + 16), v15 = (i + 16), (v22 = (*(*v21 + 312))(v21)) == 0) || OZChannelBase::testFlag(v22, 2))
  {
LABEL_38:
    v23 = this + 18776;
    v5 = *(this + 2348);
    v24 = v5 != this + 18776;
    if (v5 != this + 18776 && v7 != a2)
    {
      v26 = ~v7 + a2;
      do
      {
        v5 = *(v5 + 1);
        v28 = v26-- != 0;
        v24 = v5 != v23;
      }

      while (v5 != v23 && v28);
    }

    if (!v24)
    {
      return 0;
    }

    goto LABEL_49;
  }

LABEL_50:
  v16 = 16;
LABEL_51:
  v29 = *v15 + v16;
  if (*v15)
  {
    return v29;
  }

  else
  {
    return 0;
  }
}

uint64_t OZGroup::getMemberAtIndex(OZGroup *this, int a2)
{
  v2 = this + 18776;
  v3 = *(this + 2348);
  v4 = v3 != this + 18776;
  if (v3 != this + 18776 && a2 != 0)
  {
    v6 = a2 - 1;
    do
    {
      v3 = *(v3 + 1);
      v8 = v6-- != 0;
      v4 = v3 != v2;
    }

    while (v3 != v2 && v8);
  }

  if (!v4)
  {
    return 0;
  }

  v9 = *(v3 + 2);
  if (v9)
  {
    return v9 + 16;
  }

  else
  {
    return 0;
  }
}

void OZGroup::addDescendantAfter(OZGroup *this, OZSceneNode *a2, OZSceneNode *a3)
{
  if (a3)
  {
    v3 = this + 18776;
    for (i = *(this + 2348); ; i = *(i + 8))
    {
      if (i == v3)
      {
        goto LABEL_8;
      }

      if (*(i + 16) == a3)
      {
        break;
      }
    }

    if (i != v3)
    {
      operator new();
    }
  }

LABEL_8:
  operator new();
}

void OZGroup::addDescendantBefore(OZGroup *this, OZSceneNode *a2, OZSceneNode *a3)
{
  if (a3)
  {
      ;
    }
  }

  operator new();
}

OZSceneNode **OZGroup::removeDescendant(OZGroup *this, OZSceneNode *a2)
{
  v4 = (*(*a2 + 640))(a2);
  OZChannelFolder::removeDescendant((this + 56), v4);
  v5 = (this + 18776);
  for (result = *(this + 2348); result != v5; result = result[1])
  {
    if (result[2] == a2)
    {
      if (result != v5)
      {
        v8 = *result;
        v7 = result[1];
        *(v8 + 1) = v7;
        *v7 = v8;
        --*(this + 2349);
        operator delete(result);
        (*(*a2 + 256))(a2, 0);
        (*(*this + 496))(this);
        v9 = *(a2 + 1);
        v11 = xmmword_260850630;
        if (OZFactory::isKindOfClass(v9, &v11) && OZChannelBase::isEnabled((this + 20744), 1, 1))
        {
          OZ3DEngineSceneElement::remove3DNodeFromMasterScene(v10);
        }

        result = *(this + 121);
        if (result)
        {
          OZScene::unregisterNode(result, a2);
          return OZScene::removeAllDependencies(*(this + 121), a2);
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t OZGroup::acceptsShapeMasks(OZGroup *this)
{
  v2 = (*(*this + 1640))(this);
  if (!v2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return (*(*this + 1632))(this);
}

uint64_t OZGroup::restrictImageMaskToStencil(OZGroup *this)
{
  if ((*(*this + 1640))(this) == 1)
  {
    return (*(*this + 1632))(this) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t OZGroup::shouldWrapTexture(OZGroup *this)
{
  v1 = this + 18776;
  for (i = *(this + 2348); i != v1; i = *(i + 8))
  {
    if ((*(*(*(i + 16) + 16) + 24))())
    {
      result = (*(**(i + 16) + 1064))(*(i + 16));
      if (!result)
      {
        return result;
      }
    }
  }

  return 1;
}

void OZGroup::computeLocalTranslation(uint64_t a1, uint64_t a2, int a3, const void **a4, CMTime *a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v8 = (a2 + 136);
  v9 = (a2 + 288);
  v22[0] = a2 + 136;
  v22[1] = a2 + 288;
  v10 = (a2 + 736);
  v22[2] = a2 + 736;
  v11 = v22[a3];
  v12 = (*(v11->var0 + 104))(v11);
  OZChannel::getKeyframes(v11, 0, __p);
  if (v12)
  {
    v13 = 0;
    v14 = &CurveValue + a3;
    do
    {
      v16 = 0.0;
      OZChannel::getKeyframe(v11, *(__p[0] + v13), &v21, &v16);
      CurveValue = OZChannel::getCurveValue(v8, &v21, 1);
      v19 = OZChannel::getCurveValue(v9, &v21, 1);
      v20 = OZChannel::getCurveValue(v10, &v21, 1);
      *v14 = v16;
      *a5 = v21;
      (*(*a1 + 1240))(a1, &CurveValue, &v19, &v20, a5);
      std::vector<double>::push_back[abi:ne200100](a4, v14);
      v13 += 8;
    }

    while (8 * v12 != v13);
  }

  else
  {
    v21.value = OZChannel::getInitialValue(v8);
    *&v21.timescale = OZChannel::getInitialValue(v9);
    v21.epoch = OZChannel::getInitialValue(v10);
    (*(*a1 + 1240))(a1, &v21, &v21.timescale, &v21.epoch, a5);
    std::vector<double>::push_back[abi:ne200100](a4, &v21.value + a3);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void OZGroup::computeGlobalTranslation(uint64_t a1, uint64_t a2, int a3, const void **a4, CMTime *a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v8 = (a2 + 136);
  v9 = (a2 + 288);
  v22[0] = a2 + 136;
  v22[1] = a2 + 288;
  v10 = (a2 + 736);
  v22[2] = a2 + 736;
  v11 = v22[a3];
  v12 = (*(v11->var0 + 104))(v11);
  OZChannel::getKeyframes(v11, 0, __p);
  if (v12)
  {
    v13 = 0;
    v14 = &CurveValue + a3;
    do
    {
      v16 = 0.0;
      OZChannel::getKeyframe(v11, *(__p[0] + v13), &v21, &v16);
      CurveValue = OZChannel::getCurveValue(v8, &v21, 1);
      v19 = OZChannel::getCurveValue(v9, &v21, 1);
      v20 = OZChannel::getCurveValue(v10, &v21, 1);
      *v14 = v16;
      *a5 = v21;
      (*(*a1 + 1224))(a1, &CurveValue, &v19, &v20, a5);
      std::vector<double>::push_back[abi:ne200100](a4, v14);
      v13 += 8;
    }

    while (8 * v12 != v13);
  }

  else
  {
    v21.value = OZChannel::getInitialValue(v8);
    *&v21.timescale = OZChannel::getInitialValue(v9);
    v21.epoch = OZChannel::getInitialValue(v10);
    (*(*a1 + 1224))(a1, &v21, &v21.timescale, &v21.epoch, a5);
    std::vector<double>::push_back[abi:ne200100](a4, &v21.value + a3);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void OZGroup::computeLocalScale(uint64_t a1, uint64_t a2, OZChannel *a3, int a4, const void **a5, CMTime *a6)
{
  v11 = (*(a3->var0 + 104))(a3);
  v45 = 0x3FF0000000000000;
  v42 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0x3FF0000000000000;
  v37 = 0u;
  v38 = 0u;
  v40 = 0u;
  v41 = 0u;
  v43 = 0u;
  v44 = 0u;
  memset(v31, 0, sizeof(v31));
  v32 = 4;
  v33 = 0u;
  v34 = 0u;
  if (v11)
  {
    v12 = v11;
    OZChannel::getKeyframes(a3, 0, __p);
    v13 = 0;
    do
    {
      v28 = 0.0;
      OZChannel::getKeyframe(a3, *(__p[0] + v13), &v29, &v28);
      *a6 = v29;
      (*(*a1 + 1264))(a1, &v36, a6);
      Transformation = liSafeGetTransformation(&v36, v31);
      _pcCheckGetTransformation(Transformation, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZGroup.cpp", 2218, v15, v16, v17, v18, v19);
      v27 = v28 * *(&v31[1] + a4 + 1);
      std::vector<double>::push_back[abi:ne200100](a5, &v27);
      v13 += 8;
    }

    while (8 * v12 != v13);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    InitialValue = OZChannel::getInitialValue(a3);
    (*(*a1 + 1264))(a1, &v36, a6);
    v21 = liSafeGetTransformation(&v36, v31);
    _pcCheckGetTransformation(v21, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZGroup.cpp", 2229, v22, v23, v24, v25, v26);
    *__p = InitialValue * *(&v31[1] + a4 + 1);
    std::vector<double>::push_back[abi:ne200100](a5, __p);
  }
}

void sub_260172E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZGroup::computeGlobalScale(uint64_t a1, uint64_t a2, OZChannel *a3, int a4, const void **a5, CMTime *a6)
{
  v11 = (*(a3->var0 + 104))(a3);
  v45 = 0x3FF0000000000000;
  v42 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0x3FF0000000000000;
  v37 = 0u;
  v38 = 0u;
  v40 = 0u;
  v41 = 0u;
  v43 = 0u;
  v44 = 0u;
  memset(v31, 0, sizeof(v31));
  v32 = 4;
  v33 = 0u;
  v34 = 0u;
  if (v11)
  {
    v12 = v11;
    OZChannel::getKeyframes(a3, 0, __p);
    v13 = 0;
    do
    {
      v28 = 0.0;
      OZChannel::getKeyframe(a3, *(__p[0] + v13), &v29, &v28);
      *a6 = v29;
      (*(*a1 + 1256))(a1, &v36, a6);
      Transformation = liSafeGetTransformation(&v36, v31);
      _pcCheckGetTransformation(Transformation, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZGroup.cpp", 2255, v15, v16, v17, v18, v19);
      v27 = v28 * *(&v31[1] + a4 + 1);
      std::vector<double>::push_back[abi:ne200100](a5, &v27);
      v13 += 8;
    }

    while (8 * v12 != v13);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    InitialValue = OZChannel::getInitialValue(a3);
    (*(*a1 + 1256))(a1, &v36, a6);
    v21 = liSafeGetTransformation(&v36, v31);
    _pcCheckGetTransformation(v21, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZGroup.cpp", 2266, v22, v23, v24, v25, v26);
    *__p = InitialValue * *(&v31[1] + a4 + 1);
    std::vector<double>::push_back[abi:ne200100](a5, __p);
  }
}

void sub_2601730E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZGroup::computeLocalRotation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, _BYTE *a6)
{
  if ((*(*a3 + 552))(a3, 0))
  {
    v16 = **&MEMORY[0x277CC08A0];
      ;
    }

    result = (*(*a3 + 632))(a3, &v16, 0);
    if (result)
    {
      do
      {
        v12 = *&v16.value;
        *a5 = *&v16.value;
        epoch = v16.epoch;
        *(a5 + 16) = v16.epoch;
        *&v15.value = v12;
        v15.epoch = epoch;
        computeLocalRotationValue(a1, a3, a4, a5, &v15, a6);
        result = (*(*a3 + 632))(a3, &v16, 0);
      }

      while ((result & 1) != 0);
    }
  }

  else
  {
    v16 = **&MEMORY[0x277CC08F0];
    v14 = v16.epoch;
    *a5 = *&v16.value;
    *(a5 + 16) = v14;
    return computeLocalRotationValue(a1, a3, a4, a5, &v16, a6);
  }

  return result;
}

uint64_t computeLocalRotationValue(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, CMTime *a5, _BYTE *a6)
{
  v68 = 0x3FF0000000000000;
  v65 = 0x3FF0000000000000;
  v62 = 0x3FF0000000000000;
  v59 = 0x3FF0000000000000;
  v60 = 0u;
  v61 = 0u;
  v63 = 0u;
  v64 = 0u;
  v66 = 0u;
  v67 = 0u;
  memset(v54, 0, sizeof(v54));
  v55 = 4;
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  v50 = 1.0;
  v51 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  v46 = 1.0;
  v47 = 0.0;
  v48 = 0.0;
  v49 = 0.0;
  v44 = 0uLL;
  v45[0] = 0.0;
  v12.n128_f64[0] = OZChannelRotation3D::getValueAsQuatd(a2, &v50, a5, 0.0);
  (*(*a1 + 1264))(a1, &v59, a4, v12);
  Transformation = liSafeGetTransformation(&v59, v54, &v46);
  _pcCheckGetTransformation(Transformation, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZGroup.cpp", 2283, v14, v15, v16, v17, v18);
  v19 = v46 * v50 - (v47 * v51 + v48 * v52 + v49 * v53);
  v20 = v50 * v47 + v46 * v51;
  v21 = v48 * v53 - v52 * v49;
  v22 = v47 * v52 - v51 * v48;
  v48 = v50 * v48 + v46 * v52 + v51 * v49 - v47 * v53;
  v49 = v22 + v50 * v49 + v46 * v53;
  v46 = v19;
  v47 = v20 + v21;
  OZChannelRotation3D::getValueAsEulerAngles(a2, a5, &v44, 0.0);
  v23 = v44;
  v24 = v45[0];
  v33 = *a5;
  (*(*a1 + 1352))(&v42, a1, &v33);
  v41 = 0x3FF0000000000000;
  v38 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v33.value = 0x3FF0000000000000;
  *&v33.timescale = 0u;
  v34 = 0u;
  v36 = 0u;
  v37 = 0u;
  v39 = 0u;
  v40 = 0u;
  PCMatrix44Tmpl<double>::leftRotate(&v33, 4, v42.f64[0], v42.f64[1], v43);
  PCMatrix44Tmpl<double>::transform<double>(&v33.value, v44.f64, v44.f64);
  v44 = vsubq_f64(v44, v42);
  v45[0] = v45[0] - v43;
  PCQuat<double>::getIncrementalEulerAngles(&v46, v44.f64, &v44.f64[1], v45, 4u);
  v25 = v44;
  if (vabdd_f64(v44.f64[0], v23.f64[0]) >= 0.0000001)
  {
    v27 = 1;
    v26 = v45[0];
  }

  else
  {
    v26 = v45[0];
    v27 = vabdd_f64(v44.f64[1], v23.f64[1]) >= 0.0000001 || vabdd_f64(v45[0], v24) >= 0.0000001;
  }

  *a6 |= v27;
  v29 = *&a5->value;
  epoch = a5->epoch;
  v31 = v25;
  v32 = v26;
  return std::vector<OZGroupKeyframe<PCVector3<double>>>::push_back[abi:ne200100](a3, &v29);
}

uint64_t OZGroup::computeGlobalRotation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, _BYTE *a6)
{
  if ((*(*a3 + 552))(a3, 0))
  {
    v16 = **&MEMORY[0x277CC08A0];
      ;
    }

    result = (*(*a3 + 632))(a3, &v16, 0);
    if (result)
    {
      do
      {
        v12 = *&v16.value;
        *a5 = *&v16.value;
        epoch = v16.epoch;
        *(a5 + 16) = v16.epoch;
        *&v15.value = v12;
        v15.epoch = epoch;
        computeGlobalRotationValue(a1, a3, a4, a5, &v15, a6);
        result = (*(*a3 + 632))(a3, &v16, 0);
      }

      while ((result & 1) != 0);
    }
  }

  else
  {
    v16 = **&MEMORY[0x277CC08F0];
    v14 = v16.epoch;
    *a5 = *&v16.value;
    *(a5 + 16) = v14;
    return computeGlobalRotationValue(a1, a3, a4, a5, &v16, a6);
  }

  return result;
}

uint64_t computeGlobalRotationValue(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, CMTime *a5, _BYTE *a6)
{
  v76 = 0x3FF0000000000000;
  v73 = 0x3FF0000000000000;
  v70 = 0x3FF0000000000000;
  v67 = 0x3FF0000000000000;
  v68 = 0u;
  v69 = 0u;
  v71 = 0u;
  v72 = 0u;
  v74 = 0u;
  v75 = 0u;
  memset(v62, 0, sizeof(v62));
  v63 = 4;
  v64 = 0u;
  v65 = 0u;
  v66 = 0;
  v58 = 1.0;
  v59 = 0.0;
  v60 = 0.0;
  v61 = 0.0;
  v54 = 1.0;
  v55 = 0.0;
  v56 = 0.0;
  v57 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  v12.n128_f64[0] = OZChannelRotation3D::getValueAsQuatd(a2, &v58, a5, 0.0);
  (*(*a1 + 1256))(a1, &v67, a4, v12);
  Transformation = liSafeGetTransformation(&v67, v62, &v54);
  _pcCheckGetTransformation(Transformation, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZGroup.cpp", 2337, v14, v15, v16, v17, v18);
  v19 = v54 * v58 - (v55 * v59 + v56 * v60 + v57 * v61);
  v20 = v58 * v55 + v54 * v59;
  v21 = v56 * v61 - v60 * v57;
  v22 = v55 * v60 - v59 * v56;
  v56 = v58 * v56 + v54 * v60 + v59 * v57 - v55 * v61;
  v57 = v22 + v58 * v57 + v54 * v61;
  v54 = v19;
  v55 = v20 + v21;
  OZChannelRotation3D::getValueAsEulerAngles(a2, a5, &v51, 0.0);
  v24 = v51;
  v23 = v52;
  v25 = v53;
  v37 = *a5;
  (*(*a1 + 1352))(&v41, a1, &v37);
  v26 = v41;
  v27 = *&v42;
  v28 = -v41;
  v29 = -*&v42;
  v30 = *(&v42 + 1);
  v31 = -*(&v42 + 1);
  v50 = 0x3FF0000000000000;
  v47 = 0x3FF0000000000000;
  v44 = 0x3FF0000000000000;
  v41 = 1.0;
  v42 = 0u;
  v43 = 0u;
  v45 = 0u;
  v46 = 0u;
  v48 = 0u;
  v49 = 0u;
  PCMatrix44Tmpl<double>::leftRotate(&v41, 4, v28, v29, v31);
  PCMatrix44Tmpl<double>::transform<double>(&v41, &v51, &v51);
  v51 = v26 + v51;
  v52 = v27 + v52;
  v53 = v30 + v53;
  PCQuat<double>::getIncrementalEulerAngles(&v54, &v51, &v52, &v53, 4u);
  v32 = v51;
  v33 = v52;
  if (vabdd_f64(v51, v24) >= 0.0000001)
  {
    v35 = 1;
    v34 = v53;
  }

  else
  {
    v34 = v53;
    v35 = vabdd_f64(v52, v23) >= 0.0000001 || vabdd_f64(v53, v25) >= 0.0000001;
  }

  *a6 |= v35;
  v37 = *a5;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  return std::vector<OZGroupKeyframe<PCVector3<double>>>::push_back[abi:ne200100](a3, &v37);
}

void OZGroup::setKeypoints(uint64_t a1, OZChannel *a2, double **a3)
{
  v5 = (*(a2->var0 + 104))(a2);
  if (v5)
  {
    v6 = v5;
    OZChannel::getKeyframes(a2, 0, __p);
    v7 = 0;
    v8 = 8 * v6;
    do
    {
      v10 = 0.0;
      OZChannel::getKeyframe(a2, *(__p[0] + v7), &v11, &v10);
      OZChannel::setKeyframe(a2, *(__p[0] + v7), &v11, (*a3)[v7 / 8]);
      v7 += 8;
    }

    while (v8 != v7);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v9 = **a3;

    OZChannel::setInitialValue(a2, v9, 0);
  }
}

void sub_260173C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZGroup::setKeypoints(uint64_t a1, void *a2, void *a3)
{
  result = (*(*a2 + 480))(a2, 1);
  v6 = a3[1] - *a3;
  if (v6)
  {
    v7 = 0;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      v10 = (*a3 + v7);
      (*(*a2 + 600))(a2, v10);
      v11.n128_u64[0] = v10[3];
      (*(a2[17] + 712))(a2 + 17, v10, 0, v11);
      v12.n128_u64[0] = v10[4];
      (*(a2[36] + 712))(a2 + 36, v10, 0, v12);
      v13.n128_u64[0] = v10[5];
      result = (*(a2[55] + 712))(a2 + 55, v10, 0, v13);
      v7 += 48;
      --v9;
    }

    while (v9);
  }

  return result;
}

void OZGroup::transformToLocal(OZGroup *this, OZTransformNode *a2)
{
  if (a2)
  {
    OZRenderState::OZRenderState(&v39);
    if ((*(*this + 272))(this))
    {
      v4 = *((*(*this + 272))(this) + 384);
    }

    else
    {
      v4 = 1.0;
    }

    v39.var3 = v4;
    *&v39.var0.var0 = *MEMORY[0x277CC08F0];
    v39.var0.var3 = *(MEMORY[0x277CC08F0] + 16);
    *&v39.var8 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v30 = 0;
    v31 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    __p = 0;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    OZGroup::computeLocalTranslation(this, a2 + 1216, 0, &v36, &v39);
    OZGroup::computeLocalTranslation(this, a2 + 1216, 1, &v33, &v39);
    OZGroup::computeLocalTranslation(this, a2 + 1216, 2, &v30, &v39);
    v39.var9 = 1;
    if (!v6)
    {
      OZGroup::computeLocalScale(this, v5, (a2 + 4576), 0, &v27, &v39);
      OZGroup::computeLocalScale(this, v7, (a2 + 4728), 1, &v24, &v39);
      OZGroup::computeLocalScale(this, v8, (a2 + 4880), 2, &v21, &v39);
    }

    v9 = OZGroup::computeLocalRotation(this, v5, a2 + 2104, &__p, &v39, &v17);
    OZGroup::setKeypoints(v9, (a2 + 1352), &v36);
    OZGroup::setKeypoints(v10, (a2 + 1504), &v33);
    OZGroup::setKeypoints(v11, (a2 + 1952), &v30);
    if (!v6)
    {
      OZGroup::setKeypoints(v12, (a2 + 4576), &v27);
      OZGroup::setKeypoints(v13, (a2 + 4728), &v24);
      OZGroup::setKeypoints(v14, (a2 + 4880), &v21);
    }

    if (v17 == 1)
    {
      v15 = (*(*(a2 + 263) + 552))(a2 + 2104, 0);
      if (v15)
      {
        OZGroup::setKeypoints(v15, a2 + 263, &__p);
      }

      else
      {
        v16 = __p;
        (*(*(a2 + 280) + 712))(a2 + 2240, MEMORY[0x277CC08F0], 0, *(__p + 3));
        (*(*(a2 + 299) + 712))(a2 + 2392, MEMORY[0x277CC08F0], 0, v16[4]);
        (*(*(a2 + 318) + 712))(a2 + 2544, MEMORY[0x277CC08F0], 0, v16[5]);
      }
    }

    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }
}

void sub_260174210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    v25[1] = a25;
    operator delete(a25);
  }

  v27 = v25[3];
  if (v27)
  {
    v25[4] = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void OZGroup::transformToGlobal(OZGroup *this, OZTransformNode *a2)
{
  if (a2)
  {
    OZRenderState::OZRenderState(&v39);
    if ((*(*this + 272))(this))
    {
      v4 = *((*(*this + 272))(this) + 384);
    }

    else
    {
      v4 = 1.0;
    }

    v39.var3 = v4;
    *&v39.var0.var0 = *MEMORY[0x277CC08F0];
    v39.var0.var3 = *(MEMORY[0x277CC08F0] + 16);
    *&v39.var8 = 0;
    OZChannel::getCurveInterface((a2 + 1352));
    OZChannel::getCurveInterface((a2 + 1504));
    OZChannel::getCurveInterface((a2 + 1952));
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v30 = 0;
    v31 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    __p = 0;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    OZGroup::computeGlobalTranslation(this, a2 + 1216, 0, &v36, &v39);
    OZGroup::computeGlobalTranslation(this, a2 + 1216, 1, &v33, &v39);
    OZGroup::computeGlobalTranslation(this, a2 + 1216, 2, &v30, &v39);
    v39.var9 = 1;
    if (!v6)
    {
      OZGroup::computeGlobalScale(this, v5, (a2 + 4576), 0, &v27, &v39);
      OZGroup::computeGlobalScale(this, v7, (a2 + 4728), 1, &v24, &v39);
      OZGroup::computeGlobalScale(this, v8, (a2 + 4880), 2, &v21, &v39);
    }

    v9 = OZGroup::computeGlobalRotation(this, v5, a2 + 2104, &__p, &v39, &v17);
    OZGroup::setKeypoints(v9, (a2 + 1352), &v36);
    OZGroup::setKeypoints(v10, (a2 + 1504), &v33);
    OZGroup::setKeypoints(v11, (a2 + 1952), &v30);
    if (!v6)
    {
      OZGroup::setKeypoints(v12, (a2 + 4576), &v27);
      OZGroup::setKeypoints(v13, (a2 + 4728), &v24);
      OZGroup::setKeypoints(v14, (a2 + 4880), &v21);
    }

    if (v17 == 1)
    {
      v15 = (*(*(a2 + 263) + 552))(a2 + 2104, 0);
      if (v15)
      {
        OZGroup::setKeypoints(v15, a2 + 263, &__p);
      }

      else
      {
        v16 = __p;
        (*(*(a2 + 280) + 712))(a2 + 2240, MEMORY[0x277CC08F0], 0, *(__p + 3));
        (*(*(a2 + 299) + 712))(a2 + 2392, MEMORY[0x277CC08F0], 0, v16[4]);
        (*(*(a2 + 318) + 712))(a2 + 2544, MEMORY[0x277CC08F0], 0, v16[5]);
      }
    }

    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }
}

void sub_2601746B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    v25[1] = a25;
    operator delete(a25);
  }

  v27 = v25[3];
  if (v27)
  {
    v25[4] = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZGroup::hasLockedDescendant(OZGroup *this, int a2)
{
  v4 = (*(*this + 1024))(this);
  v5 = (*(*this + 1032))(this);
  if (v4 == v5)
  {
    return 0;
  }

  v8 = v5;
  while (1)
  {
    v9 = *(v4 + 16);
    if (v9)
    {
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v6 = 1;
    if ((*(v9[2] + 56))(v9 + 2, 1) & 1) != 0 || v11 && (OZImageElement::isLockedDropZone(v11))
    {
      break;
    }

    if (v10 && (a2 & (*(*v10 + 960))(v10) & 1) != 0)
    {
      v4 = (*(*v10 + 1024))(v10);
      v8 = (*(*v10 + 1032))(v10);
      v6 = 0;
      a2 = 1;
      if (v4 == v8)
      {
        return v6;
      }
    }

    else
    {
      v4 = *(v4 + 8);
      if (v4 == v8)
      {
        return 0;
      }
    }
  }

  return v6;
}

uint64_t OZGroup::hasDescendant(OZGroup *this, OZSceneNode *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (*(*this + 1024))(this);
  v5 = (*(*this + 1032))(this);
  v16 = 1065353216;
  memset(v15, 0, sizeof(v15));
  v12[0] = v4;
  v12[1] = v4;
  v13 = v5;
  v14 = 0;
  (*(*this + 1024))(this);
  v6 = (*(*this + 1032))(this);
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  v9 = v6;
  while (1)
  {
    if (v12[0] == v9)
    {
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v10);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v15);
      return 0;
    }

    v7 = v12[0] == v13 ? 0 : *(v12[0] + 16);
    if (v7 == a2)
    {
      break;
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v12);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v10);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v15);
  return 1;
}

uint64_t OZGroup::writeBody(OZElement *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4)
  {
    PCSerializerWriteStream::pushScope(a2, &OZGroupScope);
    v10 = (*(*this + 1024))(this);
    v11 = (*(*this + 1032))(this);
    v26 = 1065353216;
    memset(v25, 0, sizeof(v25));
    v21 = v10;
    v22 = v10;
    v23 = v11;
    v24 = 0;
    (*(*this + 1024))(this);
    v12 = (*(*this + 1032))(this);
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    v18 = v12;
    for (i = v10; i != v18; v21 = i)
    {
      v14 = *(i + 16);
      if (!OZChannelBase::testFlag((v14 + 56), 8))
      {
        v16 = *(v14 + 48);
        v15 = v14 + 48;
        (*(v16 + 16))(v15, a2, 0);
        (*(*v15 + 24))(v15, a2, 0, 1, a5);
        (*(*a2 + 24))(a2);
      }

      i = *(v21 + 8);
    }

    PCSerializerWriteStream::popScope(a2);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v19);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v25);
  }

  return OZElement::writeBody(this, a2, a3, a4, a5);
}

void sub_260174E38(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::parseBegin(OZGroup *this, PCSerializerReadStream *a2)
{
  OZElement::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZGroupScope);
  v4 = *(a2 + 26);
  if (v4 <= 4)
  {
    v5 = v4;
    v6 = MEMORY[0x277CC08F0];
    OZChannel::setValue((this + 20136), MEMORY[0x277CC08F0], -1.0, 0);
    OZChannel::setValue((this + 20288), v6, -1.0, 0);
    OZChannel::setValue((this + 20440), v6, v5, 0);
  }

  if (*(a2 + 27) <= 9u)
  {
    OZChannel::setValue((this + 20592), MEMORY[0x277CC08F0], 0.0, 0);
  }

  return 1;
}

uint64_t OZGroup::parseEnd(OZGroup *this, PCSerializerReadStream *a2)
{
  OZElement::parseEnd(this, a2);
  (*(*this + 1704))(this, 1);
  if ((*(*this + 1640))(this) == 2)
  {
    OZGroup::updateBlendModeFor360(this);
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      Identifier = CFBundleGetIdentifier(MainBundle);
      if (Identifier)
      {
        if (CFStringCompare(Identifier, @"com.apple.FinalCutApp", 1uLL) == kCFCompareEqualTo)
        {
          (*(*a2 + 24))(a2);
          return 0;
        }
      }
    }

    v6 = (*(*this + 272))(this);
    if (v6)
    {
      v7 = *(v6 + 1584);
      if (v7)
      {
        OZDocument::getFilename(v7, &v19);
        PCURL::PCURL(&v18, &v19, 0);
        if (OZDocumentBundleFormatUtils::isMotionDocURLInMotionBundle(&v18, v8))
        {
          (*(*a2 + 24))(a2);
          PCURL::~PCURL(&v18);
          PCString::~PCString(&v19);
          return 0;
        }

        PCURL::~PCURL(&v18);
        PCString::~PCString(&v19);
      }
    }
  }

  v9 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 20136), MEMORY[0x277CC08F0], 0.0);
  v11 = v10;
  OZChannel::getValueAsDouble((this + 20288), v9, 0.0);
  if (v11 < 0.0 || v12 < 0.0)
  {
    OZChannel::getValueAsDouble((this + 19336), v9, 0.0);
    v14 = v13;
    OZChannel::getValueAsDouble((this + 19488), v9, 0.0);
    v16 = v15;
    OZChannel::setValue((this + 20136), v9, v14, 0);
    OZChannel::setValue((this + 20288), v9, v16, 0);
  }

  return 1;
}

uint64_t OZGroup::updateBlendModeFor360(const PCString *this)
{
  v2 = PCBlend::modeMenuString(0);
  OZChannelEnum::setStrings(this + 854, v2, 1);
  v6 = 0;
  ElementBlendModes = PCBlend::getElementBlendModes(&v6, v3);
  OZChannelEnum::setTags(&this[854], ElementBlendModes, v6);
  result = OZChannel::isModified(&this[854]);
  if ((result & 1) == 0)
  {
    OZChannel::setDefaultValue(&this[854], 0.0);
    OZChannelBase::reset(&this[854], 0);
    return OZChannelBase::saveStateAsDefault(&this[854]);
  }

  return result;
}

uint64_t OZGroup::parseElement(OZElement *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v27);
  PCSharedCount::PCSharedCount(&v26);
  PCSharedCount::PCSharedCount(&v25);
  v23 = 0.0;
  *v24 = 0;
  v22 = 0;
  v21 = 0;
  OZElement::parseElement(this, a2, a3);
  v6 = *(a3 + 2);
  if (v6 == 61)
  {
    PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v27);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v24[1]);
    v28 = xmmword_260850770;
    SceneNode = OZApplication::createSceneNode(theApp, &v28);
    goto LABEL_14;
  }

  if (v6 == 62)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, v24);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v27);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v24[1]);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 7, &v25);
    PCSerializerReadStream::getAttributeAsInt32(a2, a3, 8, &v22);
    PCSerializerReadStream::getAttributeAsBool(a2, a3, 9, &v21);
    if ((PCSerializerReadStream::getAttributeAsString(a2, a3, 118, &v26) & 1) == 0)
    {
      PCString::set(&v26, &v27);
    }

    PCSerializerReadStream::getAttributeAsDouble(a2, a3, 116, &v23);
    v8 = OZFactories::lookupFactory(*(theApp + 32), v24[0]);
    {
      v10 = v9;
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(v9 + 8), xmmword_2603473B0)))))
      {
        if (v11)
        {
          v12 = v11;
          v13 = PCString::empty(&v25);
          v14 = *(*v12 + 200);
          if (!v13)
          {
            v20 = v14(v12, &v25, v24[1], v22, v21);
            v16 = v20;
            if (v20)
            {
            }

            OZFxGenerator::setInternalName(v20, &v26);
            goto LABEL_28;
          }

          v15 = v14(v12, &v26, v24[1], v22, v21);
        }

        else
        {
          if (PCString::empty(&v25))
          {
            v19 = &v26;
          }

          else
          {
            v19 = &v25;
          }

          v15 = (*(*v10 + 168))(v10, v19, v24[1]);
        }

        v16 = v15;
LABEL_28:
        (*(*v16 + 1176))(v16, v23);
        (*(*(v16 + 2) + 120))(v16 + 16, &v27, 0);
LABEL_15:
        OZChannelBase::setID((v16 + 56), v24[1]);
        (*(*v16 + 256))(v16, this);
        operator new();
      }

      v17 = (*a2 + 40);
    }

    else
    {
      v17 = (*a2 + 24);
    }

    (*v17)(a2);
    goto LABEL_18;
  }

  if (v6 != 63)
  {
    goto LABEL_18;
  }

  PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v27);
  PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v24[1]);
  v28 = xmmword_260850780;
  SceneNode = OZApplication::createSceneNode(theApp, &v28);
LABEL_14:
  v16 = SceneNode;
  if (SceneNode)
  {
    goto LABEL_15;
  }

LABEL_18:
  PCString::~PCString(&v25);
  PCString::~PCString(&v26);
  PCString::~PCString(&v27);
  return 1;
}

void sub_26017586C(void *a1)
{
  __cxa_begin_catch(a1);
  (*(*v1 + 24))(v1);
  __cxa_end_catch();
  JUMPOUT(0x26017556CLL);
}

void sub_2601758A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12, PCString a13, PCString a14)
{
  __cxa_end_catch();
  PCString::~PCString(&a12);
  PCString::~PCString(&a13);
  PCString::~PCString(&a14);
  _Unwind_Resume(a1);
}

void OZGroup::allowDrag(OZGroup *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  *a5 = 0;
  if (lpsrc)
  {
    if (v13 == this || v13 && (OZGroup::hasDescendant(v13, this) & 1) != 0 || v14 && (!OZTransformNode::isInRootWorld(this) || ((*(*this + 1424))(this) & 1) != 0 || (*(*this + 1640))(this) == 2))
    {
      return;
    }
  }

  else
  {
    if (!this)
    {
      return;
    }

    v12 = 0;
    v15 = 1;
  }

  v16 = *(lpsrc + 1);
  v28 = xmmword_26084FA20;
  if ((OZFactory::isKindOfClass(v16, &v28) & 1) != 0 || !v15 && (!OZGroup::isValidToLightInside(this) || (*(*this + 1640))(this) == 2))
  {
    return;
  }

  if ((*(*this + 1640))(this) != 2 || v12 == 0)
  {
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v18 = v12[1];
    v28 = xmmword_2608507A0;
    isKindOfClass = OZFactory::isKindOfClass(v18, &v28);
    if ((isKindOfClass & 1) == 0)
    {
      v20 = v12[1];
      v28 = xmmword_260850880;
      if ((OZFactory::isKindOfClass(v20, &v28) & 1) == 0)
      {
        v21 = v12[1];
        v28 = xmmword_2608508A0;
        if ((OZFactory::isKindOfClass(v21, &v28) & 1) == 0)
        {
          return;
        }
      }
    }
  }

  if ((v12[128] & 8) == 0)
  {
    v22 = v12[1];
    v28 = xmmword_260850EE0;
    if ((OZFactory::isKindOfClass(v22, &v28) & 1) == 0)
    {
      v23 = v12[1];
      v28 = xmmword_2603473B0;
      if ((OZFactory::isKindOfClass(v23, &v28) & 1) == 0)
      {
        if ((*(*v12 + 272))(v12) && (v24 = (*(*v12 + 272))(v12), v24 == (*(*this + 272))(this)))
        {
          v25 = a4 & 2;
        }

        else
        {
          if (!(*(v12[2] + 96))(v12 + 2))
          {
            return;
          }

          v25 = a4 & 1;
        }

        *a5 = v25;
        return;
      }
    }
  }

  if ((v12[128] & 8) == 0 || (*(*this + 1640))(this) != 1 || (*(*this + 1632))(this))
  {
LABEL_33:
    OZElement::allowDrag(this, lpsrc, a3, a4, a5, a6, a7);
  }
}

uint64_t OZGroup::performDragOperation(OZElement *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, const CMTime *a8)
{
  v11 = a5;
  if (!lpsrc)
  {
    if (!this)
    {
      return 0;
    }

LABEL_20:

    return OZElement::performDragOperation(this, lpsrc, a3, a4, v11, a6, a7, a8);
  }

  if (v16)
  {
  }

  else
  {
    v18 = 0;
  }

  if (v17 == this || v17 && (OZGroup::hasDescendant(v17, this) & 1) != 0)
  {
    return 0;
  }

  v11 = a5;
  if (!v16)
  {
    goto LABEL_20;
  }

  if ((*(*v16 + 640))(v16) == a3)
  {
    return 0;
  }

  v19 = *(v16 + 256);
  v38 = a7 & 8;
  if ((a7 & 8 & v19) == 0 && ((v19 | a7) & 8) != 0)
  {
    goto LABEL_20;
  }

  v21 = *(v16 + 120);
  if (v21)
  {
  }

  else
  {
    v22 = 0;
  }

  v24 = (a4 & 0x20) != 0 || v22 == this;
  v25 = !v24;
  v26 = !v24 && v18 != 0;
  if (v18 && v22 && v25)
  {
    PCURL::PCURL(v40, @"Undo Reorder");
    (*(*(v18 + 263) + 344))(v18 + 263, v40);
    PCString::~PCString(v40);
    OZGroup::transformToGlobal(v22, v18);
  }

  v27 = (*(*v16 + 272))(v16);
  if (v27)
  {
    if (v26)
    {
      v28 = 4;
    }

    else
    {
      v28 = 3;
    }

    if ((a7 & 8) != 0)
    {
      v29 = 5;
    }

    else
    {
      v29 = v28;
    }

    PCURL::PCURL(v40, @"Undo Reorder");
    (*(*(v16 + 2) + 176))(v16 + 16, v40, v29);
    PCString::~PCString(v40);
    OZSceneNode::removeFromParent(v16);
  }

  else
  {
    if (a7)
    {
      v30 = (*(*v16 + 640))(v16);
      memset(&v41, 0, sizeof(v41));
      (*(*v30 + 712))(v40);
      v42 = v40[0];
      v43 = *a8;
      PC_CMTimeSaferSubtract(&v43, &v42, &v41);
      v40[0] = v41;
      v31 = (*(*this + 272))(this);
      OZSceneSettings::getFrameDuration((v31 + 336), &v43);
      shiftRecursive(v30, v40, &v43);
      logMessageTracerFeatureUsage(v16);
    }

    LOBYTE(v26) = 0;
  }

  v32 = *(this + 2348);
  if (v32 != (this + 18776))
  {
    v33 = (v32 + 16);
    if ((*(**(v32 + 16) + 640))(*(v32 + 16)) == a3)
    {
      v34 = 0;
LABEL_55:
      if (a5 == 3)
      {
        v34 = *v33;
      }

      goto LABEL_57;
    }

    while (1)
    {
      v32 = *(v32 + 8);
      if (v32 == (this + 18776))
      {
        break;
      }

      v34 = *v33;
      v33 = (v32 + 16);
      if ((*(**(v32 + 16) + 640))(*(v32 + 16)) == a3)
      {
        goto LABEL_55;
      }
    }
  }

  v34 = 0;
LABEL_57:
  if ((v38 & *(v16 + 256)) != 0)
  {
    (*(*v16 + 1048))(v16);
  }

  if (v18)
  {
    v35 = v26;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    v36 = (*(*this + 272))(this);
    (*(*v18 + 280))(v18, v36);
    OZGroup::transformToLocal(this, v18);
  }

  (*(*this + 984))(this, v16, v34);
  (*(*this + 496))(this);
  if (!v27)
  {
    {
      PCURL::PCURL(v40, @"Undo New Generator");
    }

    else
    {
      PCURL::PCURL(v40, @"Undo Paste");
    }

    (*(*(v16 + 2) + 176))(v16 + 16, v40, 1);
    PCString::~PCString(v40);
  }

  v37 = *(this + 121);
  if (v37)
  {
    OZDocument::postNotification(*(v37 + 1584), 16);
  }

  return 1;
}

void shiftRecursive(OZChannelFolder *a1, CMTime *a2, CMTime *a3)
{
  if (a1)
  {
    if (v6)
    {
      v7 = v6;
      (*(v6->var0 + 89))(&v15);
      v17 = v15;
      v16 = *a2;
      PC_CMTimeSaferAdd(&v17, &v16, &v14);
      v15 = v14;
      (*(v7->var0 + 40))(&v13, v7);
      v17 = v13;
      v16 = *a2;
      PC_CMTimeSaferAdd(&v17, &v16, &v14);
      OZRetimingUtil::SetTimeOffsetAndExtentInteractive(v7, &v14, &v15, a3, v8);
    }
  }

  v9 = *(a1 + 14);
  if (v9)
  {
    v11 = *v9;
    v10 = *(v9 + 8);
    if (*v9 < v10)
    {
      do
      {
        if (*v11)
        {
          if (v12)
          {
            v15 = *a2;
            shiftRecursive(v12, &v15, a3);
          }
        }

        ++v11;
      }

      while (v11 < v10);
    }
  }
}

void logMessageTracerFeatureUsage(OZSceneNode *a1)
{
  v2 = *(a1 + 1);
  v6 = xmmword_260347A90;
  if (OZFactory::isKindOfClass(v2, &v6))
  {
    Name = OZObjectManipulator::getName((a1 + 16));
    CStr = PCString::createCStr(Name);
    OZChannelBase::setRangeName("Text Generator", CStr);
    free(CStr);
  }

  else
  {
    v5 = *(a1 + 1);
    v6 = xmmword_260850880;
    if (OZFactory::isKindOfClass(v5, &v6))
    {
      OZMsgTracerLogFxPlugUsage((a1 + 16));
    }
  }
}

uint64_t OZGroup::updateLinkedIDs(uint64_t a1, uint64_t a2)
{
  OZSceneNode::updateLinkedIDs(a1, a2);
  OZSceneNode::begin_t<OZElement,false,false>(a1, v9);
  if (v9[0] != v9[2])
  {
    v4 = *(v9[0] + 16);
    if (v4)
    {
      {
        (*(*i + 840))(i, a2);
        v6 = OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(v9);
        if (*v6 == v6[2])
        {
          break;
        }

        v7 = *(*v6 + 16);
        if (!v7)
        {
          break;
        }
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v10);
}

void sub_26017697C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

double OZGroup::getTransformMatrix(OZTransformNode *a1, uint64_t a2, uint64_t a3)
{
  OZTransformNode::getTransformMatrix(a1, a2, a3);
  if (OZGroup::shouldLockToCamera(a1, *(a3 + 242)) && *(a3 + 64) == 1)
  {
    result = PCMatrix44Tmpl<double>::leftMult(a2, (a3 + 72));
  }

  if (*(a3 + 200) == 1)
  {
    v16 = 0x3FF0000000000000;
    v13 = 0x3FF0000000000000;
    v10 = 0x3FF0000000000000;
    v7 = 0x3FF0000000000000;
    v8 = 0u;
    v9 = 0u;
    v11 = 0u;
    v12 = 0u;
    v14 = 0u;
    v15 = 0u;
    (*(*a1 + 1272))(a1, &v7, a3);
    return PCMatrix44Tmpl<double>::rightMult(a2, &v7);
  }

  return result;
}

double OZGroup::getInvTransformMatrix(OZTransformNode *a1, uint64_t a2, uint64_t a3)
{
  OZTransformNode::getInvTransformMatrix(a1, a2, a3);
  if (OZGroup::shouldLockToCamera(a1, *(a3 + 242)) && *(a3 + 64) == 1)
  {
    v7 = *(a3 + 152);
    v13 = *(a3 + 136);
    *v14 = v7;
    v8 = *(a3 + 184);
    *&v14[16] = *(a3 + 168);
    *&v14[32] = v8;
    v9 = *(a3 + 88);
    *v11 = *(a3 + 72);
    *&v11[16] = v9;
    v10 = *(a3 + 120);
    *&v11[32] = *(a3 + 104);
    v12 = v10;
    PCMatrix44Tmpl<double>::invert(v11, v11, 0.0);
    result = PCMatrix44Tmpl<double>::rightMult(a2, v11);
  }

  if (*(a3 + 200) == 1)
  {
    *&v14[40] = 0x3FF0000000000000;
    *v14 = 0x3FF0000000000000;
    *&v11[40] = 0x3FF0000000000000;
    *v11 = 0x3FF0000000000000;
    memset(&v11[8], 0, 32);
    v12 = 0u;
    v13 = 0u;
    memset(&v14[8], 0, 32);
    (*(*a1 + 2280))(a1, v11, a3);
    return PCMatrix44Tmpl<double>::leftMult(a2, v11);
  }

  return result;
}

uint64_t OZGroup::setLithiumTransform(OZGroup *this, LiSceneObject *a2, OZRenderState *a3)
{
  v33 = 0x3FF0000000000000;
  v30 = 0x3FF0000000000000;
  v27 = 0x3FF0000000000000;
  v24 = 0x3FF0000000000000;
  v25 = 0u;
  v26 = 0u;
  v28 = 0u;
  v29 = 0u;
  v31 = 0u;
  v32 = 0u;
  OZRenderState::OZRenderState(&v23, a3);
  v23.var4 = 1;
  v23.var8 = 0;
  (*(*this + 1256))(this, &v24, &v23);
  if (OZGroup::shouldLockToCamera(this, a3->var28))
  {
    var17 = a3[4].var17;
    (*(*var17 + 16))(&v11, var17);
    if (!(*(*var17 + 632))(var17))
    {
      v8 = (*(*var17 + 320))(var17);
      if (v8 != 0.0)
      {
        v13 = v13 - v8 * v12;
        v16 = v16 - v8 * v15;
        v19 = v19 - v8 * v18;
        v22 = v22 - v8 * v21;
      }
    }

    v9 = (*(*var17 + 488))(var17);
    if (v9 != 1.0)
    {
      v11 = vmulq_n_f64(v11, v9);
      v14 = vmulq_n_f64(v14, v9);
      v17 = vmulq_n_f64(v17, v9);
      v20 = vmulq_n_f64(v20, v9);
      v12 = v9 * v12;
      v15 = v9 * v15;
      v18 = v9 * v18;
      v21 = v9 * v21;
    }

    v6.n128_f64[0] = PCMatrix44Tmpl<double>::leftMult(&v24, v11.f64);
  }

  return (*(*a2 + 16))(a2, &v24, v6);
}

void OZGroup::getFilmback(OZGroup *this@<X0>, const OZRenderState *a2@<X1>, float64x2_t *a3@<X8>)
{
  var0 = a2->var0;
  OZChannel::getValueAsDouble((this + 20136), &var0, 0.0);
  v6 = v5;
  OZChannel::getValueAsDouble((this + 20288), &var0, 0.0);
  if (v6 == 0.0 || v7 == 0.0)
  {
    v8 = (*(*this + 272))(this);
    OZSceneSettings::OZSceneSettings(&v16);
    if (v8)
    {
      v9 = *(v8 + 344);
      v18 = *(v8 + 360);
      v10 = *(v8 + 392);
      v19 = *(v8 + 376);
      v21 = *(v8 + 408);
      v20 = v10;
      v17 = v9;
      v11 = *(v8 + 432);
      v22 = *(v8 + 416);
      v23 = v11;
      v24 = *(v8 + 448);
      PCCFRef<CGColorSpace *>::operator=(&v25, (v8 + 464));
      v12 = *(v8 + 488);
      v26 = *(v8 + 472);
      v27[0] = v12;
      *(v27 + 12) = *(v8 + 500);
      PCString::set(&v28, (v8 + 520));
      v13 = *(v8 + 576);
      v31 = *(v8 + 560);
      v32 = v13;
      v14 = *(v8 + 544);
      v29 = *(v8 + 528);
      v30 = v14;
      v15 = *(v8 + 608);
      v33 = *(v8 + 592);
      v34 = v15;
      v35 = *(v8 + 624);
      v36 = *(v8 + 632);
    }

    *a3 = vcvtq_f64_f32(vcvt_f32_s32(*&v17));
    v16 = &unk_287283398;
    PCString::~PCString(&v28);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v25);
  }

  else
  {
    a3->f64[0] = v6;
    a3->f64[1] = v7;
  }
}

uint64_t OZGroup::getProjectionCamera@<X0>(OZGroup *this@<X0>, const OZRenderState *a2@<X1>, int a3@<W2>, PCSharedCount *a4@<X8>)
{
  a4->var0 = 0;
  PCSharedCount::PCSharedCount(a4 + 1);
  isFlattened = OZGroup::isFlattened(this, a2);
  result = (*(*this + 1640))(this);
  if ((result & 0xFFFFFFFD) != 0)
  {
    v9 = isFlattened;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) != 0 || a3)
  {
    operator new();
  }

  return result;
}

void sub_2601771AC(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10A1C40DA4F106CLL);
  PCSharedCount::~PCSharedCount(v1);
  _Unwind_Resume(a1);
}

void OZGroup::getProjectionMatrix(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 2264))(&v9);
  if (v9)
  {
    (*(*v9 + 48))(v8);
    if (v8 != a2)
    {
      for (i = 0; i != 16; i += 4)
      {
        v5 = (a2 + i * 8);
        v6 = *&v8[i + 2];
        *v5 = *&v8[i];
        v5[1] = v6;
      }
    }

    v7 = (*(*a1 + 1328))(a1);
    if (v7 != 1.0)
    {
      *a2 = v7 * *a2;
      *(a2 + 32) = v7 * *(a2 + 32);
      *(a2 + 64) = v7 * *(a2 + 64);
      *(a2 + 96) = v7 * *(a2 + 96);
    }
  }

  else
  {
    *(a2 + 120) = 0x3FF0000000000000;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 40) = 0x3FF0000000000000;
    *a2 = 0x3FF0000000000000;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
  }

  PCSharedCount::~PCSharedCount(&v10);
}

float64x2_t OZGroup::getFlattenTransformMatrix(OZGroup *a1, float64x2_t *a2, OZRenderState *a3)
{
  isFlattened = OZGroup::isFlattened(a1, a3);
  (*(*a1 + 2272))(a1, a2, a3, 0);
  if ((isFlattened & 1) != 0 || !(*(*a1 + 1640))(a1))
  {
    result = vmulq_f64(a2[5], 0);
    a2[4] = vmulq_f64(a2[4], 0);
    a2[5] = result;
  }

  return result;
}

double OZGroup::getInvFlattenTransformMatrix(OZGroup *a1, uint64_t a2, OZRenderState *a3)
{
  if ((OZGroup::isFlattened(a1, a3) & 1) != 0 || !(*(*a1 + 1640))(a1))
  {
    operator new();
  }

  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  return result;
}

double OZGroup::getEyeMatrix(OZGroup *a1, uint64_t a2, OZRenderState *a3)
{
  OZRenderState::OZRenderState(&v7, a3);
  if ((OZGroup::isFlattened(a1, &v7) & 1) == 0 && (*(*a1 + 1640))(a1))
  {
    return OZTransformNode::getEyeMatrix(a1, a2, a3);
  }

  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  return result;
}

double OZGroup::getInvEyeMatrix(OZGroup *a1, uint64_t a2, OZRenderState *a3)
{
  OZRenderState::OZRenderState(&v7, a3);
  if ((OZGroup::isFlattened(a1, &v7) & 1) == 0 && (*(*a1 + 1640))(a1))
  {
    return OZTransformNode::getInvEyeMatrix(a1, a2, a3);
  }

  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  return result;
}

BOOL OZGroup::invTransformRay(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(*a1 + 1424))(a1) && *(a3 + 200) == 1)
  {
    operator new();
  }

  return OZTransformNode::invTransformRay(a1, a2);
}

void OZGroup::setDimensionType(uint64_t a1, unsigned int a2, int a3)
{
  OZChannel::setValue((a1 + 18928), MEMORY[0x277CC08F0], a2, 0);
  if ((*(*a1 + 1640))(a1) == 2)
  {
    OZGroup::updateBlendModeFor360(a1);
  }

  if ((*(*a1 + 1704))(a1, 0))
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && (*(*a1 + 272))(a1) && *((*(*a1 + 272))(a1) + 1584))
  {
    v6 = *((*(*a1 + 272))(a1) + 1584);

    OZDocument::postNotification(v6, 32);
  }
}

uint64_t OZGroup::getBlendMode(OZElement *this, const CMTime *a2)
{
  v4 = this + 20480;
  BlendMode = OZElement::getBlendMode(this, a2);
  if (v4[2408])
  {
    v8 = *a2;
    IsForcedPrecompose = OZGroup::calcIsForcedPrecompose(this, &v8, 0);
    v4[2409] = IsForcedPrecompose;
    v4[2408] = 0;
  }

  else
  {
    IsForcedPrecompose = v4[2409];
  }

  if ((IsForcedPrecompose & (BlendMode == 34)) != 0)
  {
    return 0;
  }

  else
  {
    return BlendMode;
  }
}

uint64_t OZGroup::calcIsForcedPrecompose(OZGroup *this, CMTime *a2, int a3)
{
  if ((*(*this + 1864))(this))
  {
    goto LABEL_9;
  }

  v13 = *&a2->value;
  epoch = a2->epoch;
  v6 = (*(*this + 1648))(this, &v13);
  v7 = a3 ? (this + 6832) : 0;
  v8 = (*(*this + 640))(this);
  v9 = OZElement::checkForForcedPrecompose(this, v8, v7);
  v10 = 0;
  if (OZChannelBase::isEnabled((this + 9936), 0, 1))
  {
    v10 = (*(*this + 1632))(this);
  }

  if ((v6 | v9) & 1) != 0 || (OZGroup::lightingForcesPrecomp(this))
  {
LABEL_9:
    v11 = 1;
  }

  else
  {
    v11 = OZGroup::shadowForcesPrecomp(this) | v10;
  }

  return v11 & 1;
}

uint64_t OZGroup::lightingForcesPrecomp(OZGroup *this)
{
  if (!(*(*this + 1848))(this))
  {
    return 0;
  }

  if (!(*(*this + 1424))(this))
  {
    return 0;
  }

  if (!OZGroup::hasExternalLight(this))
  {
    return 0;
  }

  v2 = (*(*this + 272))(this);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 198);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8 * *(*(v3 + 224) + 12) + 192);
  if (!v4)
  {
    return 0;
  }

  v12 = 0uLL;
  v13 = 0;
  OZScene::getCurrentTime(v2, &v12);
  OZRenderParams::OZRenderParams(&v7);
  v11 = *(v4 + 78);
  v7 = v12;
  v9 = 0;
  v10 = 0;
  v8 = v13;
  v5 = (*(*this + 1840))(this, &v7);
  OZRenderParams::~OZRenderParams(&v7);
  return v5;
}

unint64_t OZGroup::shadowForcesPrecomp(OZGroup *this)
{
  result = (*(*this + 1848))(this);
  if (result)
  {
    result = (*(*this + 1424))(this);
    if (result)
    {
      result = OZGroup::hasExternalShadow(this);
      if (result)
      {
        result = (*(*this + 272))(this);
        if (result)
        {
          v3 = *(result + 1584);
          if (v3 && (v4 = *(v3 + 8 * *(*(v3 + 224) + 12) + 192)) != 0 && (memset(&v5, 0, sizeof(v5)), OZScene::getCurrentTime(result, &v5), *(v4 + 79) == 1))
          {
            return OZChannel::getValueAsInt((this + 9632), &v5, 0.0) || OZChannel::getValueAsInt((this + 9480), &v5, 0.0) || OZChannel::getValueAsInt((this + 9784), &v5, 0.0) != 0;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t OZGroup::getPrecompCameraType(OZGroup *this, const OZRenderState *a2)
{
  v4 = (*(*this + 1640))(this);
  if (!v4)
  {
    return 2;
  }

  if (v4 == 2)
  {
    return 0;
  }

  result = OZGroup::isFlattened(this, a2);
  if (result)
  {
    return 2;
  }

  return result;
}

uint64_t OZGroup::partitionsWorld(OZGroup *this)
{
  v2 = (*(*this + 1640))(this);
  if (!v2)
  {
    return 1;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v3 = *(*this + 1632);

  return v3(this);
}

uint64_t OZGroup::areEffectsAppliedInScreenSpace(OZGroup *this)
{
  result = (*(*this + 1640))(this);
  if (result)
  {
    return (*(*this + 1632))(this) ^ 1;
  }

  return result;
}

uint64_t non-virtual thunk toOZGroup::areEffectsAppliedInScreenSpace(OZGroup *this)
{
  v1 = this - 6528;
  result = (*(*(this - 816) + 1640))(this - 6528);
  if (result)
  {
    return (*(*v1 + 1632))(v1) ^ 1;
  }

  return result;
}

uint64_t OZGroup::containsActiveLights(OZGroup *this, const OZGroup *a2)
{
  OZSceneNode::begin_t<OZLight,false,false>(this, v26);
  v4 = (*(*this + 1024))(this);
  v5 = (*(*this + 1032))(this);
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  v20 = v5;
  v21 = v4;
  v22 = v5;
  v23 = 0;
  while (v26[0] != v20)
  {
    if (v26[0] == v26[2] || (v6 = *(v26[0] + 16)) == 0)
    {
      v7 = 0;
    }

    else
    {
    }

    v8 = (*(*this + 272))(this);
    CurrentTime = OZScene::getCurrentTime(v8, &v17);
    if ((*(v7[2] + 104))(v7 + 2, &v17, 1, 1, 1, CurrentTime))
    {
      v15 = 1;
      goto LABEL_22;
    }

    OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(v26);
  }

  OZSceneNode::begin_t<OZGroup,false,false>(this, &v17);
  {
    v12 = v11;
    while (v12 == a2 || ((*(*v12 + 1424))(v12) & 1) != 0 || (OZGroup::containsActiveLights(v12, a2) & 1) == 0)
    {
      v13 = OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(&v17);
      if (*v13 != v13[2])
      {
        v14 = *(*v13 + 16);
        if (v14)
        {
          if (v12)
          {
            continue;
          }
        }
      }

      goto LABEL_19;
    }

    v15 = 1;
  }

  else
  {
LABEL_19:
    v15 = 0;
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v19);
LABEL_22:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v24);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v27);
  return v15;
}

void sub_2601789D0(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 - 104);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::containsActiveShadowLights(OZGroup *this, const OZGroup *a2)
{
  OZSceneNode::begin_t<OZLight,false,false>(this, v26);
  v4 = (*(*this + 1024))(this);
  v5 = (*(*this + 1032))(this);
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  v20 = v5;
  v21 = v4;
  v22 = v5;
  v23 = 0;
  v6 = MEMORY[0x277CC08F0];
  while (v26[0] != v20)
  {
    if (v26[0] == v26[2] || (v7 = *(v26[0] + 16)) == 0)
    {
      v8 = 0;
    }

    else
    {
    }

    v9 = (*(*this + 272))(this);
    CurrentTime = OZScene::getCurrentTime(v9, &v17);
    if ((*(v8[2] + 104))(v8 + 2, &v17, 1, 1, 1, CurrentTime))
    {
      if (OZFolderLightShadow::hasShadows((v11 + 8776), v6))
      {
        v15 = 1;
        goto LABEL_25;
      }
    }

    OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(v26);
  }

  OZSceneNode::begin_t<OZGroup,false,false>(this, &v17);
  while (1)
  {
    {
      v15 = 0;
      goto LABEL_23;
    }

    {
      if (((*(v13 + 1424))() & 1) == 0)
      {
        if (v17.n128_u64[0] == v18)
        {
          v14 = 0;
        }

        else
        {
          v14 = *(v17.n128_u64[0] + 16);
          if (v14)
          {
          }
        }

        if (OZGroup::containsActiveShadowLights(v14, a2))
        {
          break;
        }
      }
    }

    OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(&v17);
  }

  v15 = 1;
LABEL_23:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v19);
LABEL_25:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v24);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v27);
  return v15;
}

void sub_260178DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v32 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a32);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::hasExternalLight(OZGroup *this)
{
  while (1)
  {
    v2 = *(this + 120);
    if (!v2)
    {
      break;
    }

    if (!v3)
    {
      break;
    }

    v4 = v3;
    active = OZGroup::containsActiveLights(v3, this);
    if ((active & 1) == 0)
    {
      this = v4;
      if (((*(*v4 + 1424))(v4) & 1) == 0)
      {
        continue;
      }
    }

    return active;
  }

  v6 = (*(*this + 272))(this);
  if (!v6)
  {
    return 0;
  }

  return OZScene::containsActiveLights(v6, this);
}

uint64_t OZGroup::hasExternalShadow(OZGroup *this)
{
  while (1)
  {
    v2 = *(this + 120);
    if (!v2)
    {
      break;
    }

    if (!v3)
    {
      break;
    }

    v4 = v3;
    active = OZGroup::containsActiveShadowLights(v3, this);
    if ((active & 1) == 0)
    {
      this = v4;
      if (((*(*v4 + 1424))(v4) & 1) == 0)
      {
        continue;
      }
    }

    return active;
  }

  v6 = (*(*this + 272))(this);
  if (!v6)
  {
    return 0;
  }

  return OZScene::containsActiveShadowLights(v6, this);
}

void OZGroup::buildLighting(OZGroup *this, LiGeode *a2, const LiLightSet *a3, const OZRenderParams *a4)
{
  hasExternalShadow = OZGroup::hasExternalShadow(this);
  v9 = *(a4 + 515);
  if (OZGroup::hasExternalLight(this))
  {
    v10 = (*(*this + 1840))(this, a4);
  }

  else
  {
    v10 = 0;
  }

  if (*(*this + 1424))(this) && (*(*this + 1848))(this) && ((v10 | hasExternalShadow & v9))
  {

    OZElement::buildLighting(this, a2, a3, a4);
  }

  else
  {

    LiGeode::setLit(a2, 0);
  }
}

void OZGroup::buildShadowLights(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2871F25A8;
  *(a1 + 24) = 0;
}

uint64_t OZGroup::setLightChannels(OZGroup *this)
{
  v2 = OZElement::setLightChannels(this);
  if ((*(*this + 1848))(this))
  {
    v3 = (*(*this + 1424))(this);
    v4 = OZChannelBase::testFlag((this + 8920), 2);
    if (v3)
    {
      if (v4)
      {
        OZChannelBase::resetFlag((this + 8920), 2, 0);
        v2 = 1;
      }

      if (OZChannelBase::testFlag((this + 8768), 2))
      {
        OZChannelBase::resetFlag((this + 8768), 2, 0);
        v2 = 1;
      }

      if (OZChannelBase::testFlag((this + 9352), 2))
      {
        OZChannelBase::resetFlag((this + 9352), 2, 0);
LABEL_19:
        v2 = 1;
      }
    }

    else
    {
      if (!v4)
      {
        OZChannelBase::setFlag((this + 8920), 2, 0);
        v2 = 1;
      }

      if (!OZChannelBase::testFlag((this + 8768), 2))
      {
        OZChannelBase::setFlag((this + 8768), 2, 0);
        v2 = 1;
      }

      if (!OZChannelBase::testFlag((this + 9352), 2))
      {
        OZChannelBase::setFlag((this + 9352), 2, 0);
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (OZChannelBase::testFlag((this + 8920), 2))
    {
      OZChannelBase::resetFlag((this + 8920), 2, 0);
    }

    if (OZChannelBase::testFlag((this + 8768), 2))
    {
      OZChannelBase::resetFlag((this + 8768), 2, 0);
    }
  }

  if (OZGroup::isValidToLightInside(this) || !OZGroup::checkLights(this))
  {
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    OZChannelBase::setRangeName(this, v5);
  }

  OZSceneNode::begin_t<OZElement,false,false>(this, v12);
  (*(*this + 1024))(this);
  v6 = (*(*this + 1032))(this);
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  v9 = v6;
  while (v12[0] != v9)
  {
    (*(v7 + 1832))();
    OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(v12);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v10);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v13);
  return 1;
}

void sub_260179548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::checkLights(OZGroup *this)
{
  v1 = *(this + 121);
  if (!v1 || (*(v1 + 1576) & 1) != 0 || OZGroup::isValidToLightInside(this))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    OZSceneNode::begin_t<OZLight,false,false>(this, v19);
    {
      v7 = v6;
      v3 = 0;
      do
      {
        v9 = v7[2];
        v8 = (v7 + 2);
        if ((*(v9 + 24))(v8, 0, 0))
        {
          (*(*v8 + 40))(v8, 0);
          v3 = 1;
        }

        v10 = OZObject::iterator_t<OZLight,false,false,OZObject::defaultValidator>::operator++(v19);
        if (*v10 == v10[2])
        {
          break;
        }

        v11 = *(*v10 + 16);
        if (!v11)
        {
          break;
        }
      }

      while (v7);
    }

    else
    {
      v3 = 0;
    }

    OZSceneNode::begin_t<OZGroup,false,false>(this, v17);
    (*(*this + 1024))(this);
    v12 = (*(*this + 1032))(this);
    memset(v15, 0, sizeof(v15));
    v16 = 1065353216;
    v14 = v12;
    while (v17[0] != v14)
    {
      if (v17[0] == v17[2])
      {
        v13 = 0;
      }

      else
      {
        v13 = *(v17[0] + 16);
        if (v13)
        {
        }
      }

      v3 |= OZGroup::checkLights(v13);
      OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(v17);
    }

    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v15);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v18);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v20);
  }

  return v3 & 1;
}

BOOL OZGroup::isValidToLightOutside(OZGroup *this)
{
  v2 = *(this + 120);
  if (!v2)
  {
    return (*(*this + 1640))(this) == 1;
  }

  if (!v3)
  {
    return (*(*this + 1640))(this) == 1;
  }

  return OZGroup::isValidToLightInside(v3);
}

uint64_t OZGroup::isValidLightClipPlane(OZElement *this)
{
  result = OZElement::isValidLightClipPlane(this);
  if (result)
  {
    v3 = *(*this + 1632);

    return v3(this);
  }

  return result;
}

BOOL OZGroup::canReflect(OZGroup *this)
{
  if (!*(this + 120))
  {
    return (*(*this + 1640))(this) == 1;
  }

  return OZElement::canReflect(this);
}

uint64_t OZGroup::canFourCorner(OZGroup *this)
{
  if ((*(*this + 1640))(this) != 1)
  {
    return (*(*this + 1640))(this) != 2;
  }

  result = (*(*this + 1632))(this);
  if (result)
  {
    return (*(*this + 1640))(this) != 2;
  }

  return result;
}

uint64_t OZGroup::canCrop(OZGroup *this)
{
  if ((*(*this + 1640))(this) != 1)
  {
    return (*(*this + 1640))(this) != 2;
  }

  result = (*(*this + 1632))(this);
  if (result)
  {
    return (*(*this + 1640))(this) != 2;
  }

  return result;
}

uint64_t OZGroup::updateHiddenChannels(OZGroup *this, uint64_t a2)
{
  v4 = *(this + 120);
  RootAncestor = OZSceneNode::getRootAncestor(this);
  v6 = this;
  v27 = v4;
  v7 = (*(*this + 1640))(this);
  v8 = (*(*this + 1640))(this);
  if ((*(*this + 1640))(this))
  {
    v9 = (*(*this + 1632))(this);
  }

  else
  {
    v9 = 1;
  }

  OZChannel::getValueAsDouble((this + 19184), MEMORY[0x277CC08F0], 0.0);
  v11 = v10;
  v13 = (*(*this + 1640))(this) == 1 || v7 == 2;
  updated = OZElement::updateHiddenChannels(this, a2);
  v15 = updated | (v8 != 1) ^ OZChannelBase::testFlag((this + 19640), 2);
  v16 = OZChannelBase::testFlag((this + 19336), 4) || OZChannelBase::testFlag(this + 174, 4);
  if (v16 == (v11 != 0.0))
  {
    v17 = (this + 19336);
    if (v11 == 0.0)
    {
      OZChannelBase::setFlag(v17, 4, a2);
      OZChannelBase::setFlag(this + 174, 4, a2);
    }

    else
    {
      OZChannelBase::resetFlag(v17, 4, a2);
      OZChannelBase::resetFlag(this + 174, 4, a2);
    }

    v15 = 1;
  }

  v18 = (this + 19640);
  if (v8 == 1)
  {
    OZChannelBase::resetFlag(v18, 2, a2);
    OZChannelBase::resetFlag((this + 19792), 2, a2);
  }

  else
  {
    OZChannelBase::setFlag(v18, 2, a2);
    OZChannelBase::setFlag((this + 19792), 2, a2);
  }

  v19 = (this + 12672);
  if (v9)
  {
    OZChannelBase::resetFlag(v19, 2, a2);
  }

  else
  {
    OZChannelBase::setFlag(v19, 2, a2);
  }

  v20 = (this + 1088);
  if (v7 == 2)
  {
    OZChannelBase::setFlag(v20, 2, a2);
    OZChannelBase::setFlag((this + 11208), 2, a2);
LABEL_31:
    OZChannelBase::setFlag((this + 8384), 2, a2);
LABEL_32:
    OZChannelBase::setFlag((this + 9352), 2, a2);
    goto LABEL_33;
  }

  OZChannelBase::resetFlag(v20, 2, a2);
  OZChannelBase::resetFlag((this + 11208), 2, a2);
  if (v28)
  {
    goto LABEL_31;
  }

  OZChannelBase::resetFlag((this + 8384), 2, a2);
  if (v27)
  {
    if (!v9)
    {
      goto LABEL_32;
    }
  }

  else if ((*(*this + 1640))(this) != 1 || !(*(*this + 1632))(this))
  {
    goto LABEL_32;
  }

  OZChannelBase::resetFlag((this + 9352), 2, a2);
LABEL_33:
  v21 = (this + 19184);
  if (v13)
  {
    OZChannelBase::setFlag(v21, 2, a2);
    OZChannelBase::setFlag((this + 19336), 2, a2);
    OZChannelBase::setFlag(this + 174, 2, a2);
    if (!v15)
    {
      goto LABEL_39;
    }
  }

  else
  {
    OZChannelBase::resetFlag(v21, 2, a2);
    OZChannelBase::resetFlag((this + 19336), 2, a2);
    OZChannelBase::resetFlag(this + 174, 2, 0);
    if (!v15)
    {
      goto LABEL_39;
    }
  }

  OZGroup::checkCameras(this);
  if ((v9 & 1) == 0)
  {
    OZChannelBase::setRangeName(this, v22);
  }

LABEL_39:
  OZSceneNode::begin_t<OZElement,false,false>(this, v32);
  (*(*this + 1024))(this);
  v23 = (*(*this + 1032))(this);
  memset(v30, 0, sizeof(v30));
  v31 = 1065353216;
  v29 = v23;
  while (v32[0] != v29)
  {
    if (v32[0] != v32[2])
    {
      v24 = *(v32[0] + 16);
      if (v24)
      {
        if (v25)
        {
          v15 |= (*(*v25 + 1704))(v25, a2);
        }
      }
    }

    OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(v32);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v30);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v33);
  return v15 & 1;
}

void sub_26017A1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

OZTransformNode *OZGroup::checkCameras(OZTransformNode *this)
{
  v1 = this;
  v2 = *(this + 121);
  if (!v2 || (*(v2 + 1576) & 1) == 0)
  {
    if ((OZTransformNode::isInRootWorld(this) & 1) == 0 || (this = (*(v1->var0 + 178))(v1), this))
    {
      OZSceneNode::begin_t<OZCamera,false,true>(v1, v11);
      (*(v1->var0 + 128))(v1);
      v3 = (*(v1->var0 + 129))(v1);
      v4 = 0;
      memset(v9, 0, sizeof(v9));
      v10 = 1065353216;
      v8 = v3;
      while (v11[0] != v8)
      {
        if (v11[0] == v12)
        {
          v5 = 0;
        }

        else
        {
          v5 = *(v11[0] + 16);
          if (v5)
          {
          }
        }

        if ((*(v5[2] + 24))())
        {
          if (v11[0] == v12)
          {
            v6 = 0;
          }

          else
          {
            v6 = *(v11[0] + 16);
            if (v6)
            {
            }
          }

          (*(v6[2] + 40))();
          if ((v4 & 1) == 0)
          {
            OZChannelBase::setRangeName(v1, v7);
          }

          v4 = 1;
        }

        OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::operator++(v11);
      }

      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v9);
      return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v13);
    }
  }

  return this;
}

void sub_26017A47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *OZSceneNode::begin_t<OZCamera,false,true>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 1024))(a1);
  result = (*(*a1 + 1032))(a1);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v4;
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  if (v4 != result)
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      return OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

void OZGroup::setToDefaultDimensionType(OZGroup *this, int a2)
{
  v4 = OZPreferenceManager::Instance(this);
  DefaultGroupType = OZPreferenceManager::getDefaultGroupType(v4);
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = DefaultGroupType;
  }

  if (v6 == 1)
  {
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    v9 = *(this + 120);
    if (v9)
    {
      if (v10)
      {
        v11 = (*(*v10 + 1640))(v10);
        if (v11 == 2)
        {
          v11 = OZPreferenceManager::getDefaultGroupType(v4) == 2;
        }

        v8 = v11;
        v7 = (this + 18928);
        goto LABEL_16;
      }
    }

    v12 = *(this + 121);
    if (v12)
    {
      OZScene::begin_t<OZGroup,false,false>(v12, v26);
      v13 = *(this + 121);
      memset(v24, 0, sizeof(v24));
      v25 = 1065353216;
      v23 = v13 + 1200;
      if (OZScene::has3DObjects(v13, 0))
      {
        v14 = (this + 18928);
        OZChannel::setDefaultValue((this + 18928), 1.0);
      }

      else
      {
        if (v26[0] != v23)
        {
          v16 = OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator*(v26);
          v17 = v16;
          if (v16 == this)
          {
            OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(v26);
            if (v26[0] == v23 || (v19 = OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator*(v26), (*(*v19 + 1640))(v19) == 2))
            {
              v18 = 0;
            }

            else
            {
              v18 = (*(*v19 + 1640))(v19);
            }

            goto LABEL_33;
          }

          if ((*(*v16 + 1640))(v16) == 2)
          {
            v18 = 0;
          }

          else
          {
            v18 = (*(*v17 + 1640))(v17);
          }

          while (1)
          {
            OZObject::iterator_t<OZGroup,false,false,OZObject::defaultValidator>::operator++(v26);
LABEL_33:
            if (v26[0] == v23)
            {
              break;
            }

            v21 = (*(*v20 + 1640))();
            if (v20 != this && v18 != v21)
            {
              v18 = 1;
              break;
            }
          }

          OZChannel::setDefaultValue((this + 18928), v18);
          OZChannelBase::reset(this + 169, 0);
          goto LABEL_41;
        }

        v14 = (this + 18928);
        OZChannel::setDefaultValue((this + 18928), 0.0);
      }

      OZChannelBase::reset(v14, 0);
LABEL_41:
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v24);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v27);
      goto LABEL_17;
    }

LABEL_15:
    v7 = (this + 18928);
    v8 = 0.0;
    goto LABEL_16;
  }

  v7 = (this + 18928);
  v8 = 1.0;
LABEL_16:
  OZChannel::setDefaultValue(v7, v8);
  OZChannelBase::reset(this + 169, 0);
LABEL_17:
  if (OZSceneSettings::is360Project((*(this + 121) + 336)) && !*(this + 120) && !(*(*this + 1640))(this))
  {
    OZChannel::setDefaultValue((this + 18928), 1.0);
    OZChannelBase::reset(this + 169, 0);
  }

  v15 = (*(*this + 1640))(this);
  OZGroup::setDimensionType(this, v15, 0);
}

void sub_26017AA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v14 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void OZGroup::didAddToScene(OZGroup *this, OZScene *a2)
{
  OZTransformNode::didAddToScene(this, a2);
  DefaultValue = OZChannel::getDefaultValue((this + 19336));
  v5 = OZChannel::getDefaultValue((this + 19488));
  v6 = DefaultValue == 0.0;
  if (v5 == 0.0)
  {
    v6 = 1;
  }

  if (a2 && v6)
  {
    v7 = *(a2 + 86);
    v8 = *(a2 + 87);
    v9 = v7;
    OZChannel::setDefaultValue((this + 19336), v7);
    OZChannelBase::reset((this + 19336), 0);
    OZChannel::setDefaultValue((this + 19488), v8);
    OZChannelBase::reset(this + 174, 0);
    OZChannel::setDefaultValue((this + 20136), v9);
    OZChannelBase::reset((this + 20136), 0);
    OZChannel::setDefaultValue((this + 20288), v8);

    OZChannelBase::reset((this + 20288), 0);
  }
}

uint64_t OZGroup::scheduleTokens(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = OZSceneNode::scheduleTokens(a1, a2, a3, a4, a5);
  if (!v10)
  {
    if (a1[123] == a1 + 122)
    {
      return 0;
    }

    else
    {
      memset(v17, 0, 24);
      std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v17, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
      (*(*a1 + 184))(a1, a2, v17, a4);
      v11 = (*(*a1 + 1024))(a1);
      v12 = (*(*a1 + 1032))(a1);
      if (v11 == v12)
      {
        v10 = 0;
      }

      else
      {
        do
        {
          v13 = *(v11 + 16);
          v16 = *(a2 + 16);
          v15 = *a2;
          if ((*(*(v13 + 16) + 104))(v13 + 16, &v15, 1))
          {
            v10 = (*(**(v11 + 16) + 136))(*(v11 + 16), a2, v17, a4, a5);
            if (v10)
            {
              break;
            }
          }

          else
          {
            v10 = 0;
          }

          v11 = *(v11 + 8);
        }

        while (v11 != v12);
      }

      *&v15 = v17;
      std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v15);
    }
  }

  return v10;
}

void sub_26017AD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::hintTokensWillImage(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = OZSceneNode::hintTokensWillImage(a1, a2, a3, a4);
  if (!v8)
  {
    if (a1[123] == a1 + 122)
    {
      return 0;
    }

    else
    {
      memset(v15, 0, 24);
      std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v15, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
      (*(*a1 + 184))(a1, a2, v15, a4);
      v9 = (*(*a1 + 1024))(a1);
      v10 = (*(*a1 + 1032))(a1);
      if (v9 == v10)
      {
        v8 = 0;
      }

      else
      {
        do
        {
          v11 = *(v9 + 16);
          v14 = *(a2 + 16);
          v13 = *a2;
          if ((*(*(v11 + 16) + 104))(v11 + 16, &v13, 1))
          {
            v8 = (*(**(v9 + 16) + 144))(*(v9 + 16), a2, v15, a4);
            if (v8)
            {
              break;
            }
          }

          else
          {
            v8 = 0;
          }

          v9 = *(v9 + 8);
        }

        while (v9 != v10);
      }

      *&v13 = v15;
      std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v13);
    }
  }

  return v8;
}

void sub_26017AF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t OZGroup::getTokensImage(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!OZSceneNode::getTokensImage(a1, a2, a3, a4) && a1[123] != a1 + 122)
  {
    memset(v14, 0, 24);
    std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v14, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
    (*(*a1 + 184))(a1, a2, v14, a4);
    v8 = (*(*a1 + 1024))(a1);
    v9 = (*(*a1 + 1032))(a1);
    while (v8 != v9)
    {
      v10 = *(v8 + 16);
      v13 = *(a2 + 16);
      v12 = *a2;
      if ((*(*(v10 + 16) + 104))(v10 + 16, &v12, 1))
      {
        if ((*(**(v8 + 16) + 152))(*(v8 + 16), a2, v14, a4))
        {
          break;
        }
      }

      v8 = *(v8 + 8);
    }

    *&v12 = v14;
    std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  return 0;
}

void sub_26017B17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 40) = &a13;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  _Unwind_Resume(a1);
}

uint64_t OZGroup::resetCacheEvictionLimit(OZGroup *this)
{
  v2 = (*(*this + 1024))(this);
  result = (*(*this + 1032))(this);
  if (v2 != result)
  {
    v4 = result;
    do
    {
      result = (*(**(v2 + 16) + 600))(*(v2 + 16));
      v2 = *(v2 + 8);
    }

    while (v2 != v4);
  }

  return result;
}

uint64_t OZGroup::setStartTime(OZGroup *this, const CMTime *a2)
{
  (*(*this + 1128))(&v28);
  v27 = *a2;
  OZSceneNode::setStartTime(this, a2);
  v4 = (*(*this + 1024))(this);
  v5 = (*(*this + 1032))(this);
  v26 = 1065353216;
  memset(v25, 0, sizeof(v25));
  v21 = v4;
  v22 = v4;
  v23 = v5;
  v24 = 0;
  v6 = (*(*this + 1024))(this);
  v7 = (*(*this + 1032))(this);
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  v15 = v7;
  v16 = v6;
  v17 = v7;
  v18 = 0;
  for (i = v21; i != v15; v21 = i)
  {
    if (i == v23)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(i + 16);
    }

    (*(*v9 + 1128))(&v14, v9);
    memset(&v13, 0, sizeof(v13));
    v30 = v14;
    v29 = v28;
    PC_CMTimeSaferSubtract(&v30, &v29, &v13);
    memset(v12, 0, sizeof(v12));
    v30 = v27;
    v29 = v13;
    v10 = PC_CMTimeSaferAdd(&v30, &v29, v12);
    (*(*v9 + 1160))(v9, v12, v10);
    i = *(v21 + 8);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v19);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v25);
}

void Render360GroupAsEquirectSentry::Render360GroupAsEquirectSentry(Render360GroupAsEquirectSentry *this, OZGroup *a2, OZRenderParams *a3)
{
  *(this + 1) = a3;
  *(this + 3) = 0;
  v6 = (this + 24);
  PCSharedCount::PCSharedCount(this + 4);
  *(this + 5) = 0x3FF0000000000000;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  if (a2 && (*(*a2 + 1640))(a2) == 2)
  {
    *this = 1;
    *(this + 16) = *(a3 + 242);
    v7 = *(this + 1);
    *(v7 + 242) = 1;
    v8 = 1296;
    if (!*(v7 + 1296))
    {
      v8 = 1280;
    }

    PCPtr<LiImageSource>::operator=<LiImageSource>(v6, *(v7 + v8));
    if (*v6)
    {
      (*(**v6 + 472))(*v6, this + 40);
      v9 = *v6;
      if (!*v6)
      {
        throw_PCNullPointerException(1);
      }

      v10[0] = 0x3FF0000000000000;
      memset(&v10[1], 0, 24);
      (*(*v9 + 480))(v9, v10);
    }
  }

  else
  {
    *this = 0;
  }
}

void Render360GroupAsEquirectSentry::Render360GroupAsEquirectSentry(Render360GroupAsEquirectSentry *this, OZImageNode *lpsrc, OZRenderParams *a3)
{
  if (lpsrc)
  {
  }

  Render360GroupAsEquirectSentry::Render360GroupAsEquirectSentry(this, lpsrc, a3);
}

void Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(PCSharedCount *this)
{
  if (LOBYTE(this->var0) == 1)
  {
    *(this[1].var0 + 242) = this[2].var0;
    var0 = this[3].var0;
    if (var0)
    {
      (*(*var0 + 480))(var0, this + 5);
    }
  }

  PCSharedCount::~PCSharedCount(this + 4);
}

uint64_t OZGroup::OZGroup_dimensionTypeImpl::getInstance(OZGroup::OZGroup_dimensionTypeImpl *this)
{
  if (atomic_load_explicit(&OZGroup::OZGroup_dimensionTypeImpl::getInstance(void)::OZGroup_dimensionTypeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGroup::OZGroup_dimensionTypeImpl::getInstance(void)::OZGroup_dimensionTypeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_dimensionTypeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGroup::OZGroup_dimensionTypeImpl::_OZGroup_dimensionType;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_dimensionTypeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGroup::OZGroup_dimensionTypeImpl::_OZGroup_dimensionType)
  {
    operator new();
  }
}

uint64_t OZGroup::OZGroup_fixedWidthImpl::getInstance(OZGroup::OZGroup_fixedWidthImpl *this)
{
  if (atomic_load_explicit(&OZGroup::OZGroup_fixedWidthImpl::getInstance(void)::OZGroup_fixedWidthImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGroup::OZGroup_fixedWidthImpl::getInstance(void)::OZGroup_fixedWidthImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_fixedWidthImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGroup::OZGroup_fixedWidthImpl::_OZGroup_fixedWidth;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_fixedWidthImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGroup::OZGroup_fixedWidthImpl::_OZGroup_fixedWidth)
  {
    operator new();
  }
}

uint64_t OZGroup::OZGroup_fixedWidthInfo::getInstance(OZGroup::OZGroup_fixedWidthInfo *this)
{
  if (atomic_load_explicit(&OZGroup::OZGroup_fixedWidthInfo::getInstance(void)::OZGroup_fixedWidthInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGroup::OZGroup_fixedWidthInfo::getInstance(void)::OZGroup_fixedWidthInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_fixedWidthInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGroup::OZGroup_fixedWidthInfo::_OZGroup_fixedWidthInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_fixedWidthInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGroup::OZGroup_fixedWidthInfo::_OZGroup_fixedWidthInfo)
  {
    operator new();
  }
}

OZGroup::OZGroup_fixedWidthInfo *OZGroup::OZGroup_fixedWidthInfo::OZGroup_fixedWidthInfo(OZGroup::OZGroup_fixedWidthInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 2000.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287295540;
  *(this + 10) = &unk_287295560;
  return this;
}

uint64_t OZGroup::OZGroup_fixedHeightImpl::getInstance(OZGroup::OZGroup_fixedHeightImpl *this)
{
  if (atomic_load_explicit(&OZGroup::OZGroup_fixedHeightImpl::getInstance(void)::OZGroup_fixedHeightImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGroup::OZGroup_fixedHeightImpl::getInstance(void)::OZGroup_fixedHeightImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_fixedHeightImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGroup::OZGroup_fixedHeightImpl::_OZGroup_fixedHeight;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_fixedHeightImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGroup::OZGroup_fixedHeightImpl::_OZGroup_fixedHeight)
  {
    operator new();
  }
}

uint64_t OZGroup::OZGroup_fixedHeightInfo::getInstance(OZGroup::OZGroup_fixedHeightInfo *this)
{
  if (atomic_load_explicit(&OZGroup::OZGroup_fixedHeightInfo::getInstance(void)::OZGroup_fixedHeightInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGroup::OZGroup_fixedHeightInfo::getInstance(void)::OZGroup_fixedHeightInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_fixedHeightInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGroup::OZGroup_fixedHeightInfo::_OZGroup_fixedHeightInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_fixedHeightInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGroup::OZGroup_fixedHeightInfo::_OZGroup_fixedHeightInfo)
  {
    operator new();
  }
}

OZGroup::OZGroup_fixedHeightInfo *OZGroup::OZGroup_fixedHeightInfo::OZGroup_fixedHeightInfo(OZGroup::OZGroup_fixedHeightInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 2000.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287295630;
  *(this + 10) = &unk_287295650;
  return this;
}

uint64_t OZGroup::OZGroup_versionImpl::getInstance(OZGroup::OZGroup_versionImpl *this)
{
  if (atomic_load_explicit(&OZGroup::OZGroup_versionImpl::getInstance(void)::OZGroup_versionImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGroup::OZGroup_versionImpl::getInstance(void)::OZGroup_versionImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_versionImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGroup::OZGroup_versionImpl::_OZGroup_version;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup::OZGroup_versionImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGroup::OZGroup_versionImpl::_OZGroup_version)
  {
    operator new();
  }
}

void *OZSceneNode::begin_t<OZ3DEngineSceneElement,false,false>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 1024))(a1);
  result = (*(*a1 + 1032))(a1);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v4;
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  if (v4 != result)
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      return OZObject::iterator_t<OZ3DEngineSceneElement,false,false,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZ3DEngineSceneElement,false,false,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

void *OZObject::iterator_t<OZ3DEngineSceneElement,false,false,OZObject::defaultValidator>::operator++(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 8);
  for (*a1 = v3; v3 != v2; *a1 = v3)
  {
    v4 = *(v3 + 16);
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  return a1;
}

uint64_t std::vector<OZGroupKeyframe<PCVector3<double>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OZGroupKeyframe<PCVector3<double>>>::__emplace_back_slow_path<OZGroupKeyframe<PCVector3<double>>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<OZGroupKeyframe<PCVector3<double>>>::__emplace_back_slow_path<OZGroupKeyframe<PCVector3<double>>>(uint64_t *a1, __int128 *a2)
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

  v15 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PCEdgeVertex>>(a1, v6);
  }

  v7 = 48 * v2;
  __p = 0;
  v12 = v7;
  v14 = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  v13 = 48 * v2 + 48;
  std::vector<OZGroupKeyframe<PCVector3<double>>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 48) % 0x30uLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_26017C5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<OZGroupKeyframe<PCVector3<double>>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      *(v5 + 16) = *(v2 + 2);
      *v5 = v6;
      *(v5 + 24) = *(v2 + 24);
      *(v5 + 40) = *(v2 + 5);
      v2 += 3;
      v5 += 48;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void *std::__shared_ptr_emplace<Li3DEngineWorldData>::__shared_ptr_emplace[abi:ne200100]<Li3DEngineScene *,double const&,PCMatrix44Tmpl<double> &,Li3DEngineWorldPhysicsParams &,LiLightSet const&,std::allocator<Li3DEngineWorldData>,0>(void *a1, uint64_t *a2, double *a3, uint64_t a4, void *a5, uint64_t a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287295B00;
  std::allocator<Li3DEngineWorldData>::construct[abi:ne200100]<Li3DEngineWorldData,Li3DEngineScene *,double const&,PCMatrix44Tmpl<double> &,Li3DEngineWorldPhysicsParams &,LiLightSet const&>(&v8, (a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<Li3DEngineWorldData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287295B00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<Li3DEngineWorldData>::construct[abi:ne200100]<Li3DEngineWorldData,Li3DEngineScene *,double const&,PCMatrix44Tmpl<double> &,Li3DEngineWorldPhysicsParams &,LiLightSet const&>(uint64_t a1, Li3DEngineObjectDataBase *a2, uint64_t *a3, double *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = 0;
  v9 = *a3;
  v10 = *a4;
  do
  {
    v12[v8] = vcvt_hight_f32_f64(vcvt_f32_f64(*(a5 + 32 * v8)), *(a5 + 32 * v8 + 16));
    ++v8;
  }

  while (v8 != 4);
  return Li3DEngineWorldData::Li3DEngineWorldData(a2, v9, v12, a6, a7, v10);
}

uint64_t Li3DEngineWorldData::Li3DEngineWorldData(Li3DEngineObjectDataBase *a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, double a6)
{
  v11 = a3[1];
  v15[0] = *a3;
  v15[1] = v11;
  v12 = a3[3];
  v15[2] = a3[2];
  v15[3] = v12;
  v13 = Li3DEngineObjectDataBase::defaultPerInstanceColor(a1);
  result = Li3DEngineObjectDataBase::Li3DEngineObjectDataBase(a1, a2, v15, 0, 0, 0, a5, a6, *v13, v13[1], v13[2], v13[3], 1.0);
  *a1 = &unk_287266410;
  *(a1 + 28) = 0;
  *(a1 + 27) = 0;
  *(a1 + 26) = a1 + 216;
  *(a1 + 29) = *a4;
  return result;
}

uint64_t OZGroup::masterScene(OZGroup *this)
{
  result = *(this + 2862);
  if (!result)
  {
    operator new();
  }

  return result;
}

void OZFootageLayer::OZFootageLayer(OZFootageLayer *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSceneNode::OZSceneNode(this, a2, a3, a4);
  *v5 = &unk_287295B50;
  v5[2] = &unk_287296018;
  v5[6] = &unk_287296270;
  v5[136] = v5 + 136;
  v5[137] = v5 + 136;
  v5[138] = 0;
  PCURL::PCURL(&v6, @"Channel Footage Members");
  OZChannelFolder::OZChannelFolder((this + 1112), &v6, (this + 448), 0x64u, 0, 0);
  PCString::~PCString(&v6);
  OZChannelBase::setFlag((this + 1112), 8, 0);
}

void sub_26017D43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelFolder::~OZChannelFolder((v10 + 1112));
  std::__list_imp<unsigned int>::clear(v11);
  OZSceneNode::~OZSceneNode(v10);
  _Unwind_Resume(a1);
}

void OZFootageLayer::OZFootageLayer(OZFootageLayer *this, const OZFootageLayer *a2, uint64_t a3)
{
  OZSceneNode::OZSceneNode(this, a2, a3);
  *v6 = &unk_287295B50;
  v6[2] = &unk_287296018;
  v6[6] = &unk_287296270;
  v6[136] = v6 + 136;
  v6[137] = v6 + 136;
  v6[138] = 0;
  PCURL::PCURL(&v9, @"Channel Footage Members");
  OZChannelFolder::OZChannelFolder((this + 1112), &v9, (this + 448), 0x64u, 0, 0);
  PCString::~PCString(&v9);
  if ((a3 & 1) == 0)
  {
    for (i = *(a2 + 137); i != (a2 + 1088); i = i[1])
    {
      v8 = (*(**(i[2] + 8) + 24))(*(i[2] + 8), i[2], a3);
      if (v8)
      {
        {
          operator new();
        }
      }
    }
  }
}

void sub_26017D700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  std::__list_imp<unsigned int>::clear(v11);
  OZSceneNode::~OZSceneNode(v10);
  _Unwind_Resume(a1);
}

void OZFootageLayer::~OZFootageLayer(OZFootageLayer *this)
{
  *this = &unk_287295B50;
  *(this + 2) = &unk_287296018;
  *(this + 6) = &unk_287296270;
  for (i = *(this + 138); i; i = *(this + 138))
  {
    v3 = *(this + 137);
    v4 = v3[1];
    v5 = v3[2];
    v6 = *v3;
    *(v6 + 8) = v4;
    *v4 = v6;
    *(this + 138) = i - 1;
    operator delete(v3);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  OZChannelFolder::~OZChannelFolder((this + 1112));
  std::__list_imp<unsigned int>::clear(this + 136);

  OZSceneNode::~OZSceneNode(this);
}

{
  OZFootageLayer::~OZFootageLayer(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZFootageLayer::~OZFootageLayer(OZFootageLayer *this)
{
  OZFootageLayer::~OZFootageLayer((this - 16));
}

{
  OZFootageLayer::~OZFootageLayer((this - 48));
}

{
  OZFootageLayer::~OZFootageLayer((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZFootageLayer::~OZFootageLayer((this - 48));

  JUMPOUT(0x2666E9F00);
}