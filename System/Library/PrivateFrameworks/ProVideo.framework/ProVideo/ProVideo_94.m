void OZAlignSimBehavior::accumInitialValues(OZAlignSimBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v47 = *(a2 + 176);
  v40 = *(a2 + 176);
  if ((*(*this + 296))(this, &v40, 0, 1, 1))
  {
    v5 = *(a2 + 7);
    v6 = *(a2 + 8);
    v7 = *(a2 + 9);
    v40 = v47;
    v8 = 0.0;
    ValueAsInt = OZChannel::getValueAsInt((this + 504), &v40, 0.0);
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    if (ValueAsInt <= 2)
    {
      v8 = dbl_260853600[ValueAsInt];
      v10 = dbl_2608535E8[ValueAsInt];
      v11 = dbl_2608535D0[ValueAsInt];
      v12 = dbl_2608535B8[ValueAsInt];
      v13 = dbl_2608535A0[ValueAsInt];
      v14 = dbl_260853588[ValueAsInt];
    }

    v15 = v5 * v8;
    v16 = v6 * v10;
    v17 = v7 * v11;
    v18 = v15 * v15 + v16 * v16 + v17 * v17;
    if (fabs(v18) >= 0.0000001)
    {
      v19 = sqrt(v18);
      if (fabs(v19) >= 0.000000100000001)
      {
        v15 = v15 / v19;
        v16 = v16 / v19;
        v17 = v17 / v19;
      }

      v20 = 0.0;
      v21 = OZChannel::getValueAsInt((this + 1016), &v47, 0.0);
      v22 = -v15;
      v23 = -v16;
      v24 = -v17;
      if (!v21)
      {
        v24 = v17;
        v23 = v16;
        v22 = v15;
      }

      *&v40.value = v22;
      *&v40.timescale = v13 * v24 - v14 * v23;
      v44 = v24;
      v45 = v12 * v23 - v13 * v22;
      *&v40.epoch = v12;
      v41 = v23;
      v42 = v14 * v22 - v12 * v24;
      v43 = v13;
      v46 = v14;
      v35 = 0x3FF0000000000000uLL;
      v36 = 0uLL;
      v37 = 0x3FF0000000000000uLL;
      v38 = 0uLL;
      v39 = 0x3FF0000000000000;
      v34 = v47;
      v25 = OZChannel::getValueAsInt(this + 5, &v34, 0.0);
      if (v25 == 2)
      {
        v35 = 0uLL;
        v36 = xmmword_2603426F0;
        v37 = xmmword_2603426F0;
        v38 = xmmword_26034C200;
      }

      else
      {
        if (v25 != 1)
        {
          goto LABEL_14;
        }

        v38 = 0uLL;
        v35 = xmmword_260342700;
        v36 = xmmword_26034D970;
        v37 = 0uLL;
        v20 = 1.0;
      }

      v39 = *&v20;
LABEL_14:
      *v26.i64 = PCMatrix33Tmpl<double>::operator*(&v40, &v35, &v34);
      v31 = 0x3FF0000000000000;
      v32 = 0uLL;
      v33 = 0;
      PCMatrix33Tmpl<double>::getQuaternionFromRotationMatrix(&v34, &v31, v26, v27, v28, v29, v30);
      if (&v31 != (a2 + 24))
      {
        *(a2 + 3) = v31;
        *(a2 + 2) = v32;
        *(a2 + 6) = v33;
      }
    }
  }
}

void OZAlignSimBehavior::accumInitialValues(OZAlignSimBehavior *this, OZSimStateArray *a2, int a3)
{
  v50 = *(a2 + 1);
  v45 = *(a2 + 24);
  *&v46 = *(a2 + 5);
  if (!(*(*this + 296))(this, &v45, 0, 1, 1))
  {
    return;
  }

  v45 = *&v50.value;
  *&v46 = v50.epoch;
  v6 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((this + 504), &v45, 0.0);
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  if (ValueAsInt <= 2)
  {
    v6 = dbl_260853588[ValueAsInt];
    v8 = dbl_2608535A0[ValueAsInt];
    v9 = dbl_2608535B8[ValueAsInt];
    v10 = dbl_2608535D0[ValueAsInt];
    v11 = dbl_2608535E8[ValueAsInt];
    v12 = dbl_260853600[ValueAsInt];
  }

  v45 = 0x3FF0000000000000uLL;
  v46 = 0uLL;
  v47 = 0x3FF0000000000000uLL;
  v48 = 0uLL;
  v49 = 0x3FF0000000000000;
  v38 = v50;
  v13 = 0.0;
  v14 = OZChannel::getValueAsInt(this + 5, &v38, 0.0);
  if (v14 == 2)
  {
    v45 = 0uLL;
    v46 = xmmword_2603426F0;
    v47 = xmmword_2603426F0;
    v48 = xmmword_26034C200;
    goto LABEL_8;
  }

  if (v14 == 1)
  {
    v48 = 0uLL;
    v45 = xmmword_260342700;
    v46 = xmmword_26034D970;
    v47 = 0uLL;
    v13 = 1.0;
LABEL_8:
    v49 = *&v13;
  }

  v15 = OZChannel::getValueAsInt((this + 1016), &v50, 0.0);
  v18 = a2;
  v17 = *a2;
  v16 = *(v18 + 1);
  if (v16 != v17 && a3 >= 1)
  {
    v19 = v15;
    v20 = v16 - 248;
    v21 = 1;
    do
    {
      v22 = v12 * *(v20 + 56);
      v23 = v11 * *(v20 + 64);
      v24 = v10 * *(v20 + 72);
      v25 = v22 * v22 + v23 * v23 + v24 * v24;
      if (fabs(v25) >= 0.0000001)
      {
        v26 = sqrt(v25);
        if (fabs(v26) >= 0.000000100000001)
        {
          v22 = v22 / v26;
          v23 = v23 / v26;
          v24 = v24 / v26;
        }

        if (v19)
        {
          v24 = -v24;
          v23 = -v23;
          v22 = -v22;
        }

        *&v38.value = v22;
        *&v38.timescale = v8 * v24 - v6 * v23;
        v42 = v24;
        v43 = v9 * v23 - v8 * v22;
        *&v38.epoch = v9;
        v39 = v23;
        v40 = v6 * v22 - v9 * v24;
        v41 = v8;
        v44 = v6;
        *v27.i64 = PCMatrix33Tmpl<double>::operator*(&v38, &v45, v37);
        v34 = 0x3FF0000000000000;
        v36 = 0;
        v35 = 0uLL;
        PCMatrix33Tmpl<double>::getQuaternionFromRotationMatrix(v37, &v34, v27, v28, v29, v30, v31);
        if ((v20 + 24) != &v34)
        {
          *(v20 + 24) = v34;
          v32 = v35;
          *(v20 + 48) = v36;
          *(v20 + 32) = v32;
        }
      }

      if (v20 == v17)
      {
        break;
      }

      v20 -= 248;
    }

    while (v21++ < a3);
  }
}

void OZLinkBehavior::OZLinkBehavior(OZLinkBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  OZLocking::OZLocking((v5 + 864));
  *this = &unk_2872AB7F8;
  *(this + 2) = &unk_2872ABB70;
  *(this + 6) = &unk_2872ABDC8;
  *(this + 42) = &unk_2872ABE20;
  *(this + 67) = &unk_2872ABE48;
  *(this + 108) = &unk_2872ABEA8;
  PCURL::PCURL(v26, @"Link Behavior Source Object");
  OZChanObjectRefWithPicker::OZChanObjectRefWithPicker((this + 1064), v26, (this + 56), 0xC9u, 0);
  PCString::~PCString(v26);
  OZChannelRef::OZChannelRef((this + 1272));
  PCURL::PCURL(v26, @"Link Behavior Source Attribute");
  OZChannelUint32::OZChannelUint32((this + 1296), 0, v26, (this + 56), 0xD5u, 2, 0, 0);
  PCString::~PCString(v26);
  *(this + 1450) = 0;
  *(this + 1464) = 0;
  *(this + 92) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(this + 93) = _Q1;
  *(this + 1512) = 0u;
  *(this + 188) = this + 1512;
  *(this + 96) = 0u;
  *(this + 191) = this + 1536;
  PCURL::PCURL(v26, @"Link Behavior Apply Mode Enum");
  PCURL::PCURL(&v27, @"Link Behavior Apply Mode");
  Instance = OZLinkBehavior::OZLinkBehavior_applyModeChanImpl::getInstance(v11);
  OZChannelEnum::OZChannelEnum((this + 1552), 2u, v26, &v27, (this + 56), 0xC8u, 0, Instance, 0);
  PCString::~PCString(&v27);
  PCString::~PCString(v26);
  PCURL::PCURL(v26, @"Link Behavior Scale");
  v14 = OZLinkBehavior::OZLinkBehavior_scaleChanImpl::getInstance(v13);
  v15 = OZLinkBehavior::OZLinkBehavior_scaleChanInfo::getInstance(v14);
  OZChannelDouble::OZChannelDouble((this + 1808), v26, (this + 56), 0xCCu, 0, v14, v15);
  PCString::~PCString(v26);
  PCURL::PCURL(v26, @"Link Behavior Mix Mode Enum");
  PCURL::PCURL(&v27, @"Link Behavior Mix Mode");
  v17 = OZLinkBehavior::OZLinkBehavior_mixModeChanImpl::getInstance(v16);
  OZChannelEnum::OZChannelEnum((this + 1960), 6u, v26, &v27, (this + 56), 0xCDu, 0, v17, 0);
  PCString::~PCString(&v27);
  PCString::~PCString(v26);
  PCURL::PCURL(v26, @"Link Behavior Ease Range");
  v19 = OZLinkBehavior::OZLinkBehavior_easeRangeChanImpl::getInstance(v18);
  v20 = OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo::getInstance(v19);
  OZChannelDouble::OZChannelDouble((this + 2216), 10, v26, (this + 56), 0xCEu, 0, v19, v20);
  PCString::~PCString(v26);
  PCURL::PCURL(v26, @"Link Behavior Custom Mix");
  v22 = OZLinkBehavior::OZLinkBehavior_customMixChanImpl::getInstance(v21);
  v23 = OZLinkBehavior::OZLinkBehavior_customMixChanInfo::getInstance(v22);
  OZChannelDouble::OZChannelDouble((this + 2368), 1.0, v26, (this + 56), 0xCFu, 0, v22, v23);
  PCString::~PCString(v26);
  PCURL::PCURL(v26, @"Link Behavior Apply Link When Enum");
  PCURL::PCURL(&v27, @"Link Behavior Apply Link When");
  v25 = OZLinkBehavior::OZLinkBehavior_applyLinkWhenChanImpl::getInstance(v24);
  OZChannelEnum::OZChannelEnum((this + 2520), 0, v26, &v27, (this + 56), 0xD0u, 0, v25, 0);
  PCString::~PCString(&v27);
  PCString::~PCString(v26);
  PCURL::PCURL(v26, @"Link Behavior Clamp Source Value Within Range");
  OZChannelBool::OZChannelBool((this + 2776), 1, v26, (this + 56), 0xD1u, 0, 0, 0);
  PCString::~PCString(v26);
  PCString::PCString(v26, "Continuous;Fixed");
  PCString::PCString(&v27, "Source Frame Mode");
  OZChannelEnum::OZChannelEnum((this + 2928), v26, &v27, (this + 56), 0xD9u, 0, 0, 0);
  PCString::~PCString(&v27);
  PCString::~PCString(v26);
  PCString::PCString(v26, "Source Frame");
  OZChannelPercent::OZChannelPercent((this + 3184), v26, (this + 56), 0xDAu, 0, 0, 0);
  PCString::~PCString(v26);
  PCURL::PCURL(v26, @"Link Behavior Size Offset X");
  OZChannelDouble::OZChannelDouble((this + 3336), 0.0, v26, (this + 56), 0xD6u, 0, 0, 0);
  PCString::~PCString(v26);
  PCURL::PCURL(v26, @"Link Behavior Size Offset Y");
  OZChannelDouble::OZChannelDouble((this + 3488), 0.0, v26, (this + 56), 0xD7u, 0, 0, 0);
  PCString::~PCString(v26);
  PCURL::PCURL(v26, @"Link Behavior Edge Offset");
  OZChannelDouble::OZChannelDouble((this + 3640), 0.0, v26, (this + 56), 0xD8u, 0, 0, 0);
  PCString::~PCString(v26);
  PCString::PCString(v26, "Disable Automatic Channel Scale");
  OZChannelBool::OZChannelBool((this + 3792), 0, v26, (this + 56), 0xDBu, 0, 0, 0);
  PCString::~PCString(v26);
  *&v26[0].var0 = xmmword_260850750;
  OZChanObjectRefWithPicker::addAcceptedFactoryUUID();
}

void sub_2601E7944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, uint64_t a12, uint64_t a13, PCString a14)
{
  PCString::~PCString(&a11);
  OZChannel::~OZChannel((v14 + 3640));
  OZChannel::~OZChannel((v14 + 3488));
  OZChannel::~OZChannel((v14 + 3336));
  OZChannelPercent::~OZChannelPercent((v14 + 3184));
  OZChannelEnum::~OZChannelEnum((v14 + 2928));
  OZChannelBool::~OZChannelBool((v14 + 2776));
  OZChannelEnum::~OZChannelEnum((v14 + 2520));
  OZChannel::~OZChannel((v14 + 2368));
  OZChannel::~OZChannel((v14 + 2216));
  OZChannelEnum::~OZChannelEnum((v14 + 1960));
  OZChannel::~OZChannel((v14 + 1808));
  OZChannelEnum::~OZChannelEnum((v14 + 1552));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v14 + 1528, *v17);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v14 + 1504, *v16);
  OZChannel::~OZChannel((v14 + 1296));
  OZChannelRef::~OZChannelRef((v14 + 1272));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v14 + 1064));
  OZLocking::~OZLocking(v15);
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v14);
  _Unwind_Resume(a1);
}

void OZLinkBehavior::initChannelRanges(OZLinkBehavior *this)
{
  OZChannel::setKeyframable((this + 1552), 0);
  OZChannel::setDefaultValue((this + 1552), 2.0);
  OZChannelBase::reset((this + 1552), 0);
  OZChannel::setKeyframable((this + 1960), 0);
  OZChannel::setDefaultValue((this + 1960), 6.0);
  OZChannelBase::reset((this + 1960), 0);
  OZChannel::setMin((this + 2216), 0.0);
  OZChannel::setMax((this + 2216), 100.0);
  OZChannel::setSliderMin((this + 2216), 0.0);
  OZChannel::setSliderMax((this + 2216), 100.0);
  OZChannel::setCoarseDelta((this + 2216), 10.0);
  OZChannel::setFineDelta((this + 2216), 1.0);
  OZChannel::setDefaultValue((this + 2216), 10.0);
  OZChannelBase::reset((this + 2216), 0);
  OZChannel::setMin((this + 2368), 0.0);
  OZChannel::setMax((this + 2368), 1.0);
  OZChannel::setSliderMin((this + 2368), 0.0);
  OZChannel::setSliderMax((this + 2368), 1.0);
  OZChannel::setCoarseDelta((this + 2368), 0.1);
  OZChannel::setFineDelta((this + 2368), 0.01);
  OZChannel::setDefaultValue((this + 2368), 1.0);
  OZChannelBase::reset((this + 2368), 0);
  OZChannel::setKeyframable((this + 2520), 0);
  OZChannel::setDefaultValue((this + 2520), 0.0);
  OZChannelBase::reset((this + 2520), 0);
  OZChannel::setKeyframable((this + 2776), 0);
  OZChannel::setDefaultValue((this + 2776), 1.0);
  OZChannelBase::reset((this + 2776), 0);
  OZChannel::setSliderMin((this + 1808), 0.0);
  OZChannel::setSliderMax((this + 1808), 10.0);
  OZChannel::setCoarseDelta((this + 1808), 0.5);
  OZChannel::setFineDelta((this + 1808), 0.1);
  OZChannel::setDefaultValue((this + 1808), 1.0);
  OZChannelBase::reset((this + 1808), 0);
  *(this + 182) = 0x3FF0000000000000;
}

void OZLinkBehavior::OZLinkBehavior(OZLinkBehavior *this, const OZLinkBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  OZLocking::OZLocking((v5 + 864));
  *this = &unk_2872AB7F8;
  *(this + 2) = &unk_2872ABB70;
  *(this + 6) = &unk_2872ABDC8;
  *(this + 42) = &unk_2872ABE20;
  *(this + 67) = &unk_2872ABE48;
  *(this + 108) = &unk_2872ABEA8;
  OZChanObjectRefWithPicker::OZChanObjectRefWithPicker((this + 1064), (a2 + 1064), (this + 56));
  OZChannelRef::OZChannelRef((this + 1272));
  OZChannel::OZChannel((this + 1296), (a2 + 1296), (this + 56));
  *(this + 162) = &unk_287246400;
  *(this + 164) = &unk_287246760;
  *(this + 1450) = 0;
  *(this + 1464) = 0;
  *(this + 92) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(this + 93) = _Q1;
  *(this + 1512) = 0u;
  *(this + 188) = this + 1512;
  *(this + 96) = 0u;
  *(this + 191) = this + 1536;
  OZChannelEnum::OZChannelEnum((this + 1552), (a2 + 1552), (this + 56));
  OZChannel::OZChannel((this + 1808), (a2 + 1808), (this + 56));
  *(this + 226) = &unk_287245C60;
  *(this + 228) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 1960), (a2 + 1960), (this + 56));
  OZChannel::OZChannel((this + 2216), (a2 + 2216), (this + 56));
  *(this + 277) = &unk_287245C60;
  *(this + 279) = &unk_287245FC0;
  OZChannel::OZChannel((this + 2368), (a2 + 2368), (this + 56));
  *(this + 296) = &unk_287245C60;
  *(this + 298) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 2520), (a2 + 2520), (this + 56));
  OZChannelBool::OZChannelBool((this + 2776), (a2 + 2776), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 2928), (a2 + 2928), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 3184), (a2 + 3184), (this + 56));
  OZChannel::OZChannel((this + 3336), (a2 + 3336), (this + 56));
  *(this + 417) = &unk_287245C60;
  *(this + 419) = &unk_287245FC0;
  OZChannel::OZChannel((this + 3488), (a2 + 3488), (this + 56));
  *(this + 436) = &unk_287245C60;
  *(this + 438) = &unk_287245FC0;
  OZChannel::OZChannel((this + 3640), (a2 + 3640), (this + 56));
  *(this + 455) = &unk_287245C60;
  *(this + 457) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 3792), (a2 + 3792), (this + 56));
  OZChanObjectRefWithPicker::addAcceptedFactoryUUID();
}

void sub_2601E8210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, OZChannel *a11, OZLocking *a12)
{
  OZChannel::~OZChannel(v19);
  OZChannel::~OZChannel(v18);
  OZChannel::~OZChannel(v17);
  OZChannelPercent::~OZChannelPercent((v12 + 3184));
  OZChannelEnum::~OZChannelEnum((v12 + 2928));
  OZChannelBool::~OZChannelBool((v12 + 2776));
  OZChannelEnum::~OZChannelEnum((v12 + 2520));
  OZChannel::~OZChannel(v16);
  OZChannel::~OZChannel(v15);
  OZChannelEnum::~OZChannelEnum((v12 + 1960));
  OZChannel::~OZChannel(v14);
  OZChannelEnum::~OZChannelEnum((v12 + 1552));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v12 + 1528, *a10);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v12 + 1504, *v13);
  OZChannel::~OZChannel(a11);
  OZChannelRef::~OZChannelRef((v12 + 1272));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v12 + 1064));
  OZLocking::~OZLocking(a12);
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v12);
  _Unwind_Resume(a1);
}

void OZLinkBehavior::setSourceChannelRef(std::string *this, std::string *a2, int a3)
{
  if (OZChannelRef::operator!=(a2, this[53].__r_.__value_.__r.__words))
  {
    OZChannelRef::operator=(this + 53, a2);
    SourceChannel = OZLinkBehavior::getSourceChannel(this);
    ChanBase = OZSingleChannelBehavior::getChanBase(this);
    if (OZLinkBehavior::areChannelsCompatible(this, SourceChannel, ChanBase, 0))
    {

      OZLinkBehavior::buildExpressions(this);
    }

    else
    {

      OZLinkBehavior::clearExpressions(this, a3);
    }
  }
}

char *OZLinkBehavior::copy(OZLinkBehavior *this, const OZBehavior *lpsrc)
{
  if (result)
  {
    v4 = result;
    OZChannel::setValue(this + 7, (result + 1064));
    OZChannelRef::operator=(this + 53, (v4 + 1272));
    OZChannelBase::operator=(this + 1296, v4 + 1296);
    OZChannel::setValue((this + 1552), (v4 + 1552));
    OZChannel::setValue((this + 1808), (v4 + 1808));
    OZChannel::setValue((this + 1960), (v4 + 1960));
    OZChannel::setValue((this + 2216), (v4 + 2216));
    OZChannel::setValue((this + 2368), (v4 + 2368));
    OZChannel::setValue((this + 2520), (v4 + 2520));
    OZChannel::setValue((this + 2776), (v4 + 2776));
    OZChannel::setValue((this + 2928), (v4 + 2928));
    result = OZChannel::setValue((this + 3184), (v4 + 3184));
    v5 = *(v4 + 1456);
    *(this + 182) = v5;
    *(this + 1464) = *(v4 + 1464);
    v6 = *(v4 + 1504);
    if (v6 != v4 + 1512)
    {
      v7 = *(v6 + 40);
      if (!v7[5] || !v7[6] || !v7[7])
      {
        OZLinkBehavior::resolveExpressionChannels(v4);
      }

      operator new();
    }

    *(this + 182) = v5;
  }

  return result;
}

void OZLinkBehavior::~OZLinkBehavior(OZLinkBehavior *this)
{
  *this = &unk_2872AB7F8;
  *(this + 2) = &unk_2872ABB70;
  *(this + 6) = &unk_2872ABDC8;
  *(this + 42) = &unk_2872ABE20;
  *(this + 67) = &unk_2872ABE48;
  *(this + 108) = &unk_2872ABEA8;
  v2 = theApp;
  if (theApp)
  {
    if (OZBehavior::getScene(this))
    {
      v2 = *((*(*this + 336))(this) + 1848) ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  OZLinkBehavior::clearAll(this, v2 & 1);
  OZChannelBool::~OZChannelBool((this + 3792));
  OZChannel::~OZChannel((this + 3640));
  OZChannel::~OZChannel((this + 3488));
  OZChannel::~OZChannel((this + 3336));
  OZChannelPercent::~OZChannelPercent((this + 3184));
  OZChannelEnum::~OZChannelEnum((this + 2928));
  OZChannelBool::~OZChannelBool((this + 2776));
  OZChannelEnum::~OZChannelEnum((this + 2520));
  OZChannel::~OZChannel((this + 2368));
  OZChannel::~OZChannel((this + 2216));
  OZChannelEnum::~OZChannelEnum((this + 1960));
  OZChannel::~OZChannel((this + 1808));
  OZChannelEnum::~OZChannelEnum((this + 1552));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 1528, *(this + 192));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 1504, *(this + 189));
  OZChannel::~OZChannel((this + 1296));
  OZChannelRef::~OZChannelRef(this + 159);
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((this + 1064));
  *(this + 108) = &unk_2872018B0;
  PCMutex::~PCMutex((this + 992));
  PCSharedMutex::~PCSharedMutex((this + 872));

  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);
}

{
  OZLinkBehavior::~OZLinkBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void OZLinkBehavior::clearAll(OZLinkBehavior *this, int a2)
{
  OZChanObjectManipRef::setObject((this + 1064), 0, a2 ^ 1u);
  OZLinkBehavior::clearExpressions(this, a2);
  PCString::PCString(&v4, "");
  OZChannelRef::OZChannelRef(&v5, &v4);
  OZLinkBehavior::setSourceChannelRef(this, &v5, a2);
  OZChannelRef::~OZChannelRef(&v5.__r_.__value_.__l.__data_);
  PCString::~PCString(&v4);
}

void sub_2601E88AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9, void *a10)
{
  OZChannelRef::~OZChannelRef(&a10);
  PCString::~PCString(&a9);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZLinkBehavior::~OZLinkBehavior(OZLinkBehavior *this)
{
  OZLinkBehavior::~OZLinkBehavior((this - 16));
}

{
  OZLinkBehavior::~OZLinkBehavior((this - 48));
}

{
  OZLinkBehavior::~OZLinkBehavior((this - 336));
}

{
  OZLinkBehavior::~OZLinkBehavior((this - 536));
}

{
  OZLinkBehavior::~OZLinkBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZLinkBehavior::~OZLinkBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZLinkBehavior::~OZLinkBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZLinkBehavior::~OZLinkBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

OZChannel *OZLinkBehavior::resolveExpressionChannels(OZChannel *this)
{
  var17 = this[9].var17;
  p_var18 = &this[9].var18;
  if (var17 != &this[9].var18)
  {
    do
    {
      OZLinkChannelExpression::resolveChannelRefs(*(var17 + 5));
      this = OZLinkChannelExpression::syncChannelRanges(*(var17 + 5), 0);
      v3 = *(var17 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(var17 + 2);
          v5 = *v4 == var17;
          var17 = v4;
        }

        while (!v5);
      }

      var17 = v4;
    }

    while (v4 != p_var18);
  }

  return this;
}

void OZLinkBehavior::addExpression(OZLinkBehavior *this, unsigned int a2, OZLinkChannelExpression *a3)
{
  v6 = Li3DEngineScene::sceneManager((this + 864));
  OZLockingGroup::WriteSentry::WriteSentry(v9, v6);
  v7 = a2;
  v8 = a3;
  std::__tree<std::__value_type<unsigned int,OZLinkChannelExpression *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZLinkChannelExpression *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZLinkChannelExpression *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,OZLinkChannelExpression *>>(this + 1504, &v7);
  OZLockingGroup::WriteSentry::~WriteSentry(v9);
}

void sub_2601E8B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

const OZObjectManipulator *OZLinkBehavior::allowDrag(OZLinkBehavior *this, OZFactoryBase *lpsrc, OZChannelBase *a3, char a4, unsigned int *a5, unsigned int *a6, int a7)
{
  if (lpsrc)
  {
    *a5 = 0;
    if (result && a7 == 1 && *a6 == 1)
    {
      if ((this + 56) == a3)
      {
        v15 = result;
        v16 = (*(*result + 264))(result);
        result = (*(*this + 336))(this);
        if (v16 == result)
        {
          result = OZChanObjectRefWithPicker::canReferenceObject((this + 1064), v15);
          if (result)
          {
            *a6 = 1;
            *a5 = a4 & 8;
          }
        }
      }

      return result;
    }
  }

  else
  {
    *a5 = 0;
  }

  return OZBehavior::allowDrag(this, lpsrc, a3, a4, a5, a6, a7);
}

unint64_t OZLinkBehavior::performDragOperation(OZLinkBehavior *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, int a5, int a6, unsigned int a7, const CMTime *a8)
{
  {
    if ((this + 56) == a3 && (v18 = (*(*v16 + 264))(v16), v18 == (*(*this + 336))(this)))
    {
      result = OZChanObjectRefWithPicker::canReferenceObject((this + 1064), v17);
      if (result)
      {
        PCString::PCString(&v21, "source object selection");
        OZChannelBase::addToUndo((this + 1064), &v21);
        PCString::~PCString(&v21);
        OZChanObjectManipRef::setObject((this + 1064), v17, 0);
        if ((*(*this + 336))(this))
        {
          v20 = (*(*this + 336))(this);
          OZDocument::postNotification(*(v20 + 1584), 8);
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return OZBehavior::performDragOperation(this, lpsrc, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

void OZLinkBehavior::setChannelRef(OZLinkBehavior *this, OZChannelBase *a2)
{
  if ((*(*this + 336))(this))
  {
    v4 = (*(*this + 336))(this);
    OZDocument::postNotification(*(v4 + 1584), 0x8000000);
  }

  OZSingleChannelBehavior::setChannelRef(this, a2);
}

uint64_t OZLinkBehavior::setSourceAttribute(OZLinkBehavior *this, int a2)
{
  OZChannel::setValue((this + 1296), MEMORY[0x277CC08F0], a2, 0);
  result = (*(*this + 336))(this);
  if (result)
  {

    return OZScene::dirtyLockDependencies(result);
  }

  return result;
}

uint64_t OZLinkBehavior::areChannelsCompatible(OZLinkBehavior *this, OZChannelBase *lpsrc, OZChannelBase *a3, BOOL *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  {
    var7 = a3->var7;
    if ((lpsrc->var7 & 0x1000) != 0)
    {
      if ((var7 & 0x1000) == 0)
      {
        return 0;
      }

      if (a4)
      {
        *a4 = 1;
      }

      v11 = v9[14];
      if (!v11)
      {
        return 0;
      }

      v12 = v10[14];
      if (!v12)
      {
        return 0;
      }

      v14 = *v11;
      v13 = *(v9[14] + 8);
      v16 = *v12;
      v15 = *(v10[14] + 8);
      if (v13 - v14 != v15 - v16)
      {
        return 0;
      }

      while (v14 != v13 && v16 != v15)
      {
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(*v14 + 8) + 8), *(*(*v16 + 8) + 8))))))
        {
          return 0;
        }

        v14 += 8;
        v16 += 8;
      }
    }

    else if ((var7 & 0x1000) != 0)
    {
      return 0;
    }

    v17[0] = v17;
    v17[1] = v17;
    v17[2] = 0;
    operator new();
  }

  return 0;
}

void sub_2601E9370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

OZChannelBase *OZLinkBehavior::getSourceChannel(OZLinkBehavior *this)
{
  if (!(*(*this + 336))(this) || !OZChanObjectManipRef::getObject((this + 1064)))
  {
    return 0;
  }

  Object = OZChanObjectManipRef::getObject((this + 1064));
  v3 = (*(*Object + 216))(Object);

  return OZChannelRef::getChannel((this + 1272), v3);
}

void OZLinkBehavior::buildExpressions(OZLinkBehavior *this)
{
  OZLinkBehavior::clearExpressions(this, 1);
  if (OZSingleChannelBehavior::getChanBase(this))
  {
    if (OZLinkBehavior::getSourceChannel(this))
    {
      SourceChannel = OZLinkBehavior::getSourceChannel(this);
      {
        v12 = OZLinkBehavior::getSourceChannel(this);
        if (v12)
        {
        }

        else
        {
          v13 = 0;
        }

        ObjectManipulator = OZChannelBase::getObjectManipulator(v13);
        v15 = *(*(*ObjectManipulator + 232))(ObjectManipulator);
        v16 = (*(v15 + 640))();
        OZChannelRef::OZChannelRef(v18, v13, v16);
        operator new();
      }

      v4 = v3[14];
      if (v4)
      {
        v5 = *v4;
        if (*v4 != v4[1])
        {
          v6 = 1;
          do
          {
            if (*v5)
            {
              if (v7)
              {
                v8 = v7;
                if (!OZChannelBase::testFlag(v7, 2))
                {
                  v9 = OZChannelBase::getObjectManipulator(v8);
                  v10 = *(*(*v9 + 232))(v9);
                  v11 = (*(v10 + 640))();
                  OZChannelRef::OZChannelRef(v18, v8, v11);
                  operator new();
                }
              }
            }

            ++v6;
            ++v5;
          }

          while (v5 != v4[1]);
        }
      }
    }

    OZLinkBehavior::calcInternalScale(this);
  }

  OZLinkBehavior::validateParamStates(this);
  v17 = (*(*this + 336))(this);
  OZDocument::postNotification(*(v17 + 1584), 0x8000000);
}

void sub_2601E97B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2666E9F00](v2, 0x10B3C40905E94F1);
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

void OZLinkBehavior::clearExpressions(OZLinkBehavior *this, int a2)
{
  v4 = Li3DEngineScene::sceneManager((this + 864));
  OZLockingGroup::WriteSentry::WriteSentry(v14, v4);
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v5 = *(this + 188);
  v6 = (this + 1512);
  if (v5 != (this + 1512))
  {
    do
    {
      OZLinkBehavior::deleteExpressionParamChannels(this, v5[5], &v12);
      v7 = v5[5];
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v5[5] = 0;
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v6);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 1504, *(this + 189));
  *(this + 188) = v6;
  *v6 = 0u;
  if (a2)
  {
    if ((*(*this + 336))(this))
    {
      v10 = theApp == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = (*(*this + 336))(this);
      OZDocument::postNotification(*(v11 + 1584), 0x8000000);
    }
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v12, v13[0]);
  OZLockingGroup::WriteSentry::~WriteSentry(v14);
}

void sub_2601E999C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a9, a10);
  OZLockingGroup::WriteSentry::~WriteSentry(&a12);
  _Unwind_Resume(a1);
}

OZChannelBase *OZLinkBehavior::getSourceChannelUUID@<X0>(OZLinkBehavior *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = OZLinkBehavior::getSourceChannel(this);
  if (result)
  {
    result = OZLinkBehavior::getSourceChannel(this);
    *a3 = *(result->var1 + 8);
    if (a2)
    {
      result = OZLinkBehavior::getSourceChannel(this);
      var6 = result->var6;
      if (var6)
      {
        *a3 = *(*(var6 + 1) + 8);
      }
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t OZLinkBehavior::getTargetChannelUUID@<X0>(OZLinkBehavior *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = OZSingleChannelBehavior::getChanBase(this);
  if (result)
  {
    result = OZSingleChannelBehavior::getChanBase(this);
    *a3 = *(*(result + 8) + 8);
    if (a2)
    {
      result = OZSingleChannelBehavior::getChanBase(this);
      v7 = *(result + 48);
      if (v7)
      {
        *a3 = *(*(v7 + 8) + 8);
      }
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void OZLinkBehavior::getMixFactor(OZLinkBehavior *this, const CMTime *a2)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 1960), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt > 2)
  {
    if (ValueAsInt != 3)
    {
      if (ValueAsInt == 4)
      {
        (*(*this + 608))(&time1, this);
        epoch = time1.epoch;
        v27 = time1;
        v28 = v26;
      }

      else
      {
        if (ValueAsInt != 5)
        {
LABEL_16:

          OZChannel::getValueAsDouble((this + 2368), a2, 0.0);
          return;
        }

        (*(*this + 608))(&time1, this);
        v27 = time1;
        v28 = v26;
        time2 = time1;
        time1 = *a2;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v6 = 0;
        }

        else
        {
          OZLinkBehavior::getEaseRange(this, &v23);
          time1 = v27;
          time2 = v23;
          PC_CMTimeSaferAdd(&time1, &time2, &v24);
          time1 = *a2;
          time2 = v24;
          v6 = CMTimeCompare(&time1, &time2) < 1;
        }

        time1 = v27;
        time2 = v28;
        PC_CMTimeSaferAdd(&time1, &time2, &v23);
        OZLinkBehavior::getEaseRange(this, &v22);
        time1 = v23;
        time2 = v22;
        PC_CMTimeSaferSubtract(&time1, &time2, &v24);
        time1 = *a2;
        time2 = v24;
        if (CMTimeCompare(&time1, &time2) < 1)
        {
          v16 = 0;
        }

        else
        {
          time1 = v27;
          time2 = v28;
          PC_CMTimeSaferAdd(&time1, &time2, &v21);
          time1 = *a2;
          time2 = v21;
          v16 = CMTimeCompare(&time1, &time2) >> 31;
        }

        if (((v6 | v16) & 1) == 0)
        {
          return;
        }

        if ((v6 & v16) == 1)
        {
          v24 = v27;
          OZLinkBehavior::getEaseRange(this, &v22);
          time1 = v27;
          time2 = v22;
          PC_CMTimeSaferAdd(&time1, &time2, &v23);
          OZLinkBehavior::getAccelerationFactor(v19, a2, &v24, &v23);
          time1 = v27;
          time2 = v28;
          PC_CMTimeSaferAdd(&time1, &time2, &v23);
          OZLinkBehavior::getEaseRange(this, &v22);
          time1 = v23;
          time2 = v22;
          PC_CMTimeSaferSubtract(&time1, &time2, &v24);
          time1 = v27;
          time2 = v28;
          PC_CMTimeSaferAdd(&time1, &time2, &v21);
          OZLinkBehavior::getDecelerationFactor(v20, a2, &v24, &v21);
          return;
        }

        if (v6)
        {
          *&v24.value = *&v27.value;
          v9 = v27.epoch;
          goto LABEL_15;
        }

        *&time1.value = *&v27.value;
        epoch = v27.epoch;
      }

      time1.epoch = epoch;
      time2 = v28;
      PC_CMTimeSaferAdd(&time1, &time2, &v23);
      OZLinkBehavior::getEaseRange(this, &v22);
      time1 = v23;
      time2 = v22;
      PC_CMTimeSaferSubtract(&time1, &time2, &v24);
      time1 = v27;
      time2 = v28;
      PC_CMTimeSaferAdd(&time1, &time2, &v21);
      OZLinkBehavior::getDecelerationFactor(v14, a2, &v24, &v21);
      return;
    }

    (*(*this + 608))(&time1, this);
    v27 = time1;
    v9 = time1.epoch;
    *&v24.value = *&time1.value;
LABEL_15:
    v24.epoch = v9;
    OZLinkBehavior::getEaseRange(this, &v22);
    time1 = v27;
    time2 = v22;
    PC_CMTimeSaferAdd(&time1, &time2, &v23);
    OZLinkBehavior::getAccelerationFactor(v10, a2, &v24, &v23);
    return;
  }

  if (!ValueAsInt)
  {
    (*(*this + 608))(&time1, this);
    v27 = time1;
    v7 = time1.epoch;
    *&v24.value = *&time1.value;
LABEL_13:
    v24.epoch = v7;
    OZLinkBehavior::getEaseRange(this, &v22);
    time1 = v27;
    time2 = v22;
    PC_CMTimeSaferAdd(&time1, &time2, &v23);
    OZLinkBehavior::getEaseInFactor(v8, a2, &v24, &v23);
    return;
  }

  if (ValueAsInt == 1)
  {
    (*(*this + 608))(&time1, this);
    v11 = time1.epoch;
    v27 = time1;
    v28 = v26;
    goto LABEL_20;
  }

  if (ValueAsInt != 2)
  {
    goto LABEL_16;
  }

  (*(*this + 608))(&time1, this);
  v27 = time1;
  v28 = v26;
  time2 = time1;
  time1 = *a2;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v5 = 0;
  }

  else
  {
    OZLinkBehavior::getEaseRange(this, &v23);
    time1 = v27;
    time2 = v23;
    PC_CMTimeSaferAdd(&time1, &time2, &v24);
    time1 = *a2;
    time2 = v24;
    v5 = CMTimeCompare(&time1, &time2) < 1;
  }

  time1 = v27;
  time2 = v28;
  PC_CMTimeSaferAdd(&time1, &time2, &v23);
  OZLinkBehavior::getEaseRange(this, &v22);
  time1 = v23;
  time2 = v22;
  PC_CMTimeSaferSubtract(&time1, &time2, &v24);
  time1 = *a2;
  time2 = v24;
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    v15 = 0;
  }

  else
  {
    time1 = v27;
    time2 = v28;
    PC_CMTimeSaferAdd(&time1, &time2, &v21);
    time1 = *a2;
    time2 = v21;
    v15 = CMTimeCompare(&time1, &time2) >> 31;
  }

  if ((v5 | v15))
  {
    if ((v5 & v15) == 1)
    {
      v24 = v27;
      OZLinkBehavior::getEaseRange(this, &v22);
      time1 = v27;
      time2 = v22;
      PC_CMTimeSaferAdd(&time1, &time2, &v23);
      OZLinkBehavior::getEaseInFactor(v17, a2, &v24, &v23);
      time1 = v27;
      time2 = v28;
      PC_CMTimeSaferAdd(&time1, &time2, &v23);
      OZLinkBehavior::getEaseRange(this, &v22);
      time1 = v23;
      time2 = v22;
      PC_CMTimeSaferSubtract(&time1, &time2, &v24);
      time1 = v27;
      time2 = v28;
      PC_CMTimeSaferAdd(&time1, &time2, &v21);
      OZLinkBehavior::getEaseOutFactor(v18, a2, &v24, &v21);
      return;
    }

    if (v5)
    {
      *&v24.value = *&v27.value;
      v7 = v27.epoch;
      goto LABEL_13;
    }

    *&time1.value = *&v27.value;
    v11 = v27.epoch;
LABEL_20:
    time1.epoch = v11;
    time2 = v28;
    PC_CMTimeSaferAdd(&time1, &time2, &v23);
    OZLinkBehavior::getEaseRange(this, &v22);
    time1 = v23;
    time2 = v22;
    PC_CMTimeSaferSubtract(&time1, &time2, &v24);
    time1 = v27;
    time2 = v28;
    PC_CMTimeSaferAdd(&time1, &time2, &v21);
    OZLinkBehavior::getEaseOutFactor(v12, a2, &v24, &v21);
  }
}

double OZLinkBehavior::getEaseInFactor(OZLinkBehavior *this, const CMTime *a2, const CMTime *a3, const CMTime *a4)
{
  time1 = *a2;
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) < 0 || (time1 = *a2, time2 = *a4, CMTimeCompare(&time1, &time2) > 0))
  {
    time1 = *a2;
    time2 = *a3;
    v7 = CMTimeCompare(&time1, &time2);
    result = 1.0;
    if (v7 < 0)
    {
      return 0.0;
    }
  }

  else
  {
    time1 = *a2;
    time2 = *a3;
    PC_CMTimeSaferSubtract(&time1, &time2, &v14);
    time1 = *a4;
    time2 = *a3;
    PC_CMTimeSaferSubtract(&time1, &time2, v13);
    operator/(&v14, v13, &time1);
    Seconds = CMTimeGetSeconds(&time1);
    v10 = 1.0;
    if (Seconds <= 1.0)
    {
      v10 = Seconds;
    }

    v11 = Seconds < 0.0;
    v12 = 0.0;
    if (!v11)
    {
      v12 = v10;
    }

    return v12 * v12 * (3.0 - (v12 + v12));
  }

  return result;
}

CMTime *OZLinkBehavior::getEaseRange@<X0>(OZLinkBehavior *this@<X0>, CMTime *a2@<X8>)
{
  OZChannel::getValueAsDouble((this + 2216), MEMORY[0x277CC08F0], 0.0);
  v5 = v4;
  OZBehavior::getFrameDuration(this, &v7);
  return operator*(&v7, a2, v5);
}

double OZLinkBehavior::getEaseOutFactor(OZLinkBehavior *this, const CMTime *a2, const CMTime *a3, const CMTime *a4)
{
  time1 = *a2;
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) < 0 || (time1 = *a2, time2 = *a4, CMTimeCompare(&time1, &time2) > 0))
  {
    time1 = *a2;
    time2 = *a3;
    v7 = CMTimeCompare(&time1, &time2);
    result = 0.0;
    if (v7 < 0)
    {
      return 1.0;
    }
  }

  else
  {
    time1 = *a4;
    time2 = *a2;
    PC_CMTimeSaferSubtract(&time1, &time2, &v14);
    time1 = *a4;
    time2 = *a3;
    PC_CMTimeSaferSubtract(&time1, &time2, v13);
    operator/(&v14, v13, &time1);
    Seconds = CMTimeGetSeconds(&time1);
    v10 = 1.0;
    if (Seconds <= 1.0)
    {
      v10 = Seconds;
    }

    v11 = Seconds < 0.0;
    v12 = 0.0;
    if (!v11)
    {
      v12 = v10;
    }

    return v12 * v12 * (3.0 - (v12 + v12));
  }

  return result;
}

void OZLinkBehavior::getAccelerationFactor(OZLinkBehavior *this, const CMTime *a2, const CMTime *a3, const CMTime *a4)
{
  time1 = *a2;
  time2 = *a4;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    time1 = *a2;
    time2 = *a3;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time1 = *a4;
      time2 = *a3;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      CMTimeGetSeconds(&time);
      time1 = *a2;
      time2 = *a3;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      CMTimeGetSeconds(&time);
    }
  }
}

void OZLinkBehavior::getDecelerationFactor(OZLinkBehavior *this, const CMTime *a2, const CMTime *a3, const CMTime *a4)
{
  time1 = *a2;
  time2 = *a4;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    time1 = *a2;
    time2 = *a3;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time1 = *a4;
      time2 = *a3;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      CMTimeGetSeconds(&time);
      time1 = *a4;
      time2 = *a3;
      PC_CMTimeSaferSubtract(&time1, &time2, &v8);
      time1 = *a2;
      time2 = *a3;
      PC_CMTimeSaferSubtract(&time1, &time2, &v7);
      time1 = v8;
      time2 = v7;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      CMTimeGetSeconds(&time);
    }
  }
}

double OZLinkBehavior::getInternalScale(OZLinkBehavior *this)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 3792), MEMORY[0x277CC08F0], 0.0);
  result = 1.0;
  if (!ValueAsInt)
  {
    return *(this + 182);
  }

  return result;
}

void OZLinkBehavior::calcInternalScale(OZLinkBehavior *this)
{
  OZLinkBehavior::getSourceChannelUUID(this, 0, &v70);
  OZLinkBehavior::getSourceChannelUUID(this, 1, &v69);
  OZLinkBehavior::getTargetChannelUUID(this, 0, &v68);
  OZLinkBehavior::getTargetChannelUUID(this, 1, &v67);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v69, v70)))) & 1) == 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v69, xmmword_260848480)))) & 1) == 0 || (v2 = vmovn_s32(vceqq_s32(v69, xmmword_260848430)), (vminv_u16(v2)) || ((v3 = vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v69, xmmword_2608484B0))), v4 = vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v69, xmmword_260848490))) & 0xF, (vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v69, xmmword_260848440))) & 0xF) != 0) ? (v5 = v4 == 0) : (v5 = 1), !v5 ? (v6 = (v3 & 0xF) == 0) : (v6 = 1), v6 || (v7 = v70.i32[0], v8 = v70.i32[1], v9 = v70.i32[2], v10 = v70.i32[3], (v2.i8[2]) && v69.i32[0] == 229652390 && v69.i32[2] == -1522466813 && (v2.i8[6]))
  {
    v10 = v69.i32[3];
    v9 = v69.i32[2];
    v8 = v69.i32[1];
    v7 = v69.i32[0];
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v67, v68)))) & 1) == 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v67, xmmword_260848480)))) & 1) == 0 || (v11 = vmovn_s32(vceqq_s32(v67, xmmword_260848430)), (vminv_u16(v11)) || ((v12 = vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v67, xmmword_2608484B0))), v13 = vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v67, xmmword_260848490))) & 0xF, (vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v67, xmmword_260848440))) & 0xF) != 0) ? (v14 = v13 == 0) : (v14 = 1), !v14 ? (v15 = (v12 & 0xF) == 0) : (v15 = 1), v15 || (v16 = v68.i32[0], v17 = v68.i32[1], v18 = v68.i32[2], v19 = v68.i32[3], (v11.i8[2]) && v67.i32[0] == 229652390 && v67.i32[2] == -1522466813 && (v11.i8[6]))
  {
    v19 = v67.i32[3];
    v18 = v67.i32[2];
    v17 = v67.i32[1];
    v16 = v67.i32[0];
  }

  if (v7 == -1740272879 && (v8 == 633096600 ? (v20 = v9 == -1748788778) : (v20 = 0), v20 ? (v21 = v10 == -786165934) : (v21 = 0), v21) || (v10 == -1819691262 ? (v22 = v8 == 579932631) : (v22 = 0), v22 ? (v23 = v7 == 813156494) : (v23 = 0), v23 ? (v24 = v9 == -1183318013) : (v24 = 0), v24))
  {
    if (OZLinkBehavior::getSourceChannel(this)->var3 == 1)
    {
      v25 = *((*(*this + 336))(this) + 344);
    }

    else
    {
      v26 = v7;
      v27 = v8;
      v28 = v9;
      v29 = v10;
      var3 = OZLinkBehavior::getSourceChannel(this)->var3;
      v31 = (*(*this + 336))(this);
      if (var3 == 2)
      {
        v25 = *(v31 + 348);
      }

      else
      {
        v33 = *(v31 + 344);
        v25 = *((*(*this + 336))(this) + 348);
        if (v33 > v25)
        {
          v25 = v33;
        }
      }

      v10 = v29;
      v9 = v28;
      v8 = v27;
      v7 = v26;
    }

    v32 = v25;
  }

  else if (v7 == 1683370175 && v8 == -1267840585 && v9 == -2073336591 && v10 == -229854912)
  {
    v32 = 6.28318531;
  }

  else if (v7 == -2020973379 && v8 == 422580696 && v9 == -1161625590 && v10 == -1783652482 || (v32 = 0.0, v10 == -1819691262) && v8 == 579932631 && v7 == 229652390 && v9 == -1522466813)
  {
    v32 = 1.0;
  }

  if (v16 == -1740272879 && v17 == 633096600 && v18 == -1748788778 && v19 == -786165934 || v16 == 813156494 && v17 == 579932631 && v18 == -1183318013 && v19 == -1819691262)
  {
    if (*(OZSingleChannelBehavior::getChanBase(this) + 24) == 1)
    {
      v34 = *((*(*this + 336))(this) + 344);
    }

    else
    {
      v35 = *(OZSingleChannelBehavior::getChanBase(this) + 24);
      v36 = (*(*this + 336))(this);
      if (v35 == 2)
      {
        v34 = *(v36 + 348);
      }

      else
      {
        v38 = *(v36 + 344);
        v34 = *((*(*this + 336))(this) + 348);
        if (v38 > v34)
        {
          v34 = v38;
        }
      }
    }

    v37 = v34;
  }

  else if (v16 == 1683370175 && v17 == -1267840585 && v18 == -2073336591 && v19 == -229854912)
  {
    v37 = 6.28318531;
  }

  else
  {
    v37 = 1.0;
    if ((v16 != -2020973379 || v17 != 422580696 || v18 != -1161625590 || v19 != -1783652482) && (v7 != 229652390 || v8 != 579932631 || v9 != -1522466813 || v10 != -1819691262))
    {
      v37 = 0.0;
      if (v16 == 362132562 && v17 == 579998167 && v18 == -1937833981 && v19 == -1819691262)
      {
        if (OZSingleChannelBehavior::getChanBase(this))
        {
          ChanBase = OZSingleChannelBehavior::getChanBase(this);
          ObjectManipulator = OZChannelBase::getObjectManipulator(ChanBase);
          if (ObjectManipulator)
          {
            if (v64)
            {
              OZFxPlugSharedBase::getPluginUUID(v64, &v71);
              PCString::PCString(&v66, "E61FE95E-0108-47DA-8F29-3CB3C47428EF");
              v65 = PCString::compare(&v71, &v66);
              PCString::~PCString(&v66);
              PCString::~PCString(&v71);
              if (v65)
              {
                v37 = 0.0;
              }

              else
              {
                v37 = v32;
              }
            }
          }
        }
      }
    }
  }

  if (v32 != 0.0 || (v39 = *(this + 188), v39 == (this + 1512)))
  {
    v40 = v32;
  }

  else
  {
    v40 = v32;
    do
    {
      v41 = *(v39 + 5);
      OZLinkChannelExpression::getSourceValueRange(v41);
      if (v42 > v32)
      {
        v32 = v42;
      }

      SourceSliderRange = OZLinkChannelExpression::getSourceSliderRange(v41);
      v44 = 1.0;
      if (SourceSliderRange >= 10.0)
      {
        v45 = log10(SourceSliderRange);
        v44 = __exp10(vcvtmd_s64_f64(v45 + 0.5 + 0.0000001));
      }

      if (v44 < v40 || v40 == 0.0)
      {
        v40 = v44;
      }

      v47 = *(v39 + 1);
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = *(v39 + 2);
          v5 = *v48 == v39;
          v39 = v48;
        }

        while (!v5);
      }

      v39 = v48;
    }

    while (v48 != (this + 1512));
  }

  if (v37 != 0.0 || (v49 = *(this + 188), v49 == (this + 1512)))
  {
    v50 = v37;
  }

  else
  {
    v50 = v37;
    do
    {
      TargetChannel = OZLinkBehavior::getTargetChannel(this, *(v49 + 5));
      if (TargetChannel)
      {
        v52 = TargetChannel;
        *&v71.var0 = 0.0;
        (*(**(*(TargetChannel + 112) + 8) + 256))(*(*(TargetChannel + 112) + 8), &v71);
        var0 = v71.var0;
        *&v71.var0 = 0.0;
        (*(**(v52[14] + 8) + 264))();
        if (*&var0 - *&v71.var0 > v37)
        {
          v37 = *&var0 - *&v71.var0;
        }

        v54 = (*(*v52 + 808))(v52) - *(v52[16] + 16);
        v55 = 1.0;
        if (v54 >= 10.0)
        {
          v56 = log10(v54);
          v55 = __exp10(vcvtmd_s64_f64(v56 + 0.5 + 0.0000001));
        }

        if (v55 < v50 || v50 == 0.0)
        {
          v50 = v55;
        }
      }

      v58 = *(v49 + 1);
      if (v58)
      {
        do
        {
          v59 = v58;
          v58 = *v58;
        }

        while (v58);
      }

      else
      {
        do
        {
          v59 = *(v49 + 2);
          v5 = *v59 == v49;
          v49 = v59;
        }

        while (!v5);
      }

      v49 = v59;
    }

    while (v59 != (this + 1512));
  }

  v60 = 1.0;
  v61 = v32 == v37 && v40 == v50;
  if (!v61 && v32 != 0.0 && v37 != 0.0)
  {
    if (v32 >= 3.40282347e38 || v37 >= 3.40282347e38)
    {
      if (v40 != 0.0 && v50 != 0.0)
      {
        v60 = v50 / v40;
      }
    }

    else
    {
      v60 = v50 / v32;
    }
  }

  *(this + 182) = v60;
}

void sub_2601EB684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, PCString a19)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a19);
  _Unwind_Resume(a1);
}

uint64_t OZLinkBehavior::getTargetChannel(OZLinkBehavior *this, OZLinkChannelExpression *a2)
{
  v4 = Li3DEngineScene::sceneManager((this + 864));
  OZLockingGroup::WriteSentry::WriteSentry(v11, v4);
  TargetChannelID = OZLinkBehavior::getTargetChannelID(this, a2);
  v6 = 0;
  if (OZSingleChannelBehavior::getChanBase(this) && TargetChannelID != -1)
  {
    ChanBase = OZSingleChannelBehavior::getChanBase(this);
    {
      Descendant = OZChannelFolder::getDescendant(v8, TargetChannelID);
    }

    else
    {
      Descendant = OZSingleChannelBehavior::getChanBase(this);
    }

    v6 = Descendant;
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v11);
  return v6;
}

void sub_2601EB78C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

BOOL OZLinkBehavior::allExpressionsWithinLimits(OZLinkBehavior *this, const CMTime *a2, OZLinkChannelExpression *a3)
{
  if (!*(this + 190))
  {
    return 1;
  }

  v5 = *(this + 188);
  v6 = this + 1512;
  do
  {
    v7 = v5 == v6;
    if (v5 == v6)
    {
      break;
    }

    v8 = *(v5 + 5);
    v9 = v8 == a3 || OZLinkChannelExpression::isWithinLimits(v8, a2);
    v10 = *(v5 + 1);
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = *(v5 + 2);
        v12 = *v11 == v5;
        v5 = v11;
      }

      while (!v12);
    }

    v5 = v11;
  }

  while (v9);
  return v7;
}

double OZLinkBehavior::solveNode(OZLinkBehavior *this, unsigned int a2, const CMTime *a3, double a4, double a5)
{
  if (OZLinkBehavior::getSourceChannel(this) || OZChannel::getValueAsUint((this + 1296), MEMORY[0x277CC08F0], 0.0))
  {
    memset(&v14, 0, sizeof(v14));
    (*(**(*(this + 47) + 32) + 336))(&v14);
    v13 = v14;
    if ((*(*this + 296))(this, &v13, 0, 1, 1))
    {
      if (OZChannel::getValueAsUint((this + 1296), MEMORY[0x277CC08F0], 0.0))
      {
        return OZLinkBehavior::solveWithSourceAttributes(this, a2, a3, v9, a5);
      }

      else
      {
        v11 = OZLinkBehavior::expressionForChannel(this, a2);
        if (v11)
        {
          v12 = v11;
          if (OZLinkBehavior::allExpressionsWithinLimits(this, &v14, v11))
          {
            v13.value = 0;
            OZLinkChannelExpression::solve(v12, a5, &v14, &v13.value, 0);
            return *&v13.value;
          }
        }
      }
    }
  }

  return a5;
}

double OZLinkBehavior::solveWithSourceAttributes(OZLinkBehavior *this, int a2, const CMTime *a3, double a4, double a5)
{
  v9 = Li3DEngineScene::sceneManager((this + 864));
  OZLockingGroup::WriteSentry::WriteSentry(v31, v9);
  if ((*(this + 1450) & 1) == 0)
  {
    Object = OZChanObjectManipRef::getObject((this + 1064));
    if (Object)
    {
      if (v11)
      {
        v12 = v11;
        TargetElement = OZLinkBehavior::getTargetElement(this);
        if (TargetElement)
        {
          *(this + 1450) = 1;
          OZRenderState::OZRenderState(&v30);
          OZLinkBehavior::getSourceFrame(this, a3, &v28);
          *&v30.var0.var0 = v28;
          v30.var0.var3 = v29;
          v30.var29 = OZLinkBehavior::getBoundsType(this);
          OZRenderState::TransformSet::rotation(&v30.var30, 0);
          (*(*v12 + 1496))(&v28, v12, &v30);
          if (*&v29 < 0.0 || *(&v29 + 1) < 0.0)
          {
            *(this + 1450) = 0;
            a5 = 0.0;
          }

          else
          {
            ChanBase = OZSingleChannelBehavior::getChanBase(this);
            v15 = *(*(ChanBase + 8) + 8);
            if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v15, xmmword_2608484A0)))) & 1) != 0 && (v16 = *(*(*(ChanBase + 48) + 8) + 8), (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v16, xmmword_2608484A0))))) && (vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v15, xmmword_260848460))) & 0xF) != 0 && (vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v16, xmmword_260848460))) & 0xF) != 0)
            {
              v26[0] = v28;
              v26[1] = v29;
              v17 = OZLinkBehavior::computeValue(this, TargetElement, v12, v26, a2, &v30);
              OZLinkBehavior::getOffset(this, a2, a3);
              v19 = v18;
              v20 = 0;
            }

            else
            {
              v27[0] = v28;
              v27[1] = v29;
              v17 = OZLinkBehavior::computeScale(this, TargetElement, v12, v27, a2, &v30);
              v19 = 0.0;
              v20 = 1;
            }

            *(this + 1450) = 0;
            OZChannel::getValueAsDouble((this + 1808), a3, 0.0);
            v22 = v19 + v17 * v21;
            if ((v20 & 1) == 0)
            {
              ValueAsInt = OZChannel::getValueAsInt((this + 1552), MEMORY[0x277CC08F0], 0.0);
              if (ValueAsInt)
              {
                if (ValueAsInt == 1)
                {
                  v22 = v22 * a5;
                }
              }

              else
              {
                v22 = v22 + a5;
              }
            }

            OZLinkBehavior::getMixFactor(this, a3);
            a5 = (v22 - a5) * v24 + a5;
          }
        }
      }
    }
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v31);
  return a5;
}

uint64_t OZLinkBehavior::expressionForChannel(OZLinkBehavior *this, unsigned int a2)
{
  v13 = a2;
  v4 = Li3DEngineScene::sceneManager((this + 864));
  OZLockingGroup::WriteSentry::WriteSentry(v12, v4);
  v5 = *(this + 189);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = (this + 1512);
  do
  {
    v7 = v5[8];
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[2 * v9];
  }

  while (v5);
  if (v6 != (this + 1512) && v6[8] <= a2)
  {
    v14 = &v13;
    v10 = std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 1504, &v13)[5];
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v12);
  return v10;
}

void sub_2601EBDD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void OZLinkBehavior::getSourceFrame(OZLinkBehavior *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  {
    v8 = v7;
    OZChannel::getValueAsDouble((this + 3184), MEMORY[0x277CC08F0], 0.0);
    v10 = v9;
    (*(*v8 + 1128))(v16, v8);
    memset(&v15, 0, sizeof(v15));
    v14 = v16[1];
    v11 = (*(*this + 336))(this);
    OZSceneSettings::getFrameDuration((v11 + 336), &v13);
    time = v14;
    v17 = v13;
    PC_CMTimeSaferSubtract(&time, &v17, &v15);
    v14 = v16[0];
    time = v15;
    Seconds = CMTimeGetSeconds(&time);
    OZFigTimeForChannelSeconds(&v13, v10 * Seconds, 0x40000);
    time = v14;
    v17 = v13;
    PC_CMTimeSaferAdd(&time, &v17, a3);
  }

  else
  {
    *a3 = *&a2->value;
    *(a3 + 16) = a2->epoch;
  }
}

double OZLinkBehavior::computeScale(uint64_t a1, OZSceneNode *a2, OZSceneNode *a3, double *a4, int a5, const OZRenderState *a6)
{
  v38 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v32 = 0x3FF0000000000000;
  v28 = 0x3FF0000000000000;
  v29 = 0x3FF0000000000000;
  v30 = 0u;
  v31 = 0u;
  v33 = 0u;
  v34 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = 0x3FF0000000000000;
  v22 = 0x3FF0000000000000;
  v19 = 0x3FF0000000000000;
  v20 = 0u;
  v21 = 0u;
  v23 = 0u;
  v24 = 0u;
  v26 = 0u;
  v27 = 0u;
  OZTransformNode::getCommonAncestorTransforms(a3, a2, a6, &v29, &v19);
  PCMatrix44Tmpl<double>::transformRect<double>(&v29, a4, a4);
  PCMatrix44Tmpl<double>::transformRect<double>(&v19, a4, a4);
  if (*(a1 + 1488) < 0.0 || *(a1 + 1496) < 0.0)
  {
    (*(*a2 + 1496))(v18, a2, a6);
    v11 = v18[1];
    *(a1 + 1472) = v18[0];
    *(a1 + 1488) = v11;
  }

  v12 = (a1 + 1488);
  ChanBase = OZSingleChannelBehavior::getChanBase(a1);
  ValueAsUint = OZChannel::getValueAsUint((a1 + 1296), MEMORY[0x277CC08F0], 0.0);
  v15 = *(*(ChanBase + 8) + 8);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v15, xmmword_2608484A0)))) & 1) != 0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v15, xmmword_260848460)))) & 1) != 0 || (ValueAsUint & 0xFFFFFFFE) != 2)
  {
    if (a5 == 2)
    {
      v16 = a4 + 3;
      v12 = (a1 + 1496);
    }

    else
    {
      result = 1.0;
      if (a5 != 1)
      {
        return result;
      }

      v16 = a4 + 2;
    }
  }

  else
  {
    v16 = a4 + 3;
    if (ValueAsUint == 2)
    {
      v16 = a4 + 2;
    }

    else
    {
      v12 = (a1 + 1496);
    }
  }

  return *v16 / *v12;
}

double OZLinkBehavior::computeValue(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, int a5, uint64_t a6)
{
  ValueAsUint = OZChannel::getValueAsUint((a1 + 1296), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsUint <= 0xD && ((1 << ValueAsUint) & 0x3F0E) != 0)
  {
    OZRenderState::TransformSet::translation((a6 + 248), 0);
  }

  v46 = 0x3FF0000000000000;
  v43 = 0x3FF0000000000000;
  v40 = 0x3FF0000000000000;
  v37 = 0x3FF0000000000000;
  v38 = 0u;
  v39 = 0u;
  v41 = 0u;
  v42 = 0u;
  v44 = 0u;
  v45 = 0u;
  (*(*a3 + 1256))(a3, &v37, a6);
  PCMatrix44Tmpl<double>::transformRect<double>(&v37, a4, a4);
  v14 = OZChannel::getValueAsUint((a1 + 1296), MEMORY[0x277CC08F0], 0.0);
  if (v14 <= 0xD && ((1 << v14) & 0x3F0E) != 0)
  {
    OZRenderState::TransformSet::translation((a6 + 248), 1);
  }

  v15 = *(a2 + 960);
  if (v15)
  {
    if (v16)
    {
      v36 = 0x3FF0000000000000;
      v33 = 0x3FF0000000000000;
      v30 = 0x3FF0000000000000;
      v27 = 0x3FF0000000000000;
      v28 = 0u;
      v29 = 0u;
      v31 = 0u;
      v32 = 0u;
      v34 = 0u;
      v35 = 0u;
      (*(*v16 + 1264))(v16, &v27, a6, v17, v18, v19, v20, v21);
      PCMatrix44Tmpl<double>::transformRect<double>(&v27, a4, a4);
    }
  }

  v22 = 0.0;
  v23 = OZChannel::getValueAsUint((a1 + 1296), MEMORY[0x277CC08F0], 0.0);
  if (v23 <= 6)
  {
    if (v23 <= 3)
    {
      if (v23 != 1)
      {
        if (v23 != 2)
        {
          if (v23 != 3)
          {
            return v22;
          }

          return a4[3];
        }

        return a4[2];
      }

LABEL_25:
      if (a5 == 2)
      {
        return a4[3];
      }

      if (a5 != 1)
      {
        return v22;
      }

      return a4[2];
    }

    if (v23 == 4)
    {
      return *a4;
    }

    if (v23 != 5)
    {
      return a4[1];
    }

    v24 = *a4;
    v25 = a4[2];
    return v24 + v25;
  }

  if ((v23 - 9) >= 5)
  {
    if (v23 != 7)
    {
      if (v23 != 8)
      {
        return v22;
      }

      goto LABEL_25;
    }

    v24 = a4[1];
    v25 = a4[3];
    return v24 + v25;
  }

  return a4[3];
}

void OZLinkBehavior::getOffset(OZLinkBehavior *this, int a2, const CMTime *a3)
{
  ValueAsUint = OZChannel::getValueAsUint((this + 1296), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsUint > 0xD)
  {
LABEL_7:
    if (ValueAsUint == 2)
    {
      goto LABEL_12;
    }

    if (ValueAsUint != 1)
    {
      return;
    }

LABEL_9:
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return;
      }

      goto LABEL_3;
    }

LABEL_12:
    v7 = 3336;
    goto LABEL_13;
  }

  if (((1 << ValueAsUint) & 0x3E08) == 0)
  {
    if (((1 << ValueAsUint) & 0xF0) != 0)
    {
      v7 = 3640;
      goto LABEL_13;
    }

    if (ValueAsUint == 8)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_3:
  v7 = 3488;
LABEL_13:

  OZChannel::getValueAsDouble((this + v7), a3, 0.0);
}

const PCString *OZLinkBehavior::getTargetElement(OZLinkBehavior *this)
{
  result = OZSingleChannelBehavior::getAffectedObject(this);
  if (result)
  {
    v3 = result;
    if (!result)
    {
      if (result)
      {
        result = OZSingleChannelBehavior::getChanBase(this);
        if (result)
        {
          ChanBase = OZSingleChannelBehavior::getChanBase(this);
          result = OZChannelBase::getObjectManipulator(ChanBase);
          if (result)
          {
            if (result)
            {
              OZFxPlugSharedBase::getPluginUUID(result, &v7);
              PCString::PCString(&v6, "546352EB-956A-4DDA-9071-C82CC50B7F73");
              v5 = PCString::compare(&v7, &v6);
              PCString::~PCString(&v6);
              PCString::~PCString(&v7);
              if (v5)
              {
                return 0;
              }

              else
              {
                result = (v3->var0[7].info)(v3);
                if (result)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2601EC768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

uint64_t OZLinkBehavior::getBoundsType(OZLinkBehavior *this)
{
  v1 = OZChannel::getValueAsUint((this + 1296), MEMORY[0x277CC08F0], 0.0) - 8;
  if (v1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_260853820[v1];
  }
}

__n128 OZLinkBehavior::solveNode(OZLinkBehavior *this, uint64_t a2, OZCurveNodeParam *a3)
{
  v3 = *(a3 + 19);
  v4 = *(a3 + 10);
  v11 = *(a3 + 5);
  result = *(a3 + 6);
  *&v10.value = result;
  v10.epoch = *(a3 + 14);
  if (*(a3 + 36))
  {
    v9 = 0;
    do
    {
      *(v3 + 8 * v9) = (*(*this + 680))(this, a2, &v10, 0.0, *(v4 + 8 * v9));
      v13 = v10;
      v12 = v11;
      PC_CMTimeSaferAdd(&v13, &v12, &v14);
      result = *&v14.value;
      v10 = v14;
      ++v9;
    }

    while (v9 < *(a3 + 36));
  }

  return result;
}

uint64_t OZLinkBehavior::updateObjectState(OZLinkBehavior *this)
{
  result = (*(*this + 320))(this);
  if (result)
  {
    v3 = *(*(*(*this + 320))(this) + 240);

    return v3();
  }

  return result;
}

uint64_t OZLinkBehavior::enable(OZLinkBehavior *this)
{
  OZObjectManipulator::enable((this + 16));

  return OZLinkBehavior::updateObjectState(this);
}

uint64_t non-virtual thunk toOZLinkBehavior::enable(OZLinkBehavior *this)
{
  v1 = (this - 16);
  OZObjectManipulator::enable(this);

  return OZLinkBehavior::updateObjectState(v1);
}

uint64_t OZLinkBehavior::disable(OZLinkBehavior *this)
{
  OZObjectManipulator::disable((this + 16));

  return OZLinkBehavior::updateObjectState(this);
}

uint64_t non-virtual thunk toOZLinkBehavior::disable(OZLinkBehavior *this)
{
  v1 = (this - 16);
  OZObjectManipulator::disable(this);

  return OZLinkBehavior::updateObjectState(v1);
}

uint64_t OZLinkBehavior::willRemoveSceneNodeFromScene(OZLinkBehavior *this, OZScene *a2)
{
  OZChannelBehavior::willRemoveSceneNodeFromScene(this, a2);

  return OZLocking::removeFromLockingGroup((this + 864));
}

uint64_t OZLinkBehavior::willRemove(PCString *this)
{
  v2 = (this->var0[10].isa)(this);
  OZSingleChannelBehavior::willRemove(this);
  v3 = *(*v2 + 240);

  return v3(v2, this);
}

uint64_t OZLinkBehavior::didAddToNode(OZLinkBehavior *this, OZSceneNode *a2)
{
  OZChannelBehavior::didAddToNode(this, a2);
  if ((*(this + 852) & 1) == 0 && (*(*a2 + 272))(a2))
  {
    (*(*this + 808))(this);
    OZLinkBehavior::validateLinkedChannels(this);
  }

  return OZLinkBehavior::validateParamStates(this);
}

void OZLinkBehavior::validateLinkedChannels(OZLinkBehavior *this)
{
  if (OZChannel::getValueAsUint((this + 1296), MEMORY[0x277CC08F0], 0.0))
  {
    ValueAsUint = OZChannel::getValueAsUint((this + 1296), MEMORY[0x277CC08F0], 0.0);
    ChanBase = OZSingleChannelBehavior::getChanBase(this);
    if ((OZLinkBehavior::isAttributeCompatibleToDestChannel(ChanBase, ValueAsUint, ChanBase) & 1) == 0)
    {

      OZLinkBehavior::setSourceAttribute(this, 0);
    }
  }

  else
  {
    v10 = 0;
    SourceChannel = OZLinkBehavior::getSourceChannel(this);
    v5 = OZSingleChannelBehavior::getChanBase(this);
    if (OZLinkBehavior::areChannelsCompatible(this, SourceChannel, v5, &v10))
    {
      if (!v10)
      {
        v6 = *(this + 188);
        if (v6 != (this + 1512))
        {
          v7 = v6[5];
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 188, *(this + 188));
          operator delete(v6);
          v9.__r_.__value_.__r.__words[0] = *(OZSingleChannelBehavior::getChanBase(this) + 24);
          v9.__r_.__value_.__l.__size_ = v7;
          std::__tree<std::__value_type<unsigned int,OZLinkChannelExpression *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZLinkChannelExpression *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZLinkChannelExpression *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,OZLinkChannelExpression *>>(this + 1504, &v9);
        }
      }

      OZLinkBehavior::calcInternalScale(this);
    }

    else
    {
      PCString::PCString(&v8, "");
      OZChannelRef::OZChannelRef(&v9, &v8);
      OZLinkBehavior::setSourceChannelRef(this, &v9, 1);
      OZChannelRef::~OZChannelRef(&v9.__r_.__value_.__l.__data_);
      PCString::~PCString(&v8);
    }
  }
}

void sub_2601ECD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, void *a11)
{
  OZChannelRef::~OZChannelRef(&a11);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

uint64_t OZLinkBehavior::validateParamStates(OZLinkBehavior *this)
{
  v2 = (*(*this + 336))(this);
  if (v2)
  {
    if ((v3 = *(v2 + 198)) != 0 && (*(v3 + 184) & 1) != 0 || TXParagraphStyleFolder_Factory::version(v2))
    {
      if (OZChanObjectManipRef::getObject((this + 1064)) && (OZLinkBehavior::getSourceChannel(this) || OZChannel::getValueAsUint((this + 1296), MEMORY[0x277CC08F0], 0.0)) && (Object = OZChanObjectManipRef::getObject((this + 1064)), (OZLinkBehavior::checkForRecursion(this, Object) & 1) == 0))
      {
        (*(*this + 824))(this, 1);
      }

      else
      {
        (*(*this + 832))(this, 1);
      }
    }
  }

  OZLinkBehavior::mixModeChanged(this);
  OZLinkBehavior::applyModeChanged(this);
  OZLinkBehavior::applyLinkWhenChanged(this);
  v6 = *(this + 2);
  v5 = this + 16;
  result = (*(v6 + 24))(v5, 0, 1);
  v5[1449] = result;
  return result;
}

uint64_t OZLinkBehavior::addToChannel(OZLinkBehavior *this, OZChannelBase *lpsrc)
{
  v4 = *(this + 104);
  if (v4)
  {
    OZChannelRef::~OZChannelRef(v4);
    MEMORY[0x2666E9F00]();
    *(this + 104) = 0;
  }

  OZLinkBehavior::addToChannelHelper(this, lpsrc);
  if (!(*(*this + 320))(this))
  {
    SceneNodeFromChan = OZChannelBehavior::GetSceneNodeFromChan(lpsrc, v5);
    (*(*SceneNodeFromChan + 360))(SceneNodeFromChan, this, 0);
  }

  ObjectManipulatorForChannel = OZSingleChannelBehavior::getObjectManipulatorForChannel(this, lpsrc);

  return OZChanObjectManipRef::setObject((this + 640), ObjectManipulatorForChannel, 0);
}

uint64_t OZLinkBehavior::addToChannelHelper(OZLinkBehavior *this, OZChannelBase *lpsrc)
{
  if (lpsrc)
  {
    if (v4)
    {
      OZChannelBehavior::setAffectedChannel(this, lpsrc);
      OZSingleChannelBehavior::addToOneChannel(this, v4);
    }

    if (v5)
    {
      v7 = v5[14];
      if (v7)
      {
        for (i = *v7; i != v7[1]; ++i)
        {
          if (*i)
          {
            if (v9)
            {
              v10 = v9;
              if ((*(v9->var0 + 64))(v9))
              {
                OZChannelBehavior::setAffectedChannel(this, lpsrc);
                OZSingleChannelBehavior::addToOneChannel(this, v10);
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

OZSingleChannelBehavior *OZLinkBehavior::commonDidAddToNode(OZSingleChannelBehavior *this)
{
  if (!*(this + 104))
  {
    return this;
  }

  v1 = this;
  v2 = (*(*this + 320))(this);
  this = OZChanObjectManipRef::getObjectID((v1 + 640));
  if (!this || (v3 = this, *(v2 + 80) == this))
  {
    v5 = v2 + 16;
    goto LABEL_12;
  }

  if (OZSceneNode::getEffect(v2, this))
  {
    this = OZSceneNode::getEffect(v2, v3);
    v4 = this + 48;
  }

  else
  {
    this = OZSceneNode::getBehavior(v2, v3);
    if (!this)
    {
      v5 = 0;
      goto LABEL_12;
    }

    this = OZSceneNode::getBehavior(v2, v3);
    v4 = this + 16;
  }

  if (this)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

LABEL_12:
  v6 = *(v1 + 50);
  if (!*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)))
  {
    goto LABEL_39;
  }

  if (!v5 || (this = (*(*v5 + 256))(v5), v6 = *(v1 + 50), (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(this + 1) + 8), v6)))) & 1) != 0))
  {
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(v2 + 8) + 8), v6)))))
    {
      v7 = *(v2 + 984);
      if (v7 == v2 + 976)
      {
        goto LABEL_28;
      }

      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(v7 + 16);
        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(v10 + 40) + 8), *(v1 + 50))))) & 1) == 0)
        {
          v5 = v10 + 48;
          if (v9)
          {
            InternalName = OZObjectManipulator::getInternalName((v10 + 48));
            this = PCString::size(InternalName);
            if (this)
            {
              this = PCString::compare(InternalName, v1 + 105);
              if (!this)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            v9 = *(v7 + 16);
            v8 = v10 + 48;
          }
        }

        v7 = *(v7 + 8);
      }

      while (v7 != v2 + 976);
      v5 = v8;
      if (!v8)
      {
LABEL_28:
        v12 = *(v2 + 1008);
        if (v12 == v2 + 1000)
        {
LABEL_32:
          v5 = 0;
        }

        else
        {
          while (1)
          {
            v13 = *(v12 + 16);
            if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(v13 + 1) + 8), *(v1 + 50))))) & 1) == 0 && v13 != v1)
            {
              break;
            }

            v12 = *(v12 + 8);
            if (v12 == v2 + 1000)
            {
              goto LABEL_32;
            }
          }

          v5 = v13 + 16;
        }
      }

LABEL_35:
      v14 = v2 + 16;
      if (!v2)
      {
        v14 = 0;
      }

      if (!v5)
      {
        v5 = v14;
      }

LABEL_39:
      if (!v5)
      {
        return this;
      }

      goto LABEL_40;
    }

    v5 = v2 + 16;
  }

LABEL_40:
  this = (*(*v5 + 224))(v5, *(v1 + 104), *(v1 + 107));
  v16 = this;
  if (*(v1 + 107) < 3.0)
  {
    this = OZSingleChannelBehavior::GetDefaultExcludeFlagsForChan(this, v15);
    *(v1 + 212) = this;
  }

  if (v16)
  {
    OZLinkBehavior::addToChannelHelper(v1, v16);
    this = *(v1 + 104);
    if (this)
    {
      OZChannelRef::~OZChannelRef(this);
      this = MEMORY[0x2666E9F00]();
    }

    *(v1 + 104) = 0;
  }

  return this;
}

void OZLinkBehavior::notify(OZLinkBehavior *this, char a2)
{
  OZChannelBehavior::notify(this, a2);
  if ((a2 & 0x10) != 0)
  {
    (*(*this + 816))(this);
  }

  if ((a2 & 0xC) != 0 && (*(*this + 336))(this) && *((*(*this + 336))(this) + 1584))
  {
    (*(*this + 336))(this);
    v4 = *(*((*(*this + 336))(this) + 1584) + 168);
    if (v4 && OZNotificationManager::wasChannelModified(v4, (this + 1960)))
    {
      OZLinkBehavior::mixModeChanged(this);
    }

    else
    {
      (*(*this + 336))(this);
      v5 = *(*((*(*this + 336))(this) + 1584) + 168);
      if (v5 && OZNotificationManager::wasChannelModified(v5, (this + 1552)))
      {
        OZLinkBehavior::applyModeChanged(this);
      }

      else
      {
        (*(*this + 336))(this);
        v6 = *(*((*(*this + 336))(this) + 1584) + 168);
        if (!v6 || !OZNotificationManager::wasChannelModified(v6, (this + 2520)))
        {
          (*(*this + 336))(this);
          v7 = *(*((*(*this + 336))(this) + 1584) + 168);
          if (v7)
          {
            if (OZNotificationManager::wasChannelModified(v7, (this + 1296)))
            {
              if (OZChannel::getValueAsUint((this + 1296), MEMORY[0x277CC08F0], 0.0))
              {
                Object = OZChanObjectManipRef::getObject((this + 1064));
                if (Object)
                {
                  if (v9)
                  {
                    (*(*v9 + 496))(v9);
                  }
                }
              }
            }
          }

          goto LABEL_17;
        }

        OZLinkBehavior::applyLinkWhenChanged(this);
      }
    }

    OZLinkBehavior::updateObjectState(this);
LABEL_17:

    OZLinkBehavior::updateApplyMode(this);
  }
}

void OZLinkBehavior::mixModeChanged(OZLinkBehavior *this)
{
  if (OZChannel::getValueAsInt((this + 1960), MEMORY[0x277CC08F0], 0.0) == 6)
  {
    OZChannelBase::resetFlag((this + 2368), 2, 1);
    OZChannelBase::setFlag((this + 2216), 2, 1);
  }

  else
  {
    OZChannelBase::setFlag((this + 2368), 2, 1);
    OZChannelBase::resetFlag((this + 2216), 2, 1);
  }

  if ((*(*this + 336))(this))
  {
    v2 = *((*(*this + 336))(this) + 1584);

    OZDocument::postNotification(v2, 134742016);
  }
}

void OZLinkBehavior::applyModeChanged(OZLinkBehavior *this)
{
  v2 = *(this + 188);
  v3 = this + 1512;
  if (v2 != this + 1512)
  {
    v4 = MEMORY[0x277CC08F0];
    do
    {
      v5 = *(*(v2 + 5) + 40);
      if (v5)
      {
        if (OZChannel::getValueAsInt((this + 1552), v4, 0.0))
        {
          OZChannelBase::resetFlag(v5, 2, 1);
        }

        else
        {
          (*(v5->var0 + 36))(v5, 0);
          OZChannelBase::setFlag(v5, 2, 1);
        }
      }

      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  if ((*(*this + 336))(this))
  {
    v9 = *((*(*this + 336))(this) + 1584);

    OZDocument::postNotification(v9, 134742016);
  }
}

void OZLinkBehavior::applyLinkWhenChanged(OZLinkBehavior *this)
{
  v2 = *(this + 188);
  v3 = this + 1512;
  if (v2 != this + 1512)
  {
    v4 = MEMORY[0x277CC08F0];
    do
    {
      v5 = *(*(v2 + 5) + 48);
      if (v5)
      {
        if (OZChannel::getValueAsInt((this + 2520), v4, 0.0) == 1 || OZChannel::getValueAsInt((this + 2520), v4, 0.0) == 3 || OZChannel::getValueAsInt((this + 2520), v4, 0.0) == 4)
        {
          OZChannelBase::resetFlag(v5, 2, 1);
        }

        else
        {
          OZChannelBase::setFlag(v5, 2, 1);
        }
      }

      v6 = *(*(v2 + 5) + 56);
      if (v6)
      {
        if (OZChannel::getValueAsInt((this + 2520), v4, 0.0) == 2 || OZChannel::getValueAsInt((this + 2520), v4, 0.0) == 3 || OZChannel::getValueAsInt((this + 2520), v4, 0.0) == 4)
        {
          OZChannelBase::resetFlag(v6, 2, 1);
        }

        else
        {
          OZChannelBase::setFlag(v6, 2, 1);
        }
      }

      v7 = *(v2 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v2 + 2);
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }

  if (OZChannel::getValueAsInt((this + 2520), MEMORY[0x277CC08F0], 0.0))
  {
    OZChannelBase::resetFlag((this + 2776), 2, 1);
  }

  else
  {
    OZChannelBase::setFlag((this + 2776), 2, 1);
  }

  if ((*(*this + 336))(this))
  {
    v10 = *((*(*this + 336))(this) + 1584);

    OZDocument::postNotification(v10, 134742016);
  }
}

uint64_t OZLinkBehavior::updateApplyMode(OZLinkBehavior *this)
{
  result = OZChannel::getValueAsUint((this + 1296), MEMORY[0x277CC08F0], 0.0);
  if (result && (result = OZSingleChannelBehavior::getChanBase(this)) != 0 && ((v3 = *(*(result + 8) + 8), (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v3, xmmword_2608484A0)))) & 1) == 0) || (v4 = *(*(*(result + 48) + 8) + 8), (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v4, xmmword_2608484A0)))) & 1) == 0) || ((v5 = vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v4, xmmword_260848460))) & 0xF, (vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v3, xmmword_260848460))) & 0xF) != 0) ? (v6 = v5 == 0) : (v6 = 1), v6)))
  {
    if ((*(this + 1464) & 1) == 0)
    {
      *(this + 1464) = 1;
      PCURL::PCURL(&v7, @"Link Behavior Apply Mode Convert Pixels to Scale");
      (*(*(this + 194) + 848))(this + 1552, &v7, 1);
      PCString::~PCString(&v7);
      return (*(*(this + 194) + 712))(this + 1552, MEMORY[0x277CC08F0], 0, 0.0);
    }
  }

  else if (*(this + 1464))
  {
    *(this + 1464) = 0;
    PCURL::PCURL(&v7, @"Link Behavior Apply Mode Enum");
    (*(*(this + 194) + 848))(this + 1552, &v7, 1);
    PCString::~PCString(&v7);
    return (*(*(this + 194) + 280))(this + 1552, 0);
  }

  return result;
}

void OZLinkBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v4 = MEMORY[0x277CC08F0];
    do
    {
      v5 = *(v2 + 16);
      if (v5)
      {
      }

      else
      {
        v6 = 0;
      }

      if (OZChannel::getValueAsInt((v6 + 2928), v4, 0.0))
      {
        OZChannelBase::resetFlag((v6 + 3184), 0x400000, 1);
      }

      else
      {
        OZChannelBase::setFlag((v6 + 3184), 0x400000, 1);
      }

      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }
}

void *OZLinkBehavior::checkForRecursion(OZLinkBehavior *this, OZObjectManipulator *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = (*(*this + 320))(this);
  if (result)
  {
    if (result)
    {
      v4 = result;
      if (v5)
      {
        v6 = (*(*v5 + 320))(v5);
      }

      else
      {
      }

      return ((OZGroup::hasDescendant(v4, v6) & 1) != 0);
    }
  }

  return result;
}

void OZLinkBehavior::updateReferenceIDs(std::string *a1, void *a2)
{
  OZSingleChannelBehavior::updateReferenceIDs(a1, a2);
  ID = OZChannelRef::getID(&a1[53]);
  v7 = a2[1];
  v6 = a2 + 1;
  v5 = v7;
  if (v7)
  {
    v8 = v6;
    do
    {
      v9 = *(v5 + 28);
      v10 = v9 >= ID;
      v11 = v9 < ID;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * v11);
    }

    while (v5);
    if (v8 != v6 && ID >= *(v8 + 7))
    {
      OZChannelRef::setID(a1 + 53, *(v8 + 8));
    }
  }

  __p = 0;
  v26 = 0;
  v27 = 0;
  v12 = a1[62].__r_.__value_.__r.__words[2];
  v13 = &a1[63];
  if (v12 == v13)
  {
    v17 = 0;
  }

  else
  {
    do
    {
      OZLinkChannelExpression::getParamChannelRefs(v12[1].__words[2], &__p);
      v14 = v12->__words[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = v14->__words[0];
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v12->__words[2];
          v16 = v15->__words[0] == v12;
          v12 = v15;
        }

        while (!v16);
      }

      v12 = v15;
    }

    while (v15 != v13);
    v17 = __p;
  }

  PCSharedCount::PCSharedCount(&v24);
  while (v17 != v26)
  {
    v18 = *v17;
    v19 = OZChannelRef::getID(*v17);
    v20 = *v6;
    if (*v6)
    {
      v21 = v6;
      do
      {
        v22 = *(v20 + 28);
        v10 = v22 >= v19;
        v23 = v22 < v19;
        if (v10)
        {
          v21 = v20;
        }

        v20 = *(v20 + 8 * v23);
      }

      while (v20);
      if (v21 != v6 && v19 >= *(v21 + 7))
      {
        OZChannelRef::setID(v18, *(v21 + 8));
      }
    }

    ++v17;
  }

  PCString::~PCString(&v24);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_2601EE344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZLinkBehavior::isAttributeCompatibleToDestChannel(OZLinkBehavior *this, int a2, OZChannelBase *a3)
{
  if (a2 != 1)
  {
    if (a3)
    {
      v5 = vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(a3->var1 + 8), xmmword_260848380)))) ^ 1;
      return v5 & 1;
    }

LABEL_8:
    v5 = 0;
    return v5 & 1;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  v3 = *(a3->var1 + 8);
  v4 = vmovn_s32(vceqq_s32(v3, xmmword_260848410));
  v5 = 1;
  if ((vminv_u16(v4) & 1) == 0 && (vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v3, xmmword_2608484A0))) & 0xF) != 0)
  {
    v6 = vmovn_s32(vceqq_s32(v3, xmmword_260853620));
    v5 = vand_s8(v6, vdup_lane_s16(v6, 1)).u8[0] & (v3.i32[2] == -1122435069) & v4.i8[6];
  }

  return v5 & 1;
}

OZChannelBase *OZLinkBehavior::getEvalDepChansForRef(OZChannelBase *this, OZChannelBase *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = this;
    if (&this[9].var7 == a2)
    {
      this = OZLinkBehavior::getSourceChannel(this);
      if (this)
      {
        OZLinkBehavior::getSourceChannel(v3);
        operator new();
      }
    }
  }

  return this;
}

void OZLinkBehavior::fixParamChannelNames(OZLinkBehavior *this)
{
  v1 = *(this + 188);
  v2 = this + 1512;
  if (v1 != this + 1512)
  {
    do
    {
      OZLinkChannelExpression::fixParamChannelNames(*(v1 + 5));
      v3 = *(v1 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v1 + 2);
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

uint64_t *OZLinkBehavior::deleteExpressionParamChannels(uint64_t **a1, unint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = std::__tree<std::__value_type<OZLinkChannelExpression *,OZChannelBase *>,std::__map_value_compare<OZLinkChannelExpression *,std::__value_type<OZLinkChannelExpression *,OZChannelBase *>,std::less<OZLinkChannelExpression *>,true>,std::allocator<std::__value_type<OZLinkChannelExpression *,OZChannelBase *>>>::__equal_range_multi<OZLinkChannelExpression *>((a1 + 191), &v20);
  v6 = v5;
  v8 = v7;
  if (v5 != v7)
  {
    v9 = v5;
    do
    {
      v10 = v9[5];
      v19 = v10;
      if (a3)
      {
        for (i = *(a3 + 8); i; i = *i)
        {
          v12 = i[4];
          if (v10 >= v12)
          {
            if (v12 >= v10)
            {
              goto LABEL_14;
            }

            ++i;
          }
        }

        std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(a3, &v19);
      }

      if (((*a1)[40])(a1))
      {
        v13 = ((*a1)[40])(a1);
        (*(*v13 + 888))(v13, v19);
      }

      v14 = ((*a1)[39])(a1);
      OZChannelFolder::removeDescendant(v14, v19);
      if (v19)
      {
        (*(v19->var0 + 1))(v19);
      }

LABEL_14:
      v15 = v9[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v9[2];
          v17 = *v16 == v9;
          v9 = v16;
        }

        while (!v17);
      }

      v9 = v16;
    }

    while (v16 != v8);
  }

  return std::__tree<unsigned int>::erase(a1 + 191, v6, v8);
}

uint64_t OZLinkBehavior::getTargetChannelID(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1504);
  if (v2 == (a1 + 1512))
  {
    return 0xFFFFFFFFLL;
  }

  while (v2[5] != a2)
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    v2 = v4;
    if (v4 == (a1 + 1512))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(v2 + 8);
}

void OZLinkBehavior::writeBody(OZLinkBehavior *this, PCSerializerWriteStream *a2, BOOL a3, BOOL a4, uint64_t a5)
{
  v10 = Li3DEngineScene::sceneManager((this + 864));
  OZLockingGroup::WriteSentry::WriteSentry(v31, v10);
  PCSerializerWriteStream::pushScope(a2, &OZLinkBehaviorScope);
  v11 = *(this + 188);
  v12 = this + 1512;
  if (v11 != this + 1512)
  {
    do
    {
      v13 = *(v11 + 5);
      if (v13[5] && v13[6] && v13[7])
      {
        (*(*a2 + 16))(a2, 1007);
        (*(*a2 + 144))(a2, 1030, *(*(*(v11 + 5) + 40) + 24));
        (*(*a2 + 144))(a2, 1031, *(*(*(v11 + 5) + 48) + 24));
        (*(*a2 + 144))(a2, 1032, *(*(*(v11 + 5) + 56) + 24));
        (*(*a2 + 24))(a2);
      }

      v14 = *(v11 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v11 + 2);
          v16 = *v15 == v11;
          v11 = v15;
        }

        while (!v16);
      }

      v11 = v15;
    }

    while (v15 != v12);
  }

  OZSingleChannelBehavior::writeBody(this, a2, a3, a4, a5);
  (*(*a2 + 16))(a2, 1002);
  if (OZLinkBehavior::getSourceChannel(this))
  {
    v17 = this + 1272;
    if (*(this + 1295) < 0)
    {
      v17 = *v17;
    }

    PCString::PCString(&v30, v17);
    (*(*a2 + 104))(a2, &v30);
    PCString::~PCString(&v30);
  }

  (*(*a2 + 24))(a2);
  v18 = *(this + 188);
  if (v18 != v12)
  {
    do
    {
      (*(*a2 + 16))(a2, 1003);
      (*(*a2 + 16))(a2, 1005);
      v19 = *(v18 + 5);
      v20 = (v19 + 16);
      if (*(v19 + 39) < 0)
      {
        v20 = *v20;
      }

      PCString::PCString(&v30, v20);
      (*(*a2 + 104))(a2, &v30);
      PCString::~PCString(&v30);
      (*(*a2 + 24))(a2);
      (*(*a2 + 16))(a2, 1006);
      TargetChannelID = OZLinkBehavior::getTargetChannelID(this, *(v18 + 5));
      (*(*a2 + 48))(a2, TargetChannelID);
      (*(*a2 + 24))(a2);
      (*(*a2 + 16))(a2, 1020);
      v22 = *(v18 + 5);
      v23 = (v22 + 64);
      if (*(v22 + 87) < 0)
      {
        v23 = *v23;
      }

      PCString::PCString(&v30, v23);
      (*(*a2 + 104))(a2, &v30);
      PCString::~PCString(&v30);
      (*(*a2 + 24))(a2);
      (*(*a2 + 16))(a2, 1021);
      v24 = *(v18 + 5);
      v25 = (v24 + 88);
      if (*(v24 + 111) < 0)
      {
        v25 = *v25;
      }

      PCString::PCString(&v30, v25);
      (*(*a2 + 104))(a2, &v30);
      PCString::~PCString(&v30);
      (*(*a2 + 24))(a2);
      (*(*a2 + 16))(a2, 1022);
      v26 = *(v18 + 5);
      v27 = (v26 + 112);
      if (*(v26 + 135) < 0)
      {
        v27 = *v27;
      }

      PCString::PCString(&v30, v27);
      (*(*a2 + 104))(a2, &v30);
      PCString::~PCString(&v30);
      (*(*a2 + 24))(a2);
      (*(*a2 + 24))(a2);
      v28 = *(v18 + 1);
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = *(v18 + 2);
          v16 = *v29 == v18;
          v18 = v29;
        }

        while (!v16);
      }

      v18 = v29;
    }

    while (v29 != v12);
  }

  PCSerializerWriteStream::popScope(a2);
  OZLockingGroup::WriteSentry::~WriteSentry(v31);
}

void sub_2601EEE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  PCString::~PCString(&a9);
  OZLockingGroup::WriteSentry::~WriteSentry(&a10);
  _Unwind_Resume(a1);
}

uint64_t OZLinkBehavior::parseBegin(OZLinkBehavior *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZLinkBehaviorScope);
  OZSingleChannelBehavior::parseBegin(this, a2);
  return 1;
}

uint64_t non-virtual thunk toOZLinkBehavior::parseBegin(OZLinkBehavior *this, PCSerializerReadStream *a2)
{
  v3 = (this - 48);
  PCSerializerReadStream::pushScope(a2, &OZLinkBehaviorScope);
  OZSingleChannelBehavior::parseBegin(v3, a2);
  return 1;
}

uint64_t OZLinkBehavior::parseElement(std::string *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v14);
  v6 = *(a3 + 2);
  if (v6 <= 1006)
  {
    switch(v6)
    {
      case 1002:
        PCSerializerReadStream::getAsString(a2, a3, &v14);
        OZChannelRef::OZChannelRef(&v12, &v14);
        OZLinkBehavior::setSourceChannelRef(this, &v12, 1);
        goto LABEL_20;
      case 1005:
        PCSerializerReadStream::getAsString(a2, a3, &v14);
        operator new();
      case 1006:
        LODWORD(v12.__r_.__value_.__l.__data_) = 0;
        PCSerializerReadStream::getAsUInt32(a2, a3, &v12);
        size = this[164].__r_.__value_.__l.__size_;
        if (size)
        {
          OZLinkBehavior::addExpression(this, v12.__r_.__value_.__l.__data_, size);
        }

        break;
    }
  }

  else if (v6 > 1020)
  {
    if (v6 == 1021)
    {
      PCSerializerReadStream::getAsString(a2, a3, &v14);
      v10 = this[164].__r_.__value_.__l.__size_;
      if (v10)
      {
        OZChannelRef::OZChannelRef(&v12, &v14);
        OZChannelRef::operator=((v10 + 88), &v12);
        goto LABEL_20;
      }
    }

    else if (v6 == 1022)
    {
      PCSerializerReadStream::getAsString(a2, a3, &v14);
      v9 = this[164].__r_.__value_.__l.__size_;
      if (v9)
      {
        OZChannelRef::OZChannelRef(&v12, &v14);
        OZChannelRef::operator=((v9 + 112), &v12);
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (v6 == 1007)
    {
      v13 = 0;
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 1030, &v13);
      operator new();
    }

    if (v6 == 1020)
    {
      PCSerializerReadStream::getAsString(a2, a3, &v14);
      v7 = this[164].__r_.__value_.__l.__size_;
      if (v7)
      {
        OZChannelRef::OZChannelRef(&v12, &v14);
        OZChannelRef::operator=((v7 + 64), &v12);
LABEL_20:
        OZChannelRef::~OZChannelRef(&v12.__r_.__value_.__l.__data_);
      }
    }
  }

  OZSingleChannelBehavior::parseElement(this, a2, a3);
  PCString::~PCString(&v14);
  return 1;
}

void sub_2601EF2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, uint64_t a13, PCString a14)
{
  OZChannelRef::~OZChannelRef(&a10.var0);
  PCString::~PCString(&a14);
  _Unwind_Resume(a1);
}

uint64_t OZLinkBehavior::didFinishLoadingIntoScene(OZChannel *this)
{
  OZLinkBehavior::resolveExpressionChannels(this);
  OZLinkBehavior::calcInternalScale(this);
  OZLinkBehavior::fixParamChannelNames(this);
  OZLinkBehavior::validateParamStates(this);

  return OZLinkBehavior::updateApplyMode(this);
}

uint64_t OZLinkBehavior::getLockDependencies(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OZChannel::getValueAsUint((a1 + 1296), MEMORY[0x277CC08F0], 0.0);
  if (result)
  {
    v9 = a1 + 864;
    for (i = *(a4 + 8); i; i = *i)
    {
      v11 = i[4];
      if (v9 >= v11)
      {
        if (v11 >= v9)
        {
          return result;
        }

        ++i;
      }
    }

    v17 = (a1 + 864);
    std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(a4, &v17);
    if (a2)
    {
      PCDirectedGraph<OZLocking *>::addEdge(a3, a2, a1 + 864);
    }

    else
    {
      v16 = a1 + 864;
      v17 = &v16;
      std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::__emplace_unique_key_args<OZLocking *,std::piecewise_construct_t const&,std::tuple<OZLocking * const&>,std::tuple<>>(a3, &v16);
    }

    TargetElement = OZLinkBehavior::getTargetElement(a1);
    if (TargetElement)
    {
      OZLocking::getLockDependenciesForElement(TargetElement, a1 + 864, a3, a4);
    }

    Object = OZChanObjectManipRef::getObject((a1 + 1064));
    if (Object)
    {
      if (v14)
      {
        OZLocking::getLockDependenciesForElement(v14, a1 + 864, a3, a4);
      }
    }

    v15 = (*(*a1 + 336))(a1);
    OZLocking::addLockDependenciesForDependents((a1 + 864), v15, a3, a4);
    v17 = (a1 + 864);
    return std::__tree<OZLocking *>::__erase_unique<OZLocking *>(a4, &v17);
  }

  return result;
}

uint64_t OZLinkBehavior::getLockingGroups(OZLinkBehavior *this)
{
  result = (*(*this + 336))(this);
  if (result)
  {
    return (*(*this + 336))(this) + 1784;
  }

  return result;
}

uint64_t non-virtual thunk toOZLinkBehavior::getLockingGroups(OZLinkBehavior *this)
{
  v1 = this - 864;
  result = (*(*(this - 108) + 336))(this - 864);
  if (result)
  {
    return (*(*v1 + 336))(v1) + 1784;
  }

  return result;
}

uint64_t OZLinkBehavior::OZLinkBehavior_applyModeChanImpl::getInstance(OZLinkBehavior::OZLinkBehavior_applyModeChanImpl *this)
{
  if (atomic_load_explicit(&OZLinkBehavior::OZLinkBehavior_applyModeChanImpl::getInstance(void)::OZLinkBehavior_applyModeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLinkBehavior::OZLinkBehavior_applyModeChanImpl::getInstance(void)::OZLinkBehavior_applyModeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_applyModeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLinkBehavior::OZLinkBehavior_applyModeChanImpl::_OZLinkBehavior_applyModeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_applyModeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLinkBehavior::OZLinkBehavior_applyModeChanImpl::_OZLinkBehavior_applyModeChan)
  {
    operator new();
  }
}

uint64_t OZLinkBehavior::OZLinkBehavior_scaleChanImpl::getInstance(OZLinkBehavior::OZLinkBehavior_scaleChanImpl *this)
{
  if (atomic_load_explicit(&OZLinkBehavior::OZLinkBehavior_scaleChanImpl::getInstance(void)::OZLinkBehavior_scaleChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLinkBehavior::OZLinkBehavior_scaleChanImpl::getInstance(void)::OZLinkBehavior_scaleChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_scaleChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLinkBehavior::OZLinkBehavior_scaleChanImpl::_OZLinkBehavior_scaleChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_scaleChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLinkBehavior::OZLinkBehavior_scaleChanImpl::_OZLinkBehavior_scaleChan)
  {
    operator new();
  }
}

uint64_t OZLinkBehavior::OZLinkBehavior_scaleChanInfo::getInstance(OZLinkBehavior::OZLinkBehavior_scaleChanInfo *this)
{
  if (atomic_load_explicit(&OZLinkBehavior::OZLinkBehavior_scaleChanInfo::getInstance(void)::OZLinkBehavior_scaleChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLinkBehavior::OZLinkBehavior_scaleChanInfo::getInstance(void)::OZLinkBehavior_scaleChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_scaleChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLinkBehavior::OZLinkBehavior_scaleChanInfo::_OZLinkBehavior_scaleChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_scaleChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLinkBehavior::OZLinkBehavior_scaleChanInfo::_OZLinkBehavior_scaleChanInfo)
  {
    operator new();
  }
}

OZLinkBehavior::OZLinkBehavior_scaleChanInfo *OZLinkBehavior::OZLinkBehavior_scaleChanInfo::OZLinkBehavior_scaleChanInfo(OZLinkBehavior::OZLinkBehavior_scaleChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 0.5, 0.1, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872AC018;
  *(this + 10) = &unk_2872AC038;
  return this;
}

uint64_t OZLinkBehavior::OZLinkBehavior_mixModeChanImpl::getInstance(OZLinkBehavior::OZLinkBehavior_mixModeChanImpl *this)
{
  if (atomic_load_explicit(&OZLinkBehavior::OZLinkBehavior_mixModeChanImpl::getInstance(void)::OZLinkBehavior_mixModeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLinkBehavior::OZLinkBehavior_mixModeChanImpl::getInstance(void)::OZLinkBehavior_mixModeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_mixModeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLinkBehavior::OZLinkBehavior_mixModeChanImpl::_OZLinkBehavior_mixModeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_mixModeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLinkBehavior::OZLinkBehavior_mixModeChanImpl::_OZLinkBehavior_mixModeChan)
  {
    operator new();
  }
}

uint64_t OZLinkBehavior::OZLinkBehavior_easeRangeChanImpl::getInstance(OZLinkBehavior::OZLinkBehavior_easeRangeChanImpl *this)
{
  if (atomic_load_explicit(&OZLinkBehavior::OZLinkBehavior_easeRangeChanImpl::getInstance(void)::OZLinkBehavior_easeRangeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLinkBehavior::OZLinkBehavior_easeRangeChanImpl::getInstance(void)::OZLinkBehavior_easeRangeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_easeRangeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLinkBehavior::OZLinkBehavior_easeRangeChanImpl::_OZLinkBehavior_easeRangeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_easeRangeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLinkBehavior::OZLinkBehavior_easeRangeChanImpl::_OZLinkBehavior_easeRangeChan)
  {
    operator new();
  }
}

uint64_t OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo::getInstance(OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo *this)
{
  if (atomic_load_explicit(&OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo::getInstance(void)::OZLinkBehavior_easeRangeChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo::getInstance(void)::OZLinkBehavior_easeRangeChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo::_OZLinkBehavior_easeRangeChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo::_OZLinkBehavior_easeRangeChanInfo)
  {
    operator new();
  }
}

OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo *OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo::OZLinkBehavior_easeRangeChanInfo(OZLinkBehavior::OZLinkBehavior_easeRangeChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 10.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872AC180;
  *(this + 10) = &unk_2872AC1A0;
  return this;
}

uint64_t OZLinkBehavior::OZLinkBehavior_customMixChanImpl::getInstance(OZLinkBehavior::OZLinkBehavior_customMixChanImpl *this)
{
  if (atomic_load_explicit(&OZLinkBehavior::OZLinkBehavior_customMixChanImpl::getInstance(void)::OZLinkBehavior_customMixChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLinkBehavior::OZLinkBehavior_customMixChanImpl::getInstance(void)::OZLinkBehavior_customMixChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_customMixChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLinkBehavior::OZLinkBehavior_customMixChanImpl::_OZLinkBehavior_customMixChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_customMixChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLinkBehavior::OZLinkBehavior_customMixChanImpl::_OZLinkBehavior_customMixChan)
  {
    operator new();
  }
}

uint64_t OZLinkBehavior::OZLinkBehavior_customMixChanInfo::getInstance(OZLinkBehavior::OZLinkBehavior_customMixChanInfo *this)
{
  if (atomic_load_explicit(&OZLinkBehavior::OZLinkBehavior_customMixChanInfo::getInstance(void)::OZLinkBehavior_customMixChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLinkBehavior::OZLinkBehavior_customMixChanInfo::getInstance(void)::OZLinkBehavior_customMixChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_customMixChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLinkBehavior::OZLinkBehavior_customMixChanInfo::_OZLinkBehavior_customMixChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_customMixChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLinkBehavior::OZLinkBehavior_customMixChanInfo::_OZLinkBehavior_customMixChanInfo)
  {
    operator new();
  }
}

OZLinkBehavior::OZLinkBehavior_customMixChanInfo *OZLinkBehavior::OZLinkBehavior_customMixChanInfo::OZLinkBehavior_customMixChanInfo(OZLinkBehavior::OZLinkBehavior_customMixChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 0.1, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872AC270;
  *(this + 10) = &unk_2872AC290;
  return this;
}

uint64_t OZLinkBehavior::OZLinkBehavior_applyLinkWhenChanImpl::getInstance(OZLinkBehavior::OZLinkBehavior_applyLinkWhenChanImpl *this)
{
  if (atomic_load_explicit(&OZLinkBehavior::OZLinkBehavior_applyLinkWhenChanImpl::getInstance(void)::OZLinkBehavior_applyLinkWhenChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLinkBehavior::OZLinkBehavior_applyLinkWhenChanImpl::getInstance(void)::OZLinkBehavior_applyLinkWhenChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_applyLinkWhenChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLinkBehavior::OZLinkBehavior_applyLinkWhenChanImpl::_OZLinkBehavior_applyLinkWhenChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior::OZLinkBehavior_applyLinkWhenChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLinkBehavior::OZLinkBehavior_applyLinkWhenChanImpl::_OZLinkBehavior_applyLinkWhenChan)
  {
    operator new();
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,OZLinkChannelExpression *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZLinkChannelExpression *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZLinkChannelExpression *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,OZLinkChannelExpression *>>(uint64_t a1, unsigned int *a2)
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

void *std::__tree<std::__value_type<OZLinkChannelExpression *,OZChannelBase *>,std::__map_value_compare<OZLinkChannelExpression *,std::__value_type<OZLinkChannelExpression *,OZChannelBase *>,std::less<OZLinkChannelExpression *>,true>,std::allocator<std::__value_type<OZLinkChannelExpression *,OZChannelBase *>>>::__equal_range_multi<OZLinkChannelExpression *>(uint64_t a1, unint64_t *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = v3[4];
    if (v4 >= v5)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (v5 < v4)
  {
    ++v3;
    goto LABEL_7;
  }

  v7 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v8 = v7[4];
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        result = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
  }

    ;
  }

  return result;
}

void OZCollisionBehavior::OZCollisionBehavior(OZCollisionBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v4 = &unk_2872AC360;
  v4[2] = &unk_2872AC658;
  v4[6] = &unk_2872AC8B0;
  v4[42] = &unk_2872AC908;
}

void OZCollisionBehavior::OZCollisionBehavior(OZCollisionBehavior *this, OZCollisionBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v3 = &unk_2872AC360;
  v3[2] = &unk_2872AC658;
  v3[6] = &unk_2872AC8B0;
  v3[42] = &unk_2872AC908;
}

void non-virtual thunk toOZCollisionBehavior::~OZCollisionBehavior(OZCollisionBehavior *this)
{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 16));
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 48));
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 336));
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void OZCollisionBehavior::~OZCollisionBehavior(OZCollisionBehavior *this)
{
  OZReflexiveBehavior::~OZReflexiveBehavior(this);

  JUMPOUT(0x2666E9F00);
}

__n128 OZCollisionBehavior::handleCollisions(OZCollisionBehavior *this, OZTransformNode *a2, OZSimStateArray *a3, OZSimStateArray *a4, unsigned int a5, BOOL *a6)
{
  if (*a4 != *(a4 + 1))
  {
    v10 = *a3 + 32;
    v11 = *a4 + 32;
    do
    {
      v12 = (v11 - 32);
      v53 = 0x3FF0000000000000;
      v55 = 0;
      v54 = 0uLL;
      v40 = 0x3FF0000000000000;
      v50 = 0;
      v49 = 0uLL;
      v41 = 0u;
      memset(v42, 0, sizeof(v42));
      v43 = 0u;
      memset(v44, 0, sizeof(v44));
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      v13 = *(v11 - 32);
      v52 = *(v11 - 16);
      v51 = v13;
      if ((v11 - 32) != &v51)
      {
        v53 = *(v11 - 8);
        v14 = *v11;
        v55 = *(v11 + 16);
        v54 = v14;
      }

      v15 = *(v11 + 24);
      v57 = *(v11 + 40);
      v56 = v15;
      v16 = *(v11 + 48);
      v59 = *(v11 + 64);
      v58 = v16;
      v17 = *(v11 + 72);
      v61 = *(v11 + 88);
      v60 = v17;
      v18 = *(v11 + 96);
      v63 = *(v11 + 112);
      v62 = v18;
      v19 = *(v11 + 120);
      v65 = *(v11 + 136);
      v64 = v19;
      v66 = *(a4 + 24);
      v67 = *(a4 + 5);
      v20 = *(v11 + 160);
      v68 = *(v11 + 144);
      v69 = v20;
      v21 = *(v10 - 16);
      v38 = *(v10 - 32);
      v39 = v21;
      if ((v10 - 32) != &v38)
      {
        v40 = *(v10 - 8);
        v22 = *v10;
        v42[0] = *(v10 + 16);
        v41 = v22;
      }

      v23 = *(v10 + 24);
      v42[3] = *(v10 + 40);
      *&v42[1] = v23;
      v24 = *(v10 + 48);
      v44[0] = *(v10 + 64);
      v43 = v24;
      v25 = *(v10 + 72);
      v44[3] = *(v10 + 88);
      *&v44[1] = v25;
      v26 = *(v10 + 96);
      v46[0] = *(v10 + 112);
      v45 = v26;
      v27 = *(v10 + 120);
      v46[3] = *(v10 + 136);
      v48 = *(a3 + 5);
      *&v46[1] = v27;
      v47 = *(a3 + 24);
      v28 = *(v10 + 160);
      v49 = *(v10 + 144);
      v50 = v28;
      (*(*this + 728))(this, a2, &v38, &v51, a5, a6);
      v29 = v51;
      *(v11 - 16) = v52;
      *v12 = v29;
      if (v12 != &v51)
      {
        *(v11 - 8) = v53;
        v30 = v54;
        *(v11 + 16) = v55;
        *v11 = v30;
      }

      v31 = v56;
      *(v11 + 40) = v57;
      *(v11 + 24) = v31;
      v32 = v58;
      *(v11 + 64) = v59;
      *(v11 + 48) = v32;
      v33 = v60;
      *(v11 + 88) = v61;
      *(v11 + 72) = v33;
      v34 = v62;
      *(v11 + 112) = v63;
      *(v11 + 96) = v34;
      result = v64;
      *(v11 + 136) = v65;
      *(v11 + 120) = result;
      v10 += 248;
      v11 += 248;
    }

    while ((v12 + 248) != *(a4 + 1));
  }

  return result;
}

void OZReflexiveBehavior::OZReflexiveBehavior(OZReflexiveBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSimulationBehavior::OZSimulationBehavior(this, a2, a3, a4);
  *v5 = &unk_2872AC948;
  v5[2] = &unk_2872ACC30;
  v5[6] = &unk_2872ACE88;
  v5[42] = &unk_2872ACEE0;
  PCURL::PCURL(&v6, @"Behavior Affects Leaf Nodes");
  OZChannelBool::OZChannelBool((this + 344), 0, &v6, (this + 56), 0x12Cu, 0, 0, 0);
  PCString::~PCString(&v6);
  *(this + 497) = 0x1000000;
}

void sub_2601F0E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZSimulationBehavior::~OZSimulationBehavior(v10);
  _Unwind_Resume(a1);
}

void OZReflexiveBehavior::OZReflexiveBehavior(OZReflexiveBehavior *this, OZReflexiveBehavior *a2, char a3)
{
  OZSimulationBehavior::OZSimulationBehavior(this, a2, a3);
  *v5 = &unk_2872AC948;
  *(v5 + 16) = &unk_2872ACC30;
  *(v5 + 48) = &unk_2872ACE88;
  *(v5 + 336) = &unk_2872ACEE0;
  OZChannelBool::OZChannelBool((v5 + 344), (a2 + 344), (this + 56));
  *(this + 497) = 0;
  *(this + 498) = *(a2 + 498);
  *(this + 499) = *(a2 + 499);
}

void OZReflexiveBehavior::~OZReflexiveBehavior(OZReflexiveBehavior *this)
{
  *this = &unk_2872AC948;
  *(this + 2) = &unk_2872ACC30;
  *(this + 6) = &unk_2872ACE88;
  *(this + 42) = &unk_2872ACEE0;
  if (OZBehavior::getSceneNode(this))
  {
    v2 = (*(*this + 320))(this);
    v3 = (*(*v2 + 640))(v2);
    OZChannelObjectRoot::removeBehavior(v3, this);
  }

  if (*(this + 497) == 1)
  {
    v4 = (*(*this + 336))(this);
    OZDocument::removeCPPObserver(*(v4 + 1584));
    *(this + 497) = 0;
  }

  OZChannelBool::~OZChannelBool((this + 344));

  OZSimulationBehavior::~OZSimulationBehavior(this);
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZReflexiveBehavior::~OZReflexiveBehavior(OZReflexiveBehavior *this)
{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 16));
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 48));
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 336));
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZReflexiveBehavior::~OZReflexiveBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZReflexiveBehavior::operator=(uint64_t a1, const void *a2)
{
  OZSimulationBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  result = OZChannelBase::operator=(a1 + 344, (v4 + 344));
  *(a1 + 496) = v5[496];
  *(a1 + 498) = *(v5 + 249);
  return result;
}

void *OZReflexiveBehavior::findPreviousSimulationBehavior(OZReflexiveBehavior *this, OZSceneNode **a2)
{
  v2 = (a2 + 125);
  if (a2 + 125 == a2[126])
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = *(*v2 + 16);
    if (v6 == this)
    {
      break;
    }

    v7 = *(v6 + 1);
    v9 = xmmword_2608507D0;
    if (OZFactory::isKindOfClass(v7, &v9))
    {
      v5 = v6;
    }

    v2 = *v2;
  }

  while (v2 != a2[126]);
  if (!v5)
  {
    return 0;
  }

  else
  {
  }
}

void OZReflexiveBehavior::didAddToNode(OZReflexiveBehavior *this, OZSceneNode **a2)
{
  PreviousSimulationBehavior = OZReflexiveBehavior::findPreviousSimulationBehavior(this, a2);
  v5 = (*(*a2 + 80))(a2);
  OZChannelObjectRoot::insertBehaviorAfter(v5, this, PreviousSimulationBehavior);
}

void OZReflexiveBehavior::willRemove(OZReflexiveBehavior *this)
{
  v2 = (*(*this + 320))(this);
  v3 = (*(*v2 + 640))(v2);
  OZChannelObjectRoot::removeBehavior(v3, this);
  if (*(this + 497) == 1)
  {
    v4 = (*(*this + 336))(this);
    OZDocument::removeCPPObserver(*(v4 + 1584));
    *(this + 497) = 0;
  }
}

uint64_t OZReflexiveBehavior::didAddSceneNodeToScene(uint64_t this, OZScene *a2)
{
  if ((*(this + 497) & 1) == 0)
  {
    v2 = this;
    this = OZDocument::addCPPObserver(*(a2 + 198), this + 336, 1001);
    *(v2 + 497) = 1;
  }

  return this;
}

uint64_t OZReflexiveBehavior::willRemoveSceneNodeFromScene(uint64_t this, OZScene *a2)
{
  if (*(this + 497) == 1)
  {
    v2 = this;
    this = OZDocument::removeCPPObserver(*(a2 + 198));
    *(v2 + 497) = 0;
  }

  return this;
}

uint64_t OZReflexiveBehavior::affectsSelf(OZReflexiveBehavior *this)
{
  if (*(this + 496) == 1)
  {
    v1 = *(this + 498) ^ 1;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

OZChannelBase *OZReflexiveBehavior::hideAffectsLeafNodes(OZReflexiveBehavior *this, int a2)
{
  v2 = a2;
  v4 = (this + 344);
  if (a2)
  {
    result = OZChannelBase::setFlag(v4, 2, 0);
  }

  else
  {
    result = OZChannelBase::resetFlag(v4, 2, 0);
  }

  *(this + 499) = v2;
  return result;
}

uint64_t OZReflexiveBehavior::notify(OZReflexiveBehavior *this, char a2)
{
  result = (*(*this + 336))(this);
  if ((a2 & 8) != 0)
  {
    v5 = result;
    result = *(*(result + 1584) + 168);
    if (result)
    {
      result = OZNotificationManager::wasChannelModified(result, (this + 344));
      if (result)
      {
        v6 = *(v5 + 1504);
        if (v6)
        {
          OZChannelBase::setRangeName(v6, 1);
        }

        result = OZChannel::getValueAsInt((this + 344), MEMORY[0x277CC08F0], 0.0);
        *(this + 498) = result != 0;
      }
    }
  }

  return result;
}

uint64_t OZReflexiveBehavior::parseEnd(OZReflexiveBehavior *this, PCSerializerReadStream *a2)
{
  *(this + 500) = 0;
  *(this + 498) = OZChannel::getValueAsInt((this + 344), MEMORY[0x277CC08F0], 0.0) != 0;

  return OZBehavior::parseEnd(this, a2);
}

uint64_t non-virtual thunk toOZReflexiveBehavior::parseEnd(OZReflexiveBehavior *this, PCSerializerReadStream *a2)
{
  v3 = (this - 48);
  *(this + 452) = 0;
  *(this + 450) = OZChannel::getValueAsInt((this + 296), MEMORY[0x277CC08F0], 0.0) != 0;

  return OZBehavior::parseEnd(v3, a2);
}

uint64_t OZMetalTextureCache::instance(OZMetalTextureCache *this)
{
  if (OZMetalTextureCache::instance(void)::once != -1)
  {
    OZMetalTextureCache::instance();
  }

  return _instance;
}

void OZMetalTextureCache::OZMetalTextureCache(OZMetalTextureCache *this)
{
  PCSingleton::PCSingleton(this, 100);
  *v1 = &unk_2872ACF60;
  *(v1 + 2) = 0;
  *(v1 + 1) = v1 + 16;
  *(v1 + 3) = 0;
  GPUComputeDeviceList = HGComputeDeviceManager::GetGPUComputeDeviceList(v1);
  if (*GPUComputeDeviceList != GPUComputeDeviceList[1])
  {
    operator new();
  }
}

void sub_2601F1BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PCSingleton *a10)
{
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(v10, *(a10 + 2));
  PCSingleton::~PCSingleton(a10);
  _Unwind_Resume(a1);
}

unint64_t OZMetalTextureCache::getCache@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [a2 registryID];
  v8 = *(a1 + 16);
  v7 = (a1 + 16);
  v6 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  do
  {
    v10 = v6[4];
    v11 = v10 >= result;
    v12 = v10 < result;
    if (v11)
    {
      v9 = v6;
    }

    v6 = v6[v12];
  }

  while (v6);
  if (v9 == v7 || result < v9[4])
  {
LABEL_9:
    v9 = v7;
  }

  v14 = v9[5];
  v13 = v9[6];
  *a3 = v14;
  a3[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t OZMetalTextureCache::add(OZMetalTextureCache *a1, uint64_t *a2, void *a3, PCHash128 *a4)
{
  v14 = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v8 = 0x3FF0000000000000;
  v5 = 0x3FF0000000000000;
  v6 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v13 = 0u;
  OZMetalTextureCache::add(a1, a2, &v5, a3, a4);
  return 1;
}

uint64_t OZMetalTextureCache::add(OZMetalTextureCache *this, uint64_t *a2, __int128 *a3, void *a4, PCHash128 *a5)
{
  v7 = *a2;
  if (*a2)
  {
    v18 = *a2;
    (*(*v7 + 16))(v7);
    v11 = a3[5];
    v23 = a3[4];
    v24 = v11;
    v12 = a3[7];
    v25 = a3[6];
    v26 = v12;
    v13 = a3[1];
    v19 = *a3;
    v20 = v13;
    v14 = a3[3];
    v21 = a3[2];
    v22 = v14;
    OZMetalTextureCache::getCache(this, a4, &v16);
    PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::addValue(*v16, a5, &v18, *(*a2 + 72));
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v18)
    {
      (*(*v18 + 24))(v18);
    }
  }

  else
  {
    OZMetalTextureCache::remove(this, a5);
  }

  return 1;
}

void sub_2601F1DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(va);
  _Unwind_Resume(a1);
}

void OZMetalTextureCache::remove(OZMetalTextureCache *this, const PCHash128 *a2)
{
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != this + 16)
  {
    do
    {
      PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::removeKey(**(v2 + 5), a2);
      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void OZMetalTextureCache::find(uint64_t a1@<X0>, void *a2@<X1>, const PCHash128 *a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  OZMetalTextureCache::getCache(a1, a2, &v15);
  v8 = *v15;
  v17 = 0;
  PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::findValue(v8, a3, &v17, &v13);
  v9 = v13;
  if (v13)
  {
    if (a4 && v14 != a4)
    {
      for (i = 0; i != 128; i += 32)
      {
        v11 = &a4[i];
        v12 = *&v14[i + 16];
        *v11 = *&v14[i];
        v11[1] = v12;
      }
    }

    *a5 = v9;
    (*(*v9 + 16))(v9);
    if (v13)
    {
      (*(*v13 + 24))(v13);
    }
  }

  else
  {
    *a5 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_2601F1FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&a9);
  v11 = *(v9 - 48);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void OZMetalTextureCache::clear(OZMetalTextureCache *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  if (v1 != this + 16)
  {
    do
    {
      PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::clear(**(v1 + 5));
      v3 = *(v1 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v1 + 2);
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }
}

void OZMetalTextureCache::~OZMetalTextureCache(OZMetalTextureCache *this)
{
  *this = &unk_2872ACF60;
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(this + 8, *(this + 2));

  PCSingleton::~PCSingleton(this);
}

{
  *this = &unk_2872ACF60;
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(this + 8, *(this + 2));
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

void std::shared_ptr<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>>::shared_ptr[abi:ne200100]<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_2601F218C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::~PCCache(v2);
    MEMORY[0x2666E9F00](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t *std::__shared_ptr_pointer<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>> *,std::shared_ptr<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>>::__shared_ptr_default_delete<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>,PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>>,std::allocator<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::~PCCache(result);

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>> *,std::shared_ptr<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>>::__shared_ptr_default_delete<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>,PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>>,std::allocator<PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *PCCache<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::~PCCache(uint64_t *a1)
{
  PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::clear(*a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::~PCCacheImpl(v2);
    MEMORY[0x2666E9F00](v3, 0x1020C40F9427E96);
  }

  return a1;
}

void PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::clear(uint64_t a1)
{
  PCSpinLock::lock((a1 + 16));
  std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>>::destroy(a1 + 24, *(a1 + 32));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = 0;
  PCSpinLock::unlock((a1 + 16));
}

void std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>>::destroy(a1, a2[1]);
    PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry((a2 + 6));

    operator delete(a2);
  }
}

uint64_t PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::~PCCacheImpl(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>>::destroy(a1 + 24, *(a1 + 32));
  PCSpinLock::~PCSpinLock((a1 + 16));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::setMaxCost(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 16);
  PCSpinLock::lock((a1 + 16));
  *(a1 + 88) = a2;
  if (!*(a1 + 104))
  {
    while (*(a1 + 80) > a2 || *(a1 + 40) > *(a1 + 96))
    {
      v6 = *(a1 + 48);
      if (v6 == *(a1 + 56))
      {
        break;
      }

      v7 = *v6;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::remove((a1 + 48), &v7);
      v5 = v7;
      *(a1 + 80) -= v7[23];
      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v5);
      PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry((v5 + 6));
      operator delete(v5);
      a2 = *(a1 + 88);
    }
  }

  PCSpinLock::unlock(v4);
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::remove(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a2 + 200);
  v4 = ((a1[1] - *a1) >> 3) - 1;
  if (v3 == v4)
  {

    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v3);
  }

  else
  {
    *(*a1 + 8 * v3) = *(*a1 + 8 * v4);
    *(*(*a1 + 8 * v3) + 200) = v3;
    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v4);
    v5 = *a1 + 8 * v3;

    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::bubble(a1, v5);
  }
}

uint64_t *PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::bubble(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1] - *result;
  v4 = *(*a2 + 200);
  v5 = (2 * v4) | 1;
  if (v5 >= v3 >> 3)
  {
LABEL_24:
    if (v4)
    {
      v17 = *(v2 + 8 * v4);
      do
      {
        v18 = v4 - 1;
        v19 = (v4 - 1) >> 1;
        v20 = *(v2 + 8 * v19);
        if (*(v20 + 192) <= *(v17 + 192))
        {
          break;
        }

        *(v2 + 8 * v4) = v20;
        *(v2 + 8 * v19) = v17;
        v2 = *result;
        *(*(*result + 8 * v4) + 200) = v4;
        v17 = *(v2 + 8 * v19);
        *(v17 + 200) = v19;
        v4 = (v4 - 1) >> 1;
      }

      while (v18 > 1);
    }

    return result;
  }

  v6 = 0;
  v7 = v3 >> 3;
  v8 = 2 * v4;
  v9 = *(v2 + 8 * v4);
  while (1)
  {
    v10 = v8 + 2;
    v11 = *(v9 + 192);
    v12 = v10 < v7 && v11 > *(*(v2 + 8 * v10) + 192);
    v13 = *(*(v2 + 8 * v5) + 192);
    if (v11 <= v13 && !v12)
    {
      break;
    }

    v15 = v11 > v13 && v12;
    if (v12)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    if (v15)
    {
      if (v13 <= *(*(v2 + 8 * v10) + 192))
      {
        v16 = v5;
      }

      else
      {
        v16 = v10;
      }
    }

    *(v2 + 8 * v4) = *(v2 + 8 * v16);
    *(v2 + 8 * v16) = v9;
    v2 = *result;
    *(*(*result + 8 * v4) + 200) = v4;
    v9 = *(v2 + 8 * v16);
    *(v9 + 200) = v16;
    v8 = 2 * v16;
    v6 = 1;
    v5 = (2 * v16) | 1;
    v4 = v16;
    if (v5 >= v7)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    v4 = *(*a2 + 200);
    goto LABEL_24;
  }

  return result;
}

void PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::addValue(uint64_t a1, const PCHash128 *a2, uint64_t *a3, unint64_t a4)
{
  v8 = (a1 + 16);
  v55[1] = a1 + 16;
  PCSpinLock::lock((a1 + 16));
  if (*(a1 + 88) >= a4 || *(a1 + 104))
  {
    v9 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(a1 + 24, a2);
    v10 = v9;
    v55[0] = v9;
    if (a1 + 32 == v9)
    {
      v24 = *(a1 + 72) + 1;
      *(a1 + 72) = v24;
      v25 = *a3;
      v44 = v25;
      if (v25)
      {
        (*(*v25 + 16))(v25);
      }

      v49 = *(a3 + 9);
      v50 = *(a3 + 11);
      v51 = *(a3 + 13);
      v52 = *(a3 + 15);
      v45 = *(a3 + 1);
      v46 = *(a3 + 3);
      v47 = *(a3 + 5);
      v48 = *(a3 + 7);
      *&v53 = a4;
      *(&v53 + 1) = v24;
      v54 = 0;
      v30 = *a2;
      v31 = v25;
      if (v25)
      {
        (*(*v25 + 16))(v25);
      }

      v36 = v49;
      v37 = v50;
      v38 = v51;
      v39 = v52;
      v32 = v45;
      v33 = v46;
      v34 = v47;
      v35 = v48;
      v41 = v54;
      v40 = v53;
      v42 = std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>>::__emplace_unique_key_args<PCHash128,std::pair<PCHash128 const,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>(a1 + 24, &v30);
      v43 = v26;
      PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&v31);
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::add(a1 + 48, &v42);
      v27 = *(a1 + 80) + a4;
      *(a1 + 80) = v27;
      if (!*(a1 + 104))
      {
        while (v27 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
        {
          v29 = *(a1 + 48);
          if (v29 == *(a1 + 56))
          {
            break;
          }

          *&v30 = *v29;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::remove((a1 + 48), &v30);
          v28 = v30;
          *(a1 + 80) -= *(v30 + 184);
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v28);
          PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry((v28 + 6));
          operator delete(v28);
          v27 = *(a1 + 80);
        }
      }

      PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&v44);
    }

    else
    {
      v12 = (v9 + 48);
      v11 = *(v9 + 48);
      v13 = *a3;
      if (v11 != *a3)
      {
        if (v11)
        {
          (*(*v11 + 24))(*(v10 + 48));
          v13 = *a3;
        }

        *v12 = v13;
        if (v13)
        {
          (*(*v13 + 16))(v13);
        }
      }

      if (v12 != a3)
      {
        v14 = 0;
        v15 = v10 + 56;
        v16 = a3 + 1;
        do
        {
          for (i = 0; i != 4; ++i)
          {
            *(v15 + i * 8) = v16[i];
          }

          ++v14;
          v15 += 32;
          v16 += 4;
        }

        while (v14 != 4);
      }

      v18 = *(a1 + 72) + 1;
      *(a1 + 72) = v18;
      *(v10 + 192) = v18;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::bubble((a1 + 48), v55);
      v19 = v55[0];
      v20 = a4 - *(v55[0] + 184);
      if (v20)
      {
        v21 = v20 + *(a1 + 80);
        *(a1 + 80) = v21;
        *(v19 + 184) = a4;
        if (!*(a1 + 104))
        {
          while (v21 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
          {
            v23 = *(a1 + 48);
            if (v23 == *(a1 + 56))
            {
              break;
            }

            *&v30 = *v23;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::remove((a1 + 48), &v30);
            v22 = v30;
            *(a1 + 80) -= *(v30 + 184);
            std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v22);
            PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry((v22 + 6));
            operator delete(v22);
            v21 = *(a1 + 80);
          }
        }
      }
    }
  }

  PCSpinLock::unlock(v8);
}

void sub_2601F2A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&a33);
  PCLockSentry<PCSpinLock>::~PCLockSentry((v33 - 72));
  _Unwind_Resume(a1);
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (v5 - *a1) >> 3;
  v7 = *a2;
  *(*a2 + 200) = v6;
  v8 = *(a1 + 16);
  if (v5 >= v8)
  {
    if ((v6 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 - v4;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v6 + 1))
    {
      v11 = v6 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v12);
    }

    *(8 * v6) = v7;
    v9 = 8 * v6 + 8;
    v13 = *(a1 + 8) - *a1;
    v14 = (8 * v6 - v13);
    memcpy(v14, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v7;
    v9 = (v5 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(*a2 + 200);
  if (v16)
  {
    v17 = *a1;
    v18 = *(*a1 + 8 * v16);
    do
    {
      v19 = v16 - 1;
      v20 = (v16 - 1) >> 1;
      v21 = v17[v20];
      if (*(v21 + 192) <= *(v18 + 192))
      {
        break;
      }

      v17[v16] = v21;
      v17[v20] = v18;
      v17 = *a1;
      *(*(*a1 + 8 * v16) + 200) = v16;
      v18 = v17[v20];
      *(v18 + 200) = v20;
      v16 = (v16 - 1) >> 1;
    }

    while (v19 > 1);
  }
}

uint64_t std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>>::__emplace_unique_key_args<PCHash128,std::pair<PCHash128 const,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__find_equal<PCHash128>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>>::__construct_node<std::pair<PCHash128 const,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>>();
  }

  return v2;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry((v2 + 48));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<PCHash128 const,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  v10 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v10;
  *(a1 + 104) = v9;
  *(a1 + 88) = v8;
  v11 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v11;
  return a1;
}

void PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::findValue(uint64_t a1@<X0>, const PCHash128 *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a1 + 16);
  v19[1] = a1 + 16;
  PCSpinLock::lock((a1 + 16));
  v9 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(a1 + 24, a2);
  v10 = v9;
  v19[0] = v9;
  if (a1 + 32 == v9)
  {
    *a3 = 0;
    *(a4 + 128) = 0x3FF0000000000000;
    *(a4 + 88) = 0x3FF0000000000000;
    *(a4 + 48) = 0x3FF0000000000000;
    *a4 = 0;
    *(a4 + 8) = 0x3FF0000000000000;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
  }

  else
  {
    v11 = *(v9 + 48);
    *a4 = v11;
    if (v11)
    {
      (*(*v11 + 16))(v11);
    }

    v12 = *(v10 + 56);
    v13 = *(v10 + 72);
    v14 = *(v10 + 88);
    *(a4 + 56) = *(v10 + 104);
    *(a4 + 40) = v14;
    *(a4 + 24) = v13;
    *(a4 + 8) = v12;
    v15 = *(v10 + 120);
    v16 = *(v10 + 136);
    v17 = *(v10 + 152);
    *(a4 + 120) = *(v10 + 168);
    *(a4 + 104) = v17;
    *(a4 + 88) = v16;
    *(a4 + 72) = v15;
    v18 = *(a1 + 72) + 1;
    *(a1 + 72) = v18;
    *(v10 + 192) = v18;
    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::bubble((a1 + 48), v19);
    *a3 = 1;
  }

  PCSpinLock::unlock(v8);
}

void sub_2601F2F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_s *a10)
{
  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(v10);
  PCLockSentry<PCSpinLock>::~PCLockSentry(&a10);
  _Unwind_Resume(a1);
}

void PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::removeKey(uint64_t a1, const PCHash128 *a2)
{
  v4 = (a1 + 16);
  v7[1] = (a1 + 16);
  PCSpinLock::lock((a1 + 16));
  v5 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(a1 + 24, a2);
  v7[0] = v5;
  if ((a1 + 32) != v5)
  {
    *(a1 + 80) -= v5[23];
    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,std::__tree_node<std::__value_type<PCHash128,PCCacheImpl<PCHash128,OZMetalTextureCache::CacheData,PCSpinLock,std::less<PCHash128>>::Data>,void *> *,long>>>::remove((a1 + 48), v7);
    v6 = v7[0];
    std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v7[0]);
    PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry((v6 + 6));
    operator delete(v6);
  }

  PCSpinLock::unlock(v4);
}

void sub_2601F3004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelAffectedNodes_Factory::getInstance(OZChannelAffectedNodes_Factory *this)
{
  if (atomic_load_explicit(&OZChannelAffectedNodes_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAffectedNodes_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAffectedNodes_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAffectedNodes_Factory::_instance;
}

void OZTransitiveBehavior::OZTransitiveBehavior(OZTransitiveBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSimulationBehavior::OZSimulationBehavior(this, a2, a3, a4);
  *v5 = &unk_2872AD010;
  v5[2] = &unk_2872AD300;
  v5[6] = &unk_2872AD558;
  v5[42] = &unk_2872AD5B0;
  PCURL::PCURL(&v7, @"Transitive Behavior Scope Enum");
  PCURL::PCURL(&v6, @"Transitive Behavior Scope");
  OZChannelEnum::OZChannelEnum((this + 344), 1u, &v7, &v6, (this + 56), 0x12Cu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Transitive Behavior Affected Nodes");
  OZChannelAffectedNodes::OZChannelAffectedNodes((this + 600), &v7, (this + 56), 0x12Du, 0, 0, 0);
  PCString::~PCString(&v7);
  *(this + 94) = this + 752;
  *(this + 95) = this + 752;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 780) = 0;
  *(this + 196) = 3;
  *(this + 788) = 1;
  OZChannelBase::resetFlag((this + 600), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 600));
  OZChannel::setKeyframable((this + 600), 0);
}

void sub_2601F325C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannelEnum::~OZChannelEnum((v12 + 344));
  OZSimulationBehavior::~OZSimulationBehavior(v12);
  _Unwind_Resume(a1);
}

void OZTransitiveBehavior::OZTransitiveBehavior(OZTransitiveBehavior *this, OZTransitiveBehavior *a2, char a3)
{
  OZSimulationBehavior::OZSimulationBehavior(this, a2, a3);
  *v5 = &unk_2872AD010;
  v5[2] = &unk_2872AD300;
  v5[6] = &unk_2872AD558;
  v5[42] = &unk_2872AD5B0;
  OZChannelEnum::OZChannelEnum((v5 + 43), (a2 + 344), (this + 56));
  OZChannel::OZChannel((this + 600), (a2 + 600), (this + 56));
  *(this + 75) = &unk_2872AD610;
  *(this + 77) = &unk_2872AD970;
  std::list<unsigned int>::list(this + 94, a2 + 752);
  *(this + 194) = 0;
  *(this + 780) = 0;
  *(this + 196) = 3;
  *(this + 788) = 1;
  OZChannel::setKeyframable((this + 600), 0);
}

void sub_2601F3414(_Unwind_Exception *a1)
{
  std::__list_imp<unsigned int>::clear(v1 + 94);
  OZChannel::~OZChannel(v2);
  OZChannelEnum::~OZChannelEnum((v1 + 43));
  OZSimulationBehavior::~OZSimulationBehavior(v1);
  _Unwind_Resume(a1);
}

void OZTransitiveBehavior::~OZTransitiveBehavior(OZTransitiveBehavior *this)
{
  *this = &unk_2872AD010;
  *(this + 2) = &unk_2872AD300;
  *(this + 6) = &unk_2872AD558;
  *(this + 42) = &unk_2872AD5B0;
  OZTransitiveBehavior::clearScope(this);
  if (*(this + 780) == 1)
  {
    v2 = (*(*this + 336))(this);
    OZDocument::removeCPPObserver(*(v2 + 1584));
    *(this + 780) = 0;
  }

  std::__list_imp<unsigned int>::clear(this + 94);
  OZChannel::~OZChannel((this + 600));
  OZChannelEnum::~OZChannelEnum((this + 344));

  OZSimulationBehavior::~OZSimulationBehavior(this);
}

{
  OZTransitiveBehavior::~OZTransitiveBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void OZTransitiveBehavior::clearScope(OZTransitiveBehavior *this)
{
  v2 = *(this + 196);
  if ((*(*this + 320))(this))
  {
    v3 = (*(*this + 320))(this);
    v4 = (*(*v3 + 272))(v3);
    if (v4)
    {
      v5 = v4;
      if (v2 == 1)
      {
        Node = OZScene::getNode(v4, *(this + 194));
        if (Node)
        {
          v10 = (*(*Node + 640))(Node);
LABEL_13:
          OZChannelObjectRoot::removeBehavior(v10, this);
LABEL_14:
          *(this + 196) = 3;
          return;
        }
      }

      else if (v2)
      {
        for (i = *(this + 95); i != (this + 752); i = *(i + 8))
        {
          v7 = OZScene::getNode(v5, *(i + 16));
          if (v7)
          {
            v8 = (*(*v7 + 640))(v7);
            OZChannelObjectRoot::removeBehavior(v8, this);
          }
        }

        goto LABEL_14;
      }

      v10 = (v5 + 920);
      goto LABEL_13;
    }
  }
}

void non-virtual thunk toOZTransitiveBehavior::~OZTransitiveBehavior(OZTransitiveBehavior *this)
{
  OZTransitiveBehavior::~OZTransitiveBehavior((this - 16));
}

{
  OZTransitiveBehavior::~OZTransitiveBehavior((this - 48));
}

{
  OZTransitiveBehavior::~OZTransitiveBehavior((this - 336));
}

{
  OZTransitiveBehavior::~OZTransitiveBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZTransitiveBehavior::~OZTransitiveBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZTransitiveBehavior::~OZTransitiveBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

char *OZTransitiveBehavior::operator=(uint64_t a1, const void *a2)
{
  OZSimulationBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZTransitiveBehavior::clearScope(a1);
  if (v5 != a1)
  {
    std::list<unsigned int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<unsigned int,void *>,std::__list_const_iterator<unsigned int,void *>>((a1 + 752), v5[95], (v5 + 94));
  }

  *(a1 + 776) = *(v5 + 194);
  *(a1 + 784) = *(v5 + 196);
  result = OZTransitiveBehavior::updateScope(a1);
  *(a1 + 788) = *(v5 + 788);
  return result;
}

char *OZTransitiveBehavior::updateScope(OZTransitiveBehavior *this)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 344), MEMORY[0x277CC08F0], 0.0);
  result = (*(*this + 320))(this);
  if (result)
  {
    v4 = (*(*this + 320))(this);
    result = (*(*v4 + 272))(v4);
    if (result)
    {
      v5 = result;
      if (ValueAsInt == 1)
      {
        v7 = (*(*this + 320))(this);
        v8 = *(v7 + 960);
        if (v8)
        {
          v6 = (*(*v8 + 640))(*(v7 + 960));
          v9 = v8[20];
        }

        else
        {
          v9 = 0;
          v6 = (v5 + 920);
        }

        *(this + 194) = v9;
LABEL_15:
        OZChannelObjectRoot::addBehavior(v6, this);
      }

      if (!ValueAsInt)
      {
        v6 = (result + 920);
        goto LABEL_15;
      }

      for (i = *(this + 95); i != (this + 752); i = *(i + 8))
      {
        result = OZScene::getNode(v5, *(i + 16));
        if (result)
        {
          v11 = (*(*result + 640))(result);
          OZChannelObjectRoot::addBehavior(v11, this);
        }
      }

      *(this + 196) = ValueAsInt;
    }
  }

  return result;
}

uint64_t OZTransitiveBehavior::didAddToNode(OZTransitiveBehavior *this, OZSceneNode *a2)
{
  OZSimulationBehavior::didAddToNode(this, a2);
  result = (*(*a2 + 272))(a2);
  if (result)
  {
    result = OZTransitiveBehavior::updateScope(this);
    if ((*(this + 780) & 1) == 0)
    {
      result = (*(*a2 + 272))(a2);
      if (result)
      {
        result = OZDocument::addCPPObserver(*(result + 1584), this + 336, 1001);
        *(this + 780) = 1;
      }
    }
  }

  return result;
}

void OZTransitiveBehavior::willRemove(OZTransitiveBehavior *this)
{
  OZTransitiveBehavior::clearScope(this);
  if (*(this + 780) == 1)
  {
    v2 = (*(*this + 336))(this);
    OZDocument::removeCPPObserver(*(v2 + 1584));
    *(this + 780) = 0;
  }

  *(this + 41) = 0;
}

uint64_t OZTransitiveBehavior::didAddSceneNodeToScene(uint64_t this, OZScene *a2)
{
  *(this + 788) = 1;
  if ((*(this + 780) & 1) == 0)
  {
    v2 = this;
    this = OZDocument::addCPPObserver(*(a2 + 198), this + 336, 1001);
    *(v2 + 780) = 1;
  }

  return this;
}

void OZTransitiveBehavior::willRemoveSceneNodeFromScene(OZTransitiveBehavior *this, OZScene *a2)
{
  OZTransitiveBehavior::clearScope(this);
  if (*(this + 780) == 1)
  {
    OZDocument::removeCPPObserver(*(a2 + 198));
    *(this + 780) = 0;
  }
}

void OZTransitiveBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a2)
  {
    v7 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CC08F0];
    do
    {
      ValueAsInt = OZChannel::getValueAsInt((v5 + 344), v4, 0.0);
      v7 = ValueAsInt == 2;
      if (ValueAsInt == 2)
      {
        break;
      }

      v3 = *(v3 + 8);
    }

    while (v3 != a2);
    v3 = *(a2 + 8);
  }

  for (i = *(a2 + 16) < 2uLL && v7; v3 != a2; v3 = *(v3 + 8))
  {
    v9 = *(v3 + 16);
    if (v9)
    {
    }

    v10 = (v9 + 600);
    if (i)
    {
      OZChannelBase::resetFlag(v10, 0x400000, 1);
    }

    else
    {
      OZChannelBase::setFlag(v10, 0x400000, 1);
    }
  }
}

unint64_t OZTransitiveBehavior::canAddToSceneNode(OZTransitiveBehavior *this, OZSceneNode *a2)
{
  v4 = *(a2 + 1);
  v6 = xmmword_260850EE0;
  if (OZFactory::isKindOfClass(v4, &v6))
  {
    return 0;
  }

  else
  {
    return OZSimulationBehavior::canAddToSceneNode(this, a2);
  }
}

uint64_t OZTransitiveBehavior::notify(OZTransitiveBehavior *this, char a2)
{
  result = (*(*this + 336))(this);
  if ((a2 & 8) != 0)
  {
    v5 = result;
    result = *(*(result + 1584) + 168);
    if (result)
    {
      result = OZNotificationManager::wasChannelModified(result, (this + 344));
      if (result)
      {
        v6 = *(v5 + 1504);
        if (v6)
        {
          OZChannelBase::setRangeName(v6, 1);
        }

        OZTransitiveBehavior::clearScope(this);
        result = OZTransitiveBehavior::updateScope(this);
      }
    }
  }

  if ((a2 & 0x10) != 0 && ((*(this + 788) & 1) != 0 || *(this + 196) == 2))
  {
    OZTransitiveBehavior::clearScope(this);
    result = OZTransitiveBehavior::updateScope(this);
    *(this + 788) = 0;
  }

  return result;
}

uint64_t OZTransitiveBehavior::dirtyAllDescendants(uint64_t this, int8x16_t *a2)
{
  if (a2)
  {
    v3 = this;
    this = (*(a2->i64[0] + 960))(a2);
    if (this)
    {
      v4 = (*(a2->i64[0] + 1024))(a2);
      this = (*(a2->i64[0] + 1032))(a2);
      if (v4 != this)
      {
        v5 = this;
        do
        {
          this = OZTransitiveBehavior::dirtyAllDescendants(v3, *(v4 + 16));
          v4 = *(v4 + 8);
        }

        while (v4 != v5);
      }
    }

    else if (vorr_s8(*a2[2].i8, *&vextq_s8(a2[2], a2[2], 8uLL)))
    {
      v6 = *(a2->i64[0] + 496);

      return v6(a2);
    }
  }

  return this;
}

int8x8_t *OZTransitiveBehavior::dirty(OZTransitiveBehavior *this)
{
  OZBehavior::dirty(this);
  ValueAsInt = OZChannel::getValueAsInt((this + 344), MEMORY[0x277CC08F0], 0.0);
  result = (*(*this + 320))(this);
  if (result)
  {
    v4 = (*(*this + 320))(this);
    result = (*(*v4 + 272))(v4);
    if (result)
    {
      if (ValueAsInt == 1)
      {
        result = (*(*this + 320))(this);
        v7 = result[120];
        if (v7)
        {

          return OZTransitiveBehavior::dirtyAllDescendants(this, v7);
        }
      }

      else
      {
        v5 = result;
        if (ValueAsInt)
        {
          v8 = this + 752;
          for (i = *(this + 95); i != v8; i = *(i + 8))
          {
            result = OZScene::getNode(v5, *(i + 16));
            if (result && *&vorr_s8(result[4], *&vextq_s8(*result[4].i8, *result[4].i8, 8uLL)))
            {
              result = (*(*result + 496))(result);
            }
          }
        }

        else
        {
          OZScene::begin(result, v12);
          OZScene::end_sel(v5, v10);
          while (v12[0] != v10[0])
          {
            if (v12[0] != v12[2])
            {
              v6 = *(v12[0] + 16);
              if (v6)
              {
                if (vorr_s8(v6[4], *&vextq_s8(*v6[4].i8, *v6[4].i8, 8uLL)))
                {
                  (*(*v6 + 496))(v6);
                }
              }
            }

            OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v12);
          }

          std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v11);
          return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v13);
        }
      }
    }
  }

  return result;
}

void sub_2601F42E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t OZTransitiveBehavior::writeBody(OZTransitiveBehavior *this, PCSerializerWriteStream *a2, BOOL a3, BOOL a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZTransitiveBehaviorScope);
  for (i = *(this + 95); i != (this + 752); i = *(i + 8))
  {
    (*(*a2 + 16))(a2, 301);
    (*(*a2 + 56))(a2, *(i + 16));
    (*(*a2 + 24))(a2);
  }

  PCSerializerWriteStream::popScope(a2);

  return OZBehavior::writeBody(this, a2, a3, a4, a5);
}

uint64_t OZTransitiveBehavior::parseBegin(OZTransitiveBehavior *this, PCSerializerReadStream *a2)
{
  OZTransitiveBehavior::clearScope(this);
  OZBehavior::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZTransitiveBehaviorScope);
  return 1;
}

uint64_t OZTransitiveBehavior::parseEnd(OZTransitiveBehavior *this, PCSerializerReadStream *a2)
{
  OZTransitiveBehavior::updateScope(this);
  OZBehavior::parseEnd(this, a2);
  return 1;
}

uint64_t non-virtual thunk toOZTransitiveBehavior::parseEnd(OZTransitiveBehavior *this, PCSerializerReadStream *a2)
{
  v3 = (this - 48);
  OZTransitiveBehavior::updateScope((this - 48));
  OZBehavior::parseEnd(v3, a2);
  return 1;
}

uint64_t OZTransitiveBehavior::parseElement(PCSerializer **this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZBehavior::parseElement(this, a2, a3);
  if (*(a3 + 2) == 301)
  {
    v6 = 0;
    PCSerializerReadStream::getAsUInt32(a2, a3, &v6);
    operator new();
  }

  return 1;
}

char *OZTransitiveBehavior::updateReferenceIDs(OZTransitiveBehavior *a1, void *a2)
{
  OZChannelObjectRoot::updateReferenceIDs(a1 + 7, a2);
  OZTransitiveBehavior::clearScope(a1);
  v4 = *(a1 + 95);
  if (v4 != (a1 + 752))
  {
    v7 = a2[1];
    v6 = a2 + 1;
    v5 = v7;
    do
    {
      if (v5)
      {
        v8 = *(v4 + 16);
        v9 = v6;
        v10 = v5;
        do
        {
          v11 = *(v10 + 28);
          v12 = v11 >= v8;
          v13 = v11 < v8;
          if (v12)
          {
            v9 = v10;
          }

          v10 = *(v10 + 8 * v13);
        }

        while (v10);
        if (v9 != v6 && v8 >= *(v9 + 7))
        {
          *(v4 + 16) = *(v9 + 8);
        }
      }

      v4 = *(v4 + 8);
    }

    while (v4 != (a1 + 752));
  }

  return OZTransitiveBehavior::updateScope(a1);
}

void OZChannelAffectedNodes_Factory::OZChannelAffectedNodes_Factory(OZChannelAffectedNodes_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260853A30;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872AD9E0;
  *(this + 16) = &unk_2872ADAB0;
}

void OZChannelAffectedNodes::OZChannelAffectedNodes(OZChannelAffectedNodes *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  *v9 = &unk_2872AD610;
  *(v9 + 2) = &unk_2872AD970;
  OZChannelAffectedNodesInfo = OZChannelAffectedNodes::createOZChannelAffectedNodesInfo(v9);
  if (a6)
  {
    v11 = *(this + 17);
  }

  else
  {
    v11 = OZChannelAffectedNodes::_OZChannelAffectedNodesInfo;
    *(this + 17) = OZChannelAffectedNodes::_OZChannelAffectedNodesInfo;
  }

  *(this + 16) = v11;
  OZChannelAffectedNodes::createOZChannelAffectedNodesImpl(OZChannelAffectedNodesInfo);
  if (a5)
  {
    v12 = *(this + 15);
  }

  else
  {
    v12 = OZChannelAffectedNodes::_OZChannelAffectedNodesImpl;
    *(this + 15) = OZChannelAffectedNodes::_OZChannelAffectedNodesImpl;
  }

  *(this + 14) = v12;
}

uint64_t OZChannelAffectedNodes::createOZChannelAffectedNodesInfo(OZChannelAffectedNodes *this)
{
  if (atomic_load_explicit(&OZChannelAffectedNodes::createOZChannelAffectedNodesInfo(void)::_OZChannelAffectedNodesInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAffectedNodes::createOZChannelAffectedNodesInfo(void)::_OZChannelAffectedNodesInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAffectedNodes::createOZChannelAffectedNodesInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAffectedNodes::_OZChannelAffectedNodesInfo;
}

uint64_t OZChannelAffectedNodes::createOZChannelAffectedNodesImpl(OZChannelAffectedNodes *this)
{
  if (atomic_load_explicit(&OZChannelAffectedNodes::createOZChannelAffectedNodesImpl(void)::_OZChannelAffectedNodesImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAffectedNodes::createOZChannelAffectedNodesImpl(void)::_OZChannelAffectedNodesImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAffectedNodes::createOZChannelAffectedNodesImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAffectedNodes::_OZChannelAffectedNodesImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAffectedNodes::createOZChannelAffectedNodesInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelAffectedNodes::_OZChannelAffectedNodesInfo)
  {
    operator new();
  }
}

void OZChannelAffectedNodesInfo::OZChannelAffectedNodesInfo(OZChannelAffectedNodesInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 4.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_2872ADB08;
  *(this + 10) = &unk_2872ADB28;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAffectedNodes::createOZChannelAffectedNodesImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelAffectedNodes::_OZChannelAffectedNodesImpl)
  {
    operator new();
  }
}

void sub_2601F4E90(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannelAffectedNodes::OZChannelAffectedNodes(OZChannelAffectedNodes *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  Instance = OZChannelAffectedNodes_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a2, a3, a4, a5, a6, a7);
  *this = &unk_2872AD610;
  *(this + 2) = &unk_2872AD970;
  OZChannelAffectedNodesInfo = OZChannelAffectedNodes::createOZChannelAffectedNodesInfo(v15);
  if (a7)
  {
    v17 = *(this + 17);
  }

  else
  {
    v17 = OZChannelAffectedNodes::_OZChannelAffectedNodesInfo;
    *(this + 17) = OZChannelAffectedNodes::_OZChannelAffectedNodesInfo;
  }

  *(this + 16) = v17;
  OZChannelAffectedNodes::createOZChannelAffectedNodesImpl(OZChannelAffectedNodesInfo);
  if (a6)
  {
    v18 = *(this + 15);
  }

  else
  {
    v18 = OZChannelAffectedNodes::_OZChannelAffectedNodesImpl;
    *(this + 15) = OZChannelAffectedNodes::_OZChannelAffectedNodesImpl;
  }

  *(this + 14) = v18;
}

void OZProcessControl::OZProcessControl(OZProcessControl *this)
{
  *this = &unk_2872ADBF8;
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  operator new();
}

void OZProcessControl::~OZProcessControl(OZProcessControl *this)
{
  *this = &unk_2872ADBF8;
  v1 = *(this + 3);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_2872ADBF8;
  v1 = *(this + 3);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x2666E9F00);
}

BOOL OZProcessControl::isAborted(OZProcessControl *this, uint64_t a2)
{
  v2 = atomic_load(this + 8);
  if (v2)
  {
    return 1;
  }

  v4 = *(this + 5);
  return v4 && v4(this, a2) != 0;
}

uint64_t OZGetCornersFromBounds3d(float a1, float a2, float a3, float a4, uint64_t result)
{
  *result = a1;
  *(result + 4) = a3;
  *(result + 8) = 0;
  *(result + 12) = a2;
  *(result + 16) = a3;
  *(result + 20) = 0;
  *(result + 24) = a2;
  *(result + 28) = a4;
  *(result + 32) = 0;
  *(result + 36) = a1;
  *(result + 40) = a4;
  *(result + 44) = 0;
  return result;
}

void OZClampBoundsToMaxTextureSize(OZChannelBase *a1, double *a2, double *a3)
{
  if (a2 && *a2 > 4096.0)
  {
    *a2 = 4096.0;
    v6 = 1;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  if (*a3 > 4096.0)
  {
    *a3 = 4096.0;
LABEL_9:
    PCURL::PCURL(&v7, @"Object is too big message");
    OZChannelBase::setRangeName(a1, &v7);
    PCString::~PCString(&v7);
    goto LABEL_10;
  }

LABEL_8:
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (a2 && *a2 == 0.0)
  {
    *a2 = 1.0;
  }

  if (a3)
  {
    if (*a3 == 0.0)
    {
      *a3 = 1.0;
    }
  }
}

double OZClampBoundsToMaxTextureSize(OZChannelBase *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = v3;
    OZClampBoundsToMaxTextureSize(a1, &v7, &v6);
    v5 = v6;
    result = v7;
    *(a2 + 16) = v7;
    *(a2 + 24) = v5;
  }

  return result;
}

void OZLiGenerator::OZLiGenerator(OZLiGenerator *this, OZImageGenerator *a2, const OZRenderParams *a3)
{
  *(this + 181) = &unk_2872DEA38;
  *(this + 182) = 0;
  *(this + 1464) = 1;
  LiImageSource::LiImageSource(this, &off_2872ADD28);
  *this = &unk_2872ADC38;
  *(this + 181) = &unk_2872ADD08;
  *(this + 2) = a2;
  OZRenderParams::OZRenderParams((this + 24), a3);
}

void sub_2601F5478(_Unwind_Exception *a1)
{
  OZChannelBase::setRangeName(v1, &off_2872ADD28);
  *(v1 + 1448) = v2;
  *(v1 + 1464) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1456));
  _Unwind_Resume(a1);
}

uint64_t OZLiGenerator::getHelium(OZLiGenerator *this, LiAgent *a2)
{
  CGColorSpace = FxColorDescription::getCGColorSpace((*(a2 + 6) + 160));
  OZRenderParams::setWorkingColorSpace((this + 24), CGColorSpace);
  OZRenderParams::setBlendingGamma(this + 24, *(*(a2 + 6) + 192));
  v5 = *(**(this + 2) + 2296);

  return v5();
}

void *OZLiGenerator::print(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    if (result)
    {
      v2 = *(*result + 2360);

      return v2();
    }
  }

  return result;
}

void OZLiGenerator::~OZLiGenerator(OZLiGenerator *this)
{
  *this = &unk_2872ADC38;
  *(this + 181) = &unk_2872ADD08;
  OZRenderParams::~OZRenderParams((this + 24));
  OZChannelBase::setRangeName(this, &off_2872ADD28);
  *(this + 181) = &unk_2872DEA38;
  *(this + 1464) = 0;
  PCWeakCount::~PCWeakCount(this + 182);
}

{
  *this = &unk_2872ADC38;
  *(this + 181) = &unk_2872ADD08;
  OZRenderParams::~OZRenderParams((this + 24));
  OZChannelBase::setRangeName(this, &off_2872ADD28);
  *(this + 181) = &unk_2872DEA38;
  *(this + 1464) = 0;
  PCWeakCount::~PCWeakCount(this + 182);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZLiGenerator::~OZLiGenerator(OZLiGenerator *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_2872ADC38;
  *(v1 + 181) = &unk_2872ADD08;
  OZRenderParams::~OZRenderParams((v1 + 24));
  OZChannelBase::setRangeName(v1, &off_2872ADD28);
  *(v1 + 181) = &unk_2872DEA38;
  v1[1464] = 0;

  PCWeakCount::~PCWeakCount(v1 + 182);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2872ADC38;
  *(v1 + 181) = &unk_2872ADD08;
  OZRenderParams::~OZRenderParams((v1 + 24));
  OZChannelBase::setRangeName(v1, &off_2872ADD28);
  *(v1 + 181) = &unk_2872DEA38;
  v1[1464] = 0;
  PCWeakCount::~PCWeakCount(v1 + 182);

  JUMPOUT(0x2666E9F00);
}

void OZImageMaskRender::makeImageSource(OZImageMaskRender *this, OZRenderParams *a2)
{
  v4 = (*(**(this + 181) + 1248))(*(this + 181));
  ValueAsInt = OZChannel::getValueAsInt((*(this + 181) + 2448), MEMORY[0x277CC08F0], 0.0);
  MaskSource = OZImageMask::getMaskSource(*(this + 181));
  v9 = 0;
  PCSharedCount::PCSharedCount(&v10);
  Render360GroupAsEquirectSentry::Render360GroupAsEquirectSentry(v8, MaskSource, a2);
  if (((ValueAsInt == 0) & v4) == 1)
  {
    operator new();
  }

  OZChannelBase::setRangeName(a2, &v7);
  operator new();
}

void sub_2601F6234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, PCSharedCount a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x2666E9F00](v67, 0x10B1C40DE3F20C5);
  PCSharedCount::~PCSharedCount(&a28);
  OZRenderGraphState::~OZRenderGraphState(&a29);
  LiGraphBuilder::~LiGraphBuilder(&a67);
  PCSharedCount::~PCSharedCount(v68 + 1);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry((v70 - 168));
  PCSharedCount::~PCSharedCount(v69 + 1);
  _Unwind_Resume(a1);
}

void OZImageNodeRender::~OZImageNodeRender(OZImageNodeRender *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[1];
  *(this + *(*this - 32)) = a2[2];
  OZRenderParams::~OZRenderParams((this + 16));
}

void OZImageMaskRender::OZImageMaskRender(uint64_t a1, const OZRenderParams *a2, const OZRenderParams *a3, int a4)
{
  *(a1 + 1560) = &unk_2872DEA38;
  *(a1 + 1568) = 0;
  *(a1 + 1576) = 1;
  LiImageSource::LiImageSource((a1 + 1544), &off_2872AE0E8);
  OZImageNodeRender::OZImageNodeRender(a1, &off_2872AE0C0, a2, a3);
  *a1 = &unk_2872ADEE0;
  *(a1 + 1544) = &unk_2872ADFD8;
  *(a1 + 1560) = &unk_2872AE0A0;
  *(a1 + 1440) = 0;
  *(a1 + 1456) = 0;
  PCSharedCount::PCSharedCount((a1 + 1464));
  *(a1 + 1472) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 1488) = _Q0;
  *(a1 + 1508) = a4;
  *(a1 + 1512) = 0;
  PCSharedCount::PCSharedCount((a1 + 1520));
  *(a1 + 1528) = 0;
  PCSharedCount::PCSharedCount((a1 + 1536));
  *(a1 + 1472) = vdupq_n_s64(0xC12E848000000000);
  *(a1 + 1488) = vdupq_n_s64(0x413E848000000000uLL);
  if (a2)
  {
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 1448) = v13;
  OZRenderParams::OZRenderParams(&v22, a3);
  v14 = *(a1 + 1448);
  v19[0] = *a3;
  OZImageMask::getMaskSourceTime(v14, v19, &v17);
  v22 = v17;
  v25 = 0;
  v23 = v18;
  v24 = 0;
  MaskSource = OZImageMask::getMaskSource(*(a1 + 1448));
  v16 = *(*(a1 + 1448) + 960);
  if (v16)
  {
  }

  if (MaskSource != v16)
  {
    OZImageMaskRender::makeImageSource(a1, &v22);
  }

  Render360GroupAsEquirectSentry::Render360GroupAsEquirectSentry(v21, MaskSource, &v22);
  if (MaskSource)
  {
  }

  OZChannelBase::setRangeName(a3, &v20);
  operator new();
}

void sub_2601F6928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, PCSharedCount a49)
{
  PCSharedCount::~PCSharedCount((v53 - 72));
  PCSharedCount::~PCSharedCount(v52 + 1);
  OZRenderGraphState::~OZRenderGraphState(&a11);
  LiGraphBuilder::~LiGraphBuilder(&a49);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(&STACK[0x228]);
  OZRenderParams::~OZRenderParams(&STACK[0x270]);
  PCSharedCount::~PCSharedCount((v49 + 1536));
  PCSharedCount::~PCSharedCount((v49 + 1520));
  PCSharedCount::~PCSharedCount((v49 + 1464));
  OZImageNodeRender::~OZImageNodeRender(v49, &off_2872AE0C0);
  OZChannelBase::setRangeName(v51, &off_2872AE0E8);
  *(v49 + 1560) = v50;
  *(v49 + 1576) = 0;
  PCWeakCount::~PCWeakCount((v49 + 1568));
  _Unwind_Resume(a1);
}

void *OZImageMaskRender::calculateBackProjection(uint64_t a1, const LiCamera *a2, const OZRenderState *a3, uint64_t a4)
{
  result = *(*(a1 + 1448) + 960);
  if (result)
  {
    if (result)
    {
      v8 = result;
      OZRenderState::OZRenderState(&v21, a3);
      OZRenderState::setEyeMatrix(&v21, a2);
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
      (*(*v8 + 1256))(v8, &v11, &v21);
      (*(*a2 + 48))(v9, a2);
      PCMatrix44Tmpl<double>::operator*(v9, &v11, v10);
      return PCMatrix44Tmpl<double>::planarInverseZ(a4, v10, 0.0);
    }
  }

  return result;
}

void OZImageMaskRender::calcStretch(OZImageMaskRender *this@<X0>, LiAgent *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  if ((*(**(this + 181) + 1256))())
  {
    v22 = 0.0;
    v23 = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    v24 = _Q0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = _Q0;
    v11 = *(this + 180);
    if (v11)
    {
      v12 = *(v11 + 16);
    }

    else
    {
      v12 = *(this + 182);
      if (!v12)
      {
        throw_PCNullPointerException(1);
      }
    }

    if (((*(*v12 + 24))(v12, a2, &v22) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v18, "OZImageMaskRender::getHelium: couldn't get input boundary");
      PCException::PCException(exception, &v18);
    }

    if (((**this)(this, a2, &v19) & 1) == 0)
    {
      v17 = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v18, "OZImageMaskRender::getHelium: couldn't get mask boundary");
      PCException::PCException(v17, &v18);
    }

    v14 = *&v24 / *&v21;
    v13.f64[0] = *&v24 * 0.5 + v22 - (*&v21 * 0.5 + v19);
    v15 = *(&v24 + 1) / *(&v21 + 1);
    PCMatrix44Tmpl<double>::leftTranslate(a3, v13, *(&v24 + 1) * 0.5 + v23 - (*(&v21 + 1) * 0.5 + v20), 0.0);
    PCMatrix44Tmpl<double>::leftScale(a3, v14, v15, 1.0);
  }
}

uint64_t OZImageMaskRender::getClampNode@<X0>(OZImageMaskRender *this@<X0>, LiAgent *a2@<X1>, void *a3@<X8>)
{
  OZImageMaskRender::calcStretch(this, a2, v20);
  MaskSource = OZImageMask::getMaskSource(*(this + 181));
  v7 = MaskSource;
  if (MaskSource)
  {
    v8 = (*(*MaskSource + 40))(MaskSource);
  }

  else
  {
    v8 = 1.0;
  }

  v9 = *(*(this + 181) + 960);
  if (v9)
  {
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (v11)
  {
    v12 = v11[1];
    *&v19.value = xmmword_260347A50;
    if (OZFactory::isKindOfClass(v12, &v19))
    {
      (*(**(this + 181) + 1256))(*(this + 181));
    }
  }

  if (v10)
  {
    v13 = v8 / (*(*v10 + 1328))(v10);
    if (v13 != 1.0)
    {
      v20[0] = v13 * v20[0];
      v21 = v13 * v21;
      v22 = v13 * v22;
      v23 = v13 * v23;
    }
  }

LABEL_14:
  v14 = *(this + 181);
  v19 = *(this + 16);
  OZChannel::getValueAsDouble((v14 + 1880), &v19, 0.0);
  v16 = v15;
  OZChannel::getValueAsDouble((v14 + 2032), &v19, 0.0);
  PCMatrix44Tmpl<double>::rightTranslate(v20, v16, v17, 0.0);
  LiAgent::loadTransform(a2, v20);
  return LiAgent::getHelium(a2, *(this + 182), a3);
}

uint64_t OZImageMaskRender::getStencilClampNode@<X0>(OZImageMaskRender *this@<X0>, LiAgent *a2@<X1>, void *a3@<X8>)
{
  v30 = 0x3FF0000000000000;
  v27 = 0x3FF0000000000000;
  v24 = 0x3FF0000000000000;
  v21 = 0x3FF0000000000000;
  v22 = 0u;
  v23 = 0u;
  v25 = 0u;
  v26 = 0u;
  v28 = 0u;
  v29 = 0u;
  MaskSource = OZImageMask::getMaskSource(*(this + 181));
  v7 = *(*(this + 181) + 960);
  if (v7)
  {
    if (!MaskSource)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    if (!MaskSource)
    {
      goto LABEL_17;
    }
  }

  if (v9)
  {
    v10 = v9;
    v11 = v9[1];
    *&v20.value = xmmword_260347A50;
    if (OZFactory::isKindOfClass(v11, &v20))
    {
      if ((*(*v10 + 1632))(v10))
      {
        v12 = 0;
        if (v8)
        {
LABEL_9:
          (*(*v8 + 1328))(v8);
          goto LABEL_12;
        }
      }

      else
      {
        v12 = (*(*v10 + 1664))(v10);
        if (v8)
        {
          goto LABEL_9;
        }
      }

      v13 = *(this + 7);
LABEL_12:
      if (v13 == 1.0)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12;
      }

      if (v14 == 1)
      {
        v21 = *&v13;
        *(&v23 + 1) = v13 * 0.0;
        *&v26 = v13 * 0.0;
        *(&v28 + 1) = v13 * 0.0;
      }
    }
  }

LABEL_17:
  v15 = *(this + 181);
  v20 = *(this + 16);
  OZChannel::getValueAsDouble((v15 + 1880), &v20, 0.0);
  v17 = v16;
  OZChannel::getValueAsDouble((v15 + 2032), &v20, 0.0);
  PCMatrix44Tmpl<double>::rightTranslate(&v21, v17, v18, 0.0);
  LiAgent::loadTransform(a2, &v21);
  if (*(this + 189) && v8)
  {
    operator new();
  }

  return LiAgent::getHelium(a2, *(this + 182), a3);
}

double OZImageMaskRender::getStencilWrapPixelXForm@<D0>(OZImageMaskRender *this@<X0>, LiAgent *a2@<X1>, _OWORD *a3@<X8>)
{
  MaskSource = OZImageMask::getMaskSource(*(this + 181));
  v7 = *(a2 + 20);
  v8 = v7[3];
  v10 = *v7;
  v9 = v7[1];
  a3[2] = v7[2];
  a3[3] = v8;
  *a3 = v10;
  a3[1] = v9;
  v11 = v7[7];
  v13 = v7[4];
  v12 = v7[5];
  a3[6] = v7[6];
  a3[7] = v11;
  a3[4] = v13;
  a3[5] = v12;
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
  v45 = 0x3FF0000000000000;
  v42 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v36 = 0x3FF0000000000000;
  v37 = 0u;
  v38 = 0u;
  v40 = 0u;
  v41 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = 0x3FF0000000000000;
  v32 = 0x3FF0000000000000;
  v29 = 0x3FF0000000000000;
  v26 = 0x3FF0000000000000;
  v27 = 0u;
  v28 = 0u;
  v30 = 0u;
  v31 = 0u;
  v33 = 0u;
  v34 = 0u;
  if (MaskSource)
  {
    if (v14)
    {
      v15 = v14;
      OZRenderState::OZRenderState(&v25, (this + 16));
      v16 = *(this + 162);
      v25.var6 = 1;
      (*(*v16 + 16))(v24, v16);
      for (i = 0; i != 16; i += 4)
      {
        v18 = &v25 + i * 8;
        v19 = *&v24[i + 2];
        *(v18 + 72) = *&v24[i];
        *(v18 + 88) = v19;
      }

      if (!(*(*v16 + 632))(v16))
      {
        v20 = (*(*v16 + 320))(v16);
        if (v20 != 0.0)
        {
          v25.var7.var0[0][3] = v25.var7.var0[0][3] - v20 * v25.var7.var0[0][2];
          v25.var7.var0[1][3] = v25.var7.var0[1][3] - v20 * v25.var7.var0[1][2];
          v25.var7.var0[2][3] = v25.var7.var0[2][3] - v20 * v25.var7.var0[2][2];
          v25.var7.var0[3][3] = v25.var7.var0[3][3] - v20 * v25.var7.var0[3][2];
        }
      }

      v21 = (*(*v16 + 488))(v16);
      if (v21 != 1.0)
      {
        *&v25.var7.var0[0][0] = vmulq_n_f64(*&v25.var7.var0[0][0], v21);
        *&v25.var7.var0[1][0] = vmulq_n_f64(*&v25.var7.var0[1][0], v21);
        *&v25.var7.var0[2][0] = vmulq_n_f64(*&v25.var7.var0[2][0], v21);
        *&v25.var7.var0[3][0] = vmulq_n_f64(*&v25.var7.var0[3][0], v21);
        v25.var7.var0[0][2] = v21 * v25.var7.var0[0][2];
        v25.var7.var0[1][2] = v21 * v25.var7.var0[1][2];
        v25.var7.var0[2][2] = v21 * v25.var7.var0[2][2];
        v25.var7.var0[3][2] = v21 * v25.var7.var0[3][2];
      }

      (*(*v15 + 1256))(v15, &v36, &v25);
    }
  }

  v22 = PCMatrix44Tmpl<double>::leftMult(&v46, &v36);
  (*(**(*(this + 180) + 96) + 1264))(*(*(this + 180) + 96), &v26, this + 16, v22);
  PCMatrix44Tmpl<double>::leftMult(&v46, &v26);
  return PCMatrix44Tmpl<double>::rightMult(a3, &v46);
}

void OZImageMaskRender::getWrapNode(OZImageMaskRender *this@<X0>, double **a2@<X1>, void *a3@<X8>)
{
  ValueAsInt = OZChannel::getValueAsInt((*(this + 181) + 2448), MEMORY[0x277CC08F0], 0.0);
  v7 = (*(**(this + 181) + 1248))();
  v58 = 0x3FF0000000000000;
  v55 = 0x3FF0000000000000;
  v52 = 0x3FF0000000000000;
  v49 = 1.0;
  v50 = 0u;
  v51 = 0u;
  v53 = 0u;
  v54 = 0u;
  v56 = 0u;
  v57 = 0u;
  v48 = 0x3FF0000000000000;
  v45 = 0x3FF0000000000000;
  v42 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v40 = 0u;
  v41 = 0u;
  v43 = 0u;
  v44 = 0u;
  v46 = 0u;
  v47 = 0u;
  if (v7)
  {
    OZImageMaskRender::getStencilWrapPixelXForm(this, a2, &v28);
    for (i = 0; i != 128; i += 32)
    {
      v9 = (&v49 + i);
      v10 = *(&v28.epoch + i);
      *v9 = *(&v28.value + i);
      v9[1] = v10;
    }
  }

  else
  {
    v11 = a2[20];
    if (v11 != &v49)
    {
      v12 = 0;
      v13 = &v49;
      do
      {
        for (j = 0; j != 4; ++j)
        {
          v13[j] = v11[j];
        }

        ++v12;
        v13 += 4;
        v11 += 4;
      }

      while (v12 != 4);
    }

    MaskSource = OZImageMask::getMaskSource(*(this + 181));
    v16 = 1.0;
    v17 = 1.0;
    if (MaskSource)
    {
      v17 = (*(*MaskSource + 40))(MaskSource);
    }

    v18 = *(*(this + 181) + 960);
    if (v18)
    {
      if (v19)
      {
        v16 = (*(*v19 + 1328))(v19);
      }
    }

    if (v16 != 1.0 || v17 != 1.0)
    {
      v20 = v17 / v16;
      if (v17 / v16 != 1.0)
      {
        v49 = v20 * v49;
        *(&v51 + 1) = v20 * *(&v51 + 1);
        *&v54 = v20 * *&v54;
        *(&v56 + 1) = v20 * *(&v56 + 1);
      }
    }
  }

  v21 = *(this + 181);
  v28 = *(this + 16);
  OZChannel::getValueAsDouble((v21 + 1880), &v28, 0.0);
  v23 = v22;
  OZChannel::getValueAsDouble((v21 + 2032), &v28, 0.0);
  PCMatrix44Tmpl<double>::rightTranslate(&v49, v23, v24, 0.0);
  PCMatrix44Tmpl<double>::planarInverseZ(&v39, &v49, 0.0);
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
  LiAgent::LiAgent(&v28, a2);
  LiAgent::setPixelTransform(&v28, &v29);
  LiAgent::setImageSpace(&v28, 1);
  LiRenderingTechnology::setEnableMetalRendering(&v28, 1);
  LiAgent::getHelium(&v28, *(this + 182), a3);
  if (*a3)
  {
    LiAgent::getBoundary(&v28, &v27);
    if (ValueAsInt == 2)
    {
      v26 = HGObject::operator new(0x2C0uLL);
      HWrapMirror::HWrapMirror(v26);
    }

    if (ValueAsInt == 1)
    {
      v25 = HGObject::operator new(0x2C0uLL);
      HWrapRepeat::HWrapRepeat(v25);
    }

    (*(MEMORY[0] + 120))(0, 0, *a3);
    if (*a3)
    {
      (*(**a3 + 24))(*a3);
      *a3 = 0;
      (*(MEMORY[0] + 16))(0);
    }

    (*(MEMORY[0] + 24))(0);
  }

  LiAgent::~LiAgent(&v28);
}

void sub_2601F7EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  HGObject::operator delete(v14);
  if (*v13)
  {
    (*(**v13 + 24))(*v13);
  }

  LiAgent::~LiAgent(&a13);
  _Unwind_Resume(a1);
}

void OZImageMaskRender::getHelium(OZImageMaskRender *this@<X0>, double **a2@<X1>, void *a3@<X8>)
{
  if (*(this + 1504))
  {
    ValueAsInt = OZChannel::getValueAsInt((*(this + 181) + 2448), MEMORY[0x277CC08F0], 0.0);
    v7 = (*(**(this + 181) + 1248))();
    if (ValueAsInt)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (v8)
    {
      if (ValueAsInt && *(this + 180))
      {

        OZImageMaskRender::getWrapNode(this, a2, a3);
      }

      else
      {

        OZImageMaskRender::getClampNode(this, a2, a3);
      }
    }

    else
    {

      OZImageMaskRender::getStencilClampNode(this, a2, a3);
    }
  }

  else
  {
    v9 = *(this + 182);

    LiAgent::getHelium(a2, v9, a3);
  }
}

void OZImageMaskRender::~OZImageMaskRender(PCSharedCount *this)
{
  OZChannelBase::setRangeName((v2 + 1544), &off_2872AE0E8);
  this[195].var0 = &unk_2872DEA38;
  LOBYTE(this[197].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[196].var0);
}

{
  OZImageMaskRender::~OZImageMaskRender(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZImageMaskRender::~OZImageMaskRender(OZImageMaskRender *this)
{
  OZImageMaskRender::~OZImageMaskRender((this + *(*this - 32)));
}

{
  OZImageMaskRender::~OZImageMaskRender((this + *(*this - 32)));

  JUMPOUT(0x2666E9F00);
}

{
  OZImageMaskRender::~OZImageMaskRender((this + *(*this - 24)));
}

{
  OZImageMaskRender::~OZImageMaskRender((this + *(*this - 24)));

  JUMPOUT(0x2666E9F00);
}

void OZImageMaskRender::~OZImageMaskRender(PCSharedCount *this, PC_Sp_counted_base **a2)
{
  v4 = *a2;
  this->var0 = *a2;
  *(&this->var0 + *(v4 - 3)) = a2[4];
  *(&this->var0 + *(this->var0 - 4)) = a2[5];
  PCSharedCount::~PCSharedCount(this + 192);
  PCSharedCount::~PCSharedCount(this + 190);
  PCSharedCount::~PCSharedCount(this + 183);
  v5 = a2[1];
  this->var0 = v5;
  *(&this->var0 + *(v5 - 3)) = a2[2];
  *(&this->var0 + *(this->var0 - 4)) = a2[3];
  OZRenderParams::~OZRenderParams(&this[2]);
}

void HWrapRepeat::~HWrapRepeat(HGNode *this)
{
  HgcWrapRepeat::~HgcWrapRepeat(this);

  HGObject::operator delete(v1);
}

double HWrapRepeat::GetDOD(HWrapRepeat *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return *&HGRectNull;
  }

  v5 = vdup_n_s32(!HGRectIsNull(*&a4.var0, *&a4.var2));
  v6.i64[0] = v5.u32[0];
  v6.i64[1] = v5.u32[1];
  *&result = vbslq_s8(vcltzq_s64(vshlq_n_s64(v6, 0x3FuLL)), HGRectInfinite, HGRectNull).u64[0];
  return result;
}

uint64_t HWrapRepeat::GetROI(HWrapRepeat *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v15 = v4;
  v16 = v5;
  v12 = 0.0;
  v13 = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  if (PCMatrix44Tmpl<double>::transformRect<double>(this + 72, this + 52, &v12))
  {
    return HGRectMake4i(vcvtmd_s64_f64(v12 + -1.1 + 0.0000001), vcvtmd_s64_f64(v13 + -1.1 + 0.0000001), vcvtpd_s64_f64(v12 + -1.1 + *&v14 + 2.2), vcvtpd_s64_f64(v13 + -1.1 + *(&v14 + 1) + 2.2));
  }

  else
  {
    return 0;
  }
}

uint64_t HWrapRepeat::setMaskRect(_OWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  a1[26] = *a2;
  a1[27] = v2;
  v3 = *a2;
  *&v2 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return (*(*a1 + 96))(a1, 0, v3, *&v2, v4, v5);
}

uint64_t HWrapRepeat::setMatrix(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 448;
  if (a1 + 448 != a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v2 + i) = *(v4 + i);
      }

      ++v3;
      v2 += 32;
      v4 += 32;
    }

    while (v3 != 4);
  }
}

uint64_t HWrapRepeat::setInvMatrix(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 576;
  if (a1 + 576 != a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v2 + i) = *(v4 + i);
      }

      ++v3;
      v2 += 32;
      v4 += 32;
    }

    while (v3 != 4);
  }
}

uint64_t anonymous namespace::setShaderMatrixParam(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *a2;
  v7 = *(a2 + 32);
  v8 = *(a2 + 64);
  v9 = *(a2 + 96);
  (*(*a1 + 96))(a1, a3, v6, v7, v8, v9);
  v10 = *(a2 + 8);
  v11 = *(a2 + 40);
  v12 = *(a2 + 72);
  v13 = *(a2 + 104);
  (*(*a1 + 96))(a1, (v3 + 1), v10, v11, v12, v13);
  v14 = *(a2 + 16);
  v15 = *(a2 + 48);
  v16 = *(a2 + 80);
  v17 = *(a2 + 112);
  (*(*a1 + 96))(a1, (v3 + 2), v14, v15, v16, v17);
  v18.n128_u64[0] = *(a2 + 24);
  v18.n128_f32[0] = v18.n128_f64[0];
  v19.n128_u64[0] = *(a2 + 56);
  v19.n128_f32[0] = v19.n128_f64[0];
  v20.n128_u64[0] = *(a2 + 88);
  v20.n128_f32[0] = v20.n128_f64[0];
  v21.n128_u64[0] = *(a2 + 120);
  v21.n128_f32[0] = v21.n128_f64[0];
  v22 = *(*a1 + 96);

  return v22(a1, (v3 + 3), v18, v19, v20, v21);
}

void HWrapMirror::~HWrapMirror(HGNode *this)
{
  HgcWrapMirror::~HgcWrapMirror(this);

  HGObject::operator delete(v1);
}

uint64_t OZFolderLightShadow::initChannels(OZFolderLightShadow *this)
{
  OZChannel::setMin((this + 280), 0.0);
  OZChannel::setMax((this + 280), 500.0);
  OZChannel::setSliderMax((this + 280), 20.0);
  OZChannel::setMax((this + 128), 10.0);
  OZChannelFolder::setFoldFlag(this, 15);
  OZChannelFolder::setFoldFlag(this, 0x20000);
  (*(*this + 104))(this, 0, 0);
  v2 = *(*this + 128);

  return v2(this);
}

void OZFolderLightShadow::OZFolderLightShadow(OZFolderLightShadow *this, const OZFolderLightShadow *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v5 = &unk_2872AEA20;
  *(v5 + 16) = &unk_2872AECF8;
  OZChannelPercent::OZChannelPercent((v5 + 128), (a2 + 128), this);
  OZChannel::OZChannel((this + 280), (a2 + 280), this);
  *(this + 35) = &unk_287245C60;
  *(this + 37) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 432), (a2 + 432), this);
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 584), (a2 + 584), this);
}

void sub_2601F8BEC(_Unwind_Exception *a1)
{
  OZChannelBool::~OZChannelBool((v1 + 432));
  OZChannel::~OZChannel(v2);
  OZChannelPercent::~OZChannelPercent((v1 + 128));
  OZChannelFolder::~OZChannelFolder(v1);
  _Unwind_Resume(a1);
}

void OZFolderLightShadow::OZFolderLightShadow(OZFolderLightShadow *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5, 0);
  *v6 = &unk_2872AEA20;
  v6[2] = &unk_2872AECF8;
  PCURL::PCURL(&v7, @"Channel Lighting Shadow Opacity");
  OZChannelPercent::OZChannelPercent((this + 128), 1.0, &v7, this, 1u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Lighting Shadow Softness");
  OZChannelDouble::OZChannelDouble((this + 280), 0.0, &v7, this, 2u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Lighting Shadow Uniform Softness");
  OZChannelBool::OZChannelBool((this + 432), 1, &v7, this, 3u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Lighting Shadow Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 584), 0.0, 0.0, 0.0, &v7, this, 5u, 0, 5u);
  PCString::~PCString(&v7);
  OZFolderLightShadow::initChannels(this);
}

void sub_2601F8DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v10 + 584));
  OZChannelBool::~OZChannelBool((v10 + 432));
  OZChannel::~OZChannel((v10 + 280));
  OZChannelPercent::~OZChannelPercent((v10 + 128));
  OZChannelFolder::~OZChannelFolder(v10);
  _Unwind_Resume(a1);
}

void OZFolderLightShadow::~OZFolderLightShadow(OZFolderLightShadow *this)
{
  *this = &unk_2872AEA20;
  *(this + 2) = &unk_2872AECF8;
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 584));
  OZChannelBool::~OZChannelBool((this + 432));
  OZChannel::~OZChannel((this + 280));
  OZChannelPercent::~OZChannelPercent((this + 128));

  OZChannelFolder::~OZChannelFolder(this);
}

{
  OZFolderLightShadow::~OZFolderLightShadow(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZFolderLightShadow::~OZFolderLightShadow(OZFolderLightShadow *this)
{
  OZFolderLightShadow::~OZFolderLightShadow((this - 16));
}

{
  OZFolderLightShadow::~OZFolderLightShadow((this - 16));

  JUMPOUT(0x2666E9F00);
}

void *EnvironmentResetCallback(void *result, void *a2)
{
  if (result)
  {
    if (result)
    {
      return (*(*result + 280))(result, 0);
    }
  }

  return result;
}

uint64_t OZ3DExtrusionProperties::init(OZ3DExtrusionProperties *this)
{
  v7 = *MEMORY[0x277D85DE8];
  OZChannelFolder::setFoldFlag((this + 2592), 0x800000);
  OZChannelFolder::setFoldFlag((this + 3128), 8519684);
  OZChannelBase::enable((this + 3128), 0, 0);
  OZChannel::setMin((this + 3408), 0.0);
  OZChannel::setMax((this + 3408), 500.0);
  OZChannel::setMax((this + 3256), 10.0);
  OZChannelFolder::saveStateAsDefault((this + 3128));
  (*(*this + 104))(this, 0, 0);
  PCURL::PCURL(v5, @"Bevel Properties Edge Width");
  OZChannelBase::setName((this + 1336), v5, 0);
  PCString::~PCString(v5);
  PCURL::PCURL(v5, @"Bevel Properties Edge Depth");
  OZChannelBase::setName((this + 1488), v5, 0);
  PCString::~PCString(v5);
  PCURL::PCURL(v5, @"Bevel Properties Edge Width");
  OZChannelBase::setName((this + 2032), v5, 0);
  PCString::~PCString(v5);
  PCURL::PCURL(v5, @"Bevel Properties Edge Depth");
  OZChannelBase::setName((this + 2184), v5, 0);
  PCString::~PCString(v5);
  OZChannelFolder::setFoldFlag((this + 1200), 0x800000);
  OZChannelFolder::setFoldFlag((this + 1896), 0x800000);
  OZChannelFolder::setFoldFlag((this + 5848), 0x800000);
  OZChannel::setValue((this + 536), MEMORY[0x277CC08F0], 2.0, 0);
  OZChannel::setDefaultToCurrentValue((this + 536));
  OZChannel::setMin((this + 128), 0.0);
  OZChannel::setSliderMin((this + 792), -5.0);
  OZChannel::setSliderMax((this + 792), 5.0);
  OZChannel::setValue((this + 2336), &v4, 0.0, 0);
  OZChannel::setDefaultValue((this + 2336), 0.0);
  OZChannel::setMin((this + 1336), 0.0);
  OZChannel::setMin((this + 1488), 0.0);
  OZChannel::setMin((this + 2032), 0.0);
  OZChannel::setMin((this + 2184), 0.0);
  OZChannel::setSliderMax((this + 1336), 10.0);
  OZChannel::setSliderMax((this + 1488), 10.0);
  OZChannel::setSliderMax((this + 2032), 10.0);
  OZChannel::setSliderMax((this + 2184), 10.0);
  OZChannel::setCoarseDelta((this + 1336), 0.1);
  OZChannel::setCoarseDelta((this + 1488), 0.1);
  OZChannel::setCoarseDelta((this + 2032), 0.1);
  OZChannel::setCoarseDelta((this + 2184), 0.1);
  OZChannel::setFineDelta((this + 1336), 0.01);
  OZChannel::setFineDelta((this + 1488), 0.01);
  OZChannel::setFineDelta((this + 2032), 0.01);
  OZChannel::setFineDelta((this + 2184), 0.01);
  (*(*(this + 167) + 712))(this + 1336, &v4, 0, 4.0);
  (*(*(this + 186) + 712))(this + 1488, &v4, 0, 4.0);
  (*(*(this + 254) + 712))(this + 2032, &v4, 0, 4.0);
  (*(*(this + 273) + 712))(this + 2184, &v4, 0, 4.0);
  OZChannel::setDefaultValue((this + 1336), 4.0);
  OZChannel::setDefaultValue((this + 1488), 4.0);
  OZChannel::setDefaultValue((this + 2032), 4.0);
  OZChannel::setDefaultValue((this + 2184), 4.0);
  OZChannelBase::setInspectorCtlrClassName((this + 7440), @"TXMaterialAssignmentFolderController");
  OZChannelBase::setInspectorCtlrClassName((this + 8080), @"TXMaterialAssignmentController");
  OZChannelBase::setLabelCtlrClassName((this + 7568), @"TXMaterialAssignmentLabelController");
  OZChannelBase::setFlag((this + 1200), 0x400000, 0);
  OZChannelBase::setFlag((this + 1896), 0x400000, 0);
  OZChannelBase::setParameterCtlrClassName((this + 3944), @"OZEnvironmentMapController");
  OZChannelBase::setParameterCtlrClassName((this + 5848), @"OZEnvironmentRotationController");
  OZChannel::setMax((this + 5544), 1000000.0);
  OZChannelBase::setParameterCtlrClassName((this + 944), @"OZChanEnumWithImagesController");
  PCString::PCString(v5, "Square;Bevel;Round;Concave;Groove;Ridge;Double_Round;Square_Ring;Bevel_Ring;Round_Ring;Outline");
  OZChannelEnum::setImages((this + 944), v5);
  PCString::~PCString(v5);
  OZChannelBase::setParameterCtlrClassName((this + 1640), @"OZChanEnumWithImagesController");
  PCString::PCString(v5, "-;-;Square;Bevel;Round;Concave;Groove;Ridge;Double_Round;Square_Ring;Bevel_Ring;Round_Ring;Outline");
  OZChannelEnum::setImages((this + 1640), v5);
  PCString::~PCString(v5);
  OZChannelFolder::setFoldFlag((this + 3560), 4);
  OZChannelBase::setResetCallback((this + 3560), EnvironmentResetCallback, 0, 0);
  OZChannelFolder::setFoldFlag((this + 3560), 0x20000);
  OZChannelBase::setFlag((this + 3560), 0x100000000, 0);
  *&v5[0].var0 = xmmword_260853B50;
  v6[0] = unk_260853B60;
  *(v6 + 12) = unk_260853B6C;
  OZChannelEnum::setTags((this + 3944), v5, 11);
  OZChannelBase::setFlag((this + 4744), 0x400000, 0);
  OZChannel::setMax((this + 2976), 1000000.0);
  PCString::PCString(&v3, "-;Lighting_Style_Standard;Lighting_Style_Medium_Center;Lighting_Style_Medium_Left;Lighting_Style_Medium_Right;Lighting_Style_Above;Lighting_Style_Backlit;Lighting_Style_Below;Lighting_Style_Diagonal_Left;Lighting_Style_Diagonal_Right;Lighting_Style_Drama_Top_Left;Lighting_Style_Drama_Top_Right");
  OZChannelEnum::setImages((this + 2720), &v3);
  PCString::~PCString(&v3);
  return (*(*this + 128))(this);
}

void OZ3DExtrusionProperties::OZ3DExtrusionProperties(OZ3DExtrusionProperties *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5);
  *v6 = &unk_2872AED68;
  v6[2] = &unk_2872AF048;
  PCURL::PCURL(&v8, @"3D Property Extrusion Depth");
  OZChannelDouble::OZChannelDouble((this + 128), 10.0, &v8, this, 0x1F8u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Bevel Properties Extrude Direction Deprecated Enum");
  PCURL::PCURL(&v7, @"Bevel Properties Extrude Direction");
  OZChannelEnum::OZChannelEnum((this + 280), &v8, &v7, this, 0x1F9u, 0xAu, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Bevel Properties Extrude Direction Enum");
  PCURL::PCURL(&v7, @"Bevel Properties Extrude Direction");
  OZChannelEnum::OZChannelEnum((this + 536), &v8, &v7, this, 0x1FAu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"3D Property Extrusion Weight");
  OZChannelDouble::OZChannelDouble((this + 792), 0.0, &v8, this, 0x207u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Bevel Properties Front Profile Enum");
  PCURL::PCURL(&v7, @"Bevel Properties Front Edge Profile");
  OZChannelEnum::OZChannelEnum((this + 944), 2u, &v8, &v7, this, 0x1F4u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Bevel Properties Front Edge Size");
  OZChannel2D::OZChannel2D((this + 1200), &v8, this, 0x1F6u, 0, 2u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Bevel Properties Back Profile Enum");
  PCURL::PCURL(&v7, @"Bevel Properties Back Corner Profile");
  OZChannelEnum::OZChannelEnum((this + 1640), 0, &v8, &v7, this, 0x1F5u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Bevel Properties Back Corner Size");
  OZChannel2D::OZChannel2D((this + 1896), &v8, this, 0x1F7u, 0, 2u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Bevel Properties Corner Style Enum");
  PCURL::PCURL(&v7, @"Bevel Properties Corner Style");
  OZChannelEnum::OZChannelEnum((this + 2336), &v8, &v7, this, 0x20Cu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Extrusion Properties Lighting Folder");
  OZChannelFolder::OZChannelFolder((this + 2592), &v8, this, 0x20Fu, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Bevel Properties Lighting Style Enum");
  PCURL::PCURL(&v7, @"Bevel Properties Lighting Style");
  OZChannelEnum::OZChannelEnum((this + 2720), 1u, &v8, &v7, (this + 2592), 0x1FCu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Bevel Properties Lighting Style Intensity");
  OZChannelPercent::OZChannelPercent((this + 2976), 1.0, &v8, (this + 2592), 0x20Eu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Extrusion Properties Self Shadows Folder");
  OZChannelFolder::OZChannelFolder((this + 3128), &v8, (this + 2592), 0x211u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Extrusion Properties Self Shadows Opacity");
  OZChannelPercent::OZChannelPercent((this + 3256), 1.0, &v8, (this + 3128), 0x212u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Extrusion Properties Self Shadows Softness");
  OZChannelDouble::OZChannelDouble((this + 3408), 0.0, &v8, (this + 3128), 0x213u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Properties");
  OZChannelFolder::OZChannelFolder((this + 3560), &v8, (this + 2592), 0x200u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Type Enum");
  PCURL::PCURL(&v7, @"Material Environment Type");
  OZChannelEnum::OZChannelEnum((this + 3688), &v8, &v7, (this + 3560), 0x209u, 0xAu, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Map Selection Enum");
  PCURL::PCURL(&v7, @"Material Environment Map Selection");
  OZChannelEnum::OZChannelEnum((this + 3944), 3u, &v8, &v7, (this + 3560), 0x215u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Map Deprecated Selection Enum");
  PCURL::PCURL(&v7, @"Material Environment Map Selection");
  OZChannelStringEnum::OZChannelStringEnum((this + 4200), 4u, &v8, &v7, (this + 3560), 0x208u, 0xAu);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"four; five; six");
  PCURL::PCURL(&v7, @"Material Environment Map Selection");
  OZChannelEnum::OZChannelEnum((this + 4488), &v8, &v7, (this + 3560), 0x201u, 0xAu, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Gradient");
  OZChannelGradient::OZChannelGradient((this + 4744), &v8, (this + 3560), 0x20Au, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Intensity");
  OZChannelPercent::OZChannelPercent((this + 5544), 1.0, &v8, (this + 3560), 0x202u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Reflectivity");
  OZChannelDouble::OZChannelDouble((this + 5696), 50.0, &v8, (this + 3560), 0x203u, 2, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 5848), 0.0, 0.0, 0.0, &v8, (this + 3560), 0x204u, 0, 4u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Contrast");
  OZChannelDouble::OZChannelDouble((this + 6704), 100.0, &v8, (this + 3560), 0x205u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Saturation");
  OZChannelDouble::OZChannelDouble((this + 6856), 100.0, &v8, (this + 3560), 0x20Du, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Environment Normalization");
  OZChannelDouble::OZChannelDouble((this + 7008), 1.0, &v8, (this + 3560), 0x20Bu, 134217730, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Environment Anisotropy Enable");
  OZChannelBool::OZChannelBool((this + 7160), 0, &v8, this, 0x216u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "");
  OZChannelFolder::OZChannelFolder((this + 7312), &v8, this, 0x257u, 0xAu, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Extrusion Properties Material Assignment Folder");
  OZChannelFolder::OZChannelFolder((this + 7440), &v8, this, 0x1FDu, 2u, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Extrusion Properties Material Assignment Mode Enum");
  PCURL::PCURL(&v7, @"Extrusion Properties Material Assignment Mode");
  OZChannelEnum::OZChannelEnum((this + 7568), 0, &v8, &v7, (this + 7440), 0x210u, 2, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Extrusion Properties Material Assignment Mode Multiple Materials");
  PCURL::PCURL(&v7, @"Extrusion Properties Material Assignment Mode");
  OZChannelEnum::OZChannelEnum((this + 7824), 2u, &v8, &v7, (this + 7440), 0x1FEu, 32778, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "");
  OZChannelDouble::OZChannelDouble((this + 8080), 0, &v8, (this + 7440), 0x1FFu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Hidden Channel");
  OZChannelBool::OZChannelBool((this + 8232), 0, &v8, this, 0x214u, 2u, 0, 0);
  PCString::~PCString(&v8);
  OZ3DExtrusionProperties::init(this);
}

void sub_2601FA308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, PCString a11, PCString a12)
{
  OZChannelBool::~OZChannelBool((v12 + v20));
  OZChannel::~OZChannel((v12 + v19));
  OZChannelEnum::~OZChannelEnum((v12 + v13));
  OZChannelEnum::~OZChannelEnum((v12 + v18));
  OZChannelFolder::~OZChannelFolder((v12 + v17));
  OZChannelFolder::~OZChannelFolder((v12 + v15));
  OZChannelBool::~OZChannelBool((v12 + v14));
  OZChannel::~OZChannel((v12 + v16));
  OZChannel::~OZChannel((v12 + v21));
  OZChannel::~OZChannel((v12 + 6704));
  OZChannelRotation3D::~OZChannelRotation3D((v12 + 5848));
  OZChannel::~OZChannel((v12 + 5696));
  OZChannelPercent::~OZChannelPercent((v12 + 5544));
  OZChannelGradient::~OZChannelGradient((v12 + 4744));
  OZChannelEnum::~OZChannelEnum((v12 + 4488));
  OZChannelStringEnum::~OZChannelStringEnum((v12 + 4200));
  OZChannelEnum::~OZChannelEnum((v12 + 3944));
  OZChannelEnum::~OZChannelEnum((v12 + 3688));
  OZChannelFolder::~OZChannelFolder((v12 + 3560));
  OZChannel::~OZChannel((v12 + 3408));
  OZChannelPercent::~OZChannelPercent((v12 + 3256));
  OZChannelFolder::~OZChannelFolder((v12 + 3128));
  OZChannelPercent::~OZChannelPercent((v12 + 2976));
  OZChannelEnum::~OZChannelEnum((v12 + 2720));
  OZChannelFolder::~OZChannelFolder((v12 + 2592));
  OZChannelEnum::~OZChannelEnum((v12 + 2336));
  OZChannel2D::~OZChannel2D((v12 + 1896));
  OZChannelEnum::~OZChannelEnum((v12 + 1640));
  OZChannel2D::~OZChannel2D((v12 + 1200));
  OZChannelEnum::~OZChannelEnum((v12 + 944));
  OZChannel::~OZChannel((v12 + 792));
  OZChannelEnum::~OZChannelEnum((v12 + 536));
  OZChannelEnum::~OZChannelEnum((v12 + 280));
  OZChannel::~OZChannel((v12 + 128));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void sub_2601FA668(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FA47CLL);
}

void sub_2601FA690(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FA488);
}

void sub_2601FA6B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FA490);
}

void sub_2601FA6E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FA498);
}

void sub_2601FA780(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FA4C8);
}

void sub_2601FA7C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FA4D8);
}

void sub_2601FA800(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FA4E8);
}

void sub_2601FA840(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FA4F8);
}

void sub_2601FA880(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FA508);
}

void sub_2601FA8A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FA510);
}

void OZ3DExtrusionProperties::OZ3DExtrusionProperties(OZ3DExtrusionProperties *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  Instance = OZ3DExtrusionProperties_Factory::getInstance(this);
  OZChannelFolder::OZChannelFolder(this, Instance, a2, a3, a4, a5, a6);
  *this = &unk_2872AED68;
  *(this + 2) = &unk_2872AF048;
  PCURL::PCURL(&v14, @"3D Property Extrusion Depth");
  OZChannelDouble::OZChannelDouble((this + 128), 10.0, &v14, this, 0x1F8u, 0, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Bevel Properties Extrude Direction Deprecated Enum");
  PCURL::PCURL(&v13, @"Bevel Properties Extrude Direction");
  OZChannelEnum::OZChannelEnum((this + 280), &v14, &v13, this, 0x1F9u, 0xAu, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Bevel Properties Extrude Direction Enum");
  PCURL::PCURL(&v13, @"Bevel Properties Extrude Direction");
  OZChannelEnum::OZChannelEnum((this + 536), &v14, &v13, this, 0x1FAu, 0, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"3D Property Extrusion Weight");
  OZChannelDouble::OZChannelDouble((this + 792), 0.0, &v14, this, 0x207u, 0, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Bevel Properties Front Profile Enum");
  PCURL::PCURL(&v13, @"Bevel Properties Front Edge Profile");
  OZChannelEnum::OZChannelEnum((this + 944), 2u, &v14, &v13, this, 0x1F4u, 0, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Bevel Properties Front Edge Size");
  OZChannel2D::OZChannel2D((this + 1200), &v14, this, 0x1F6u, 0, 2u, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Bevel Properties Back Profile Enum");
  PCURL::PCURL(&v13, @"Bevel Properties Back Edge Profile");
  OZChannelEnum::OZChannelEnum((this + 1640), 0, &v14, &v13, this, 0x1F5u, 0, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Bevel Properties Back Edge Size");
  OZChannel2D::OZChannel2D((this + 1896), &v14, this, 0x1F7u, 0, 2u, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Bevel Properties Corner Style Enum");
  PCURL::PCURL(&v13, @"Bevel Properties Corner Style");
  OZChannelEnum::OZChannelEnum((this + 2336), &v14, &v13, this, 0x20Cu, 0, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Extrusion Properties Lighting Folder");
  OZChannelFolder::OZChannelFolder((this + 2592), &v14, this, 0x20Fu, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Bevel Properties Lighting Style Enum");
  PCURL::PCURL(&v13, @"Bevel Properties Lighting Style");
  OZChannelEnum::OZChannelEnum((this + 2720), 1u, &v14, &v13, (this + 2592), 0x1FCu, 0, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Bevel Properties Lighting Style Intensity");
  OZChannelPercent::OZChannelPercent((this + 2976), 1.0, &v14, (this + 2592), 0x20Eu, 0, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Extrusion Properties Self Shadows Folder");
  OZChannelFolder::OZChannelFolder((this + 3128), &v14, (this + 2592), 0x211u, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Extrusion Properties Self Shadows Opacity");
  OZChannelPercent::OZChannelPercent((this + 3256), 1.0, &v14, (this + 3128), 0x212u, 0, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Extrusion Properties Self Shadows Softness");
  OZChannelDouble::OZChannelDouble((this + 3408), 0.0, &v14, (this + 3128), 0x213u, 0, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Properties");
  OZChannelFolder::OZChannelFolder((this + 3560), &v14, (this + 2592), 0x200u, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Type Enum");
  PCURL::PCURL(&v13, @"Material Environment Type");
  OZChannelEnum::OZChannelEnum((this + 3688), &v14, &v13, (this + 3560), 0x209u, 0xAu, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Map Selection Enum");
  PCURL::PCURL(&v13, @"Material Environment Map Selection");
  OZChannelEnum::OZChannelEnum((this + 3944), 3u, &v14, &v13, (this + 3560), 0x215u, 0, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Map Deprecated Selection Enum");
  PCURL::PCURL(&v13, @"Material Environment Map Selection");
  OZChannelStringEnum::OZChannelStringEnum((this + 4200), 4u, &v14, &v13, (this + 3560), 0x208u, 0xAu);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Map Selection Enum");
  PCURL::PCURL(&v13, @"Material Environment Map Selection");
  OZChannelEnum::OZChannelEnum((this + 4488), &v14, &v13, (this + 3560), 0x201u, 0xAu, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Gradient");
  OZChannelGradient::OZChannelGradient((this + 4744), &v14, (this + 3560), 0x20Au, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Intensity");
  OZChannelPercent::OZChannelPercent((this + 5544), 1.0, &v14, (this + 3560), 0x202u, 0, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Reflectivity");
  OZChannelDouble::OZChannelDouble((this + 5696), 50.0, &v14, (this + 3560), 0x203u, 2, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 5848), 0.0, 0.0, 0.0, &v14, (this + 3560), 0x204u, 0, 4u, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Contrast");
  OZChannelDouble::OZChannelDouble((this + 6704), 100.0, &v14, (this + 3560), 0x205u, 0, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Saturation");
  OZChannelDouble::OZChannelDouble((this + 6856), 100.0, &v14, (this + 3560), 0x20Du, 0, 0, 0);
  PCString::~PCString(&v14);
  PCString::PCString(&v14, "Environment Normalization");
  OZChannelDouble::OZChannelDouble((this + 7008), 1.0, &v14, (this + 3560), 0x20Bu, 134217730, 0, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Material Environment Anisotropy Enable");
  OZChannelBool::OZChannelBool((this + 7160), 0, &v14, this, 0x216u, 0, 0, 0);
  PCString::~PCString(&v14);
  PCString::PCString(&v14, "");
  OZChannelFolder::OZChannelFolder((this + 7312), &v14, this, 0x257u, 0xAu, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Extrusion Properties Material Assignment Folder");
  OZChannelFolder::OZChannelFolder((this + 7440), &v14, this, 0x1FDu, 2u, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Extrusion Properties Material Assignment Mode Enum");
  PCURL::PCURL(&v13, @"Extrusion Properties Material Assignment Mode");
  OZChannelEnum::OZChannelEnum((this + 7568), 0, &v14, &v13, (this + 7440), 0x210u, 2, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Extrusion Properties Material Assignment Mode Multiple Materials");
  PCURL::PCURL(&v13, @"Extrusion Properties Material Assignment Mode");
  OZChannelEnum::OZChannelEnum((this + 7824), 2u, &v14, &v13, (this + 7440), 0x1FEu, 32778, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(&v14);
  PCString::PCString(&v14, "");
  OZChannelDouble::OZChannelDouble((this + 8080), 0, &v14, (this + 7440), 0x1FFu, 0, 0, 0);
  PCString::~PCString(&v14);
  PCString::PCString(&v14, "Hidden Channel");
  OZChannelBool::OZChannelBool((this + 8232), 0, &v14, this, 0x214u, 2u, 0, 0);
  PCString::~PCString(&v14);
  OZ3DExtrusionProperties::init(this);
}

void sub_2601FB514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, PCString a11, PCString a12)
{
  OZChannelBool::~OZChannelBool((v12 + v20));
  OZChannel::~OZChannel((v12 + v19));
  OZChannelEnum::~OZChannelEnum((v12 + v13));
  OZChannelEnum::~OZChannelEnum((v12 + v18));
  OZChannelFolder::~OZChannelFolder((v12 + v17));
  OZChannelFolder::~OZChannelFolder((v12 + v15));
  OZChannelBool::~OZChannelBool((v12 + v14));
  OZChannel::~OZChannel((v12 + v16));
  OZChannel::~OZChannel((v12 + v21));
  OZChannel::~OZChannel((v12 + 6704));
  OZChannelRotation3D::~OZChannelRotation3D((v12 + 5848));
  OZChannel::~OZChannel((v12 + 5696));
  OZChannelPercent::~OZChannelPercent((v12 + 5544));
  OZChannelGradient::~OZChannelGradient((v12 + 4744));
  OZChannelEnum::~OZChannelEnum((v12 + 4488));
  OZChannelStringEnum::~OZChannelStringEnum((v12 + 4200));
  OZChannelEnum::~OZChannelEnum((v12 + 3944));
  OZChannelEnum::~OZChannelEnum((v12 + 3688));
  OZChannelFolder::~OZChannelFolder((v12 + 3560));
  OZChannel::~OZChannel((v12 + 3408));
  OZChannelPercent::~OZChannelPercent((v12 + 3256));
  OZChannelFolder::~OZChannelFolder((v12 + 3128));
  OZChannelPercent::~OZChannelPercent((v12 + 2976));
  OZChannelEnum::~OZChannelEnum((v12 + 2720));
  OZChannelFolder::~OZChannelFolder((v12 + 2592));
  OZChannelEnum::~OZChannelEnum((v12 + 2336));
  OZChannel2D::~OZChannel2D((v12 + 1896));
  OZChannelEnum::~OZChannelEnum((v12 + 1640));
  OZChannel2D::~OZChannel2D((v12 + 1200));
  OZChannelEnum::~OZChannelEnum((v12 + 944));
  OZChannel::~OZChannel((v12 + 792));
  OZChannelEnum::~OZChannelEnum((v12 + 536));
  OZChannelEnum::~OZChannelEnum((v12 + 280));
  OZChannel::~OZChannel((v12 + 128));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void sub_2601FB874(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FB688);
}

void sub_2601FB89C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FB694);
}

void sub_2601FB8C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FB69CLL);
}

void sub_2601FB8EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FB6A4);
}

void sub_2601FB98C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FB6D4);
}

void sub_2601FB9CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FB6E4);
}

void sub_2601FBA0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FB6F4);
}

void sub_2601FBA4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FB704);
}

void sub_2601FBA8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FB714);
}

void sub_2601FBAB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  JUMPOUT(0x2601FB71CLL);
}

uint64_t OZ3DExtrusionProperties_Factory::getInstance(OZ3DExtrusionProperties_Factory *this)
{
  if (atomic_load_explicit(&OZ3DExtrusionProperties_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZ3DExtrusionProperties_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZ3DExtrusionProperties_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZ3DExtrusionProperties_Factory::_instance;
}

void OZ3DExtrusionProperties::OZ3DExtrusionProperties(OZ3DExtrusionProperties *this, const OZ3DExtrusionProperties *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v5 = &unk_2872AED68;
  *(v5 + 16) = &unk_2872AF048;
  OZChannel::OZChannel((v5 + 128), (a2 + 128), this);
  *(this + 16) = &unk_287245C60;
  *(this + 18) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 280), (a2 + 280), this);
  OZChannelEnum::OZChannelEnum((this + 536), (a2 + 536), this);
  OZChannel::OZChannel((this + 792), (a2 + 792), this);
  *(this + 99) = &unk_287245C60;
  *(this + 101) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 944), (a2 + 944), this);
  OZChannel2D::OZChannel2D((this + 1200), (a2 + 1200), this);
  OZChannelEnum::OZChannelEnum((this + 1640), (a2 + 1640), this);
  OZChannel2D::OZChannel2D((this + 1896), (a2 + 1896), this);
  OZChannelEnum::OZChannelEnum((this + 2336), (a2 + 2336), this);
  OZChannelFolder::OZChannelFolder((this + 2592), (a2 + 2592), this);
  OZChannelEnum::OZChannelEnum((this + 2720), (a2 + 2720), (this + 2592));
  OZChannelPercent::OZChannelPercent((this + 2976), (a2 + 2976), (this + 2592));
  OZChannelFolder::OZChannelFolder((this + 3128), (a2 + 3128), (this + 2592));
  OZChannelPercent::OZChannelPercent((this + 3256), (a2 + 3256), (this + 3128));
  OZChannel::OZChannel((this + 3408), (a2 + 3408), (this + 3128));
  *(this + 426) = &unk_287245C60;
  *(this + 428) = &unk_287245FC0;
  OZChannelFolder::OZChannelFolder((this + 3560), (a2 + 3560), (this + 2592));
  OZChannelEnum::OZChannelEnum((this + 3688), (a2 + 3688), (this + 3560));
  OZChannelEnum::OZChannelEnum((this + 3944), (a2 + 3944), (this + 3560));
  OZChannelStringEnum::OZChannelStringEnum((this + 4200), (a2 + 4200), (this + 3560));
  OZChannelEnum::OZChannelEnum((this + 4488), (a2 + 4488), (this + 3560));
  OZChannelGradient::OZChannelGradient((this + 4744), (a2 + 4744), (this + 3560));
  OZChannelPercent::OZChannelPercent((this + 5544), (a2 + 5544), (this + 3560));
  OZChannel::OZChannel((this + 5696), (a2 + 5696), (this + 3560));
  *(this + 712) = &unk_287245C60;
  *(this + 714) = &unk_287245FC0;
  OZChannelRotation3D::OZChannelRotation3D((this + 5848), (a2 + 5848), (this + 3560));
  OZChannel::OZChannel((this + 6704), (a2 + 6704), (this + 3560));
  *(this + 838) = &unk_287245C60;
  *(this + 840) = &unk_287245FC0;
  OZChannel::OZChannel((this + 6856), (a2 + 6856), (this + 3560));
  *(this + 857) = &unk_287245C60;
  *(this + 859) = &unk_287245FC0;
  OZChannel::OZChannel((this + 7008), (a2 + 7008), (this + 3560));
  *(this + 876) = &unk_287245C60;
  *(this + 878) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 7160), (a2 + 7160), (this + 3560));
  OZChannelFolder::OZChannelFolder((this + 7312), (a2 + 7312), this);
  OZChannelFolder::OZChannelFolder((this + 7440), (a2 + 7440), this);
  OZChannelEnum::OZChannelEnum((this + 7568), (a2 + 7568), (this + 7440));
  OZChannelEnum::OZChannelEnum((this + 7824), (a2 + 7824), (this + 7440));
  OZChannel::OZChannel((this + 8080), (a2 + 8080), (this + 7440));
  *(this + 1010) = &unk_287245C60;
  *(this + 1012) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 8232), (a2 + 8232), this);
  OZChannelBase::setResetCallback((this + 3560), EnvironmentResetCallback, 0, 0);
}

void sub_2601FC098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, OZChannel *a9, OZChannel *a10, OZChannel *a11, OZChannel *a12)
{
  OZChannelBool::~OZChannelBool((v12 + v14));
  OZChannel::~OZChannel(v20);
  OZChannelEnum::~OZChannelEnum((v12 + v16));
  OZChannelEnum::~OZChannelEnum((v12 + v13));
  OZChannelFolder::~OZChannelFolder((v12 + v15));
  OZChannelFolder::~OZChannelFolder((v12 + 7312));
  OZChannelBool::~OZChannelBool((v12 + 7160));
  OZChannel::~OZChannel(v19);
  OZChannel::~OZChannel(v18);
  OZChannel::~OZChannel(v17);
  OZChannelRotation3D::~OZChannelRotation3D((v12 + 5848));
  OZChannel::~OZChannel(a9);
  OZChannelPercent::~OZChannelPercent((v12 + 5544));
  OZChannelGradient::~OZChannelGradient((v12 + 4744));
  OZChannelEnum::~OZChannelEnum((v12 + 4488));
  OZChannelStringEnum::~OZChannelStringEnum((v12 + 4200));
  OZChannelEnum::~OZChannelEnum((v12 + 3944));
  OZChannelEnum::~OZChannelEnum((v12 + 3688));
  OZChannelFolder::~OZChannelFolder((v12 + 3560));
  OZChannel::~OZChannel(a10);
  OZChannelPercent::~OZChannelPercent((v12 + 3256));
  OZChannelFolder::~OZChannelFolder((v12 + 3128));
  OZChannelPercent::~OZChannelPercent((v12 + 2976));
  OZChannelEnum::~OZChannelEnum((v12 + 2720));
  OZChannelFolder::~OZChannelFolder((v12 + 2592));
  OZChannelEnum::~OZChannelEnum((v12 + 2336));
  OZChannel2D::~OZChannel2D((v12 + 1896));
  OZChannelEnum::~OZChannelEnum((v12 + 1640));
  OZChannel2D::~OZChannel2D((v12 + 1200));
  OZChannelEnum::~OZChannelEnum((v12 + 944));
  OZChannel::~OZChannel(a11);
  OZChannelEnum::~OZChannelEnum((v12 + 536));
  OZChannelEnum::~OZChannelEnum((v12 + 280));
  OZChannel::~OZChannel(a12);
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

uint64_t OZ3DExtrusionProperties::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    OZChannelFolder::operator=(a1);
  }

  return a1;
}

OZChannelBase *OZ3DExtrusionProperties::enable(OZ3DExtrusionProperties *this, int a2, char a3)
{
  result = OZChannelBase::enable(this, a2, a3);
  if (a2)
  {
    v6 = MEMORY[0x277CC08F0];

    return OZChannel::setValue((this + 8232), v6, 1.0, 0);
  }

  return result;
}

void OZ3DExtrusionProperties::~OZ3DExtrusionProperties(OZ3DExtrusionProperties *this)
{
  *this = &unk_2872AED68;
  *(this + 2) = &unk_2872AF048;
  OZChannelBool::~OZChannelBool((this + 8232));
  OZChannel::~OZChannel((this + 8080));
  OZChannelEnum::~OZChannelEnum((this + 7824));
  OZChannelEnum::~OZChannelEnum((this + 7568));
  OZChannelFolder::~OZChannelFolder((this + 7440));
  OZChannelFolder::~OZChannelFolder((this + 7312));
  OZChannelBool::~OZChannelBool((this + 7160));
  OZChannel::~OZChannel((this + 7008));
  OZChannel::~OZChannel((this + 6856));
  OZChannel::~OZChannel((this + 6704));
  OZChannelRotation3D::~OZChannelRotation3D((this + 5848));
  OZChannel::~OZChannel((this + 5696));
  OZChannelPercent::~OZChannelPercent((this + 5544));
  OZChannelGradient::~OZChannelGradient((this + 4744));
  OZChannelEnum::~OZChannelEnum((this + 4488));
  *(this + 525) = &unk_2872905C0;
  *(this + 527) = &unk_287290930;
  PCString::~PCString(this + 560);
  v2 = (this + 4456);
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v2);
  OZChannelEnum::~OZChannelEnum(this + 525);
  OZChannelEnum::~OZChannelEnum((this + 3944));
  OZChannelEnum::~OZChannelEnum((this + 3688));
  OZChannelFolder::~OZChannelFolder((this + 3560));
  OZChannel::~OZChannel((this + 3408));
  OZChannelPercent::~OZChannelPercent((this + 3256));
  OZChannelFolder::~OZChannelFolder((this + 3128));
  OZChannelPercent::~OZChannelPercent((this + 2976));
  OZChannelEnum::~OZChannelEnum((this + 2720));
  OZChannelFolder::~OZChannelFolder((this + 2592));
  OZChannelEnum::~OZChannelEnum((this + 2336));
  OZChannel2D::~OZChannel2D((this + 1896));
  OZChannelEnum::~OZChannelEnum((this + 1640));
  OZChannel2D::~OZChannel2D((this + 1200));
  OZChannelEnum::~OZChannelEnum((this + 944));
  OZChannel::~OZChannel((this + 792));
  OZChannelEnum::~OZChannelEnum((this + 536));
  OZChannelEnum::~OZChannelEnum((this + 280));
  OZChannel::~OZChannel((this + 128));
  OZChannelFolder::~OZChannelFolder(this);
}

{
  OZ3DExtrusionProperties::~OZ3DExtrusionProperties(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZ3DExtrusionProperties::~OZ3DExtrusionProperties(OZ3DExtrusionProperties *this)
{
  OZ3DExtrusionProperties::~OZ3DExtrusionProperties((this - 16));
}

{
  OZ3DExtrusionProperties::~OZ3DExtrusionProperties((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZ3DExtrusionProperties::environmentType(OZ3DExtrusionProperties *this)
{
  isDisabled = OZChannelBase::isDisabled((this + 3560), 0);
  result = 0;
  if ((isDisabled & 1) == 0)
  {
    if (OZChannel::getValueAsInt((this + 3944), MEMORY[0x277CC08F0], 0.0))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t OZ3DExtrusionProperties::parseEnd(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  if (*(theApp + 81) == 1)
  {
    OZChannelFolder::setFoldFlag(this, 4);
  }

  OZChannelFolder::resetFoldFlag((this + 7440), 0x800000);
  OZChannelFolder::resetFoldFlag((this + 7440), 4);
  OZChannelBase::setFlag((this + 7440), 2, 0);
  if (!OZChannelBase::testFlag((this + 280), 2))
  {
    v4 = 0.0;
    ValueAsInt = OZChannel::getValueAsInt((this + 280), MEMORY[0x277CC08F0], 0.0);
    if (ValueAsInt != 1)
    {
      v4 = 1.0;
      if ((ValueAsInt & 0xFFFFFFFE) != 2)
      {
        if (ValueAsInt == 4)
        {
          v6 = 2;
        }

        else
        {
          v6 = ValueAsInt;
        }

        v4 = v6;
      }
    }

    OZChannel::setValue((this + 536), MEMORY[0x277CC08F0], v4, 0);
  }

  if (!OZChannelBase::testFlag((this + 4488), 2))
  {
    v7 = MEMORY[0x277CC08F0];
    ValueAsUint = OZChannel::getValueAsUint((this + 4488), MEMORY[0x277CC08F0], 0.0);
    OZChannel::setValue((this + 3944), v7, ValueAsUint, 0);
    if (ValueAsUint >= OZChannelEnum::getNumberOfStrings((this + 3944)))
    {
      OZChannel::setValue((this + 3944), MEMORY[0x277CC08F0], 0.0, 0);
    }

    OZChannelBase::setFlag((this + 5544), 0x100000000, 0);
  }

  OZChannelBase::setFlag((this + 280), 10, 0);
  OZChannelBase::setFlag((this + 4488), 10, 0);
  OZChannelFolder::setFoldFlag((this + 1200), 0x800000);
  OZChannelFolder::setFoldFlag((this + 1896), 0x800000);
  OZChannelFolder::setFoldFlag((this + 5848), 0x800000);
  if (!OZChannelBase::testFlag((this + 3688), 2))
  {
    if (OZChannel::getValueAsInt((this + 3688), MEMORY[0x277CC08F0], 0.0) == 1)
    {
      OZChannel::setValue((this + 3944), MEMORY[0x277CC08F0], 1.0, 0);
    }

    if (OZChannelBase::isDisabled((this + 3560), 1))
    {
      OZChannel::setValue((this + 3944), MEMORY[0x277CC08F0], 0.0, 0);
    }

    OZChannelBase::setFlag((this + 3688), 2, 0);
  }

  if (!OZChannelBase::testFlag((this + 7824), 0x8000))
  {
    v9 = MEMORY[0x277CC08F0];
    v10 = OZChannel::getValueAsInt((this + 7824), MEMORY[0x277CC08F0], 0.0);
    v11 = 1.0;
    if (v10)
    {
      v11 = 0.0;
    }

    OZChannel::setValue((this + 7568), v9, v11, 0);
  }

  if (!OZChannelBase::testFlag((this + 4200), 2))
  {
    OZChannelBase::setFlag((this + 4200), 10, 0);
    if (OZChannel::getValueAsInt((this + 4200), MEMORY[0x277CC08F0], 0.0))
    {
      OZChannelBase::enable((this + 3560), 1, 1);
      DefaultValue = OZChannel::getValueAsInt((this + 4200), MEMORY[0x277CC08F0], 0.0);
    }

    else
    {
      OZChannelBase::enable((this + 3560), 0, 1);
      DefaultValue = OZChannel::getDefaultValue((this + 3944));
    }

    OZChannel::setValue((this + 3944), MEMORY[0x277CC08F0], DefaultValue, 0);
    OZChannelBase::setFlag((this + 3560), 0x100000000, 0);
  }

  if (OZChannelBase::isEnabled(this, 1, 1))
  {
    OZChannel::setValue((this + 8232), MEMORY[0x277CC08F0], 1.0, 0);
  }

  return OZChannelFolder::parseEnd(this, a2);
}

void OZ3DExtrusionProperties_Factory::OZ3DExtrusionProperties_Factory(OZ3DExtrusionProperties_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_260853B40;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872AF0B8;
  *(this + 16) = &unk_2872AF188;
}

void OZChannelImageWithOptions::OZChannelImageWithOptions(OZChannelImageWithOptions *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelImageWithOptions_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, 0);
  *this = &unk_2872AF1E0;
  *(this + 2) = &unk_2872AF538;
  PCURL::PCURL(&v15, @"Channel Image Label");
  OZChannelImageForImageWithOptions::OZChannelImageForImageWithOptions((this + 136), &v15, this, 1u, 0x10000u);
  PCString::~PCString(&v15);
  PCURL::PCURL(&v15, @"Channel Image Frame");
  v12 = OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl::getInstance(v11);
  v13 = OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::getInstance(v12);
  OZChannelUint32::OZChannelUint32((this + 320), &v15, this, 2u, 0x10000, v12, v13);
  PCString::~PCString(&v15);
  PCURL::PCURL(&v15, @"Channel Image Hold Frame");
  OZChannelBool::OZChannelBool((this + 472), &v15, this, 3u, 0x10000u, 0, 0);
  PCString::~PCString(&v15);
  PCURL::PCURL(&v15, @"Channel Image Offset Label");
  OZChannelPosition::OZChannelPosition((this + 624), 0.0, 0.0, &v15, this, 4u, 0, 2u, 0, 0);
  PCString::~PCString(&v15);
  PCURL::PCURL(&v15, @"Channel Image Wrap Mode Enum");
  PCURL::PCURL(&v14, @"Channel Image Wrap Mode Label");
  OZChannelEnum::OZChannelEnum((this + 1328), &v15, &v14, this, 5u, 0x10000u, 0, 0);
  PCString::~PCString(&v14);
  PCString::~PCString(&v15);
  *(this + 7) |= 0x1000000000uLL;
  OZChannelMoveableImage::setOffsetChannel(this + 136, (this + 624));
  *(this + 1064) = 0;
}

void sub_2601FCF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelEnum::~OZChannelEnum((v10 + 1328));
  OZChannelPosition::~OZChannelPosition((v10 + 624));
  OZChannelBool::~OZChannelBool((v10 + 472));
  OZChannel::~OZChannel((v10 + 320));
  OZChannelImageForImageWithOptions::~OZChannelImageForImageWithOptions((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelImageWithOptions::OZChannelImageWithOptions(OZChannelImageWithOptions *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5, a6, 0, 0);
  *v7 = &unk_2872AF1E0;
  v7[2] = &unk_2872AF538;
  PCURL::PCURL(&v12, @"Channel Image Label");
  OZChannelImageForImageWithOptions::OZChannelImageForImageWithOptions((this + 136), &v12, this, 1u, 0x10000u);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Channel Image Frame");
  Instance = OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl::getInstance(v8);
  v10 = OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::getInstance(Instance);
  OZChannelUint32::OZChannelUint32((this + 320), &v12, this, 2u, 0x10000, Instance, v10);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Channel Image Hold Frame");
  OZChannelBool::OZChannelBool((this + 472), &v12, this, 3u, 0x10000u, 0, 0);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Channel Image Offset Label");
  OZChannelPosition::OZChannelPosition((this + 624), 0.0, 0.0, &v12, this, 4u, 0, 2u, 0, 0);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Channel Image Wrap Mode Enum");
  PCURL::PCURL(&v11, @"Channel Image Wrap Mode Label");
  OZChannelEnum::OZChannelEnum((this + 1328), &v12, &v11, this, 5u, 0x10000u, 0, 0);
  PCString::~PCString(&v11);
  PCString::~PCString(&v12);
  *(this + 7) |= 0x1000000000uLL;
  OZChannelMoveableImage::setOffsetChannel(this + 136, (this + 624));
  *(this + 1064) = 0;
}

void sub_2601FD280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelEnum::~OZChannelEnum((v10 + 1328));
  OZChannelPosition::~OZChannelPosition((v10 + 624));
  OZChannelBool::~OZChannelBool((v10 + 472));
  OZChannel::~OZChannel((v10 + 320));
  OZChannelImageForImageWithOptions::~OZChannelImageForImageWithOptions((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelImageWithOptions::OZChannelImageWithOptions(OZChannelImageWithOptions *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, 0);
  *v5 = &unk_2872AF1E0;
  v5[2] = &unk_2872AF538;
  PCURL::PCURL(&v10, @"Channel Image Label");
  OZChannelImageForImageWithOptions::OZChannelImageForImageWithOptions((this + 136), &v10, this, 1u, 0x10000u);
  PCString::~PCString(&v10);
  PCURL::PCURL(&v10, @"Channel Image Frame");
  Instance = OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl::getInstance(v6);
  v8 = OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::getInstance(Instance);
  OZChannelUint32::OZChannelUint32((this + 320), &v10, this, 2u, 0x10000, Instance, v8);
  PCString::~PCString(&v10);
  PCURL::PCURL(&v10, @"Channel Image Hold Frame");
  OZChannelBool::OZChannelBool((this + 472), &v10, this, 3u, 0x10000u, 0, 0);
  PCString::~PCString(&v10);
  PCURL::PCURL(&v10, @"Channel Image Offset Label");
  OZChannelPosition::OZChannelPosition((this + 624), 50.0, 50.0, &v10, this, 4u, 0, 2u, 0, 0);
  PCString::~PCString(&v10);
  PCURL::PCURL(&v10, @"Channel Image Wrap Mode Enum");
  PCURL::PCURL(&v9, @"Channel Image Wrap Mode Label");
  OZChannelEnum::OZChannelEnum((this + 1328), &v10, &v9, this, 5u, 0x10000u, 0, 0);
  PCString::~PCString(&v9);
  PCString::~PCString(&v10);
  *(this + 7) |= 0x1000000000uLL;
  OZChannelMoveableImage::setOffsetChannel(this + 136, (this + 624));
}

void sub_2601FD56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelEnum::~OZChannelEnum((v10 + 1328));
  OZChannelPosition::~OZChannelPosition((v10 + 624));
  OZChannelBool::~OZChannelBool((v10 + 472));
  OZChannel::~OZChannel((v10 + 320));
  OZChannelImageForImageWithOptions::~OZChannelImageForImageWithOptions((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelImageWithOptions::OZChannelImageWithOptions(OZChannelImageWithOptions *this, const OZChannelImageWithOptions *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_2872AF1E0;
  v5[2] = &unk_2872AF538;
  OZChannelImageForImageWithOptions::OZChannelImageForImageWithOptions((v5 + 17), (a2 + 136), this);
  OZChannel::OZChannel((this + 320), (a2 + 320), this);
  *(this + 40) = &unk_287246400;
  *(this + 42) = &unk_287246760;
  OZChannelBool::OZChannelBool((this + 472), (a2 + 472), this);
  OZChannelPosition::OZChannelPosition((this + 624), (a2 + 624), this);
  OZChannelEnum::OZChannelEnum((this + 1328), (a2 + 1328), this);
  *(this + 7) |= 0x1000000000uLL;
  OZChannelMoveableImage::setOffsetChannel(this + 136, (this + 624));
}

void sub_2601FD74C(_Unwind_Exception *a1)
{
  OZChannelEnum::~OZChannelEnum((v1 + 1328));
  OZChannelPosition::~OZChannelPosition((v1 + 624));
  OZChannelBool::~OZChannelBool((v1 + 472));
  OZChannel::~OZChannel(v2);
  OZChannelImageForImageWithOptions::~OZChannelImageForImageWithOptions((v1 + 136));
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelImageWithOptions::copy(OZChannelImageWithOptions *this, const OZChannelBase *a2, uint64_t a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannelMoveableImage::copy((this + 136), (v4 + 136), a3);
  OZChannel::copy((this + 320), (v4 + 320), a3);
  OZChannel::copy((this + 472), (v4 + 472), a3);
  OZChannelPosition::copy((this + 624), (v4 + 624), a3);

  OZChannelEnum::copy(this + 166, (v4 + 1328), a3);
}

uint64_t OZChannelImageWithOptions::parseEnd(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  result = OZChannelFolder::parseEnd(this, a2);
  *(this + 7) |= 0x1000000000uLL;
  return result;
}

uint64_t non-virtual thunk toOZChannelImageWithOptions::parseEnd(OZChannelImageWithOptions *this, PCSerializerReadStream *a2)
{
  result = OZChannelFolder::parseEnd((this - 16), a2);
  *(this + 5) |= 0x1000000000uLL;
  return result;
}

uint64_t OZChannelImageWithOptions::getFrame@<X0>(OZChannelImageWithOptions *this@<X0>, const CMTime *a2@<X1>, __n128 *a3@<X8>)
{
  result = OZChannelBase::getChannelRootBase(this);
  if (!result || (v7 = result, (result = (*(*result + 840))(result)) == 0) || (v8 = (*(*v7 + 840))(v7), (result = (*(*v8 + 264))(v8)) == 0))
  {
    v16 = MEMORY[0x277CC08F0];
    *a3 = *MEMORY[0x277CC08F0];
    epoch = *(v16 + 16);
    goto LABEL_8;
  }

  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  v9 = *(*(*v7 + 840))(v7);
  v10 = (*(v9 + 264))();
  v11 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 320), MEMORY[0x277CC08F0], 0.0);
  OZScene::getTimeForFrame(v10, v12, a3);
  result = OZChannel::getValueAsInt((this + 472), v11, 0.0);
  if (!result)
  {
    ChannelRootBase = OZChannelBase::getChannelRootBase(this);
    (*(*ChannelRootBase + 712))(&v20);
    time2 = v20;
    time1 = *a2;
    PC_CMTimeSaferSubtract(&time1, &time2, &v17);
    time1 = *a3->n128_u8;
    time2 = v17;
    PC_CMTimeSaferAdd(&time1, &time2, &v18);
    *a3 = v18;
    v14 = v19;
    a3[1].n128_u64[0] = v19;
    *&time1.value = *a3;
    time1.epoch = v14;
    time2 = *v11;
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0)
    {
      *a3 = *&v11->value;
      epoch = v11->epoch;
LABEL_8:
      a3[1].n128_u64[0] = epoch;
    }
  }

  return result;
}

void OZChannelImageWithOptions::setTimeRange(OZChannelImageWithOptions *this)
{
  ImageNode = OZChanElementOrFootageRef::getImageNode((this + 136));
  if (ImageNode)
  {
    v3 = (*(*ImageNode + 104))(ImageNode);
    if (v3)
    {
      v4 = v3;
      v5 = (*(*v3 + 216))(v3);
      if (v5)
      {
        v6 = v5;
        v7 = (*(*v4 + 264))(v4);
        if (v7)
        {
          v8 = v7;
          (*(*v6 + 712))(v14, v6);
          v11 = v15;
          v12 = v16;
          OZSceneSettings::getFrameDuration((v8 + 336), &v10);
          operator/(&v11, &v10, &time);
          Seconds = CMTimeGetSeconds(&time);
          OZChannel::setMax((this + 320), Seconds);
        }
      }
    }
  }
}

void non-virtual thunk toOZChannelImageWithOptions::~OZChannelImageWithOptions(OZChannelImageWithOptions *this)
{
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this - 16));
}

{
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl::getInstance(OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl *this)
{
  if (atomic_load_explicit(&OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl::getInstance(void)::OZChannelImageWithOptions_frameImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl::getInstance(void)::OZChannelImageWithOptions_frameImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl::_OZChannelImageWithOptions_frame;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelImageWithOptions::OZChannelImageWithOptions_frameImpl::_OZChannelImageWithOptions_frame)
  {
    operator new();
  }
}

uint64_t OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::getInstance(OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo *this)
{
  if (atomic_load_explicit(&OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::getInstance(void)::OZChannelImageWithOptions_frameInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::getInstance(void)::OZChannelImageWithOptions_frameInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::_OZChannelImageWithOptions_frameInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::_OZChannelImageWithOptions_frameInfo)
  {
    operator new();
  }
}

OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo *OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo::OZChannelImageWithOptions_frameInfo(OZChannelImageWithOptions::OZChannelImageWithOptions_frameInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872AF620;
  *(this + 10) = &unk_2872AF640;
  return this;
}

void OZChannelImageForImageWithOptions::OZChannelImageForImageWithOptions(OZChannelImageForImageWithOptions *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelImageForImageWithOptions_Factory::getInstance(this);
  OZChannelMoveableImage::OZChannelMoveableImage(this, Instance, a2, a3, a4, a5);
  *this = &unk_2872AF698;
  *(this + 2) = &unk_2872AFA20;
  if (a3)
  {
  }

  else
  {
    v11 = 0;
  }

  *(this + 22) = v11;
}

uint64_t OZChannelImageForImageWithOptions_Factory::getInstance(OZChannelImageForImageWithOptions_Factory *this)
{
  if (atomic_load_explicit(&OZChannelImageForImageWithOptions_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelImageForImageWithOptions_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelImageForImageWithOptions_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelImageForImageWithOptions_Factory::_instance;
}

void OZChannelImageForImageWithOptions::OZChannelImageForImageWithOptions(OZChannelImageForImageWithOptions *this, const OZChannelImageForImageWithOptions *a2, OZChannelFolder *a3)
{
  OZChannelMoveableImage::OZChannelMoveableImage(this, a2, a3);
  *v5 = &unk_2872AF698;
  v5[2] = &unk_2872AFA20;
  if (a3)
  {
  }

  else
  {
    v6 = 0;
  }

  *(this + 22) = v6;
}

void non-virtual thunk toOZChannelImageForImageWithOptions::~OZChannelImageForImageWithOptions(OZChannelImageForImageWithOptions *this)
{
  OZChannelMoveableImage::~OZChannelMoveableImage((this - 16));
}

{
  OZChannelMoveableImage::~OZChannelMoveableImage((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelImageForImageWithOptions::~OZChannelImageForImageWithOptions(OZChannelImageForImageWithOptions *this)
{
  OZChannelMoveableImage::~OZChannelMoveableImage(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelImageForImageWithOptions::setObjectID(OZChannelBase *this, unsigned int a2)
{
  OZChanObjectManipRef::setObjectID(this, a2, 0);
  var8 = this[1].var8;
  if (var8)
  {

    OZChannelImageWithOptions::setTimeRange(var8);
  }
}

void OZChannelImageForImageWithOptions_Factory::OZChannelImageForImageWithOptions_Factory(OZChannelImageForImageWithOptions_Factory *this)
{
  v3 = xmmword_260853C70;
  v4 = xmmword_260853C60;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872AFA90;
  *(this + 16) = &unk_2872AFB60;
}

void OZChanElementOrFootageRef::OZChanElementOrFootageRef(OZChanElementOrFootageRef *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChanElementOrFootageRef_Factory::getInstance(this);
  OZChanSceneNodeRef::OZChanSceneNodeRef(this, Instance, a2, a3, a4, a5);
  *this = &unk_2872AFBB8;
  *(this + 2) = &unk_2872AFF38;
}

void OZChanElementOrFootageRef::OZChanElementOrFootageRef(OZChanElementOrFootageRef *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChanSceneNodeRef::OZChanSceneNodeRef(this, a2, a3, a4, a5, a6);
  *v6 = &unk_2872AFBB8;
  v6[2] = &unk_2872AFF38;
}

void OZChanElementOrFootageRef::OZChanElementOrFootageRef(OZChanElementOrFootageRef *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChanSceneNodeRef::OZChanSceneNodeRef(this, a2, a3, a4);
  *v4 = &unk_2872AFBB8;
  v4[2] = &unk_2872AFF38;
}

void OZChanElementOrFootageRef::OZChanElementOrFootageRef(OZChanElementOrFootageRef *this, const OZChanSceneNodeRef *a2, OZChannelFolder *a3)
{
  OZChanSceneNodeRef::OZChanSceneNodeRef(this, a2, a3);
  *v3 = &unk_2872AFBB8;
  v3[2] = &unk_2872AFF38;
}

void non-virtual thunk toOZChanElementOrFootageRef::~OZChanElementOrFootageRef(OZChanElementOrFootageRef *this)
{
  OZChanSceneNodeRef::~OZChanSceneNodeRef((this - 16));
}

{
  OZChanSceneNodeRef::~OZChanSceneNodeRef((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChanElementOrFootageRef::~OZChanElementOrFootageRef(OZChanElementOrFootageRef *this)
{
  OZChanSceneNodeRef::~OZChanSceneNodeRef(this);

  JUMPOUT(0x2666E9F00);
}

const void *OZChanElementOrFootageRef::getImageNode(OZChannelBase *this)
{
  result = OZChanSceneNodeRef::getNode(this);
  if (result)
  {
  }

  return result;
}

uint64_t OZChanElementOrFootageRef::setImageNode(OZChanElementOrFootageRef *this, OZImageNode *lpsrc)
{
  if (lpsrc)
  {
  }

  return OZChanSceneNodeRef::setNode(this, lpsrc);
}

unint64_t OZChanElementOrFootageRef::canReferenceObject(OZChannelBase *this, const OZObjectManipulator *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *((*(*a2 + 256))(a2) + 8);
  v6 = xmmword_260348380;
  if (OZFactory::isKindOfClass(v4, &v6))
  {
    return OZChanSceneNodeRef::canReferenceObject(this, a2);
  }

  v6 = xmmword_260850040;
  result = OZFactory::isKindOfClass(v4, &v6);
  if (result)
  {
    return OZChanSceneNodeRef::canReferenceObject(this, a2);
  }

  return result;
}

void OZChannelMoveableImage::OZChannelMoveableImage(OZChannelMoveableImage *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChanElementOrFootageRef::OZChanElementOrFootageRef(this, a2, a3, a4, a5, a6);
  *v6 = &unk_2872AFFA8;
  *(v6 + 16) = &unk_2872B0328;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
}

void OZChannelMoveableImage::OZChannelMoveableImage(OZChannelMoveableImage *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChanElementOrFootageRef::OZChanElementOrFootageRef(this, a2, a3, a4);
  *v4 = &unk_2872AFFA8;
  *(v4 + 16) = &unk_2872B0328;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
}

void OZChannelMoveableImage::OZChannelMoveableImage(OZChannelMoveableImage *this, const OZChannelMoveableImage *a2, OZChannelFolder *a3)
{
  OZChanElementOrFootageRef::OZChanElementOrFootageRef(this, a2, a3);
  *v5 = &unk_2872AFFA8;
  v5[2] = &unk_2872B0328;
  v6 = *(a2 + 20);
  if (v6)
  {
    v6 = (*(*v6 + 248))(v6);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *(this + 20) = v6;
  *(this + 168) = v7;
}

void OZChannelMoveableImage::~OZChannelMoveableImage(OZChannelMoveableImage *this)
{
  *this = &unk_2872AFFA8;
  *(this + 2) = &unk_2872B0328;
  if (*(this + 168) == 1)
  {
    v2 = *(this + 20);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    *(this + 20) = 0;
  }

  OZChanElementOrFootageRef::~OZChanElementOrFootageRef(this);
}

{
  OZChannelMoveableImage::~OZChannelMoveableImage(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelMoveableImage::~OZChannelMoveableImage(OZChannelMoveableImage *this)
{
  OZChannelMoveableImage::~OZChannelMoveableImage((this - 16));
}

{
  OZChannelMoveableImage::~OZChannelMoveableImage((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelMoveableImage::copy(OZChannelMoveableImage *this, const OZChannelBase *a2, uint64_t a3)
{
  OZChanSceneNodeRef::copy(this, a2, a3);
  v7 = *(**(this + 20) + 232);
  v8 = *(this + 20);

  return v7(v8, v6, a3);
}

uint64_t OZChannelMoveableImage::setOffsetChannel(uint64_t this, OZChannel2D *a2)
{
  v3 = this;
  if (*(this + 168) == 1)
  {
    this = *(this + 160);
    if (this)
    {
      this = (*(*this + 8))(this);
    }

    *(v3 + 168) = 0;
  }

  *(v3 + 160) = a2;
  return this;
}

void OZMaskComp::OZMaskComp(OZMaskComp *this)
{
  *(this + 14) = &unk_2872DEA38;
  *(this + 15) = 0;
  *(this + 128) = 1;
  LiImageFilter::LiImageFilter(this, &off_2872B04B0);
  *this = &unk_2872B03A0;
  *(this + 14) = &unk_2872B0490;
  *(this + 104) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
}

void sub_2601FF1EC(_Unwind_Exception *a1)
{
  *(v1 + 112) = v2;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void sub_2601FF9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  PCSharedCount::~PCSharedCount(&a64);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(&a65);
  OZRenderGraphState::~OZRenderGraphState(&STACK[0x208]);
  LiGraphBuilder::~LiGraphBuilder(&STACK[0x338]);
  _Unwind_Resume(a1);
}

void *PCPtr<OZImageMaskRender>::operator=<LiImageSource>(void *a1, const PCSharedCount *a2)
{
  if (!a2->var0)
  {
    *a1 = 0;
    goto LABEL_5;
  }

  *a1 = v4;
  if (!v4)
  {
LABEL_5:
    v5 = &v8;
    PCSharedCount::PCSharedCount(&v8);
    PCSharedCount::operator=(a1 + 1, &v8);
    goto LABEL_6;
  }

  v5 = &v7;
  PCSharedCount::PCSharedCount(&v7, a2 + 1);
  PCSharedCount::operator=(a1 + 1, &v7);
LABEL_6:
  PCSharedCount::~PCSharedCount(v5);
  return a1;
}

CGColorSpace **OZMaskComp::getHelium@<X0>(LiImageSource **this@<X0>, LiAgent *a2@<X1>, HGNode **a3@<X8>)
{
  v99 = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 1;
  HeliumRenderer = LiAgent::getHeliumRenderer(a2);
  RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
  v7 = *RequestedColorDescription;
  v96._pcColorDesc._colorSpaceRef._obj = v7;
  if (v7)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v7);
  }

  v8 = *(RequestedColorDescription + 8);
  v96._pcColorDesc._toneMapMethod._gain = *(RequestedColorDescription + 16);
  *&v96._pcColorDesc._dynamicRange = v8;
  v96._isPremultiplied = *(RequestedColorDescription + 24);
  if (FxColorDescription::isDynamicRangeManaged(&v96))
  {
    {
      makeMaskingColorDescription(FxColorDescription const&)::maskingSpace = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
    }

    FxColorDescription::FxColorDescription(&v95, makeMaskingColorDescription(FxColorDescription const&)::maskingSpace, 0, &makeMaskingColorDescription(FxColorDescription const&)::toneMapMethod, 1);
  }

  else
  {
    memset(&v95, 0, sizeof(v95));
    PCColorDescription::PCColorDescription(&v95._pcColorDesc);
    v95._isPremultiplied = 1;
  }

  isDynamicRangeManaged = FxColorDescription::isDynamicRangeManaged(&v96);
  v98 = 1038174126;
  v97 = 0x3F170A3D3E99999ALL;
  if (isDynamicRangeManaged)
  {
    CGColorSpace = FxColorDescription::getCGColorSpace(&v95);
    PCGetColorSpaceLuminanceCoefficients(CGColorSpace, &v97);
  }

  LiAgent::getHelium(a2, this[2], &v94);
  if (v94)
  {
    LiImagePolygon::LiImagePolygon(v91);
    Crop = LiAgent::getCrop(a2);
    LiImagePolygon::operator=(v91, Crop);
    v12 = this[6] - this[5];
    if ((v12 >> 4))
    {
      v75 = a3;
      v90 = 0;
      LiImagePolygon::LiImagePolygon(v87);
      if ((v12 >> 4) >= 1)
      {
        v13 = (v12 >> 4) & 0x7FFFFFFF;
        v14 = v13 + 1;
        v15 = 152 * v13;
        v16 = 16 * v13 - 16;
        v76 = this;
        while (1)
        {
          v17 = this[8];
          v18 = v17 + v15;
          if (*(v17 + v15 - 8) != 0.0)
          {
            break;
          }

LABEL_97:
          --v14;
          v15 -= 152;
          v16 -= 16;
          if (v14 <= 1)
          {
            goto LABEL_103;
          }
        }

        v85 = 0;
        v86 = 0;
        if (*(v18 - 147) == 1)
        {
          v85 = v97;
          LODWORD(v86) = v98;
        }

        else
        {
          *(&v85 + *(v17 + v15 - 144)) = 1065353216;
        }

        LiAgent::loadTransform(a2, v17 + v15 - 136);
        v19 = *(this[5] + v16);
        if (v19)
        {
          if (v20)
          {
            v21 = v20;
            DOD = HGRenderer::GetDOD(HeliumRenderer, v94);
            v24 = v23;
            if (HGRectIsNull(DOD, v23))
            {
              v25 = -1.0;
              v26 = 0.0;
              v27 = 0.0;
              v28 = -1.0;
            }

            else
            {
              v29 = HIDWORD(DOD);
              if (DOD <= -1073741823)
              {
                v30 = -1073741823;
              }

              else
              {
                v30 = DOD;
              }

              if (SHIDWORD(DOD) <= -1073741823)
              {
                LODWORD(v29) = -1073741823;
              }

              if (v24 >= 1073741822)
              {
                v31 = 1073741822;
              }

              else
              {
                v31 = v24;
              }

              v32 = HIDWORD(v24);
              if (SHIDWORD(v24) >= 1073741822)
              {
                LODWORD(v32) = 1073741822;
              }

              v26 = v30;
              v27 = v29;
              v25 = (v31 - v30);
              v28 = (v32 - v29);
            }

            v21[184] = v26;
            v21[185] = v27;
            v21[186] = v25;
            v21[187] = v28;
          }
        }

        LiAgent::getHelium(a2, v19, &v84);
        if (!v84)
        {
          v33 = HGObject::operator new(0x1A0uLL);
          HGNode::HGNode(v33);
          if (v84 == v33)
          {
            if (v33)
            {
              (*(*v33 + 24))(v33);
            }
          }

          else
          {
            if (v84)
            {
              (*(*v84 + 24))();
            }

            v84 = v33;
          }
        }

        ActualColorDescription = LiAgent::getActualColorDescription(a2);
        v35 = LiAgent::getCrop(a2);
        LiImagePolygon::LiImagePolygon(&v79, v35);
        v36 = *(v18 - 38);
        if (v36 != 3)
        {
          if (v36 == 2)
          {
            if (*(v17 + v15 - 146) == 1)
            {
              v89 = v88;
              if (((v83 - v82) & 0x1FFFFFFFE0) != 0)
              {
                cropToPolygon(HeliumRenderer, &v84, &v79, 1, 0, &v78);
                v37 = v78;
                if (v84 != v78)
                {
                  if (v84)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_72;
                }

                if (!v84)
                {
                  goto LABEL_73;
                }

                goto LABEL_102;
              }

              goto LABEL_74;
            }
          }

          else
          {
            if (v36 == 1)
            {
              if ((*(v17 + v15 - 146) & 1) == 0)
              {
                goto LABEL_44;
              }

              goto LABEL_54;
            }

            if (v90 || (*(v17 + v15 - 146) & 1) != 0)
            {
              if (((v89 - v88) & 0x1FFFFFFFE0) != 0)
              {
                cropToPolygon(HeliumRenderer, &v90, v87, 1, 0, &v78);
                v38 = v78;
                if (v90 == v78)
                {
                  if (v90)
                  {
                    (*(*v78 + 24))(v78);
                  }
                }

                else
                {
                  if (v90)
                  {
                    (*(*v90 + 24))();
                    v38 = v78;
                  }

                  v90 = v38;
                }

                v89 = v88;
              }

              if (((v83 - v82) & 0x1FFFFFFFE0) == 0)
              {
                goto LABEL_74;
              }

              cropToPolygon(HeliumRenderer, &v84, &v79, 1, 0, &v78);
              v37 = v78;
              if (v84 != v78)
              {
                if (v84)
                {
LABEL_71:
                  (*(*v84 + 24))();
                  v37 = v78;
                }

LABEL_72:
                v84 = v37;
                goto LABEL_73;
              }

              if (!v84)
              {
                goto LABEL_73;
              }

LABEL_102:
              (*(*v78 + 24))(v78);
              goto LABEL_73;
            }
          }

          LiImagePolygon::operator=(v87, &v79);
          goto LABEL_73;
        }

        if (*(v17 + v15 - 146))
        {
LABEL_44:
          if (((v83 - v82) & 0x1FFFFFFFE0) != 0)
          {
            cropToPolygon(HeliumRenderer, &v84, &v79, 1, 0, &v78);
            v37 = v78;
            if (v84 != v78)
            {
              if (v84)
              {
                goto LABEL_71;
              }

              goto LABEL_72;
            }

            if (v84)
            {
              goto LABEL_102;
            }

LABEL_73:
            v83 = v82;
          }

LABEL_74:
          conformWithToneMap(ActualColorDescription, &v84, &v95, &v78);
          v40 = v78;
          if (v84 == v78)
          {
            if (v84)
            {
              (*(*v78 + 24))(v78);
            }
          }

          else
          {
            if (v84)
            {
              (*(*v84 + 24))();
              v40 = v78;
            }

            v84 = v40;
          }

          if (!v90)
          {
            v42 = HGObject::operator new(0x1A0uLL);
            HgcMaskCompFirstPass::HgcMaskCompFirstPass(v42);
          }

          v41 = *(v18 - 38);
          if (v41 <= 1)
          {
            if (!v41)
            {
              goto LABEL_90;
            }

            if (v41 == 1)
            {
              v43 = HGObject::operator new(0x1A0uLL);
              HgcMaskCompSubtract::HgcMaskCompSubtract(v43);
            }
          }

          else
          {
            switch(v41)
            {
              case 2:
                v45 = HGObject::operator new(0x1A0uLL);
                HgcMaskCompReplace::HgcMaskCompReplace(v45);
              case 3:
                v46 = HGObject::operator new(0x1A0uLL);
                HgcMaskCompIntersect::HgcMaskCompIntersect(v46);
              case 4:
LABEL_90:
                v44 = HGObject::operator new(0x1A0uLL);
                HgcMaskCompAdd::HgcMaskCompAdd(v44);
            }
          }

          (*(v39 + 120))(0, 0, v84);
          (*(MEMORY[0] + 120))(0, 1, v90);
          (*(MEMORY[0] + 16))(0);
          (*(MEMORY[0] + 24))(0);
          v47 = (*(MEMORY[0] + 96))(0, 0, *&v85, *(&v85 + 1), *&v86, *(&v86 + 1));
          v47.n128_u8[0] = *(v17 + v15 - 146);
          (*(MEMORY[0] + 96))(0, 1, v47.n128_u32[0], *(v18 - 2), 0, 0.0);
          if (v90)
          {
            (*(*v90 + 24))();
            v90 = 0;
            (*(MEMORY[0] + 16))(0);
          }

          (*(MEMORY[0] + 24))(0);
          LiImagePolygon::~LiImagePolygon(&v79);
          this = v76;
          if (v84)
          {
            (*(*v84 + 24))(v84);
          }

          goto LABEL_97;
        }

LABEL_54:
        intersect(HeliumRenderer, v87, &v90, &v79, &v84);
        goto LABEL_73;
      }

LABEL_103:
      LiAgent::clearTransform(a2);
      v48 = v75;
      if (((v93 - v92) & 0x1FFFFFFFE0) != 0 && v90)
      {
        v49 = HGRenderer::GetDOD(HeliumRenderer, v90);
        v51 = v50;
        if (HGRectIsNull(v49, v50))
        {
          v52 = -1.0;
          v53 = 0.0;
          v54 = 0.0;
          v55 = -1.0;
        }

        else
        {
          v57 = v49 <= -1073741823 ? -1073741823 : v49;
          v58 = SHIDWORD(v49) <= -1073741823 ? -1073741823 : HIDWORD(v49);
          v59 = v51 >= 1073741822 ? 1073741822 : v51;
          v60 = SHIDWORD(v51) >= 1073741822 ? 1073741822 : HIDWORD(v51);
          v54 = v57;
          v53 = v58;
          v52 = (v59 - v57);
          v55 = (v60 - v58);
        }

        v79.f64[0] = v54;
        v79.f64[1] = v53;
        v80 = v52;
        v81 = v55;
        if (LiPolygon::contains(v91, &v79))
        {
          v93 = v92;
        }
      }

      intersect(HeliumRenderer, v91, &v94, v87, &v90);
      if (v94 && v90)
      {
        v61 = HGObject::operator new(0x1B0uLL);
        HMaskElem::HMaskElem(v61);
      }

      if (((v93 - v92) & 0x1FFFFFFFE0) != 0)
      {
        v62 = HGRenderer::GetDOD(HeliumRenderer, v94);
        v64 = v63;
        if (HGRectIsNull(v62, v63))
        {
          v65 = 1.0;
          v66 = -1.0;
          v67 = -1.0;
          v68 = 1.0;
        }

        else
        {
          if (v62 <= -1073741823)
          {
            v69 = -1073741823;
          }

          else
          {
            v69 = v62;
          }

          if (SHIDWORD(v62) <= -1073741823)
          {
            v70 = -1073741823;
          }

          else
          {
            v70 = HIDWORD(v62);
          }

          if (v64 >= 1073741822)
          {
            v71 = 1073741822;
          }

          else
          {
            v71 = v64;
          }

          if (SHIDWORD(v64) >= 1073741822)
          {
            v72 = 1073741822;
          }

          else
          {
            v72 = HIDWORD(v64);
          }

          v67 = (v69 - 1);
          v66 = (v70 - 1);
          v65 = (v71 - v69) + 2.0;
          v68 = (v72 - v70) + 2.0;
        }

        v48 = v75;
        v79.f64[0] = v67;
        v79.f64[1] = v66;
        v80 = v65;
        v81 = v68;
        LiImagePolygon::clip(v91, v79.f64, 1);
        if (((v93 - v92) & 0x1FFFFFFFE0) != 0)
        {
          LiAgent::outCrop(a2, v91);
        }

        else
        {
          v73 = HGObject::operator new(0x1A0uLL);
          HGNode::HGNode(v73);
          if (v94 == v73)
          {
            if (v73)
            {
              (*(*v73 + 24))(v73);
            }
          }

          else
          {
            if (v94)
            {
              (*(*v94 + 24))(v94);
            }

            v94 = v73;
          }
        }
      }

      *v48 = v94;
      v94 = 0;
      LiImagePolygon::~LiImagePolygon(v87);
      if (v90)
      {
        (*(*v90 + 24))(v90);
      }
    }

    else
    {
      v56 = HGObject::operator new(0x1A0uLL);
      HGNode::HGNode(v56);
      *a3 = v56;
    }

    LiImagePolygon::~LiImagePolygon(v91);
    if (v94)
    {
      (*(*v94 + 24))(v94);
    }
  }

  else
  {
    *a3 = 0;
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v95._pcColorDesc._colorSpaceRef._obj);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v96._pcColorDesc._colorSpaceRef._obj);
}

void sub_260200CB0(_Unwind_Exception *a1)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 - 160));
  _Unwind_Resume(a1);
}

BOOL intersect(HGRenderer *this, uint64_t a2, HGNode **a3, uint64_t a4, HGNode **a5)
{
  v9 = (*(a4 + 72) - *(a4 + 64)) & 0x1FFFFFFFE0;
  if (((*(a2 + 72) - *(a2 + 64)) & 0x1FFFFFFFE0) != 0)
  {
    if (v9)
    {
      LiImagePolygon::operator&=(a2, a4);
      if (((*(a2 + 72) - *(a2 + 64)) & 0x1FFFFFFFE0) == 0)
      {
        v10 = HGObject::operator new(0x1A0uLL);
        HGNode::HGNode(v10);
        v11 = *a3;
        if (*a3 == v10)
        {
          if (v10)
          {
            (*(*v10 + 24))(v10);
          }
        }

        else
        {
          if (v11)
          {
            (*(*v11 + 24))(v11);
          }

          *a3 = v10;
        }
      }
    }
  }

  else if (v9)
  {
    LiImagePolygon::operator=(a2, a4);
  }

  DOD = HGRenderer::GetDOD(this, *a3);
  v14 = v13;
  v15 = 3.0;
  v16 = -2.0;
  v17 = -2.0;
  v18 = -2.0;
  v19 = 3.0;
  v20 = 3.0;
  if (!HGRectIsNull(DOD, v13))
  {
    if (DOD <= -1073741823)
    {
      v21 = -1073741823;
    }

    else
    {
      v21 = DOD;
    }

    if (SHIDWORD(DOD) <= -1073741823)
    {
      v22 = -1073741823;
    }

    else
    {
      v22 = HIDWORD(DOD);
    }

    if (v14 >= 1073741822)
    {
      v23 = 1073741822;
    }

    else
    {
      v23 = v14;
    }

    if (SHIDWORD(v14) >= 1073741822)
    {
      v24 = 1073741822;
    }

    else
    {
      v24 = HIDWORD(v14);
    }

    v17 = (v21 - 2);
    v18 = (v22 - 2);
    v19 = (v23 - v21) + 4.0;
    v20 = (v24 - v22) + 4.0;
  }

  v25 = HGRenderer::GetDOD(this, *a5);
  v27 = v26;
  v28 = -2.0;
  v29 = 3.0;
  if (!HGRectIsNull(v25, v26))
  {
    if (v25 <= -1073741823)
    {
      v30 = -1073741823;
    }

    else
    {
      v30 = v25;
    }

    if (SHIDWORD(v25) <= -1073741823)
    {
      v31 = -1073741823;
    }

    else
    {
      v31 = HIDWORD(v25);
    }

    if (v27 >= 1073741822)
    {
      v32 = 1073741822;
    }

    else
    {
      v32 = v27;
    }

    if (SHIDWORD(v27) >= 1073741822)
    {
      v33 = 1073741822;
    }

    else
    {
      v33 = HIDWORD(v27);
    }

    v28 = (v30 - 2);
    v16 = (v31 - 2);
    v15 = (v32 - v30) + 4.0;
    v29 = (v33 - v31) + 4.0;
  }

  v38.f64[0] = v17;
  v38.f64[1] = v18;
  v39 = v19;
  v40 = v20;
  result = LiPolygon::contains(a2, &v38);
  if (result || (v35.f64[0] = v28, v35.f64[1] = v16, v36 = v15, v37 = v29, result = LiPolygon::contains(a2, &v35)))
  {
    *(a2 + 72) = *(a2 + 64);
  }

  return result;
}