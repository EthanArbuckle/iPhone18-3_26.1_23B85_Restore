void sub_2600B2A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannelBase *a10, PCString a11, PCString a12)
{
  OZChanFootageRef::~OZChanFootageRef((v12 + v19));
  OZChannelFolder::~OZChannelFolder((v12 + 18432));
  std::__list_imp<unsigned int>::clear(v14);
  OZChannelFolder::~OZChannelFolder((v12 + 18264));
  OZChannelCrop::~OZChannelCrop((v12 + v17));
  OZChannelQuad::~OZChannelQuad((v12 + v15));
  OZChannelBool::~OZChannelBool((v12 + 14416));
  OZChannel::~OZChannel((v12 + 14264));
  OZChannel::~OZChannel((v12 + 14112));
  OZChannel::~OZChannel((v12 + 13960));
  OZChannelPercent::~OZChannelPercent((v12 + 13808));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v12 + 12800));
  OZChannelFolder::~OZChannelFolder((v12 + v13));
  OZChannel::~OZChannel((v12 + v18));
  OZChannelEnum::~OZChannelEnum((v12 + 12256));
  OZChannelEnum::~OZChannelEnum((v12 + 12000));
  OZChannelEnum::~OZChannelEnum((v12 + 11744));
  OZChannel::~OZChannel((v12 + 11592));
  OZChannelFolder::~OZChannelFolder((v12 + v16));
  OZChannelEnum::~OZChannelEnum((v12 + 11208));
  OZChannelEnum::~OZChannelEnum((v12 + 10952));
  OZChannel::~OZChannel((v12 + 10800));
  OZChannel::~OZChannel((v12 + 10648));
  OZChannel::~OZChannel((v12 + 10496));
  OZChannelFolder::~OZChannelFolder((v12 + 10368));
  OZChannel::~OZChannel((v12 + 10216));
  OZChannelPercent::~OZChannelPercent((v12 + 10064));
  OZChannelFolder::~OZChannelFolder((v12 + 9936));
  OZFolderElementShadows::~OZFolderElementShadows((v12 + 9352));
  OZLightingFolder::~OZLightingFolder((v12 + 8384));
  OZChannelBool::~OZChannelBool((v12 + 8232));
  OZChannelPercent::~OZChannelPercent((v12 + 8080));
  OZChannelEnum::~OZChannelEnum((v12 + 7824));
  OZChannelPercent::~OZChannelPercent((v12 + 7672));
  OZChannelPercent::~OZChannelPercent((v12 + 7520));
  OZChannelPercent::~OZChannelPercent((v12 + 7368));
  OZChannel::~OZChannel((v12 + 7216));
  OZChannelFolder::~OZChannelFolder((v12 + 7088));
  OZChannelBlendMode::~OZChannelBlendMode((v12 + 6832));
  OZChannelPercent::~OZChannelPercent((v12 + 6680));
  OZChannelFolder::~OZChannelFolder((v12 + 6552));
  OZChannelBase::setRangeName(a10, v21);
  OZTransformNode::~OZTransformNode(v12);
  _Unwind_Resume(a1);
}

void OZElement::OZElement(OZElement *this, const OZElement *a2, uint64_t a3)
{
  OZTransformNode::OZTransformNode(this, a2, a3);
  OZImageNode::OZImageNode((v6 + 6528));
  *this = &unk_28727F1B0;
  *(this + 2) = &unk_28727FA88;
  *(this + 6) = &unk_28727FCE0;
  *(this + 816) = &unk_28727FD38;
  OZChannelFolder::OZChannelFolder((this + 6552), (a2 + 6552), (this + 320));
  OZChannelPercent::OZChannelPercent((this + 6680), (a2 + 6680), (this + 6552));
  OZChannelBlendMode::OZChannelBlendMode((this + 6832), (a2 + 6832), (this + 6552));
  OZChannelFolder::OZChannelFolder((this + 7088), (a2 + 7088), (this + 6552));
  OZChannel::OZChannel((this + 7216), (a2 + 7216), (this + 7088));
  *(this + 902) = &unk_287245C60;
  *(this + 904) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 7368), (a2 + 7368), (this + 7088));
  OZChannelPercent::OZChannelPercent((this + 7520), (a2 + 7520), (this + 7088));
  OZChannelPercent::OZChannelPercent((this + 7672), (a2 + 7672), (this + 7088));
  OZChannelEnum::OZChannelEnum((this + 7824), (a2 + 7824), (this + 7088));
  OZChannelPercent::OZChannelPercent((this + 8080), (a2 + 8080), (this + 6552));
  OZChannelBool::OZChannelBool((this + 8232), (a2 + 8232), (this + 6552));
  OZLightingFolder::OZLightingFolder((this + 8384), (a2 + 8384), (this + 320));
  OZFolderElementShadows::OZFolderElementShadows((this + 9352), (a2 + 9352), (this + 320));
  OZChannelFolder::OZChannelFolder((this + 9936), (a2 + 9936), (this + 320));
  OZChannelPercent::OZChannelPercent((this + 10064), (a2 + 10064), (this + 9936));
  OZChannel::OZChannel((this + 10216), (a2 + 10216), (this + 9936));
  *(this + 1277) = &unk_287245C60;
  *(this + 1279) = &unk_287245FC0;
  OZChannelFolder::OZChannelFolder((this + 10368), (a2 + 10368), (this + 9936));
  OZChannel::OZChannel((this + 10496), (a2 + 10496), (this + 10368));
  *(this + 1312) = &unk_287245C60;
  *(this + 1314) = &unk_287245FC0;
  OZChannel::OZChannel((this + 10648), (a2 + 10648), (this + 10368));
  *(this + 1331) = &unk_287245C60;
  *(this + 1333) = &unk_287245FC0;
  OZChannel::OZChannel((this + 10800), (a2 + 10800), (this + 10368));
  *(this + 1350) = &unk_287245C60;
  *(this + 1352) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 10952), (a2 + 10952), (this + 9936));
  OZChannelEnum::OZChannelEnum((this + 11208), (a2 + 11208), (this + 6552));
  OZChannelFolder::OZChannelFolder((this + 11464), (a2 + 11464), (this + 320));
  OZChannel::OZChannel((this + 11592), (a2 + 11592), (this + 11464));
  *(this + 1449) = &unk_287245C60;
  *(this + 1451) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 11744), (a2 + 11744), (this + 11464));
  OZChannelEnum::OZChannelEnum((this + 12000), (a2 + 12000), (this + 11464));
  OZChannelEnum::OZChannelEnum((this + 12256), (a2 + 12256), (this + 11464));
  OZChannel::OZChannel((this + 12512), (a2 + 12512), (this + 11464));
  *(this + 1564) = &unk_287245C60;
  *(this + 1566) = &unk_287245FC0;
  *(this + 3166) = -1;
  OZChannelFolder::OZChannelFolder((this + 12672), (a2 + 12672), (this + 320));
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 12800), (a2 + 12800), (this + 12672));
  OZChannelPercent::OZChannelPercent((this + 13808), (a2 + 13808), (this + 12672));
  OZChannel::OZChannel((this + 13960), (a2 + 13960), (this + 12672));
  *(this + 1745) = &unk_287245C60;
  *(this + 1747) = &unk_287245FC0;
  OZChannel::OZChannel((this + 14112), a2 + 126, (this + 12672));
  *(this + 1764) = &unk_287245C60;
  *(this + 1766) = &unk_287245FC0;
  OZChannel::OZChannel((this + 14264), (a2 + 14264), (this + 12672));
  *(this + 1783) = &unk_287246030;
  *(this + 1785) = &unk_287246390;
  OZChannelBool::OZChannelBool((this + 14416), (a2 + 14416), (this + 12672));
  OZChannelQuad::OZChannelQuad((this + 14568), (a2 + 14568), (this + 320));
  OZChannelCrop::OZChannelCrop((this + 17520), (a2 + 17520), (this + 320));
  OZChannelFolder::OZChannelFolder((this + 18264), (a2 + 18264), (this + 320));
  *(this + 2299) = *(a2 + 2299);
  *(this + 4600) = *(a2 + 4600);
  *(this + 2301) = this + 18408;
  *(this + 2302) = this + 18408;
  *(this + 2303) = 0;
  PCURL::PCURL(&v12, @"Channel Masks");
  OZChannelFolder::OZChannelFolder((this + 18432), &v12, (this + 56), 0xD7u, 0, 0);
  PCString::~PCString(&v12);
  PCString::PCString(&v12, "Channel Freeze Media");
  OZChanFootageRef::OZChanFootageRef((this + 18560), &v12, (this + 320), 0xDDu, 10);
  PCString::~PCString(&v12);
  PCWorkingColorVector::PCWorkingColorVector((this + 18720));
  *(this + 2342) = *(a2 + 2342);
  *(this + 9372) = *(a2 + 9372);
  *(this + 2345) = 0;
  *(this + 2346) = 0;
  *(this + 2344) = 0;
  OZChannelBase::setFlag((this + 18432), 8, 0);
  LODWORD(v12.var0) = 0;
  ElementBlendModes = PCBlend::getElementBlendModes(&v12, v7);
  OZChannelEnum::setTags((this + 6832), ElementBlendModes, v12.var0);
  OZChannelEnum::setTags((this + 10952), ElementBlendModes, v12.var0);
  if ((a3 & 1) == 0)
  {
    v9 = a2 + 18408;
    if ((a2 + 18408) != *(a2 + 2302))
    {
      do
      {
        v10 = (*(**(*(*v9 + 16) + 8) + 24))(*(*(*v9 + 16) + 8), *(*v9 + 16), a3);
        {
          operator new();
        }

        v9 = *v9;
      }

      while (v9 != *(a2 + 2302));
    }
  }

  if ((*(this + 1024) & 8) != 0)
  {
    OZChannelFolder::removeDescendant((this + 320), (this + 12672));
  }

  if ((a3 & 0xA) == 8)
  {
    OZChanSceneNodeRef::operator=(this + 18560, a2 + 18560);
    *(this + 1170) = *(a2 + 1170);
    return;
  }

  if (OZChannelFolder::testFoldFlag((this + 56), 0x8000))
  {
    v11 = (*this + 816);
  }

  else
  {
    if (!OZChannelBase::testFlag((this + 56), 4))
    {
      return;
    }

    v11 = (*this + 776);
  }

  (*v11)(this);
}

void sub_2600B3AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, OZChannel *a9, OZChannel *a10, OZChannel *a11, OZChannel *a12, OZChannel *a13, OZChannel *a14, OZChannel *a15, OZChannel *a16, OZChannel *a17, OZChannel *a18, OZChannelBase *a19, PCString a20)
{
  v24 = *(v20 + 18768);
  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  v25 = *(v20 + 18760);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  OZChanFootageRef::~OZChanFootageRef((v20 + 18560));
  OZChannelFolder::~OZChannelFolder((v20 + v21));
  std::__list_imp<unsigned int>::clear(v22);
  OZChannelFolder::~OZChannelFolder((v20 + 18264));
  OZChannelCrop::~OZChannelCrop((v20 + 17520));
  OZChannelQuad::~OZChannelQuad((v20 + 14568));
  OZChannelBool::~OZChannelBool((v20 + 14416));
  OZChannel::~OZChannel(a9);
  OZChannel::~OZChannel(a10);
  OZChannel::~OZChannel(a11);
  OZChannelPercent::~OZChannelPercent((v20 + 13808));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v20 + 12800));
  OZChannelFolder::~OZChannelFolder((v20 + 12672));
  OZChannel::~OZChannel(a12);
  OZChannelEnum::~OZChannelEnum((v20 + 12256));
  OZChannelEnum::~OZChannelEnum((v20 + 12000));
  OZChannelEnum::~OZChannelEnum((v20 + 11744));
  OZChannel::~OZChannel(a13);
  OZChannelFolder::~OZChannelFolder((v20 + 11464));
  OZChannelEnum::~OZChannelEnum((v20 + 11208));
  OZChannelEnum::~OZChannelEnum((v20 + 10952));
  OZChannel::~OZChannel(a14);
  OZChannel::~OZChannel(a15);
  OZChannel::~OZChannel(a16);
  OZChannelFolder::~OZChannelFolder((v20 + 10368));
  OZChannel::~OZChannel(a17);
  OZChannelPercent::~OZChannelPercent((v20 + 10064));
  OZChannelFolder::~OZChannelFolder((v20 + 9936));
  OZFolderElementShadows::~OZFolderElementShadows((v20 + 9352));
  OZLightingFolder::~OZLightingFolder((v20 + 8384));
  OZChannelBool::~OZChannelBool((v20 + 8232));
  OZChannelPercent::~OZChannelPercent((v20 + 8080));
  OZChannelEnum::~OZChannelEnum((v20 + 7824));
  OZChannelPercent::~OZChannelPercent((v20 + 7672));
  OZChannelPercent::~OZChannelPercent((v20 + 7520));
  OZChannelPercent::~OZChannelPercent((v20 + 7368));
  OZChannel::~OZChannel(a18);
  OZChannelFolder::~OZChannelFolder((v20 + 7088));
  OZChannelBlendMode::~OZChannelBlendMode((v20 + 6832));
  OZChannelPercent::~OZChannelPercent((v20 + 6680));
  OZChannelFolder::~OZChannelFolder((v20 + 6552));
  OZChannelBase::setRangeName(a19, v26);
  OZTransformNode::~OZTransformNode(v20);
  _Unwind_Resume(a1);
}

void OZElement::~OZElement(OZElement *this)
{
  *this = &unk_28727F1B0;
  *(this + 2) = &unk_28727FA88;
  *(this + 6) = &unk_28727FCE0;
  v2 = (this + 6528);
  *(this + 816) = &unk_28727FD38;
  for (i = *(this + 2303); i; i = *(this + 2303))
  {
    v4 = *(this + 2302);
    v5 = v4[1];
    v6 = v4[2];
    v7 = *v4;
    *(v7 + 8) = v5;
    *v5 = v7;
    *(this + 2303) = i - 1;
    operator delete(v4);
    v8 = (*(*v6 + 640))(v6);
    OZChannelFolder::removeDescendant((this + 18432), v8);
    v9 = *(this + 121);
    if (v9)
    {
      OZScene::unregisterNode(v9, v6);
      OZScene::removeAllDependencies(*(this + 121), v6);
    }

    (*(*v6 + 8))(v6);
  }

  v10 = *(this + 2346);
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = *(this + 2345);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  OZChanFootageRef::~OZChanFootageRef((this + 18560));
  OZChannelFolder::~OZChannelFolder((this + 18432));
  std::__list_imp<unsigned int>::clear(this + 2301);
  OZChannelFolder::~OZChannelFolder((this + 18264));
  OZChannelCrop::~OZChannelCrop((this + 17520));
  OZChannelQuad::~OZChannelQuad((this + 14568));
  OZChannelBool::~OZChannelBool((this + 14416));
  OZChannel::~OZChannel((this + 14264));
  OZChannel::~OZChannel((this + 14112));
  OZChannel::~OZChannel((this + 13960));
  OZChannelPercent::~OZChannelPercent((this + 13808));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 12800));
  OZChannelFolder::~OZChannelFolder((this + 12672));
  OZChannel::~OZChannel((this + 12512));
  OZChannelEnum::~OZChannelEnum((this + 12256));
  OZChannelEnum::~OZChannelEnum((this + 12000));
  OZChannelEnum::~OZChannelEnum((this + 11744));
  OZChannel::~OZChannel((this + 11592));
  OZChannelFolder::~OZChannelFolder((this + 11464));
  OZChannelEnum::~OZChannelEnum((this + 11208));
  OZChannelEnum::~OZChannelEnum((this + 10952));
  OZChannel::~OZChannel((this + 10800));
  OZChannel::~OZChannel((this + 10648));
  OZChannel::~OZChannel((this + 10496));
  OZChannelFolder::~OZChannelFolder((this + 10368));
  OZChannel::~OZChannel((this + 10216));
  OZChannelPercent::~OZChannelPercent((this + 10064));
  OZChannelFolder::~OZChannelFolder((this + 9936));
  OZFolderElementShadows::~OZFolderElementShadows((this + 9352));
  OZLightingFolder::~OZLightingFolder((this + 8384));
  OZChannelBool::~OZChannelBool((this + 8232));
  OZChannelPercent::~OZChannelPercent((this + 8080));
  OZChannelEnum::~OZChannelEnum((this + 7824));
  OZChannelPercent::~OZChannelPercent((this + 7672));
  OZChannelPercent::~OZChannelPercent((this + 7520));
  OZChannelPercent::~OZChannelPercent((this + 7368));
  OZChannel::~OZChannel((this + 7216));
  OZChannelFolder::~OZChannelFolder((this + 7088));
  OZChannelBlendMode::~OZChannelBlendMode((this + 6832));
  OZChannelPercent::~OZChannelPercent((this + 6680));
  OZChannelFolder::~OZChannelFolder((this + 6552));
  OZChannelBase::setRangeName(v2, v12);

  OZTransformNode::~OZTransformNode(this);
}

uint64_t OZElement::operator=(uint64_t a1, const void *a2)
{
  OZTransformNode::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  v6 = v4 + 18400;
  OZChannelFolder::operator=(a1 + 6552);
  OZChannelBase::operator=(a1 + 6680, (v5 + 6680));
  OZChannelBase::operator=(a1 + 6832, (v5 + 6832));
  OZChannelFolder::operator=(a1 + 7088);
  OZChannelBase::operator=(a1 + 7824, (v5 + 7824));
  OZChannelBase::operator=(a1 + 7216, (v5 + 7216));
  OZChannelBase::operator=(a1 + 7368, (v5 + 7368));
  OZChannelBase::operator=(a1 + 7520, (v5 + 7520));
  OZChannelBase::operator=(a1 + 7672, (v5 + 7672));
  OZChannelBase::operator=(a1 + 8080, (v5 + 8080));
  OZChannelBase::operator=(a1 + 8232, (v5 + 8232));
  OZChannelBase::operator=(a1 + 10064, (v5 + 10064));
  OZChannelFolder::operator=(a1 + 9936);
  OZChannelBase::operator=(a1 + 10064, (v5 + 10064));
  OZChannelBase::operator=(a1 + 10216, (v5 + 10216));
  OZChannelFolder::operator=(a1 + 10368);
  OZChannelBase::operator=(a1 + 10496, (v5 + 10496));
  OZChannelBase::operator=(a1 + 10648, (v5 + 10648));
  OZChannelBase::operator=(a1 + 10800, (v5 + 10800));
  OZChannelBase::operator=(a1 + 10952, (v5 + 10952));
  OZChannelFolder::operator=(a1 + 11464);
  OZChannelBase::operator=(a1 + 11592, (v5 + 11592));
  OZChannelBase::operator=(a1 + 11744, (v5 + 11744));
  OZChannelBase::operator=(a1 + 12000, (v5 + 12000));
  OZChannelBase::operator=(a1 + 12256, (v5 + 12256));
  OZChannelBase::operator=(a1 + 12512, (v5 + 12512));
  OZChannelFolder::operator=(a1 + 12672);
  OZChannelFolder::operator=(a1 + 12800);
  OZChannelBase::operator=(a1 + 12936, (v5 + 12936));
  OZChannelBase::operator=(a1 + 13088, (v5 + 13088));
  OZChannelBase::operator=(a1 + 13240, (v5 + 13240));
  OZChannelBase::operator=(a1 + 13392, (v5 + 13392));
  OZChannelBase::operator=(a1 + 13544, (v5 + 13544));
  *(a1 + 13800) = v5[13800];
  OZChannelBase::operator=(a1 + 13808, (v5 + 13808));
  OZChannelBase::operator=(a1 + 13960, (v5 + 13960));
  OZChannelBase::operator=(a1 + 14112, (v5 + 14112));
  OZChannelBase::operator=(a1 + 14264, (v5 + 14264));
  OZChannelBase::operator=(a1 + 14416, (v5 + 14416));
  OZChannelFolder::operator=(a1 + 14568);
  OZChannelPosition::operator=(a1 + 14704, (v5 + 14704));
  OZChannelPosition::operator=(a1 + 15408, (v5 + 15408));
  OZChannelPosition::operator=(a1 + 16112, (v5 + 16112));
  OZChannelPosition::operator=(a1 + 16816, (v5 + 16816));
  OZChannelFolder::operator=(a1 + 17520);
  OZChannelBase::operator=(a1 + 17656, (v5 + 17656));
  OZChannelBase::operator=(a1 + 17808, (v5 + 17808));
  OZChannelBase::operator=(a1 + 17960, (v5 + 17960));
  OZChannelBase::operator=(a1 + 18112, (v5 + 18112));
  OZChannelFolder::operator=(a1 + 18264);
  *(a1 + 18392) = *(v5 + 2299);
  *(a1 + 18400) = *v6;
  OZChanSceneNodeRef::operator=(a1 + 18560, (v5 + 18560));
  *(a1 + 18720) = *(v5 + 1170);
  OZLightingFolder::operator=(a1 + 8384, (v5 + 8384));
  result = OZFolderElementShadows::operator=(a1 + 9352, (v5 + 9352));
  *(a1 + 18744) = *(v6 + 172);
  return result;
}

CGColorSpace **OZElement::copyAtTime(OZElement *this, const OZSceneNode *a2, CMTime *a3)
{
  v4 = a2;
  *&v54.var0.var0 = *&a3->value;
  *&v54.var0.var1[1] = a3->epoch;
  v6.n128_f64[0] = OZTransformNode::copyAtTime(this, a2, &v54);
  if (v4)
  {
  }

  v7 = (*(*v4 + 1608))(v4, v6);
  OZChannelBase::enable((this + 17520), v7, 0);
  v8 = (*(*v4 + 1600))(v4);
  OZChannelBase::enable((this + 14568), v8, 0);
  v9 = (*(*v4 + 1624))(v4);
  (*(*this + 1744))(this, v9, v55);
  isEnabled = OZChannelBase::isEnabled((v4 + 9936), 0, 1);
  OZChannelBase::enable((this + 9936), isEnabled, 0);
  OZChannelBase::reset((this + 6680), 0);
  OZChannelBase::reset(this + 61, 0);
  OZChannelBase::reset((this + 7824), 0);
  OZChannelBase::reset((this + 7216), 0);
  OZChannelBase::reset((this + 7368), 0);
  OZChannelBase::reset((this + 7520), 0);
  OZChannelBase::reset((this + 7672), 0);
  OZChannelBase::reset((this + 8080), 0);
  OZChannelBase::reset((this + 8232), 0);
  OZChannelBase::reset((this + 10064), 0);
  OZChannelBase::reset((this + 10216), 0);
  OZChannelBase::reset((this + 10496), 0);
  OZChannelBase::reset((this + 10648), 0);
  OZChannelBase::reset((this + 10800), 0);
  OZChannelBase::reset((this + 10952), 0);
  OZChannelBase::reset((this + 12800), 0);
  OZChannelBase::reset((this + 13808), 0);
  OZChannelBase::reset((this + 13960), 0);
  OZChannelBase::reset(this + 126, 0);
  OZChannelBase::reset((this + 14264), 0);
  OZChannelBase::reset((this + 14416), 0);
  OZChannelBase::reset((this + 14568), 0);
  OZChannelBase::reset((this + 17520), 0);
  OZLightingFolder::reset((this + 8384), 0);
  OZChannel::getValueAsDouble((v4 + 6680), a3, 0.0);
  OZChannel::setValue((this + 6680), a3, v11, 0);
  OZChannel::getValueAsDouble((v4 + 6832), a3, 0.0);
  OZChannel::setValue((this + 6832), a3, v12, 0);
  OZChannel::getValueAsDouble((v4 + 7824), a3, 0.0);
  OZChannel::setValue((this + 7824), a3, v13, 0);
  OZChannel::getValueAsDouble((v4 + 7216), a3, 0.0);
  OZChannel::setValue((this + 7216), a3, v14, 0);
  OZChannel::getValueAsDouble((v4 + 7368), a3, 0.0);
  OZChannel::setValue((this + 7368), a3, v15, 0);
  OZChannel::getValueAsDouble((v4 + 7520), a3, 0.0);
  OZChannel::setValue((this + 7520), a3, v16, 0);
  OZChannel::getValueAsDouble((v4 + 7672), a3, 0.0);
  OZChannel::setValue((this + 7672), a3, v17, 0);
  OZChannel::getValueAsDouble((v4 + 8080), a3, 0.0);
  OZChannel::setValue((this + 8080), a3, v18, 0);
  OZChannel::getValueAsDouble((v4 + 8232), a3, 0.0);
  OZChannel::setValue((this + 8232), a3, v19, 0);
  OZChannel::getValueAsDouble((v4 + 10064), a3, 0.0);
  OZChannel::setValue((this + 10064), a3, v20, 0);
  OZChannel::getValueAsDouble((v4 + 10216), a3, 0.0);
  OZChannel::setValue((this + 10216), a3, v21, 0);
  v22 = OZChannelBase::isEnabled((v4 + 10368), 1, 1);
  OZChannelBase::enable((this + 10368), v22, 0);
  OZChannel::getValueAsDouble((v4 + 10496), a3, 0.0);
  OZChannel::setValue((this + 10496), a3, v23, 0);
  OZChannel::getValueAsDouble((v4 + 10648), a3, 0.0);
  OZChannel::setValue((this + 10648), a3, v24, 0);
  OZChannel::getValueAsDouble((v4 + 10800), a3, 0.0);
  OZChannel::setValue((this + 10800), a3, v25, 0);
  ValueAsInt = OZChannel::getValueAsInt((v4 + 10952), a3, 0.0);
  OZChannel::setValue((this + 10952), a3, ValueAsInt, 0);
  v27 = OZChannel::getValueAsInt((v4 + 11592), a3, 0.0);
  OZChannel::setValue((this + 11592), a3, v27, 0);
  v28 = OZChannel::getValueAsInt((v4 + 11744), a3, 0.0);
  OZChannel::setValue((this + 11744), a3, v28, 0);
  v29 = OZChannel::getValueAsInt((v4 + 12000), a3, 0.0);
  OZChannel::setValue((this + 12000), a3, v29, 0);
  v30 = OZChannel::getValueAsInt((v4 + 12256), a3, 0.0);
  OZChannel::setValue((this + 12256), a3, v30, 0);
  v31 = OZChannel::getValueAsInt((v4 + 12512), a3, 0.0);
  OZChannel::setValue((this + 12512), a3, v31, 0);
  PCColor::PCColor(&v54);
  OZChannelColorNoAlpha::getColor((v4 + 12800), a3, &v54, 0.0);
  OZChannelColorNoAlpha::setColor((this + 12800), a3, &v54, 0);
  OZChannel::getValueAsDouble((v4 + 13808), a3, 0.0);
  OZChannel::setValue((this + 13808), a3, v32, 0);
  OZChannel::getValueAsDouble((v4 + 13960), a3, 0.0);
  OZChannel::setValue((this + 13960), a3, v33, 0);
  OZChannel::getValueAsDouble((v4 + 14112), a3, 0.0);
  OZChannel::setValue((this + 14112), a3, v34, 0);
  OZChannel::getValueAsDouble((v4 + 14264), a3, 0.0);
  OZChannel::setValue((this + 14264), a3, v35, 0);
  OZChannel::getValueAsDouble((v4 + 14416), a3, 0.0);
  OZChannel::setValue((this + 14416), a3, v36, 0);
  OZChannel::getValueAsDouble((v4 + 14840), a3, 0.0);
  v38 = v37;
  OZChannel::getValueAsDouble((v4 + 14992), a3, 0.0);
  OZChannelPosition::setPosition((this + 14704), a3, v38, v39, 0);
  OZChannel::getValueAsDouble((v4 + 15544), a3, 0.0);
  v41 = v40;
  OZChannel::getValueAsDouble((v4 + 15696), a3, 0.0);
  OZChannelPosition::setPosition((this + 15408), a3, v41, v42, 0);
  OZChannel::getValueAsDouble((v4 + 16248), a3, 0.0);
  v44 = v43;
  OZChannel::getValueAsDouble((v4 + 16400), a3, 0.0);
  OZChannelPosition::setPosition((this + 16112), a3, v44, v45, 0);
  OZChannel::getValueAsDouble((v4 + 16952), a3, 0.0);
  v47 = v46;
  OZChannel::getValueAsDouble((v4 + 17104), a3, 0.0);
  OZChannelPosition::setPosition((this + 16816), a3, v47, v48, 0);
  v52 = 0.0;
  v53 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  OZChannelCrop::getValue((v4 + 17520), a3, &v53, &v52, &v51, &v50, 0.0);
  OZChannelCrop::setValue((this + 17520), a3, v53, v52, v51, v50);
  *(this + 2299) = *(v4 + 2299);
  *(this + 4600) = *(v4 + 4600);
  OZChanSceneNodeRef::operator=(this + 18560, v4 + 18560);
  *(this + 1170) = *(v4 + 1170);
  (*(*(this + 1048) + 712))();
  (*(*(this + 1169) + 720))(this + 9352, v4 + 9352, a3);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v54.var1._obj);
}

void sub_2600B4FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t OZElement::isLit(OZElement *this, const OZRenderParams *a2)
{
  if (*(a2 + 514) != 1)
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v9 = *a2;
  result = OZChannel::getValueAsInt(this + 56, &v9, 0.0);
  if (result == 2)
  {
    return 0;
  }

  if (result == 1)
  {
    return result;
  }

  if (result)
  {
    return 0;
  }

  v7 = *(this + 120);
  {
    return (*(*v8 + 1840))(v8, a2);
  }

  else
  {
    return 1;
  }
}

const void *OZElement::getFreezeFootage(OZElement *this)
{
  result = OZChanSceneNodeRef::getNode((this + 18560));
  if (result)
  {
  }

  return result;
}

uint64_t OZElement::hasEnabledMasks(OZElement *this)
{
  if ((*(this + 1024) & 4) != 0)
  {
    return 0;
  }

  v1 = this + 18408;
  v2 = *(this + 2302);
  if (v2 == (this + 18408))
  {
    return 0;
  }

  do
  {
    result = (*(*(*(v2 + 16) + 16) + 24))();
    if (result)
    {
      break;
    }

    v2 = *(v2 + 8);
  }

  while (v2 != v1);
  return result;
}

uint64_t OZElement::hasActiveMasks(OZElement *this, const OZRenderState *a2)
{
  v2 = this + 18408;
  v3 = *(this + 2302);
  if (v3 == (this + 18408))
  {
    return 0;
  }

  do
  {
    v5 = *(v3 + 16);
    var3 = a2->var0.var3;
    v7 = *&a2->var0.var0;
    result = (*(*(v5 + 16) + 104))(v5 + 16, &v7, 0);
    if (result)
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  while (v3 != v2);
  return result;
}

uint64_t OZElement::hasStencilMask(OZElement *this)
{
  if ((*(this + 1024) & 4) != 0)
  {
    return 0;
  }

  v1 = this + 18408;
  v2 = *(this + 2302);
  if (v2 == (this + 18408))
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    v5 = !(*(v3[2] + 24))(v3 + 2, 0, 1) || v4 == 0;
    if (!v5 && ((*(*v4 + 1248))(v4) & 1) != 0)
    {
      break;
    }

    v2 = *(v2 + 8);
    if (v2 == v1)
    {
      return 0;
    }
  }

  return 1;
}

void OZElement::addMaskAfter(OZElement *this, OZSceneNode *a2, OZSceneNode *a3)
{
  if (a3)
  {
    v3 = this + 18408;
    for (i = *(this + 2302); ; i = *(i + 8))
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

void OZElement::addMaskBefore(OZElement *this, OZSceneNode *a2, OZSceneNode *a3)
{
  if (a3)
  {
      ;
    }
  }

  operator new();
}

OZChannelFolder *OZElement::removeMask(OZElement *this, OZSceneNode *a2)
{
  v4 = (this + 18408);
  for (i = *(this + 2302); i != v4; i = i[1])
  {
    if (i[2] == a2)
    {
      if (i != v4)
      {
        (*(*a2 + 256))(a2, 0);
        (*(*a2 + 1048))(a2);
        v7 = *i;
        v6 = i[1];
        *(v7 + 1) = v6;
        *v6 = v7;
        --*(this + 2303);
        operator delete(i);
        v8 = *(this + 121);
        if (v8)
        {
          OZScene::unregisterNode(v8, a2);
          OZScene::removeAllDependencies(*(this + 121), a2);
        }
      }

      break;
    }
  }

  v9 = (*(*a2 + 640))(a2);

  return OZChannelFolder::removeDescendant((this + 18432), v9);
}

uint64_t OZElement::getMasks(uint64_t a1)
{
  v2 = (*(*a1 + 1104))(a1);
  result = (*(*a1 + 1112))(a1);
  if (v2 != result)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      {
        operator new();
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    PCAssertionException::PCAssertionException(exception);
  }

  return result;
}

OZChannelBase *OZElement::setIsMask(OZElement *this)
{
  OZSceneNode::setIsMask(this);
  if (*(this + 1590))
  {
    OZChannelFolder::removeDescendant((this + 320), (this + 12672));
  }

  return OZChannelBase::setFlag((this + 11208), 2, 0);
}

char *OZElement::clearIsMask(OZElement *this)
{
  result = OZSceneNode::clearIsMask(this);
  if (!*(this + 1590))
  {

    return OZChannelFolder::insertDescendantAfter((this + 320), (this + 6552), (this + 12672));
  }

  return result;
}

void OZElement::getImageBoundsWithDropShadow(uint64_t a1, float64x2_t *a2, const CMTime *a3)
{
  (*(*a1 + 1488))(a1);

  OZElement::expandBoundsToIncludeDropShadow(a1, a2, a3);
}

void OZElement::expandBoundsToIncludeDropShadow(uint64_t a1, float64x2_t *a2, const CMTime *a3)
{
  if (OZChannelBase::isEnabled((a1 + 12672), 0, 1))
  {
    v6 = a2[1];
    v34[0] = *a2;
    v34[1] = v6;
    OZChannel::getValueAsDouble((a1 + 14112), a3, 0.0);
    v14 = v7;
    OZChannel::getValueAsDouble((a1 + 14264), a3, 0.0);
    v9 = v8;
    if (OZChannel::getValueAsInt((a1 + 14416), a3, 0.0))
    {
      OZRenderState::OZRenderState(&v33);
      *&v33.var0.var0 = *&a3->value;
      v33.var0.var3 = a3->epoch;
      v31 = 0;
      v32 = 0.0;
      v30 = 0;
      (*(*a1 + 1312))(a1, &v32, &v31, &v30, &v33, 1);
      v29 = 0x3FF0000000000000;
      v26 = 0x3FF0000000000000;
      v23 = 0x3FF0000000000000;
      v20 = 0x3FF0000000000000;
      v10 = v14;
      if (v32 > 0.0)
      {
        v10 = v14 / v32;
      }

      v14 = v10;
      v21 = 0u;
      v22 = 0u;
      v24 = 0u;
      v25 = 0u;
      v27 = 0u;
      v28 = 0u;
      (*(*a1 + 1256))(a1, &v20, &v33);
      memset(v15, 0, sizeof(v15));
      v16 = 4;
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
      PCMatrix44Tmpl<double>::getTransformation(&v20, v15);
    }

    OZChannel::getValueAsDouble((a1 + 13960), a3, 0.0);
    if (v11.f64[0] > 0.0)
    {
      PGImaging::gaussianBlurRect(0, a2, v34, v11);
    }

    v13 = __sincos_stret(v9);
    v12.f64[0] = v13.__cosval;
    v12.f64[1] = v13.__sinval;
    v34[0] = vaddq_f64(vmulq_n_f64(v12, v14), v34[0]);
    PCRect<double>::operator|=(a2, v34);
  }
}

void *OZElement::hitCheck(void *a1, float32x2_t *a2, uint64_t a3, uint64_t a4, float64x2_t *a5, char a6)
{
  v11 = a1;
  v52 = *MEMORY[0x277D85DE8];
  if (a6 & 4) != 0 && ((*(*a1 + 680))(a1))
  {
    return 0;
  }

  if ((a6 & 2) != 0)
  {
    *v41 = *a3;
    *&v41[16] = *(a3 + 16);
    if (!(*(v11[2] + 104))(v11 + 2, v41, 1, 1, 1))
    {
      return 0;
    }
  }

  v50 = 0u;
  v51 = 0u;
  memset(v49, 0, sizeof(v49));
  v12 = (*(*v11 + 1600))(v11);
  v13 = *(a3 + 56) == v11 ? 0 : v12;
  if (v13 == 1)
  {
    (*(*v11 + 1720))(v11, a3, &v50, &v49[2], &v49[1], v49);
  }

  else
  {
    *v41 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v41[16] = _Q0;
    (*(*v11 + 1488))(v11, v41, a3);
    *&v49[0] = *v41;
    v18 = vaddq_f64(*v41, *&v41[16]);
    *(&v49[1] + 8) = vextq_s8(v18, v18, 8uLL);
    *(v49 + 8) = *(&v49[1] + 8);
    *(&v49[2] + 1) = *&v41[8];
    v50 = *v41;
  }

  v51 = v49[0];
  v48 = 0x3FF0000000000000;
  v45 = 0x3FF0000000000000;
  v42 = 0x3FF0000000000000;
  *v41 = 0x3FF0000000000000;
  memset(&v41[8], 0, 32);
  v43 = 0u;
  v44 = 0u;
  v46 = 0u;
  v47 = 0u;
  (*(*v11 + 1256))(v11, v41, a3);
  v39 = vcvtq_f64_f32(*a2);
  v40 = 0;
  (*(*v11 + 1384))(v36, v11, &v39, a4, a3, 0);
  v19 = vmulq_f64(v38, v38);
  if (fabs(v37 * v37 + v19.f64[0] + v19.f64[1]) < 0.0000001)
  {
    return 0;
  }

  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v35 = 0xBFF0000000000000;
  if (!PCIntersectRayWithPlane(v36, v33, a5))
  {
    v31[0] = *v49;
    v31[1] = *&v49[1];
    v31[2] = *(&v49[2] + 1);
    v31[3] = *(v49 + 1);
    v32 = xmmword_26084FC00;
    if (PCRayIntersectsBox(v36, v31, a5))
    {
      PCMatrix44Tmpl<double>::transform<double>(v41, a5->f64, a5->f64);
      return v11;
    }

    return 0;
  }

  v20 = 0;
  v21 = 0;
  v22 = a5->f64[1];
  v23 = v49 + 1;
  LODWORD(v24) = 4;
  do
  {
    v25 = v24;
    v24 = v20;
    v26 = *v23;
    v27 = *(&v49[v25] + 1);
    _NF = *v23 <= v22 && v22 < v27;
    if (_NF || (v22 < v26 ? (v29 = v27 > v22) : (v29 = 1), !v29))
    {
      if (a5->f64[0] < *(v23 - 1) + (v22 - v26) * (*&v49[v25] - *(v23 - 1)) / (*(&v49[v25] + 1) - v26))
      {
        v21 ^= 1u;
      }
    }

    ++v20;
    v23 += 2;
  }

  while (v24 != 4);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  PCMatrix44Tmpl<double>::transform<double>(v41, a5->f64, a5->f64);
  return v11;
}

BOOL OZElement::hitCheck(uint64_t a1, double *a2, uint64_t a3, const LiCamera *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  memset(v42, 0, sizeof(v42));
  *&v39[40] = 0x3FF0000000000000;
  *v39 = 0x3FF0000000000000;
  *&v36[40] = 0x3FF0000000000000;
  *v36 = 0x3FF0000000000000;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  v38 = 0u;
  memset(&v39[8], 0, 32);
  (*(*a1 + 1256))();
  v8 = (*(*a1 + 1600))(a1);
  if (*(a3 + 56) == a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v9 == 1)
  {
    (*(*a1 + 1720))(a1, a3, &v43, &v42[2], &v42[1], v42);
  }

  else
  {
    v34 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v35 = _Q0;
    (*(*a1 + 1488))(a1, &v34, a3);
    *v42 = v34.f64[0];
    v15 = vaddq_f64(v34, v35);
    *(&v42[1] + 8) = vextq_s8(v15, v15, 8uLL);
    *(v42 + 8) = *(&v42[1] + 8);
    *(&v42[2] + 1) = *&v34.f64[1];
    v43 = v34;
  }

  v16 = (*(*a1 + 272))(a1);
  OZScene::calcWorldToFilmSpaceMatrixForCamera(v16, a4, &v34);
  v30 = v38;
  v31 = *v39;
  v32 = *&v39[16];
  v33 = *&v39[32];
  v26 = *v36;
  v27 = *&v36[16];
  v28 = *&v36[32];
  v29 = v37;
  PCMatrix44Tmpl<double>::leftMult(&v26, v34.f64);
  v17 = *(&v33 + 1) + *v42 * *&v32 + *(v42 + 1) * *(&v32 + 1);
  v18 = (*(&v29 + 1) + *v42 * *&v28 + *(v42 + 1) * *(&v28 + 1)) / v17;
  *v42 = (*(&v27 + 1) + *v42 * *&v26 + *(v42 + 1) * *(&v26 + 1)) / v17;
  *(v42 + 1) = v18;
  v19 = *&v42[1];
  v20 = *(&v33 + 1) + *&v32 * *&v42[1] + *(&v32 + 1) * *(&v42[1] + 1);
  *&v42[1] = (*(&v27 + 1) + *&v26 * *&v42[1] + *(&v26 + 1) * *(&v42[1] + 1)) / v20;
  *(&v42[1] + 1) = (*(&v29 + 1) + *&v28 * v19 + *(&v28 + 1) * *(&v42[1] + 1)) / v20;
  v21 = *&v42[2];
  v22 = *(&v33 + 1) + *&v32 * *&v42[2] + *(&v32 + 1) * *(&v42[2] + 1);
  *&v42[2] = (*(&v27 + 1) + *&v26 * *&v42[2] + *(&v26 + 1) * *(&v42[2] + 1)) / v22;
  *(&v42[2] + 1) = (*(&v29 + 1) + *&v28 * v21 + *(&v28 + 1) * *(&v42[2] + 1)) / v22;
  v23 = *(&v33 + 1) + *&v32 * v43.f64[0] + *(&v32 + 1) * v43.f64[1];
  v24 = *(&v29 + 1) + *&v28 * v43.f64[0] + *(&v28 + 1) * v43.f64[1];
  v43.f64[0] = (*(&v27 + 1) + *&v26 * v43.f64[0] + *(&v26 + 1) * v43.f64[1]) / v23;
  v43.f64[1] = v24 / v23;
  v40 = v42[1];
  v41 = v42[0];
  if (PCRect<double>::clipLine(a2, &v41, v40.f64))
  {
    return 1;
  }

  v40 = v42[2];
  v41 = v42[1];
  if (PCRect<double>::clipLine(a2, &v41, v40.f64))
  {
    return 1;
  }

  v40 = v43;
  v41 = v42[2];
  if (PCRect<double>::clipLine(a2, &v41, v40.f64))
  {
    return 1;
  }

  v40 = v42[0];
  v41 = v43;
  return PCRect<double>::clipLine(a2, &v41, v40.f64);
}

uint64_t OZElement::getDescendantAtIndex(OZElement *this, int a2)
{
  if (!*(this + 2303))
  {
    return OZSceneNode::getDescendantAtIndex(this, a2);
  }

  v2 = this + 18408;
  v3 = *(this + 2302);
  v4 = v3 != this + 18408;
  if (v3 != this + 18408 && a2 != 0)
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
    return OZSceneNode::getDescendantAtIndex(this, a2);
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

uint64_t OZElement::canIsolateInViewer(OZElement *this)
{
  result = (*(*this + 272))(this);
  if (result)
  {
    v3 = (*(*this + 272))(this);
    result = OZScene::has3DObjects(v3, 0);
    if (result)
    {
      return (*(this + 1024) & 8) == 0;
    }
  }

  return result;
}

uint64_t OZElement::writeBody(OZElement *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZElementScope);
  v10 = *(this + 4598);
  if (v10)
  {
    (*(*a2 + 16))(a2, 400);
    (*(*a2 + 56))(a2, v10);
    (*(*a2 + 24))(a2);
  }

  if (*&vorr_s8(*(this + 18720), *&vextq_s8(*(this + 1170), *(this + 1170), 8uLL)) && ((*(*a2 + 232))(a2) & 1) == 0)
  {
    PCHash128::getString((this + 18720), &v16);
    (*(*a2 + 16))(a2, 401);
    (*(*a2 + 104))(a2, &v16);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v16);
  }

  PCSerializerWriteStream::popScope(a2);
  if (a4)
  {
    for (i = *(this + 2302); i != (this + 18408); i = *(i + 8))
    {
      v12 = *(i + 16);
      if (!OZChannelBase::testFlag((v12 + 56), 8))
      {
        v14 = *(v12 + 48);
        v13 = v12 + 48;
        (*(v14 + 16))(v13, a2, 0);
        (*(*v13 + 24))(v13, a2, 0, 1, a5);
        (*(*a2 + 24))(a2);
      }
    }
  }

  return OZTransformNode::writeBody(this, a2, a3, a4, a5);
}

uint64_t OZElement::parseBegin(OZElement *this, PCSerializerReadStream *a2)
{
  *(this + 4598) = 0;
  DefaultValue = OZChannel::getDefaultValue((this + 11592));
  OZChannel::setValue((this + 11592), MEMORY[0x277CC08F0], DefaultValue, 0);
  OZTransformNode::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZElementScope);
  *(this + 2342) = *(a2 + 13);
  return 1;
}

uint64_t OZElement::parseEnd(OZElement *this, PCSerializerReadStream *a2)
{
  OZTransformNode::parseEnd(this, a2);
  if (*(this + 124))
  {
    *(*(*(this + 122) + 16) + 24) = this + 6528;
  }

  if (*(a2 + 26) <= 2u)
  {
    (*(*(this + 1745) + 776))(this + 13960, 2.0);
  }

  return 1;
}

uint64_t OZElement::parseElement(OZElement *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v15);
  *v14 = 0;
  OZTransformNode::parseElement(this, a2, a3);
  v6 = *(a3 + 2);
  switch(v6)
  {
    case 70:
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, v14);
      PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v15);
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v14[1]);
      v7 = OZFactories::lookupFactory(*(theApp + 32), v14[0]);
      if (v7)
      {
        if (v8)
        {
          v9 = (*(*v8 + 168))(v8, &v15, v14[1]);
          v10 = v9;
          if (v9)
          {
            OZChannelBase::setID((v9 + 56), v14[1]);
            (*(*v10 + 256))(v10, this);
            (*(*v10 + 1040))(v10);
            operator new();
          }
        }
      }

      break;
    case 400:
      (*(*a3 + 32))(a3, this + 18392);
      break;
    case 401:
      PCSharedCount::PCSharedCount(&v13);
      (*(*a3 + 16))(a3, &v13);
      PCHash128::PCHash128(&v12, &v13);
      *(this + 1170) = v12;
      PCString::~PCString(&v13);
      break;
  }

  PCString::~PCString(&v15);
  return 1;
}

void sub_2600B6EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12, uint64_t a13, PCString a14)
{
  PCString::~PCString(&a12);
  PCString::~PCString(&a14);
  _Unwind_Resume(a1);
}

uint64_t OZElement::didFinishLoadingIntoScene(OZElement *this)
{
  OZSceneNode::didFinishLoadingIntoScene(this);

  return OZElement::convertOldColorConversionChannels(this);
}

uint64_t OZElement::convertOldColorConversionChannels(OZElement *this)
{
  result = (*(*this + 2240))(this);
  if (!result)
  {
    return result;
  }

  result = OZChannel::getValueAsUint((this + 11592), MEMORY[0x277CC08F0], 0.0);
  if (result != 2)
  {
    if (result != 1)
    {
      return result;
    }

    v3 = 0.0;
    ValueAsUint = OZChannel::getValueAsUint((this + 11744), MEMORY[0x277CC08F0], 0.0);
    v5 = 3.0;
    if (ValueAsUint > 2)
    {
      if (ValueAsUint == 5)
      {
        v5 = 4.0;
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      if (ValueAsUint == 3)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = v5;
      }

      if (ValueAsUint == 3)
      {
        v3 = 1.0;
      }

      else
      {
        v3 = v11;
      }
    }

    else if (ValueAsUint)
    {
      if (ValueAsUint == 2)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 3.0;
      }

      if (ValueAsUint == 2)
      {
        v3 = 1.0;
      }
    }

    else
    {
      v6 = (*(*this + 2232))(this, 3.0);
    }

    OZChannelBase::setFlag((this + 11744), 138, 0);
    v12 = MEMORY[0x277CC08F0];
    OZChannel::setValue((this + 12000), MEMORY[0x277CC08F0], v3, 0);
    v10 = (this + 12256);
    v9 = v12;
    v8 = v6;
    goto LABEL_26;
  }

  ValueAsInt = OZChannel::getValueAsInt((this + 12256), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt >= 2)
  {
    v8 = (ValueAsInt + 1);
    v9 = MEMORY[0x277CC08F0];
    v10 = (this + 12256);
LABEL_26:
    OZChannel::setValue(v10, v9, v8, 0);
  }

  v13 = MEMORY[0x277CC08F0];

  return OZChannel::setValue((this + 11592), v13, 3.0, 0);
}

uint64_t non-virtual thunk toOZElement::didFinishLoadingIntoScene(OZElement *this)
{
  v1 = (this - 16);
  OZSceneNode::didFinishLoadingIntoScene((this - 16));

  return OZElement::convertOldColorConversionChannels(v1);
}

OZElement *OZElement::cachedTexture@<X0>(OZElement *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 2345);
  *a2 = *(this + 2344);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void OZElement::setCachedTexture(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 18752) = v4;
  v5 = *(a1 + 18760);
  *(a1 + 18760) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *(a1 + 18745) = 0;
}

uint64_t OZElement::cachedMetalTexture@<X0>(OZElement *this@<X0>, void *a2@<X8>)
{
  result = *(this + 2346);
  *a2 = result;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t OZElement::setCachedMetalTexture(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 18768);
  result = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
      result = *a2;
    }

    *(a1 + 18768) = result;
    if (result)
    {
      result = (*(*result + 16))(result);
    }
  }

  *(a1 + 18745) = 0;
  return result;
}

OZElement *OZElement::cacheRenders(OZElement *this, int a2)
{
  if (a2 && (*(this + 18744) & 1) == 0)
  {
    *(this + 18745) = 1;
  }

  *(this + 18744) = a2;
  return this;
}

float OZElement::getDimensions(OZElement *this, float *a2, float *a3, const OZRenderState *a4)
{
  v14[0] = 0;
  v14[1] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v15 = _Q0;
  (*(*this + 1488))(this, v14, a4);
  v11 = *(&v15 + 1);
  v12 = *&v15;
  *a2 = v12;
  result = v11;
  *a3 = result;
  return result;
}

float non-virtual thunk toOZElement::getDimensions(OZElement *this, float *a2, float *a3, const OZRenderState *a4)
{
  v14[0] = 0;
  v14[1] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v15 = _Q0;
  (*(*(this - 816) + 1488))(this - 6528, v14, a4);
  v11 = *(&v15 + 1);
  v12 = *&v15;
  *a2 = v12;
  result = v11;
  *a3 = result;
  return result;
}

float64x2_t OZElement::getImageBoundsWithEffectsAndCrop(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 416))(a1))
  {
    (*(**(a1[123] + 16) + 80))(*(a1[123] + 16), a2, a3);
  }

  else
  {
    (*(*a1 + 1520))(a1, a2, a3);
  }

  result.f64[0] = *(a2 + 16);
  if (result.f64[0] >= 0.0)
  {
    result.f64[0] = *(a2 + 24);
    if (result.f64[0] >= 0.0)
    {
      if (*(a3 + 240) == 1)
      {
        OZElement::getMaskBounds(a1, a2, a3, &v23);
        result.f64[0] = v24;
        if (v24 >= 0.0)
        {
          result.f64[0] = v25;
          if (v25 >= 0.0)
          {
            result = PCRect<double>::operator&=(a2, &v23);
          }
        }
      }

      v22 = 0.0;
      v23.f64[0] = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      v7 = 0uLL;
      if (*(a3 + 232) == 1)
      {
        v8 = (*(*a1 + 1608))(a1, result);
        v7 = 0uLL;
        v9 = 0uLL;
        if (v8)
        {
          OZChannelCrop::getValue((a1 + 2190), a3, v23.f64, &v22, &v21, &v20, 0.0);
          v10.f64[0] = v22;
          v11.f64[0] = v23.f64[0];
          v10.f64[1] = v20;
          __asm { FMOV            V2.2D, #0.5 }

          v17 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
          *&v10.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vaddq_f64(v10, _Q2), v17))));
          v18.i64[0] = SLODWORD(v10.f64[0]);
          v18.i64[1] = SHIDWORD(v10.f64[0]);
          v9 = vcvtq_f64_s64(v18);
          v11.f64[1] = v21;
          *&v11.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vaddq_f64(v11, _Q2), v17))));
          v18.i64[0] = SLODWORD(v11.f64[0]);
          v18.i64[1] = SHIDWORD(v11.f64[0]);
          v7 = vcvtq_f64_s64(v18);
        }
      }

      else
      {
        v9 = 0uLL;
      }

      v19 = vsubq_f64(*(a2 + 16), vaddq_f64(v7, v9));
      result = vbicq_s8(v19, vcltzq_f64(v19));
      *a2 = vaddq_f64(v7, *a2);
      *(a2 + 16) = result;
    }
  }

  return result;
}

void OZElement::getMaskBounds(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v29 = _Q0;
  *(a4 + 16) = _Q0;
  if (a1[2303])
  {
    v12 = a1 + 2301;
    v50 = 0x3FF0000000000000;
    v47 = 0x3FF0000000000000;
    v44 = 0x3FF0000000000000;
    v41 = 0x3FF0000000000000;
    v42 = 0u;
    v43 = 0u;
    v45 = 0u;
    v46 = 0u;
    v48 = 0u;
    v49 = 0u;
    (*(*a1 + 1264))(a1, &v41);
    v13 = a1[2302];
    if (v13 != v12)
    {
      v14 = 1;
      do
      {
        v39 = 0uLL;
        v40 = v29;
        v15 = v13[2];
        {
          v17 = v16;
          (*(*v16 + 1200))(v16, &v39, a3);
          if ((*(*v17 + 1248))(v17))
          {
            MaskSource = OZImageMask::getMaskSource(v17);
            if (MaskSource)
            {
            }

            v38 = 0x3FF0000000000000;
            v35 = 0x3FF0000000000000;
            v32 = 0x3FF0000000000000;
            *v30 = 0x3FF0000000000000;
            *&v30[8] = 0u;
            v31 = 0u;
            v33 = 0u;
            v34 = 0u;
            v36 = 0u;
            v37 = 0u;
            (*(*MaskSource + 1256))();
            PCMatrix44Tmpl<double>::transformRect<double>(v30, v39.f64, &v39);
          }

          ValueAsInt = (*(*v17 + 1232))(v17);
        }

        else
        {
          if ((*(v15 + 1024) & 8) == 0 || (v20 = *(v15 + 8), *v30 = xmmword_26084F780, !OZFactory::isKindOfClass(v20, v30)))
          {
            PCMatrix44Tmpl<double>::transformRect<double>(&v41, v39.f64, &v39);
            goto LABEL_16;
          }

          v21 = v13[2];
          if (v21)
          {
          }

          else
          {
            v22 = 0;
          }

          v24 = v22[25];
          v23 = (v22 + 25);
          (*(v24 + 1488))(v23, &v39, a3);
          v38 = 0x3FF0000000000000;
          v35 = 0x3FF0000000000000;
          v32 = 0x3FF0000000000000;
          *v30 = 0x3FF0000000000000;
          *&v30[8] = 0u;
          v31 = 0u;
          v33 = 0u;
          v34 = 0u;
          v36 = 0u;
          v37 = 0u;
          (*(*v23 + 1256))(v23, v30, a3);
          PCMatrix44Tmpl<double>::transformRect<double>(v30, v39.f64, &v39);
          ValueAsInt = OZChannel::getValueAsInt((v23 + 31784), MEMORY[0x277CC08F0], 0.0);
        }

        v25 = ValueAsInt;
        PCMatrix44Tmpl<double>::transformRect<double>(&v41, v39.f64, &v39);
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v27 = v40;
            *a4 = v39;
            *(a4 + 16) = v27;
          }

          else if (v25 == 3)
          {
            PCRect<double>::operator&=(a4, &v39);
          }

          goto LABEL_17;
        }

        if (v25)
        {
          if (v25 == 1)
          {
            if (v14)
            {
              v26 = a2[1];
              *a4 = *a2;
              *(a4 + 16) = v26;
            }

            PCRect<double>::subtract(a4, v39.f64);
          }

          goto LABEL_17;
        }

LABEL_16:
        PCRect<double>::operator|=(a4, &v39);
LABEL_17:
        v14 = 0;
        v13 = v13[1];
      }

      while (v13 != v12);
    }
  }
}

float64x2_t OZElement::getBounds(uint64_t a1, float64x2_t *a2, uint64_t a3)
{
  (*(*a1 + 1560))(a1);
  result.f64[0] = a2[1].f64[0];
  if (result.f64[0] >= 0.0)
  {
    result.f64[0] = a2[1].f64[1];
    if (result.f64[0] >= 0.0)
    {
      if ((*(*a1 + 1600))(a1))
      {
        v7 = *(a3 + 56) == a1;
      }

      else
      {
        v7 = 1;
      }

      if (!v7 && *(a3 + 233) == 1)
      {
        v19 = 0uLL;
        v18 = 0uLL;
        v17 = 0uLL;
        v16 = 0uLL;
        OZElement::getFourCornerPointsInObjectSpace(a1, a3, a2, &v19, v18.f64, &v17, v16.f64);
        v8 = vbslq_s8(vcgtq_f64(v16, v17), v16, v17);
        v9 = vbslq_s8(vcgtq_f64(v8, v18), v8, v18);
        v10 = vbslq_s8(vcgtq_f64(v9, v19), v9, v19);
        v11 = vbslq_s8(vcgtq_f64(v17, v16), v16, v17);
        v12 = vbslq_s8(vcgtq_f64(v18, v11), v11, v18);
        v13 = vbslq_s8(vcgtq_f64(v19, v12), v12, v19);
        v14 = vcgtq_f64(v13, v10);
        v15 = vbslq_s8(v14, v13, v10);
        result = vbslq_s8(v14, v10, v13);
        *a2 = result;
        a2[1] = vsubq_f64(v15, result);
      }
    }
  }

  return result;
}

double OZElement::getFourCornerPointsInObjectSpace(uint64_t a1, CMTime *a2, float64x2_t *a3, float64x2_t *a4, double *a5, float64x2_t *a6, double *a7)
{
  v29 = *a2;
  OZChannel::getValueAsDouble((a1 + 14840), &v29, 0.0);
  v27 = v13;
  OZChannel::getValueAsDouble((a1 + 14992), &v29, 0.0);
  v14.f64[0] = v27;
  v14.f64[1] = v15;
  *a4 = vaddq_f64(v14, *a3);
  OZChannel::getValueAsDouble((a1 + 15544), &v29, 0.0);
  v17 = v16;
  OZChannel::getValueAsDouble((a1 + 15696), &v29, 0.0);
  v18 = a3->f64[1];
  *a5 = v17 + a3->f64[0] + a3[1].f64[0];
  a5[1] = v19 + v18;
  OZChannel::getValueAsDouble((a1 + 16248), &v29, 0.0);
  v28 = v20;
  OZChannel::getValueAsDouble((a1 + 16400), &v29, 0.0);
  v21.f64[0] = v28;
  v21.f64[1] = v22;
  *a6 = vaddq_f64(v21, vaddq_f64(*a3, a3[1]));
  OZChannel::getValueAsDouble((a1 + 16952), &v29, 0.0);
  v24 = v23;
  OZChannel::getValueAsDouble((a1 + 17104), &v29, 0.0);
  result = v25 + a3->f64[1] + a3[1].f64[1];
  *a7 = v24 + a3->f64[0];
  a7[1] = result;
  return result;
}

uint64_t OZElement::getBoundsForLinkBehavior@<X0>(OZElement *this@<X0>, const OZRenderState *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 16) = _Q0;
  return (*(*this + 1480))(this, a3, a2);
}

__n128 PCRect<double>::subtract(uint64_t a1, double *a2)
{
  result.n128_u64[0] = *(a1 + 16);
  if (result.n128_f64[0] < 0.0)
  {
    return result;
  }

  v3 = *(a1 + 24);
  if (v3 < 0.0)
  {
    return result;
  }

  v4 = a2[2];
  if (v4 < 0.0)
  {
    return result;
  }

  v5 = a2[3];
  if (v5 < 0.0)
  {
    return result;
  }

  v6 = *a2;
  v7 = *a1;
  if (*a2 <= *a1)
  {
    v19 = v4 + v6;
    v20 = result.n128_f64[0] + v7;
    v21 = a2[1];
    v9 = *(a1 + 8);
    if (v21 <= v9)
    {
      v22 = v21 + v5;
      v12 = v9 + v3;
      if (v19 >= v20 && v22 >= v12)
      {
        __asm { FMOV            V0.2D, #-1.0 }

        *(a1 + 16) = result;
        return result;
      }

      if (v19 < v20)
      {
        if (v22 < v12)
        {
          return result;
        }

        goto LABEL_11;
      }
    }

    else if (v19 < v20)
    {
      return result;
    }

    if (v21 + v5 > v9 && v21 < v9)
    {
      v25 = v21 + v5;
    }

    else
    {
      v25 = *(a1 + 8);
    }

    v26 = v9 + v3;
    if (v21 + v5 > v26 && v21 < v26)
    {
      v28 = a2[1];
    }

    else
    {
      v28 = v26;
    }

    result.n128_f64[0] = v28 - v25;
    *(a1 + 8) = v25;
    *(a1 + 16) = v20 - v7;
    *(a1 + 24) = result.n128_u64[0];
  }

  else
  {
    v8 = a2[1];
    v9 = *(a1 + 8);
    v10 = v8 > v9;
    v11 = v8 + v5;
    v12 = v9 + v3;
    if (!v10 && v11 >= v12)
    {
LABEL_11:
      v14 = v4 + v6;
      if (v14 > v7 && v6 < v7)
      {
        v16 = v14;
      }

      else
      {
        v16 = *a1;
      }

      v17 = result.n128_f64[0] + v7;
      if (v14 > v17 && v6 < v17)
      {
        v17 = *a2;
      }

      result.n128_f64[0] = v17 - v16;
      *a1 = v16;
      *(a1 + 16) = result.n128_u64[0];
      *(a1 + 24) = v12 - v9;
    }
  }

  return result;
}

BOOL OZElement::getProjectedBounds(OZElement *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v27[0] = 0.0;
  v27[1] = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v28 = _Q0;
  (*(*a1 + 1488))(a1, v27, a4);
  v26 = 0x3FF0000000000000;
  v23 = 0x3FF0000000000000;
  v20 = 0x3FF0000000000000;
  v17 = 0x3FF0000000000000;
  v18 = 0u;
  v19 = 0u;
  v21 = 0u;
  v22 = 0u;
  v24 = 0u;
  v25 = 0u;
  if (OZElement::isOwner360(a1))
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    (*(*a1 + 1312))(a1, &v16, &v15, &v14, a4, 0);
    v18 = 0u;
    v19 = 0u;
    v17 = v16;
    v20 = v15;
    v21 = 0u;
    v22 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0x3FF0000000000000;
    v26 = 0x3FF0000000000000;
  }

  else
  {
    (*(*a1 + 1256))(a1, &v17, a4);
  }

  PCMatrix44Tmpl<double>::leftMult(&v17, a3);
  return PCMatrix44Tmpl<double>::transformRect<double>(&v17, v27, a2);
}

BOOL OZElement::isOwner360(OZElement *this)
{
  v1 = *(this + 120);
  if (!v1)
  {
    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  return OZGroup::is360Group(v2);
}

BOOL OZElement::getDocumentSpaceCorners(void *a1, uint64_t *a2, uint64_t a3)
{
  v23[0] = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v23[1] = _Q0;
  (*(a1[816] + 32))();
  corners<double>(v23, a2);
  v11 = -1431655765 * ((a2[1] - *a2) >> 3);
  if (v11)
  {
    v22 = 0x3FF0000000000000;
    v19 = 0x3FF0000000000000;
    v16 = 0x3FF0000000000000;
    v13 = 0x3FF0000000000000;
    v14 = 0u;
    v15 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 0u;
    v21 = 0u;
    (*(*a1 + 1256))(a1, &v13, a3);
    transform<double>(&v13, a2, a2);
  }

  return v11 != 0;
}

void corners<double>(float64x2_t *a1, uint64_t *a2)
{
  std::vector<PCVector3<double>>::resize(a2, 0);
  if (a1[1].f64[0] >= 0.0 && a1[1].f64[1] >= 0.0)
  {
    std::vector<PCVector3<double>>::reserve(a2, 4uLL);
    v4 = a1->f64[1] + a1[1].f64[1];
    v6.f64[0] = a1->f64[0];
    v6.f64[1] = v4;
    v7 = 0;
    std::vector<PCVector3<double>>::push_back[abi:ne200100](a2, &v6);
    v6 = vaddq_f64(*a1, a1[1]);
    v7 = 0;
    std::vector<PCVector3<double>>::push_back[abi:ne200100](a2, &v6);
    v5 = a1->f64[1];
    v6.f64[0] = a1->f64[0] + a1[1].f64[0];
    v6.f64[1] = v5;
    v7 = 0;
    std::vector<PCVector3<double>>::push_back[abi:ne200100](a2, &v6);
    v6 = *a1;
    v7 = 0;
    std::vector<PCVector3<double>>::push_back[abi:ne200100](a2, &v6);
  }
}

void transform<double>(double *a1, void *a2, void *a3)
{
  v6 = -1431655765 * ((a2[1] - *a2) >> 3);
  std::vector<PCVector3<double>>::resize(a3, v6);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 & 0x7FFFFFFF;
    do
    {
      PCMatrix44Tmpl<double>::transform<double>(a1, (*a2 + v7), (*a3 + v7));
      v7 += 24;
      --v8;
    }

    while (v8);
  }
}

BOOL OZElement::getDocumentSpaceBoundary(void *a1, _OWORD *a2, uint64_t a3)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  DocumentSpaceCorners = OZElement::getDocumentSpaceCorners(a1, &__p, a3);
  if (DocumentSpaceCorners)
  {
    bounds<double>(&__p, a2);
  }

  else
  {
    a2[1] = xmmword_2603429E0;
    a2[2] = xmmword_2603429E0;
    *a2 = xmmword_2603429E0;
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return DocumentSpaceCorners;
}

void sub_2600B8420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *bounds<double>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  *(a2 + 16) = xmmword_2603429E0;
  *(a2 + 32) = xmmword_2603429E0;
  *a2 = xmmword_2603429E0;
  if (v3 >= 1)
  {
    v4 = v3 & 0x7FFFFFFF;
    v5 = (v2 + 16);
    v6 = -1.0;
    v7 = 1.0;
    v8 = 1.0;
    v9 = -1.0;
    v10 = 1.0;
    v11 = -1.0;
    do
    {
      v12 = *(v5 - 2);
      if (v7 <= v6 && v8 <= v9 && v10 <= v11)
      {
        if (v7 >= v12)
        {
          v7 = *(v5 - 2);
        }

        if (v6 <= v12)
        {
          v6 = *(v5 - 2);
        }

        v15 = *(v5 - 1);
        v16 = *v5;
        if (v8 >= v15)
        {
          v8 = *(v5 - 1);
        }

        if (v9 <= v15)
        {
          v9 = *(v5 - 1);
        }

        if (v10 >= v16)
        {
          v10 = *v5;
        }

        if (v11 <= v16)
        {
          v11 = *v5;
        }
      }

      else
      {
        v9 = *(v5 - 1);
        v11 = *v5;
        v6 = *(v5 - 2);
        v7 = v6;
        v8 = v9;
        v10 = *v5;
      }

      v5 += 3;
      --v4;
    }

    while (v4);
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v10;
    *(a2 + 40) = v11;
  }

  return result;
}

double OZElement::getLocalVolume(uint64_t a1, uint64_t a2)
{
  v12 = 0.0;
  v13 = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  (*(*a1 + 1488))(a1, &v12);
  result = v12;
  v9 = v13;
  v10 = v12 + *&v14;
  v11 = v13 + *(&v14 + 1);
  *a2 = v12;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t OZElement::getImageBoundsWithEffects(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 416))(a1))
  {
    v6 = *(**(a1[123] + 16) + 80);

    return v6();
  }

  else
  {
    v8 = *(*a1 + 1520);

    return v8(a1, a2, a3);
  }
}

void OZElement::getFourCornerPointsInObjectSpace(uint64_t a1, __int128 *a2, float64x2_t *a3, double *a4, float64x2_t *a5, double *a6)
{
  v12 = *a2;
  v40.epoch = *(a2 + 2);
  v38 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v39 = _Q0;
  *&v40.value = v12;
  (*(*a1 + 1560))(a1, &v38, a2);
  if (*(a2 + 233) == 1)
  {
    OZChannel::getValueAsDouble((a1 + 14840), &v40, 0.0);
    v36 = v18;
    OZChannel::getValueAsDouble((a1 + 14992), &v40, 0.0);
    v19.f64[0] = v36;
    v19.f64[1] = v20;
    *a3 = vaddq_f64(v19, v38);
    OZChannel::getValueAsDouble((a1 + 15544), &v40, 0.0);
    v22 = v21;
    OZChannel::getValueAsDouble((a1 + 15696), &v40, 0.0);
    v24 = v23 + v38.f64[1];
    *a4 = v22 + v38.f64[0] + v39.f64[0];
    a4[1] = v24;
    OZChannel::getValueAsDouble((a1 + 16248), &v40, 0.0);
    v37 = v25;
    OZChannel::getValueAsDouble((a1 + 16400), &v40, 0.0);
    v26.f64[0] = v37;
    v26.f64[1] = v27;
    *a5 = vaddq_f64(v26, vaddq_f64(v38, v39));
    OZChannel::getValueAsDouble((a1 + 16952), &v40, 0.0);
    v29 = v28;
    OZChannel::getValueAsDouble((a1 + 17104), &v40, 0.0);
    v30 = v29 + v38.f64[0];
    v32 = v31 + v38.f64[1] + v39.f64[1];
  }

  else
  {
    v33 = v38.f64[1];
    v30 = v38.f64[0];
    a3->f64[0] = v38.f64[0];
    a3->f64[1] = v33;
    v34 = v39.f64[1];
    v35 = v30 + v39.f64[0];
    *a4 = v30 + v39.f64[0];
    a4[1] = v33;
    v32 = v33 + v34;
    a5->f64[0] = v35;
    a5->f64[1] = v32;
  }

  *a6 = v30;
  a6[1] = v32;
}

uint64_t OZElement::getFourCornerMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a1 + 1600))(a1) && (*(a3 + 233))
  {
    v21 = 0uLL;
    v20 = 0uLL;
    v19 = 0uLL;
    v18 = 0uLL;
    (*(*a1 + 1720))(a1, a3, &v21, &v20, &v19, &v18);
    v16 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v17 = _Q0;
    (*(*a1 + 1560))(a1, &v16, a3);
    v15 = v16;
    v14.f64[0] = v16.f64[0] + *&v17;
    v14.f64[1] = v16.f64[1];
    v13.f64[0] = v16.f64[0] + *&v17;
    v13.f64[1] = v16.f64[1] + *(&v17 + 1);
    v12.f64[0] = v16.f64[0];
    v12.f64[1] = v16.f64[1] + *(&v17 + 1);
    return PCComputeQuadToQuadProjectionMatrix(&v15, &v14, &v13, &v12, &v21, &v20, &v19, &v18, a2);
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
    result = 1;
    *(a2 + 104) = 0u;
  }

  return result;
}

void OZElement::getScale(OZElement *this, double *a2, double *a3, double *a4, const CMTime *a5, int a6)
{
  v12 = *(this + 120);
  {
    v14 = *(this + 121);
    v15 = *(v14 + 344);
    v16 = *(v14 + 348);
    v17 = 0;
    (*(*this + 1472))(this, &v17 + 4, &v17, a5);
    *a2 = v15 / *(&v17 + 1);
    *a3 = v16 / *&v17;
    *a4 = 1.0;
  }

  else
  {

    OZTransformNode::getScale(this, a2, a3, a4, a5, a6);
  }
}

uint64_t OZElement::createSnapSetForCamera(uint64_t a1, const LiCamera *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v35 = 0.0;
  v36 = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v37 = _Q0;
  (*(*a1 + 1488))(a1, &v35, a4);
  v34 = 0x3FF0000000000000;
  v31 = 0x3FF0000000000000;
  v28 = 0x3FF0000000000000;
  v25 = 0x3FF0000000000000;
  v26 = 0u;
  v27 = 0u;
  v29 = 0u;
  v30 = 0u;
  v32 = 0u;
  v33 = 0u;
  (*(*a1 + 1256))(a1, &v25, a4);
  v17 = (*(*a1 + 272))(a1);
  OZScene::calcWorldToFilmSpaceMatrixForCamera(v17, a2, v24);
  PCMatrix44Tmpl<double>::leftMult(&v25, v24);
  result = PCMatrix44Tmpl<double>::transformRect<double>(&v25, &v35, &v35);
  if (result)
  {
    if (v35 >= -2147483650.0 && v35 <= 2147483650.0)
    {
      v19 = v35 + *&v37;
      if (v35 + *&v37 >= -2147483650.0 && v19 <= 2147483650.0 && v36 >= -2147483650.0 && v36 <= 2147483650.0)
      {
        v20 = v36 + *(&v37 + 1);
        if (v36 + *(&v37 + 1) >= -2147483650.0 && *(&v37 + 1) >= 0.0 && *&v37 >= 0.0 && v20 <= 2147483650.0)
        {
          if (a5)
          {
            OZSnap::OZSnap(v23, 258, (v35 + v19) * 0.5, v36, v20);
            std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v23);
            OZSnap::OZSnap(v23, 514, (v36 + v36 + *(&v37 + 1)) * 0.5, v35, v35 + *&v37);
            result = std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v23);
          }

          if (a6)
          {
            v21 = *&v37;
            if (*&v37 > 2.0)
            {
              v21 = *&v37 + v35 - (v35 + 1.0) + -2.0;
              v35 = v35 + 1.0;
              *&v37 = v21;
            }

            v22 = *(&v37 + 1);
            if (*(&v37 + 1) > 2.0)
            {
              v22 = *(&v37 + 1) + v36 - (v36 + 1.0) + -2.0;
              v36 = v36 + 1.0;
              *(&v37 + 1) = v22;
            }

            if (v21 >= 0.0 && v22 >= 0.0)
            {
              OZSnap::OZSnap(v23, 257, v35, v36, v36 + v22);
              std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v23);
              OZSnap::OZSnap(v23, 260, v35 + *&v37, v36, v36 + *(&v37 + 1));
              std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v23);
              OZSnap::OZSnap(v23, 513, v36, v35, v35 + *&v37);
              std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v23);
              OZSnap::OZSnap(v23, 516, v36 + *(&v37 + 1), v35, v35 + *&v37);
              return std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(a3, v23);
            }
          }
        }
      }
    }
  }

  return result;
}

void *OZElement::getBlendOptions@<X0>(OZElement *this@<X0>, CMTime *a2@<X1>, PCSharedCount *a3@<X8>)
{
  (*(*this + 2096))(&v13);
  value = 0;
  PCSharedCount::PCSharedCount(&v12);
  v10 = *a2;
  if (&v13 == v14)
  {
LABEL_6:
    if ((*(*this + 1576))(this, &v10) == 35)
    {
      operator new();
    }
  }

  else
  {
    v6 = &v13;
    while (1)
    {
      v7 = *(*v6 + 16);
      v9 = v10;
      if ((*(*v7 + 280))(v7, &v9, 0, 1, 1))
      {
        (*(**(*v6 + 16) + 688))(&v9);
        value = v9.value;
        PCSharedCount::PCSharedCount(&v15, &v9.timescale);
        PCSharedCount::operator=(&v12, &v15);
        PCSharedCount::~PCSharedCount(&v15);
        PCSharedCount::~PCSharedCount(&v9.timescale);
        if (value)
        {
          break;
        }
      }

      v6 = *v6;
      if (v6 == v14)
      {
        goto LABEL_6;
      }
    }
  }

  a3->var0 = value;
  PCSharedCount::PCSharedCount(a3 + 1, &v12);
  PCSharedCount::~PCSharedCount(&v12);
  return std::__list_imp<unsigned int>::clear(&v13);
}

void sub_2600B9350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  PCSharedCount::~PCSharedCount(v11 + 1);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void PCBlendOptions::PCBlendOptions(PCBlendOptions *this)
{
  *(this + 5) = 0;
  *(this + 48) = 1;
  *this = &unk_287280918;
  *(this + 4) = &unk_287280948;
  *(this + 2) = 0;
  PCSharedCount::PCSharedCount(this + 3);
  *(this + 2) = 0;
}

void sub_2600B945C(_Unwind_Exception *a1)
{
  *(v1 + 32) = &unk_2872DEA38;
  *(v1 + 48) = 0;
  PCWeakCount::~PCWeakCount(v2);
  _Unwind_Resume(a1);
}

void *PCPtr<void>::operator=<PCLightWrapOptions>(void *a1, const PCSharedCount *a2)
{
  if (a2->var0)
  {
    *a1 = a2->var0 + *(*a2->var0 - 16);
    v3 = &v5;
    PCSharedCount::PCSharedCount(&v5, a2 + 1);
    PCSharedCount::operator=(a1 + 1, &v5);
  }

  else
  {
    *a1 = 0;
    v3 = &v6;
    PCSharedCount::PCSharedCount(&v6);
    PCSharedCount::operator=(a1 + 1, &v6);
  }

  PCSharedCount::~PCSharedCount(v3);
  return a1;
}

void sub_2600B9538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void OZElement::setBlendMode(uint64_t a1, unsigned int a2, CMTime *a3)
{
  if (a2 == 50 || a2 == 43 || a2 == 40 || (a2 & 0xFFFFFFFB) == 41)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  ValueAsInt = OZChannel::getValueAsInt((a1 + 6832), a3, 0.0);
  OZChannel::setValue((a1 + 6832), a3, v8, 0);
  if (v8 == 35)
  {
    OZChannelBase::resetFlag((a1 + 7088), 2, 0);
    OZChannelBase::resetFlag((a1 + 7824), 2, 0);
    OZChannelBase::resetFlag((a1 + 7216), 2, 0);
    OZChannelBase::resetFlag((a1 + 7368), 2, 0);
    OZChannelBase::resetFlag((a1 + 7520), 2, 0);
    OZChannelBase::resetFlag((a1 + 7672), 2, 0);
  }

  else
  {
    if (ValueAsInt != 35)
    {
      return;
    }

    OZChannelBase::setFlag((a1 + 7088), 2, 0);
    OZChannelBase::setFlag((a1 + 7824), 2, 0);
    OZChannelBase::setFlag((a1 + 7216), 2, 0);
    OZChannelBase::setFlag((a1 + 7368), 2, 0);
    OZChannelBase::setFlag((a1 + 7520), 2, 0);
    OZChannelBase::setFlag((a1 + 7672), 2, 0);
  }

  if ((*(*a1 + 272))(a1) && *((*(*a1 + 272))(a1) + 1584))
  {
    v10 = *((*(*a1 + 272))(a1) + 1584);

    OZDocument::postNotification(v10, 32);
  }
}

BOOL OZElement::isFourCornerPinned(OZElement *this)
{
  isEnabled = OZChannelBase::isEnabled((this + 14568), 0, 1);
  result = 0;
  if (isEnabled)
  {
    return !OZChannelBase::testFlag((this + 14568), 2);
  }

  return result;
}

BOOL OZElement::isCropped(OZElement *this)
{
  isEnabled = OZChannelBase::isEnabled((this + 17520), 0, 1);
  result = 0;
  if (isEnabled)
  {
    return !OZChannelBase::testFlag((this + 17520), 2);
  }

  return result;
}

BOOL OZElement::isDropShadowEnabled(OZElement *this)
{
  isEnabled = OZChannelBase::isEnabled((this + 12672), 0, 1);
  result = 0;
  if (isEnabled)
  {
    return !OZChannelBase::testFlag((this + 12672), 2);
  }

  return result;
}

uint64_t OZElement::doEffectsForcePrecomp(OZElement *this, CMTime *a2)
{
  v14[0] = v14;
  v14[1] = v14;
  v14[2] = 0;
  v4 = (*(*this + 1640))(this);
  v5 = this + 976;
  if ((this + 976) == *(this + 123))
  {
LABEL_9:
    v10 = 0;
  }

  else
  {
    v6 = v4;
    while (1)
    {
      v7 = *(*v5 + 16);
      if ((*(*v7 + 272))(v7, 0, 1))
      {
        v12 = *&a2->value;
        epoch = a2->epoch;
        v8 = (*(*v7 + 696))(v7, &v12);
        v9 = v6 ? v8 : 0;
        if ((v9 & 1) == 0)
        {
          break;
        }
      }

      v5 = *v5;
      if (v5 == *(this + 123))
      {
        goto LABEL_9;
      }
    }

    v10 = 1;
  }

  std::__list_imp<unsigned int>::clear(v14);
  return v10;
}

void sub_2600B9A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

BOOL OZElement::canReflect(OZElement *this)
{
  if ((*(this + 1024) & 8) != 0)
  {
    return 0;
  }

  v2 = *(this + 120);
  {
    return (*(*v3 + 1640))(v3) == 1;
  }

  else
  {
    return (*(*this + 1640))(this) != 2;
  }
}

uint64_t OZElement::canCastReflection(OZElement *this)
{
  if ((*(this + 1024) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return OZSceneNode::isDescendantOf360Group(this) ^ 1;
  }
}

uint64_t OZElement::updateHiddenChannels(OZElement *this, char a2)
{
  v4 = (*(*this + 1832))(this);
  v5 = OZElement::setReflectionChannels(this);
  v6 = v5 | OZElement::updateHiddenFourCornerChannels(this, a2);
  updated = OZElement::updateHiddenCropChannels(this, a2);
  return (OZElement::updateHiddenCastsReflectionChannel(this, a2) | updated | v6 | v4) & 1;
}

uint64_t OZElement::setReflectionChannels(OZElement *this)
{
  v2 = OZChannelBase::testFlag((this + 9936), 2);
  v3 = (*(*this + 1672))(this);
  v4 = v2 ^ v3;
  if ((v4 & 1) == 0)
  {
    if (v3)
    {
      OZChannelBase::resetFlag((this + 9936), 2, 0);
    }

    else
    {
      OZChannelBase::setFlag((this + 9936), 2, 0);
    }
  }

  return v4 ^ 1u;
}

uint64_t OZElement::updateHiddenFourCornerChannels(OZElement *this, char a2)
{
  v4 = OZChannelBase::testFlag((this + 14568), 2);
  v5 = (*(*this + 1680))(this);
  v6 = v4 ^ v5;
  if ((v6 & 1) == 0)
  {
    if (v5)
    {
      OZChannelBase::resetFlag((this + 14568), 2, a2);
    }

    else
    {
      OZChannelBase::setFlag((this + 14568), 2, a2);
    }
  }

  return v6 ^ 1u;
}

uint64_t OZElement::updateHiddenCropChannels(OZElement *this, char a2)
{
  v4 = OZChannelBase::testFlag((this + 17520), 2);
  v5 = (*(*this + 1688))(this);
  v6 = v4 ^ v5;
  if ((v6 & 1) == 0)
  {
    if (v5)
    {
      OZChannelBase::resetFlag((this + 17520), 2, a2);
    }

    else
    {
      OZChannelBase::setFlag((this + 17520), 2, a2);
    }
  }

  return v6 ^ 1u;
}

uint64_t OZElement::updateHiddenCastsReflectionChannel(OZElement *this, char a2)
{
  v4 = OZChannelBase::testFlag((this + 11208), 2);
  v5 = (*(*this + 1696))(this);
  v6 = v4 ^ v5;
  if ((v6 & 1) == 0)
  {
    if (v5)
    {
      OZChannelBase::resetFlag((this + 11208), 2, a2);
    }

    else
    {
      OZChannelBase::setFlag((this + 11208), 2, a2);
    }
  }

  return v6 ^ 1u;
}

uint64_t OZElement::getColorConversionType(OZElement *this)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 12000), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt == 1)
  {
    v5 = MEMORY[0x277CC08F0];

    return OZChannel::getValueAsInt((this + 12256), v5, 0.0);
  }

  else if (ValueAsInt)
  {
    return 3;
  }

  else
  {
    v3 = *(*this + 2232);

    return v3(this);
  }
}

BOOL OZElement::projectPointToObject(uint64_t a1, uint64_t a2, double *a3, double *a4, uint64_t *a5)
{
  v8 = *a4;
  v9 = *a5;
  v21 = *a3;
  v22 = v8;
  v23 = v9;
  v19 = 0uLL;
  v20 = 0;
  (*(*a1 + 1384))(v16);
  v10 = vmulq_f64(v18, v18);
  if (fabs(v17 * v17 + v10.f64[0] + v10.f64[1]) < 0.0000001)
  {
    return 0;
  }

  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v15 = 0xBFF0000000000000;
  result = PCIntersectRayWithPlane(v16, v13, &v19);
  v12 = v19.f64[1];
  *a3 = v19.f64[0];
  *a4 = v12;
  *a5 = v20;
  return result;
}

double OZElement::calcTranslationRelativeToCamera(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, OZRenderState *a5, float64x2_t *a6)
{
  OZRenderState::OZRenderState(&v46, a5);
  (*(*a1 + 1384))(v45, a1, a2, a4, &v46, 0);
  v43 = 0uLL;
  v44 = 0.0;
  memset(v41, 0, sizeof(v41));
  v42 = 0xBFF0000000000000;
  PCIntersectRayWithPlane(v45, v41, &v43);
  OZRenderParams::OZRenderParams(v36);
  (*(*a1 + 288))(v28, a1);
  OZRenderParams::setWorkingColorDescription(v36, v28);
  PCCFRef<CGColorSpace *>::~PCCFRef(v28);
  v11 = (*(*a1 + 296))(a1);
  OZRenderParams::setBlendingGamma(v36, v11);
  OZRenderParams::setState(v36, &v46);
  *v28 = a4;
  if (a4)
  {
    v12 = (a4 + *(*a4 - 24));
  }

  else
  {
    v12 = 0;
  }

  PCSharedCount::PCSharedCount(&v28[8], v12);
  v39 = *v28;
  PCSharedCount::PCSharedCount(v16, &v28[8]);
  PCSharedCount::operator=(v40, v16);
  PCSharedCount::~PCSharedCount(v16);
  v37 = 0u;
  v38 = 0u;
  PCSharedCount::~PCSharedCount(&v28[8]);
  v35 = 0x3FF0000000000000;
  v32 = 0x3FF0000000000000;
  v29 = 0x3FF0000000000000;
  *v28 = 0x3FF0000000000000;
  memset(&v28[8], 0, 32);
  v30 = 0u;
  v31 = 0u;
  v33 = 0u;
  v34 = 0u;
  (*(*a1 + 1288))(a1, v28, v36);
  v26 = v43;
  v27 = v44;
  PCMatrix44Tmpl<double>::transform<double>(v28, v26.f64, v26.f64);
  v23 = 0uLL;
  v24 = -1.0;
  v25 = v27;
  PCMatrix44Tmpl<double>::transform_row<double>(v28, v23.f64, v23.f64);
  (*(*a1 + 1384))(v16, a1, a3, a4, &v46, 0);
  v45[0] = *v16;
  v45[1] = *&v16[16];
  v45[2] = *&v16[32];
  v13 = vaddvq_f64(vmulq_f64(v23, v23)) + v24 * v24;
  if (fabs(v13) >= 1.0e-24)
  {
    *&v41[24] = v23;
    v42 = *&v24;
    *v41 = vdivq_f64(vmulq_n_f64(v23, -v25), vdupq_lane_s64(*&v13, 0));
    *&v41[16] = -(v25 * v24) / v13;
  }

  PCIntersectRayWithPlane(v45, v41, &v26);
  v46.var4 = 1;
  v46.var6 = 0;
  v22 = 0x3FF0000000000000;
  v19 = 0x3FF0000000000000;
  *&v16[40] = 0x3FF0000000000000;
  *v16 = 0x3FF0000000000000;
  memset(&v16[8], 0, 32);
  v17 = 0u;
  v18 = 0u;
  v20 = 0u;
  v21 = 0u;
  (*(*a1 + 1256))(a1, v16, &v46);
  PCMatrix44Tmpl<double>::transform<double>(v16, v43.f64, v43.f64);
  PCMatrix44Tmpl<double>::transform<double>(v16, v26.f64, v26.f64);
  v14 = v27 - v44;
  *a6 = vsubq_f64(v26, v43);
  a6[1].f64[0] = v14;
  OZRenderParams::~OZRenderParams(v36);
  return result;
}

void OZElement::allowDrag(OZElement *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  *a5 = 0;
  {
    if (!(*(*v14 + 272))(v14))
    {
      v18 = a4 & 1;
      goto LABEL_17;
    }

    if ((*(*v14 + 640))(v14) != a3)
    {
      v18 = a4 & 2;
LABEL_17:
      *a5 = v18;
    }
  }

  else
  {
    OZSceneNode::allowDrag(this, lpsrc, a3, a4, a5, a6, a7);
  }
}

uint64_t OZElement::performDragOperation(OZElement *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, const CMTime *a8)
{
  if (!lpsrc)
  {
    return OZSceneNode::performDragOperation(this, lpsrc, a3, a4, a5, a6, a7, a8);
  }

  if (!v16)
  {
    return OZSceneNode::performDragOperation(this, lpsrc, a3, a4, a5, a6, a7, a8);
  }

  if ((*(this + 1024) & 8) != 0)
  {
    return OZSceneNode::performDragOperation(this, lpsrc, a3, a4, a5, a6, a7, a8);
  }

  v17 = v16;
  if ((*(v16 + 1024) & 8) == 0)
  {
    v18 = *(v16 + 1);
    v31 = xmmword_26084F780;
    isKindOfClass = OZFactory::isKindOfClass(v18, &v31);
    if ((a7 & 0x18) == 0 || !isKindOfClass)
    {
      return OZSceneNode::performDragOperation(this, lpsrc, a3, a4, a5, a6, a7, a8);
    }
  }

  v20 = *(v17 + 120);
  v21 = *(this + 121);
  if (v21)
  {
    v22 = *(v21 + 1584);
    if (v20)
    {
      PCURL::PCURL(&v31, @"Undo Reorder");
    }

    else
    {
      PCURL::PCURL(&v31, @"Undo Drop");
    }

    OZChannelBase::setRangeName(v22, &v31);
    PCString::~PCString(&v31);
  }

  PCSharedCount::PCSharedCount(&v31);
  v24 = (v17 + 16);
  (*(*(v17 + 2) + 176))(v17 + 2, &v31, 0);
  PCString::~PCString(&v31);
  if (v20)
  {
    v25 = *(v17 + 1);
    v31 = xmmword_26084F780;
    if (!OZFactory::isKindOfClass(v25, &v31) || (*(v17 + 1024) & 8) != 0)
    {
      PCURL::PCURL(&v31, @"Undo Reorder");
      (*(*v24 + 176))(v17 + 2, &v31, 3);
    }

    else
    {
      PCURL::PCURL(&v31, @"Undo Reorder");
      (*(*v24 + 176))(v17 + 2, &v31, 5);
    }

    PCString::~PCString(&v31);
  }

  OZSceneNode::removeFromParent(v17);
  v26 = *(this + 2302);
  if (v26 != (this + 18408))
  {
    v27 = (v26 + 16);
    if ((*(**(v26 + 16) + 640))(*(v26 + 16)) == a3)
    {
      v28 = 0;
LABEL_26:
      if (a5 == 3)
      {
        v28 = *v27;
      }

      goto LABEL_28;
    }

    while (1)
    {
      v26 = *(v26 + 8);
      if (v26 == (this + 18408))
      {
        break;
      }

      v28 = *v27;
      v27 = (v26 + 16);
      if ((*(**(v26 + 16) + 640))(*(v26 + 16)) == a3)
      {
        goto LABEL_26;
      }
    }
  }

  v28 = 0;
LABEL_28:
  (*(*this + 1080))(this, v17, v28);
  (*(*this + 496))(this);
  if (!v20)
  {
    PCURL::PCURL(&v31, @"Undo Drop");
    (*(*v24 + 176))(v17 + 2, &v31, 1);
    PCString::~PCString(&v31);
  }

  v30 = *(this + 121);
  if (v30)
  {
    OZChannelBase::setRangeName(*(v30 + 1584), v29);
    OZDocument::postNotification(*(*(this + 121) + 1584), 16);
  }

  return 1;
}

uint64_t OZElement::setLithiumTransform(OZElement *this, LiSceneObject *a2, OZRenderState *a3)
{
  v19 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v13 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;
  v11 = 0u;
  v12 = 0u;
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0u;
  OZRenderState::OZRenderState(&v9, a3);
  v9.var4 = 1;
  (*(*this + 1256))(this, &v10, &v9);
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0;
  (*(*this + 1312))(this, &v8, &v7, &v6, &v9, 0);
  if (OZElement::isOwner360(this))
  {
    v11 = 0u;
    v12 = 0u;
    v10 = *&v8;
    v13 = *&v7;
    v14 = 0u;
    v15 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0x3FF0000000000000;
    v19 = 0x3FF0000000000000;
  }

  result = (*(*a2 + 16))(a2, &v10);
  *(a2 + 564) = v8 * v7 < 0.0;
  return result;
}

uint64_t OZElement::cropImageSourceIfNecessary@<X0>(uint64_t a1@<X0>, const PCSharedCount *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, PCSharedCount *a5@<X8>)
{
  a5->var0 = a2->var0;
  PCSharedCount::PCSharedCount(a5 + 1, a2 + 1);
  v8 = (*(*a1 + 1616))(a1, a3);
  result = (*(*a1 + 1608))(a1);
  if (*(a4 + 256) == 1 && ((result | v8) & 1) != 0)
  {
    v21 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v18 = 0.0;
    if (result)
    {
      (*(*a1 + 1728))(a1, a3, &v21, &v20, &v19, &v18);
    }

    else
    {
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
    }

    v16 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v17 = _Q0;
    (*(*a1 + 1552))(a1, &v16, a3);
    v15.f64[0] = v21;
    v15.f64[1] = v19;
    v16 = vaddq_f64(v15, v16);
    *&v17 = *&v17 - (v21 + v20);
    *(&v17 + 1) = *(&v17 + 1) - (v19 + v18);
    operator new();
  }

  return result;
}

void OZCrop::OZCrop(OZCrop *this)
{
  *(this + 9) = &unk_2872DEA38;
  *(this + 10) = 0;
  *(this + 88) = 1;
  LiImageFilter::LiImageFilter(this, &off_2872A2C30);
  *this = &unk_2872A2B28;
  *(this + 9) = &unk_2872A2C10;
  *(this + 5) = 0;
  *(this + 6) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 56) = _Q0;
}

void sub_2600BB244(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void sub_2600BB7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, PCSharedCount a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  MEMORY[0x2666E9F00](v48, 0x10A0C403FC0B694);
  PCSharedCount::~PCSharedCount(v49 + 1);
  _Unwind_Resume(a1);
}

LiGraphBuilder **std::unique_ptr<LiGraphBuilder>::~unique_ptr[abi:ne200100](LiGraphBuilder **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LiGraphBuilder::~LiGraphBuilder(v2);
    MEMORY[0x2666E9F00]();
  }

  return a1;
}

void sub_2600BBA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x2666E9F00](v4, 0x10B1C40DE3F20C5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void OZElement::makeRender(OZElement *this@<X0>, const OZRenderState *a2@<X1>, const OZRenderGraphState *a3@<X2>, uint64_t a4@<X3>, PCSharedCount *a5@<X8>)
{
  (*(*this + 1712))(this);
  (*(*(this + 816) + 160))(this + 6528, a2, a3, a4);
  if ((*(*this + 416))(this))
  {
    var0 = a5->var0;
    PCSharedCount::PCSharedCount(&v23, a5 + 1);
    (*(*this + 2032))(&v12, this, a2, a3, &var0);
    a5->var0 = v12;
    PCSharedCount::PCSharedCount(&v21, v13);
    PCSharedCount::operator=(&a5[1], &v21);
    PCSharedCount::~PCSharedCount(&v21);
    PCSharedCount::~PCSharedCount(v13);
    PCSharedCount::~PCSharedCount(&v23);
  }

  (*(*this + 1920))(&v12, this, a5, a2, a3);
  a5->var0 = v12;
  PCSharedCount::PCSharedCount(&v21, v13);
  PCSharedCount::operator=(&a5[1], &v21);
  PCSharedCount::~PCSharedCount(&v21);
  PCSharedCount::~PCSharedCount(v13);
  if ((*(*this + 1864))(this) && OZElement::hasActiveMasks(this, a2) && !OZElement::isOwner360(this))
  {
    operator new();
  }

  v10 = (*(*this + 1600))(this);
  if (a2->var5 == this)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v11 == 1 && a2->var19)
  {
    v20 = 0x3FF0000000000000;
    v17 = 0x3FF0000000000000;
    v14 = 0x3FF0000000000000;
    v12 = 0x3FF0000000000000;
    memset(v13, 0, sizeof(v13));
    v15 = 0u;
    v16 = 0u;
    v18 = 0u;
    v19 = 0u;
    if ((*(*this + 1280))(this, &v12, a2))
    {
      operator new();
    }

    PCPtr<LiImageSource>::reset(a5);
  }

  else
  {
    (*(*this + 1944))(&v12, this, a2, a5);
    a5->var0 = v12;
    PCSharedCount::PCSharedCount(&v21, v13);
    PCSharedCount::operator=(&a5[1], &v21);
    PCSharedCount::~PCSharedCount(&v21);
    PCSharedCount::~PCSharedCount(v13);
  }
}

void sub_2600BC224(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v2 + 1);
  PCSharedCount::~PCSharedCount(v1 + 1);
  _Unwind_Resume(a1);
}

void *OZElement::buildFilterRenderGraph@<X0>(PCSharedCount *a1@<X3>, uint64_t a2@<X0>, __int128 *a3@<X1>, PCSharedCount *a4@<X8>)
{
  a4->var0 = a1->var0;
  PCSharedCount::PCSharedCount(a4 + 1, a1 + 1);
  (*(*a2 + 2096))(&v12, a2);
  if (&v12 != v13)
  {
    v7 = &v12;
    do
    {
      v8 = *(*v7 + 16);
      v10 = *a3;
      v11 = *(a3 + 2);
      if ((*(*v8 + 280))(v8, &v10, 0, 1, 1))
      {
        (*(**(*v7 + 16) + 648))(&v10);
        if (v10)
        {
          (*(*v10 + 168))(v10, a4->var0);
          PCPtr<LiImageSource>::operator=<TXTextureDecal>(&a4->var0, &v10);
        }

        PCSharedCount::~PCSharedCount(&v10 + 1);
      }

      v7 = *v7;
    }

    while (v7 != v13);
  }

  return std::__list_imp<unsigned int>::clear(&v12);
}

uint64_t OZElement::doesAppliedEffectTransormFromLocalToScreenSpace(uint64_t a1, __int128 *a2)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  (*(*a1 + 2096))(&v9);
  v2 = v10;
  if (&v9 == v10)
  {
LABEL_6:
    v5 = 0;
  }

  else
  {
    v3 = &v9;
    while (1)
    {
      v4 = *(*v3 + 16);
      v7 = v11;
      v8 = v12;
      if ((*(*v4 + 280))(v4, &v7, 0, 1, 1))
      {
        if ((*(**(*v3 + 16) + 640))(*(*v3 + 16)))
        {
          break;
        }
      }

      v3 = *v3;
      if (v3 == v2)
      {
        goto LABEL_6;
      }
    }

    v5 = 1;
  }

  std::__list_imp<unsigned int>::clear(&v9);
  return v5;
}

void sub_2600BC648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void sub_2600BC760(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x10A0C403FC0B694);
  PCSharedCount::~PCSharedCount(v2 + 1);
  _Unwind_Resume(a1);
}

void *OZElement::setupGraphBuilder(uint64_t a1)
{
  result = *(a1 + 960);
  if (result)
  {
    if (result)
    {
      v2 = *(*result + 1992);

      return v2();
    }
  }

  return result;
}

PCSharedCount *OZElement::makeDropShadow@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const PCSharedCount *a3@<X2>, uint64_t a4@<X3>, PCSharedCount *a5@<X8>)
{
  *&v22.var0.var0 = *a4;
  v22.var0.var1[1] = *(a4 + 16);
  OZChannel::getValueAsDouble((a1 + 13808), &v22, 0.0);
  if (fabs(v10) >= 0.0000001)
  {
    *&v22.var0.var0 = *a4;
    v22.var0.var1[1] = *(a4 + 16);
    OZChannel::getValueAsDouble((a1 + 14112), &v22, 0.0);
    *&v22.var0.var0 = *a4;
    v22.var0.var1[1] = *(a4 + 16);
    OZChannel::getValueAsDouble((a1 + 14264), &v22, 0.0);
    __sincos_stret(v12);
    *&v22.var0.var0 = *a4;
    v22.var0.var1[1] = *(a4 + 16);
    OZChannel::getValueAsInt((a1 + 14416), &v22, 0.0);
    *&v22.var0.var0 = *a4;
    v22.var0.var1[1] = *(a4 + 16);
    v13 = (*(*a1 + 1576))(a1, &v22);
    v21 = *a4;
    OZElement::getDropShadowColor(a1, &v21, &v22);
    WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a4);
    PCWorkingColor::PCWorkingColor(&v23, &v22, WorkingColorSpace);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v22.var1._obj);
    *&v22.var0.var0 = *a4;
    v22.var0.var1[1] = *(a4 + 16);
    OZChannel::getValueAsDouble((a1 + 13960), &v22, 0.0);
    if (OZRenderParams::isDynamicRangeTrackingRender(a4) && (v15 = OZRenderParams::getWorkingColorDescription(a4), FxColorDescription::isHDR(v15)))
    {
      v21.value = v23;
      *&v21.timescale = v24;
      v16 = OZRenderParams::getWorkingColorSpace(a4);
      v17 = OZRenderParams::getWorkingColorSpace(a4);
      WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a4);
      ToneMapMethod = FxColorDescription::getToneMapMethod(WorkingColorDescription);
      PCColorUtil::transform(ToneMapMethod, &v21.value, v16, 0, v17, 1, &v22);
      PCWorkingColor::setRGB(&v23, *&v22.var0.var0, *(&v22.var0.var0 + 1), *v22.var0.var1);
    }

    else if (OZRenderParams::isRenderForHDR_Deprecated(a4))
    {
      v21.value = v23;
      *&v21.timescale = v24;
      v20 = OZRenderParams::getWorkingColorSpace(a4);
      FxApplyBT2446A(&v21, v20, &v22.var0.var0);
      PCWorkingColor::setRGB(&v23, *&v22.var0.var0, *(&v22.var0.var0 + 1), *v22.var0.var1);
    }

    if (!v13 || PCBlend::treatsBlackLikeNormal(v13) && fabsf(*&v23) < 0.00001 && fabsf(*(&v23 + 1)) < 0.00001 && fabsf(v24) < 0.00001)
    {
      operator new();
    }

    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    *(*a2 + 12) = 1;
    operator new();
  }

  return PCPtr<LiImageSource>::PCPtr<OZGradientSource>(a5, a3);
}

void sub_2600BD2A8(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 1);
  PCCFRef<CGColorSpace *>::~PCCFRef((v2 - 168));
  _Unwind_Resume(a1);
}

uint64_t OZElement::imageSpace(uint64_t a1)
{
  if ((*(*a1 + 2216))(a1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void OZElement::buildRenderGraph(OZElement *this, CMTime *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  v16 = *a2;
  OZChannel::getValueAsDouble((this + 6680), &v16, 0.0);
  if (fabs(v8) >= 0.0000001)
  {
    OZRenderState::OZRenderState(&v23, a2);
    if (!v23.var31)
    {
      goto LABEL_23;
    }

    v9 = *(v23.var31 + 1);
    if (!v9)
    {
      goto LABEL_23;
    }

    v10 = v23.var31 + 8;
    do
    {
      v11 = v9[4];
      v12 = v11 >= this;
      v13 = v11 < this;
      if (v12)
      {
        v10 = v9;
      }

      v9 = v9[v13];
    }

    while (v9);
    if (v10 == v23.var31 + 1 || (v14 = v10[4], v14 > this) || v14 == *(v23.var31 + 5))
    {
LABEL_23:
      if ((*(*this + 1440))(this))
      {
        (*(*this + 1976))(this, a2, a3);
      }

      else
      {
        v21 = 0.0;
        v22 = 0.0;
        v20 = 0.0;
        (*(*this + 1312))(this, &v22, &v21, &v20, a2, 0);
        if (fabs(v22) >= 0.0000001 && fabs(v21) >= 0.0000001 || ((*(*this + 1632))(this) & 1) == 0 && fabs(v20) >= 0.0000001)
        {
          v15 = (*(*this + 2024))(this);
          (*(*this + 1936))(&v18, this, a2, a4, 0);
          if (v18)
          {
            OZRenderGraphState::OZRenderGraphState(&v16, a4);
            (*(*this + 2064))(this, a2, &v16);
            v17 &= v15;
            operator new();
          }

          PCSharedCount::~PCSharedCount(&v19);
        }
      }
    }
  }
}

void sub_2600BDBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, PCSharedCount a61)
{
  PCSharedCount::~PCSharedCount(v61 + 1);
  OZRenderGraphState::~OZRenderGraphState(&a21);
  PCSharedCount::~PCSharedCount(&a61);
  _Unwind_Resume(a1);
}

void OZElement::setGeodeProperties(OZElement *this, const OZRenderParams *a2, const OZRenderGraphState *a3, LiGeode *a4)
{
  DoHighQualityResampling = OZRenderParams::getDoHighQualityResampling(a2);
  (*(*a4 + 280))(a4, DoHighQualityResampling);
  if (*a3 == 1 && (*(*this + 1632))(this))
  {
    (*(*a4 + 192))(a4, *(a3 + 1));
    *(a4 + 170) = *(a3 + 12);
    if (*(a3 + 16) == 1)
    {
      (*(*a4 + 208))(a4, *(a3 + 3));
      (*(*a4 + 224))(a4, *(a3 + 4));
      (*(*a4 + 240))(a4, *(a3 + 5));
    }

    if (*(a3 + 7) > 0.0)
    {
      (*(*a4 + 256))(a4);
    }
  }

  else
  {
    (*(*a4 + 192))(a4, 0.0);
  }

  *(a4 + 552) &= *(a3 + 288);
  *(a4 + 553) &= *(a3 + 289);
  *(a4 + 696) = *(a3 + 88);
  if (*(a3 + 9) != (a3 + 64))
  {
    operator new();
  }

  v9 = *(a2 + 160);
  if (v9)
  {
    v10 = (v9 + *(*v9 - 24));
  }

  else
  {
    v10 = 0;
  }

  PCSharedCount::PCSharedCount(&v11[1], v10);
  (*(*this + 2112))(this, a4, a3 + 224, a2);
  (*(*this + 2048))(this, a2, a3, a4);
  PCSharedCount::~PCSharedCount(&v11[1]);
}

uint64_t OZElement::isDescendantOfRootLevel3DGroup(OZElement *this)
{
  v2 = *(this + 120);
  if (v2)
  {
    while (1)
    {
      do
      {
        if (!v3)
        {
          return 1;
        }

        v4 = v3;
        v2 = v3[120];
      }

      while (v2);
      if ((*(*v4 + 1640))(v4) != 1)
      {
        break;
      }

      v2 = v4[120];
      if (!v2)
      {
        return 1;
      }
    }

    return 0;
  }

  else
  {
    if (result)
    {
      return (*(*result + 1640))(result) == 1;
    }
  }

  return result;
}

uint64_t OZElement::setGeodeProperties3D(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  ShowDepth = LiRenderingTechnology::getShowDepth((a2 + 1316));
  if (ShowDepth)
  {
    LOBYTE(ShowDepth) = (*(*a1 + 2104))(a1);
  }

  a4[555] = ShowDepth;
  result = (*(*a1 + 2056))(a1);
  if (result)
  {
    result = (*(*a1 + 2104))(a1);
    v8 = result ^ 1;
  }

  else
  {
    v8 = 0;
  }

  a4[554] = v8;
  a4[556] = 0;
  return result;
}

uint64_t OZElement::modifyGraphState(OZElement *this, CMTime *a2, OZRenderGraphState *a3)
{
  v14 = *a2;
  if (OZChannelBase::isEnabled((this + 9936), 0, 1))
  {
    v5 = OZChannelBase::testFlag((this + 9936), 2);
    if (!v5 && (*a3 & 1) == 0)
    {
      *a3 = !v5;
      OZChannel::getValueAsDouble((this + 10064), &v14, 0.0);
      *(a3 + 1) = v6;
      *(a3 + 12) = OZChannel::getValueAsInt((this + 10952), &v14, 0.0);
      OZChannel::getValueAsDouble((this + 10216), &v14, 0.0);
      *(a3 + 7) = v7;
      *(a3 + 16) = OZChannelBase::isEnabled((this + 10368), 1, 1);
      OZChannel::getValueAsDouble((this + 10496), &v14, 0.0);
      *(a3 + 3) = v8;
      OZChannel::getValueAsDouble((this + 10648), &v14, 0.0);
      *(a3 + 4) = v9;
      OZChannel::getValueAsDouble((this + 10800), &v14, 0.0);
      *(a3 + 5) = v10;
    }
  }

  if (OZChannelBase::testFlag((this + 11208), 2))
  {
    result = 1;
  }

  else
  {
    result = OZChannel::getValueAsInt((this + 11208), &v14, 0.0);
  }

  v12 = *(a3 + 288);
  if ((result & 0xFFFFFFFD) != 0)
  {
    v12 = 0;
  }

  *(a3 + 288) = v12;
  v13 = *(a3 + 289);
  if (result >= 2)
  {
    v13 = 0;
  }

  *(a3 + 289) = v13;
  return result;
}

float64x2_t OZElement::getFilmback@<Q0>(OZElement *this@<X0>, const OZRenderState *a2@<X1>, float64x2_t *a3@<X8>)
{
  a3->f64[0] = 0.0;
  a3->f64[1] = 0.0;
  v4 = (*(*this + 272))(this, a2);
  if (v4)
  {
    result = vcvtq_f64_f32(vcvt_f32_s32(v4[43]));
    *a3 = result;
  }

  return result;
}

void OZElement::getPrecompCamera(OZElement *this@<X0>, CMTime *a2@<X1>, int a3@<W2>, PCSharedCount *a4@<X8>)
{
  v8 = (*(*this + 2072))(this);
  a4->var0 = 0;
  PCSharedCount::PCSharedCount(a4 + 1);
  PCPtr<LiImageSource>::reset(a4);
  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      operator new();
    }

    if (v9 == 2)
    {
      operator new();
    }

    PCPtr<LiImageSource>::reset(a4);
  }

  else
  {
    v10 = *&a2[53].timescale;
    if (v10)
    {
      PCPtr<LiImageSource>::operator=<LiImageSource>(a4, v10);
    }

    else
    {
      v11 = *(this + 121);
      if (v11)
      {
        v15 = *a2;
        ActiveCamera = OZScene::getActiveCamera(v11, &v15);
        Node = OZScene::getNode(v11, ActiveCamera);
        if (Node)
        {
          if (v14)
          {
            v15 = *a2;
            OZCamera::cameraAtTime(v14, &v15);
          }
        }
      }
    }
  }
}

void sub_2600BE7B4(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v2 + 1);
  PCSharedCount::~PCSharedCount(v1);
  _Unwind_Resume(a1);
}

uint64_t isChannelNondefault(OZChannelBase *a1)
{
  if ((a1->var7 & 0x1000) != 0)
  {
    if (OZChannelFolder::testFoldFlag(v5, 0x20000))
    {
      return !OZChannelBase::testFlag(v5, 0x8000);
    }

    var0 = v5[1].var0;
    if (var0)
    {
      v7 = *var0;
      v8 = var0[1];
      while (v7 != v8)
      {
        v9 = *v7;
        if (!OZChannelBase::testFlag(*v7, 0x2000) && !OZChannelBase::testFlag(v9, 2) && (isChannelNondefault(v9) & 1) != 0)
        {
          return 1;
        }

        ++v7;
      }
    }

    return 0;
  }

  if (!result)
  {
    return result;
  }

  v2 = result;
  if ((*(*result + 560))(result) & 1) != 0 || ((*(v2->var0 + 83))(v2))
  {
    return 1;
  }

  v12 = &v12;
  v13 = &v12;
  v14 = 0;
  OZBehavior::GetBehaviorsAffectingChannel(v2, &v12, 1);
  {
    OZChannel::getValueAsDouble(v2, MEMORY[0x277CC08F0], 0.0);
    v11 = vabdd_f64(v10, OZChannel::getDefaultValue(v2));
    std::__list_imp<unsigned int>::clear(&v12);
    return v11 >= 0.0000001;
  }

  std::__list_imp<unsigned int>::clear(&v12);
  return 1;
}

void sub_2600BEA60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZElement::checkForForcedPrecompose(OZElement *this, OZChannelBase *a2, OZChannelBase *a3)
{
  if ((a2->var7 & 0x1000) != 0)
  {
    if (v7)
    {
      v8 = *v7;
      v9 = v7[1];
      while (v8 != v9)
      {
        v10 = *v8;
        if (!OZChannelBase::testFlag(*v8, 0x2000) && !OZChannelBase::testFlag(v10, 2))
        {
          if (OZChannelBase::testFlag(v10, 2048))
          {
            if (v10 != a3 && OZChannelBase::testFlag(v10, 2048) && (isChannelNondefault(v10) & 1) != 0)
            {
              return 1;
            }
          }

          else if (OZElement::checkForForcedPrecompose(this, v10, a3))
          {
            return 1;
          }
        }

        ++v8;
      }
    }
  }

  else if (a2 != a3 && OZChannelBase::testFlag(a2, 2048) && isChannelNondefault(a2) && !OZChannelBase::testFlag(a2, 2))
  {
    return 1;
  }

  return 0;
}

uint64_t OZElement::setOwner(OZElement *this, OZSceneNode *a2)
{
  OZTransformNode::setOwner(this, a2);
  (*(*this + 1832))(this);
  v3 = *(*this + 1704);

  return v3(this, 0);
}

BOOL OZElement::isValidToLightOutside(OZElement *this)
{
  v1 = *(this + 120);
  if (!v1)
  {
    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  return OZGroup::isValidToLightInside(v2);
}

BOOL OZElement::setLightChannels(OZElement *this)
{
  v2 = OZChannelBase::testFlag((this + 8384), 2);
  v3 = OZChannelBase::testFlag((this + 9352), 2);
  if ((*(*this + 1848))(this))
  {
    if (v2)
    {
      OZChannelBase::resetFlag((this + 8384), 2, 0);
    }

    if (v3)
    {
      OZChannelBase::resetFlag((this + 9352), 2, 0);
    }

    return v2 || v3;
  }

  else
  {
    if (!v2)
    {
      OZChannelBase::setFlag((this + 8384), 2, 0);
    }

    if (!v3)
    {
      OZChannelBase::setFlag((this + 9352), 2, 0);
    }

    return !v2 || !v3;
  }
}

OZElement *OZElement::isInWorldPartition(OZElement *this)
{
  while (1)
  {
    v2 = *(this + 120);
    if (!v2)
    {
      break;
    }

    this = v3;
    if (!v3 || (*(*v3 + 1424))(v3))
    {
      return this;
    }
  }

  return 0;
}

OZElement *OZElement::isInPrecomposedWorld(OZElement *this)
{
  v2 = MEMORY[0x277CC08F0];
  while (1)
  {
    v3 = *(this + 120);
    if (!v3)
    {
      break;
    }

    this = v4;
    if (!v4 || (*(*v4 + 1656))(v4, v2))
    {
      return this;
    }
  }

  return 0;
}

uint64_t OZElement::canBeAffectedByShadows(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 12))
  {
    return 0;
  }

  v6 = *(a3 + 515);
  if (((*(*a1 + 1840))(a1, a3) & 1) == 0 && (v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 12);
  if (v7 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = (*(a2 + 16) + 721);
  do
  {
    if ((*(v9 - 65) - 1) > 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = *v9;
    }

    v8 |= v10;
    v9 += 944;
    --v7;
  }

  while (v7);
  if ((v8 & 1) != 0 && ((v13 = *a3, !(*(*a1 + 1656))(a1, &v13)) || (*(*a1 + 1632))(a1)) && (ValueAsInt = OZChannel::getValueAsInt((a1 + 9480), &v13, 0.0), ValueAsInt | OZChannel::getValueAsInt((a1 + 9632), &v13, 0.0)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void OZElement::buildLighting(OZElement *this, LiGeode *a2, const LiLightSet *a3, const OZRenderParams *a4)
{
  if (*(a3 + 3) && ((v8 = *(a4 + 515), v9 = (*(*this + 1840))(this, a4), (v9 & 1) != 0) || (v8 & 1) != 0))
  {
    v10 = OZElement::isInWorldPartition(this);
    OZRenderParams::OZRenderParams(v35, a4);
    v34 = 0x3FF0000000000000;
    v31 = 0x3FF0000000000000;
    v28 = 0x3FF0000000000000;
    v25 = 0x3FF0000000000000;
    v26 = 0u;
    v27 = 0u;
    v29 = 0u;
    v30 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = 0x3FF0000000000000;
    v21 = 0x3FF0000000000000;
    v18 = 0x3FF0000000000000;
    v15 = 0x3FF0000000000000;
    v16 = 0u;
    v17 = 0u;
    v19 = 0u;
    v20 = 0u;
    v22 = 0u;
    v23 = 0u;
    v37 = 0;
    v39 = 0u;
    v40 = 0u;
    v11 = OZElement::isInWorldPartition(this);
    if (v11)
    {
      v12 = v38;
      v38 = 1;
      if (v10)
      {
        (*(*v10 + 1256))(v10, &v15, v35);
      }

      PCMatrix44Tmpl<double>::invert(&v15, &v15, 0.0);
      v38 = v12;
      v13 = OZElement::isInPrecomposedWorld(this);
      if (v13 == v10)
      {
        v36 = v13;
      }
    }

    (*(*this + 1256))(this, &v25, v35);
    (*(*this + 2120))(v14, this, v35, a3, a2);
    (*(*a2 + 264))(a2, v9, a3, v14, &v25, v11 != 0, &v15);
    LiMaterialProperties::~LiMaterialProperties(v14);
    OZRenderParams::~OZRenderParams(v35);
  }

  else
  {

    LiGeode::setLit(a2, 0);
  }
}

void *OZElement::buildMaterials@<X0>(OZElement *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3 + 12);
  if (v9 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (*(a3 + 16) + 721);
    do
    {
      if ((*(v11 - 65) - 1) > 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = *v11;
      }

      v10 |= v12;
      v11 += 944;
      --v9;
    }

    while (v9);
  }

  v13 = v10 & *(a2 + 515);
  v28 = *a2;
  v26 = *a2;
  v27 = *(a2 + 2);
  if ((*(*a1 + 1656))(a1, &v26))
  {
    v14 = (*(*a1 + 1632))(a1);
  }

  else
  {
    v14 = 1;
  }

  v15 = v13 & v14;
  v16 = (v13 & v14 & 1) != 0 && OZChannel::getValueAsInt((a1 + 9480), &v28, 0.0) != 0;
  OZLightingFolder::buildLiMaterialProperties((a1 + 8384), &v28, a5);
  *(a5 + 98) = (*(*a1 + 1840))(a1, a2);
  if (v15)
  {
    v17 = OZChannel::getValueAsInt((a1 + 9632), &v28, 0.0) != 0;
    if ((v13 & 1) == 0)
    {
LABEL_17:
      v18 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v17 = 0;
    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v18 = OZChannel::getValueAsInt((a1 + 9784), &v28, 0.0) != 0;
LABEL_20:
  *(a5 + 101) = v16;
  *(a5 + 102) = v17;
  *(a5 + 103) = v18;
  *(a5 + 104) = 0;
  *(a5 + 112) = (*(*a1 + 2144))(a1, a2);
  result = (*(*a1 + 2128))(a1, a2, a5, a4);
  if (v17)
  {
    v20 = OZElement::isInPrecomposedWorld(a1);
    v21 = OZElement::isInWorldPartition(a1);
    if (v20 && v20 == v21)
    {
      v22 = *(a2 + 5);
      *(a5 + 120) = v22 / (*(*v21 + 1328))(v21);
    }

    result = (*(*a1 + 2136))(&v26, a1, a2);
    if ((a5 + 272) != &v26)
    {
      for (i = 0; i != 128; i += 32)
      {
        v24 = (a5 + 272 + i);
        v25 = *(&v26 + i + 16);
        *v24 = *(&v26 + i);
        v24[1] = v25;
      }
    }
  }

  return result;
}

double OZElement::castShadowMaxScale(OZElement *this, const OZRenderParams *a2)
{
  RenderQuality = OZRenderParams::getRenderQuality(a2);
  result = 2.0;
  if (RenderQuality == 6)
  {
    return 5.0;
  }

  return result;
}

__n128 OZElement::setShadowBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 101) & 1) != 0 || *(a3 + 102) == 1)
  {
    result = *(a4 + 704);
    v5 = *(a4 + 720);
    *(a3 + 128) = result;
    *(a3 + 144) = v5;
  }

  return result;
}

__n128 OZElement::getShadowMat@<Q0>(OZElement *this@<X0>, const OZRenderState *a2@<X1>, uint64_t a3@<X8>)
{
  OZRenderState::OZRenderState(&v35, a2);
  v33 = 0uLL;
  v34 = 0.0;
  v31 = 0uLL;
  v32 = 1.0;
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
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  OZRenderState::TransformSet::shear(&v35.var30, 0);
  var0 = v35.var30.var0 & 0xFFFFFFFFFFFFFF3FLL;
  v35.var30.var0 &= 0xFFFFFFFFFFFFFF3FLL;
  v6 = *(this + 120);
  if (v6)
  {
    if (v7)
    {
      (*(*v7 + 1256))(v7, a3, &v35);
      var0 = v35.var30.var0;
    }
  }

  v35.var4 = 1;
  v35.var30.var0 = var0 & 0xFFFFFFFFFFFFFFDFLL;
  (*(*this + 1256))(this, &v21, &v35);
  v8 = PCMatrix44Tmpl<double>::transform<double>(&v21, &v33, &v33);
  v9 = v8[2];
  v33 = *v8;
  v34 = v9;
  PCMatrix44Tmpl<double>::transform_normal<double>(&v21, v31.f64, &v19, v10, v11);
  v32 = v20;
  v31 = v19;
  v12 = sqrt(vaddvq_f64(vmulq_f64(v19, v19)) + v20 * v20);
  if (fabs(v12) >= 0.000000100000001)
  {
    v31 = vdivq_f64(v19, vdupq_lane_s64(*&v12, 0));
    v32 = v20 / v12;
  }

  *&v19.f64[0] = &v35.var30;
  LODWORD(v19.f64[1]) = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v19, 0xEuLL);
  v35.var30.var0 |= 0x18uLL;
  v13 = (*(*this + 1256))(this, &v21, &v35);
  v14 = -(*&v33 * v31.f64[0] + *(&v33 + 1) * v31.f64[1] + v34 * v32) / (v31.f64[0] * v31.f64[0] + v31.f64[1] * v31.f64[1] + v32 * v32);
  v13.f64[0] = *&v33 - (*&v33 + v31.f64[0] * v14);
  PCMatrix44Tmpl<double>::leftTranslate(&v21, v13, *(&v33 + 1) - (*(&v33 + 1) + v31.f64[1] * v14), v34 - (v34 + v32 * v14));
  PCMatrix44Tmpl<double>::operator*(a3, &v21, &v19);
  if (&v19 != a3)
  {
    for (i = 0; i != 128; i += 32)
    {
      v17 = a3 + i;
      result = *(&v19 + i);
      v18 = *(&v19 + i + 16);
      *v17 = result;
      *(v17 + 16) = v18;
    }
  }

  return result;
}

uint64_t OZElement::isVisibleInRig(OZElement *this)
{
  v2 = (this + 6680);
  OZChannel::getValueAsDouble((this + 6680), MEMORY[0x277CC08F0], 0.0);
  v4 = v3;
  v5 = (*(*(this + 835) + 560))(v2);
  result = 1;
  if (fabsf(v4) < 0.00001 && (v5 & 1) == 0)
  {
    v14 = &v14;
    v15 = &v14;
    v16 = 0;
    OZBehavior::GetBehaviorsAffectingChannel(v2, &v14, 1);
    v7 = v15;
    if (v15 == &v14)
    {
      goto LABEL_13;
    }

    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *((*(*v7[2] + 344))(v7[2]) + 8);
      v17 = xmmword_2603473C0;
      if (OZFactory::isKindOfClass(v10, &v17))
      {
        v11 = v7[2];
        if (v11)
        {
          if (v12)
          {
            ChanBase = OZSingleChannelBehavior::getChanBase(v12);
            if (ChanBase)
            {
              v8 |= ChanBase == v2;
            }
          }
        }
      }

      else
      {
        v9 |= (*(this + 1024) & 2) == 0;
      }

      v7 = v7[1];
    }

    while (v7 != &v14);
    if (v9 & 1 | ((v8 & 1) == 0))
    {
LABEL_13:
      std::__list_imp<unsigned int>::clear(&v14);
      return 1;
    }

    else
    {
      std::__list_imp<unsigned int>::clear(&v14);
      return 0;
    }
  }

  return result;
}

void sub_2600BFCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZElement::OZElement_lrSizeImpl::getInstance(OZElement::OZElement_lrSizeImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_lrSizeImpl::getInstance(void)::OZElement_lrSizeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_lrSizeImpl::getInstance(void)::OZElement_lrSizeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_lrSizeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_lrSizeImpl::_OZElement_lrSize;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_lrSizeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_lrSizeImpl::_OZElement_lrSize)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_lrSizeInfo::getInstance(OZElement::OZElement_lrSizeInfo *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_lrSizeInfo::getInstance(void)::OZElement_lrSizeInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_lrSizeInfo::getInstance(void)::OZElement_lrSizeInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_lrSizeInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_lrSizeInfo::_OZElement_lrSizeInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_lrSizeInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_lrSizeInfo::_OZElement_lrSizeInfo)
  {
    operator new();
  }
}

OZElement::OZElement_lrSizeInfo *OZElement::OZElement_lrSizeInfo::OZElement_lrSizeInfo(OZElement::OZElement_lrSizeInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 50.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_28727FEC0;
  *(this + 10) = &unk_28727FEE0;
  return this;
}

uint64_t OZElement::OZElement_lrIntensityImpl::getInstance(OZElement::OZElement_lrIntensityImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_lrIntensityImpl::getInstance(void)::OZElement_lrIntensityImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_lrIntensityImpl::getInstance(void)::OZElement_lrIntensityImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_lrIntensityImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_lrIntensityImpl::_OZElement_lrIntensity;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_lrIntensityImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_lrIntensityImpl::_OZElement_lrIntensity)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_lrIntensityScaleImpl::getInstance(OZElement::OZElement_lrIntensityScaleImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_lrIntensityScaleImpl::getInstance(void)::OZElement_lrIntensityScaleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_lrIntensityScaleImpl::getInstance(void)::OZElement_lrIntensityScaleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_lrIntensityScaleImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_lrIntensityScaleImpl::_OZElement_lrIntensityScale;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_lrIntensityScaleImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_lrIntensityScaleImpl::_OZElement_lrIntensityScale)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_lrOpacityImpl::getInstance(OZElement::OZElement_lrOpacityImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_lrOpacityImpl::getInstance(void)::OZElement_lrOpacityImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_lrOpacityImpl::getInstance(void)::OZElement_lrOpacityImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_lrOpacityImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_lrOpacityImpl::_OZElement_lrOpacity;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_lrOpacityImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_lrOpacityImpl::_OZElement_lrOpacity)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_reflectivityImpl::getInstance(OZElement::OZElement_reflectivityImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_reflectivityImpl::getInstance(void)::OZElement_reflectivityImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_reflectivityImpl::getInstance(void)::OZElement_reflectivityImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectivityImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_reflectivityImpl::_OZElement_reflectivity;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectivityImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_reflectivityImpl::_OZElement_reflectivity)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_reflectionBlurImpl::getInstance(OZElement::OZElement_reflectionBlurImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_reflectionBlurImpl::getInstance(void)::OZElement_reflectionBlurImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_reflectionBlurImpl::getInstance(void)::OZElement_reflectionBlurImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionBlurImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_reflectionBlurImpl::_OZElement_reflectionBlur;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionBlurImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_reflectionBlurImpl::_OZElement_reflectionBlur)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_reflectionBeginFalloffImpl::getInstance(OZElement::OZElement_reflectionBeginFalloffImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_reflectionBeginFalloffImpl::getInstance(void)::OZElement_reflectionBeginFalloffImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_reflectionBeginFalloffImpl::getInstance(void)::OZElement_reflectionBeginFalloffImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionBeginFalloffImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_reflectionBeginFalloffImpl::_OZElement_reflectionBeginFalloff;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionBeginFalloffImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_reflectionBeginFalloffImpl::_OZElement_reflectionBeginFalloff)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_reflectionBeginFalloffInfo::getInstance(OZElement::OZElement_reflectionBeginFalloffInfo *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_reflectionBeginFalloffInfo::getInstance(void)::OZElement_reflectionBeginFalloffInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_reflectionBeginFalloffInfo::getInstance(void)::OZElement_reflectionBeginFalloffInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionBeginFalloffInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_reflectionBeginFalloffInfo::_OZElement_reflectionBeginFalloffInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionBeginFalloffInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_reflectionBeginFalloffInfo::_OZElement_reflectionBeginFalloffInfo)
  {
    operator new();
  }
}

OZElement::OZElement_reflectionBeginFalloffInfo *OZElement::OZElement_reflectionBeginFalloffInfo::OZElement_reflectionBeginFalloffInfo(OZElement::OZElement_reflectionBeginFalloffInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 1000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287280208;
  *(this + 10) = &unk_287280228;
  return this;
}

uint64_t OZElement::OZElement_reflectionEndFalloffImpl::getInstance(OZElement::OZElement_reflectionEndFalloffImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_reflectionEndFalloffImpl::getInstance(void)::OZElement_reflectionEndFalloffImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_reflectionEndFalloffImpl::getInstance(void)::OZElement_reflectionEndFalloffImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionEndFalloffImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_reflectionEndFalloffImpl::_OZElement_reflectionEndFalloff;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionEndFalloffImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_reflectionEndFalloffImpl::_OZElement_reflectionEndFalloff)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_reflectionEndFalloffInfo::getInstance(OZElement::OZElement_reflectionEndFalloffInfo *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_reflectionEndFalloffInfo::getInstance(void)::OZElement_reflectionEndFalloffInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_reflectionEndFalloffInfo::getInstance(void)::OZElement_reflectionEndFalloffInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionEndFalloffInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_reflectionEndFalloffInfo::_OZElement_reflectionEndFalloffInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionEndFalloffInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_reflectionEndFalloffInfo::_OZElement_reflectionEndFalloffInfo)
  {
    operator new();
  }
}

OZElement::OZElement_reflectionEndFalloffInfo *OZElement::OZElement_reflectionEndFalloffInfo::OZElement_reflectionEndFalloffInfo(OZElement::OZElement_reflectionEndFalloffInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 1000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872802F8;
  *(this + 10) = &unk_287280318;
  return this;
}

uint64_t OZElement::OZElement_reflectionFalloffExponentImpl::getInstance(OZElement::OZElement_reflectionFalloffExponentImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_reflectionFalloffExponentImpl::getInstance(void)::OZElement_reflectionFalloffExponentImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_reflectionFalloffExponentImpl::getInstance(void)::OZElement_reflectionFalloffExponentImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionFalloffExponentImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_reflectionFalloffExponentImpl::_OZElement_reflectionFalloffExponent;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionFalloffExponentImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_reflectionFalloffExponentImpl::_OZElement_reflectionFalloffExponent)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_reflectionFalloffExponentInfo::getInstance(OZElement::OZElement_reflectionFalloffExponentInfo *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_reflectionFalloffExponentInfo::getInstance(void)::OZElement_reflectionFalloffExponentInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_reflectionFalloffExponentInfo::getInstance(void)::OZElement_reflectionFalloffExponentInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionFalloffExponentInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_reflectionFalloffExponentInfo::_OZElement_reflectionFalloffExponentInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_reflectionFalloffExponentInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_reflectionFalloffExponentInfo::_OZElement_reflectionFalloffExponentInfo)
  {
    operator new();
  }
}

OZElement::OZElement_reflectionFalloffExponentInfo *OZElement::OZElement_reflectionFalloffExponentInfo::OZElement_reflectionFalloffExponentInfo(OZElement::OZElement_reflectionFalloffExponentInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 8.0, 0.1, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872803E8;
  *(this + 10) = &unk_287280408;
  return this;
}

uint64_t OZElement::OZElement_castsReflectionImpl::getInstance(OZElement::OZElement_castsReflectionImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_castsReflectionImpl::getInstance(void)::OZElement_castsReflectionImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_castsReflectionImpl::getInstance(void)::OZElement_castsReflectionImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_castsReflectionImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_castsReflectionImpl::_OZElement_castsReflection;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_castsReflectionImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_castsReflectionImpl::_OZElement_castsReflection)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_conversionImpl::getInstance(OZElement::OZElement_conversionImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_conversionImpl::getInstance(void)::OZElement_conversionImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_conversionImpl::getInstance(void)::OZElement_conversionImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_conversionImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_conversionImpl::_OZElement_conversion;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_conversionImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_conversionImpl::_OZElement_conversion)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_conversionTypeImpl::getInstance(OZElement::OZElement_conversionTypeImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_conversionTypeImpl::getInstance(void)::OZElement_conversionTypeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_conversionTypeImpl::getInstance(void)::OZElement_conversionTypeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_conversionTypeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_conversionTypeImpl::_OZElement_conversionType;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_conversionTypeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_conversionTypeImpl::_OZElement_conversionType)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_dropShadowOpacityImpl::getInstance(OZElement::OZElement_dropShadowOpacityImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_dropShadowOpacityImpl::getInstance(void)::OZElement_dropShadowOpacityImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_dropShadowOpacityImpl::getInstance(void)::OZElement_dropShadowOpacityImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_dropShadowOpacityImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_dropShadowOpacityImpl::_OZElement_dropShadowOpacity;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_dropShadowOpacityImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_dropShadowOpacityImpl::_OZElement_dropShadowOpacity)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_dropShadowBlurImpl::getInstance(OZElement::OZElement_dropShadowBlurImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_dropShadowBlurImpl::getInstance(void)::OZElement_dropShadowBlurImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_dropShadowBlurImpl::getInstance(void)::OZElement_dropShadowBlurImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_dropShadowBlurImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_dropShadowBlurImpl::_OZElement_dropShadowBlur;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_dropShadowBlurImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_dropShadowBlurImpl::_OZElement_dropShadowBlur)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_dropShadowBlurInfo::getInstance(OZElement::OZElement_dropShadowBlurInfo *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_dropShadowBlurInfo::getInstance(void)::OZElement_dropShadowBlurInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_dropShadowBlurInfo::getInstance(void)::OZElement_dropShadowBlurInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_dropShadowBlurInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_dropShadowBlurInfo::_OZElement_dropShadowBlurInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_dropShadowBlurInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_dropShadowBlurInfo::_OZElement_dropShadowBlurInfo)
  {
    operator new();
  }
}

OZElement::OZElement_dropShadowBlurInfo *OZElement::OZElement_dropShadowBlurInfo::OZElement_dropShadowBlurInfo(OZElement::OZElement_dropShadowBlurInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872806B8;
  *(this + 10) = &unk_2872806D8;
  return this;
}

uint64_t OZElement::OZElement_dropShadowDistanceImpl::getInstance(OZElement::OZElement_dropShadowDistanceImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_dropShadowDistanceImpl::getInstance(void)::OZElement_dropShadowDistanceImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_dropShadowDistanceImpl::getInstance(void)::OZElement_dropShadowDistanceImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_dropShadowDistanceImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_dropShadowDistanceImpl::_OZElement_dropShadowDistance;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_dropShadowDistanceImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_dropShadowDistanceImpl::_OZElement_dropShadowDistance)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_dropShadowAngleImpl::getInstance(OZElement::OZElement_dropShadowAngleImpl *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_dropShadowAngleImpl::getInstance(void)::OZElement_dropShadowAngleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_dropShadowAngleImpl::getInstance(void)::OZElement_dropShadowAngleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_dropShadowAngleImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_dropShadowAngleImpl::_OZElement_dropShadowAngle;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_dropShadowAngleImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_dropShadowAngleImpl::_OZElement_dropShadowAngle)
  {
    operator new();
  }
}

uint64_t OZElement::OZElement_cropInfo::getInstance(OZElement::OZElement_cropInfo *this)
{
  if (atomic_load_explicit(&OZElement::OZElement_cropInfo::getInstance(void)::OZElement_cropInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement::OZElement_cropInfo::getInstance(void)::OZElement_cropInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_cropInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement::OZElement_cropInfo::_OZElement_cropInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement::OZElement_cropInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZElement::OZElement_cropInfo::_OZElement_cropInfo)
  {
    operator new();
  }
}

OZElement::OZElement_cropInfo *OZElement::OZElement_cropInfo::OZElement_cropInfo(OZElement::OZElement_cropInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 200.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287280820;
  *(this + 10) = &unk_287280840;
  return this;
}

void PCLightWrapOptions::~PCLightWrapOptions(PCLightWrapOptions *this)
{
  *(this + 4) = &unk_2872DEA38;
  *(this + 48) = 0;
  PCWeakCount::~PCWeakCount(this + 5);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toPCLightWrapOptions::~PCLightWrapOptions(PCLightWrapOptions *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 4) = &unk_2872DEA38;
  v1[48] = 0;
  PCWeakCount::~PCWeakCount(v1 + 5);

  JUMPOUT(0x2666E9F00);
}

void PCBlendOptions::~PCBlendOptions(PCSharedCount *this)
{
  this->var0 = &unk_287280918;
  this[4].var0 = &unk_287280948;
  PCSharedCount::~PCSharedCount(this + 3);
  this[4].var0 = &unk_2872DEA38;
  LOBYTE(this[6].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[5].var0);
}

{
  PCBlendOptions::~PCBlendOptions(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toPCBlendOptions::~PCBlendOptions(PCBlendOptions *this)
{
  PCBlendOptions::~PCBlendOptions((this + *(*this - 24)));
}

{
  PCBlendOptions::~PCBlendOptions((this + *(*this - 24)));

  JUMPOUT(0x2666E9F00);
}

void *std::vector<PCVector3<double>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2600C2558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::list<OZEffect *>::__move_assign(uint64_t *a1, void *a2)
{
  result = std::__list_imp<unsigned int>::clear(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

PCSharedCount *PCPtr<LiRenderer>::PCPtr<LiRendererBase>(PCSharedCount *a1, const PCSharedCount *a2)
{
  var0 = a2->var0;
  if (a2->var0)
  {
  }

  a1->var0 = var0;
  PCSharedCount::PCSharedCount(a1 + 1, a2 + 1);
  if (!a1->var0)
  {
    PCSharedCount::PCSharedCount(&v6);
    PCSharedCount::operator=(&a1[1], &v6);
    PCSharedCount::~PCSharedCount(&v6);
  }

  return a1;
}

void sub_2600C26BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::~PCSharedCount(&a10);
  PCSharedCount::~PCSharedCount(v10 + 1);
  _Unwind_Resume(a1);
}

uint64_t getMaterialPlist(void)
{
  {
    getMaterialPlist(void)::materialPlist = loadMaterialPlist();
  }

  return getMaterialPlist(void)::materialPlist;
}

uint64_t OZGetSubstanceLayerDictionary(void)
{
  MaterialPlist = getMaterialPlist();

  return [MaterialPlist objectForKey:@"substance"];
}

id OZCreateURLForAssetLayer(NSDictionary *a1)
{
  v2 = [(NSDictionary *)a1 objectForKey:@"image asset"];
  if (!v2)
  {
    v2 = [(NSDictionary *)a1 objectForKey:@"mask asset"];
    if (!v2)
    {
      v2 = [(NSDictionary *)a1 objectForKey:@"specular angle asset"];
      if (!v2)
      {
        v2 = [(NSDictionary *)a1 objectForKey:@"specular shininess asset"];
        if (!v2)
        {
          v2 = [(NSDictionary *)a1 objectForKey:@"specular intensity asset"];
          if (!v2)
          {
            v2 = [(NSDictionary *)a1 objectForKey:@"gradient asset"];
            if (!v2)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  OZGetAssetURL(v2, &v5);
  v3 = v5;
  PCURL::~PCURL(&v5);
  return v3;
}

void sub_2600C2928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

void OZGetAssetURL(NSDictionary *a1@<X0>, PCURL *a2@<X8>)
{
  v4 = [(NSDictionary *)a1 objectForKey:@"name"];
  v5 = [(NSDictionary *)a1 objectForKey:@"extension"];
  v6 = [(NSDictionary *)a1 objectForKey:@"subdir"];
  if (v6)
  {
    v7 = [@"PhysicalLayerAssets/" stringByAppendingString:v6];
  }

  else
  {
    v7 = @"PhysicalLayerAssets";
  }

  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ozone.framework"];
  PCAutoreleasePool::PCAutoreleasePool(&v9);
  PCURL::PCURL(a2, [v8 URLForResource:v4 withExtension:v5 subdirectory:v7]);
  PCAutoreleasePool::~PCAutoreleasePool(&v9);
}

void sub_2600C2A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCAutoreleasePool::~PCAutoreleasePool(va);
  _Unwind_Resume(a1);
}

id OZGetAssetWidth(NSDictionary *a1)
{
  result = [(NSDictionary *)a1 objectForKey:@"width"];
  if (result)
  {

    return [result unsignedIntValue];
  }

  return result;
}

id OZGetAssetHeight(NSDictionary *a1)
{
  result = [(NSDictionary *)a1 objectForKey:@"height"];
  if (result)
  {

    return [result unsignedIntValue];
  }

  return result;
}

id OZGetAssetIsTransparent(NSDictionary *a1)
{
  result = [(NSDictionary *)a1 objectForKey:@"transparent"];
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

uint64_t loadMaterialPlist(void)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.ozone.framework");
  v1 = CFBundleCopyResourceURL(BundleWithIdentifier, @"OZMaterials", @"plist", 0);
  v2 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v1];
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void OZGradientSource::OZGradientSource(OZGradientSource *this)
{
  *(this + 11) = &unk_2872DEA38;
  *(this + 12) = 0;
  *(this + 104) = 1;
  LiImageFilter::LiImageFilter(this, &off_287280A98);
  *this = &unk_287280990;
  *(this + 11) = &unk_287280A78;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
}

void sub_2600C2C14(_Unwind_Exception *a1)
{
  *(v1 + 88) = v2;
  *(v1 + 104) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

CGColorSpace **OZGradientSource::getHelium@<X0>(OZGradientSource *this@<X0>, LiAgent *a2@<X1>, void *a3@<X8>)
{
  RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
  CGColorSpace = FxColorDescription::getCGColorSpace((*(a2 + 6) + 160));
  FxColorDescription::FxColorDescription(&v21, RequestedColorDescription, CGColorSpace);
  LiAgent::getHeliumInColorDescription(a2, *(this + 2), &v21, &v20);
  if (v20)
  {
    v8 = *(this + 40);
    v18 = *(this + 56);
    v19 = v8;
    v17 = 0x3FF0000000000000;
    LiAgent::getInversePixelTransform(a2, 0.0, v16);
    v9 = *(this + 9);
    v10 = FxColorDescription::getCGColorSpace(&v21);
    OZGradient1D::getHeliumGradientTexture(v9, v16, &v17, &v19, &v18, v10);
    if (FxColorDescription::isHDR(&v21))
    {
      FxColorDescription::FxColorDescription(&v14, &v21, 0);
      FxApplyColorConform(&v15, &v14, &v21, &v13);
      v11 = v13;
      if (v15 == v13)
      {
        if (v15)
        {
          (*(*v13 + 24))(v13);
        }
      }

      else
      {
        if (v15)
        {
          (*(*v15 + 24))();
          v11 = v13;
        }

        v15 = v11;
      }

      PCCFRef<CGColorSpace *>::~PCCFRef(&v14._pcColorDesc._colorSpaceRef._obj);
    }

    FxApplyGradientBlendRequest();
  }

  *a3 = 0;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v21._pcColorDesc._colorSpaceRef._obj);
}

void sub_2600C2E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CGColorSpace *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&a11);
  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  v17 = *(v15 - 88);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef((v15 - 80));
  _Unwind_Resume(a1);
}

void OZGradientSource::~OZGradientSource(PCSharedCount *this)
{
  this->var0 = off_287280AE8;
  this[11].var0 = off_287280BD0;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_287280AA0);
  this[11].var0 = &unk_2872DEA38;
  LOBYTE(this[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[12].var0);
}

{
  this->var0 = off_287280AE8;
  this[11].var0 = off_287280BD0;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_287280AA0);
  this[11].var0 = &unk_2872DEA38;
  LOBYTE(this[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[12].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZGradientSource::~OZGradientSource(OZGradientSource *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = off_287280AE8;
  v1[11].var0 = off_287280BD0;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_287280AA0);
  v1[11].var0 = &unk_2872DEA38;
  LOBYTE(v1[13].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[12].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = off_287280AE8;
  v1[11].var0 = off_287280BD0;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_287280AA0);
  v1[11].var0 = &unk_2872DEA38;
  LOBYTE(v1[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[12].var0);

  JUMPOUT(0x2666E9F00);
}

OZChannelBase *OZElement::updateColorConversionChannels(OZElement *this)
{
  result = (*(*this + 2240))(this);
  if (result)
  {
    v3 = (*(*this + 272))(this);
    v4 = llround(OZScene::getSceneWhiteLevel(v3) * 100.0);
    if (*(this + 3166) != v4)
    {
      *(this + 3166) = v4;
    }

    if (OZChannel::getValueAsInt((this + 12000), MEMORY[0x277CC08F0], 0.0))
    {
      OZChannelBase::enable((this + 12256), 1, 1);
      if (OZChannel::getValueAsInt((this + 12256), MEMORY[0x277CC08F0], 0.0) == 2)
      {
        v5 = (this + 12512);
        v6 = 1;
      }

      else
      {
        v5 = (this + 12512);
        v6 = 0;
      }

      return OZChannelBase::enable(v5, v6, 1);
    }

    else
    {
      OZChannelBase::enable((this + 12256), 0, 1);
      v7 = (*(*this + 2232))(this);
      OZChannel::setValue((this + 12256), MEMORY[0x277CC08F0], v7, 1);
      OZChannelBase::enable((this + 12512), 0, 1);

      return OZChannel::resetToDefault((this + 12512), 1);
    }
  }

  return result;
}

void OZImageNode::OZImageNode(OZImageNode *this)
{
  *this = &unk_287280E68;
  PCWorkingColorVector::PCWorkingColorVector((this + 8));
  *this = &unk_287280D68;
}

void OZImageNode::getHeliumGraph()
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "subclass must implement");
  PCString::PCString(&v1, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZImageNode.cpp");
  PCException::PCException(exception, &v2, &v1, 49);
  *exception = &unk_2871F6178;
}

void sub_2600C3504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

float OZImageNode::getDimensions(OZImageNode *this, float *a2, float *a3, const OZRenderState *a4)
{
  v14[0] = 0;
  v14[1] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v15 = _Q0;
  (*(*this + 16))(this, v14, a4);
  v11 = *(&v15 + 1);
  v12 = *&v15;
  *a2 = v12;
  result = v11;
  *a3 = result;
  return result;
}

void OZImageNode::makeRenderTemporalSource(OZImageNode *this@<X0>, PCSharedCount *a2@<X8>)
{
  (*(*this + 168))(&v5);
  if (v5)
  {
    operator new();
  }

  a2->var0 = 0;
  PCSharedCount::PCSharedCount(a2 + 1);
  PCSharedCount::~PCSharedCount(&v6);
}

void sub_2600C387C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCSharedCount::~PCSharedCount(v4 + 1);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t OZLiElementTimeRender::OZLiElementTimeRender(uint64_t a1, uint64_t a2, uint64_t a3, const OZRenderGraphState *a4, const PCSharedCount *a5)
{
  *(a1 + 344) = &unk_2872DEA38;
  *(a1 + 352) = 0;
  *(a1 + 360) = 1;
  LiImageSource::LiImageSource(a1, &off_2872A2FF8);
  *a1 = &unk_2872A2F08;
  *(a1 + 344) = &unk_2872A2FD8;
  *(a1 + 16) = a2;
  OZRenderGraphState::OZRenderGraphState((a1 + 24), a4);
  *(a1 + 328) = a5->var0;
  PCSharedCount::PCSharedCount((a1 + 336), a5 + 1);
  *(a1 + 320) = 0;
  return a1;
}

void sub_2600C39B8(_Unwind_Exception *a1)
{
  OZRenderGraphState::~OZRenderGraphState((v1 + 24));
  OZChannelBase::setRangeName(v1, v3 + 1);
  *(v1 + 344) = v2;
  *(v1 + 360) = 0;
  PCWeakCount::~PCWeakCount((v1 + 352));
  _Unwind_Resume(a1);
}

void sub_2600C3ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCSharedCount::~PCSharedCount(v6 + 1);
  PCSharedCount::~PCSharedCount(v7 + 1);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

__n128 OZRenderNode::getBounds(uint64_t a1, __n128 *a2)
{
  __asm { FMOV            V0.2D, #-1.0 }

  a2[1] = result;
  return result;
}

void OZImageElement::registerRetiming(OZImageElement *this)
{
  {
    OZRetimingUtil::RetimingExaminer::RetimingExaminer(&OZImageElement::registerRetiming(void)::sRetimer);
    OZImageElement::registerRetiming(void)::sRetimer = &unk_287283290;
    __cxa_atexit(OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::~RetimingExaminerTemplate, &OZImageElement::registerRetiming(void)::sRetimer, &dword_25F8F0000);
  }
}

void OZImageElement::OZImageElement(OZImageElement *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZElement::OZElement(this, a2, a3, a4);
  *v5 = &unk_287280EC8;
  v5[2] = &unk_2872817F8;
  v5[6] = &unk_287281A50;
  v5[816] = &unk_287281AA8;
  PCURL::PCURL(v43, @"Channel Image Element Footage Folder");
  OZChannelFolder::OZChannelFolder((this + 18776), v43, (this + 320), 0x144u, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Footage");
  OZChanFootageRefWithPicker::OZChanFootageRefWithPicker((this + 18904), v43, (this + 18776), 0x12Cu, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Footage");
  OZChanFootageRefWithPicker::OZChanFootageRefWithPicker((this + 19112), v43, (this + 320), 0x12Cu, 0xAu);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Page Number");
  Instance = OZImageElement::OZImageElement_pageNumberImpl::getInstance(v6);
  v8 = OZImageElement::OZImageElement_pageNumberInfo::getInstance(Instance);
  OZChannelUint32::OZChannelUint32((this + 19320), 1.0, v43, (this + 320), 0x12Du, 0, Instance, v8);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Background Color");
  OZChannelColor::OZChannelColor((this + 19472), 1.0, 1.0, 1.0, 1.0, v43, (this + 320), 0x12Eu, 0x10002u, 6u);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Time Scale");
  v10 = OZImageElement::OZImageElement_timeScaleImpl::getInstance(v9);
  OZChannelDouble::OZChannelDouble((this + 20632), 1.0, v43, (this + 320), 0x135u, 4259840, v10, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Time Reverse");
  OZChannelBool::OZChannelBool((this + 20784), 0, v43, (this + 320), 0x136u, 0x410000u, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Time Remap Enum");
  PCURL::PCURL(&v42, @"Channel Image Element Time Remap Label");
  OZChannelEnum::OZChannelEnum((this + 20936), 0, v43, &v42, (this + 320), 0x12Fu, 2, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Retime Frame");
  OZChannelRetimeFrame::OZChannelRetimeFrame((this + 21192), 1.0, v43, (this + 320), 0x130u, 131074);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Retime Frame Cache");
  v12 = OZImageElement::OZImageElement_retimeFrameCacheImpl::getInstance(v11);
  OZChannelDouble::OZChannelDouble((this + 21344), 1.0, v43, (this + 320), 0x13Fu, 131074, v12, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Retime Sampling Enum");
  PCURL::PCURL(&v42, @"Channel Image Element Retime Sampling Label");
  OZChannelEnumRetime::OZChannelEnumRetime((this + 21496), v43, &v42, (this + 320), 0x131u, 2u);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element End Condition Enum");
  PCURL::PCURL(&v42, @"Channel Image Element End Condition Label");
  OZChannelEnum::OZChannelEnum((this + 21752), v43, &v42, (this + 320), 0x132u, 2u, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Loop Duration");
  v14 = OZImageElement::OZImageElement_loopDurationImpl::getInstance(v13);
  OZChannelDouble::OZChannelDouble((this + 22008), 0.0, v43, (this + 320), 0x133u, 32770, v14, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Duration Cache");
  OZChannelDouble::OZChannelDouble((this + 22160), 0.0, v43, (this + 320), 0x140u, 2, 0, 0);
  PCString::~PCString(v43);
  PCSharedCount::PCSharedCount(v43);
  PCURL::PCURL(&v42, @"Channel Image Element Layer Number");
  v16 = OZImageElement::OZImageElement_layerImpl::getInstance(v15);
  v17 = OZImageElement::OZImageElement_layerInfo::getInstance(v16);
  OZChannelEnumLayer::OZChannelEnumLayer((this + 22312), v43, &v42, (this + 320), 0x134u, 2u, v16, v17);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Zone");
  OZChannelBool::OZChannelBool((this + 22568), 0, v43, (this + 448), 0x137u, 0x80u, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Fit Mode Enum");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Fit Mode Label");
  OZChannelEnum::OZChannelEnum((this + 22720), v43, &v42, (this + 448), 0x13Du, 0, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCString::PCString(v43, "Passthrough Placeholder");
  OZChannelBool::OZChannelBool((this + 22976), 0, v43, (this + 448), 0x153u, 0, 0, 0);
  PCString::~PCString(v43);
  v18 = PCString::PCString(v43, "Source ID");
  v19 = OZImageElement::OZImageElement_dropInputIDImpl::getInstance(v18);
  v20 = OZImageElement::OZImageElement_dropInputIDInfo::getInstance(v19);
  OZChannelUint32::OZChannelUint32((this + 23128), 0, v43, (this + 448), 0x154u, 2, v19, v20);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Use Display Aspect");
  OZChannelBool::OZChannelBool((this + 23280), 0, v43, (this + 448), 0x143u, 0, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Type Enum");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Type Label");
  OZChannelEnum::OZChannelEnum((this + 23432), 0, v43, &v42, (this + 448), 0x141u, 0, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Type Enum (Composition)");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Type Label");
  OZChannelEnum::OZChannelEnum((this + 23688), 0, v43, &v42, (this + 448), 0x14Bu, 136446088, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Type Enum (Generator)");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Type Label");
  OZChannelEnum::OZChannelEnum((this + 23944), 0, v43, &v42, (this + 448), 0x14Cu, 136446088, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Type Enum (Effect)");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Type Label");
  OZChannelEnum::OZChannelEnum((this + 24200), 0, v43, &v42, (this + 448), 0x14Du, 136446088, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Type Enum (Effect, No Off)");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Type Label");
  OZChannelEnum::OZChannelEnum((this + 24456), 0, v43, &v42, (this + 448), 0x14Eu, 136446088, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Type Enum (Title)");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Type Label");
  OZChannelEnum::OZChannelEnum((this + 24712), 0, v43, &v42, (this + 448), 0x14Fu, 136446088, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Type Enum (Title, No Off)");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Type Label");
  OZChannelEnum::OZChannelEnum((this + 24968), 0, v43, &v42, (this + 448), 0x150u, 136446088, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Type Enum (Transition)");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Type Label");
  OZChannelEnum::OZChannelEnum((this + 25224), 0, v43, &v42, (this + 448), 0x151u, 136446088, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Type Enum (Transition, No Off)");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Type Label");
  OZChannelEnum::OZChannelEnum((this + 25480), 0, v43, &v42, (this + 448), 0x152u, 136446088, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Media Type Enum");
  PCURL::PCURL(&v42, @"Channel Image Element Drop Media Type Label");
  OZChannelEnum::OZChannelEnum((this + 25736), 0, v43, &v42, (this + 448), 0x142u, 0, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Replaced");
  OZChannelBool::OZChannelBool(this + 171, 0, v43, (this + 448), 0x138u, 2u, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Fit Factor");
  OZChannelScale::OZChannelScale((this + 26144), 1.0, 1.0, v43, (this + 448), 0x13Eu, 2u, 2u, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Pan");
  v22 = OZImageElement::OZImageElement_dropPanImpl::getInstance(v21);
  v23 = OZImageElement::OZImageElement_dropPanInfo::getInstance(v22);
  OZChannelPosition::OZChannelPosition((this + 26584), 0.0, 0.0, v43, (this + 448), 0x146u, 0, 2u, v22, v23);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Scale");
  v25 = OZImageElement::OZImageElement_dropScaleImpl::getInstance(v24);
  OZChannelScale::OZChannelScale((this + 27288), 1.0, 1.0, v43, (this + 448), 0x147u, 0, 2u, v25, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Fill Opaque");
  v27 = OZImageElement::OZImageElement_dropFillOpaqueImpl::getInstance(v26);
  OZChannelBool::OZChannelBool((this + 27728), 0, v43, (this + 448), 0x148u, 0, v27, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Fill Color");
  OZChannelColor::OZChannelColor((this + 27880), 0.0, 0.0, 0.0, 1.0, v43, (this + 448), 0x149u, 0, 6u);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Clear");
  OZChannelButton::OZChannelButton((this + 29040), OZImageElement::clearDropZoneCallbackStub, this, v43, (this + 448), 0x13Bu, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Width");
  v29 = OZImageElement::OZImageElement_dropWidthImpl::getInstance(v28);
  v30 = OZImageElement::OZImageElement_dropWidthInfo::getInstance(v29);
  OZChannelUint32::OZChannelUint32((this + 29232), 1.0, v43, (this + 448), 0x139u, 2, v29, v30);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Drop Height");
  v32 = OZImageElement::OZImageElement_dropHeightImpl::getInstance(v31);
  v33 = OZImageElement::OZImageElement_dropHeightInfo::getInstance(v32);
  OZChannelUint32::OZChannelUint32((this + 29384), 1.0, v43, (this + 448), 0x13Au, 2, v32, v33);
  PCString::~PCString(v43);
  PCString::PCString(v43, "Remove Background");
  OZChannelBool::OZChannelBool((this + 29536), 0, v43, (this + 448), 0x155u, 0, 0, 0);
  PCString::~PCString(v43);
  PCString::PCString(v43, "Apply Motion Lights To Subject");
  OZChannelBool::OZChannelBool((this + 29688), 0, v43, (this + 448), 0x156u, 0, 0, 0);
  PCString::~PCString(v43);
  PCString::PCString(v43, "Use Camera Source");
  OZChannelBool::OZChannelBool((this + 29840), 0, v43, (this + 448), 0x157u, 0, 0, 0);
  PCString::~PCString(v43);
  PCString::PCString(v43, "Hidden Channel");
  OZChannelBool::OZChannelBool((this + 29992), 0, v43, (this + 448), 0x14Au, 0xAu, 0, 0);
  PCString::~PCString(v43);
  *(this + 30144) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 30148));
  PCURL::PCURL((this + 30168), "", 0);
  v34 = MEMORY[0x277CC08F0];
  *(this + 1886) = *MEMORY[0x277CC08F0];
  *(this + 3774) = *(v34 + 16);
  *(this + 7550) = 0;
  *(this + 3776) = 0;
  *(this + 3778) = 0;
  *(this + 3777) = 0;
  *(this + 3779) = 0xBFF0000000000000;
  *(this + 3780) = 0xBFF0000000000000;
  *(this + 7562) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 30252));
  *(this + 30268) = 0;
  *(this + 3784) = 0;
  *(this + 30289) = 0;
  *(this + 3793) = 0;
  *(this + 30296) = 0u;
  *(this + 30312) = 0u;
  *(this + 30328) = 0u;
  PCURL::PCURL(v43, @"Channel Image Element Cinematography Folder");
  OZChannelFolder::OZChannelFolder((this + 30352), v43, (this + 320), 0x158u, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Focus Enum");
  PCURL::PCURL(&v42, @"Channel Image Element Focus");
  OZChannelEnum::OZChannelEnum((this + 30480), v43, &v42, (this + 30352), 0x159u, 2u, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Aperture");
  OZChannelDouble::OZChannelDouble((this + 30736), 1.4, v43, (this + 30352), 0x15Au, 0, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Disparity");
  OZChannelDouble::OZChannelDouble((this + 30888), 0.0, v43, (this + 30352), 0x15Bu, 2, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element FX Type Mode Enum");
  PCURL::PCURL(&v42, @"Channel Image Element FX Type");
  OZChannelEnum::OZChannelEnum((this + 31040), v43, &v42, (this + 30352), 0x15Du, 2u, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element User Focus Points");
  OZChannelPosition::OZChannelPosition((this + 31296), v43, (this + 30352), 0x15Cu, 0, 2u, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Display Mode Enum");
  PCURL::PCURL(&v42, @"Channel Image Element Display Mode");
  OZChannelEnum::OZChannelEnum((this + 32000), v43, &v42, (this + 30352), 0x15Eu, 2u, 0, 0);
  PCString::~PCString(&v42);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Initialized");
  OZChannelBool::OZChannelBool((this + 32256), 0, v43, (this + 30352), 0x15Fu, 2u, 0, 0);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Retimed");
  OZChannelBool::OZChannelBool((this + 32408), 0, v43, (this + 30352), 0x160u, 2u, 0, 0);
  PCString::~PCString(v43);
  *(this + 4072) = 0;
  *(this + 2035) = 0u;
  OZChannelFolder::setFoldFlag((this + 56), 0x4000);
  OZChannelFolder::saveStateAsDefault((this + 56));
  OZScene::setApplyMotionEffectScaleTo3DObjectRenders(this + 18904, 0);
  OZChanObjectManipRef::setAlwaysUpdateDefaultValue(this + 18904, 1);
  *(this + 19096) = 1;
  *(this + 18396) = 0x100000002;
  OZChannel::setKeyframable((this + 29040), 0);
  OZChannel::setDiscrete((this + 21192), 0, 0);
  OZChannel::setKeyframable((this + 20784), 0);
  OZChannel::setKeyframable((this + 20936), 0);
  OZChannel::setKeyframable((this + 21496), 0);
  OZChannel::setKeyframable((this + 21752), 0);
  OZChannelBase::setFlag((this + 21192), 128, 0);
  OZChannelBase::setFlag((this + 21344), 128, 0);
  *(this + 30145) = 0;
  OZImageElement::getRetimingHash(this);
  *(this + 30148) = *&v43[0].var0;
  OZChannelBase::setFlag((this + 22976), 2, 0);
  OZChannelBase::setFlag((this + 22976), 8, 0);
  OZChannelBase::setFlag((this + 22976), 0x1000000000, 0);
  OZChannelBase::setFlag((this + 22976), 128, 0);
  OZChannelBase::setFlag((this + 23128), 2, 0);
  OZChannelBase::setFlag((this + 23128), 8, 0);
  OZChannelBase::setFlag((this + 23128), 0x1000000000, 0);
  OZChannelBase::setFlag((this + 23128), 128, 0);
  OZChannelFolder::setKeyframable((this + 26584), 0, 0);
  OZChannelFolder::setKeyframable((this + 27288), 0, 0);
  OZChannelFolder::setKeyframable((this + 27880), 0, 0);
  OZChannel::setKeyframable((this + 23688), 0);
  OZChannelBase::setFlag((this + 23688), 0x1000000000, 0);
  OZChannelBase::setFlag((this + 23688), 0x2000000000, 0);
  OZChannel::setKeyframable((this + 23944), 0);
  OZChannelBase::setFlag((this + 23944), 0x1000000000, 0);
  OZChannelBase::setFlag((this + 23944), 0x2000000000, 0);
  OZChannel::setKeyframable((this + 24200), 0);
  OZChannelBase::setFlag((this + 24200), 0x1000000000, 0);
  OZChannelBase::setFlag((this + 24200), 0x2000000000, 0);
  OZChannel::setKeyframable((this + 24456), 0);
  OZChannelBase::setFlag((this + 24456), 0x1000000000, 0);
  OZChannelBase::setFlag((this + 24456), 0x2000000000, 0);
  OZChannel::setKeyframable((this + 24712), 0);
  OZChannelBase::setFlag((this + 24712), 0x1000000000, 0);
  OZChannelBase::setFlag((this + 24712), 0x2000000000, 0);
  OZChannel::setKeyframable((this + 24968), 0);
  OZChannelBase::setFlag((this + 24968), 0x1000000000, 0);
  OZChannelBase::setFlag((this + 24968), 0x2000000000, 0);
  OZChannel::setKeyframable((this + 25224), 0);
  OZChannelBase::setFlag((this + 25224), 0x1000000000, 0);
  OZChannelBase::setFlag((this + 25224), 0x2000000000, 0);
  OZChannel::setKeyframable((this + 25480), 0);
  OZChannelBase::setFlag((this + 25480), 0x1000000000, 0);
  OZChannelBase::setFlag((this + 25480), 0x2000000000, 0);
  OZImageElement::showHideDropZoneChannels(this, 0);
  OZChannelBase::saveStateAsDefault((this + 22568));
  OZChannelBase::saveStateAsDefault((this + 23432));
  OZChannelBase::saveStateAsDefault((this + 23688));
  OZChannelBase::saveStateAsDefault((this + 23944));
  OZChannelBase::saveStateAsDefault((this + 24200));
  OZChannelBase::saveStateAsDefault((this + 24456));
  OZChannelBase::saveStateAsDefault((this + 24712));
  OZChannelBase::saveStateAsDefault((this + 24968));
  OZChannelBase::saveStateAsDefault((this + 25224));
  OZChannelBase::saveStateAsDefault((this + 25480));
  OZChannelBase::saveStateAsDefault((this + 25736));
  OZChannelBase::saveStateAsDefault((this + 22720));
  OZChannelFolder::saveStateAsDefault((this + 26584));
  OZChannelFolder::saveStateAsDefault((this + 27288));
  OZChannelBase::saveStateAsDefault((this + 27728));
  OZChannelFolder::saveStateAsDefault((this + 27880));
  OZChannelBase::saveStateAsDefault((this + 23280));
  OZChannelBase::saveStateAsDefault((this + 29040));
  OZChannelBase::setRangeName(this, v35);
  OZChannelFolder::setFoldFlag((this + 30352), 131076);
  OZChannelBase::setResetCallback(this + 271, OZImageElementCinematographyResetCallback, this, 0);
  OZChannelFolder::removeDescendant((this + 320), this + 271);
  OZChannelFolder::insertDescendantAfter((this + 320), (this + 6552), this + 271);
  OZChannel::setMin((this + 30736), 2.0);
  OZChannel::setMax((this + 30736), 16.0);
  OZChannel::setSliderMin((this + 30736), 2.0);
  OZChannel::setSliderMax((this + 30736), 16.0);
  OZChannel::setCoarseDelta((this + 30736), 0.1);
  OZChannel::setFineDelta((this + 30736), 0.01);
  OZChannel::setInterpolation((this + 30736), 1);
  PCString::PCString(v43, "PISliderTransformerAperture");
  v36 = PCString::cf_str(v43);
  OZChannel::setSliderTransformerName((this + 30736), v36);
  PCString::~PCString(v43);
  PCURL::PCURL(v43, @"Channel Image Element Aperture Suffix");
  OZChannel::setSuffix((this + 30736), v43);
  PCString::~PCString(v43);
  OZChannelBase::setFlag((this + 30888), 0x20000000000, 0);
  OZChannelBase::saveStateAsDefault((this + 30480));
  OZChannelBase::saveStateAsDefault((this + 30888));
  OZChannelFolder::saveStateAsDefault((this + 31296));
  OZChannelBase::saveStateAsDefault((this + 32000));
  OZChannelBase::saveStateAsDefault((this + 31040));
  *(this + 8146) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 30232) = _Q0;
  *(this + 3785) = 0;
  *(this + 30288) = 0;
}

void sub_2600C5AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  PCString::~PCString(&a11);
  v18 = *(v11 + 32560);
  if (v18)
  {
    *(v11 + 32568) = v18;
    operator delete(v18);
  }

  OZChannelBool::~OZChannelBool((v11 + 32408));
  OZChannelBool::~OZChannelBool((v11 + 32256));
  OZChannelEnum::~OZChannelEnum((v11 + v14));
  OZChannelPosition::~OZChannelPosition((v11 + v16));
  OZChannelEnum::~OZChannelEnum((v11 + 31040));
  OZChannel::~OZChannel((v11 + v15));
  OZChannel::~OZChannel((v11 + v13));
  OZChannelEnum::~OZChannelEnum((v11 + 30480));
  OZChannelFolder::~OZChannelFolder((v11 + v12));
  PCURL::~PCURL((v11 + 30168));
  OZChannelBool::~OZChannelBool((v11 + 29992));
  OZChannelBool::~OZChannelBool((v11 + 29840));
  OZChannelBool::~OZChannelBool((v11 + 29688));
  OZChannelBool::~OZChannelBool((v11 + 29536));
  OZChannel::~OZChannel((v11 + 29384));
  OZChannel::~OZChannel((v11 + 29232));
  OZChannelButton::~OZChannelButton((v11 + 29040));
  OZChannelColor::~OZChannelColor((v11 + 27880));
  OZChannelBool::~OZChannelBool((v11 + 27728));
  OZChannel2D::~OZChannel2D((v11 + 27288));
  OZChannelPosition::~OZChannelPosition((v11 + 26584));
  OZChannel2D::~OZChannel2D((v11 + 26144));
  OZChannelBool::~OZChannelBool((v11 + 25992));
  OZChannelEnum::~OZChannelEnum((v11 + 25736));
  OZChannelEnum::~OZChannelEnum((v11 + 25480));
  OZChannelEnum::~OZChannelEnum((v11 + 25224));
  OZChannelEnum::~OZChannelEnum((v11 + 24968));
  OZChannelEnum::~OZChannelEnum((v11 + 24712));
  OZChannelEnum::~OZChannelEnum((v11 + 24456));
  OZChannelEnum::~OZChannelEnum((v11 + 24200));
  OZChannelEnum::~OZChannelEnum((v11 + 23944));
  OZChannelEnum::~OZChannelEnum((v11 + 23688));
  OZChannelEnum::~OZChannelEnum((v11 + 23432));
  OZChannelBool::~OZChannelBool((v11 + 23280));
  OZChannel::~OZChannel((v11 + 23128));
  OZChannelBool::~OZChannelBool((v11 + 22976));
  OZChannelEnum::~OZChannelEnum((v11 + 22720));
  OZChannelBool::~OZChannelBool((v11 + 22568));
  OZChannelEnum::~OZChannelEnum((v11 + 22312));
  OZChannel::~OZChannel((v11 + 22160));
  OZChannel::~OZChannel((v11 + 22008));
  OZChannelEnum::~OZChannelEnum((v11 + 21752));
  OZChannelEnum::~OZChannelEnum((v11 + 21496));
  OZChannel::~OZChannel((v11 + 21344));
  OZChannelRetimeFrame::~OZChannelRetimeFrame((v11 + 21192));
  OZChannelEnum::~OZChannelEnum((v11 + 20936));
  OZChannelBool::~OZChannelBool((v11 + 20784));
  OZChannel::~OZChannel((v11 + 20632));
  OZChannelColor::~OZChannelColor((v11 + 19472));
  OZChannel::~OZChannel((v11 + 19320));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v11 + 19112));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v11 + 18904));
  OZChannelFolder::~OZChannelFolder((v11 + 18776));
  OZElement::~OZElement(v11);
  _Unwind_Resume(a1);
}

void OZImageElement::clearDropZoneCallbackStub(OZImageElement *this, void *a2)
{
  if (this)
  {
    v3 = this + 28672;
    if (*(this + 30249) == 1)
    {
      if ((*(this + 30248) & 1) == 0)
      {
        return;
      }
    }

    else
    {
      ValueAsInt = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
      v3[1576] = ValueAsInt != 0;
      v3[1577] = 1;
      if (!ValueAsInt)
      {
        return;
      }
    }

    OZImageElement::clearDropZoneCallback(this);
  }
}

uint64_t OZImageElement::showHideDropZoneChannels(OZImageElement *this, int a2)
{
  v4 = this + 28672;
  *(this + 30249) = 0;
  OZChannelBase::setFlag((this + 22568), 2, a2);
  OZChannelBase::setFlag((this + 23432), 2, a2);
  OZChannelBase::setFlag((this + 23688), 2, a2);
  v5 = (this + 23944);
  OZChannelBase::setFlag((this + 23944), 2, a2);
  OZChannelBase::setFlag((this + 24200), 2, a2);
  OZChannelBase::setFlag((this + 24456), 2, a2);
  OZChannelBase::setFlag((this + 24712), 2, a2);
  OZChannelBase::setFlag((this + 24968), 2, a2);
  OZChannelBase::setFlag((this + 25224), 2, a2);
  OZChannelBase::setFlag((this + 25480), 2, a2);
  v6 = *(this + 121);
  if (v6)
  {
    v7 = *(v6 + 1584);
    if (v7)
    {
      if (v4[1577] == 1)
      {
        if ((v4[1576] & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        ValueAsInt = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
        v4[1576] = ValueAsInt != 0;
        v4[1577] = 1;
        if (!ValueAsInt)
        {
          goto LABEL_14;
        }
      }

      if (OZImageElement::getFootage(this))
      {
        Footage = OZImageElement::getFootage(this);
        (*(*Footage + 1232))(&v19);
        isDefaultDropZoneFootage = OZImageElement::isDefaultDropZoneFootage(&v19);
        PCURL::~PCURL(&v19);
        v10 = *(v7 + 320);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            if (isDefaultDropZoneFootage)
            {
              v5 = (this + 24456);
            }

            else
            {
              v5 = (this + 24200);
            }

            goto LABEL_35;
          }

          v11 = isDefaultDropZoneFootage;
          if (v10 == 4)
          {
            if (isDefaultDropZoneFootage)
            {
              v5 = (this + 24968);
            }

            else
            {
              v5 = (this + 24712);
            }

            goto LABEL_35;
          }
        }

        else
        {
          if (v10 == 1)
          {
            if (isDefaultDropZoneFootage)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

          v11 = isDefaultDropZoneFootage;
          if (v10 == 2)
          {
            if (isDefaultDropZoneFootage)
            {
              v5 = (this + 25480);
            }

            else
            {
              v5 = (this + 25224);
            }

            goto LABEL_35;
          }
        }

        goto LABEL_26;
      }

LABEL_14:
      v11 = 0;
      v10 = *(v7 + 320);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v5 = (this + 24200);
          goto LABEL_35;
        }

        v5 = (this + 24712);
        if (v10 == 4)
        {
LABEL_35:
          OZChannelBase::resetFlag(v5, 2, a2);
          goto LABEL_36;
        }
      }

      else
      {
        if (v10 == 1)
        {
          goto LABEL_35;
        }

        v5 = (this + 25224);
        if (v10 == 2)
        {
          goto LABEL_35;
        }
      }

LABEL_26:
      if (v10)
      {
        goto LABEL_36;
      }

      v5 = (this + 23688);
      if (v11)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

LABEL_36:
  if (v4[1577] == 1)
  {
    if ((v4[1576] & 1) == 0)
    {
LABEL_38:
      OZChannelBase::setFlag((this + 25736), 2, a2);
      OZChannelBase::setFlag((this + 22720), 2, a2);
      OZChannelBase::setFlag((this + 26584), 2, a2);
      OZChannelBase::setFlag((this + 27288), 2, a2);
      OZChannelBase::setFlag((this + 27728), 2, a2);
      OZChannelBase::setFlag((this + 27880), 2, a2);
      OZChannelBase::setFlag((this + 23280), 2, a2);
      v12 = (this + 29040);
LABEL_50:
      result = OZChannelBase::setFlag(v12, 2, a2);
      goto LABEL_51;
    }
  }

  else
  {
    v13 = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
    v4[1576] = v13 != 0;
    v4[1577] = 1;
    if (!v13)
    {
      goto LABEL_38;
    }
  }

  v12 = (this + 25736);
  OZChannelBase::resetFlag((this + 25736), 2, a2);
  OZChannelBase::resetFlag((this + 22720), 2, a2);
  if (OZChannel::getValueAsInt(this + 171, MEMORY[0x277CC08F0], 0.0))
  {
    OZChannelBase::resetFlag((this + 26584), 2, a2);
    OZChannelBase::resetFlag((this + 27288), 2, a2);
  }

  else
  {
    OZChannelBase::setFlag((this + 26584), 2, a2);
    OZChannelBase::setFlag((this + 27288), 2, a2);
  }

  OZChannelBase::resetFlag((this + 27728), 2, a2);
  OZChannelBase::resetFlag((this + 27880), 2, a2);
  OZChannelBase::resetFlag((this + 23280), 2, a2);
  OZChannelBase::resetFlag((this + 29040), 2, a2);
  if ((OZImageElement::isInputSource(this) & 1) != 0 || OZChannel::getValueAsInt((this + 22976), MEMORY[0x277CC08F0], 0.0))
  {
    OZChannelBase::setFlag((this + 22720), 2, a2);
    OZChannelBase::setFlag((this + 23280), 2, a2);
  }

  v14 = *(this + 121);
  if (!v14)
  {
    goto LABEL_50;
  }

  v15 = *(v14 + 1584);
  if (!v15)
  {
    goto LABEL_50;
  }

  if (*(v15 + 320) != 2)
  {
    goto LABEL_50;
  }

  result = OZImageElement::isBackgroundDropZone(this);
  if ((result & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_51:
  v17 = *(this + 121);
  if (v17)
  {
    if (*(v17 + 1584))
    {
      return OZImageElement::updateDropZoneTypeChannels(this, a2);
    }
  }

  return result;
}

void sub_2600C6AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

OZChannelBase *OZImageElementCinematographyResetCallback(OZChannelBase *result, void *a2)
{
  if (result)
  {
    v2 = result;
    (*(result->var0 + 35))(result, 0);
    result = OZChannelBase::getObjectManipulator(v2);
    if (result)
    {
      if (result)
      {

        return OZImageElement::didResetCinematography(result);
      }
    }
  }

  return result;
}

void OZImageElement::OZImageElement(OZImageElement *this, const OZImageElement *a2, uint64_t a3)
{
  OZElement::OZElement(this, a2, a3);
  *v5 = &unk_287280EC8;
  *(v5 + 16) = &unk_2872817F8;
  *(v5 + 48) = &unk_287281A50;
  *(v5 + 6528) = &unk_287281AA8;
  OZChannelFolder::OZChannelFolder((v5 + 18776), (a2 + 18776), (this + 320));
  OZChanFootageRefWithPicker::OZChanFootageRefWithPicker((this + 18904), (a2 + 18904), (this + 18776));
  OZChanFootageRefWithPicker::OZChanFootageRefWithPicker((this + 19112), (a2 + 19112), (this + 320));
  OZChannel::OZChannel((this + 19320), (a2 + 19320), (this + 320));
  *(this + 2415) = &unk_287246400;
  *(this + 2417) = &unk_287246760;
  OZChannelColor::OZChannelColor((this + 19472), (a2 + 19472), (this + 320));
  OZChannel::OZChannel((this + 20632), (a2 + 20632), (this + 320));
  *(this + 2579) = &unk_287245C60;
  *(this + 2581) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 20784), (a2 + 20784), (this + 320));
  OZChannelEnum::OZChannelEnum((this + 20936), (a2 + 20936), (this + 320));
  OZChannelRetimeFrame::OZChannelRetimeFrame((this + 21192), (a2 + 21192), (this + 320));
  OZChannel::OZChannel((this + 21344), (a2 + 21344), (this + 320));
  *(this + 2668) = &unk_287245C60;
  *(this + 2670) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 21496), (a2 + 21496), (this + 320));
  *(this + 2687) = &unk_287282A58;
  *(this + 2689) = &unk_287282DC8;
  OZChannelEnum::OZChannelEnum((this + 21752), (a2 + 21752), (this + 320));
  OZChannel::OZChannel((this + 22008), (a2 + 22008), (this + 320));
  *(this + 2751) = &unk_287245C60;
  *(this + 2753) = &unk_287245FC0;
  OZChannel::OZChannel((this + 22160), (a2 + 22160), (this + 320));
  *(this + 2770) = &unk_287245C60;
  *(this + 2772) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 22312), (a2 + 22312), (this + 320));
  *(this + 2789) = &unk_287282E38;
  *(this + 2791) = &unk_2872831A8;
  OZChannelBool::OZChannelBool((this + 22568), (a2 + 22568), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 22720), (a2 + 22720), (this + 448));
  OZChannelBool::OZChannelBool((this + 22976), (a2 + 22976), (this + 448));
  OZChannel::OZChannel((this + 23128), (a2 + 23128), (this + 448));
  *(this + 2891) = &unk_287246400;
  *(this + 2893) = &unk_287246760;
  OZChannelBool::OZChannelBool((this + 23280), (a2 + 23280), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 23432), (a2 + 23432), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 23688), (a2 + 23688), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 23944), (a2 + 23944), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 24200), (a2 + 24200), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 24456), (a2 + 24456), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 24712), (a2 + 24712), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 24968), (a2 + 24968), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 25224), (a2 + 25224), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 25480), (a2 + 25480), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 25736), (a2 + 25736), (this + 448));
  OZChannelBool::OZChannelBool(this + 171, (a2 + 25992), (this + 448));
  OZChannelScale::OZChannelScale((this + 26144), (a2 + 26144), (this + 448));
  OZChannelPosition::OZChannelPosition((this + 26584), (a2 + 26584), (this + 448));
  OZChannelScale::OZChannelScale((this + 27288), (a2 + 27288), (this + 448));
  OZChannelBool::OZChannelBool((this + 27728), (a2 + 27728), (this + 448));
  OZChannelColor::OZChannelColor((this + 27880), (a2 + 27880), (this + 448));
  OZChannelButton::OZChannelButton((this + 29040), (a2 + 29040), (this + 448));
  OZChannel::OZChannel((this + 29232), a2 + 261, (this + 448));
  *(this + 3654) = &unk_287246400;
  *(this + 3656) = &unk_287246760;
  OZChannel::OZChannel((this + 29384), (a2 + 29384), (this + 448));
  *(this + 3673) = &unk_287246400;
  *(this + 3675) = &unk_287246760;
  OZChannelBool::OZChannelBool((this + 29536), (a2 + 29536), (this + 448));
  OZChannelBool::OZChannelBool((this + 29688), (a2 + 29688), (this + 448));
  OZChannelBool::OZChannelBool((this + 29840), (a2 + 29840), (this + 448));
  OZChannelBool::OZChannelBool((this + 29992), (a2 + 29992), (this + 448));
  *(this + 30144) = *(a2 + 30144);
  PCWorkingColorVector::PCWorkingColorVector((this + 30148));
  PCURL::PCURL((this + 30168), (a2 + 30168));
  v6 = *(a2 + 1886);
  *(this + 3774) = *(a2 + 3774);
  *(this + 1886) = v6;
  *(this + 7550) = *(a2 + 7550);
  *(this + 3777) = 0;
  *(this + 3778) = 0;
  *(this + 3776) = 0;
  *(this + 3779) = 0xBFF0000000000000;
  *(this + 3780) = 0xBFF0000000000000;
  *(this + 30248) = *(a2 + 30248);
  *(this + 30250) = *(a2 + 30250);
  PCWorkingColorVector::PCWorkingColorVector((this + 30252));
  *(this + 30268) = 0;
  *(this + 3784) = 0;
  *(this + 30289) = *(a2 + 30289);
  *(this + 30290) = 0;
  *(this + 3793) = 0;
  *(this + 30312) = 0u;
  *(this + 30328) = 0u;
  *(this + 30296) = 0u;
  OZChannelFolder::OZChannelFolder((this + 30352), (a2 + 30352), (this + 320));
  OZChannelEnum::OZChannelEnum((this + 30480), (a2 + 30480), (this + 30352));
  OZChannel::OZChannel((this + 30736), (a2 + 30736), (this + 30352));
  *(this + 3842) = &unk_287245C60;
  *(this + 3844) = &unk_287245FC0;
  OZChannel::OZChannel((this + 30888), (a2 + 30888), (this + 30352));
  *(this + 3861) = &unk_287245C60;
  *(this + 3863) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 31040), (a2 + 31040), (this + 30352));
  OZChannelPosition::OZChannelPosition((this + 31296), (a2 + 31296), (this + 30352));
  OZChannelEnum::OZChannelEnum((this + 32000), (a2 + 32000), (this + 30352));
  OZChannelBool::OZChannelBool((this + 32256), a2 + 288, (this + 30352));
  OZChannelBool::OZChannelBool((this + 32408), (a2 + 32408), (this + 30352));
  *(this + 4072) = 0;
  *(this + 2035) = 0u;
  *(this + 30148) = *(a2 + 30148);
  OZChannelButton::setPrivateData((this + 29040), this);
  *(this + 30145) = *(a2 + 30145);
  if ((OZImageElement::hasBeenRetimedFromLastHash(a2) & 1) == 0)
  {
    OZImageElement::getRetimingHash(this);
    *(this + 30148) = v12;
  }

  OZChannelBase::setRangeName(this, a2);
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 30232) = _Q0;
  *(this + 30249) = 0;
  *(this + 30251) = 0;
  *(this + 3785) = 0;
  *(this + 30288) = 0;
  *(this + 8146) = 0;
  if (this != a2)
  {
    std::vector<OZPtcDecisionInfo>::__assign_with_size[abi:ne200100]<OZPtcDecisionInfo*,OZPtcDecisionInfo*>(this + 4070, *(a2 + 4070), *(a2 + 4071), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4071) - *(a2 + 4070)) >> 4));
  }

  OZChannelFolder::removeDescendant((this + 320), this + 271);
  OZChannelFolder::insertDescendantAfter((this + 320), (this + 6552), this + 271);
  OZChannelBase::setResetCallback(this + 271, OZImageElementCinematographyResetCallback, this, 0);
  OZImageElement::ptcCopyScriptData(this, a2);
}

void sub_2600C7578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, OZChannel *a9, OZChannel *a10, OZChannel *a11, PCString *a12, OZChannel *a13, OZChannel *a14, PCString *a15, OZChannel *a16, OZChannel *a17, OZChannel *a18)
{
  OZChannelBool::~OZChannelBool((v18 + v19));
  OZChannelEnum::~OZChannelEnum((v18 + 32000));
  OZChannelPosition::~OZChannelPosition((v18 + 31296));
  OZChannelEnum::~OZChannelEnum((v18 + 31040));
  OZChannel::~OZChannel(v21);
  OZChannel::~OZChannel(v20);
  OZChannelEnum::~OZChannelEnum((v18 + 30480));
  OZChannelFolder::~OZChannelFolder((v18 + v22));
  PCURL::~PCURL((v18 + 30168));
  OZChannelBool::~OZChannelBool((v18 + 29992));
  OZChannelBool::~OZChannelBool((v18 + 29840));
  OZChannelBool::~OZChannelBool((v18 + 29688));
  OZChannelBool::~OZChannelBool((v18 + 29536));
  OZChannel::~OZChannel(a9);
  OZChannel::~OZChannel(a10);
  OZChannelButton::~OZChannelButton((v18 + 29040));
  OZChannelColor::~OZChannelColor((v18 + 27880));
  OZChannelBool::~OZChannelBool((v18 + 27728));
  OZChannel2D::~OZChannel2D((v18 + 27288));
  OZChannelPosition::~OZChannelPosition((v18 + 26584));
  OZChannel2D::~OZChannel2D((v18 + 26144));
  OZChannelBool::~OZChannelBool((v18 + 25992));
  OZChannelEnum::~OZChannelEnum((v18 + 25736));
  OZChannelEnum::~OZChannelEnum((v18 + 25480));
  OZChannelEnum::~OZChannelEnum((v18 + 25224));
  OZChannelEnum::~OZChannelEnum((v18 + 24968));
  OZChannelEnum::~OZChannelEnum((v18 + 24712));
  OZChannelEnum::~OZChannelEnum((v18 + 24456));
  OZChannelEnum::~OZChannelEnum((v18 + 24200));
  OZChannelEnum::~OZChannelEnum((v18 + 23944));
  OZChannelEnum::~OZChannelEnum((v18 + 23688));
  OZChannelEnum::~OZChannelEnum((v18 + 23432));
  OZChannelBool::~OZChannelBool((v18 + 23280));
  OZChannel::~OZChannel(a11);
  OZChannelBool::~OZChannelBool((v18 + 22976));
  OZChannelEnum::~OZChannelEnum((v18 + 22720));
  OZChannelBool::~OZChannelBool((v18 + 22568));
  OZChannelEnum::~OZChannelEnum(a12);
  OZChannel::~OZChannel(a13);
  OZChannel::~OZChannel(a14);
  OZChannelEnum::~OZChannelEnum((v18 + 21752));
  OZChannelEnum::~OZChannelEnum(a15);
  OZChannel::~OZChannel(a16);
  OZChannelRetimeFrame::~OZChannelRetimeFrame((v18 + 21192));
  OZChannelEnum::~OZChannelEnum((v18 + 20936));
  OZChannelBool::~OZChannelBool((v18 + 20784));
  OZChannel::~OZChannel(a17);
  OZChannelColor::~OZChannelColor((v18 + 19472));
  OZChannel::~OZChannel(a18);
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v18 + 19112));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v18 + 18904));
  OZChannelFolder::~OZChannelFolder((v18 + 18776));
  OZElement::~OZElement(v18);
  _Unwind_Resume(a1);
}

void OZImageElement::~OZImageElement(OZImageElement *this, const PCString *a2)
{
  *this = &unk_287280EC8;
  *(this + 2) = &unk_2872817F8;
  *(this + 6) = &unk_287281A50;
  *(this + 816) = &unk_287281AA8;
  OZChannelBase::setRangeName(this, a2);
  v3 = *(this + 3785);
  if (v3)
  {
    CVPixelBufferRelease(v3);
  }

  OZImageElement::ptcDeleteScriptData(this);
  v4 = *(this + 4070);
  if (v4)
  {
    *(this + 4071) = v4;
    operator delete(v4);
  }

  OZChannelBool::~OZChannelBool((this + 32408));
  OZChannelBool::~OZChannelBool((this + 32256));
  OZChannelEnum::~OZChannelEnum((this + 32000));
  OZChannelPosition::~OZChannelPosition((this + 31296));
  OZChannelEnum::~OZChannelEnum((this + 31040));
  OZChannel::~OZChannel((this + 30888));
  OZChannel::~OZChannel((this + 30736));
  OZChannelEnum::~OZChannelEnum((this + 30480));
  OZChannelFolder::~OZChannelFolder((this + 30352));
  PCURL::~PCURL((this + 30168));
  OZChannelBool::~OZChannelBool((this + 29992));
  OZChannelBool::~OZChannelBool((this + 29840));
  OZChannelBool::~OZChannelBool((this + 29688));
  OZChannelBool::~OZChannelBool((this + 29536));
  OZChannel::~OZChannel((this + 29384));
  OZChannel::~OZChannel((this + 29232));
  OZChannelButton::~OZChannelButton((this + 29040));
  *(this + 3485) = &unk_28724C608;
  *(this + 3487) = &unk_28724C978;
  OZChannel::~OZChannel((this + 28888));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 27880));
  OZChannelBool::~OZChannelBool((this + 27728));
  OZChannel2D::~OZChannel2D((this + 27288));
  OZChannelPosition::~OZChannelPosition((this + 26584));
  OZChannel2D::~OZChannel2D((this + 26144));
  OZChannelBool::~OZChannelBool(this + 171);
  OZChannelEnum::~OZChannelEnum((this + 25736));
  OZChannelEnum::~OZChannelEnum((this + 25480));
  OZChannelEnum::~OZChannelEnum((this + 25224));
  OZChannelEnum::~OZChannelEnum((this + 24968));
  OZChannelEnum::~OZChannelEnum((this + 24712));
  OZChannelEnum::~OZChannelEnum((this + 24456));
  OZChannelEnum::~OZChannelEnum((this + 24200));
  OZChannelEnum::~OZChannelEnum((this + 23944));
  OZChannelEnum::~OZChannelEnum((this + 23688));
  OZChannelEnum::~OZChannelEnum((this + 23432));
  OZChannelBool::~OZChannelBool((this + 23280));
  OZChannel::~OZChannel((this + 23128));
  OZChannelBool::~OZChannelBool((this + 22976));
  OZChannelEnum::~OZChannelEnum((this + 22720));
  OZChannelBool::~OZChannelBool((this + 22568));
  OZChannelEnum::~OZChannelEnum(this + 2789);
  OZChannel::~OZChannel((this + 22160));
  OZChannel::~OZChannel((this + 22008));
  OZChannelEnum::~OZChannelEnum((this + 21752));
  OZChannelEnum::~OZChannelEnum(this + 2687);
  OZChannel::~OZChannel((this + 21344));
  OZChannelRetimeFrame::~OZChannelRetimeFrame((this + 21192));
  OZChannelEnum::~OZChannelEnum((this + 20936));
  OZChannelBool::~OZChannelBool((this + 20784));
  OZChannel::~OZChannel((this + 20632));
  *(this + 2434) = &unk_28724C608;
  *(this + 2436) = &unk_28724C978;
  OZChannel::~OZChannel((this + 20480));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 19472));
  OZChannel::~OZChannel((this + 19320));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((this + 19112));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((this + 18904));
  OZChannelFolder::~OZChannelFolder((this + 18776));

  OZElement::~OZElement(this);
}

{
  OZImageElement::~OZImageElement(this, a2);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZImageElement::~OZImageElement(OZImageElement *this, const PCString *a2)
{
  OZImageElement::~OZImageElement((this - 16), a2);
}

{
  OZImageElement::~OZImageElement((this - 48), a2);
}

{
  OZImageElement::~OZImageElement((this - 6528), a2);
}

{
  OZImageElement::~OZImageElement((this - 16), a2);

  JUMPOUT(0x2666E9F00);
}

{
  OZImageElement::~OZImageElement((this - 48), a2);

  JUMPOUT(0x2666E9F00);
}

{
  OZImageElement::~OZImageElement((this - 6528), a2);

  JUMPOUT(0x2666E9F00);
}

OZFootage *OZImageElement::operator=(uint64_t a1, const void *a2)
{
  OZElement::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  v6 = v4 + 28880;
  v7 = v4 + 18736;
  OZChanObjectRefWithPicker::operator=(a1 + 18904, (v4 + 18904));
  OZChanObjectRefWithPicker::operator=(a1 + 19112, (v5 + 19112));
  OZChannelBase::operator=(a1 + 19320, (v5 + 19320));
  OZChannelFolder::operator=(a1 + 19472);
  OZChannelBase::operator=(a1 + 19608, (v5 + 19608));
  OZChannelBase::operator=(a1 + 19760, (v5 + 19760));
  OZChannelBase::operator=(a1 + 19912, (v5 + 19912));
  OZChannelBase::operator=(a1 + 20064, (v5 + 20064));
  OZChannelBase::operator=(a1 + 20216, (v5 + 20216));
  *(a1 + 20472) = v7[1736];
  OZChannelBase::operator=(a1 + 20480, (v5 + 20480));
  OZChannelBase::operator=(a1 + 20632, (v5 + 20632));
  OZChannelBase::operator=(a1 + 20784, (v5 + 20784));
  OZChannelBase::operator=(a1 + 20936, (v5 + 20936));
  OZChannelBase::operator=(a1 + 21192, (v5 + 21192));
  OZChannelBase::operator=(a1 + 21344, (v5 + 21344));
  OZChannelBase::operator=(a1 + 21496, (v5 + 21496));
  OZChannelBase::operator=(a1 + 21752, (v5 + 21752));
  OZChannelBase::operator=(a1 + 22008, (v5 + 22008));
  OZChannelBase::operator=(a1 + 22160, (v5 + 22160));
  OZChannelBase::operator=(a1 + 22312, (v5 + 22312));
  OZChannelBase::operator=(a1 + 22568, (v5 + 22568));
  OZChannelBase::operator=(a1 + 22720, (v5 + 22720));
  OZChannelBase::operator=(a1 + 22976, (v5 + 22976));
  OZChannelBase::operator=(a1 + 23128, (v5 + 23128));
  OZChannelBase::operator=(a1 + 23280, (v5 + 23280));
  OZChannelBase::operator=(a1 + 23432, (v5 + 23432));
  OZChannelBase::operator=(a1 + 25736, (v5 + 25736));
  OZChannelBase::operator=(a1 + 29040, (v5 + 29040));
  *(a1 + 29192) = *(v5 + 3649);
  PCString::set((a1 + 29200), v5 + 3650);
  *(a1 + 29208) = *(v5 + 3651);
  PCString::set((a1 + 29216), v5 + 3652);
  *(a1 + 29224) = v6[344];
  OZChannelButton::setPrivateData((a1 + 29040), a1);
  OZChannelBase::operator=(a1 + 25992, (v5 + 25992));
  OZChannelFolder::operator=(a1 + 26144);
  OZChannelBase::operator=(a1 + 26280, (v5 + 26280));
  OZChannelBase::operator=(a1 + 26432, (v5 + 26432));
  OZChannelPosition::operator=(a1 + 26584, (v5 + 26584));
  OZChannelFolder::operator=(a1 + 27288);
  OZChannelBase::operator=(a1 + 27424, (v5 + 27424));
  OZChannelBase::operator=(a1 + 27576, (v5 + 27576));
  OZChannelBase::operator=(a1 + 27728, (v5 + 27728));
  OZChannelFolder::operator=(a1 + 27880);
  OZChannelBase::operator=(a1 + 28016, (v5 + 28016));
  OZChannelBase::operator=(a1 + 28168, (v5 + 28168));
  OZChannelBase::operator=(a1 + 28320, (v5 + 28320));
  OZChannelBase::operator=(a1 + 28472, (v5 + 28472));
  OZChannelBase::operator=(a1 + 28624, (v5 + 28624));
  *(a1 + 28880) = *v6;
  OZChannelBase::operator=(a1 + 28888, (v5 + 28888));
  OZChannelBase::operator=(a1 + 29232, (v5 + 29232));
  OZChannelBase::operator=(a1 + 29384, (v5 + 29384));
  OZChannelBase::operator=(a1 + 29536, (v5 + 29536));
  OZChannelBase::operator=(a1 + 29688, (v5 + 29688));
  OZChannelBase::operator=(a1 + 29840, (v5 + 29840));
  *(a1 + 30148) = *(v5 + 30148);
  *(a1 + 30145) = v6[1265];
  PCURL::operator=((a1 + 30168), v5 + 3771);
  v8 = *(v5 + 1886);
  *(a1 + 30192) = *(v5 + 3774);
  *(a1 + 30176) = v8;
  *(a1 + 30200) = *(v6 + 330);
  *(a1 + 18736) = *v7;
  OZChannelBase::operator=(a1 + 29992, (v5 + 29992));
  *(a1 + 30144) = v6[1264];
  *(a1 + 30208) = 0;
  *(a1 + 30248) = v6[1368];
  *(a1 + 30249) = 0;
  *(a1 + 30250) = v6[1370];
  if ((OZImageElement::hasBeenRetimedFromLastHash(v5) & 1) == 0)
  {
    OZImageElement::getRetimingHash(a1);
    *(a1 + 30148) = v10;
  }

  OZChannelFolder::operator=(a1 + 30352);
  OZChannelBase::operator=(a1 + 30480, (v5 + 30480));
  OZChannelBase::operator=(a1 + 30736, (v5 + 30736));
  OZChannelBase::operator=(a1 + 30888, (v5 + 30888));
  OZChannelPosition::operator=(a1 + 31296, (v5 + 31296));
  OZChannelBase::operator=(a1 + 31040, (v5 + 31040));
  OZChannelBase::operator=(a1 + 32000, (v5 + 32000));
  OZChannelBase::operator=(a1 + 32256, (v5 + 32256));
  OZChannelBase::operator=(a1 + 32408, (v5 + 32408));
  *(a1 + 32584) = 0;
  if (v5 != a1)
  {
    std::vector<OZPtcDecisionInfo>::__assign_with_size[abi:ne200100]<OZPtcDecisionInfo*,OZPtcDecisionInfo*>((a1 + 32560), *(v5 + 4070), *(v5 + 4071), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 4071) - *(v5 + 4070)) >> 4));
  }

  return OZImageElement::ptcCopyScriptData(a1, v5);
}

void *OZImageElement::getFootage(OZImageElement *this)
{
  result = *(this + 3776);
  if (!result)
  {
    result = OZChanSceneNodeRef::getNode((this + 18904));
    if (result)
    {
    }

    *(this + 3776) = result;
    *(this + 3780) = 0xBFF0000000000000;
    *(this + 3779) = 0xBFF0000000000000;
  }

  return result;
}

uint64_t OZImageElement::shouldHideRetiming(OZImageElement *this)
{
  v1 = this + 28672;
  if (*(this + 30290))
  {
    return 0;
  }

  Footage = OZImageElement::getFootage(this);
  if (Footage)
  {
    v5 = Footage;
    if (OZFootage::isStill(Footage))
    {
      if ((*(*v5 + 1376))(v5) < 2)
      {
        return 1;
      }
    }
  }

  if (v1[1577] == 1)
  {
    if ((v1[1576] & 1) == 0)
    {
      return 0;
    }

LABEL_12:
    v6 = *(this + 121);
    if (v6)
    {
      v7 = *(v6 + 1584);
      if (v7)
      {
        return *(v7 + 320) > 1u;
      }
    }

    return 0;
  }

  result = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
  v1[1576] = result != 0;
  v1[1577] = 1;
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t OZImageElement::isDropZone(OZImageElement *this)
{
  v1 = this + 28672;
  if (*(this + 30249) == 1)
  {
    v2 = *(this + 30248);
  }

  else
  {
    v2 = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0) != 0;
    v1[1576] = v2;
    v1[1577] = 1;
  }

  return v2 & 1;
}

uint64_t OZImageElement::canDelete(OZImageElement *this)
{
  if ((*(*(this + 2) + 56))())
  {
    return 0;
  }

  else
  {
    return OZImageElement::isLockedDropZone(this) ^ 1;
  }
}

uint64_t OZImageElement::isLockedDropZone(OZImageElement *this)
{
  if (OZImageElement::isEffectSource(this) && *(*((*(*this + 272))(this) + 1584) + 320) == 3)
  {
    return 1;
  }

  return OZImageElement::isTransitionSource(this);
}

uint64_t OZImageElement::canCopy(OZImageElement *this)
{
  if (OZImageElement::isEffectSource(this))
  {
    return 0;
  }

  else
  {
    return OZImageElement::isTransitionSource(this) ^ 1;
  }
}

uint64_t OZImageElement::isEffectSource(OZImageElement *this)
{
  v2 = this + 28672;
  if (*(this + 30249) == 1)
  {
    if ((*(this + 30248) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
    v2[1576] = result != 0;
    v2[1577] = 1;
    if (!result)
    {
      return result;
    }
  }

  return OZChannel::getValueAsInt((this + 23432), MEMORY[0x277CC08F0], 0.0) == 3;
}

uint64_t OZImageElement::isTransitionSource(OZImageElement *this)
{
  v2 = this + 28672;
  if (*(this + 30249) == 1)
  {
    if ((*(this + 30248) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
    v2[1576] = result != 0;
    v2[1577] = 1;
    if (!result)
    {
      return result;
    }
  }

  result = OZChannel::getValueAsInt((this + 23432), MEMORY[0x277CC08F0], 0.0);
  if (result != 1)
  {
    return OZChannel::getValueAsInt((this + 23432), MEMORY[0x277CC08F0], 0.0) == 2;
  }

  return result;
}

uint64_t non-virtual thunk toOZImageElement::canCopy(OZImageElement *this)
{
  v1 = (this - 16);
  if (OZImageElement::isEffectSource((this - 16)))
  {
    return 0;
  }

  else
  {
    return OZImageElement::isTransitionSource(v1) ^ 1;
  }
}

uint64_t OZImageElement::replaceFootage(OZImageElement *this, const __CFURL **a2, uint64_t a3)
{
  v3 = *(this + 121);
  if (!v3)
  {
    return 0;
  }

  v7 = *(v3 + 1504);
  if (v7)
  {
    v7 = OZChannelBase::setRangeName(v7, 1);
  }

  Instance = PMMediaManager::getInstance(v7);
  result = PMMediaManager::findReader(Instance, a2);
  if (result)
  {
    v23 = 0;
    if (!PMMediaManager::open(Instance, a2, &v23, 0))
    {
      PCURL::getShortFilename(a2, &v21);
      OZChannelBase::getNextUniqueID(v10);
      *&v22[0].value = xmmword_260850040;
      SceneNode = OZApplication::createSceneNode(theApp, v22);
      PCString::~PCString(&v21);
      if (SceneNode)
      {
        OZFootage::setClip(SceneNode, v23, 1, 1, 0);
        PMClip::close(v23);
        v12 = *(this + 121);
        PCURL::PCURL(v22, @"Undo Footage Replace");
        OZScene::startCaptureModifiedChannels(v12, v22);
        PCString::~PCString(v22);
        PCURL::PCURL(v22, @"Undo Footage Replace");
        (*(*(this + 2) + 176))(this + 16, v22, 0);
        PCString::~PCString(v22);
        v13 = *(this + 121);
        PCURL::PCURL(v22, @"Undo Footage Replace");
        OZScene::addNode(v13, SceneNode, v22, 16, 0, 0);
        PCString::~PCString(v22);
        (*(*this + 1128))(v22, this);
        memset(&v21, 0, sizeof(v21));
        TimeOffset = OZChannelObjectRootBase::getTimeOffset((this + 56), &v21);
        (*(*this + 1448))(this, SceneNode, a3, 0, TimeOffset);
        v15 = (*(*this + 640))(this);
        OZSceneSettings::getFrameDuration((*(this + 121) + 336), &v20);
        OZRetimingUtil::SetTimeOffsetAndExtent(v15, &v21, v22, &v20, v16);
        v17 = (*(**(this + 120) + 640))();
        OZChannelObjectRoot::recomputeTimeRangeFromChildren(v17, 1, 1, 1, 1, 0);
        v19 = *(this + 121);
        if (v19[188])
        {
          OZChannelBase::setRangeName(v19[188], 1);
          v19 = *(this + 121);
        }

        OZScene::endCaptureModifiedChannels(v19, v18);
        if (a3)
        {
          OZScene::recalcDependencies(*(this + 121));
        }

        OZImageElement::showHideDropZoneChannels(this, 0);
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t OZImageElement::setFootage(OZImageElement *this, OZSceneNodeFile *lpsrc, int a3, unsigned int a4)
{
  if (lpsrc)
  {
  }

  else
  {
    v7 = 0;
  }

  Footage = OZImageElement::getFootage(this);
  v9 = Footage;
  if (!Footage)
  {
    v10 = 1.0;
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_17:
    OZSceneNode::removeFromLinked(this);
    goto LABEL_18;
  }

  v10 = (*(*Footage + 1368))(Footage);
  OZImageElement::ptcResetCinematographyAllChannels(this);
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_6:
  v11 = (*(*this + 640))(this);
  if (OZChannelFolder::testFoldFlag(v11, 0x4000))
  {
    v12 = *(this + 133);
    for (i = *(this + 132); i != v12; ++i)
    {
      Node = OZScene::getNode(*(this + 121), *i);
      if (Node)
      {
        v15 = Node;
        v16 = (Node + 2);
        if (((*(Node[2] + 56))(Node + 2, 1) & 1) == 0)
        {
          v17 = (*(*v15 + 640))(v15);
          if (OZChannelFolder::testFoldFlag(v17, 0x4000))
          {
            if ((*(*v15 + 744))(v15))
            {
              OZSceneNode::removeFromLinked(v15);
              (*(*v15 + 760))(v15);
            }

            PCURL::PCURL(&time1, @"Undo Footage Replace");
            (*(*v16 + 176))(v16, &time1, 2);
            PCString::~PCString(&time1);
            v18 = (*(*v15 + 640))(v15);
            (*(*v15 + 608))(v15, v18);
          }
        }
      }
    }
  }

LABEL_18:
  OZChanSceneNodeRef::setNode((this + 18904), v7);
  *(this + 3776) = 0;
  *(this + 3780) = 0xBFF0000000000000;
  *(this + 3779) = 0xBFF0000000000000;
  *(this + 30251) = 0;
  Pages = OZFootage::getPages(v7);
  *(this + 7550) = Pages;
  if (Pages)
  {
    OZChannel::setMax((this + 19320), Pages);
    LODWORD(v20) = *(this + 7550);
    OZChannel::setSliderMax((this + 19320), v20);
    OZChannelBase::resetFlag((this + 19320), 2, 0);
  }

  else
  {
    OZChannel::setMax((this + 19320), 1.0);
    OZChannel::setSliderMax((this + 19320), 1.0);
    OZChannelBase::setFlag((this + 19320), 2, 0);
  }

  OZImageElement::updateLayerChannel(this, 0);
  v21 = a4;
  v22 = MEMORY[0x277CC08F0];
  OZChannel::setValue((this + 22312), MEMORY[0x277CC08F0], v21, 0);
  memset(&v40, 0, sizeof(v40));
  (*(*v7 + 1648))(&v40, v7);
  memset(&v39, 0, sizeof(v39));
  CMTimeMake(&v39, 1, 30);
  if ((*(*this + 272))(this))
  {
    v23 = (*(*this + 272))(this);
    OZSceneSettings::getFrameDuration((v23 + 336), &time1);
    v39 = time1;
  }

  time1 = v40;
  time2 = v39;
  if (!CMTimeCompare(&time1, &time2) && ((*(*(v7 + 2) + 288))(v7 + 2) & 1) == 0)
  {
    v24 = (*(*this + 272))(this);
    v25 = OZPreferenceManager::Instance(v24);
    if (v24 && OZPreferenceManager::getUseProjectDurationForStills(v25))
    {
      *&v40.value = *(v24 + 1376);
      epoch = *(v24 + 1392);
    }

    else
    {
      OZPreferenceManager::getDefaultStillDuration(&v39, &time1);
      *&v40.value = *&time1.value;
      epoch = time1.epoch;
    }

    v40.epoch = epoch;
  }

  if (v9)
  {
    (*(*this + 1128))(&time2, this);
    time1 = time2;
    v38 = v40;
    v27 = (*(*this + 640))(this);
    time2 = time1;
    OZRetimingUtil::SetTimeOffsetAndExtent(v27, &time2, &time1, &v39, v28);
  }

  else
  {
    memset(&v42, 0, sizeof(v42));
    operator*(&v39, &v42, 0.5);
    time1 = v40;
    time2 = v42;
    PC_CMTimeSaferAdd(&time1, &time2, &v41);
    time1 = v41;
    time2 = v39;
    PC_CMTimeFloorToSampleDuration(&time1, &time2, &v35);
    time1 = *v22;
    v38 = v35;
    OZChannelObjectRootBase::setTimeExtent((this + 56), &time1, 0);
  }

  if (*(this + 30249) != 1)
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
    *(this + 30248) = ValueAsInt != 0;
    *(this + 30249) = 1;
    if (!ValueAsInt)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (*(this + 30248))
  {
LABEL_37:
    OZChannel::setValue(this + 171, MEMORY[0x277CC08F0], (a3 ^ 1u), 0);
  }

LABEL_38:
  OZImageElement::resetFitMode(this, v10);
  if (!v9)
  {
    v30 = (*(*this + 640))(this);
    OZRetimingUtil::SetDefaultRetimingState(v30, v31);
  }

  OZChannel::getValueAsInt((this + 21496), MEMORY[0x277CC08F0], 0.0);
  OZImageElement::ptcLoadCinematicScript(this);
  OZImageElement::ptcFillCinematographyDataChannels(this);
  (*(*this + 2272))(this, v7);
  OZImageElement::showHideDropZoneChannels(this, 0);
  OZDocument::postNotification(*(*(this + 121) + 1584), 0x80000);
  OZElement::updateColorConversionChannels(this);
  result = OZFootage::getDynamicRangeType(v7);
  if (result == 2)
  {
    MasteringMaxLuminance = OZFootage::getMasteringMaxLuminance(v7);
    if (MasteringMaxLuminance == 0.0)
    {
      v34 = 1000.0;
    }

    else
    {
      v34 = MasteringMaxLuminance;
    }

    OZChannel::setDefaultValue((this + 12512), v34);
    return OZChannel::setValue((this + 12512), MEMORY[0x277CC08F0], v34, 0);
  }

  return result;
}

void OZImageElement::updateLayerChannel(OZImageElement *this, char a2)
{
  Footage = OZImageElement::getFootage(this);
  if (Footage)
  {
    v5 = Footage;
    if (((*(*Footage + 1432))(Footage) & 1) == 0)
    {
      v6 = OZChannelBase::testFlag((this + 22312), 4);
      if (v6)
      {
        OZChannelBase::resetFlag((this + 22312), 4, 1);
      }

      v7 = (*(*v5 + 1352))(v5);
      ValueAsInt = OZChannel::getValueAsInt((this + 22312), MEMORY[0x277CC08F0], 0.0);
      if (v7 <= ValueAsInt)
      {
        v9 = ValueAsInt;
      }

      else
      {
        v9 = v7;
      }

      if (v9 >= 2)
      {
        OZChannel::setMax((this + 22312), v9);
        OZChannel::setSliderMax((this + 22312), v9);
        OZChannelBase::resetFlag((this + 22312), 2, a2);
        OZChannelEnum::clearStrings(this + 2789);
        operator new[]();
      }

      OZChannel::setMax((this + 22312), 0.0);
      OZChannel::setSliderMax((this + 22312), 0.0);
      OZChannelBase::setFlag((this + 22312), 2, 1);
      OZChannelEnum::clearStrings(this + 2789);
      if (v6)
      {
        OZChannelBase::setFlag((this + 22312), 4, 1);
      }
    }
  }
}

CGColorSpace **OZImageElement::resetFitMode(OZImageElement *this, double a2)
{
  result = OZImageElement::getFootage(this);
  if (result)
  {
    v5 = result;
    v123[0] = 0;
    v123[1] = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v124 = _Q0;
    OZRenderState::OZRenderState(&v122);
    v91 = xmmword_260343AA0;
    v92 = 0x3FF0000000000000;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0x3FF0000000000000;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v104 = 0;
    v101 = 0;
    v102 = 0;
    v100 = 0x3FF0000000000000;
    v103 = 0;
    v105 = *MEMORY[0x277CC08F0];
    v106 = *(MEMORY[0x277CC08F0] + 16);
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0x100000000;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 768;
    v116 = 0x408F400000000000;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = -1;
    __asm { FMOV            V0.2D, #1.0 }

    v121 = _Q0;
    OZScene::getCurrentTime(*(this + 121), &v89);
    *&v122.var0.var0 = v89;
    v122.var0.var3 = v90;
    HIDWORD(v101) = OZChannel::getValueAsInt((this + 22312), MEMORY[0x277CC08F0], 0.0);
    OZFootage::getTextureResolution(v5, v123, &v122, &v91);
    v12 = v124;
    v13 = (*(*v5 + 1368))(v5);
    if (*(this + 30249) == 1)
    {
      if ((*(this + 30248) & 1) == 0)
      {
LABEL_4:
        OZChannel::setValue((this + 29232), MEMORY[0x277CC08F0], *&v12, 0);
        OZChannel::setValue((this + 29384), MEMORY[0x277CC08F0], *(&v12 + 1), 0);
        OZChannel2D::setValue((this + 26144), MEMORY[0x277CC08F0], 1.0, 1.0, 0);
LABEL_10:
        PCCFRef<CGColorSpace *>::~PCCFRef(&v114);
        return PCCFRef<CGColorSpace *>::~PCCFRef(&v113);
      }
    }

    else
    {
      ValueAsInt = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
      *(this + 30248) = ValueAsInt != 0;
      *(this + 30249) = 1;
      if (!ValueAsInt)
      {
        goto LABEL_4;
      }
    }

    if (OZChannel::getValueAsInt((this + 23432), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((this + 22976), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((this + 29840), MEMORY[0x277CC08F0], 0.0))
    {
      OZChannel::getValueAsDouble((this + 29232), MEMORY[0x277CC08F0], 0.0);
      OZChannel::setValue((this + 29232), MEMORY[0x277CC08F0], v15 * a2 / v13, 0);
      goto LABEL_10;
    }

    OZChannel::getValueAsDouble((this + 29232), MEMORY[0x277CC08F0], 0.0);
    v17 = v16;
    OZChannel::getValueAsDouble((this + 29384), MEMORY[0x277CC08F0], 0.0);
    v74 = v18;
    v76 = v17;
    v87 = 0.0;
    v88 = 0.0;
    v85 = 0.0;
    v86 = 0.0;
    v83 = 0.0;
    v84 = 0.0;
    v82 = 0.0;
    OZChannel::getValueAsDouble((this + 26280), MEMORY[0x277CC08F0], 0.0);
    OZChannel::getValueAsDouble((this + 26432), MEMORY[0x277CC08F0], 0.0);
    OZChannel::getValueAsDouble((this + 27424), MEMORY[0x277CC08F0], 0.0);
    OZChannel::getValueAsDouble((this + 27576), MEMORY[0x277CC08F0], 0.0);
    if ((*(*this + 1608))(this))
    {
      (*(*this + 1728))(this, &v122, &v88, &v87, &v86, &v85);
    }

    OZTransformNode::getPivot(this, &v84, &v83, &v82, &v122);
    v20 = v87;
    v19 = v88;
    v21 = v85;
    v22 = v86;
    v23 = OZChannel::getValueAsInt((this + 22720), MEMORY[0x277CC08F0], 0.0);
    v24 = v76 - v19 - v20;
    v25 = v74 - v22 - v21;
    if (v23 != 1)
    {
      v26 = v24 * a2;
      if (v23 == 2)
      {
        v27 = v26 / v13;
        v28 = v26 / v13 / *&v12;
        v73 = 1.0;
        v75 = 1.0;
        v29 = 0.0;
        v30 = 0.0;
        v31 = v25;
        v32 = v25 / *(&v12 + 1);
      }

      else
      {
        v47 = *&v12 * v13 / *(&v12 + 1);
        v48 = v47 > v26 / v25;
        v49 = v47 * v25;
        v27 = v26 / v13;
        v50 = v26 / v47;
        if (v48)
        {
          v28 = v25 / *(&v12 + 1);
        }

        else
        {
          v28 = v26 / v13 / *&v12;
        }

        if (v48)
        {
          v51 = v25;
        }

        else
        {
          v51 = v50;
        }

        v52 = v49 / v13;
        if (v48)
        {
          v27 = v52;
        }

        v30 = 0.0;
        if (v13 * v27 > v26)
        {
          v30 = (v13 * v27 - v26) / v13 * 0.5;
        }

        v31 = v51;
        if (v51 <= v25)
        {
          v29 = 0.0;
        }

        else
        {
          v29 = (v51 - v25) * 0.5;
        }

        v73 = 1.0;
        v75 = 1.0;
        v32 = v28;
      }

LABEL_69:
      v55 = v88;
      v70 = v84;
      v72 = v83;
      v69 = v85;
      v67 = v87;
      v68 = v86;
      v78 = v82;
      OZChannel::setValue((this + 29232), MEMORY[0x277CC08F0], v27, 0);
      OZChannel::setValue((this + 29384), MEMORY[0x277CC08F0], v31, 0);
      OZChannel2D::setValue((this + 26144), MEMORY[0x277CC08F0], v28, v32, 0);
      OZChannel2D::setValue((this + 27288), MEMORY[0x277CC08F0], 1.0 / v73, 1.0 / v75, 0);
      OZChannelPosition::setPosition((this + 26584), MEMORY[0x277CC08F0], 0.0, 0.0, 0);
      v56 = (v70 + (v67 - v55) * 0.5) * a2 / v13;
      v57 = v72 + (v69 - v68) * 0.5;
      v58 = v29 != 0.0 || v30 != 0.0;
      if (v58 && ((*(*this + 1608))(this) & 1) == 0)
      {
        OZChannelBase::enable((this + 17520), 1, 0);
        OZChannelCrop::setValue((this + 17520), &v122, v30, v30, v29, v29);
        OZTransformNode::setPivot(this, v56, v57, v78, &v122);
      }

      else
      {
        (*(*(this + 2207) + 768))(this + 17656, &v122, v30);
        (*(*(this + 2226) + 768))(this + 17808, &v122, v30);
        (*(*(this + 2245) + 768))(this + 17960, &v122, v29);
        (*(*(this + 2264) + 768))(this + 18112, &v122, v29);
        (*(*(this + 701) + 768))(this + 5608, &v122, v56);
        (*(*(this + 720) + 768))(this + 5760, &v122, v57);
        (*(*(this + 776) + 768))(this + 6208, &v122, v78);
      }

      v89.n128_u64[1] = 0;
      v90 = 0;
      v89.n128_u64[0] = &v89.n128_u64[1];
      v59 = (*(*this + 272))(this);
      OZScene::getCloneNodes(v59, *(this + 20), &v89);
      v60 = v89.n128_u64[0];
      if (v89.n128_u64[0] != &v89.n128_i8[8])
      {
        do
        {
          v61 = (*(*this + 272))(this);
          Node = OZScene::getNode(v61, *(v60 + 28));
          if (Node)
          {
            if (v63)
            {
              v64 = v63;
              if (v58 && (*(*this + 1608))(this))
              {
                (*(v64[2190] + 104))(v64 + 2190, 1, 0);
                OZChannelCrop::setValue((v64 + 2190), &v122, v30, v30, v29, v29);
                OZTransformNode::setPivot(v64, v56, v57, v78, &v122);
              }

              else
              {
                (*(v64[2207] + 768))(v64 + 2207, &v122, v30);
                (*(v64[2226] + 768))(v64 + 2226, &v122, v30);
                (*(v64[2245] + 768))(v64 + 2245, &v122, v29);
                (*(v64[2264] + 768))(v64 + 2264, &v122, v29);
                (*(v64[701] + 768))(v64 + 701, &v122, v56);
                (*(v64[720] + 768))(v64 + 720, &v122, v57);
                (*(v64[776] + 768))(v64 + 776, &v122, v78);
              }
            }
          }

          v65 = *(v60 + 8);
          if (v65)
          {
            do
            {
              v66 = v65;
              v65 = v65->n128_u64[0];
            }

            while (v65);
          }

          else
          {
            do
            {
              v66 = *(v60 + 16);
              _ZF = v66->n128_u64[0] == v60;
              v60 = v66;
            }

            while (!_ZF);
          }

          v60 = v66;
        }

        while (v66 != &v89.n128_i8[8]);
      }

      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v89, v89.n128_u64[1]);
      goto LABEL_10;
    }

    v33 = v74 - v22 - v21;
    v80 = 0.0;
    v81 = 0.0;
    v79 = 0;
    (*(*this + 1312))(this, &v81, &v80, &v79, &v122, 1);
    v34 = v81 >= 1.0 || v81 <= 0.0;
    v35 = 1.0 / v81;
    if (v34)
    {
      v35 = 1.0;
    }

    v71 = v35;
    v36 = v80 >= 1.0 || v80 <= 0.0;
    v37 = 1.0 / v80;
    if (v36)
    {
      v37 = 1.0;
    }

    v77 = v37;
    v38 = v33;
    v39 = v24;
    if (*(v5 + 8072))
    {
      PGGetCurrentPGContext(&v89);
      v38 = v33;
      v39 = v24;
      if (v89.n128_u64[0])
      {
        v40 = v24;
        v41 = v33;
        if (v24 > 4096 || (v38 = v33, v39 = v24, v41 > 4096))
        {
          if (v40 <= v41)
          {
            v40 = v33;
          }

          if (v40 <= 1)
          {
            v40 = 1;
          }

          v42 = 4096.0 / v40;
          v39 = floor(v24 * v42);
          v38 = floor(v33 * v42);
        }
      }

      if (v89.n128_u64[1])
      {
        v43 = v38;
        std::__shared_weak_count::__release_shared[abi:ne200100](v89.n128_u64[1]);
        v38 = v43;
      }
    }

    v44 = v38;
    v45 = OZChannel::getValueAsInt(this + 171, MEMORY[0x277CC08F0], 0.0);
    v46 = v44;
    v27 = v39;
    if (v45)
    {
      v73 = v39 / *&v12;
      v75 = v44 / *(&v12 + 1);
      v53 = v33;
      v54 = v77;
LABEL_63:
      v28 = v71;
      goto LABEL_64;
    }

    if (*&v12 >= *(&v12 + 1))
    {
      v53 = v33;
      v54 = v77;
      if (v27 < v24)
      {
        v75 = 1.0;
        v54 = v24 * v71 / v27;
        goto LABEL_61;
      }
    }

    else
    {
      v53 = v33;
      v54 = v77;
      if (v44 < v33)
      {
        v75 = 1.0;
        v54 = v33 * v77 / v44;
LABEL_61:
        v27 = *&v12 * v54;
        v46 = *(&v12 + 1) * v54;
        v73 = 1.0;
        v28 = v54;
LABEL_64:
        v30 = 0.0;
        if (v13 * v27 > v24 * a2)
        {
          v30 = (v13 * v27 - v24 * a2) / v13 * 0.5;
        }

        v32 = v54;
        v31 = v46;
        if (v46 <= v53)
        {
          v29 = 0.0;
        }

        else
        {
          v29 = (v46 - v53) * 0.5;
        }

        goto LABEL_69;
      }
    }

    v73 = 1.0;
    v75 = 1.0;
    goto LABEL_63;
  }

  return result;
}

void sub_2600CA66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, CGColorSpace *a54)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a54);
  PCCFRef<CGColorSpace *>::~PCCFRef((v54 + 176));
  _Unwind_Resume(a1);
}

OZFootage *OZImageElement::didAddToScene(OZImageElement *this, OZScene *a2)
{
  v21 = **&MEMORY[0x277CC08F0];
  OZTransformNode::didAddToScene(this, a2);
  if (a2)
  {
    OZSceneSettings::OZSceneSettings(v17, (a2 + 336));
    epoch = v17[0].epoch;
    v5 = *&v17[0].timescale;
    v6 = v18;
    OZSceneSettings::getFrameDuration((a2 + 336), &time2);
    operator*(&time2, &time1, epoch);
    v16 = vcvtq_f64_f32(vcvt_f32_s32(v5));
    v21 = time1;
    v17[0].value = &unk_287283398;
    PCString::~PCString(&v20);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v19);
  }

  else
  {
    v16 = xmmword_260850050;
    v6 = 1.0;
  }

  v7 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 29232), MEMORY[0x277CC08F0], 0.0);
  v9 = v8;
  OZChannel::getValueAsDouble((this + 29384), v7, 0.0);
  v11 = v10;
  if (*(this + 30249) == 1)
  {
    if ((*(this + 30248) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
    *(this + 30248) = ValueAsInt != 0;
    *(this + 30249) = 1;
    if (!ValueAsInt)
    {
      goto LABEL_16;
    }
  }

  if (v9 == 1.0 || v11 == 1.0)
  {
    OZChannel::setValue((this + 29232), v7, v6 * v16.f64[0], 0);
    OZChannel::setValue((this + 29384), v7, v16.f64[1], 0);
    OZChannel2D::setValue((this + 26144), v7, 1.0 / v6, 1.0, 0);
    v17[0] = *(this + 208);
    time1 = *(this + 232);
    time2 = *v7;
    if (!CMTimeCompare(&time1, &time2))
    {
      v17[1] = v21;
      if (a2)
      {
        OZSceneSettings::getFrameDuration((a2 + 336), &time1);
        OZRetimingUtil::SetTimeExtent((this + 56), v17, &time1, v14);
      }
    }
  }

LABEL_16:
  result = OZImageElement::showHideDropZoneChannels(this, 0);
  if (a2)
  {
    if ((*(a2 + 1576) & 1) == 0)
    {
      return OZImageElement::ptcLoadCinematicScript(this);
    }
  }

  return result;
}

void sub_2600CA948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZSceneSettings::~OZSceneSettings(va);
  _Unwind_Resume(a1);
}

uint64_t OZImageElement::updateHiddenChannels(OZImageElement *this, char a2)
{
  updated = OZElement::updateHiddenChannels(this, a2);
  v4 = OZImageElement::isCinematographyAvailable(this);
  v5 = OZChannelBase::testFlag(this + 271, 2);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    OZChannelBase::resetFlag(this + 271, 2, 0);
  }

  else
  {
    if (v5)
    {
      goto LABEL_7;
    }

    OZChannelBase::setFlag(this + 271, 2, 0);
  }

  updated = 1;
LABEL_7:
  ValueAsInt = OZChannel::getValueAsInt((this + 30480), MEMORY[0x277CC08F0], 0.0);
  v7 = OZChannelBase::testFlag((this + 31296), 2);
  if (ValueAsInt)
  {
    if (v7)
    {
      OZChannelBase::resetFlag((this + 31296), 2, 0);
      return 1;
    }
  }

  else if (!v7)
  {
    OZChannelBase::setFlag((this + 31296), 2, 0);
    return 1;
  }

  return updated;
}

uint64_t OZImageElement::updateRetimingState(OZImageElement *this, OZChannelObjectRoot *a2)
{
  if (OZRetimingUtil::IsAtDefaultRetimingState((this + 56), a2) && !OZRetimingUtil::IsUsingRetimingBehaviors((this + 56), v3))
  {
    result = OZChannel::getValueAsInt((this + 32408), MEMORY[0x277CC08F0], 0.0);
    if (!result)
    {
      return result;
    }

    v5 = MEMORY[0x277CC08F0];
    v6 = (this + 32408);
    v7 = 0.0;
  }

  else
  {
    if (OZChannel::getValueAsInt((this + 32408), MEMORY[0x277CC08F0], 0.0))
    {
      return 0;
    }

    v5 = MEMORY[0x277CC08F0];
    v6 = (this + 32408);
    v7 = 1.0;
  }

  OZChannel::setValue(v6, v5, v7, 0);
  return 1;
}

uint64_t OZImageElement::gridFitOffset@<X0>(uint64_t result@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result + 28672;
  if (*(result + 30249) == 1)
  {
    if ((*(result + 30248) & 1) == 0)
    {
LABEL_3:
      v6 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(*a2)));
      v7.i64[0] = v6.i32[0];
      v7.i64[1] = v6.i32[1];
      __asm { FMOV            V1.2D, #1.0 }

      v13 = vaddq_f64(vsubq_f64(*a2, vcvtq_f64_s64(v7)), _Q1);
      *&_Q1.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(v13)));
      v7.i64[0] = SLODWORD(_Q1.f64[0]);
      v7.i64[1] = SHIDWORD(_Q1.f64[0]);
      *a3 = vsubq_f64(v13, vcvtq_f64_s64(v7));
      return result;
    }
  }

  else
  {
    result = OZChannel::getValueAsInt((result + 22568), MEMORY[0x277CC08F0], 0.0);
    *(v5 + 1576) = result != 0;
    *(v5 + 1577) = 1;
    if (!result)
    {
      goto LABEL_3;
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

void *OZImageElement::gridFit(uint64_t a1, uint64_t a2)
{
  v4 = vcvt_f32_s32(*((*(*a1 + 272))(a1) + 344));
  result = (*(*a1 + 1512))(&v18, a1, a2);
  v6 = vaddq_f64(*&v18.value, vcvtq_f64_f32(vmul_f32(v4, 0xBF000000BF000000)));
  v7 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(v6)));
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  __asm { FMOV            V1.2D, #1.0 }

  v14 = vaddq_f64(vsubq_f64(v6, vcvtq_f64_s64(v8)), _Q1);
  *&_Q1.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(v14)));
  v8.i64[0] = SLODWORD(_Q1.f64[0]);
  v8.i64[1] = SHIDWORD(_Q1.f64[0]);
  v15 = vcvt_f32_f64(vsubq_f64(v14, vcvtq_f64_s64(v8)));
  *&_Q1.f64[0] = vcgt_f32(vdup_n_s32(0x3727C5ACu), vabs_f32(v15));
  if ((LODWORD(_Q1.f64[0]) & HIDWORD(_Q1.f64[0]) & 1) == 0)
  {
    v18 = **&MEMORY[0x277CC08F0];
    v16 = v15.f32[0];
    v17 = v15.f32[1];
    OZChannelPosition3D::offsetPosition((a1 + 5472), &v18, v15.f32[0], v15.f32[1], 0.0, 1);
    OZChannel::setDefaultValue((a1 + 5608), v16);
    OZChannel::setDefaultValue((a1 + 5760), v17);
    return OZChannel::setDefaultValue((a1 + 6208), 0.0);
  }

  return result;
}

CGColorSpace **OZImageElement::gridFit(CGColorSpace **this, OZFootage *a2)
{
  if (a2)
  {
    v3 = this;
    v43 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v44 = _Q0;
    OZRenderState::OZRenderState(&v42);
    v11 = xmmword_260343AA0;
    v12 = 0x3FF0000000000000;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0x3FF0000000000000;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0x3FF0000000000000;
    v23 = 0;
    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 16);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0x100000000;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 768;
    v36 = 0x408F400000000000;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    __asm { FMOV            V0.2D, #1.0 }

    v41 = _Q0;
    (*(*a2 + 1568))(a2, &v43, &v42, &v11);
    __asm { FMOV            V2.2D, #0.5 }

    v43 = vsubq_f64(v43, vaddq_f64(v43, vmulq_f64(v44, _Q2)));
    (*(*v3 + 2264))(v3, &v43);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v34);
    return PCCFRef<CGColorSpace *>::~PCCFRef(&v33);
  }

  return this;
}

void sub_2600CAEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, CGColorSpace *a32)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a32);
  PCCFRef<CGColorSpace *>::~PCCFRef((v32 + 176));
  _Unwind_Resume(a1);
}

void OZImageElement::getOriginalBounds(uint64_t a1, double *a2, const OZRenderState *a3)
{
  v6 = a1 + 28672;
  Footage = OZImageElement::getFootage(a1);
  if (*(v6 + 1577) == 1)
  {
    if ((*(v6 + 1576) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((a1 + 29232), MEMORY[0x277CC08F0], 0.0);
    v21 = vcvtmd_s64_f64(v20 + 0.00001 + 0.0000001);
    OZChannel::getValueAsDouble((a1 + 29384), v19, 0.0);
    v23 = ((v21 & 1) + v21);
    v24 = floor(v22 + 0.00001 + 0.0000001);
    *a2 = v23 * -0.5;
    a2[1] = v24 * -0.5;
    a2[2] = v23;
    a2[3] = v24;
    return;
  }

  ValueAsInt = OZChannel::getValueAsInt((a1 + 22568), MEMORY[0x277CC08F0], 0.0);
  *(v6 + 1576) = ValueAsInt != 0;
  *(v6 + 1577) = 1;
  if (ValueAsInt)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (Footage)
  {
    v8 = (a1 + 30216);
    if (*(a1 + 30232) >= 0.0 && *(a1 + 30240) >= 0.0)
    {
      v26 = *(a1 + 30232);
      *a2 = *v8;
      *(a2 + 1) = v26;
    }

    else
    {
      v62[0] = 0;
      v62[1] = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      v63 = _Q0;
      OZRenderState::OZRenderState(&v61, a3);
      v30 = xmmword_260343AA0;
      v31 = 0x3FF0000000000000;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0x3FF0000000000000;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v43 = 0;
      v40 = 0;
      v41 = 0;
      v39 = 0x3FF0000000000000;
      v42 = 0;
      v44 = *MEMORY[0x277CC08F0];
      v45 = *(MEMORY[0x277CC08F0] + 16);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0x100000000;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 768;
      v55 = 0x408F400000000000;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = -1;
      __asm { FMOV            V0.2D, #1.0 }

      v60 = _Q0;
      var0 = v61.var0;
      OZImageElement::globalToFootageTime(a1, &var0, &v28);
      *&v61.var0.var0 = v28;
      v61.var0.var3 = v29;
      HIDWORD(v40) = OZChannel::getValueAsInt((a1 + 22312), MEMORY[0x277CC08F0], 0.0);
      (*(*Footage + 1568))(Footage, v62, &v61, &v30);
      v15 = v63;
      __asm { FMOV            V1.2D, #-0.5 }

      *a2 = vmulq_f64(v63, _Q1);
      *(a2 + 1) = v15;
      v17 = *(a2 + 1);
      *v8 = *a2;
      *(a1 + 30232) = v17;
      PCCFRef<CGColorSpace *>::~PCCFRef(&v53);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v52);
    }
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *(a2 + 1) = _Q0;
  }
}

void sub_2600CB1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, CGColorSpace *a38)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a38);
  PCCFRef<CGColorSpace *>::~PCCFRef((v38 + 176));
  _Unwind_Resume(a1);
}

void OZImageElement::globalToFootageTime(OZImageElement *this@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  Footage = OZImageElement::getFootage(this);
  if (Footage && (*(*Footage + 1376))(Footage) == 1)
  {
    v7 = MEMORY[0x277CC08F0];
    *a3 = *MEMORY[0x277CC08F0];
    v8 = *(v7 + 16);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v9 = (*(*this + 640))(this);
    OZRetimingUtil::RemapTimeValue(v9, a2, a3);
    memset(&v16, 0, sizeof(v16));
    (*(*this + 2304))(&v16, this);
    time1 = *a3;
    v10 = MEMORY[0x277CC08F0];
    time2 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      *a3 = *v10;
      v8 = *(v10 + 16);
    }

    else
    {
      time1 = *a3;
      time2 = v16;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        return;
      }

      v11 = (*(*this + 272))(this);
      OZSceneSettings::getFrameDuration((v11 + 336), &v12);
      time1 = v16;
      *&time2.value = v12;
      time2.epoch = v13;
      PC_CMTimeSaferSubtract(&time1, &time2, &v14);
      *a3 = v14;
      v8 = v15;
    }
  }

  *(a3 + 16) = v8;
}

void OZImageElement::getRetimedHeliumGraphNoInterpolation(_anonymous_namespace_ *this@<X1>, const OZRenderParams *a2@<X2>, uint64_t a3@<X3>, const void *a4@<X4>, double *a5@<X5>, BOOL *a6@<X6>, void *a7@<X7>, HGBitmapLoader **a8@<X8>)
{
  v16 = *a2;
  v17.value = 0;
  *a2 = v18;
  *(a2 + 49) = 0;
  *(a2 + 50) = 0;
  OZFootage::getHeliumGraph(this, a2, a3, a4, a5, a6, a7, a8);
}

double anonymous namespace::GetBlendingParams(_anonymous_namespace_ *this, const CMTime *a2, CMTime *a3, CMTime *a4, CMTime *a5, double *a6, BOOL *a7)
{
  OZFootage::getFootageTime(this, a2, a3);
  memset(&v21, 0, sizeof(v21));
  OZFootage::getFrameDuration(this, &v21);
  memset(&v20, 0, sizeof(v20));
  time = *a3;
  v22 = v21;
  PC_CMTimeFloorToSampleDuration(&time, &v22, &v20);
  v18 = 0uLL;
  v19 = 0;
  time = *a3;
  v22 = v20;
  PC_CMTimeSaferSubtract(&time, &v22, &v18);
  operator/(&v18, &v21, &time);
  *&a5->value = CMTimeGetSeconds(&time);
  time = **&MEMORY[0x277CC08F0];
  if (OZFootage::getFieldDominance(this, &time))
  {
    v11 = *&a5->value;
    if (*&a5->value >= 0.5)
    {
      v11 = *&a5->value + -0.5;
    }

    *&a5->value = v11 + v11;
    time = v21;
    PC_CMTimeHalve(&time, &v14);
    time = *a3;
    *&v22.value = v14;
    epoch = v15;
  }

  else
  {
    time = *a3;
    *&v22.value = *&v21.value;
    epoch = v21.epoch;
  }

  v22.epoch = epoch;
  PC_CMTimeSaferAdd(&time, &v22, &v16);
  result = *&v16;
  *&a4->value = v16;
  a4->epoch = v17;
  return result;
}

void getMotionBlurTimes(CMTime *a1, int a2, int a3, OZImageElement *a4, OZFootage *this, uint64_t a6, uint64_t a7, double a8)
{
  *(a7 + 8) = *a7;
  v15 = a2;
  __p = 0;
  v40 = 0;
  if (a3)
  {
    v16 = (a2 * a2);
  }

  else
  {
    v16 = a2;
  }

  v41 = 0;
  memset(&v38, 0, sizeof(v38));
  OZFootage::getFrameDuration(this, &v38);
  memset(&v37, 0, sizeof(v37));
  OZSceneSettings::getFrameDuration((a6 + 336), &v37);
  if (a2)
  {
    v17 = 0;
    v18 = a8 / v16;
    v19 = 1.0 / v15;
    do
    {
      memset(&v36, 0, sizeof(v36));
      operator*(&v37, &v34, v18 * v17);
      v43 = *a1;
      v42 = v34;
      PC_CMTimeSaferAdd(&v43, &v42, &v35);
      OZImageElement::globalToFootageTime(a4, &v35, &v36);
      OZFootage::getFootageTime(this, &v36, &v43);
      LOBYTE(v35.value) = 0;
      v20 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CMTime *>,CMTime,std::__identity,std::__less<void,void>>(__p, &v43, 0xAAAAAAAAAAAAAAABLL * ((v40 - __p) >> 3));
      if (v40 == v20)
      {
        std::vector<CMTime>::push_back[abi:ne200100](&__p, &v43.value);
        v42 = v43;
        v22 = *(a7 + 8);
        v23 = *(a7 + 16);
        if (v22 >= v23)
        {
          v26 = (v22 - *a7) >> 5;
          v27 = v26 + 1;
          if ((v26 + 1) >> 59)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v28 = v23 - *a7;
          if (v28 >> 4 > v27)
          {
            v27 = v28 >> 4;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFE0)
          {
            v29 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<OMVertex>>(a7, v29);
          }

          v30 = 32 * v26;
          *v30 = v42;
          *(v30 + 24) = v19;
          v25 = 32 * v26 + 32;
          v31 = *(a7 + 8) - *a7;
          v32 = 32 * v26 - v31;
          memcpy((v30 - v31), *a7, v31);
          v33 = *a7;
          *a7 = v32;
          *(a7 + 8) = v25;
          *(a7 + 16) = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          v24 = *&v43.value;
          *(v22 + 16) = v43.epoch;
          *v22 = v24;
          *(v22 + 24) = v19;
          v25 = v22 + 32;
        }

        *(a7 + 8) = v25;
      }

      else
      {
        v21 = *a7 + 0x5555555555555560 * ((v20 - __p) >> 3);
        *(v21 + 24) = v19 + *(v21 + 24);
      }

      ++v17;
    }

    while (a2 != v17);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }
}

void sub_2600CB8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZImageElement::getRetimedHeliumGraphMotionBlur(OZFootage *this@<X2>, uint64_t *a2@<X0>, uint64_t a3@<X1>, OZRenderParams *a4@<X3>, uint64_t a5@<X4>, const void *a6@<X5>, uint64_t a7@<X6>, double *a8@<X7>, uint64_t *a9@<X8>, void *a10)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  *&v33._pcColorDesc._colorSpaceRef._obj = *a3;
  *&v33._pcColorDesc._toneMapMethod._gain = *(a3 + 16);
  getMotionBlurTimes(&v33, *(a3 + 500), *(a3 + 496), a2, this, a2[121], &v34, *(a3 + 504));
  v17 = v35 - v34;
  WorkingColorDescription = a7;
  if ((v35 - v34) >= 0x21)
  {
    WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a4);
  }

  v19 = *WorkingColorDescription;
  v33._pcColorDesc._colorSpaceRef._obj = v19;
  if (v19)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v19);
  }

  v27 = a9;
  v20 = *(WorkingColorDescription + 8);
  v33._pcColorDesc._toneMapMethod._gain = *(WorkingColorDescription + 16);
  *&v33._pcColorDesc._dynamicRange = v20;
  v33._isPremultiplied = *(WorkingColorDescription + 24);
  v32 = 0;
  v21 = 0uLL;
  v31 = 0u;
  v23 = v34;
  v22 = v35;
  if (v34 != v35)
  {
    do
    {
      v24 = *v23;
      *(a4 + 2) = *(v23 + 2);
      *a4 = v24;
      *(a4 + 49) = 0;
      *(a4 + 50) = 0;
      OZFootage::getHeliumGraph(this, a4, a5, a6, &v33, a8, a10, &v30);
      v28 = v30;
      if (v30)
      {
        (*(*v30 + 16))(v30);
      }

      FxBalancedBlendRecord::FxBalancedBlendRecord(v29, &v28, *(v23 + 3));
      if (v28)
      {
        (*(*v28 + 24))(v28);
      }

      std::vector<FxBalancedBlendRecord>::push_back[abi:ne200100](&v31, v29);
      if (v29[0])
      {
        (*(*v29[0] + 3))(v29[0]);
      }

      if (v30)
      {
        (*(*v30 + 24))(v30);
      }

      v23 += 32;
    }

    while (v23 != v22);
    v21 = v31;
  }

  makeBalancedBlendTree_RetimeAddBlend6<std::__wrap_iter<FxBalancedBlendRecord *>>(v21, *(&v21 + 1), v27);
  if (v17 < 0x21)
  {
    PCCFRef<CGColorSpace *>::operator=(a7, &v33._pcColorDesc._colorSpaceRef._obj);
    *(a7 + 8) = *&v33._pcColorDesc._dynamicRange;
    *(a7 + 16) = v33._pcColorDesc._toneMapMethod._gain;
    *(a7 + 24) = v33._isPremultiplied;
  }

  else
  {
    FxApplyColorConform(v27, &v33, a7, v29);
    v25 = *v27;
    v26 = v29[0];
    if (*v27 == v29[0])
    {
      if (v25)
      {
        (*(*v29[0] + 3))(v29[0]);
      }
    }

    else
    {
      if (v25)
      {
        (*(*v25 + 24))(v25);
        v26 = v29[0];
      }

      *v27 = v26;
    }
  }

  *a10 = 0;
  v29[0] = &v31;
  std::vector<FxBalancedBlendRecord>::__destroy_vector::operator()[abi:ne200100](v29);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v33._pcColorDesc._colorSpaceRef._obj);
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_2600CBC40(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void (***)(void **));
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  if (v7)
  {
    (*v7)[3](v7);
  }

  if (*a3)
  {
    (*(**a3 + 24))(*a3);
  }

  va_copy(v7, va1);
  std::vector<FxBalancedBlendRecord>::__destroy_vector::operator()[abi:ne200100](va);
  PCCFRef<CGColorSpace *>::~PCCFRef(va2);
  v6 = *(v4 - 104);
  if (v6)
  {
    *(v4 - 96) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<FxBalancedBlendRecord>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<FxBalancedBlendRecord>::__emplace_back_slow_path<FxBalancedBlendRecord const&>(a1, a2);
  }

  else
  {
    std::vector<FxBalancedBlendRecord>::__construct_one_at_end[abi:ne200100]<FxBalancedBlendRecord const&>(a1, a2);
    result = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

void OZImageElement::getRetimedHeliumGraph(uint64_t a1@<X0>, uint64_t a2@<X1>, OZFootage *a3@<X2>, OZRenderParams *a4@<X3>, uint64_t a5@<X4>, const void *a6@<X5>, double *a7@<X6>, double *a8@<X7>, void *a9@<X8>, void *a10)
{
  ValueAsInt = OZChannel::getValueAsInt((a1 + 21496), MEMORY[0x277CC08F0], 0.0);
  if (*(a2 + 513))
  {
    v20 = ValueAsInt;
  }

  else
  {
    v20 = 0;
  }

  *a9 = 0;
  if (v20 == 2)
  {
    OZImageElement::getRetimedHeliumGraphMotionBlur(a3, a1, a2, a4, a5, a6, a7, a8, &v21, a10);
  }

  else
  {
    if (v20)
    {
      return;
    }

    OZImageElement::getRetimedHeliumGraphNoInterpolation(a3, a4, a5, a6, a7, a8, a10, &v21);
  }

  if (v21)
  {
    *a9 = v21;
  }
}

void OZImageElement::createDropZoneGridHeliumGraph(_anonymous_namespace_ *a1, uint64_t a2, FxColorDescription *a3, uint64_t a4)
{
  FxColorDescription::setDynamicRange(a3, 0);
  *(a4 + 120) = 0x3FF0000000000000;
  *(a4 + 80) = 0x3FF0000000000000;
  *(a4 + 40) = 0x3FF0000000000000;
  *a4 = 0x3FF0000000000000;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  if (*(a1 + 80) == 1)
  {
    CGColorSpace = FxColorDescription::getCGColorSpace(a3);
  }

  v9 = FxColorDescription::getCGColorSpace(a3);
}

void sub_2600CC17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, CGColorSpace *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  PCCFRef<CGColorSpace *>::~PCCFRef(va1);
  v5 = *(v3 - 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void sub_2600CC484(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void OZImageElement::clearDropZoneCallback(OZImageElement *this)
{
  OZImageElement::isEffectSource(this);
  ValueAsInt = OZChannel::getValueAsInt((this + 23432), MEMORY[0x277CC08F0], 0.0);
  OZImageElement::defaultDropZoneFootageForType(ValueAsInt, &v12);
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v4 = OZPreferenceManager::Instance(v3);
  if (OZPreferenceManager::getRemoveUnusedMedia(v4))
  {
    Footage = OZImageElement::getFootage(this);
    if (Footage)
    {
      LODWORD(v9.var0) = Footage[20];
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v10, &v9);
    }
  }

  v6 = OZImageElement::replaceFootage(this, &v12, 1);
  if (v6)
  {
    v7 = OZPreferenceManager::Instance(v6);
    if (OZPreferenceManager::getRemoveUnusedMedia(v7))
    {
      v8 = *(this + 121);
      PCSharedCount::PCSharedCount(&v9);
      OZScene::deleteUnusedSceneNodeFilesForNodes(v8, &v10, &v9);
      PCString::~PCString(&v9);
    }

    OZDocument::postNotification(*(*(this + 121) + 1584), 24);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v10, v11[0]);
  PCURL::~PCURL(&v12);
}

void sub_2600CC5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, char a11, void *a12)
{
  PCString::~PCString(&a10);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a11, a12);
  PCURL::~PCURL((v12 - 24));
  _Unwind_Resume(a1);
}

void OZImageElement::defaultDropZoneFootageForType(unsigned int a1@<W0>, PCURL *a2@<X8>)
{
  if (a1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279AAA228[a1];
  }

  v4 = CFBundleCopyResourceURL(*(theApp + 72), v3, 0, 0);
  PCURL::PCURL(a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void OZImageElement::setDropZonePlaceholder(OZImageElement *this)
{
  OZImageElement::isEffectSource(this);
  ValueAsInt = OZChannel::getValueAsInt((this + 23432), MEMORY[0x277CC08F0], 0.0);
  OZImageElement::defaultDropZoneFootageForType(ValueAsInt, &v7);
  Instance = PMMediaManager::getInstance(v3);
  if (PMMediaManager::findReader(Instance, &v7))
  {
    v6 = 0;
    if (!PMMediaManager::open(Instance, &v7, &v6, 0))
    {
      Footage = OZImageElement::getFootage(this);
      if (Footage)
      {
        OZFootage::setClip(Footage, v6, 1, 1, 1);
      }

      OZImageElement::showHideDropZoneChannels(this, 0);
    }
  }

  PCURL::~PCURL(&v7);
}

void sub_2600CC750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

uint64_t OZScene::begin_t<OZFootageLayer,false,true>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1208);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 1200;
  *(a2 + 24) = 0;
  if (v3 != result + 1200)
  {
    v4 = *(v3 + 16);
    {
      do
      {
        OZObject::iterator_t<OZFootageLayer,false,true,OZObject::defaultValidator>::increment(a2);
        result = OZObject::iterator_t<OZFootageLayer,false,true,OZObject::defaultValidator>::typeCheck(a2);
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

BOOL OZImageElement::isDefaultDropZoneFootageForType(const __CFURL **a1, unsigned int a2)
{
  PCURL::getAsFileSystemString(a1, &v7);
  if (PCString::empty(&v7))
  {
    v3 = 0;
  }

  else
  {
    if (a2 > 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = off_279AAA228[a2];
    }

    PCURL::PCURL(&v6, v4);
    v3 = PCString::find(&v7, &v6) >= 0;
    PCString::~PCString(&v6);
  }

  PCString::~PCString(&v7);
  return v3;
}

void sub_2600CC964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

uint64_t OZImageElement::isDefaultDropZoneFootage(const PCURL *a1)
{
  v2 = PCURL::PCURL(v13, a1);
  isDefaultDropZoneFootageForType = OZImageElement::isDefaultDropZoneFootageForType(v2, 0);
  PCURL::~PCURL(v13);
  if (isDefaultDropZoneFootageForType)
  {
    return 1;
  }

  PCURL::PCURL(&v12, a1);
  v4 = OZImageElement::isDefaultDropZoneFootageForType(&v12, 3u);
  PCURL::~PCURL(&v12);
  if (v4)
  {
    return 1;
  }

  PCURL::PCURL(&v11, a1);
  v5 = OZImageElement::isDefaultDropZoneFootageForType(&v11, 3u);
  PCURL::~PCURL(&v11);
  if (v5)
  {
    return 1;
  }

  PCURL::PCURL(&v10, a1);
  v6 = OZImageElement::isDefaultDropZoneFootageForType(&v10, 1u);
  PCURL::~PCURL(&v10);
  if (v6)
  {
    return 1;
  }

  PCURL::PCURL(&v9, a1);
  v7 = OZImageElement::isDefaultDropZoneFootageForType(&v9, 2u);
  PCURL::~PCURL(&v9);
  return v7;
}

void sub_2600CCA94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

CMTime *OZImageElement::globalToLocalTime@<X0>(OZImageElement *this@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  OZChannel::getValueAsDouble((this + 20632), MEMORY[0x277CC08F0], 0.0);
  v7 = v6;
  *&var60.var0 = *&a2->value;
  var60.var2 = a2->epoch;
  OZSceneNode::globalToLocalTime(this, &var60, &var60.var3);
  return operator*(&var60.var3, a3, v7);
}

double OZImageElement::localToGlobalTime@<D0>(OZImageElement *this@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  OZChannel::getValueAsDouble((this + 20632), MEMORY[0x277CC08F0], 0.0);
  operator/(&a2->value, &v8, v6);
  return OZSceneNode::localToGlobalTime(this, &v8, a3);
}

OZChannelBase *OZImageElement::didResetCinematography(OZImageElement *this)
{
  OZImageElement::ptcResetCinematographyAllChannels(this);
  OZImageElement::ptcDeleteScriptData(this);
  OZImageElement::ptcLoadCinematicScript(this);

  return OZImageElement::ptcFillCinematographyDataChannels(this);
}

unint64_t OZImageElement::estimateRenderMemory(OZImageElement *a1, uint64_t a2, unsigned int *a3)
{
  Footage = OZImageElement::getFootage(a1);
  if (Footage)
  {
    v6 = Footage;
    v48 = 0;
    v17 = xmmword_260343AA0;
    v18 = 0x3FF0000000000000;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0x3FF0000000000000;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0x3FF0000000000000;
    v29 = 0;
    v7 = *(MEMORY[0x277CC08F0] + 16);
    v31 = *MEMORY[0x277CC08F0];
    v32 = v7;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0x100000000;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 768;
    v42 = 0x408F400000000000;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    __asm { FMOV            V0.2D, #1.0 }

    v47 = _Q0;
    WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a3);
    OZImageElement::calculateFrameRequestSettings(a1, a3, WorkingColorDescription, v6, &v48, &v17, &v16, &v15);
  }

  return a3[82] * a3[81] * a3[84] * (a3[83] >> 3);
}

void sub_2600CD17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, CGColorSpace *a34)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a34);
  PCCFRef<CGColorSpace *>::~PCCFRef((v34 + 176));
  _Unwind_Resume(a1);
}

void *OZImageElement::reloadResources(OZImageElement *this, PGContext *a2)
{
  result = OZImageElement::getFootage(this);
  if (result)
  {
    v3 = *(*result + 1624);

    return v3();
  }

  return result;
}

void *OZImageElement::eval(OZImageElement *this, OZRenderParams *a2)
{
  result = OZImageElement::getFootage(this);
  if (result)
  {
    v3 = *(*result + 96);

    return v3();
  }

  return result;
}

OZImageElement *OZImageElement::hitCheckForDropZoneSource(OZImageElement *a1, float32x2_t *a2, const OZRenderState *a3, uint64_t a4, float64x2_t *a5, char a6)
{
  v11 = a1;
  v62 = *MEMORY[0x277D85DE8];
  if ((a6 & 4) == 0 || ((*(*a1 + 680))(a1) & 1) == 0)
  {
    if ((a6 & 2) == 0 || (v53 = *&a3->var0.var0, var3 = a3->var0.var3, (*(*(v11 + 2) + 104))(v11 + 2, &v53, 1, 1, 1)))
    {
      OZRenderParams::OZRenderParams(&v53);
      OZRenderParams::setState(&v53, a3);
      v61 = 0uLL;
      v51 = 0uLL;
      __asm { FMOV            V0.2D, #-1.0 }

      v52 = _Q0;
      OZImageElement::getDropZoneSourceBounds(v11, &v51, &v53, 0);
      v16 = v51;
      v17 = v51.f64[1] + *(&v52 + 1);
      *&v55 = v51.f64[0];
      *(&v55 + 1) = v51.f64[1] + *(&v52 + 1);
      v61 = v55;
      v50 = 0x3FF0000000000000;
      v47 = 0x3FF0000000000000;
      v44 = 0x3FF0000000000000;
      v41 = 0x3FF0000000000000;
      v18 = v51.f64[0] + *&v52;
      v56 = v51.f64[0] + *&v52;
      v57 = v51.f64[1] + *(&v52 + 1);
      v58 = v51.f64[0] + *&v52;
      v59 = v51.f64[1];
      v60 = v51;
      v42 = 0u;
      v43 = 0u;
      v45 = 0u;
      v46 = 0u;
      v48 = 0u;
      v49 = 0u;
      (*(*v11 + 1256))(v11, &v41, a3);
      v39 = vcvtq_f64_f32(*a2);
      v40 = 0;
      (*(*v11 + 1384))(v36, v11, &v39, a4, a3, 0);
      v19 = vmulq_f64(v38, v38);
      if (fabs(v37 * v37 + v19.f64[0] + v19.f64[1]) >= 0.0000001)
      {
        memset(v33, 0, sizeof(v33));
        v34 = 0;
        v35 = 0xBFF0000000000000;
        if (PCIntersectRayWithPlane(v36, v33, a5))
        {
          v20 = 0;
          v21 = 0;
          v22 = a5->f64[1];
          v23 = &v55 + 1;
          LODWORD(v24) = 4;
          do
          {
            v25 = v24;
            v24 = v20;
            v26 = *v23;
            v27 = *(&v55 + 2 * v25 + 1);
            _NF = *v23 <= v22 && v22 < v27;
            if (_NF || (v22 < v26 ? (v29 = v27 > v22) : (v29 = 1), !v29))
            {
              if (a5->f64[0] < *(v23 - 1) + (v22 - v26) * (*(&v55 + 2 * v25) - *(v23 - 1)) / (*(&v55 + 2 * v25 + 1) - v26))
              {
                v21 ^= 1u;
              }
            }

            ++v20;
            v23 += 2;
          }

          while (v24 != 4);
          if (v21)
          {
            PCMatrix44Tmpl<double>::transform<double>(&v41, a5->f64, a5->f64);
LABEL_25:
            OZRenderParams::~OZRenderParams(&v53);
            return v11;
          }
        }

        else
        {
          v31[0] = v16.f64[0];
          v31[1] = v18;
          v31[2] = v16.f64[1];
          v31[3] = v17;
          v32 = xmmword_26084FC00;
          if (PCRayIntersectsBox(v36, v31, a5))
          {
            PCMatrix44Tmpl<double>::transform<double>(&v41, a5->f64, a5->f64);
            goto LABEL_25;
          }
        }
      }

      v11 = 0;
      goto LABEL_25;
    }
  }

  return 0;
}

uint64_t OZImageElement::calcHashForState(uint64_t a1, const void *a2, const OZRenderParams *a3, uint64_t a4, uint64_t a5)
{
  Footage = OZImageElement::getFootage(a1);
  if (Footage)
  {
    v11 = Footage;
    if (*(a1 + 30249) == 1)
    {
      if (*(a1 + 30248))
      {
        goto LABEL_7;
      }
    }

    else
    {
      ValueAsInt = OZChannel::getValueAsInt((a1 + 22568), MEMORY[0x277CC08F0], 0.0);
      *(a1 + 30248) = ValueAsInt != 0;
      *(a1 + 30249) = 1;
      if (ValueAsInt)
      {
        goto LABEL_7;
      }
    }

    if (!OZObjectManipulator::isInObjectList(v11 + 16, a4))
    {
      if (v14)
      {
        v22 = *PCHashWriteStream::getHash(v14)->i8;
        OZRenderParams::OZRenderParams(&v18, a3);
        v16 = 0uLL;
        v17 = 0;
        v15 = *a3;
        OZImageElement::globalToFootageTime(a1, &v15, &v16);
        v18 = v16;
        v20 = 0;
        v21 = 0;
        v19 = v17;
        OZObjectManipulator::getHashForState();
      }

LABEL_13:
      __cxa_bad_cast();
    }
  }

LABEL_7:
  {
    goto LABEL_13;
  }

  OZChannelBase::setRangeName(a1, a3);

  return OZTransformNode::calcHashForState(a1, a2, a3, a4, a5);
}

void sub_2600CD914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

CGColorSpace **OZImageElement::updatePropertiesFromFootage(OZImageElement *this, OZFootage *a2)
{
  OZImageElement::updateLayerChannel(this, 1);
  (*(*a2 + 1232))(&v74, a2);
  PCURL::operator=(this + 3771, &v74);
  PCURL::~PCURL(&v74);
  (*(*this + 1128))(&v74, this);
  *(this + 1886) = *&v74.var1;
  *(this + 3774) = *&v74.var3;
  if (OZImageElement::isInputSource(this))
  {
    OZChannelBase::setFlag((this + 26584), 0x1000000000, 1);
    OZChannelBase::setFlag((this + 27288), 0x1000000000, 1);
  }

  OZRenderState::OZRenderState(&v74);
  v44 = xmmword_260343AA0;
  v45 = 0x3FF0000000000000;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v56 = 0;
  v54 = 0uLL;
  v53 = 0x3FF0000000000000;
  v55 = 0;
  v57 = *MEMORY[0x277CC08F0];
  v58 = *(MEMORY[0x277CC08F0] + 16);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0x100000000;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 768;
  v68 = 0x408F400000000000;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = -1;
  __asm { FMOV            V0.2D, #1.0 }

  v73 = _Q0;
  *(&v54 + 4) = OZChannel::getValueAsInt((this + 22312), MEMORY[0x277CC08F0], 0.0);
  v43 = 0;
  (*(*a2 + 1576))(a2, &v43 + 4, &v43, &v74, &v44);
  OZChannel::getValueAsDouble((this + 29232), &v74, 0.0);
  v10 = v9;
  OZChannel::getValueAsDouble((this + 29384), &v74, 0.0);
  v12 = v11;
  if (*(this + 30249) == 1)
  {
    if ((*(this + 30248) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
    *(this + 30248) = ValueAsInt != 0;
    *(this + 30249) = 1;
    if (!ValueAsInt)
    {
      goto LABEL_10;
    }
  }

  if (v10 == 1.0 || v12 == 1.0)
  {
    OZChannel::setValue((this + 29232), MEMORY[0x277CC08F0], *(&v43 + 1), 0);
    OZChannel::setValue((this + 29384), MEMORY[0x277CC08F0], *&v43, 0);
  }

LABEL_10:
  v14 = *(this + 4684);
  if (v14 > 2)
  {
    if (v14 == 4)
    {
      v28 = (*(*this + 640))(this);
      if (OZChannelFolder::testFoldFlag(v28, 0x4000))
      {
        v29 = *(this + 133);
        for (i = *(this + 132); i != v29; ++i)
        {
          if (!OZScene::getNode(*(this + 121), *i))
          {
            OZSceneNode::removeLinkedID(this, *i);
          }
        }
      }
    }

    else if (v14 == 3)
    {
      v25 = (*(*this + 640))(this);
      v26 = (*(*this + 272))(this);
      OZSceneSettings::getFrameDuration((v26 + 336), &v40);
      OZRetimingUtil::FixLoadedRetimingState(v25, &v40, v27);
    }
  }

  else
  {
    v15 = (*(*this + 640))(this);
    OZRetimingUtil::SetDefaultRetimingState(v15, v16);
    v17 = OZChannel::getValueAsInt((a2 + 3960), MEMORY[0x277CC08F0], 0.0);
    v18 = (*(*this + 640))(this);
    OZRetimingUtil::SetEndCondition(v18, v17);
    v19 = OZChannel::getValueAsInt((a2 + 4216), MEMORY[0x277CC08F0], 0.0);
    v20 = (*(*this + 640))(this);
    OZRetimingUtil::SetReverse(v20, (v19 != 0));
    if ((v17 - 1) < 3)
    {
      v21 = (*(*this + 640))(this);
      (*(*a2 + 1128))(&v40, a2);
      v42 = *&v41[8];
      OZRetimingUtil::SetLoopOffset(v21, &v42, v22);
    }

    v23 = vcvtq_f64_f32(__PAIR64__(v43, HIDWORD(v43)));
    __asm { FMOV            V1.2D, #0.5 }

    v40 = vsubq_f64(0, vaddq_f64(vmulq_f64(v23, _Q1), 0));
    *v41 = v23;
    (*(*this + 2264))(this, &v40);
  }

  v31 = (*(*this + 640))(this);
  v32 = (*(*this + 272))(this);
  OZSceneSettings::getFrameDuration((v32 + 336), &v40);
  OZRetimingUtil::FixLoopOffset(v31, &v40, v33);
  if (*(this + 30145) == 1)
  {
    OZImageElement::getRetimingHash(this);
    *(this + 30148) = v40;
  }

  if ((*(*this + 272))(this) && *((*(*this + 272))(this) + 1584))
  {
    v35 = *(*((*(*this + 272))(this) + 1584) + 160);
  }

  else
  {
    v35 = 0;
  }

  if (*(this + 30249) == 1)
  {
    if ((*(this + 30248) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v36 = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
    *(this + 30248) = v36 != 0;
    *(this + 30249) = 1;
    if (!v36)
    {
      goto LABEL_42;
    }
  }

  Footage = OZImageElement::getFootage(this);
  v38 = Footage;
  if (Footage && (((*(*Footage + 1432))(Footage) & 1) != 0 || (*(*v38 + 1616))(v38) && OZImageElement::isBackgroundDropZone(this)) && ((v35 | v38[1540]) & 1) == 0)
  {
    if (*(this + 4684) > 4u)
    {
      OZImageElement::clearDropZoneCallback(this);
    }

    else
    {
      OZImageElement::setDropZonePlaceholder(this);
    }
  }

LABEL_42:
  OZChannelBase::setRangeName(this, v34);
  OZImageElement::showHideDropZoneChannels(this, 1);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v66);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v65);
}

void sub_2600CE164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, CGColorSpace *a42)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a42);
  PCCFRef<CGColorSpace *>::~PCCFRef((v42 + 176));
  _Unwind_Resume(a1);
}

uint64_t OZImageElement::isInputSource(OZImageElement *this)
{
  v2 = this + 28672;
  if (*(this + 30249) == 1)
  {
    if ((*(this + 30248) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
    v2[1576] = result != 0;
    v2[1577] = 1;
    if (!result)
    {
      return result;
    }
  }

  if (OZChannel::getValueAsInt((this + 23432), MEMORY[0x277CC08F0], 0.0) == 3)
  {
    return 1;
  }

  result = OZChannel::getValueAsInt((this + 23432), MEMORY[0x277CC08F0], 0.0);
  if (result != 1)
  {
    return OZChannel::getValueAsInt((this + 23432), MEMORY[0x277CC08F0], 0.0) == 2;
  }

  return result;
}

uint64_t OZImageElement::isBackgroundDropZone(OZImageElement *this)
{
  v2 = this + 28672;
  if (*(this + 30249) == 1)
  {
    if ((*(this + 30248) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
    v2[1576] = result != 0;
    v2[1577] = 1;
    if (!result)
    {
      return result;
    }
  }

  return OZChannel::getValueAsInt((this + 23432), MEMORY[0x277CC08F0], 0.0) == 0;
}

__n128 OZImageElement::getNaturalDuration@<Q0>(OZImageElement *this@<X0>, uint64_t a2@<X8>)
{
  Footage = OZImageElement::getFootage(this);
  if (Footage)
  {
    v4 = *(*Footage + 1648);

    v4();
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

uint64_t OZImageElement::getNaturalDurationFlags(OZImageElement *this)
{
  Footage = OZImageElement::getFootage(this);
  if (!Footage)
  {
    return 6;
  }

  v3 = (*(*Footage + 1656))(Footage);
  v4 = (*(*this + 640))(this);
  return OZRetimingUtil::GetRetimeNaturalDurationFlags(v4, v5) | v3;
}

uint64_t OZImageElement::evaluateAlwaysCrop(OZImageElement *this, const OZRenderParams *a2)
{
  result = OZImageElement::isBackgroundDropZone(this);
  if (result)
  {
    if (OZChannel::getValueAsInt((this + 22976), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((this + 29840), MEMORY[0x277CC08F0], 0.0))
    {
      return 0;
    }

    else
    {
      v11[0] = 0.0;
      v11[1] = 0.0;
      __asm { FMOV            V0.2D, #-1.0 }

      v12 = _Q0;
      v10[0] = 0uLL;
      v10[1] = _Q0;
      (*(*this + 1488))(this, v11, a2);
      OZImageElement::getDropZoneSourceBounds(this, v10, a2, 0);
      return !PCRect<double>::contains(v11, v10[0].f64);
    }
  }

  return result;
}

uint64_t OZImageElement::alwaysCrop(_BYTE *a1)
{
  v1 = a1 + 28672;
  if (a1[30251] == 1)
  {
    v2 = a1[30250];
  }

  else
  {
    v2 = (*(*a1 + 2328))(a1);
    v1[1578] = v2;
    v1[1579] = 1;
  }

  return v2 & 1;
}

uint64_t OZImageElement::getDropZoneTypeValue(OZImageElement *this)
{
  v2 = this + 28672;
  if (*(this + 30249) == 1)
  {
    if ((*(this + 30248) & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
    v2[1576] = ValueAsInt != 0;
    v2[1577] = 1;
    if (!ValueAsInt)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v5 = MEMORY[0x277CC08F0];

  return OZChannel::getValueAsInt((this + 23432), v5, 0.0);
}

uint64_t OZImageElement::updateDropZoneTypeChannels(OZImageElement *this, int a2)
{
  DropZoneTypeValue = OZImageElement::getDropZoneTypeValue(this);
  v5 = DropZoneTypeValue;
  if (DropZoneTypeValue == -1)
  {
    v9 = MEMORY[0x277CC08F0];
    v11 = 0.0;
    OZChannel::setValue((this + 23688), MEMORY[0x277CC08F0], 0.0, a2);
    OZChannel::setValue((this + 23944), v9, 0.0, a2);
    OZChannel::setValue((this + 24200), v9, 0.0, a2);
    OZChannel::setValue((this + 24456), v9, 0.0, a2);
    v7 = 0.0;
  }

  else
  {
    v6 = DropZoneTypeValue == 0;
    v7 = 0.0;
    if (DropZoneTypeValue)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    v9 = MEMORY[0x277CC08F0];
    OZChannel::setValue((this + 23688), MEMORY[0x277CC08F0], v8, a2);
    OZChannel::setValue((this + 23944), v9, v8, a2);
    if (v5 == 3)
    {
      v10 = 2;
    }

    else
    {
      v10 = v6;
    }

    v11 = v10;
    if (v5 == 3)
    {
      v7 = 1.0;
    }

    OZChannel::setValue((this + 24200), v9, v10, a2);
    OZChannel::setValue((this + 24456), v9, v7, a2);
  }

  OZChannel::setValue((this + 24712), v9, v11, a2);
  OZChannel::setValue((this + 24968), v9, v7, a2);
  DropTypeIndexForDropZoneTypeValue = OZImageElement::getDropTypeIndexForDropZoneTypeValue(this, (this + 25224), v5);
  OZChannel::setValue((this + 25224), v9, DropTypeIndexForDropZoneTypeValue, a2);
  v13 = v5 == 1;
  if (v5 == 2)
  {
    v13 = 2;
  }

  return OZChannel::setValue((this + 25480), v9, v13, a2);
}

uint64_t OZImageElement::getDropTypeIndexForDropZoneTypeValue(OZImageElement *this, const OZChannelEnum *a2, unsigned int a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  if ((this + 23688) == a2 || (this + 23944) == a2)
  {
    return a3 == 0;
  }

  if ((this + 24200) == a2 || (this + 24712) == a2)
  {
    if (a3 == 3)
    {
      return 2;
    }

    else
    {
      return a3 == 0;
    }
  }

  if ((this + 24456) == a2 || (this + 24968) == a2)
  {
    return a3 == 3;
  }

  if ((this + 25224) == a2)
  {
    if (a3 < 3)
    {
      return a3 + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((this + 25480) != a2)
    {
      return 0;
    }

    if (a3 == 2)
    {
      return 2;
    }

    else
    {
      return a3 == 1;
    }
  }
}

CGColorSpace **OZImageElement::resetFitMode(OZImageElement *this)
{
  Footage = OZImageElement::getFootage(this);
  if (Footage)
  {
    (*(*Footage + 1368))(Footage);
  }

  else
  {
    v3 = 1.0;
  }

  return OZImageElement::resetFitMode(this, v3);
}

CGColorSpace **OZImageElement::resetFitModeToSceneDims(CGColorSpace **this, double a2, double a3)
{
  v5 = this;
  v6 = this + 3584;
  if (*(this + 30249) == 1)
  {
    if ((this[3781] & 1) == 0)
    {
      return this;
    }
  }

  else
  {
    this = OZChannel::getValueAsInt((this + 2821), MEMORY[0x277CC08F0], 0.0);
    *(v6 + 1576) = this != 0;
    *(v6 + 1577) = 1;
    if (!this)
    {
      return this;
    }
  }

  v7 = (*(*v5 + 272))(v5);
  if (v7)
  {
    OZSceneSettings::OZSceneSettings(v11, (v7 + 336));
    v8 = *&v11[6];
    v10 = vcvtq_f64_f32(vcvt_f32_s32(v11[1]));
    v11[0] = &unk_287283398;
    PCString::~PCString(&v13);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v12);
  }

  else
  {
    v10 = xmmword_260850050;
    v8 = 1.0;
  }

  if ((OZImageElement::isInputSource(v5) & 1) != 0 || OZChannel::getValueAsInt((v5 + 22976), MEMORY[0x277CC08F0], 0.0) || OZChannel::getValueAsInt((v5 + 29840), MEMORY[0x277CC08F0], 0.0))
  {
    v9 = MEMORY[0x277CC08F0];
    OZChannel::setValue((v5 + 29232), MEMORY[0x277CC08F0], v8 * v10.f64[0], 1);
    OZChannel2D::setValue((v5 + 26144), v9, 1.0 / v8, 1.0, 1);
    if (OZChannel::getValueAsInt((v5 + 29840), v9, 0.0))
    {
      OZChannel::setValue((v5 + 29384), MEMORY[0x277CC08F0], v10.f64[1], 1);
    }

    return OZImageElement::resetFitMode(v5);
  }

  else
  {
    this = OZImageElement::isBackgroundDropZone(v5);
    if (this)
    {
      this = OZChannel::getValueAsInt((v5 + 23280), MEMORY[0x277CC08F0], 0.0);
      if (a3 != a2)
      {
        if (this)
        {
          return OZImageElement::resetFitMode(v5, a3 / a2);
        }
      }
    }
  }

  return this;
}

void OZImageElement::getIconName(OZImageElement *this@<X0>, PCURL *a2@<X8>)
{
  Footage = OZImageElement::getFootage(this);
  if (!Footage)
  {
    goto LABEL_3;
  }

  v4 = Footage;
  if ((*(*Footage + 1432))(Footage))
  {
    goto LABEL_3;
  }

  v5 = v4[1009];
  if ((v5[155] & 1) != 0 || ((v6 = *v5) == 0 || (*(v6 + 336))()) && (*(*v4 + 1376))(v4) >= 2)
  {

    PCURL::PCURL(a2, @"M_LayersList_ObjectIconColor-ImageSequence");
  }

  else
  {
    v7 = (*(*v4 + 1232))(&v11, v4);
    Instance = PMMediaManager::getInstance(v7);
    Reader = PMMediaManager::findReader(Instance, &v11);
    if (!Reader)
    {
      PCURL::~PCURL(&v11);
LABEL_3:
      PCURL::PCURL(a2, @"M_LayersList_ObjectIconColor-MissingObject");
      return;
    }

    if ((*(Reader + 232))())
    {
      v10 = @"M_LayersList_ObjectIconColor-Movie";
    }

    else
    {
      v10 = @"M_LayersList_ObjectIconColor-Image";
    }

    PCURL::PCURL(a2, v10);
    PCURL::~PCURL(&v11);
  }
}

void sub_2600CEDE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

void OZImageElement::getIconNameBW(OZImageElement *this@<X0>, PCURL *a2@<X8>)
{
  Footage = OZImageElement::getFootage(this);
  if (!Footage)
  {
    goto LABEL_3;
  }

  v4 = Footage;
  if ((*(*Footage + 1432))(Footage))
  {
    goto LABEL_3;
  }

  v5 = v4[1009];
  if ((v5[155] & 1) != 0 || ((v6 = *v5) == 0 || (*(v6 + 336))()) && (*(*v4 + 1376))(v4) >= 2)
  {

    PCURL::PCURL(a2, @"M_LayersList_ObjectIconGrey-ImageSequence");
  }

  else
  {
    v7 = (*(*v4 + 1232))(&v11, v4);
    Instance = PMMediaManager::getInstance(v7);
    Reader = PMMediaManager::findReader(Instance, &v11);
    if (!Reader)
    {
      PCURL::~PCURL(&v11);
LABEL_3:
      PCURL::PCURL(a2, @"M_LayersList_ObjectIconGrey-MissingObject");
      return;
    }

    if ((*(Reader + 232))())
    {
      v10 = @"M_LayersList_ObjectIconGrey-Movie";
    }

    else
    {
      v10 = @"M_LayersList_ObjectIconGrey-Image";
    }

    PCURL::PCURL(a2, v10);
    PCURL::~PCURL(&v11);
  }
}

void sub_2600CEF7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

uint64_t OZImageElement::getIconID(OZImageElement *this)
{
  Footage = OZImageElement::getFootage(this);
  if (!Footage)
  {
    return 18;
  }

  v2 = Footage;
  if ((*(*Footage + 1432))(Footage))
  {
    return 18;
  }

  v4 = v2[1009];
  if (v4[155])
  {
    return 5;
  }

  v5 = *v4;
  if ((!v5 || (*(v5 + 336))()) && (*(*v2 + 1376))(v2) > 1)
  {
    return 5;
  }

  v6 = (*(*v2 + 1232))(&v10, v2);
  Instance = PMMediaManager::getInstance(v6);
  Reader = PMMediaManager::findReader(Instance, &v10);
  if (!Reader)
  {
    PCURL::~PCURL(&v10);
    return 18;
  }

  if ((*(Reader + 232))())
  {
    v3 = 4;
  }

  else
  {
    v3 = 6;
  }

  PCURL::~PCURL(&v10);
  return v3;
}

void sub_2600CF0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

void *OZImageElement::getInput(OZImageElement *this)
{
  result = OZImageElement::getFootage(this);
  if (!result)
  {

    return OZSceneNode::getSuccessor(this);
  }

  return result;
}

uint64_t OZImageElement::canCrop(OZImageElement *this)
{
  if (OZElement::canCrop(this))
  {
    v2 = 1;
  }

  else if (*(this + 30249) == 1)
  {
    v2 = *(this + 30248);
  }

  else
  {
    v2 = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0) != 0;
    *(this + 30248) = v2;
    *(this + 30249) = 1;
  }

  return v2 & 1;
}

double OZImageElement::getPixelAspectRatio(OZImageElement *this)
{
  v2 = (*(*this + 2296))(this);
  {
    if (*(this + 30249) == 1)
    {
      result = 1.0;
      if ((*(this + 30248) & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      ValueAsInt = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0);
      *(this + 30248) = ValueAsInt != 0;
      *(this + 30249) = 1;
      if (!ValueAsInt)
      {
        return 1.0;
      }
    }

    return *(*(this + 121) + 384);
  }

  v4 = *(*v3 + 1368);

  v4();
  return result;
}