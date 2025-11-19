void sub_26014AE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, PCString a17)
{
  std::pair<PCString,std::vector<PCString>>::~pair(&a9);
  PCSharedMutex::unlock(v17);
  a9 = &a13;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a9);
  PCString::~PCString(&a17);
  _Unwind_Resume(a1);
}

uint64_t OZChannelEnumWithList::configureWithState(OZChannelBase *this, const __CFData *a2)
{
  v4 = (*(this->var0 + 31))(this);
  if (v4)
  {
  }

  else
  {
    v5 = 0;
  }

  OZChannelBase::configureWithState(v5, a2);
  ValueAsInt = OZChannel::getValueAsInt(v5, MEMORY[0x277CC08F0], 0.0);
  var7 = this[1].var7;
  var8 = this[1].var8;
  while (var7 != var8)
  {
    if (*var7 == ValueAsInt)
    {
      if (var7 != var8)
      {
        (*(this->var0 + 89))(this, MEMORY[0x277CC08F0], 0, ValueAsInt);
        OZChannelBase::setFlags(this, v5->var7);
        goto LABEL_11;
      }

      break;
    }

    ++var7;
  }

  if (!v5)
  {
    return 1;
  }

LABEL_11:
  (*(v5->var0 + 1))(v5);
  return 1;
}

void OZChannelEnumWithList::addString(PCString *this, const PCString *a2, int a3)
{
  v18 = a3;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  StringTablesMapLock = OZChannelEnum::getStringTablesMapLock(this);
  PCSharedMutex::lock_shared(StringTablesMapLock);
  StringTablesMap = OZChannelEnum::getStringTablesMap(this);
  var0 = this[19].var0;
  if (var0 != (StringTablesMap + 8) && &v15 != &var0[1].info)
  {
    std::vector<PCString>::__assign_with_size[abi:ne200100]<PCString*,PCString*>(&v15, var0[1].info, var0[1].data, &var0[1].data[-var0[1].info] >> 3);
  }

  PCSharedMutex::unlock_shared(StringTablesMapLock);
  if (!PCString::empty(this + 20))
  {
    PCString::append(this + 20, ";");
  }

  PCString::append(this + 20, a2);
  std::vector<PCString>::push_back[abi:ne200100](&v15, a2);
  v9 = OZChannelEnum::getStringTablesMapLock(this);
  PCSharedMutex::lock(v9);
  v10 = OZChannelEnum::getStringTablesMap(this);
  this[19].var0 = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::find<PCString>(v10, this + 20);
  if (this[19].var0 == (OZChannelEnum::getStringTablesMap(this) + 8))
  {
    v11 = OZChannelEnum::getStringTablesMap(this);
    v12 = OZChannelEnum::getStringTablesMap(this);
    std::pair<PCString,std::vector<PCString>>::pair[abi:ne200100]<PCString,std::vector<PCString>&,0>(&v13, this + 20, &v15);
    this[19].var0 = std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__emplace_hint_unique_key_args<PCString,std::pair<PCString,std::vector<PCString>>>(v11, v12 + 1, &v13);
    v19 = &v14;
    std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v19);
    PCString::~PCString(&v13);
  }

  PCSharedMutex::unlock(v9);
  OZChannel::setSliderMax(this, (((v16 - v15) >> 3) - 1));
  std::vector<int>::push_back[abi:ne200100](&this[21].var0, &v18);
  ++LODWORD(this[27].var0);
  v13.var0 = &v15;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_26014B228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::pair<PCString,std::vector<PCString>>::~pair(&a10);
  PCSharedMutex::unlock(v14);
  a10.var0 = &a14;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void OZChannelEnumWithList_Factory::OZChannelEnumWithList_Factory(OZChannelEnumWithList_Factory *this)
{
  v3 = xmmword_260848500;
  v4 = xmmword_260850700;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_28728FF10;
  *(this + 16) = &unk_28728FFE0;
}

void OZProjectPanelState::OZProjectPanelState(OZProjectPanelState *this)
{
  *this = &unk_287290038;
  v2 = OZPreferenceManager::Instance(this);
  *(this + 8) = OZPreferenceManager::getLayersPreviewColumn(v2);
  *(this + 9) = OZPreferenceManager::getLayersOpacityColumn(v2);
  *(this + 10) = OZPreferenceManager::getLayersBlendColumn(v2);
  *(this + 11) = OZPreferenceManager::getLayersDisplayMasks(v2);
  *(this + 12) = OZPreferenceManager::getLayersDisplayBehaviors(v2);
  *(this + 13) = OZPreferenceManager::getLayersDisplayEffects(v2);
  *(this + 2) = OZPreferenceManager::getLayersVerticalZoom(v2);
  *(this + 24) = OZPreferenceManager::getMediaPreviewColumn(v2);
  *(this + 25) = OZPreferenceManager::getMediaTypeColumn(v2);
  *(this + 26) = OZPreferenceManager::getMediaDurationColumn(v2);
  *(this + 27) = OZPreferenceManager::getMediaInUseColumn(v2);
  *(this + 28) = OZPreferenceManager::getMediaFrameSizeColumn(v2);
  *(this + 29) = OZPreferenceManager::getMediaCompressorColumn(v2);
  *(this + 30) = OZPreferenceManager::getMediaDepthColumn(v2);
  *(this + 31) = OZPreferenceManager::getMediaFrameRateColumn(v2);
  *(this + 32) = OZPreferenceManager::getMediaDataRateColumn(v2);
  *(this + 33) = OZPreferenceManager::getMediaAudioRateColumn(v2);
  *(this + 34) = OZPreferenceManager::getMediaAudioFormatColumn(v2);
  *(this + 35) = OZPreferenceManager::getMediaFileSizeColumn(v2);
  *(this + 36) = OZPreferenceManager::getMediaFileCreatedColumn(v2);
  *(this + 37) = OZPreferenceManager::getMediaFileModifiedColumn(v2);
  *(this + 5) = OZPreferenceManager::getMediaVerticalZoom(v2);
}

double OZProjectPanelState::OZProjectPanelState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287290038;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v2 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v2;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t OZProjectPanelState::writeHeader(OZProjectPanelState *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZProjectPanelStateScope);
  (*(*a2 + 16))(a2, 80);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZProjectPanelState::writeBody(OZProjectPanelState *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZProjectPanelStateScope);
  v4 = *(this + 8);
  (*(*a2 + 16))(a2, 10);
  (*(*a2 + 48))(a2, v4);
  (*(*a2 + 24))(a2);
  v5 = *(this + 9);
  (*(*a2 + 16))(a2, 11);
  (*(*a2 + 48))(a2, v5);
  (*(*a2 + 24))(a2);
  v6 = *(this + 10);
  (*(*a2 + 16))(a2, 12);
  (*(*a2 + 48))(a2, v6);
  (*(*a2 + 24))(a2);
  v7 = *(this + 11);
  (*(*a2 + 16))(a2, 1);
  (*(*a2 + 48))(a2, v7);
  (*(*a2 + 24))(a2);
  v8 = *(this + 12);
  (*(*a2 + 16))(a2, 2);
  (*(*a2 + 48))(a2, v8);
  (*(*a2 + 24))(a2);
  v9 = *(this + 13);
  (*(*a2 + 16))(a2, 3);
  (*(*a2 + 48))(a2, v9);
  (*(*a2 + 24))(a2);
  v10 = *(this + 2);
  (*(*a2 + 16))(a2, 4);
  (*(*a2 + 88))(a2, v10);
  (*(*a2 + 24))(a2);
  v11 = *(this + 24);
  (*(*a2 + 16))(a2, 30);
  (*(*a2 + 48))(a2, v11);
  (*(*a2 + 24))(a2);
  v12 = *(this + 25);
  (*(*a2 + 16))(a2, 31);
  (*(*a2 + 48))(a2, v12);
  (*(*a2 + 24))(a2);
  v13 = *(this + 26);
  (*(*a2 + 16))(a2, 32);
  (*(*a2 + 48))(a2, v13);
  (*(*a2 + 24))(a2);
  v14 = *(this + 27);
  (*(*a2 + 16))(a2, 43);
  (*(*a2 + 48))(a2, v14);
  (*(*a2 + 24))(a2);
  v15 = *(this + 28);
  (*(*a2 + 16))(a2, 33);
  (*(*a2 + 48))(a2, v15);
  (*(*a2 + 24))(a2);
  v16 = *(this + 29);
  (*(*a2 + 16))(a2, 34);
  (*(*a2 + 48))(a2, v16);
  (*(*a2 + 24))(a2);
  v17 = *(this + 30);
  (*(*a2 + 16))(a2, 35);
  (*(*a2 + 48))(a2, v17);
  (*(*a2 + 24))(a2);
  v18 = *(this + 31);
  (*(*a2 + 16))(a2, 36);
  (*(*a2 + 48))(a2, v18);
  (*(*a2 + 24))(a2);
  v19 = *(this + 32);
  (*(*a2 + 16))(a2, 37);
  (*(*a2 + 48))(a2, v19);
  (*(*a2 + 24))(a2);
  v20 = *(this + 33);
  (*(*a2 + 16))(a2, 38);
  (*(*a2 + 48))(a2, v20);
  (*(*a2 + 24))(a2);
  v21 = *(this + 34);
  (*(*a2 + 16))(a2, 39);
  (*(*a2 + 48))(a2, v21);
  (*(*a2 + 24))(a2);
  v22 = *(this + 35);
  (*(*a2 + 16))(a2, 40);
  (*(*a2 + 48))(a2, v22);
  (*(*a2 + 24))(a2);
  v23 = *(this + 36);
  (*(*a2 + 16))(a2, 41);
  (*(*a2 + 48))(a2, v23);
  (*(*a2 + 24))(a2);
  v24 = *(this + 37);
  (*(*a2 + 16))(a2, 42);
  (*(*a2 + 48))(a2, v24);
  (*(*a2 + 24))(a2);
  v25 = *(this + 5);
  (*(*a2 + 16))(a2, 5);
  (*(*a2 + 88))(a2, v25);
  (*(*a2 + 24))(a2);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZProjectPanelState::parseElement(OZProjectPanelState *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  switch(*(a3 + 2))
  {
    case 1:
      (*(*a3 + 72))(a3, this + 11);
      break;
    case 2:
      (*(*a3 + 72))(a3, this + 12);
      break;
    case 3:
      (*(*a3 + 72))(a3, this + 13);
      break;
    case 4:
      (*(*a3 + 64))(a3, this + 16);
      break;
    case 5:
      (*(*a3 + 64))(a3, this + 40);
      break;
    case 0xA:
      (*(*a3 + 72))(a3, this + 8);
      break;
    case 0xB:
      (*(*a3 + 72))(a3, this + 9);
      break;
    case 0xC:
      (*(*a3 + 72))(a3, this + 10);
      break;
    case 0x1E:
      (*(*a3 + 72))(a3, this + 24);
      break;
    case 0x1F:
      (*(*a3 + 72))(a3, this + 25);
      break;
    case 0x20:
      (*(*a3 + 72))(a3, this + 26);
      break;
    case 0x21:
      (*(*a3 + 72))(a3, this + 28);
      break;
    case 0x22:
      (*(*a3 + 72))(a3, this + 29);
      break;
    case 0x23:
      (*(*a3 + 72))(a3, this + 30);
      break;
    case 0x24:
      (*(*a3 + 72))(a3, this + 31);
      break;
    case 0x25:
      (*(*a3 + 72))(a3, this + 32);
      break;
    case 0x26:
      (*(*a3 + 72))(a3, this + 33);
      break;
    case 0x27:
      (*(*a3 + 72))(a3, this + 34);
      break;
    case 0x28:
      (*(*a3 + 72))(a3, this + 35);
      break;
    case 0x29:
      (*(*a3 + 72))(a3, this + 36);
      break;
    case 0x2A:
      (*(*a3 + 72))(a3, this + 37);
      break;
    case 0x2B:
      (*(*a3 + 72))(a3, this + 27);
      break;
    default:
      return 0;
  }

  return 0;
}

void OZChanSceneNodeRef::OZChanSceneNodeRef(OZChanSceneNodeRef *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChanSceneNodeRef_Factory::getInstance(this);
  OZChanObjectManipRef::OZChanObjectManipRef(this, Instance, a2, a3, a4, a5);
  *this = &unk_2872900A8;
  *(this + 2) = &unk_287290428;
  *(this + 155) = 0;
}

uint64_t OZChanSceneNodeRef_Factory::getInstance(OZChanSceneNodeRef_Factory *this)
{
  if (atomic_load_explicit(&OZChanSceneNodeRef_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChanSceneNodeRef_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanSceneNodeRef_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChanSceneNodeRef_Factory::_instance;
}

void OZChanSceneNodeRef::OZChanSceneNodeRef(OZChanSceneNodeRef *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChanObjectManipRef::OZChanObjectManipRef(this, a2, a3, a4, a5, a6);
  *v6 = &unk_2872900A8;
  *(v6 + 16) = &unk_287290428;
  *(v6 + 155) = 0;
}

void OZChanSceneNodeRef::OZChanSceneNodeRef(OZChanSceneNodeRef *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChanObjectManipRef::OZChanObjectManipRef(this, a2, a3, a4);
  *v4 = &unk_2872900A8;
  *(v4 + 16) = &unk_287290428;
  *(v4 + 155) = 0;
}

void OZChanSceneNodeRef::OZChanSceneNodeRef(OZChanSceneNodeRef *this, const OZChanSceneNodeRef *a2, OZChannelFolder *a3)
{
  OZChanObjectManipRef::OZChanObjectManipRef(this, a2, a3);
  *v4 = &unk_2872900A8;
  *(v4 + 16) = &unk_287290428;
  *(v4 + 155) = *(a2 + 155);
  OZChanSceneNodeRef::setDependency(v4);
}

uint64_t OZChanSceneNodeRef::setDependency(OZChannelBase *this)
{
  result = OZChannelBase::getObjectManipulator(this);
  if (result)
  {
    v3 = result;
    v4 = (*(*result + 264))(result);
    v5 = (*(*v3 + 256))(v3);
    result = (*(*v5 + 56))(v5);
    if (v4)
    {
      v6 = result;
      result = OZChanObjectManipRef::getObjectID(this);
      if (result)
      {
        ObjectID = OZChanObjectManipRef::getObjectID(this);

        return OZScene::addNodeDependency(v4, ObjectID, v6);
      }
    }
  }

  return result;
}

void non-virtual thunk toOZChanSceneNodeRef::~OZChanSceneNodeRef(OZChanSceneNodeRef *this)
{
  OZChanObjectManipRef::~OZChanObjectManipRef((this - 16));
}

{
  OZChanObjectManipRef::~OZChanObjectManipRef((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChanSceneNodeRef::~OZChanSceneNodeRef(OZChanSceneNodeRef *this)
{
  OZChanObjectManipRef::~OZChanObjectManipRef(this);

  JUMPOUT(0x2666E9F00);
}

const void *OZChanSceneNodeRef::removeDependency(OZChannelBase *this)
{
  result = OZChannelBase::getObjectManipulator(this);
  if (result)
  {
    v3 = result;
    v4 = (*(*result + 264))(result);
    v5 = (*(*v3 + 256))(v3);
    result = (*(*v5 + 56))(v5);
    if (v4)
    {
      v6 = result;
      result = OZChanObjectManipRef::getObjectID(this);
      if (result)
      {
        ObjectID = OZChanObjectManipRef::getObjectID(this);

        return OZScene::removeNodeDependency(v4, ObjectID, v6);
      }
    }
  }

  return result;
}

uint64_t OZChanSceneNodeRef::copy(OZChanSceneNodeRef *this, const OZChannelBase *a2, char a3)
{
  OZChanSceneNodeRef::removeDependency(this);
  if (a2)
  {
    if (v6)
    {
      *(this + 155) = *(v6 + 155);
    }
  }

  OZChannel::copy(this, a2, a3);

  return OZChanSceneNodeRef::setDependency(this);
}

uint64_t OZChanSceneNodeRef::assign(OZChanSceneNodeRef *this, const OZChannelBase *a2)
{
  OZChanSceneNodeRef::removeDependency(this);
  if (a2)
  {
    if (v4)
    {
      *(this + 155) = *(v4 + 155);
    }
  }

  OZChannel::assign(this, a2);

  return OZChanSceneNodeRef::setDependency(this);
}

uint64_t OZChanSceneNodeRef::setValue(OZChannelBase *this, const CMTime *a2, double a3, int a4)
{
  OZChanSceneNodeRef::removeDependency(this);
  OZChannel::setValue(this, MEMORY[0x277CC08F0], a3, a4);

  return OZChanSceneNodeRef::setDependency(this);
}

uint64_t OZChanSceneNodeRef::operator=(uint64_t a1, uint64_t a2)
{
  OZChanSceneNodeRef::removeDependency(a1);
  *(a1 + 155) = *(a2 + 155);
  OZChannelBase::operator=(a1, a2);
  OZChanSceneNodeRef::setDependency(a1);
  return a1;
}

void *OZChanSceneNodeRef::getNode(OZChannelBase *this)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (!ObjectManipulator)
  {
    return 0;
  }

  v3 = (*(*ObjectManipulator + 264))(ObjectManipulator);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  ObjectID = OZChanObjectManipRef::getObjectID(this);

  return OZScene::getNode(v4, ObjectID);
}

uint64_t OZChanSceneNodeRef::setNode(OZChanSceneNodeRef *this, OZSceneNode *a2)
{
  if (a2)
  {
    a2 = *(a2 + 20);
  }

  return (*(*this + 864))(this, a2, 0);
}

uint64_t OZChanSceneNodeRef::canReferenceObject(OZChannelBase *this, const OZObjectManipulator *a2)
{
  if (!OZChanObjectManipRef::canReferenceObject(this, a2))
  {
    return 0;
  }

  v4 = (*(*a2 + 232))(a2);
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  v6 = (*(*ObjectManipulator + 232))(ObjectManipulator);
  v7 = (*(*v6 + 272))();
  if (v4 == v6 && BYTE4(this[1].var5) != 1)
  {
    return 0;
  }

  v8 = 1;
  if ((BYTE3(this[1].var5) & 1) == 0 && v7)
  {
    v16[0] = 0;
    v16[1] = 0;
    v15 = v16;
    v9 = v6[20];
    OZScene::getReferencedNodes(v7, *(v4 + 80), &v15);
    v10 = v15;
    if (v15 != v16)
    {
      while (*(v10 + 7) != v9)
      {
        v11 = v10[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v10[2];
            v13 = *v12 == v10;
            v10 = v12;
          }

          while (!v13);
        }

        v10 = v12;
        if (v12 == v16)
        {
          goto LABEL_14;
        }
      }

      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v15, v16[0]);
      return 0;
    }

LABEL_14:
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v15, v16[0]);
    return 1;
  }

  return v8;
}

uint64_t OZChanSceneNodeRef::parseBegin(OZChannelBase *this, PCSerializerReadStream *a2)
{
  OZChanSceneNodeRef::removeDependency(this);

  return OZChannel::parseBegin(this, a2);
}

uint64_t non-virtual thunk toOZChanSceneNodeRef::parseBegin(OZChanSceneNodeRef *this, PCSerializerReadStream *a2)
{
  v3 = (this - 16);
  OZChanSceneNodeRef::removeDependency((this - 16));

  return OZChannel::parseBegin(v3, a2);
}

uint64_t OZChanSceneNodeRef::parseEnd(OZChannel *this, PCSerializerReadStream *a2)
{
  OZChannel::parseEnd(this, a2);
  OZChanSceneNodeRef::setDependency(this);
  return 1;
}

uint64_t non-virtual thunk toOZChanSceneNodeRef::parseEnd(OZChanSceneNodeRef *this, PCSerializerReadStream *a2)
{
  v2 = (this - 16);
  OZChannel::parseEnd((this - 16), a2);
  OZChanSceneNodeRef::setDependency(v2);
  return 1;
}

uint64_t OZChanSceneNodeRef::setObjectRef(OZChanSceneNodeRef *this, unsigned int *a2)
{
  if (a2)
  {
    a2 = a2[20];
  }

  return (*(*this + 864))(this, a2, 0);
}

void OZChanSceneNodeRef_Factory::OZChanSceneNodeRef_Factory(OZChanSceneNodeRef_Factory *this)
{
  v3 = xmmword_2608512C0;
  v4 = xmmword_2608508D0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287290498;
  *(this + 16) = &unk_287290568;
}

uint64_t OZChannelStringEnum_Factory::getInstance(OZChannelStringEnum_Factory *this)
{
  if (atomic_load_explicit(&OZChannelStringEnum_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelStringEnum_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelStringEnum_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelStringEnum_Factory::_instance;
}

uint64_t OZChannelStringEnum::initSaveStringsFromChannelStrings(PCString **this)
{
  result = OZChannelEnum::getNumberOfStrings(this);
  if (result)
  {
    v3 = 0;
    do
    {
      String = OZChannelEnum::getString(this, v3);
      PCString::PCString(&v8, String);
      PCString::PCString(&v7, &v8);
      v5 = this[33];
      if (v5 >= this[34])
      {
        v6 = std::vector<PCString>::__emplace_back_slow_path<PCString const&>((this + 32), &v7);
      }

      else
      {
        PCString::PCString(this[33], &v7);
        v6 = &v5[1];
        this[33] = v5 + 1;
      }

      this[33] = v6;
      PCString::~PCString(&v7);
      PCString::~PCString(&v8);
      ++v3;
      result = OZChannelEnum::getNumberOfStrings(this);
    }

    while (v3 < result);
  }

  return result;
}

void sub_26014DA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

void OZChannelStringEnum::OZChannelStringEnum(OZChannelStringEnum *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelEnum::OZChannelEnum(this, a2, a3, a4, 0, 0);
  v5->var0 = &unk_2872905C0;
  v5[2].var0 = &unk_287290930;
  v5[33].var0 = 0;
  v5[34].var0 = 0;
  v5[32].var0 = 0;
  PCSharedCount::PCSharedCount(v5 + 35);
  *(this + 1) = OZChannelStringEnum_Factory::getInstance(v6);
  OZChannelStringEnum::initSaveStringsFromChannelStrings(this);
}

void sub_26014DAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PCString *a10)
{
  a10 = v10 + 32;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a10);
  OZChannelEnum::~OZChannelEnum(v10);
  _Unwind_Resume(a1);
}

void OZChannelStringEnum::OZChannelStringEnum(OZChannelStringEnum *this, const PCString *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  Instance = OZChannelStringEnum_Factory::getInstance(this);
  OZChannelEnum::OZChannelEnum(this, a2, Instance, a3, a4, a5, a6, 0, 0);
  *this = &unk_2872905C0;
  *(this + 2) = &unk_287290930;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 0;
  PCSharedCount::PCSharedCount(this + 35);
  *(this + 1) = OZChannelStringEnum_Factory::getInstance(v13);
  OZChannelStringEnum::initSaveStringsFromChannelStrings(this);
}

void sub_26014DBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PCString *a10)
{
  a10 = v10 + 32;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a10);
  OZChannelEnum::~OZChannelEnum(v10);
  _Unwind_Resume(a1);
}

void OZChannelStringEnum::OZChannelStringEnum(OZChannelStringEnum *this, unsigned int a2, const PCString *a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7)
{
  OZChannelEnum::OZChannelEnum(this, a2, a3, a4, a5, a6, a7, 0, 0);
  v8->var0 = &unk_2872905C0;
  v8[2].var0 = &unk_287290930;
  v8[33].var0 = 0;
  v8[34].var0 = 0;
  v8[32].var0 = 0;
  PCSharedCount::PCSharedCount(v8 + 35);
  *(this + 1) = OZChannelStringEnum_Factory::getInstance(v9);
  OZChannelStringEnum::initSaveStringsFromChannelStrings(this);
}

void sub_26014DCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PCString *a10)
{
  a10 = v10 + 32;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a10);
  OZChannelEnum::~OZChannelEnum(v10);
  _Unwind_Resume(a1);
}

void OZChannelStringEnum::OZChannelStringEnum(OZChannelStringEnum *this, PCString **a2, OZChannelFolder *a3)
{
  OZChannelEnum::OZChannelEnum(this, a2, a3);
  v5->var0 = &unk_2872905C0;
  v5[2].var0 = &unk_287290930;
  v5[33].var0 = 0;
  v5[34].var0 = 0;
  v6 = &v5[32];
  v5[32].var0 = 0;
  PCSharedCount::PCSharedCount(v5 + 35);
  if (this != a2)
  {
    std::vector<PCString>::__assign_with_size[abi:ne200100]<PCString*,PCString*>(v6, a2[32], a2[33], a2[33] - a2[32]);
  }
}

void sub_26014DDA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCString::~PCString(v2 + 35);
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](va);
  OZChannelEnum::~OZChannelEnum(v2);
  _Unwind_Resume(a1);
}

uint64_t OZChannelStringEnum::setStrings(PCString *this, PCString *a2, int a3)
{
  OZChannelEnum::setStrings(this, a2, a3);
  var0 = this[32].var0;
    ;
  }

  this[33].var0 = var0;

  return OZChannelStringEnum::initSaveStringsFromChannelStrings(this);
}

void OZChannelStringEnum::getSelectedSaveString(OZChannel *this@<X0>, _BYTE *a2@<X8>)
{
  ValueAsUint = OZChannel::getValueAsUint(this, MEMORY[0x277CC08F0], 0.0);
  var13 = this[1].var13;
  if (ValueAsUint >= ((this[1].var14 - var13) >> 3))
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }

  else
  {
    CStr = PCString::createCStr(var13 + ValueAsUint);
    std::string::basic_string[abi:ne200100]<0>(a2, CStr);

    free(CStr);
  }
}

OZFactories *OZChannelStringEnum::markFactoriesForSerialization(OZChannelBase *this, PCSerializerWriteStream *a2, int a3)
{
  result = OZChannelBase::markFactoriesForSerialization(this, a2);
  if (a3)
  {
    Instance = OZFactories::getInstance(result);
    v7 = xmmword_260851CB0;
    Factory = OZFactories::findFactory(Instance, &v7);
    return OZFactory::setNeedsSaving(Factory, 1);
  }

  return result;
}

void OZChannelStringEnum::writeBody(OZChannelBase *this, PCSerializerWriteStream *a2, int a3)
{
  if (!OZChannelBase::testFlag(this, 128) || ((*(*a2 + 232))(a2) & 1) == 0)
  {
    OZChannelBase::writeBody(this, a2, a3);
    PCSerializerWriteStream::pushScope(a2, &OZChannelStringEnumScope);
    v6 = *(this[1].var0 + 1);
    (*(*v6 + 16))(v6, a2, 0);
    (*(*v6 + 24))(v6, a2, 0, 1, 1);
    (*(*a2 + 24))(a2);
    OZChannelStringEnum::getSelectedSaveString(this, __p);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    PCString::PCString(&v10, v7);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    (*(*a2 + 16))(a2, 170);
    (*(*a2 + 200))(a2, 1, &v10);
    (*(*a2 + 24))(a2);
    PCSerializerWriteStream::popScope(a2);
    PCString::~PCString(&v10);
  }
}

void sub_26014E1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, PCString a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t OZChannelStringEnum::indexOfSaveString(OZChannelStringEnum *this, PCString *a2)
{
  NumberOfStrings = OZChannelEnum::getNumberOfStrings(this);
  if (NumberOfStrings < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = NumberOfStrings;
  while (1)
  {
    v7 = *(this + 32);
    if (v5 >= (*(this + 33) - v7) >> 3)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    PCString::PCString(&v10, (v7 + 8 * v5));
    v8 = PCString::compare(&v10, a2);
    PCString::~PCString(&v10);
    if (!v8)
    {
      break;
    }

    if (++v5 == v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t OZChannelStringEnum::parseBegin(OZChannel *this, PCSerializerReadStream *a2)
{
  OZChannel::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelStringEnumScope);
  return 1;
}

uint64_t non-virtual thunk toOZChannelStringEnum::parseBegin(OZChannelStringEnum *this, PCSerializerReadStream *a2)
{
  OZChannel::parseBegin((this - 16), a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelStringEnumScope);
  return 1;
}

uint64_t OZChannelStringEnum::parseElement(OZChannelStringEnum *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZChannel::parseElement(this, a2, a3);
  if (*(a3 + 2) == 170)
  {
    PCSharedCount::PCSharedCount(&v7);
    if (PCSerializerReadStream::getAttributeAsString(a2, a3, 1, &v7))
    {
      PCString::set(this + 35, &v7);
    }

    PCString::~PCString(&v7);
  }

  return 1;
}

uint64_t OZChannelStringEnum::parseEnd(OZChannel *this, PCSerializerReadStream *a2)
{
  v3 = OZChannel::parseEnd(this, a2);
  OZChannelStringEnum::setValueFromParsedSaveString(this);
  return v3;
}

void OZChannelStringEnum::setValueFromParsedSaveString(OZChannelStringEnum *this)
{
  if (!PCString::empty(this + 35))
  {
    ValueAsUint = OZChannel::getValueAsUint(this, MEMORY[0x277CC08F0], 0.0);
    PCSharedCount::PCSharedCount(&v5);
    v3 = *(this + 32);
    if (ValueAsUint >= ((*(this + 33) - v3) >> 3))
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    PCString::set(&v5, (v3 + 8 * ValueAsUint));
    if (PCString::compare(&v5, this + 35))
    {
      Tag = OZChannelStringEnum::indexOfSaveString(this, this + 35);
      if ((Tag & 0x80000000) == 0)
      {
        if (*(this + 22) != *(this + 21))
        {
          Tag = OZChannelEnum::getTag(this, Tag);
        }

        (*(*this + 712))(this, MEMORY[0x277CC08F0], 0, Tag);
      }
    }

    PCString::~PCString(&v5);
  }
}

uint64_t non-virtual thunk toOZChannelStringEnum::parseEnd(OZChannelStringEnum *this, PCSerializerReadStream *a2)
{
  v2 = (this - 16);
  v3 = OZChannel::parseEnd((this - 16), a2);
  OZChannelStringEnum::setValueFromParsedSaveString(v2);
  return v3;
}

void non-virtual thunk toOZChannelStringEnum::~OZChannelStringEnum(PCString *this)
{
  v2 = this - 2;
  this[-2].var0 = &unk_2872905C0;
  this->var0 = &unk_287290930;
  PCString::~PCString(this + 33);
  v3 = this + 30;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v3);
  OZChannelEnum::~OZChannelEnum(v2);
}

{
  v2 = this - 2;
  this[-2].var0 = &unk_2872905C0;
  this->var0 = &unk_287290930;
  PCString::~PCString(this + 33);
  v3 = this + 30;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v3);
  OZChannelEnum::~OZChannelEnum(v2);
  MEMORY[0x2666E9F00]();
}

void OZChannelStringEnum_Factory::OZChannelStringEnum_Factory(OZChannelStringEnum_Factory *this)
{
  v3 = xmmword_260848500;
  v4 = xmmword_260851CB0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872909A0;
  *(this + 16) = &unk_287290A70;
}

void OZChannelBehavior::OZChannelBehavior(OZChannelBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZBehavior::OZBehavior(this, a2, a3, a4);
  *v5 = &unk_287290AC8;
  *(v5 + 16) = &unk_287290D78;
  *(v5 + 48) = &unk_287290FD0;
  *(v5 + 336) = &unk_287291028;
  *(v5 + 344) = v5 + 344;
  *(v5 + 352) = v5 + 344;
  *(v5 + 360) = 0;
  *(v5 + 368) = 0;
  *(v5 + 384) = 0;
  *(v5 + 392) = 0;
  *(v5 + 376) = v5 + 384;
  PCSharedMutex::PCSharedMutex((v5 + 400));
  *(this + 252) = 256;
  *(this + 64) = this + 512;
  *(this + 65) = this + 512;
  *(this + 66) = 0;
}

void sub_26014EB30(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 376, *(v1 + 48));
  std::__list_imp<unsigned int>::clear(v2);
  OZBehavior::~OZBehavior(v1);
  _Unwind_Resume(a1);
}

void OZChannelBehavior::OZChannelBehavior(OZChannelBehavior *this, const OZChannelBehavior *a2, char a3)
{
  OZBehavior::OZBehavior(this, a2, a3);
  *v4 = &unk_287290AC8;
  *(v4 + 16) = &unk_287290D78;
  *(v4 + 48) = &unk_287290FD0;
  *(v4 + 336) = &unk_287291028;
  *(v4 + 344) = v4 + 344;
  *(v4 + 352) = v4 + 344;
  *(v4 + 360) = 0;
  *(v4 + 368) = 0;
  *(v4 + 384) = 0;
  *(v4 + 392) = 0;
  *(v4 + 376) = v4 + 384;
  PCSharedMutex::PCSharedMutex((v4 + 400));
  *(this + 252) = 256;
  *(this + 64) = this + 512;
  *(this + 65) = this + 512;
  *(this + 66) = 0;
}

void sub_26014EC40(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 376, *(v1 + 48));
  std::__list_imp<unsigned int>::clear(v2);
  OZBehavior::~OZBehavior(v1);
  _Unwind_Resume(a1);
}

void OZChannelBehavior::~OZChannelBehavior(OZChannelBehavior *this)
{
  *this = &unk_287290AC8;
  *(this + 2) = &unk_287290D78;
  *(this + 6) = &unk_287290FD0;
  *(this + 42) = &unk_287291028;
  if (*(this + 368) == 1)
  {
    Scene = OZBehavior::getScene(this);
    if (Scene)
    {
      OZDocument::removeCPPObserver(*(Scene + 1584));
      *(this + 368) = 0;
    }
  }

  std::__list_imp<unsigned int>::clear(this + 64);
  PCSharedMutex::~PCSharedMutex((this + 400));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 376, *(this + 48));
  std::__list_imp<unsigned int>::clear(this + 43);

  OZBehavior::~OZBehavior(this);
}

{
  OZChannelBehavior::~OZChannelBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelBehavior::~OZChannelBehavior(OZChannelBehavior *this)
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

uint64_t OZChannelBehavior::didAddToNode(OZChannelBehavior *this, OZSceneNode *a2)
{
  *(this + 41) = a2;
  if (!*(this + 66))
  {
    (*(*this + 520))(this, this + 512);
  }

  return OZChannelBehavior::addObserverIfNecessary(this);
}

uint64_t OZChannelBehavior::addObserverIfNecessary(uint64_t this)
{
  if ((*(this + 368) & 1) == 0)
  {
    v1 = this;
    this = (*(*this + 656))(this);
    if ((this & 1) != 0 || *(v1 + 528))
    {
      this = (*(*v1 + 336))(v1);
      if (this)
      {
        this = OZDocument::addCPPObserver(*(this + 1584), v1 + 336, 15000);
        *(v1 + 368) = 1;
      }
    }
  }

  return this;
}

uint64_t OZChannelBehavior::didAddSceneNodeToScene(OZChannelBehavior *this, OZScene *a2)
{
  if (!*(this + 66))
  {
    (*(*this + 520))(this, this + 512);
  }

  return OZChannelBehavior::addObserverIfNecessary(this);
}

uint64_t OZChannelBehavior::willRemoveSceneNodeFromScene(uint64_t this, OZScene *a2)
{
  if (*(this + 368) == 1)
  {
    v2 = this;
    this = (*(*this + 336))(this, a2);
    if (this)
    {
      this = OZDocument::removeCPPObserver(*(this + 1584));
      *(v2 + 368) = 0;
    }
  }

  return this;
}

uint64_t OZChannelBehavior::didInsert(OZChannelBehavior *this, OZSceneNode *a2, OZBehavior *a3)
{
  (*(*this + 96))(this, a2);
  v5 = *(*this + 112);

  return v5(this, a3);
}

void OZChannelBehavior::removeNodesFromSingleChan(OZChannelBehavior *this, OZChannel *a2)
{
  OZChannel::enumerateCurveProcessingNodes(a2, &__p);
  v8 = &v8;
  v9 = &v8;
  v10 = 0;
  v4 = __p;
  v5 = v12;
  if (__p != v12)
  {
    do
    {
      if (*v4)
      {
        if (v6)
        {
          if (v6[1] == this)
          {
            operator new();
          }
        }
      }

      ++v4;
    }

    while (v4 != v5);
    if (&v8 != v9)
    {
      v7 = &v8;
      do
      {
        OZChannel::deleteCurveProcessingNode(a2, *(*v7 + 16));
        std::list<OZBehaviorCurveNode *>::remove(this + 344, (*v7 + 16));
        v7 = *v7;
      }

      while (v7 != v9);
    }
  }

  std::__list_imp<unsigned int>::clear(&v8);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_26014F278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  std::__list_imp<unsigned int>::clear(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void OZChannelBehavior::removeNodesFromChan(OZChannelBehavior *this, OZChannelBase *a2)
{
  if ((a2->var7 & 0x1000) != 0)
  {
    if (v4)
    {
      for (i = *v4; i != v4[1]; ++i)
      {
        v6 = *i;
        OZChannelBehavior::removeNodesFromChan(this, v6);
      }
    }
  }

  else
  {

    OZChannelBehavior::removeNodesFromSingleChan(this, v3);
  }
}

void *OZChannelBehavior::removeNodesReferencingChan(OZChannelBehavior *this, OZChannelBase *lpsrc)
{
  v10 = &v10;
  v11 = &v10;
  v12 = 0;
  if ((lpsrc->var7 & 0x1000) != 0)
  {
    v5 = *(this + 44);
    if (v5 != (this + 344))
    {
      v6 = v4;
      do
      {
        if (OZChannelBase::isDescendantOf(*(v5[2] + 16), v6))
        {
          operator new();
        }

        v5 = v5[1];
      }

      while (v5 != (this + 344));
    }
  }

  else
  {
    for (i = *(this + 44); i != (this + 344); i = i[1])
    {
      if (*(i[2] + 16) == lpsrc)
      {
        operator new();
      }
    }
  }

  for (j = v11; j != &v10; j = j[1])
  {
    v9 = j[2];
    std::list<OZBehaviorCurveNode *>::remove(this + 344, &v9);
  }

  return std::__list_imp<unsigned int>::clear(&v10);
}

void sub_26014F530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void OZChannelBehavior::willRemove(OZChannelBehavior *this)
{
  v2 = *(this + 47);
  v3 = this + 384;
  if (v2 != this + 384)
  {
    do
    {
      OZChannelBehavior::removeNodesFromChan(this, *(v2 + 4));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 376, *(this + 48));
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 47) = v3;
  while (1)
  {
    v7 = *(this + 45);
    if (!v7)
    {
      break;
    }

    v8 = *(this + 44);
    v10 = *v8;
    v9 = v8[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    *(this + 45) = v7 - 1;
    operator delete(v8);
  }

  if (*(this + 368) == 1)
  {
    v11 = (*(*this + 336))(this);
    if (v11)
    {
      OZDocument::removeCPPObserver(*(v11 + 1584));
      *(this + 368) = 0;
    }
  }

  *(this + 41) = 0;
}

void OZChannelBehavior::reorderCurveNode(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a2[2];
  OZChannel::removeCurveProcessingNode(v7, a2);
  OZChannel::enumerateCurveProcessingNodes(v7, __p);
  v8 = __p[1];
  v9 = __p[0];
  if (__p[0] != __p[1])
  {
    v10 = 0;
    v11 = *a4;
    while (1)
    {
      v12 = *v9;
      if (!*v9)
      {
        break;
      }

      if (v13)
      {
        v14 = v13[1];
      }

      else
      {
        {
          break;
        }

        v16 = a3;
        while (v16 != *(a3 + 8))
        {
          v16 = *v16;
          v14 = v16[2];
          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(v14 + 8) + 8), xmmword_26084F810)))) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v14 = 0;
      }

LABEL_6:
      if (v11 == a3)
      {
        goto LABEL_22;
      }

      v15 = v11;
      while (*(v15 + 16) != v14)
      {
        v15 = *(v15 + 8);
        if (v15 == a3)
        {
          goto LABEL_22;
        }
      }

      if (v15 == a3)
      {
LABEL_22:
        OZChannel::insertCurveProcessingNode(v7, a2, v10);
        goto LABEL_24;
      }

LABEL_19:
      ++v9;
      v10 = v12;
      if (v9 == v8)
      {
        goto LABEL_23;
      }
    }

    v12 = v10;
    goto LABEL_19;
  }

LABEL_23:
  OZChannel::appendCurveProcessingNode(v7, a2);
LABEL_24:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_26014F838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZChannelBehavior::reorderSingleChan(uint64_t a1, OZChannel *this, uint64_t a3, uint64_t *a4)
{
  OZChannel::enumerateCurveProcessingNodes(this, &__p);
  v11 = &v11;
  v12 = &v11;
  v13 = 0;
  v7 = __p;
  v8 = v15;
  if (__p != v15)
  {
    do
    {
      v9 = *v7;
      if (*v7)
      {
        if (v9)
        {
          if (v9[1] == a1)
          {
            operator new();
          }
        }
      }

      ++v7;
    }

    while (v7 != v8);
    if (&v11 != v12)
    {
      v10 = &v11;
      do
      {
        OZChannelBehavior::reorderCurveNode(v9, *(*v10 + 16), a3, a4);
        v10 = *v10;
      }

      while (v10 != v12);
    }
  }

  std::__list_imp<unsigned int>::clear(&v11);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void sub_26014F9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  std::__list_imp<unsigned int>::clear(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void OZChannelBehavior::reorderChan(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if ((a2[7] & 0x1000) != 0)
  {
    if (v8)
    {
      for (i = *v8; i != v8[1]; ++i)
      {
        v10 = *i;
        OZChannelBehavior::reorderChan(a1, v10, a3, a4);
      }
    }
  }

  else
  {

    OZChannelBehavior::reorderSingleChan(a1, v7, a3, a4);
  }
}

void OZChannelBehavior::didReorder(OZChannelBehavior *this, OZBehavior *a2)
{
  if (*(this + 49))
  {
    v3 = (*(*this + 320))(this, a2);
    v4 = v3 + 1000;
    v5 = v3 + 1000;
    if (*(v3 + 1008) != v3 + 1000)
    {
      v5 = *(v3 + 1008);
      while (*(v5 + 16) != this)
      {
        v5 = *(v5 + 8);
        if (v5 == v4)
        {
          v5 = v3 + 1000;
          break;
        }
      }
    }

    v10 = *(v5 + 8);
    v6 = *(this + 47);
    if (v6 != (this + 384))
    {
      do
      {
        OZChannelBehavior::reorderChan(this, *(v6 + 4), v4, &v10);
        v7 = *(v6 + 1);
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
            v8 = *(v6 + 2);
            v9 = *v8 == v6;
            v6 = v8;
          }

          while (!v9);
        }

        v6 = v8;
      }

      while (v8 != (this + 384));
    }
  }
}

void OZChannelBehavior::willDeleteMaterialLayer(OZChannelBehavior *this, OZChannelBase *a2)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(a2);
  v4 = ObjectManipulator - 16;
  if (!ObjectManipulator)
  {
    v4 = 0;
  }

  v5 = (v4 + 16);
  if (ObjectManipulator)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  OZChannelBehavior::willDeleteObject(this, v6);
}

void OZChannelBehavior::willDeleteObject(OZChannelBehavior *this, OZObjectManipulator *a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v2 = *(this + 47);
  v3 = this + 384;
  if (v2 != this + 384)
  {
    do
    {
      lpsrc = *(v2 + 4);
      if (OZChannelBase::getObjectManipulator(lpsrc) == a2)
      {
        OZChannelBehavior::removeNodesFromChan(this, lpsrc);
        std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v13, &lpsrc);
        OZChannelBehavior::removeNodesReferencingChan(this, lpsrc);
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
    v9 = v13;
    if (v13 != v14)
    {
      do
      {
        lpsrc = v9[4];
        std::__tree<OZLocking *>::__erase_unique<OZLocking *>(this + 47, &lpsrc);
        v10 = v9[1];
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
            v11 = v9[2];
            v8 = *v11 == v9;
            v9 = v11;
          }

          while (!v8);
        }

        v9 = v11;
      }

      while (v11 != v14);
    }
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v13, v14[0]);
}

void OZChannelBehavior::willDeleteChannel(OZChannelBehavior *this, OZChannelBase *a2)
{
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  v2 = *(this + 47);
  v3 = this + 384;
  if (v2 != this + 384)
  {
    do
    {
      v6 = *(v2 + 4);
      lpsrc = v6;
      if (v6 == a2)
      {
        OZChannelBehavior::removeNodesFromChan(this, v6);
        std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v14, &lpsrc);
        OZChannelBehavior::removeNodesReferencingChan(this, lpsrc);
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
    v10 = v14;
    if (v14 != v15)
    {
      do
      {
        lpsrc = v10[4];
        std::__tree<OZLocking *>::__erase_unique<OZLocking *>(this + 47, &lpsrc);
        v11 = v10[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v10[2];
            v9 = *v12 == v10;
            v10 = v12;
          }

          while (!v9);
        }

        v10 = v12;
      }

      while (v12 != v15);
    }
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v14, v15[0]);
}

uint64_t OZChannelBehavior::affectsBehavior(OZChannelBehavior *this, OZBehavior *a2)
{
  v2 = *(this + 47);
  v3 = this + 384;
  if (v2 == this + 384)
  {
    return 0;
  }

  while (1)
  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(*(v2 + 4));
    if (ObjectManipulator)
    {
      break;
    }

    if (!a2)
    {
      return 1;
    }

LABEL_9:
    v8 = *(v2 + 1);
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
        v9 = *(v2 + 2);
        v10 = *v9 == v2;
        v2 = v9;
      }

      while (!v10);
    }

    v2 = v9;
    if (v9 == v3)
    {
      return 0;
    }
  }

  if (v6 != a2)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    if (!v7 || ((*(*v7 + 624))(v7, a2) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  return 1;
}

void OZChannelBehavior::setAffectedChannel(OZChannelBehavior *this, OZChannelBase *a2)
{
  v4 = this + 384;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 376, *(this + 48));
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 47) = v4;
  v5 = a2;
  if (a2)
  {
    std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(this + 376, &v5);
  }
}

void OZChannelBehavior::clearChannels(OZChannelBehavior *this)
{
  v2 = this + 384;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 376, *(this + 48));
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 47) = v2;
}

void *OZChannelBehavior::addAffectedChannel(void *this, OZChannelBase *a2)
{
  v2 = a2;
  if (a2)
  {
    return std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>((this + 47), &v2);
  }

  return this;
}

OZChannelBehavior *OZChannelBehavior::GetSceneNodeFromChan(OZChannelBehavior *this, OZChannelBase *a2)
{
  v2 = this;
  if (this)
  {
    while (1)
    {
      if (v3)
      {
        break;
      }

      v2 = *(v2 + 6);
      if (!v2)
      {
        return v2;
      }
    }

    v2 = *(v3 + 32);
    if (v2 && *(v2 + 120))
    {
      v4 = *((*(*v2 + 664))(*(v3 + 32)) + 8);
      v7 = xmmword_26084FA50;
      if (OZFactory::isKindOfClass(v4, &v7))
      {
        return *(v2 + 120);
      }

      else
      {
        v5 = *((*(*v2 + 664))(v2) + 8);
        v7 = xmmword_260850EF0;
        if (OZFactory::isKindOfClass(v5, &v7) && *(*(v2 + 120) + 960))
        {
          return *(*(v2 + 120) + 960);
        }
      }
    }
  }

  return v2;
}

void OZChannelBehavior::getEvalDepChansForRef(int a1, void *lpsrc, uint64_t a3)
{
  if (lpsrc)
  {
    if (a3)
    {
      {
        v4 = (*(*a3 + 232))(a3);
        if (v4)
        {
          if (v5)
          {
            v6 = v5;
            do
            {
              {
                operator new();
              }

              v6 = v6[120];
            }

            while (v6);
          }
        }
      }
    }
  }
}

void OZChannelBehavior::getEvalDepRefs(uint64_t a1)
{
  v1 = (*(*a1 + 312))(a1);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  OZChannelFolder::getAllDescendantsFlattened(v1, &v4, 0, 0);
  v2 = v4;
  v3 = v5;
  if (v4 != v5)
  {
    do
    {
      {
        operator new();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v4;
  }

  if (v2)
  {
    v5 = v2;
    operator delete(v2);
  }
}

void sub_2601505AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelBehavior::canChanRefBeSetTo(char **this, const OZChanObjectManipRef *a2, const OZObjectManipulator *a3)
{
  v14 = &v14;
  v15 = &v14;
  v16 = 0;
  (*(*this + 66))(this, a2, a3, &v14);
  v4 = this[47];
  v5 = (this + 48);
  if (v4 != (this + 48))
  {
    do
    {
      for (i = v15; i != &v14; i = i[1])
      {
        v13[0] = v13;
        v13[1] = v13;
        v13[2] = 0;
        IsChanAAffectedByChanB = OZBehavior::IsChanAAffectedByChanB(i[2], *(v4 + 4), v13);
        std::__list_imp<unsigned int>::clear(v13);
        if (IsChanAAffectedByChanB)
        {
          v11 = 0;
          goto LABEL_14;
        }
      }

      v8 = *(v4 + 1);
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
          v9 = *(v4 + 2);
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v5);
  }

  v11 = 1;
LABEL_14:
  std::__list_imp<unsigned int>::clear(&v14);
  return v11;
}

void sub_2601506E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBehavior::isEvalCyclic(OZChannelBehavior *this)
{
  PCSharedMutex::lock_shared((this + 400));
  v3 = *(this + 505);
  if ((v3 & 1) == 0)
  {
    v1 = *(this + 504);
  }

  PCSharedMutex::unlock_shared((this + 400));
  if (v3)
  {
    PCSharedMutex::lock((this + 400));
    *(this + 505) = 0;
    v4 = *(this + 47);
    if (v4 == (this + 384))
    {
LABEL_12:
      v1 = 0;
      *(this + 504) = 0;
    }

    else
    {
      while (1)
      {
        v5 = *(v4 + 4);
        v10[0] = v10;
        v10[1] = v10;
        v10[2] = 0;
        if (OZBehavior::isUltimatelyAffectedBy(this, v5, v10))
        {
          break;
        }

        std::__list_imp<unsigned int>::clear(v10);
        v6 = *(v4 + 1);
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
            v7 = *(v4 + 2);
            v8 = *v7 == v4;
            v4 = v7;
          }

          while (!v8);
        }

        v4 = v7;
        if (v7 == (this + 384))
        {
          goto LABEL_12;
        }
      }

      v1 = 1;
      *(this + 504) = 1;
      std::__list_imp<unsigned int>::clear(v10);
    }

    PCSharedMutex::unlock((this + 400));
  }

  return v1 & 1;
}

void sub_26015080C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  PCSharedMutex::unlock((v2 + 400));
  _Unwind_Resume(a1);
}

void OZChannelBehavior::dirtyIsEvalCyclicCache(OZChannelBehavior *this)
{
  PCSharedMutex::lock((this + 400));
  *(this + 505) = 1;
  PCSharedMutex::unlock((this + 400));
}

void OZChannelBehavior::notify(OZChannelBehavior *this, char a2)
{
  if ((a2 & 0x10) != 0)
  {
    if (*(this + 66))
    {
      OZChannelBehavior::dirtyIsEvalCyclicCache(this);
    }
  }
}

void non-virtual thunk toOZChannelBehavior::notify(OZChannelBehavior *this, char a2)
{
  if ((a2 & 0x10) != 0)
  {
    if (*(this + 24))
    {
      OZChannelBehavior::dirtyIsEvalCyclicCache((this - 336));
    }
  }
}

double OZChannelBehavior::getChannelValueBeforeThis(OZChannelBehavior *this, OZChannel *a2, const CMTime *a3)
{
  OZChannel::enumerateCurveProcessingNodes(a2, &__p);
  if (__p == v23)
  {
    OZChannel::getValueAsDouble(a2, a3, 0.0);
  }

  else
  {
    v6 = (*(*this + 320))(this);
    v7 = v6 + 1000;
    v8 = *(v6 + 1008);
    v20 = a3;
    if (v8 != v6 + 1000)
    {
      v9 = *(v6 + 1008);
      while (*(v9 + 16) != this)
      {
        v9 = *(v9 + 8);
        if (v9 == v7)
        {
          goto LABEL_9;
        }
      }

      v7 = v9;
    }

LABEL_9:
    v12 = __p;
    v11 = v23;
    if (__p == v23)
    {
      v14 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        v14 = v13;
        v13 = *v12;
        if (*v12)
        {
          if (v15)
          {
            v16 = *(v15 + 1);
            if (v16 == this)
            {
              break;
            }

            v17 = v8;
            if (v8 != v7)
            {
              v17 = v8;
              while (*(v17 + 16) != v16)
              {
                v17 = *(v17 + 8);
                if (v17 == v7)
                {
                  v17 = v7;
                  break;
                }
              }
            }

            if (v7 != v17)
            {
              break;
            }
          }
        }

        ++v12;
        v14 = v13;
      }

      while (v12 != v11);
    }

    memset(&v21, 0, sizeof(v21));
    (*(a2->var0 + 41))(&v21, a2, v20);
    CurveValueForNode = OZChannel::getCurveValueForNode(a2, &v21, v14, 0.0);
  }

  v18 = CurveValueForNode;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_260150AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZBehaviorCurveNode::OZBehaviorCurveNode(OZBehaviorCurveNode *this, OZBehavior *a2, OZChannel *a3)
{
  OZCurveNode::OZCurveNode(this);
  *v5 = &unk_287291088;
  v5[1] = a2;
  v5[2] = a3;
}

void OZBehaviorCurveNode::OZBehaviorCurveNode(OZBehaviorCurveNode *this, const OZBehaviorCurveNode *a2)
{
  OZCurveNode::OZCurveNode(this);
  v3 = *(a2 + 1);
  *v4 = &unk_287291088;
  v4[1] = v3;
}

void OZBehaviorCurveNode::~OZBehaviorCurveNode(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

double OZBehaviorCurveNode::solveNode(OZBehaviorCurveNode *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = *(a2 + 19);
    v4 = *(a2 + 10);
    do
    {
      v5 = *v4++;
      result = v5;
      *v3++ = v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

__n128 OZBehaviorCurveNode::getNeededRange(OZBehaviorCurveNode *this, OZCurveNodeParam *a2)
{
  *(a2 + 24) = *(a2 + 6);
  *(a2 + 5) = *(a2 + 14);
  result = *(a2 + 120);
  *(a2 + 3) = result;
  *(a2 + 8) = *(a2 + 17);
  *(a2 + 18) = *(a2 + 36);
  *(a2 + 88) = 0;
  *(a2 + 10) = *(a2 + 19);
  return result;
}

void OZCamera::OZCamera(OZCamera *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZTransformNode::OZTransformNode(this, a2, a3, a4);
  OZImageNode::OZImageNode((v5 + 6528));
  *this = &unk_287291180;
  *(this + 2) = &unk_287291750;
  *(this + 6) = &unk_2872919A8;
  *(this + 816) = &unk_287291A00;
  PCURL::PCURL(&v44, @"Channel Camera Type Enum");
  PCURL::PCURL(&v43, @"Channel Camera Type Label");
  Instance = OZCamera::OZCamera_cameraTypeImpl::getInstance(v6);
  OZChannelEnum::OZChannelEnum((this + 6552), 1u, &v44, &v43, (this + 448), 0xC8u, 0, Instance, 0);
  PCString::~PCString(&v43);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera Angle Of View");
  v9 = OZCamera::OZCamera_angleOfViewImpl::getInstance(v8);
  v10 = OZCamera::OZCamera_angleOfViewInfo::getInstance(v9);
  OZChannelDouble::OZChannelDouble((this + 6808), 45.0, &v44, (this + 448), 0xC9u, 0, v9, v10);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera Near Plane");
  v12 = OZCamera::OZCamera_nearPlaneImpl::getInstance(v11);
  v13 = OZCamera::OZCamera_nearPlaneInfo::getInstance(v12);
  OZChannelDouble::OZChannelDouble((this + 6960), 10.0, &v44, (this + 448), 0xCAu, 0, v12, v13);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera Far Plane");
  v15 = OZCamera::OZCamera_farPlaneImpl::getInstance(v14);
  v16 = OZCamera::OZCamera_farPlaneInfo::getInstance(v15);
  OZChannelDouble::OZChannelDouble((this + 7112), 10000.0, &v44, (this + 448), 0xCBu, 0, v15, v16);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera Near Fade");
  v18 = OZCamera::OZCamera_nearFadeImpl::getInstance(v17);
  v19 = OZCamera::OZCamera_nearFadeInfo::getInstance(v18);
  OZChannelDouble::OZChannelDouble((this + 7264), 10.0, &v44, (this + 448), 0xCCu, 0, v18, v19);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera Far Fade");
  v21 = OZCamera::OZCamera_farFadeImpl::getInstance(v20);
  v22 = OZCamera::OZCamera_farFadeInfo::getInstance(v21);
  OZChannelDouble::OZChannelDouble((this + 7416), 100.0, &v44, (this + 448), 0xCDu, 0, v21, v22);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera DOF Enable");
  OZChannelFolder::OZChannelFolder((this + 7568), &v44, (this + 448), 0xCEu, 0, 0);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera Aperture");
  v24 = OZCamera::OZCamera_apertureImpl::getInstance(v23);
  v25 = OZCamera::OZCamera_apertureInfo::getInstance(v24);
  OZChannelDouble::OZChannelDouble((this + 7696), 10.0, &v44, (this + 7568), 0xCFu, 0, v24, v25);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera DOF Offset");
  v27 = OZCamera::OZCamera_dofOffsetInfo::getInstance(v26);
  OZChannelDouble::OZChannelDouble((this + 7848), 0.0, &v44, (this + 7568), 0xD0u, 0, 0, v27);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera DOF Near");
  v29 = OZCamera::OZCamera_dofNearImpl::getInstance(v28);
  v30 = OZCamera::OZCamera_dofNearInfo::getInstance(v29);
  OZChannelDouble::OZChannelDouble((this + 8000), 0.0, &v44, (this + 7568), 0xD1u, 0, v29, v30);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera DOF Far");
  v32 = OZCamera::OZCamera_dofFarImpl::getInstance(v31);
  v33 = OZCamera::OZCamera_dofFarInfo::getInstance(v32);
  OZChannelDouble::OZChannelDouble((this + 8152), 0.0, &v44, (this + 7568), 0xD2u, 0, v32, v33);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera DOF Far Infinite");
  OZChannelBool::OZChannelBool((this + 8304), &v44, (this + 7568), 0xD3u, 0, 0, 0);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera DOF Filter Enum");
  PCURL::PCURL(&v43, @"Channel Camera DOF Filter Label");
  v35 = OZCamera::OZCamera_dofFilterImpl::getInstance(v34);
  OZChannelEnum::OZChannelEnum((this + 8456), 0, &v44, &v43, (this + 7568), 0xD4u, 0, v35, 0);
  PCString::~PCString(&v43);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera DOF Filter Shape Enum");
  PCURL::PCURL(&v43, @"Channel Camera DOF Filter Shape Label");
  v37 = OZCamera::OZCamera_dofFilterShapeImpl::getInstance(v36);
  OZChannelEnum::OZChannelEnum((this + 8712), 0, &v44, &v43, (this + 7568), 0xD5u, 0, v37, 0);
  PCString::~PCString(&v43);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera DOF Filter Sides");
  v39 = OZCamera::OZCamera_dofFilterSidesImpl::getInstance(v38);
  v40 = OZCamera::OZCamera_dofFilterSidesInfo::getInstance(v39);
  OZChannelUint32::OZChannelUint32(this + 59, 3, &v44, (this + 7568), 0xD6u, 0, v39, v40);
  PCString::~PCString(&v44);
  PCURL::PCURL(&v44, @"Channel Camera DOF Depth Mode Enum");
  PCURL::PCURL(&v43, @"Channel Camera DOF Depth Mode Label");
  v42 = OZCamera::OZCamera_dofDepthModeImpl::getInstance(v41);
  OZChannelEnum::OZChannelEnum((this + 9120), 0, &v44, &v43, (this + 7568), 0xD7u, 0, v42, 0);
  PCString::~PCString(&v43);
  PCString::~PCString(&v44);
  OZChannel::setDefaultValue((this + 1352), 0.0);
  OZChannel::setDefaultValue((this + 1504), 0.0);
  OZChannel::setDefaultValue((this + 1952), 0.0);
  (*(*(this + 152) + 288))(this + 1216, 0);
  OZChannelBase::setFlag((this + 5032), 2, 0);
  (*(*(this + 629) + 128))(this + 5032);
  OZChannelBase::resetFlag((this + 6960), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 6960));
  OZChannelBase::resetFlag((this + 7112), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 7112));
  OZChannelBase::resetFlag((this + 7264), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 7264));
  OZChannelBase::resetFlag((this + 7416), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 7416));
  OZChannelBase::resetFlag((this + 56), 0x80000, 0);
  OZChannel::setMin((this + 4576), 0.01);
  OZChannel::setSliderMin((this + 4576), 0.01);
  OZChannel::setMin((this + 4728), 0.01);
  OZChannel::setSliderMin((this + 4728), 0.01);
  OZChannel::setMin((this + 4880), 0.01);
  OZChannel::setSliderMin((this + 4880), 0.01);
  OZChannelFolder::setFoldFlag((this + 7568), 15);
  OZChannelFolder::saveStateAsDefault((this + 7568));
  OZChannelBase::enable((this + 8712), 0, 0);
  OZChannelBase::enable((this + 8968), 0, 0);
  OZChannelBase::resetFlag((this + 7848), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 7848));
  OZChannelBase::resetFlag((this + 8000), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 8000));
  OZChannelBase::resetFlag((this + 8152), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 8152));
  OZChannelBase::resetFlag((this + 8304), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 8304));
  OZChannelBase::resetFlag((this + 8456), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 8456));
  OZChannelBase::resetFlag((this + 8712), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 8712));
  OZChannelBase::resetFlag((this + 8968), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 8968));
  OZChannelBase::resetFlag((this + 9120), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 9120));
}

void sub_260151608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannelBase *a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + v15));
  OZChannelEnum::~OZChannelEnum((v12 + v13));
  OZChannelEnum::~OZChannelEnum((v12 + v18));
  OZChannelBool::~OZChannelBool((v12 + v17));
  OZChannel::~OZChannel((v12 + v16));
  OZChannel::~OZChannel((v12 + v14));
  OZChannel::~OZChannel((v12 + 7848));
  OZChannel::~OZChannel((v12 + 7696));
  OZChannelFolder::~OZChannelFolder((v12 + v19));
  OZChannel::~OZChannel((v12 + 7416));
  OZChannel::~OZChannel((v12 + 7264));
  OZChannel::~OZChannel((v12 + 7112));
  OZChannel::~OZChannel((v12 + 6960));
  OZChannel::~OZChannel((v12 + 6808));
  OZChannelEnum::~OZChannelEnum((v12 + 6552));
  OZChannelBase::setRangeName(a10, v21);
  OZTransformNode::~OZTransformNode(v12);
  _Unwind_Resume(a1);
}

void OZCamera::OZCamera(OZCamera *this, const OZCamera *a2, char a3)
{
  OZTransformNode::OZTransformNode(this, a2, a3);
  OZImageNode::OZImageNode((v5 + 6528));
  *this = &unk_287291180;
  *(this + 2) = &unk_287291750;
  *(this + 6) = &unk_2872919A8;
  *(this + 816) = &unk_287291A00;
  OZChannelEnum::OZChannelEnum((this + 6552), (a2 + 6552), (this + 448));
  OZChannel::OZChannel((this + 6808), (a2 + 6808), (this + 448));
  *(this + 851) = &unk_287245C60;
  *(this + 853) = &unk_287245FC0;
  OZChannel::OZChannel((this + 6960), (a2 + 6960), (this + 448));
  *(this + 870) = &unk_287245C60;
  *(this + 872) = &unk_287245FC0;
  OZChannel::OZChannel((this + 7112), (a2 + 7112), (this + 448));
  *(this + 889) = &unk_287245C60;
  *(this + 891) = &unk_287245FC0;
  OZChannel::OZChannel((this + 7264), (a2 + 7264), (this + 448));
  *(this + 908) = &unk_287245C60;
  *(this + 910) = &unk_287245FC0;
  OZChannel::OZChannel((this + 7416), (a2 + 7416), (this + 448));
  *(this + 927) = &unk_287245C60;
  *(this + 929) = &unk_287245FC0;
  OZChannelFolder::OZChannelFolder((this + 7568), (a2 + 7568), (this + 448));
  OZChannel::OZChannel((this + 7696), (a2 + 7696), (this + 7568));
  *(this + 962) = &unk_287245C60;
  *(this + 964) = &unk_287245FC0;
  OZChannel::OZChannel((this + 7848), (a2 + 7848), (this + 7568));
  *(this + 981) = &unk_287245C60;
  *(this + 983) = &unk_287245FC0;
  OZChannel::OZChannel((this + 8000), (a2 + 8000), (this + 7568));
  *(this + 1000) = &unk_287245C60;
  *(this + 1002) = &unk_287245FC0;
  OZChannel::OZChannel((this + 8152), (a2 + 8152), (this + 7568));
  *(this + 1019) = &unk_287245C60;
  *(this + 1021) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 8304), (a2 + 8304), (this + 7568));
  OZChannelEnum::OZChannelEnum((this + 8456), (a2 + 8456), (this + 7568));
  OZChannelEnum::OZChannelEnum((this + 8712), (a2 + 8712), (this + 7568));
  OZChannel::OZChannel(this + 59, (a2 + 8968), (this + 7568));
  *(this + 1121) = &unk_287246400;
  *(this + 1123) = &unk_287246760;
  OZChannelEnum::OZChannelEnum((this + 9120), (a2 + 9120), (this + 7568));
}

void sub_260151D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannel *a10, OZChannel *a11, OZChannel *a12, OZChannel *a13, OZChannel *a14, OZChannel *a15, OZChannelBase *a16)
{
  OZChannel::~OZChannel(v19);
  OZChannelEnum::~OZChannelEnum((v16 + v23));
  OZChannelEnum::~OZChannelEnum((v16 + v22));
  OZChannelBool::~OZChannelBool((v16 + v21));
  OZChannel::~OZChannel(v18);
  OZChannel::~OZChannel(v17);
  OZChannel::~OZChannel(v24);
  OZChannel::~OZChannel(a10);
  OZChannelFolder::~OZChannelFolder((v16 + v20));
  OZChannel::~OZChannel(a11);
  OZChannel::~OZChannel(a12);
  OZChannel::~OZChannel(a13);
  OZChannel::~OZChannel(a14);
  OZChannel::~OZChannel(a15);
  OZChannelEnum::~OZChannelEnum((v16 + 6552));
  OZChannelBase::setRangeName(a16, v26);
  OZTransformNode::~OZTransformNode(v16);
  _Unwind_Resume(a1);
}

void OZCamera::~OZCamera(OZCamera *this)
{
  *this = &unk_287291180;
  *(this + 2) = &unk_287291750;
  *(this + 6) = &unk_2872919A8;
  v2 = (this + 6528);
  *(this + 816) = &unk_287291A00;
  OZChannelEnum::~OZChannelEnum((this + 9120));
  OZChannel::~OZChannel(this + 59);
  OZChannelEnum::~OZChannelEnum((this + 8712));
  OZChannelEnum::~OZChannelEnum((this + 8456));
  OZChannelBool::~OZChannelBool((this + 8304));
  OZChannel::~OZChannel((this + 8152));
  OZChannel::~OZChannel((this + 8000));
  OZChannel::~OZChannel((this + 7848));
  OZChannel::~OZChannel((this + 7696));
  OZChannelFolder::~OZChannelFolder((this + 7568));
  OZChannel::~OZChannel((this + 7416));
  OZChannel::~OZChannel((this + 7264));
  OZChannel::~OZChannel((this + 7112));
  OZChannel::~OZChannel((this + 6960));
  OZChannel::~OZChannel((this + 6808));
  OZChannelEnum::~OZChannelEnum((this + 6552));
  OZChannelBase::setRangeName(v2, v3);

  OZTransformNode::~OZTransformNode(this);
}

{
  OZCamera::~OZCamera(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZCamera::~OZCamera(OZCamera *this)
{
  OZCamera::~OZCamera((this - 16));
}

{
  OZCamera::~OZCamera((this - 48));
}

{
  OZCamera::~OZCamera((this - 6528));
}

{
  OZCamera::~OZCamera((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZCamera::~OZCamera((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZCamera::~OZCamera((this - 6528));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZCamera::operator=(uint64_t a1, const void *a2)
{
  OZTransformNode::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 6552, v4 + 6552);
  OZChannelBase::operator=(a1 + 6808, v5 + 6808);
  OZChannelBase::operator=(a1 + 6960, v5 + 6960);
  OZChannelBase::operator=(a1 + 7112, v5 + 7112);
  OZChannelBase::operator=(a1 + 7264, v5 + 7264);
  OZChannelBase::operator=(a1 + 7416, v5 + 7416);
  OZChannelFolder::operator=(a1 + 7568);
  OZChannelBase::operator=(a1 + 7696, v5 + 7696);
  OZChannelBase::operator=(a1 + 7848, v5 + 7848);
  OZChannelBase::operator=(a1 + 8000, v5 + 8000);
  OZChannelBase::operator=(a1 + 8152, v5 + 8152);
  OZChannelBase::operator=(a1 + 8304, v5 + 8304);
  OZChannelBase::operator=(a1 + 8456, v5 + 8456);
  OZChannelBase::operator=(a1 + 8712, v5 + 8712);
  OZChannelBase::operator=(a1 + 8968, v5 + 8968);

  return OZChannelBase::operator=(a1 + 9120, v5 + 9120);
}

uint64_t OZCamera::parseEnd(OZTransformNode *this, PCSerializerReadStream *a2)
{
  v4 = *(a2 + 26);
  if (v4 < 5 || (v4 == 5 ? (v5 = *(a2 + 27) > 0xAu) : (v5 = 1), !v5))
  {
    (*(*(this + 684) + 280))();
  }

  return OZTransformNode::parseEnd(this, a2);
}

void OZCamera::channelValueWillBeSet(OZCamera *this, OZChannel *a2, CMTime *a3, double a4)
{
  var3 = a2->var3;
  if (var3 == 213)
  {
    OZChannel::getValueAsDouble(a2, a3, 0.0);
    if (v11 == a4)
    {
      return;
    }

    v10 = a4 == 1.0;
  }

  else
  {
    if (var3 != 212)
    {
      if (var3 == 200)
      {
        OZChannel::getValueAsDouble(a2, a3, a4);
        if (v8 != a4)
        {
          v16 = *a3;
          OZCamera::cameraAtTime(this, &v16);
        }
      }

      return;
    }

    OZChannel::getValueAsDouble(a2, a3, 0.0);
    if (v9 == a4)
    {
      return;
    }

    if (a4 != 1.0)
    {
      if (v9 != 1.0)
      {
        return;
      }

      OZChannelBase::enable((this + 8712), 0, 0);
      v13 = (this + 8968);
      v12 = 0;
      goto LABEL_15;
    }

    OZChannelBase::enable((this + 8712), 1, 0);
    v10 = OZChannel::getValueAsInt((this + 8712), a3, 0.0) == 1;
  }

  v12 = v10;
  v13 = (this + 8968);
LABEL_15:
  OZChannelBase::enable(v13, v12, 0);
  v14 = *(this + 121);
  if (v14)
  {
    v15 = *(v14 + 1584);

    OZDocument::postNotification(v15, 0x80000);
  }
}

void sub_260152704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void rayIntersectsGeometry()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_260152CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rayIntersectsFrustum(double a1, double a2, double a3, double a4, double a5)
{
  v9 = tan(a2 * 0.5 * 3.14159265 / 180.0);
  v34 = -(v9 * a4);
  v35 = -(v9 * a4 / a3);
  v36 = a1 - a4;
  v31 = v9 * a4;
  v32 = v35;
  v33 = a1 - a4;
  v28 = v9 * a4;
  v29 = v9 * a4 / a3;
  v30 = a1 - a4;
  v25 = v34;
  v26 = v29;
  v27 = a1 - a4;
  v22 = -(v9 * a5);
  v23 = -(v9 * a5 / a3);
  v24 = a1 - a5;
  v19 = v22;
  v20 = v9 * a5 / a3;
  v21 = a1 - a5;
  v16 = v9 * a5;
  v17 = v20;
  v18 = a1 - a5;
  v13 = v9 * a5;
  v14 = v23;
  v15 = a1 - a5;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  operator new();
}

void sub_260153378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL LiTriangle3<double>::intersects(double **a1, uint64_t a2, float64x2_t *a3, double *a4)
{
  v4 = a1[1];
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = *v4 - v6;
  v8 = v4[1] - v5;
  v9 = (*a1)[2];
  v10 = v4[2] - v9;
  v11 = a1[2];
  v12 = *v11 - v6;
  v13 = v11[1] - v5;
  v14 = v11[2] - v9;
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = v15 * v14 - v13 * v17;
  v19 = v12 * v17 - v14 * v16;
  v20 = v13 * v16 - v12 * v15;
  v21 = v10 * v20 + v7 * v18 + v8 * v19;
  if (fabs(v21) < 0.0000001)
  {
    return 0;
  }

  v22 = *a2 - v6;
  v23 = 1.0 / v21;
  v24 = *(a2 + 8) - v5;
  v25 = *(a2 + 16) - v9;
  v26 = v23 * (v18 * v22 + v19 * v24 + v20 * v25);
  if (v26 < 0.0 || v26 > 1.0)
  {
    return 0;
  }

  v28 = v10 * v24 - v8 * v25;
  v29 = v7 * v25 - v10 * v22;
  v30 = v8 * v22 - v7 * v24;
  v31 = v23 * (v17 * v30 + v16 * v28 + v15 * v29);
  if (v31 < 0.0 || v26 + v31 > 1.0)
  {
    return 0;
  }

  v34 = v23 * (v14 * v30 + v12 * v28 + v13 * v29);
  *a4 = v34;
  v35 = v34 * *(a2 + 40) + *(a2 + 16);
  *a3 = vaddq_f64(vmulq_n_f64(*(a2 + 24), v34), *a2);
  a3[1].f64[0] = v35;
  return *a4 > -0.00001;
}

uint64_t OZCamera::contains(OZCamera *this, const LiCamera *a2, const OZRenderState *a3)
{
  if (fabs((*(*a2 + 504))(a2)) >= 0.0000001)
  {
    (*(*a2 + 336))(&v9, a2);
    (*(*a2 + 424))(v8, a2);
    PCMatrix44Tmpl<double>::transform<double>(v8, &v9, &v9);
    var0 = a3->var0;
    OZCamera::cameraAtTime(this, &var0);
  }

  return 0;
}

uint64_t OZCamera::hitCheck(uint64_t a1, float32x2_t *a2, __int128 *a3, void *lpsrc, uint64_t a5, char a6)
{
  if ((a6 & 4) == 0 || ((*(*a1 + 680))(a1) & 1) == 0)
  {
    if ((a6 & 2) == 0 || (v14 = *a3, v15 = *(a3 + 2), (*(*(a1 + 16) + 104))(a1 + 16, &v14, 1, 1, 1)))
    {
      {
        v16 = vcvtq_f64_f32(*a2);
        v17 = 0;
        (*(*a1 + 1384))(&v14, a1, &v16, lpsrc, a3, 0);
        v13[1] = xmmword_2603429E0;
        v13[2] = xmmword_2603429E0;
        v13[0] = xmmword_2603429E0;
        (*(*a1 + 1360))(a1, v13, a3);
        rayIntersectsGeometry();
      }
    }
  }

  return 0;
}

BOOL OZCamera::hitCheck(_DWORD *a1, double *a2, uint64_t a3, void *lpsrc)
{
  if (lpsrc)
  {
    if (v8)
    {
      if (a1[20] == v8[4])
      {
        return 0;
      }
    }
  }

  if ((*(*a1 + 1440))(a1, lpsrc, a3))
  {
    return 0;
  }

  return OZTransformNode::hitCheck(a1, a2, a3, lpsrc);
}

void OZCamera::calcTranslationRelativeToCamera(OZCamera *a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5)
{
  v29 = 0x3FF0000000000000;
  v26 = 0x3FF0000000000000;
  v23 = 0x3FF0000000000000;
  v20 = 0x3FF0000000000000;
  v21 = 0u;
  v22 = 0u;
  v24 = 0u;
  v25 = 0u;
  v27 = 0u;
  v28 = 0u;
  (*(*a1 + 1256))(a1, &v20, a5);
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
  v7 = *(a1 + 120);
  if (v7)
  {
    if (v8)
    {
      (*(*v8 + 1264))(v8, &v10, a5);
    }
  }

  v9 = *a5;
  OZCamera::cameraAtTime(a1, &v9);
}

void OZCamera::buildRenderGraph(OZCamera *this, CMTime *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  (*(*this + 272))(this);
  v6 = *a2;
  OZCamera::cameraAtTime(this, &v6);
}

void sub_260154670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, PCSharedCount a15, uint64_t a16, char a17, PCSharedCount a18)
{
  PCSharedCount::~PCSharedCount(&a16);
  PCSharedCount::~PCSharedCount(v18 + 1);
  PCSharedCount::~PCSharedCount(&a18);
  _Unwind_Resume(a1);
}

int32x2_t *OZCamera::getBounds(uint64_t a1, float64x2_t *a2)
{
  result = (*(*a1 + 272))(a1);
  if (result)
  {
    v4 = vcvtq_f64_f32(vcvt_f32_s32(result[43]));
    __asm { FMOV            V1.2D, #-0.5 }

    v10 = vmulq_f64(v4, _Q1);
  }

  else
  {
    v4 = vdupq_n_s64(0x4059000000000000uLL);
    v10 = vdupq_n_s64(0xC049000000000000);
  }

  *a2 = v10;
  a2[1] = v4;
  return result;
}

void OZSceneCamera::OZSceneCamera(OZSceneCamera *this, OZScene *a2, int a3)
{
  *(this + 64) = 1;
  *this = &unk_287291B18;
  *(this + 1) = a2;
  *(this + 6) = &unk_287291E30;
  *(this + 7) = 0;
  *(this + 4) = a3;
  *(this + 20) = 1;
}

uint64_t OZCamera::enable(OZCamera *this)
{
  result = OZTransformNode::isInRootWorld(this);
  if (result)
  {

    return OZObjectManipulator::enable((this + 16));
  }

  return result;
}

void OZSceneCamera::~OZSceneCamera(OZSceneCamera *this)
{
  *(this + 6) = &unk_2872DEA38;
  *(this + 64) = 0;
  PCWeakCount::~PCWeakCount(this + 7);
}

{
  *(this + 6) = &unk_2872DEA38;
  *(this + 64) = 0;
  PCWeakCount::~PCWeakCount(this + 7);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZSceneCamera::~OZSceneCamera(OZSceneCamera *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 6) = &unk_2872DEA38;
  v1[64] = 0;
  PCWeakCount::~PCWeakCount(v1 + 7);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 6) = &unk_2872DEA38;
  v1[64] = 0;
  PCWeakCount::~PCWeakCount(v1 + 7);

  JUMPOUT(0x2666E9F00);
}

void *OZSceneCamera::getCameraNode(OZSceneCamera *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  Node = OZScene::getNode(v2, *(this + 4));
  if (!Node)
  {
    return 0;
  }
}

float64x2_t OZSceneCamera::getFilmback@<Q0>(OZSceneCamera *this@<X0>, _OWORD *a2@<X8>)
{
  result.f64[0] = 4.0;
  *a2 = xmmword_26084B0C0;
  v3 = *(this + 1);
  if (v3)
  {
    result = vcvtq_f64_f32(vcvt_f32_s32(v3[43]));
    *a2 = result;
  }

  return result;
}

double OZSceneCamera::getParentAspectRatio(OZSceneCamera *this)
{
  CameraNode = OZSceneCamera::getCameraNode(this);
  v2 = CameraNode[120];
  if (!v2)
  {
    return *((*(*CameraNode + 272))(CameraNode) + 384);
  }

  if (!v3)
  {
    return *((*(*CameraNode + 272))(CameraNode) + 384);
  }

  v4 = *(*v3 + 1328);

  v4();
  return result;
}

double OZSceneCamera::getParentTransform@<D0>(OZSceneCamera *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  v4 = (a2 + 8);
  *(a2 + 48) = 0u;
  v5 = (a2 + 48);
  *(a2 + 88) = 0u;
  v6 = (a2 + 88);
  *(a2 + 24) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 104) = 0u;
  CameraNode = OZSceneCamera::getCameraNode(this);
  if (!CameraNode)
  {
    *(a2 + 120) = 0x3FF0000000000000;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 40) = 0x3FF0000000000000;
    *a2 = 0x3FF0000000000000;
    goto LABEL_8;
  }

  v8 = CameraNode;
  v9 = CameraNode[120];
  {
    *(a2 + 120) = 0x3FF0000000000000;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 40) = 0x3FF0000000000000;
    *a2 = 0x3FF0000000000000;
LABEL_8:
    result = 0.0;
    *v4 = 0u;
    v4[1] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
    return result;
  }

  v11 = v10;
  OZRenderState::OZRenderState(&v15);
  if (*(this + 20) == 1)
  {
    OZScene::getCurrentTime(*(this + 1), &v13);
  }

  else
  {
    v13 = *(this + 24);
    v14 = *(this + 5);
  }

  *&v15.var0.var0 = v13;
  v15.var0.var3 = v14;
  v15.var4 = 0;
  (*(*v11 + 1256))(v11, a2, &v15);
  result = 1.0 / (*(*v8 + 1328))(v8);
  if (result != 1.0)
  {
    *a2 = result * *a2;
    *(a2 + 32) = result * *(a2 + 32);
    *(a2 + 64) = result * *(a2 + 64);
    result = result * *(a2 + 96);
    *(a2 + 96) = result;
  }

  return result;
}

double OZSceneCamera::getTranslation(uint64_t a1, uint64_t a2)
{
  CameraNode = OZSceneCamera::getCameraNode(a1);
  if (CameraNode)
  {
    v6 = CameraNode;
    memset(&v9, 0, sizeof(v9));
    if (*(a1 + 20) == 1)
    {
      OZScene::getCurrentTime(*(a1 + 8), &v9);
    }

    else
    {
      v9 = *(a1 + 24);
    }

    v7 = 0uLL;
    v8 = 0;
    OZTransformNode::getTranslation(v6, &v7, &v9);
    *a2 = v7;
    *(a2 + 16) = v8;
    result = OZSceneCamera::getParentAspectRatio(a1) * *a2;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

double OZSceneCamera::getPivot(uint64_t a1, uint64_t a2)
{
  CameraNode = OZSceneCamera::getCameraNode(a1);
  if (CameraNode)
  {
    v6 = CameraNode;
    memset(&v9, 0, sizeof(v9));
    if (*(a1 + 20) == 1)
    {
      OZScene::getCurrentTime(*(a1 + 8), &v9);
    }

    else
    {
      v9 = *(a1 + 24);
    }

    v7 = 0uLL;
    v8 = 0;
    OZTransformNode::getPivot(v6, &v7, &v9);
    *a2 = v7;
    *(a2 + 16) = v8;
    result = OZSceneCamera::getParentAspectRatio(a1) * *a2;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

OZTransformNode *OZSceneCamera::setPivot(uint64_t a1, double *a2)
{
  result = OZSceneCamera::getCameraNode(a1);
  if (result)
  {
    v5 = result;
    memset(&v8, 0, sizeof(v8));
    if (*(a1 + 20) == 1)
    {
      OZScene::getCurrentTime(*(a1 + 8), &v8);
    }

    else
    {
      v8 = *(a1 + 24);
    }

    v6 = *a2;
    ParentAspectRatio = OZSceneCamera::getParentAspectRatio(a1);
    return OZTransformNode::setPivot(v5, v6 / ParentAspectRatio, a2[1], a2[2], &v8);
  }

  return result;
}

OZTransformNode *OZSceneCamera::setTranslation(uint64_t a1, double *a2)
{
  result = OZSceneCamera::getCameraNode(a1);
  if (result)
  {
    v5 = result;
    v7 = *a2;
    v6 = a2[1];
    v8 = a2[2];
    memset(&v13, 0, sizeof(v13));
    v9 = v7 / OZSceneCamera::getParentAspectRatio(a1);
    if (*(a1 + 20) == 1)
    {
      OZScene::getCurrentTime(*(a1 + 8), &v13);
    }

    else
    {
      v13 = *(a1 + 24);
    }

    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    OZTransformNode::getTranslation(v5, &v10, &v13);
    return OZTransformNode::offsetTranslation(v5, v9 - v10, v6 - v11, v8 - v12, &v13, 1);
  }

  return result;
}

double OZSceneCamera::getRotation(uint64_t a1, double *a2)
{
  CameraNode = OZSceneCamera::getCameraNode(a1);
  if (CameraNode)
  {
    v6 = CameraNode;
    memset(&v7, 0, sizeof(v7));
    if (*(a1 + 20) == 1)
    {
      OZScene::getCurrentTime(*(a1 + 8), &v7);
    }

    else
    {
      v7 = *(a1 + 24);
    }

    return OZChannelRotation3D::getValueAsQuatd(v6 + 2104, a2, &v7, 0.0);
  }

  return result;
}

void *OZSceneCamera::setRotation(uint64_t a1, double *a2)
{
  result = OZSceneCamera::getCameraNode(a1);
  if (result)
  {
    v5 = result;
    v30 = 0uLL;
    v31 = 0;
    if (*(a1 + 20) == 1)
    {
      OZScene::getCurrentTime(*(a1 + 8), &v30);
    }

    else
    {
      v30 = *(a1 + 24);
      v31 = *(a1 + 40);
    }

    v29 = 0x3FF0000000000000;
    v26 = 0x3FF0000000000000;
    v23 = 0x3FF0000000000000;
    v20 = 0x3FF0000000000000;
    v21 = 0u;
    v22 = 0u;
    v24 = 0u;
    v25 = 0u;
    v27 = 0u;
    v28 = 0u;
    PCMatrix44Tmpl<double>::rightRotate(&v20, a2);
    memset(v15, 0, sizeof(v15));
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    v16 = 4;
    Transformation = PCMatrix44Tmpl<double>::getTransformation(&v20, v15);
    _pcCheckGetTransformation(Transformation, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZCamera.cpp", 1272, v7, v8, v9, v10, v11);
    v12.n128_u64[0] = v17;
    (*(v5[280] + 720))(v5 + 280, &v30, v12);
    v13.n128_u64[0] = *(&v17 + 1);
    (*(v5[299] + 720))(v5 + 299, &v30, v13);
    v14.n128_u64[0] = v18;
    return (*(v5[318] + 720))(v5 + 318, &v30, v14);
  }

  return result;
}

void *OZSceneCamera::setEulerRotation(uint64_t a1, uint64_t a2)
{
  result = OZSceneCamera::getCameraNode(a1);
  if (result)
  {
    v5 = result;
    v8 = 0uLL;
    v9 = 0;
    if (*(a1 + 20) == 1)
    {
      OZScene::getCurrentTime(*(a1 + 8), &v8);
    }

    else
    {
      v8 = *(a1 + 24);
      v9 = *(a1 + 40);
    }

    (*(v5[280] + 720))(v5 + 280, &v8, *a2);
    v6.n128_u64[0] = *(a2 + 8);
    (*(v5[299] + 720))(v5 + 299, &v8, v6);
    v7.n128_u64[0] = *(a2 + 16);
    return (*(v5[318] + 720))(v5 + 318, &v8, v7);
  }

  return result;
}

uint64_t OZSceneCamera::setEulerRotation(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v42 = *a3;
  v43 = *(a3 + 2);
  v39 = 0.0;
  v40 = 0.0;
  v41 = 0.0;
  v38 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v32 = 0x3FF0000000000000;
  v29 = 1.0;
  v30 = 0u;
  v31 = 0u;
  v33 = 0u;
  v34 = 0u;
  v36 = 0u;
  v37 = 0u;
  (*(*a1 + 424))(v28);
  v24 = v28[4];
  v25 = v28[5];
  v26 = v28[6];
  v27 = v28[7];
  v20 = v28[0];
  v21 = v28[1];
  v22 = v28[2];
  v23 = v28[3];
  (*(*a1 + 24))(&v19, a1);
  for (i = 0; i != 128; i += 32)
  {
    v7 = (&v29 + i);
    v8 = *(&v19 + i + 16);
    *v7 = *(&v19 + i);
    v7[1] = v8;
  }

  PCMatrix44Tmpl<double>::invert(&v20, &v20, 0.0);
  PCMatrix44Tmpl<double>::transform<double>(&v29, &v42, &v42);
  (*(*a1 + 400))(a1, a2);
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  (*(*a1 + 16))(&v19, a1, 0.0, 0.0, 0.0);
  PCMatrix44Tmpl<double>::transform<double>(&v19, &v42, &v16);
  v9 = *a3 - v16;
  v10 = *(a3 + 1) - v17;
  v11 = *(a3 + 2) - v18;
  v12 = v9 * *&v20 + v10 * *(&v20 + 1) + v11 * *&v21;
  v13 = v9 * *&v22 + v10 * *(&v22 + 1) + v11 * *&v23;
  v14 = v9 * *&v24 + v10 * *(&v24 + 1) + v11 * *&v25;
  (*(*a1 + 440))(a1, &v39);
  v39 = v12 + v39;
  v40 = v13 + v40;
  v41 = v14 + v41;
  return (*(*a1 + 448))(a1, &v39);
}

void sub_26015572C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x260155584);
}

void OZSceneCamera::getEulerRotation(OZSceneCamera *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  CameraNode = OZSceneCamera::getCameraNode(this);
  if (CameraNode)
  {
    v4 = CameraNode;
    memset(&v9, 0, sizeof(v9));
    v5 = (*(*CameraNode + 272))(CameraNode);
    OZScene::getCurrentTime(v5, &v9);
    OZChannel::getValueAsDouble((v4 + 2240), &v9, 0.0);
    *a2 = v6;
    OZChannel::getValueAsDouble((v4 + 2392), &v9, 0.0);
    a2[1] = v7;
    OZChannel::getValueAsDouble((v4 + 2544), &v9, 0.0);
    a2[2] = v8;
  }
}

void OZSceneCamera::getScale(OZSceneCamera *this)
{
  CameraNode = OZSceneCamera::getCameraNode(this);
  if (CameraNode)
  {
    v3 = CameraNode;
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v4);
    }

    else
    {
      v4 = *(this + 1);
    }

    OZChannel::getValueAsDouble((v3 + 4880), &v4, 0.0);
  }
}

void *OZSceneCamera::setScale(OZSceneCamera *this, double a2)
{
  result = OZSceneCamera::getCameraNode(this);
  if (result)
  {
    v5 = result;
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v6);
    }

    else
    {
      v6 = *(this + 24);
      v7 = *(this + 5);
    }

    (*(v5[572] + 712))(v5 + 572, &v6, 0, a2);
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v6);
    }

    else
    {
      v6 = *(this + 24);
      v7 = *(this + 5);
    }

    (*(v5[591] + 712))(v5 + 591, &v6, 0, a2);
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v6);
    }

    else
    {
      v6 = *(this + 24);
      v7 = *(this + 5);
    }

    return (*(v5[610] + 712))(v5 + 610, &v6, 0, a2);
  }

  return result;
}

void OZSceneCamera::getAngleOfView(OZSceneCamera *this)
{
  CameraNode = OZSceneCamera::getCameraNode(this);
  if (CameraNode)
  {
    v3 = CameraNode;
    memset(&v4, 0, sizeof(v4));
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v4);
    }

    else
    {
      v4 = *(this + 1);
    }

    OZChannel::getValueAsDouble((v3 + 6808), &v4, 0.0);
  }
}

void *OZSceneCamera::setAngleOfView(OZSceneCamera *this, double a2)
{
  result = OZSceneCamera::getCameraNode(this);
  if (result)
  {
    v5 = result;
    v6 = 0uLL;
    v7 = 0;
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v6);
    }

    else
    {
      v6 = *(this + 24);
      v7 = *(this + 5);
    }

    return (*(*(v5 + 6808) + 712))(v5 + 6808, &v6, 0, a2);
  }

  return result;
}

void OZSceneCamera::getNearPlane(OZSceneCamera *this)
{
  CameraNode = OZSceneCamera::getCameraNode(this);
  if (CameraNode)
  {
    v3 = CameraNode;
    memset(&v4, 0, sizeof(v4));
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v4);
    }

    else
    {
      v4 = *(this + 1);
    }

    OZChannel::getValueAsDouble((v3 + 6960), &v4, 0.0);
  }
}

void *OZSceneCamera::setNearPlane(OZSceneCamera *this, double a2)
{
  result = OZSceneCamera::getCameraNode(this);
  if (result)
  {
    v5 = result;
    v6 = 0uLL;
    v7 = 0;
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v6);
    }

    else
    {
      v6 = *(this + 24);
      v7 = *(this + 5);
    }

    return (*(*(v5 + 6960) + 712))(v5 + 6960, &v6, 0, a2);
  }

  return result;
}

void OZSceneCamera::getNearPlaneFade(OZSceneCamera *this)
{
  CameraNode = OZSceneCamera::getCameraNode(this);
  if (CameraNode)
  {
    v3 = CameraNode;
    memset(&v4, 0, sizeof(v4));
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v4);
    }

    else
    {
      v4 = *(this + 1);
    }

    OZChannel::getValueAsDouble((v3 + 7264), &v4, 0.0);
  }
}

void *OZSceneCamera::setNearPlaneFade(OZSceneCamera *this, double a2)
{
  result = OZSceneCamera::getCameraNode(this);
  if (result)
  {
    v5 = result;
    v6 = 0uLL;
    v7 = 0;
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v6);
    }

    else
    {
      v6 = *(this + 24);
      v7 = *(this + 5);
    }

    return (*(*(v5 + 7264) + 712))(v5 + 7264, &v6, 0, a2);
  }

  return result;
}

void OZSceneCamera::getFarPlane(OZSceneCamera *this)
{
  CameraNode = OZSceneCamera::getCameraNode(this);
  if (CameraNode)
  {
    v3 = CameraNode;
    memset(&v4, 0, sizeof(v4));
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v4);
    }

    else
    {
      v4 = *(this + 1);
    }

    OZChannel::getValueAsDouble((v3 + 7112), &v4, 0.0);
  }
}

void *OZSceneCamera::setFarPlane(OZSceneCamera *this, double a2)
{
  result = OZSceneCamera::getCameraNode(this);
  if (result)
  {
    v5 = result;
    v6 = 0uLL;
    v7 = 0;
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v6);
    }

    else
    {
      v6 = *(this + 24);
      v7 = *(this + 5);
    }

    return (*(*(v5 + 7112) + 712))(v5 + 7112, &v6, 0, a2);
  }

  return result;
}

void OZSceneCamera::getFarPlaneFade(OZSceneCamera *this)
{
  CameraNode = OZSceneCamera::getCameraNode(this);
  if (CameraNode)
  {
    v3 = CameraNode;
    memset(&v4, 0, sizeof(v4));
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v4);
    }

    else
    {
      v4 = *(this + 1);
    }

    OZChannel::getValueAsDouble((v3 + 7416), &v4, 0.0);
  }
}

void *OZSceneCamera::setFarPlaneFade(OZSceneCamera *this, double a2)
{
  result = OZSceneCamera::getCameraNode(this);
  if (result)
  {
    v5 = result;
    v6 = 0uLL;
    v7 = 0;
    if (*(this + 20) == 1)
    {
      OZScene::getCurrentTime(*(this + 1), &v6);
    }

    else
    {
      v6 = *(this + 24);
      v7 = *(this + 5);
    }

    return (*(*(v5 + 7416) + 712))(v5 + 7416, &v6, 0, a2);
  }

  return result;
}

BOOL OZSceneCamera::getFarCrop(OZSceneCamera *this)
{
  CameraNode = OZSceneCamera::getCameraNode(this);
  if (!CameraNode)
  {
    return 1;
  }

  v3 = CameraNode;
  memset(&v8, 0, sizeof(v8));
  if (*(this + 20) == 1)
  {
    OZScene::getCurrentTime(*(this + 1), &v8);
  }

  else
  {
    v8 = *(this + 1);
  }

  OZChannel::getValueAsDouble((v3 + 7112), &v8, 0.0);
  v6 = v5;
  v9 = 0.0;
  (*(**(*(v3 + 903) + 8) + 256))(*(*(v3 + 903) + 8), &v9, v7);
  return v6 < v9;
}

uint64_t OZSceneCamera::getCameraModel(OZSceneCamera *this)
{
  CameraNode = OZSceneCamera::getCameraNode(this);
  if (!CameraNode)
  {
    return 1;
  }

  v3 = CameraNode;
  memset(&v5, 0, sizeof(v5));
  if (*(this + 20) == 1)
  {
    OZScene::getCurrentTime(*(this + 1), &v5);
  }

  else
  {
    v5 = *(this + 1);
  }

  return OZChannel::getValueAsInt((v3 + 6552), &v5, 0.0);
}

void *OZSceneCamera::setCameraModel(uint64_t a1, unsigned int a2)
{
  result = OZSceneCamera::getCameraNode(a1);
  if (result)
  {
    v5 = result;
    v7 = 0uLL;
    v8 = 0;
    if (*(a1 + 20) == 1)
    {
      CurrentTime = OZScene::getCurrentTime(*(a1 + 8), &v7);
    }

    else
    {
      CurrentTime = *(a1 + 24);
      v7 = CurrentTime;
      v8 = *(a1 + 40);
    }

    result = (*(*a1 + 632))(a1, CurrentTime);
    if (result != a2)
    {
      return (*(v5[819] + 712))(v5 + 819, &v7, 0, a2);
    }
  }

  return result;
}

uint64_t OZCamera::OZCamera_cameraTypeImpl::getInstance(OZCamera::OZCamera_cameraTypeImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_cameraTypeImpl::getInstance(void)::OZCamera_cameraTypeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_cameraTypeImpl::getInstance(void)::OZCamera_cameraTypeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_cameraTypeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_cameraTypeImpl::_OZCamera_cameraType;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_cameraTypeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_cameraTypeImpl::_OZCamera_cameraType)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_angleOfViewImpl::getInstance(OZCamera::OZCamera_angleOfViewImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_angleOfViewImpl::getInstance(void)::OZCamera_angleOfViewImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_angleOfViewImpl::getInstance(void)::OZCamera_angleOfViewImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_angleOfViewImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_angleOfViewImpl::_OZCamera_angleOfView;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_angleOfViewImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_angleOfViewImpl::_OZCamera_angleOfView)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_angleOfViewInfo::getInstance(OZCamera::OZCamera_angleOfViewInfo *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_angleOfViewInfo::getInstance(void)::OZCamera_angleOfViewInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_angleOfViewInfo::getInstance(void)::OZCamera_angleOfViewInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_angleOfViewInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_angleOfViewInfo::_OZCamera_angleOfViewInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_angleOfViewInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_angleOfViewInfo::_OZCamera_angleOfViewInfo)
  {
    operator new();
  }
}

OZChannelInfo *OZCamera::OZCamera_angleOfViewInfo::OZCamera_angleOfViewInfo(OZChannelInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 165.0, 1.0, 0.01, 1.0, "°");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287292440;
  *(this + 10) = &unk_287292460;
  return this;
}

uint64_t OZCamera::OZCamera_nearPlaneImpl::getInstance(OZCamera::OZCamera_nearPlaneImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_nearPlaneImpl::getInstance(void)::OZCamera_nearPlaneImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_nearPlaneImpl::getInstance(void)::OZCamera_nearPlaneImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_nearPlaneImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_nearPlaneImpl::_OZCamera_nearPlane;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_nearPlaneImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_nearPlaneImpl::_OZCamera_nearPlane)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_nearPlaneInfo::getInstance(OZCamera::OZCamera_nearPlaneInfo *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_nearPlaneInfo::getInstance(void)::OZCamera_nearPlaneInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_nearPlaneInfo::getInstance(void)::OZCamera_nearPlaneInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_nearPlaneInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_nearPlaneInfo::_OZCamera_nearPlaneInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_nearPlaneInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_nearPlaneInfo::_OZCamera_nearPlaneInfo)
  {
    operator new();
  }
}

OZCamera::OZCamera_nearPlaneInfo *OZCamera::OZCamera_nearPlaneInfo::OZCamera_nearPlaneInfo(OZCamera::OZCamera_nearPlaneInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 1.0, 2000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287292530;
  *(this + 10) = &unk_287292550;
  return this;
}

uint64_t OZCamera::OZCamera_farPlaneImpl::getInstance(OZCamera::OZCamera_farPlaneImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_farPlaneImpl::getInstance(void)::OZCamera_farPlaneImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_farPlaneImpl::getInstance(void)::OZCamera_farPlaneImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_farPlaneImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_farPlaneImpl::_OZCamera_farPlane;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_farPlaneImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_farPlaneImpl::_OZCamera_farPlane)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_farPlaneInfo::getInstance(OZCamera::OZCamera_farPlaneInfo *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_farPlaneInfo::getInstance(void)::OZCamera_farPlaneInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_farPlaneInfo::getInstance(void)::OZCamera_farPlaneInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_farPlaneInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_farPlaneInfo::_OZCamera_farPlaneInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_farPlaneInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_farPlaneInfo::_OZCamera_farPlaneInfo)
  {
    operator new();
  }
}

OZCamera::OZCamera_farPlaneInfo *OZCamera::OZCamera_farPlaneInfo::OZCamera_farPlaneInfo(OZCamera::OZCamera_farPlaneInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 100.0, 20000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287292620;
  *(this + 10) = &unk_287292640;
  return this;
}

uint64_t OZCamera::OZCamera_nearFadeImpl::getInstance(OZCamera::OZCamera_nearFadeImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_nearFadeImpl::getInstance(void)::OZCamera_nearFadeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_nearFadeImpl::getInstance(void)::OZCamera_nearFadeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_nearFadeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_nearFadeImpl::_OZCamera_nearFade;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_nearFadeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_nearFadeImpl::_OZCamera_nearFade)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_nearFadeInfo::getInstance(OZCamera::OZCamera_nearFadeInfo *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_nearFadeInfo::getInstance(void)::OZCamera_nearFadeInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_nearFadeInfo::getInstance(void)::OZCamera_nearFadeInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_nearFadeInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_nearFadeInfo::_OZCamera_nearFadeInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_nearFadeInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_nearFadeInfo::_OZCamera_nearFadeInfo)
  {
    operator new();
  }
}

OZCamera::OZCamera_nearFadeInfo *OZCamera::OZCamera_nearFadeInfo::OZCamera_nearFadeInfo(OZCamera::OZCamera_nearFadeInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 2000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287292710;
  *(this + 10) = &unk_287292730;
  return this;
}

uint64_t OZCamera::OZCamera_farFadeImpl::getInstance(OZCamera::OZCamera_farFadeImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_farFadeImpl::getInstance(void)::OZCamera_farFadeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_farFadeImpl::getInstance(void)::OZCamera_farFadeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_farFadeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_farFadeImpl::_OZCamera_farFade;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_farFadeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_farFadeImpl::_OZCamera_farFade)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_farFadeInfo::getInstance(OZCamera::OZCamera_farFadeInfo *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_farFadeInfo::getInstance(void)::OZCamera_farFadeInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_farFadeInfo::getInstance(void)::OZCamera_farFadeInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_farFadeInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_farFadeInfo::_OZCamera_farFadeInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_farFadeInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_farFadeInfo::_OZCamera_farFadeInfo)
  {
    operator new();
  }
}

OZCamera::OZCamera_farFadeInfo *OZCamera::OZCamera_farFadeInfo::OZCamera_farFadeInfo(OZCamera::OZCamera_farFadeInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 20000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287292800;
  *(this + 10) = &unk_287292820;
  return this;
}

uint64_t OZCamera::OZCamera_apertureImpl::getInstance(OZCamera::OZCamera_apertureImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_apertureImpl::getInstance(void)::OZCamera_apertureImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_apertureImpl::getInstance(void)::OZCamera_apertureImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_apertureImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_apertureImpl::_OZCamera_aperture;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_apertureImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_apertureImpl::_OZCamera_aperture)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_apertureInfo::getInstance(OZCamera::OZCamera_apertureInfo *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_apertureInfo::getInstance(void)::OZCamera_apertureInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_apertureInfo::getInstance(void)::OZCamera_apertureInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_apertureInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_apertureInfo::_OZCamera_apertureInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_apertureInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_apertureInfo::_OZCamera_apertureInfo)
  {
    operator new();
  }
}

OZCamera::OZCamera_apertureInfo *OZCamera::OZCamera_apertureInfo::OZCamera_apertureInfo(OZCamera::OZCamera_apertureInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872928F0;
  *(this + 10) = &unk_287292910;
  return this;
}

uint64_t OZCamera::OZCamera_dofOffsetInfo::getInstance(OZCamera::OZCamera_dofOffsetInfo *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_dofOffsetInfo::getInstance(void)::OZCamera_dofOffsetInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_dofOffsetInfo::getInstance(void)::OZCamera_dofOffsetInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofOffsetInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_dofOffsetInfo::_OZCamera_dofOffsetInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofOffsetInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_dofOffsetInfo::_OZCamera_dofOffsetInfo)
  {
    operator new();
  }
}

OZCamera::OZCamera_dofOffsetInfo *OZCamera::OZCamera_dofOffsetInfo::OZCamera_dofOffsetInfo(OZCamera::OZCamera_dofOffsetInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -1000.0, 1000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287292968;
  *(this + 10) = &unk_287292988;
  return this;
}

uint64_t OZCamera::OZCamera_dofNearImpl::getInstance(OZCamera::OZCamera_dofNearImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_dofNearImpl::getInstance(void)::OZCamera_dofNearImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_dofNearImpl::getInstance(void)::OZCamera_dofNearImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofNearImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_dofNearImpl::_OZCamera_dofNear;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofNearImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_dofNearImpl::_OZCamera_dofNear)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_dofNearInfo::getInstance(OZCamera::OZCamera_dofNearInfo *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_dofNearInfo::getInstance(void)::OZCamera_dofNearInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_dofNearInfo::getInstance(void)::OZCamera_dofNearInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofNearInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_dofNearInfo::_OZCamera_dofNearInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofNearInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_dofNearInfo::_OZCamera_dofNearInfo)
  {
    operator new();
  }
}

OZCamera::OZCamera_dofNearInfo *OZCamera::OZCamera_dofNearInfo::OZCamera_dofNearInfo(OZCamera::OZCamera_dofNearInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 2000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287292A58;
  *(this + 10) = &unk_287292A78;
  return this;
}

uint64_t OZCamera::OZCamera_dofFarImpl::getInstance(OZCamera::OZCamera_dofFarImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_dofFarImpl::getInstance(void)::OZCamera_dofFarImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_dofFarImpl::getInstance(void)::OZCamera_dofFarImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFarImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_dofFarImpl::_OZCamera_dofFar;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFarImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_dofFarImpl::_OZCamera_dofFar)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_dofFarInfo::getInstance(OZCamera::OZCamera_dofFarInfo *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_dofFarInfo::getInstance(void)::OZCamera_dofFarInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_dofFarInfo::getInstance(void)::OZCamera_dofFarInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFarInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_dofFarInfo::_OZCamera_dofFarInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFarInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_dofFarInfo::_OZCamera_dofFarInfo)
  {
    operator new();
  }
}

OZCamera::OZCamera_dofFarInfo *OZCamera::OZCamera_dofFarInfo::OZCamera_dofFarInfo(OZCamera::OZCamera_dofFarInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 2000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287292B48;
  *(this + 10) = &unk_287292B68;
  return this;
}

uint64_t OZCamera::OZCamera_dofFilterImpl::getInstance(OZCamera::OZCamera_dofFilterImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_dofFilterImpl::getInstance(void)::OZCamera_dofFilterImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_dofFilterImpl::getInstance(void)::OZCamera_dofFilterImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFilterImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_dofFilterImpl::_OZCamera_dofFilter;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFilterImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_dofFilterImpl::_OZCamera_dofFilter)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_dofFilterShapeImpl::getInstance(OZCamera::OZCamera_dofFilterShapeImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_dofFilterShapeImpl::getInstance(void)::OZCamera_dofFilterShapeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_dofFilterShapeImpl::getInstance(void)::OZCamera_dofFilterShapeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFilterShapeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_dofFilterShapeImpl::_OZCamera_dofFilterShape;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFilterShapeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_dofFilterShapeImpl::_OZCamera_dofFilterShape)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_dofFilterSidesImpl::getInstance(OZCamera::OZCamera_dofFilterSidesImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_dofFilterSidesImpl::getInstance(void)::OZCamera_dofFilterSidesImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_dofFilterSidesImpl::getInstance(void)::OZCamera_dofFilterSidesImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFilterSidesImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_dofFilterSidesImpl::_OZCamera_dofFilterSides;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFilterSidesImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_dofFilterSidesImpl::_OZCamera_dofFilterSides)
  {
    operator new();
  }
}

uint64_t OZCamera::OZCamera_dofFilterSidesInfo::getInstance(OZCamera::OZCamera_dofFilterSidesInfo *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_dofFilterSidesInfo::getInstance(void)::OZCamera_dofFilterSidesInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_dofFilterSidesInfo::getInstance(void)::OZCamera_dofFilterSidesInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFilterSidesInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_dofFilterSidesInfo::_OZCamera_dofFilterSidesInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofFilterSidesInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_dofFilterSidesInfo::_OZCamera_dofFilterSidesInfo)
  {
    operator new();
  }
}

OZCamera::OZCamera_dofFilterSidesInfo *OZCamera::OZCamera_dofFilterSidesInfo::OZCamera_dofFilterSidesInfo(OZCamera::OZCamera_dofFilterSidesInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 3.0, 16.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287292D28;
  *(this + 10) = &unk_287292D48;
  return this;
}

uint64_t OZCamera::OZCamera_dofDepthModeImpl::getInstance(OZCamera::OZCamera_dofDepthModeImpl *this)
{
  if (atomic_load_explicit(&OZCamera::OZCamera_dofDepthModeImpl::getInstance(void)::OZCamera_dofDepthModeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera::OZCamera_dofDepthModeImpl::getInstance(void)::OZCamera_dofDepthModeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofDepthModeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera::OZCamera_dofDepthModeImpl::_OZCamera_dofDepthMode;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera::OZCamera_dofDepthModeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZCamera::OZCamera_dofDepthModeImpl::_OZCamera_dofDepthMode)
  {
    operator new();
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v64 = *(a2 - 1);
        v65 = *v9;
        if (*(v64 + 24) < *(*v9 + 24))
        {
          *v9 = v64;
          *(a2 - 1) = v65;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v66 = v9 + 1;
      v67 = v9[1];
      v68 = v9 + 2;
      v69 = v9[2];
      v70 = *v9;
      v71 = *(v67 + 3);
      v72 = *(*v9 + 24);
      v73 = *(v69 + 24);
      if (v71 >= v72)
      {
        if (v73 >= v71)
        {
          goto LABEL_105;
        }

        *v66 = v69;
        *v68 = v67;
        v74 = v9;
        v75 = (v9 + 1);
        result = v67;
        if (v73 < v72)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v74 = v9;
        v75 = (v9 + 2);
        result = *v9;
        if (v73 >= v71)
        {
          *v9 = v67;
          v9[1] = v70;
          v74 = v9 + 1;
          v75 = (v9 + 2);
          result = v70;
          if (v73 >= v72)
          {
LABEL_105:
            v67 = v69;
            goto LABEL_106;
          }
        }

LABEL_97:
        *v74 = v69;
        *v75 = v70;
        v67 = result;
      }

LABEL_106:
      v82 = *(a2 - 1);
      if (*(v82 + 24) < *(v67 + 3))
      {
        *v68 = v82;
        *(a2 - 1) = v67;
        v83 = *v68;
        v84 = *v66;
        v85 = *(v83 + 24);
        if (v85 < *(v84 + 24))
        {
          v9[1] = v83;
          v9[2] = v84;
          v86 = *v9;
          if (v85 < *(*v9 + 24))
          {
            *v9 = v83;
            v9[1] = v86;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **>(v9, a2);
      }

      else if (v9 != a2)
      {
        while (v8 + 1 != a2)
        {
          v79 = *v8;
          v78 = v8[1];
          v81 = ++v8;
          v80 = *(v78 + 24);
          if (v80 < *(v79 + 24))
          {
            do
            {
              *v81 = v79;
              v79 = *(v81 - 2);
              --v81;
            }

            while (v80 < *(v79 + 24));
            *v81 = v78;
          }
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **,RayHit **>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    v16 = *(v15 + 24);
    if (v12 >= 0x81)
    {
      v17 = *v13;
      v18 = *v9;
      v19 = *(*v13 + 24);
      v20 = *(*v9 + 24);
      if (v19 >= v20)
      {
        if (v16 < v19)
        {
          *v13 = v15;
          *(a2 - 1) = v17;
          v25 = *v9;
          if (*(*v13 + 24) < *(*v9 + 24))
          {
            *v9 = *v13;
            *v13 = v25;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v17;
        *v13 = v18;
        v27 = *(a2 - 1);
        if (*(v27 + 24) < v20)
        {
          *v13 = v27;
LABEL_29:
          *(a2 - 1) = v18;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v9[1];
      v31 = *(v29 + 24);
      v32 = *(v30 + 24);
      v33 = *(a2 - 2);
      v34 = *(v33 + 24);
      if (v31 >= v32)
      {
        if (v34 < v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v9[1];
          if (*(*v28 + 24) < *(v35 + 24))
          {
            v9[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[1] = v33;
          goto LABEL_43;
        }

        v9[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (*(v37 + 24) < v32)
        {
          *v28 = v37;
LABEL_43:
          *(a2 - 2) = v30;
        }
      }

      v40 = v13[1];
      v38 = v13 + 1;
      v39 = v40;
      v41 = v9[2];
      v42 = *(v40 + 24);
      v43 = *(v41 + 24);
      v44 = *(a2 - 3);
      v45 = *(v44 + 24);
      if (v42 >= v43)
      {
        if (v45 < v42)
        {
          *v38 = v44;
          *(a2 - 3) = v39;
          v46 = v9[2];
          if (*(*v38 + 24) < *(v46 + 24))
          {
            v9[2] = *v38;
            *v38 = v46;
          }
        }
      }

      else
      {
        if (v45 < v42)
        {
          v9[2] = v44;
          goto LABEL_52;
        }

        v9[2] = v39;
        *v38 = v41;
        v47 = *(a2 - 3);
        if (*(v47 + 24) < v43)
        {
          *v38 = v47;
LABEL_52:
          *(a2 - 3) = v41;
        }
      }

      v48 = *v14;
      v49 = *v28;
      v50 = *(*v14 + 24);
      v51 = *(*v28 + 24);
      v52 = *v38;
      v53 = *(*v38 + 24);
      if (v50 >= v51)
      {
        if (v53 < v50)
        {
          *v14 = v52;
          *v38 = v48;
          v38 = v14;
          v48 = v49;
          if (v53 < v51)
          {
            goto LABEL_59;
          }

          v48 = v52;
        }
      }

      else
      {
        if (v53 >= v50)
        {
          *v28 = v48;
          *v14 = v49;
          v28 = v14;
          v48 = v52;
          if (v53 >= v51)
          {
            v48 = v49;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v28 = v52;
        *v38 = v49;
      }

LABEL_60:
      v54 = *v9;
      *v9 = v48;
      *v14 = v54;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v21 = *v9;
    v22 = *v13;
    v23 = *(*v9 + 24);
    v24 = *(*v14 + 24);
    if (v23 < v24)
    {
      if (v16 < v23)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v21;
      *v9 = v22;
      v36 = *(a2 - 1);
      if (*(v36 + 24) < v24)
      {
        *v9 = v36;
LABEL_38:
        *(a2 - 1) = v22;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v16 >= v23)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v21;
    v26 = *v14;
    if (*(*v9 + 24) >= *(*v14 + 24))
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v26;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(*(v9 - 1) + 24) >= *(*v9 + 24))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,RayHit **,RayHitCmp &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v55 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,RayHit **,RayHitCmp &>(v9, a2);
    if ((v56 & 1) == 0)
    {
      goto LABEL_67;
    }

    v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **>(v9, v55);
    v9 = v55 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **>(v55 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v55;
      if (v57)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v57)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **,false>(v8, v55, a3, -v11, a5 & 1);
      v9 = v55 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v58 = *v9;
  v59 = v9[1];
  v60 = *(v59 + 24);
  v61 = *(*v9 + 24);
  v62 = *(a2 - 1);
  v63 = *(v62 + 24);
  if (v60 >= v61)
  {
    if (v63 < v60)
    {
      v9[1] = v62;
      *(a2 - 1) = v59;
      v77 = *v9;
      v76 = v9[1];
      if (*(v76 + 24) < *(*v9 + 24))
      {
        *v9 = v76;
        v9[1] = v77;
      }
    }
  }

  else
  {
    if (v63 >= v60)
    {
      *v9 = v59;
      v9[1] = v58;
      v87 = *(a2 - 1);
      if (*(v87 + 24) >= v61)
      {
        return result;
      }

      v9[1] = v87;
    }

    else
    {
      *v9 = v62;
    }

    *(a2 - 1) = v58;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 24);
  v8 = *(*result + 24);
  v9 = *a3;
  v10 = *(*a3 + 24);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 24) < *(*result + 24))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 24) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 24) < *(v5 + 24))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 24) < *(*a2 + 24))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 24) < *(*result + 24))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 24) < *(*a4 + 24))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 24) < *(*a3 + 24))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 24) < *(*a2 + 24))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 24) < *(*result + 24))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = *v4;
        v5 = v4[1];
        v4 = v2;
        v7 = *(v5 + 24);
        if (v7 < *(v6 + 24))
        {
          v8 = v3;
          while (1)
          {
            *(result + v8 + 8) = v6;
            if (!v8)
            {
              break;
            }

            v6 = *(result + v8 - 8);
            v8 -= 8;
            if (v7 >= *(v6 + 24))
            {
              v9 = (result + v8 + 8);
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v5;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,RayHit **,RayHitCmp &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3 >= *(*(a2 - 1) + 24))
  {
    v6 = a1 + 1;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      ++v6;
    }

    while (v3 >= *(*v4 + 24));
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[1];
      ++v4;
    }

    while (v3 >= *(v5 + 24));
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *--a2;
    }

    while (v3 < *(v7 + 24));
  }

  if (v4 < a2)
  {
    v8 = *v4;
    v9 = *a2;
    do
    {
      *v4 = v9;
      *a2 = v8;
      do
      {
        v10 = v4[1];
        ++v4;
        v8 = v10;
      }

      while (v3 >= *(v10 + 24));
      do
      {
        v11 = *--a2;
        v9 = v11;
      }

      while (v3 < *(v11 + 24));
    }

    while (v4 < a2);
  }

  if (v4 - 1 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,RayHit **,RayHitCmp &>(void *a1, void *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(*a1 + 24);
  do
  {
    v5 = a1[++v2];
  }

  while (*(v5 + 24) < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *--a2;
    }

    while (*(v9 + 24) >= v4);
  }

  else
  {
    do
    {
      v8 = *--a2;
    }

    while (*(v8 + 24) >= v4);
  }

  if (v6 < a2)
  {
    v10 = *a2;
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      *v11 = v10;
      *v12 = v5;
      do
      {
        v13 = v11[1];
        ++v11;
        v5 = v13;
      }

      while (*(v13 + 24) < v4);
      do
      {
        v14 = *--v12;
        v10 = v14;
      }

      while (*(v14 + 24) >= v4);
    }

    while (v11 < v12);
    v7 = v11 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 24);
      v8 = *(*a1 + 24);
      v9 = *(a2 - 1);
      v10 = *(v9 + 24);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 24) < *(*a1 + 24))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 24) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 24);
    v26 = *(*a1 + 24);
    v27 = *(v23 + 24);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 24) < *(v21 + 24))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 24);
          if (v45 < *(v44 + 24))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 24))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 24) < *(*a1 + 24))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 24);
  v16 = *(*a1 + 24);
  v17 = *(v11 + 24);
  if (v15 < v16)
  {
    v18 = a1;
    v19 = a1 + 2;
    if (v17 >= v15)
    {
      *a1 = v13;
      a1[1] = v14;
      v18 = a1 + 1;
      v19 = a1 + 2;
      if (v17 >= v16)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v18 = v11;
    *v19 = v14;
    goto LABEL_27;
  }

  if (v17 < v15)
  {
    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
    if (v17 < v16)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 24);
    if (v38 < *(v37 + 24))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 24))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

void *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **,RayHit **>(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*(*v12 + 24) < *(*a1 + 24))
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(*(v21 - 1) + 24) < *(v22 + 24))
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 == --v6)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v6;
          *v6 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **>(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *(*v8 + 24) < *(v8[1] + 24))
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      v12 = *(*a4 + 24);
      if (*(*v8 + 24) >= v12)
      {
        do
        {
          v13 = v8;
          *a4 = v10;
          if (v5 < v7)
          {
            break;
          }

          v14 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v15 = v14 + 2;
          if (v15 < a3 && *(*v8 + 24) < *(v8[1] + 24))
          {
            ++v8;
            v7 = v15;
          }

          v10 = *v8;
          a4 = v13;
        }

        while (*(*v8 + 24) >= v12);
        *v13 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,RayHitCmp &,RayHit **>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *(v9 + 24);
    if (*(*v5 + 24) < v10)
    {
      do
      {
        v11 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v11;
      }

      while (*(*v5 + 24) < v10);
      *v11 = v8;
    }
  }

  return result;
}

uint64_t localizedString(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ozone.framework"];

  return [v4 localizedStringForKey:a1 value:@"** Invalid **" table:a2];
}

void *OZApplication::getCurrentDoc(OZApplication *this)
{
  perThreadDocument();
  result = pthread_getspecific(perThreadDocument(void)::result);
  if (!result)
  {
    return *(this + 1);
  }

  return result;
}

OZDocument *OZApplication::setCurrentDoc(OZApplication *this, OZDocument *a2)
{
  perThreadDocument();
  result = pthread_getspecific(perThreadDocument(void)::result);
  if (result)
  {
    v5 = result == a2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!result && *(this + 1) != a2)
    {
      *(this + 1) = a2;
    }
  }

  else
  {
    perThreadDocument();
    v6 = perThreadDocument(void)::result;

    return pthread_setspecific(v6, a2);
  }

  return result;
}

uint64_t OZApplication::setPerThreadCurrentDoc(OZApplication *this, OZDocument *a2)
{
  perThreadDocument();
  v3 = perThreadDocument(void)::result;

  return pthread_setspecific(v3, a2);
}

uint64_t OZApplication::documentWillDie(uint64_t this, OZDocument *a2)
{
  if (*(this + 8) == a2)
  {
    *(this + 8) = 0;
  }

  return this;
}

void perThreadDocument(void)
{
  {
    pthread_key_create(&perThreadDocument(void)::result, PCThreadSpecific<OZDocument>::destroy);
  }
}

uint64_t PCThreadSpecific<OZDocument>::destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void OZMaterialCompoundLayer::OZMaterialCompoundLayer(OZMaterialCompoundLayer *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZMaterialLayerBase::OZMaterialLayerBase(this, a2, a3, a4);
  *v5 = &unk_287292E18;
  v5[2] = &unk_287293278;
  PCURL::PCURL(&v7, @"Material Compound Scale");
  OZChannelScale::OZChannelScale((this + 1224), &v7, this, 0x64u, 2u, 2u, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Material Compound Translate");
  OZChannelPosition::OZChannelPosition((this + 1664), &v7, this, 0x65u, 2u, 2u, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Material Compound Rotate");
  OZChannelAngle::OZChannelAngle((this + 2368), &v7, this, 0x66u, 2, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Image Placement Mode Enum");
  PCURL::PCURL(&v6, @"Channel Image Placement Mode Label");
  OZChannelEnum::OZChannelEnum((this + 2520), 0, &v7, &v6, this, 0x67u, 2, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Map Transform Label");
  OZChannelMaterialMapTransform::OZChannelMaterialMapTransform((this + 2776), &v7, this, 0xC8u, 0, 0);
  PCString::~PCString(&v7);
}

void sub_260159DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannelEnum::~OZChannelEnum((v12 + 2520));
  OZChannel::~OZChannel((v12 + 2368));
  OZChannelPosition::~OZChannelPosition((v12 + 1664));
  OZChannel2D::~OZChannel2D((v12 + 1224));
  OZMaterialLayerBase::~OZMaterialLayerBase(v12);
  _Unwind_Resume(a1);
}

void OZMaterialCompoundLayer::OZMaterialCompoundLayer(OZMaterialCompoundLayer *this, const OZMaterialCompoundLayer *a2, OZChannelFolder *a3)
{
  OZMaterialLayerBase::OZMaterialLayerBase(this, a2, a3);
  *v5 = &unk_287292E18;
  v5[2] = &unk_287293278;
  OZChannelScale::OZChannelScale((v5 + 153), (a2 + 1224), this);
  OZChannelPosition::OZChannelPosition((this + 1664), (a2 + 1664), this);
  OZChannel::OZChannel((this + 2368), (a2 + 2368), this);
  *(this + 296) = &unk_287246030;
  *(this + 298) = &unk_287246390;
  OZChannelEnum::OZChannelEnum((this + 2520), (a2 + 2520), this);
  OZChannelMaterialMapTransform::OZChannelMaterialMapTransform((this + 2776), (a2 + 2776), this);
}

void sub_260159F60(_Unwind_Exception *a1)
{
  OZChannelEnum::~OZChannelEnum((v1 + 2520));
  OZChannel::~OZChannel(v2);
  OZChannelPosition::~OZChannelPosition((v1 + 1664));
  OZChannel2D::~OZChannel2D((v1 + 1224));
  OZMaterialLayerBase::~OZMaterialLayerBase(v1);
  _Unwind_Resume(a1);
}

uint64_t OZMaterialCompoundLayer::parseEnd(OZMaterialCompoundLayer *this, PCSerializerReadStream *a2)
{
  v3 = OZMaterialLayerBase::parseEnd(this, a2);
  if (!OZChannelBase::testFlag((this + 1224), 2))
  {
    (*(*(this + 596) + 232))(this + 4768, this + 1360, 0);
    (*(*(this + 615) + 232))(this + 4920, this + 1512, 0);
    (*(*(this + 491) + 232))(this + 3928, this + 1664, 0);
    OZChannelBase::setFlag((this + 3928), 4096, 0);
    (*(*(this + 782) + 232))(this + 6256, this + 2368, 0);
    (*(*(this + 459) + 232))(this + 3672, this + 2520, 0);
    OZChannelBase::setFlag((this + 1224), 2, 0);
    OZChannelBase::resetFlag((this + 1224), 0x400000, 0);
    OZChannelBase::setFlag((this + 1664), 2, 0);
    OZChannelBase::resetFlag((this + 1664), 0x400000, 0);
    OZChannelBase::setFlag((this + 2368), 2, 0);
    OZChannelBase::resetFlag((this + 2368), 0x400000, 0);
    OZChannelBase::setFlag((this + 2520), 2, 0);
    OZChannelBase::resetFlag((this + 2520), 0x400000, 0);
  }

  return v3;
}

OZChannelBase *showHideParam(OZChannelBase *a1, int a2)
{
  if (a2)
  {
    return OZChannelBase::resetFlag(a1, 0x400000, 0);
  }

  else
  {
    return OZChannelBase::setFlag(a1, 0x400000, 0);
  }
}

void OZMaterialCompoundLayer::setSubtypeTags(OZMaterialCompoundLayer *this)
{
  v26 = *MEMORY[0x277D85DE8];
  __src = 0;
  v23 = 0;
  v24 = 0;
  v1 = (*(*this + 952))(this, MEMORY[0x277CC08F0]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v2)
  {
    v3 = *v19;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v19 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [*(*(&v18 + 1) + 8 * i) objectForKey:@"tag"];
        if (!v5)
        {
          v23 = __src;
          goto LABEL_23;
        }

        v6 = [v5 intValue];
        v7 = v23;
        if (v23 >= v24)
        {
          v9 = __src;
          v10 = v23 - __src;
          v11 = (v23 - __src) >> 2;
          v12 = v11 + 1;
          if ((v11 + 1) >> 62)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v13 = v24 - __src;
          if ((v24 - __src) >> 1 > v12)
          {
            v12 = v13 >> 1;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v14 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v14);
          }

          *(4 * v11) = v6;
          v8 = 4 * v11 + 4;
          memcpy(0, v9, v10);
          v15 = __src;
          __src = 0;
          v23 = v8;
          v24 = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v23 = v6;
          v8 = (v7 + 4);
        }

        v23 = v8;
      }

      v2 = [v1 countByEnumeratingWithState:&v18 objects:v25 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
  v16 = __src;
  if (v23 != __src)
  {
    OZChannelEnum::setTags((this + 936), __src, (v23 - __src) >> 2);
    v16 = __src;
  }

  if (v16)
  {
    v23 = v16;
    operator delete(v16);
  }
}

void sub_26015A444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL OZMaterialCompoundLayer::getShouldRotateSide(OZMaterialCompoundLayer *this, const CMTime *a2)
{
  if (OZChannel::getValueAsInt((this + 2904), MEMORY[0x277CC08F0], 0.0))
  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    v5 = ObjectManipulator - 16;
    if (!ObjectManipulator)
    {
      v5 = 0;
    }

    v6 = (v5 + 2464);
  }

  else
  {
    v6 = (this + 3672);
  }

  return OZChannel::getValueAsInt(v6, a2, 0.0) == 0;
}

BOOL OZMaterialCompoundLayer::getUseTriplanarMapping(OZMaterialCompoundLayer *this, const CMTime *a2)
{
  if (OZChannel::getValueAsInt((this + 2904), MEMORY[0x277CC08F0], 0.0))
  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    v5 = ObjectManipulator - 16;
    if (!ObjectManipulator)
    {
      v5 = 0;
    }

    v6 = (v5 + 2464);
  }

  else
  {
    v6 = (this + 3672);
  }

  return OZChannel::getValueAsInt(v6, a2, 0.0) != 2;
}

void *OZMaterialCompoundLayer::setUpTexture(uint64_t a1, float *a2, uint64_t *a3, unsigned int a4, unsigned int a5, char a6, uint64_t a7, uint64_t a8, char a9, char a10, const void *a11, int a12)
{
  v17 = *a2;
  v18 = *(*a2 + 588);
  if (*(*a2 + 584) <= v18)
  {
    v19 = 2 * (v18 + 1) + 1;
  }

  else
  {
    v19 = *(*a2 + 584);
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize((v17 + 576), v18 + 1, v19);
  v20 = *(v17 + 592) + 152 * *(v17 + 588);
  *(v20 - 152) = *(a8 + 16);
  ProShade::Value::set(v20 - 144, 3, 7, a11);
  SamplerInfo = LiMaterial::getSamplerInfo(v17, *(a7 + 16));
  v22 = *(SamplerInfo + 328);
  v23 = *(SamplerInfo + 336);
  v24 = LiMaterial::obtainSamplerInfo(v17, *(a7 + 16));
  *(v24 + 316) = 1;
  *(v24 + 317) = a10;
  *(v24 + 318) = a9;
  *(v24 + 319) = 0;
  *(v24 + 320) = 1;
  *(v24 + 328) = v22;
  *(v24 + 332) = a12;
  *(v24 + 338) = BYTE2(v23);
  *(v24 + 336) = v23;
  *(v24 + 312) = 1;
  v25.f64[0] = a2[31];

  return OZMaterialCompoundLayer::setUpSampler(v25, v24, a2, a3, a7, a4, a5, a6);
}

void *OZMaterialCompoundLayer::setUpSampler(float64x2_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, unsigned int a6, unsigned int a7, char a8)
{
  v13 = *a3;
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
  if (a1.f64[0] != 1.0)
  {
    v25 = *&a1.f64[0];
    *&v26 = a1.f64[0] * 0.0;
    *(&v26 + 1) = a1.f64[0] * 0.0;
    *&v27 = a1.f64[0] * 0.0;
    *(&v27 + 1) = a1.f64[0] * 0.0;
    v28 = *&a1.f64[0];
    *&v29 = a1.f64[0] * 0.0;
    *(&v29 + 1) = a1.f64[0] * 0.0;
    *&v30 = a1.f64[0] * 0.0;
    *(&v30 + 1) = a1.f64[0] * 0.0;
    v31 = *&a1.f64[0];
    *&v32 = a1.f64[0] * 0.0;
  }

  v14 = a6;
  a1.f64[0] = vcvtd_n_f64_u32(a6, 1uLL);
  v15 = a7;
  PCMatrix44Tmpl<double>::leftTranslate(&v25, a1, vcvtd_n_f64_u32(a7, 1uLL), 0.0);
  LiMaterial::setTexture(v13, a5, a4, a8, &v25);
  v16 = v14 * -0.5;
  v17 = v15 * -0.5;
  v18 = *(v13 + 588);
  if (*(v13 + 584) <= v18)
  {
    v19 = 2 * (v18 + 1) + 1;
  }

  else
  {
    v19 = *(v13 + 584);
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize((v13 + 576), v18 + 1, v19);
  v20 = *(v13 + 592) + 152 * *(v13 + 588);
  *(v20 - 152) = *(a5 + 48);
  v35[0] = v16;
  v35[1] = v17;
  v35[2] = a6;
  v35[3] = a7;
  ProShade::Value::set(v20 - 144, 3, 4, v35);
  v21 = *(v13 + 588);
  if (*(v13 + 584) <= v21)
  {
    v22 = 2 * (v21 + 1) + 1;
  }

  else
  {
    v22 = *(v13 + 584);
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize((v13 + 576), v21 + 1, v22);
  v23 = *(v13 + 592) + 152 * *(v13 + 588);
  *(v23 - 152) = *(a5 + 80);
  return ProShade::Value::set(v23 - 144, 3, 7, &v25);
}

void sub_26015AAB4(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v2 + 1);
  PCSharedCount::~PCSharedCount(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_26015AFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, CGColorSpace *a32, uint64_t a33, uint64_t a34, CGColorSpace *a35)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a32);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a35);
  PCSharedCount::~PCSharedCount(v35 + 1);
  _Unwind_Resume(a1);
}

double OZMaterialCompoundLayer::getTextureTransform(OZChannelBase *a1, uint64_t a2, const CMTime *a3, float64x2_t *a4, unsigned int *a5, float a6)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(a1);
  if (ObjectManipulator)
  {
  }

  else
  {
    v13 = 0;
  }

  SequenceChannels = OZMaterialLayerBase::getSequenceChannels(a1);
  v15 = *(a2 + 104) != -1.0;
  v16 = (*(*SequenceChannels + 736))(SequenceChannels);
  v17 = (*(*SequenceChannels + 744))(SequenceChannels);
  v18 = (*(*SequenceChannels + 752))(SequenceChannels);
  LOBYTE(v20) = *(a2 + 120);
  MaterialTextureTransformer::composeTextureTransform(a3, &a1[24].var11, v13, v15, v16, v17, v18, *(a2 + 104), *(a2 + 40), v20, a4->f64, a5);

  *&result = *&PCMatrix44Tmpl<double>::leftScale(a4, a6, a6, 1.0);
  return result;
}

void sub_26015BA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCSharedCount *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, os_unfair_lock_s *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, char a32, uint64_t a33, uint64_t a34)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  PCLockSentry<PCSpinLock>::~PCLockSentry(&a24);
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  PCURL::~PCURL(&a32);
  PCSharedCount::~PCSharedCount(a13);
  _Unwind_Resume(a1);
}

uint64_t SpecularMaterialLayer::ReplaceSpecularColor::ReplaceSpecularColor(uint64_t result, uint64_t a2)
{
  *(result + 16) = &unk_2872DEA38;
  *(result + 24) = 0;
  *(result + 32) = 1;
  v2 = off_287267C60;
  v3 = off_287267C68;
  *result = off_287267C68;
  v4 = off_287267C78;
  *(*(v3 - 3) + result) = off_287267C70;
  *result = v2;
  *(result + *(v2 - 3)) = v4;
  *result = &unk_287267BF8;
  *(result + 8) = a2;
  *(result + 16) = &unk_287267C40;
  return result;
}

uint64_t OZMaterialCompoundLayer::appendDiffuseLayer(OZMaterialCompoundLayer *a1, const char *a2, const CMTime *a3, NSDictionary *a4)
{
  v8 = OZGetImageAsset(a4, a2);
  v9 = [(NSDictionary *)a4 objectForKey:@"blend mode"];
  v10 = [(NSDictionary *)a4 objectForKey:@"scale"];
  if (v10)
  {
    [v10 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = [(NSDictionary *)a4 objectForKey:@"brightness"];
  if (v13)
  {
    [v13 doubleValue];
    v15 = v14;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 1.0;
    if (!v9)
    {
LABEL_9:
      v16 = 2;
      goto LABEL_10;
    }
  }

  if ([v9 isEqualToString:@"over"])
  {
    goto LABEL_9;
  }

  if ([v9 isEqualToString:@"multiply"])
  {
    v16 = 5;
  }

  else if ([v9 isEqualToString:@"simple multiply"])
  {
    v16 = 6;
  }

  else if ([v9 isEqualToString:@"over white multiply"])
  {
    v16 = 7;
  }

  else if ([v9 isEqualToString:@"over black screen"])
  {
    v16 = 8;
  }

  else
  {
    v16 = 2;
  }

LABEL_10:
  v17 = [(NSDictionary *)a4 objectForKey:@"rotate side"];
  if (v17 && [v17 BOOLValue])
  {
    ShouldRotateSide = !OZMaterialCompoundLayer::getShouldRotateSide(a1, a3);
  }

  else
  {
    ShouldRotateSide = OZMaterialCompoundLayer::getShouldRotateSide(a1, a3);
  }

  v19 = (*(*a1 + 1008))(a1, a4, a3, a2);
  v20 = (*(*a1 + 1000))(a1, a3);
  v21 = (*(*a1 + 1024))(a1);
  v22 = *(*a1 + 1040);
  v23.n128_f64[0] = v19;
  v24.n128_f32[0] = v12;
  v25.n128_f64[0] = v15;

  return v22(a1, a2, a3, v20, v21, v8, v16, ShouldRotateSide, v23, v24, v25);
}

void OZMaterialCompoundLayer::appendSpecularLayer(OZMaterialCompoundLayer *a1, uint64_t a2, const CMTime *a3, void *a4)
{
  v8 = [a4 objectForKey:@"viewDependent"];
  v9 = (*(*a1 + 984))(a1, a4, a3);
  v10 = [a4 objectForKey:@"specular intensity"];
  if (v10)
  {
    [v10 doubleValue];
    v9 = v11;
  }

  v12 = (*(*a1 + 976))(a1, a4, a3);
  v13 = [a4 objectForKey:@"specular shininess"];
  if (v13)
  {
    [v13 doubleValue];
    v12 = v14;
  }

  v15 = [a4 objectForKey:@"metallic"];
  if (v15)
  {
    [v15 doubleValue];
    v17 = v16;
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v17 = 0x3FC999999999999ALL;
  if (v8)
  {
LABEL_7:
    v8 = [v8 BOOLValue];
  }

LABEL_8:
  v18 = [a4 objectForKey:@"scale"];
  if (v18)
  {
    [v18 doubleValue];
    v20 = v19;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = [a4 objectForKey:@"shininess uses intensity"];
  if (v21)
  {
    v22 = [v21 BOOLValue];
  }

  else
  {
    v22 = 0;
  }

  v23 = [a4 objectForKey:@"rotate side"];
  if (!v23 || ![v23 BOOLValue])
  {
    ShouldRotateSide = OZMaterialCompoundLayer::getShouldRotateSide(a1, a3);
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  ShouldRotateSide = !OZMaterialCompoundLayer::getShouldRotateSide(a1, a3);
  if (v8)
  {
LABEL_21:
    v25 = (*(*a1 + 1016))(a1);
    OZChannel::getValueAsDouble(v25, a3, 0.0);
    v12 = v26;
  }

LABEL_22:
  v27 = (*(*a1 + 992))(a1, a3);
  (*(*a1 + 1056))(&v115, a1, a2, a3, v27, v8, ShouldRotateSide, v9, v12);
  PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v99, &v115);
  v28 = LiMaterialLayerUniform::get(*a2, &v99);
  PCSharedCount::~PCSharedCount(&v100);
  v29 = *a2;
  if (!*a2)
  {
    throw_PCNullPointerException(1);
  }

  os_unfair_lock_opaque = v29[147]._os_unfair_lock_opaque;
  if (v29[146]._os_unfair_lock_opaque <= os_unfair_lock_opaque)
  {
    v31 = 2 * (os_unfair_lock_opaque + 1) + 1;
  }

  else
  {
    v31 = v29[146]._os_unfair_lock_opaque;
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v29[144]._os_unfair_lock_opaque, os_unfair_lock_opaque + 1, v31);
  v32 = *&v29[148]._os_unfair_lock_opaque + 152 * v29[147]._os_unfair_lock_opaque;
  *(v32 - 152) = v28[34];
  v99.var0 = v17;
  ProShade::Value::set(v32 - 144, 3, 1, &v99);
  v33 = [a4 objectForKey:@"anisotropic"];
  if (v33)
  {
    v34 = [v33 BOOLValue];
  }

  else
  {
    v34 = 0;
  }

  if (!v115.var0)
  {
    throw_PCNullPointerException(1);
  }

  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = 3;
  }

  *(v115.var0 + 16) = v35;
  if (v34)
  {
    v36 = [a4 objectForKey:@"grooviness"];
    if (v36)
    {
      [v36 doubleValue];
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v117 = 0uLL;
    v118.f64[0] = 0.0;
    v108 = 0x3FF0000000000000;
    v105 = 0x3FF0000000000000;
    v102 = 0x3FF0000000000000;
    v99.var0 = 0x3FF0000000000000;
    v100 = 0u;
    v101 = 0u;
    v103 = 0u;
    v104 = 0u;
    v106 = 0u;
    v107 = 0u;
    v112[1] = 0.0;
    v112[2] = 0.0;
    v112[0] = 1.0;
    v114 = 0;
    v113 = 0uLL;
    PCMatrix44Tmpl<double>::transform<double>(&v99, v112, &v113);
    v97 = v113;
    v98 = v114;
    v39 = *a2;
    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    v40 = v39[147]._os_unfair_lock_opaque;
    if (v39[146]._os_unfair_lock_opaque <= v40)
    {
      v41 = 2 * (v40 + 1) + 1;
    }

    else
    {
      v41 = v39[146]._os_unfair_lock_opaque;
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v39[144]._os_unfair_lock_opaque, v40 + 1, v41);
    v42 = *&v39[148]._os_unfair_lock_opaque + 152 * v39[147]._os_unfair_lock_opaque;
    *(v42 - 152) = v28[206];
    ProShade::Value::set(v42 - 144, 3, 3, &v97);
    v43 = *a2;
    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    v44 = v43[147]._os_unfair_lock_opaque;
    if (v43[146]._os_unfair_lock_opaque <= v44)
    {
      v45 = 2 * (v44 + 1) + 1;
    }

    else
    {
      v45 = v43[146]._os_unfair_lock_opaque;
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v43[144]._os_unfair_lock_opaque, v44 + 1, v45);
    v46 = *&v43[148]._os_unfair_lock_opaque + 152 * v43[147]._os_unfair_lock_opaque;
    *(v46 - 152) = v28[202];
    ProShade::Value::set(v46 - 144, 3, 3, &v117);
    v47 = *a2;
    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    v48 = v47[147]._os_unfair_lock_opaque;
    if (v47[146]._os_unfair_lock_opaque <= v48)
    {
      v49 = 2 * (v48 + 1) + 1;
    }

    else
    {
      v49 = v47[146]._os_unfair_lock_opaque;
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v47[144]._os_unfair_lock_opaque, v48 + 1, v49);
    v50 = *&v47[148]._os_unfair_lock_opaque + 152 * v47[147]._os_unfair_lock_opaque;
    *(v50 - 152) = v28[210];
    *&v113 = v38;
    ProShade::Value::set(v50 - 144, 3, 1, &v113);
  }

  v108 = 0x3FF0000000000000;
  v105 = 0x3FF0000000000000;
  v102 = 0x3FF0000000000000;
  v99.var0 = 0x3FF0000000000000;
  v100 = 0u;
  v101 = 0u;
  v103 = 0u;
  v104 = 0u;
  v106 = 0u;
  v107 = 0u;
  OZMaterialCompoundLayer::getTextureTransform(a1, a2, a3, &v99, &v109, v20);
  v110 = ShouldRotateSide;
  UseTriplanarMapping = OZMaterialCompoundLayer::getUseTriplanarMapping(a1, a3);
  if (OZGetSpecularIntensityAsset(a4, v51))
  {
    PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v97, &v115);
    PCSharedCount::~PCSharedCount(&v97 + 1);
    v53 = [a4 objectForKey:@"specular intensity black point"];
    if (v53)
    {
      [v53 doubleValue];
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v56 = [a4 objectForKey:{@"specular intensity white point", v97}];
    if (v56)
    {
      [v56 doubleValue];
      v58 = v57;
    }

    else
    {
      v58 = 1.0;
    }

    v59 = *a2;
    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    v60 = v59[147]._os_unfair_lock_opaque;
    if (v59[146]._os_unfair_lock_opaque <= v60)
    {
      v61 = 2 * (v60 + 1) + 1;
    }

    else
    {
      v61 = v59[146]._os_unfair_lock_opaque;
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v59[144]._os_unfair_lock_opaque, v60 + 1, v61);
    v62 = *&v59[148]._os_unfair_lock_opaque + 152 * v59[147]._os_unfair_lock_opaque;
    *(v62 - 152) = v28[138];
    *&v97 = v55;
    ProShade::Value::set(v62 - 144, 3, 1, &v97);
    v63 = *a2;
    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    v64 = v63[147]._os_unfair_lock_opaque;
    if (v63[146]._os_unfair_lock_opaque <= v64)
    {
      v65 = 2 * (v64 + 1) + 1;
    }

    else
    {
      v65 = v63[146]._os_unfair_lock_opaque;
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v63[144]._os_unfair_lock_opaque, v64 + 1, v65);
    v66 = *&v63[148]._os_unfair_lock_opaque + 152 * v63[147]._os_unfair_lock_opaque;
    *(v66 - 152) = v28[142];
    *&v97 = v58;
    ProShade::Value::set(v66 - 144, 3, 1, &v97);
    v67 = *a2;
    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    v68 = v67[147]._os_unfair_lock_opaque;
    if (v67[146]._os_unfair_lock_opaque <= v68)
    {
      v69 = 2 * (v68 + 1) + 1;
    }

    else
    {
      v69 = v67[146]._os_unfair_lock_opaque;
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v67[144]._os_unfair_lock_opaque, v68 + 1, v69);
    v70 = *&v67[148]._os_unfair_lock_opaque + 152 * v67[147]._os_unfair_lock_opaque;
    *(v70 - 152) = v28[26];
    *&v97 = v9;
    ProShade::Value::set(v70 - 144, 3, 1, &v97);
  }

  if (v22)
  {
    if (!v115.var0)
    {
      throw_PCNullPointerException(1);
    }

    *(v115.var0 + 69) = 1;
  }

  else
  {
    OZGetSpecularShininessAsset(a4, v52);
  }

  v71 = [a4 objectForKey:{@"specular shininess black point", v97}];
  if (v71)
  {
    [v71 doubleValue];
    v73 = v72;
  }

  else
  {
    v73 = 0;
  }

  v74 = [a4 objectForKey:@"specular shininess white point"];
  if (v74)
  {
    [v74 doubleValue];
    v76 = v75;
  }

  else
  {
    v76 = 1.0;
  }

  v77 = *a2;
  if (!*a2)
  {
    throw_PCNullPointerException(1);
  }

  v78 = v77[147]._os_unfair_lock_opaque;
  if (v77[146]._os_unfair_lock_opaque <= v78)
  {
    v79 = 2 * (v78 + 1) + 1;
  }

  else
  {
    v79 = v77[146]._os_unfair_lock_opaque;
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v77[144]._os_unfair_lock_opaque, v78 + 1, v79);
  v80 = *&v77[148]._os_unfair_lock_opaque + 152 * v77[147]._os_unfair_lock_opaque;
  *(v80 - 152) = v28[118];
  *&v97 = v73;
  ProShade::Value::set(v80 - 144, 3, 1, &v97);
  v81 = *a2;
  if (!*a2)
  {
    throw_PCNullPointerException(1);
  }

  v82 = v81[147]._os_unfair_lock_opaque;
  if (v81[146]._os_unfair_lock_opaque <= v82)
  {
    v83 = 2 * (v82 + 1) + 1;
  }

  else
  {
    v83 = v81[146]._os_unfair_lock_opaque;
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v81[144]._os_unfair_lock_opaque, v82 + 1, v83);
  v84 = *&v81[148]._os_unfair_lock_opaque + 152 * v81[147]._os_unfair_lock_opaque;
  *(v84 - 152) = v28[122];
  *&v97 = v76;
  ProShade::Value::set(v84 - 144, 3, 1, &v97);
  v85 = *a2;
  if (!*a2)
  {
    throw_PCNullPointerException(1);
  }

  v86 = v85[147]._os_unfair_lock_opaque;
  if (v85[146]._os_unfair_lock_opaque <= v86)
  {
    v87 = 2 * (v86 + 1) + 1;
  }

  else
  {
    v87 = v85[146]._os_unfair_lock_opaque;
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v85[144]._os_unfair_lock_opaque, v86 + 1, v87);
  v88 = *&v85[148]._os_unfair_lock_opaque + 152 * v85[147]._os_unfair_lock_opaque;
  *(v88 - 152) = v28[30];
  *&v97 = v12;
  ProShade::Value::set(v88 - 144, 3, 1, &v97);
  v89 = [a4 objectForKey:@"color model"];
  v90 = v89;
  if (v89)
  {
    if (([v89 isEqualToString:@"surface"] & 1) == 0)
    {
      if ([v90 isEqualToString:@"solid"])
      {
        WorkingColorSpace = OZRenderParams::getWorkingColorSpace(*(a2 + 16));
        PCWorkingColor::PCWorkingColor(&v97, 1.0, 1.0, 1.0, 1.0, WorkingColorSpace);
        v92 = *a2;
        if (!*a2)
        {
          throw_PCNullPointerException(1);
        }

        v93 = v97;
        v94 = v92[147]._os_unfair_lock_opaque;
        if (v92[146]._os_unfair_lock_opaque <= v94)
        {
          v95 = 2 * (v94 + 1) + 1;
        }

        else
        {
          v95 = v92[146]._os_unfair_lock_opaque;
        }

        PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v92[144]._os_unfair_lock_opaque, v94 + 1, v95);
        v96 = *&v92[148]._os_unfair_lock_opaque + 152 * v92[147]._os_unfair_lock_opaque;
        *(v96 - 152) = v28[2];
        v117 = vcvtq_f64_f32(*&v93);
        v118 = vcvtq_f64_f32(*(&v93 + 8));
        ProShade::Value::set(v96 - 144, 3, 4, &v117);
        PCCFRef<CGColorSpace *>::~PCCFRef(&v98);
      }

      else
      {
        [v90 isEqualToString:@"image"];
      }
    }

    operator new();
  }

  PCSharedCount::~PCSharedCount(&v116);
}

void sub_26015D29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  PCSharedCount::~PCSharedCount((v3 - 152));
  _Unwind_Resume(a1);
}

void OZMaterialCompoundLayer::appendBumpLayer(OZMaterialCompoundLayer *a1, const char *a2, const CMTime *a3, NSDictionary *a4)
{
  v8 = OZGetImageAsset(a4, a2);
  v9 = [(NSDictionary *)a4 objectForKey:@"inserts"];
  v10 = [(NSDictionary *)a4 objectForKey:@"scale"];
  if (v10)
  {
    [v10 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = [-[NSDictionary objectForKey:](a4 objectForKey:{@"map type", "isEqualToString:", @"normal map"}];
  v14 = [(NSDictionary *)a4 objectForKey:@"rotate side"];
  if (v14 && [v14 BOOLValue])
  {
    ShouldRotateSide = !OZMaterialCompoundLayer::getShouldRotateSide(a1, a3);
  }

  else
  {
    ShouldRotateSide = OZMaterialCompoundLayer::getShouldRotateSide(a1, a3);
  }

  v16 = (*(*a1 + 960))(a1, a4, a3, a2);
  v17 = (*(*a1 + 968))(a1, a4, a3, a2);
  (*(*a1 + 1088))(&v18, a1, a2, a3, v17, v8, v9, ShouldRotateSide, v13 ^ 1u, v16, v12);
  PCSharedCount::~PCSharedCount(&v19);
}

uint64_t OZMaterialCompoundLayer::appendAbsorbLayer(uint64_t a1, const char *a2, uint64_t a3, NSDictionary *a4)
{
  v8 = OZGetImageAsset(a4, a2);
  v9 = [(NSDictionary *)a4 objectForKey:@"scale"];
  if (v9)
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = [(NSDictionary *)a4 objectForKey:@"black point"];
  if (v12)
  {
    [v12 doubleValue];
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [(NSDictionary *)a4 objectForKey:@"white point"];
  if (v15)
  {
    [v15 doubleValue];
    v19.n128_f32[0] = v16.n128_f64[0];
  }

  else
  {
    v19.n128_u32[0] = 1.0;
  }

  v20 = *(*a1 + 1096);
  v17.n128_u32[0] = 1.0;
  v16.n128_f32[0] = v11;
  v18.n128_f32[0] = v14;

  return v20(a1, a2, a3, v8, v16, v17, v18, v19);
}

uint64_t OZMaterialCompoundLayer::getCurrentLayers(OZMaterialCompoundLayer *this, const CMTime *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  ValueAsInt = OZChannel::getValueAsInt((this + 936), a2, 0.0);
  v5 = *(this + 139);
  v6 = *(this + 138);
  v7 = (*(*this + 952))(this, a2);
  v8 = v7;
  if (v5 == v6)
  {
    v14 = ValueAsInt;
    if ([v7 count] <= ValueAsInt)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = 0;
    v12 = *v16;
LABEL_4:
    v13 = 0;
    v14 = v11;
    v11 += v10;
    while (1)
    {
      if (*v16 != v12)
      {
        objc_enumerationMutation(v8);
      }

      if ([objc_msgSend(*(*(&v15 + 1) + 8 * v13) objectForKey:{@"tag", "intValue"}] == ValueAsInt)
      {
        break;
      }

      ++v14;
      if (v10 == ++v13)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        result = 0;
        if (v10)
        {
          goto LABEL_4;
        }

        return result;
      }
    }
  }

  if (v14 != -1)
  {
    return [objc_msgSend(v8 objectAtIndex:{v14), "objectForKey:", @"layers"}];
  }

  return 0;
}

uint64_t OZMaterialCompoundLayer::collectInternalTexturesFromLayeredMaterial@<X0>(OZMaterialCompoundLayer *this@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = (*(*this + 944))(this, MEMORY[0x277CC08F0]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  v5 = result;
  if (result)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = OZCreateURLForAssetLayer(*(*(&v12 + 1) + 8 * v7));
        v9 = v8;
        if (v8)
        {
          v16 = v8;
          v10 = a2[1];
          if (v10 >= a2[2])
          {
            v11 = std::vector<PCNSRef<NSURL *>>::__emplace_back_slow_path<PCNSRef<NSURL *>>(a2, &v16);
          }

          else
          {
            *v10 = v9;
            v11 = (v10 + 1);
            v16 = 0;
          }

          a2[1] = v11;
          ProCore_Impl::PCNSRefImpl::release(&v16);
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_26015D980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<PCNSRef<NSURL *>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t OZMaterialCompoundLayer::appendLayersToLayeredMaterial(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 + 2);
  v5 = *v2;
  v6 = v3;
  return (*(*a1 + 944))(a1, &v5);
}

uint64_t std::vector<PCNSRef<NSURL *>>::__emplace_back_slow_path<PCNSRef<NSURL *>>(void *a1, id *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, v6);
  }

  v13 = 0;
  v14 = (8 * v5);
  *v14 = *a2;
  *a2 = 0;
  v15 = (8 * v5 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCNSRef<NSURL *>>,PCNSRef<NSURL *>*>(a1, v3, v4, 0);
  v9 = *a1;
  *a1 = 0;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<PCNSRef<NSURL *>>::~__split_buffer(&v13);
  return v12;
}

void sub_26015DB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PCNSRef<NSURL *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCNSRef<NSURL *>>,PCNSRef<NSURL *>*>(uint64_t a1, id *this, ProCore_Impl::PCNSRefImpl *a3, id *a4)
{
  v6 = a1;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (this != a3)
  {
    v7 = this;
    do
    {
      *a4 = *v7;
      ProCore_Impl::PCNSRefImpl::retain(a4);
      ++v7;
      a4 = ++v12;
    }

    while (v7 != a3);
  }

  v10 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<PCNSRef<NSURL *>>,PCNSRef<NSURL *>*,PCNSRef<NSURL *>*>(v6, this, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PCNSRef<NSURL *>>,PCNSRef<NSURL *>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<PCNSRef<NSURL *>>,PCNSRef<NSURL *>*,PCNSRef<NSURL *>*>(int a1, id *this, ProCore_Impl::PCNSRefImpl *a3)
{
  if (this != a3)
  {
    v4 = this;
    do
    {
      ProCore_Impl::PCNSRefImpl::release(v4++);
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PCNSRef<NSURL *>>,PCNSRef<NSURL *>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<PCNSRef<NSURL *>>,PCNSRef<NSURL *>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<PCNSRef<NSURL *>>,PCNSRef<NSURL *>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    ProCore_Impl::PCNSRefImpl::release(--v1);
  }
}

uint64_t std::__split_buffer<PCNSRef<NSURL *>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<PCNSRef<NSURL *>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<PCNSRef<NSURL *>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    *(a1 + 16) = v4 - 8;
    ProCore_Impl::PCNSRefImpl::release((v4 - 8));
  }
}

void OZStyle::OZStyle(OZStyle *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  *this = &unk_28727E108;
  *(this + 1) = a2;
  v7 = this + 16;
  *(this + 2) = &unk_2872893D8;
  *(this + 3) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 32));
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = &unk_2872932E8;
  *(this + 2) = &unk_287293410;
  *(this + 6) = &unk_287293668;
  OZChannelObjectRoot::OZChannelObjectRoot((this + 72), a3, 0, a4, 0x20u);
  PCURL::PCURL(&v8, @"Material Randomize Seed Channel");
  OZChannelSeed::OZChannelSeed((this + 328), &v8, (this + 72), 0x12Du, 0, 0, 0);
  PCString::~PCString(&v8);
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 35) = v7;
  v8 = *MEMORY[0x277CC08F0];
  v9 = *(MEMORY[0x277CC08F0] + 16);
  v10 = v8;
  v11 = v9;
  OZChannelObjectRootBase::setTimeExtent((this + 72), &v8, 0);
}

void sub_26015DEB4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 480);
  if (v3)
  {
    *(v1 + 488) = v3;
    operator delete(v3);
  }

  OZChannel::~OZChannel((v1 + 328));
  OZChannelObjectRoot::~OZChannelObjectRoot((v1 + 72));
  v4 = *(v1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *(v1 + 16) = &unk_28727CFF0;
  v5 = *(v1 + 24);
  if (v5)
  {
    *(v5 + 8) = 0;
    *(v1 + 24) = 0;
  }

  _Unwind_Resume(a1);
}

void OZStyle::OZStyle(OZStyle *this, const OZStyle *a2, char a3)
{
  v6 = *(a2 + 1);
  *this = &unk_28727E108;
  *(this + 1) = v6;
  v7 = this + 16;
  *(this + 2) = &unk_2872893D8;
  *(this + 3) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 32));
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = &unk_2872932E8;
  *(this + 2) = &unk_287293410;
  *(this + 6) = &unk_287293668;
  OZChannelObjectRoot::OZChannelObjectRoot((this + 72), (a2 + 72), 0);
  OZChannel::OZChannel((this + 328), (a2 + 328), (this + 72));
  *(this + 41) = &unk_287247AE0;
  *(this + 43) = &unk_287247E40;
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 60) = 0;
  *(this + 63) = *(a2 + 63);
  *(this + 35) = v7;
  if ((a3 & 2) != 0)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v8);
    OZChannelBase::setID((this + 72), NextUniqueID);
  }
}

void sub_26015E0A8(_Unwind_Exception *a1)
{
  v4 = v1[60];
  if (v4)
  {
    v1[61] = v4;
    operator delete(v4);
  }

  OZChannel::~OZChannel(v2);
  OZChannelObjectRoot::~OZChannelObjectRoot((v1 + 9));
  v5 = v1[8];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v1[2] = &unk_28727CFF0;
  v6 = v1[3];
  if (v6)
  {
    *(v6 + 8) = 0;
    v1[3] = 0;
  }

  _Unwind_Resume(a1);
}

void OZStyle::~OZStyle(OZStyle *this)
{
  *this = &unk_2872932E8;
  *(this + 2) = &unk_287293410;
  *(this + 6) = &unk_287293668;
  v2 = *(this + 60);
  if (v2)
  {
    *(this + 61) = v2;
    operator delete(v2);
  }

  OZChannel::~OZChannel((this + 328));
  OZChannelObjectRoot::~OZChannelObjectRoot((this + 72));
  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *(this + 2) = &unk_28727CFF0;
  v4 = *(this + 3);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(this + 3) = 0;
  }
}

uint64_t OZStyle::getScene(OZStyle *this)
{
  result = *(this + 63);
  if (result)
  {
    return (*(*result + 272))();
  }

  return result;
}

uint64_t non-virtual thunk toOZStyle::getScene(OZStyle *this)
{
  result = *(this + 61);
  if (result)
  {
    return (*(*result + 272))();
  }

  return result;
}

OZScene *OZStyle::registerAllMaterials(OZScene *this)
{
  v1 = *(this + 60);
  v2 = *(this + 61);
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      v4 = *v1++;
      this = OZStyle::registerMaterial(v3, v4);
    }

    while (v1 != v2);
  }

  return this;
}

OZScene *OZStyle::registerMaterial(OZStyle *this, OZMaterialBase *a2)
{
  result = (*(*this + 128))(this);
  if (result)
  {
    v5 = result;
    if (a2)
    {
      v6 = (a2 + 16);
    }

    else
    {
      v6 = 0;
    }

    OZScene::registerObject(result, v6);
    v7 = *(a2 + 44);
    v8 = *(this + 24);

    return OZScene::addNodeDependency(v5, v7, v8);
  }

  return result;
}

void OZStyle::unregisterAllMaterials(OZStyle *this)
{
  v1 = *(this + 60);
  v2 = *(this + 61);
  while (v1 != v2)
  {
    v4 = *v1++;
    OZStyle::unregisterMaterial(this, v4);
  }
}

void OZStyle::unregisterMaterial(OZStyle *this, OZMaterialBase *a2)
{
  v3 = (*(*this + 128))(this);
  if (v3)
  {
    v4 = v3;
    if (a2)
    {
      v5 = (a2 + 16);
    }

    else
    {
      v5 = 0;
    }

    OZScene::unregisterObject(v3, v5);
    v6 = *(a2 + 44);

    OZScene::removeAllDependencies(v4, v6);
  }
}

uint64_t OZStyle::addMaterial(OZStyle *this, OZMaterialBase *a2)
{
  v12 = a2;
  v4 = (*(*a2 + 208))(a2);
  OZChannelBase::setFlag(v4, 8, 0);
  v5 = (*(*a2 + 208))(a2);
  OZChannelFolder::push_back((this + 72), v5);
  v6 = (*(*a2 + 208))(a2);
  v7 = *(*(*this + 112))(this);
  (*(v7 + 712))(&v11);
  OZChannelObjectRootBase::setTimeExtent(v6, &v11, 1);
  v8 = (*(*a2 + 208))(a2);
  v9 = *(*(*this + 112))(this);
  (*(v9 + 320))(&v11);
  OZChannelObjectRootBase::setTimeOffset(v8, &v11, 1);
  std::vector<TXTabStop *>::push_back[abi:ne200100](this + 480, &v12);
  OZMaterialBase::setOwner(v12, (this + 16));
  return (*(*(this + 2) + 424))(this + 16);
}

uint64_t OZStyle::removeMaterialAtIndex(OZStyle *this, unsigned int a2)
{
  v3 = (*(this + 60) + 8 * a2);
  v4 = *v3;
  OZMaterialBase::removeThisFromBehaviors(*v3);
  v5 = (*(*v4 + 208))(v4);
  OZChannelFolder::removeDescendant((this + 72), v5);
  v6 = *(this + 61);
  v7 = v6 - (v3 + 1);
  if (v6 != (v3 + 1))
  {
    memmove(v3, v3 + 1, v6 - (v3 + 1));
  }

  *(this + 61) = v3 + v7;
  v8 = *(*v4 + 8);

  return v8(v4);
}

uint64_t OZStyle::didDeleteMaterialWithFacetAssignment(OZStyle *this, int a2)
{
  v2 = **(this + 60);
  v3 = MEMORY[0x277CC08F0];
  v4 = (OZChannel::getValueAsInt((v2 + 568), MEMORY[0x277CC08F0], 0.0) | a2);

  return OZChannel::setValue((v2 + 568), v3, v4, 0);
}

uint64_t OZStyle::didSetFacetAssignmentForMaterial(OZStyle *this, OZMaterialBase *a2)
{
  result = OZChannel::getValueAsInt((a2 + 568), MEMORY[0x277CC08F0], 0.0);
  v5 = *(this + 60);
  v6 = *(this + 61);
  if (v5 != v6)
  {
    v7 = ~result;
    v8 = MEMORY[0x277CC08F0];
    do
    {
      v9 = *v5;
      if (*v5 != a2)
      {
        ValueAsInt = OZChannel::getValueAsInt((v9 + 568), v8, 0.0);
        result = OZChannel::setValue((v9 + 568), v8, (ValueAsInt & v7), 0);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t OZStyle::setNameOfMaterial(OZStyle *this, const PCString *a2, OZMaterialBase *a3)
{
  v3 = *(this + 60);
  v4 = *(this + 61);
  if (v3 == v4)
  {
LABEL_5:
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
    while (*v3 != a3)
    {
      ++v3;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }
  }

  return (*(**(this + 63) + 1192))(*(this + 63), a2, v6);
}

OZChannelBase *OZStyle::assignUniqueIDsToAllMaterials(OZChannelBase *this)
{
  var0 = this[4].var4.var0;
  var5 = this[4].var5;
  while (var0 != var5)
  {
    OZChannelBase::updateIDGenerator((*(var0->isa + 44) + 1));
    isa = var0->isa;
    var0 = (var0 + 8);
    v4 = (*(*isa + 208))(isa);
    NextUniqueID = OZChannelBase::getNextUniqueID(v4);
    this = OZChannelBase::setID(v4, NextUniqueID);
  }

  return this;
}

uint64_t OZStyle::selectMaterial(OZStyle *this, OZMaterialBase *a2)
{
  v2 = *(this + 60);
  v3 = *(this + 61);
  if (v2 != v3)
  {
    v5 = 0;
    do
    {
      if (*v2 == a2)
      {
        break;
      }

      ++v2;
      ++v5;
    }

    while (v2 != v3);
  }

  return (*(*(*(this + 63) + 16) + 536))();
}

uint64_t OZStyle::selectMaterialAtIndex(uint64_t this, unsigned int a2)
{
  v2 = *(this + 480);
  v3 = *(this + 488);
  v4 = v3 - v2;
  if (v4 > a2)
  {
    v5 = a2;
    if (v2 != v3)
    {
      v6 = this;
      do
      {
        v7 = *v2++;
        (*(*v7 + 168))(v7);
      }

      while (v2 != v3);
      v2 = *(v6 + 480);
      v4 = (*(v6 + 488) - v2) >> 3;
    }

    if (v4 <= v5)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v8 = *(*v2[v5] + 160);

    return v8();
  }

  return this;
}

uint64_t OZStyle::deselectMaterialAtIndex(uint64_t this, unsigned int a2)
{
  v2 = *(this + 480);
  if (a2 < ((*(this + 488) - v2) >> 3))
  {
    return (*(**(v2 + 8 * a2) + 168))();
  }

  return this;
}

uint64_t non-virtual thunk toOZStyle::deselectMaterialAtIndex(uint64_t this, unsigned int a2)
{
  v2 = *(this + 464);
  if (a2 < ((*(this + 472) - v2) >> 3))
  {
    return (*(**(v2 + 8 * a2) + 168))();
  }

  return this;
}

uint64_t OZStyle::sharesSimilarMaterials(OZStyle *this, const OZStyle *a2)
{
  v3 = *(this + 60);
  v2 = *(this + 61);
  v4 = v2 - v3;
  if (v2 - v3 != *(a2 + 61) - *(a2 + 60))
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v7 = 0;
  v8 = v4 >> 3;
  v9 = 1;
  do
  {
    v10 = *(this + 60);
    if (v7 >= (*(this + 61) - v10) >> 3 || (v11 = *(a2 + 60), v7 >= (*(a2 + 61) - v11) >> 3))
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    result = (*(**(v10 + 8 * v7) + 176))(*(v10 + 8 * v7), *(v11 + 8 * v7));
    v7 = v9++;
    if (result)
    {
      v13 = v8 > v7;
    }

    else
    {
      v13 = 0;
    }
  }

  while (v13);
  return result;
}

uint64_t OZStyle::writeHeader(OZFactory **this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZStyleScope);
  (*(*a2 + 16))(a2, 77);
  (*(*a2 + 200))(a2, 110, this + 104);
  (*(*a2 + 144))(a2, 111, *(this + 24));
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    v5 = OZFactory::fileRefID(this[1], v4);
    (*(*a2 + 144))(a2, 113, v5);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZStyle::writeBody(uint64_t **this, PCSerializerWriteStream *a2, BOOL a3, BOOL a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZStyleScope);
  OZChannelObjectRoot::writeBody((this + 9), a2, 0, 1, a5);
  if (((*this)[34])(this))
  {
    v8 = ((*this)[34])(this);
    if (OZChannel::getValueAsInt((v8 + 8232), MEMORY[0x277CC08F0], 0.0))
    {
      v9 = this[60];
      v10 = this[61];
      while (v9 != v10)
      {
        v11 = *v9++;
        (*(*(v11 + 48) + 16))(v11 + 48, a2, 0);
        (*(*(v11 + 48) + 24))(v11 + 48, a2, 0, 1, a5);
        (*(*a2 + 24))(a2);
      }
    }
  }

  return PCSerializerWriteStream::popScope(a2);
}

_BYTE *OZStyle::markFactoriesForSerialization(OZFactory **this, PCSerializerWriteStream *a2)
{
  result = OZFactory::setNeedsSaving(this[1], 1);
  v6 = this[60];
  v5 = this[61];
  while (v6 != v5)
  {
    v7 = *v6;
    v6 = (v6 + 8);
    result = (*(*v7 + 264))(v7, a2, 0);
  }

  return result;
}

uint64_t OZStyle::parseBegin(OZStyle *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZStyleScope);
  OZChannelObjectRoot::parseBegin((this + 72), a2);
  return 1;
}

uint64_t non-virtual thunk toOZStyle::parseBegin(OZStyle *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZStyleScope);
  OZChannelObjectRoot::parseBegin((this + 24), a2);
  return 1;
}

uint64_t OZCanvasState::writeHeader(OZCanvasState *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZCanvasStateScope);
  (*(*a2 + 16))(a2, 84);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZCanvasState::writeBody(OZCanvasState *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZCanvasStateScope);
  v4 = *(this + 2);
  (*(*a2 + 16))(a2, 1);
  (*(*a2 + 48))(a2, v4);
  (*(*a2 + 24))(a2);
  v5 = *(this + 3);
  (*(*a2 + 16))(a2, 2);
  (*(*a2 + 48))(a2, v5);
  (*(*a2 + 24))(a2);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZCanvasState::parseElement(OZCanvasState *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v6 = 0;
  v4 = *(a3 + 2);
  if (v4 == 2)
  {
    (*(*a3 + 32))(a3, &v6);
    *(this + 3) = v6;
  }

  else if (v4 == 1)
  {
    (*(*a3 + 32))(a3, &v6);
    *(this + 2) = v6;
  }

  return 0;
}

uint64_t OZFootage::fileSize(OZFootage *this)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  (*(*this + 1232))(&v16, this);
  isSequence = PCURL::isSequence(&v16);
  PCURL::~PCURL(&v16);
  if (!isSequence)
  {
    return OZSceneNodeFile::fileSize(this);
  }

  (*(*this + 1232))(&v16, this);
  PCURL::getPathAsFileSystemString(&v16, &v15);
  SequenceStart = PCURL::getSequenceStart(&v16);
  SequenceEnd = PCURL::getSequenceEnd(&v16);
  v6 = SequenceEnd - SequenceStart;
  if (SequenceEnd >= SequenceStart)
  {
    v8 = 0;
    v7 = 0;
    v9 = *MEMORY[0x277CCA1C0];
    v10 = v6 + 1;
    do
    {
      URLforIndex = PCURL::getURLforIndex(&v16, v8);
      if (URLforIndex)
      {
        PCURL::getAsFileSystemString(URLforIndex, &v14);
        v12 = [(__CFString *)PCString::ns_str(&v14) stringByResolvingSymlinksInPath];
        PCString::~PCString(&v14);
        v7 += [objc_msgSend(objc_msgSend(v2 attributesOfItemAtPath:v12 error:{0), "objectForKey:", v9), "unsignedLongLongValue"}];
      }

      ++v8;
    }

    while (v10 != v8);
  }

  else
  {
    v7 = 0;
  }

  PCString::~PCString(&v15);
  PCURL::~PCURL(&v16);
  return v7;
}

void sub_26015F5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, char a12)
{
  PCString::~PCString(&a11);
  PCURL::~PCURL(&a12);
  _Unwind_Resume(a1);
}

uint64_t OZFootage::isCinematographyAvailable(OZFootage *this, const PCString *a2)
{
  result = *(this + 1009);
  if (result)
  {
    v4 = OZChannelBase::setRangeName(result, a2);
    if (*(v4 + 928))
    {
      if (*(v4 + 644))
      {
        return 1;
      }

      if (!OZChannel::getValueAsInt((this + 7920), MEMORY[0x277CC08F0], 0.0))
      {
        OZChannel::setValue((this + 7920), MEMORY[0x277CC08F0], 1.0, 0);
      }
    }

    return 0;
  }

  return result;
}

uint64_t OZRetimingUtil::GetRetimeFrameChannel(OZRetimingUtil *this, OZChannelObjectRoot *a2)
{
  v2 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    return 0;
  }

  while (1)
  {
    result = (*(*v2 + 48))(v2, this);
    if (result)
    {
      break;
    }

    v2 = v2[1];
    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

BOOL OZRetimingUtil::CanRetimeSimple(OZRetimingUtil *this, OZChannelObjectRoot *a2)
{
  v2 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    return 0;
  }

  while (!(*(*v2 + 24))(v2, this))
  {
    v2 = v2[1];
    if (!v2)
    {
      return 0;
    }
  }

  v4 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    return 0;
  }

  while (!(*(*v4 + 64))(v4, this))
  {
    v4 = v4[1];
    if (!v4)
    {
      return 0;
    }
  }

  v5 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    return 0;
  }

  do
  {
    v6 = (*(*v5 + 72))(v5, this);
    result = v6 != 0;
    if (v6)
    {
      break;
    }

    v5 = v5[1];
  }

  while (v5);
  return result;
}

BOOL OZRetimingUtil::CanRetimeFull(OZRetimingUtil *this, OZChannelObjectRoot *a2)
{
  CanRetimeSimple = OZRetimingUtil::CanRetimeSimple(this, a2);
  result = 0;
  if (CanRetimeSimple)
  {
    v5 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
    if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
    {
      while (!(*(*v5 + 40))(v5, this))
      {
        v5 = v5[1];
        if (!v5)
        {
          return 0;
        }
      }

      v6 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
      if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
      {
        return 0;
      }

      while (!(*(*v6 + 32))(v6, this))
      {
        v6 = v6[1];
        if (!v6)
        {
          return 0;
        }
      }

      v7 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
      if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
      {
        return 0;
      }

      do
      {
        v8 = (*(*v7 + 80))(v7, this);
        result = v8 != 0;
        if (v8)
        {
          break;
        }

        v7 = v7[1];
      }

      while (v7);
    }
  }

  return result;
}

BOOL OZRetimingUtil::CanRetimeFull(OZRetimingUtil *this, OZSceneNode *a2)
{
  v2 = (*(*this + 640))(this, a2);

  return OZRetimingUtil::CanRetimeFull(v2, v3);
}

__n128 anonymous namespace::GetRawMinOffset@<Q0>(OZChannelBase *this@<X0>, OZChannelObjectRoot *a2@<X1>, uint64_t a3@<X8>)
{
  {
    v11 = MEMORY[0x277CC08A0];
    result = *MEMORY[0x277CC08A0];
    *a3 = *MEMORY[0x277CC08A0];
    *(a3 + 16) = *(v11 + 16);
  }

  else
  {
    v12 = 0uLL;
    v13 = 0;
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    v15 = *a2;
    *&v14.value = v12;
    v14.epoch = v13;
    result.n128_u64[0] = PC_CMTimeCeilingToSampleDuration(&v15, &v14, a3).n128_u64[0];
  }

  return result;
}

__n128 anonymous namespace::GetRawMaxOffset@<Q0>(CMTime *a1@<X0>, OZChannelBase *a2@<X1>, CMTime *a3@<X2>, int a4@<W3>, CMTime *a5@<X8>)
{
  memset(&v27, 0, sizeof(v27));
  time1 = *a1;
  time2 = a1[1];
  PC_CMTimeSaferAdd(&time1, &time2, &v27);
  {
    time1 = *a3;
    PC_CMTimeSaferAdd(&time1, &time2, &v25);
    time1 = v27;
    *&time2.value = v25;
    time2.epoch = v26;
    v21 = CMTimeCompare(&time1, &time2);
    v22 = &v27;
    if (v21 > 0)
    {
      v22 = &v25;
    }

    *&a5->value = *&v22->value;
    epoch = v22->epoch;
  }

  else
  {
    *&a5->value = *&v27.value;
    epoch = v27.epoch;
  }

  a5->epoch = epoch;
  v25 = 0uLL;
  v26 = 0;
  ObjectManipulator = OZChannelBase::getObjectManipulator(a2);
  time1 = *a5;
  *&time2.value = v25;
  time2.epoch = v26;
  result.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, a5);
  if (a4 == 1)
  {
    v17 = OZChannelBase::getObjectManipulator(a2);
    v18 = (*(*v17 + 264))(v17);
    if (v18)
    {
      time1 = *(v18 + 1352);
      time2 = *(v18 + 1376);
      PC_CMTimeSaferAdd(&time1, &time2, &v23);
      time1 = v23;
      *&time2.value = v25;
      time2.epoch = v26;
      PC_CMTimeSaferSubtract(&time1, &time2, &v24);
      time1 = *a5;
      time2 = v24;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        v19 = a5;
      }

      else
      {
        v19 = &v24;
      }

      result = *v19;
      a5->epoch = v19[1].n128_i64[0];
      *&a5->value = result;
    }
  }

  return result;
}

uint64_t OZRetimingUtil::GetTimeRemap(OZRetimingUtil *this, OZChannelObjectRoot *a2)
{
  v2 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    return 0;
  }

  while (1)
  {
    v4 = (*(*v2 + 40))(v2, this);
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

  v6 = MEMORY[0x277CC08F0];

  return OZChannel::getValueAsInt(v4, v6, 0.0);
}

uint64_t anonymous namespace::PreserveLoopOffset(OZChannelBase *this, CMTime *a2, CMTime *a3, const CMTime *a4)
{
  (*(this->var0 + 89))(v25);
  memset(&v24, 0, sizeof(v24));
  OZRetimingUtil::GetMaxLoopOffset(this, &v24);
  if (OZRetimingUtil::GetEndCondition(this, v7))
  {
    time1 = *a2;
    time2 = *a3;
    v8 = CMTimeCompare(&time1, &time2);
    v9 = a3;
    if ((v8 & 0x80000000) == 0)
    {
      time1 = *a2;
      time2 = v24;
      v10 = CMTimeCompare(&time1, &time2);
      v9 = &v24;
      if (v10 <= 0)
      {
        v9 = a2;
      }
    }

    time1 = *v9;
    time2 = *a3;
    PC_CMTimeFloorToSampleDuration(&time1, &time2, &v22);
    *&a2->value = v22;
    epoch = v23;
  }

  else
  {
    *&a2->value = *&v24.value;
    epoch = v24.epoch;
  }

  a2->epoch = epoch;
  time1 = v26;
  time2 = *a2;
  PC_CMTimeSaferSubtract(&time1, &time2, &v22);
  v13 = RetimingMath::figToFrames(&v22, a3, v12);
  v14 = &OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  do
  {
    v15 = *v14;
    v16 = **v14;
    v14 = (*v14 + 1);
    v17 = (*(v16 + 72))(v15, this);
  }

  while (!v17);
  (*(*v17 + 712))(v17, MEMORY[0x277CC08F0], 0, v13);
  TimeScale = OZRetimingUtil::GetTimeScale(this, v18);
}

double OZRetimingUtil::GetMinEnd@<D0>(OZChannelBase *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  (*(a1->var0 + 89))(v13);
  v11 = v13[0];
  (*(a1->var0 + 89))(v13, a1);
  v13[0] = v11;
  PC_CMTimeSaferAdd(v13, &v14, &v12);
  ObjectManipulator = OZChannelBase::getObjectManipulator(a1);
  v13[0] = v12;
  *&v14.value = v9;
  v14.epoch = v10;
  return PC_CMTimeSaferSubtract(v13, &v14, a3);
}

double OZRetimingUtil::GetMaxEnd@<D0>(OZChannelBase *this@<X0>, OZChannelObjectRoot *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  time1 = *a3;
  time2 = **&MEMORY[0x277CC08B0];
  if (CMTimeCompare(&time1, &time2))
  {
    (*(this->var0 + 89))(&time1, this);
    v10 = time1;
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    time1 = v10;
    *&time2.value = v8;
    time2.epoch = v9;
    PC_CMTimeSaferSubtract(&time1, &time2, &v11);
    time1 = *a3;
    time2 = v11;
    return PC_CMTimeSaferAdd(&time1, &time2, a3);
  }

  return result;
}

uint64_t OZRetimingUtil::SetEnd(void *a1, CMTime *a2, uint64_t a3)
{
  v5 = *a1;
  result = (a1 + 1);
  v4 = v5;
  v28 = result;
  if (v5 != result)
  {
    do
    {
      v8 = v4[4];
      (*(*v8 + 712))(v34, v8);
      CanRetimeSimple = OZRetimingUtil::CanRetimeSimple(v8, v9);
      if (OZRetimingUtil::GetTimeRemap(v8, v11))
      {
        CanRetimeSimple = 0;
      }

      v33 = *(v4 + 5);
      memset(&v32, 0, sizeof(v32));
      OZRetimingUtil::GetMinEnd(v8, 1, &v32);
      memset(&v31, 0, sizeof(v31));
      OZRetimingUtil::GetMaxEnd(v8, v12, &v31);
      if (a3)
      {
        v14 = v4[18];
        v13 = v4[19];
        while (v14 != v13)
        {
          OZRetimingUtil::GetMinEnd(*v14, 1, &v36);
          time1 = v32;
          time2 = v36;
          if (CMTimeCompare(&time1, &time2) >= 0)
          {
            v16 = &v32;
          }

          else
          {
            v16 = &v36;
          }

          v17 = *&v16->value;
          v32.epoch = v16->epoch;
          *&v32.value = v17;
          v18 = *v14++;
          OZRetimingUtil::GetMaxEnd(v18, v15, &v36);
          time1 = v31;
          time2 = v36;
          if (CMTimeCompare(&time1, &time2) <= 0)
          {
            v19 = &v31;
          }

          else
          {
            v19 = &v36;
          }

          v20 = *&v19->value;
          v31.epoch = v19->epoch;
          *&v31.value = v20;
        }
      }

      memset(&v30, 0, sizeof(v30));
      ObjectManipulator = OZChannelBase::getObjectManipulator(v8);
      time1 = *a2;
      time2 = v30;
      PC_CMTimeFloorToSampleDuration(&time1, &time2, &v36);
      time1 = v36;
      time2 = v32;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v23 = &v32;
      }

      else
      {
        time1 = v36;
        time2 = v31;
        if (CMTimeCompare(&time1, &time2) <= 0)
        {
          v23 = &v36;
        }

        else
        {
          v23 = &v31;
        }
      }

      v29 = *v23;
      time2 = v34[0];
      time1 = v29;
      PC_CMTimeSaferSubtract(&time1, &time2, &v35);
      time1 = v35;
      time2 = v30;
      PC_CMTimeSaferAdd(&time1, &time2, &v36);
      v34[1] = v36;
      OZChannelObjectRootBase::setTimeExtent(v8, v34, 0);
      OZChannelObjectRoot::recomputeTimeRangeFromChildren(v8, 0, 1, 1, 1, 1);
      if (CanRetimeSimple)
      {
        time1 = v33;
      }

      v25 = v4[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v4[2];
          v27 = *v26 == v4;
          v4 = v26;
        }

        while (!v27);
      }

      v4 = v26;
    }

    while (v26 != v28);
  }

  return result;
}

void anonymous namespace::SetChildRootEnds(OZChannelBase ***a1, CMTime *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if ((OZChannelBase::isLocked(*v3, 1) & 1) == 0)
      {
        (*((*v3)->var0 + 89))(&v23);
        time1 = v23;
        time2 = *a2;
        if (CMTimeCompare(&time1, &time2) <= 0)
        {
          v21 = 0uLL;
          v22 = 0;
          ObjectManipulator = OZChannelBase::getObjectManipulator(*v3);
          v20 = v24;
          v27 = v23;
          time1 = v23;
          time2 = *a2;
          PC_CMTimeSaferSubtract(&time2, &v27, &v25);
          time2 = v25;
          *&v27.value = v21;
          v27.epoch = v22;
          PC_CMTimeSaferAdd(&time2, &v27, &time);
          v20 = time;
          if (OZRetimingUtil::CanRetimeSimple(*v3, v9))
          {
            memset(&time2, 0, sizeof(time2));
            *&v27.timescale = 0;
            v27.epoch = 0;
            v27.value = &v27.timescale;
            std::vector<TXTabStop *>::push_back[abi:ne200100](&time2, v3);
            OZRetimingUtil::GetRootSetForSetEnd(&time2, &v27, 0);
            OZRetimingUtil::SetEnd(&v27, a2, a3);
            std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::destroy(&v27, *&v27.timescale);
            if (time2.value)
            {
              *&time2.timescale = time2.value;
              operator delete(time2.value);
            }
          }

          else
          {
            OZChannelObjectRootBase::setTimeExtent(*v3, &time1, 0);
            OZChannelObjectRoot::recomputeTimeRangeFromChildren(*v3, 0, 0, 1, 1, 1);
            {
              v11 = OZChannelBase::getObjectManipulator(*v3);
              if (v11)
              {
              }

              else
              {
                v12 = 0;
              }

              v13 = OZChannelBase::getObjectManipulator(*v3);
              if (v13)
              {
              }

              else
              {
                v14 = 0;
              }

              if (v12 || v14)
              {
                v15 = *v3;
                time2 = v23;
                v27 = time1;
                v25 = v20;
                v18 = v24;
                operator/(&v25.value, &v18, &time);
                Seconds = CMTimeGetSeconds(&time);
              }
            }
          }
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

void sub_260160884(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::destroy(v1 - 144, *(v1 - 136));
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void OZRetimingUtil::GetRootSetForSetEnd(const void ***a1, uint64_t a2, int a3)
{
  v6 = (a2 + 8);
  std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::destroy(a2, *(a2 + 8));
  *a2 = v6;
  *(a2 + 16) = 0;
  *v6 = 0;
  v8 = *a1;
  v7 = a1[1];
  while (v8 != v7)
  {
    v9 = *v8;
    if (a3)
    {
    }

    else
    {
    }

    ++v8;
  }
}

void anonymous namespace::CollectRoots<anonymous namespace::TruePred,anonymous namespace::SameEndPred>(const void *a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v3 = v14;
  v4 = v15;
  if (v14 != v15)
  {
    do
    {
      *&v10 = v3;
      v5 = std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::__emplace_unique_key_args<OZChannelObjectRoot *,std::piecewise_construct_t const&,std::tuple<OZChannelObjectRoot * const&>,std::tuple<>>(a2, v3);
      (*(**v3 + 320))(&v10);
      *(v5 + 11) = v10;
      v5[13] = v11;
      (*(**v3 + 712))(&v10);
      if (v5 + 5 != &v10)
      {
        v5[7] = v11;
        *(v5 + 5) = v10;
        *(v5 + 4) = v12;
        v5[10] = v13;
      }

      v7 = *v3;
      TimeScale = 1.0;
      if (OZRetimingUtil::CanRetimeSimple(*v3, v6) && !OZRetimingUtil::GetTimeRemap(v7, v8))
      {
        TimeScale = OZRetimingUtil::GetTimeScale(v7, v8);
      }

      *(v5 + 14) = TimeScale;
      *(v5 + 15) = v10;
      v5[17] = v11;
      ++v3;
    }

    while (v3 != v4);
    v3 = v14;
  }

  if (v3)
  {
    v15 = v3;
    operator delete(v3);
  }
}

void sub_260160AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::CollectRoots<anonymous namespace::SameEndPred,anonymous namespace::SameEndPred>(const void *a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (a1)
  {
    if (v19[0])
    {
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, v19);
      if (OZChannelFolder::testFoldFlag(v19[0], 0x4000))
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(v19[0]);
        if (ObjectManipulator)
        {
          if (v4)
          {
            v5 = v4;
            v6 = (*(*v4 + 272))(v4);
            if (v6)
            {
              v7 = *(v5 + 133);
              for (i = *(v5 + 132); i != v7; ++i)
              {
                Node = OZScene::getNode(v6, *i);
                v10 = Node;
                if (Node)
                {
                  v11 = (*(*Node + 640))(Node);
                  if (OZChannelFolder::testFoldFlag(v11, 0x4000) && ((*(v10[2] + 56))(v10 + 2, 1) & 1) == 0)
                  {
                    v26 = (*(*v10 + 640))(v10);
                    {
                      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v26);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v12 = v23;
  v13 = v24;
  if (v23 != v24)
  {
    do
    {
      v19[0] = v12;
      v14 = std::__tree<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::__map_value_compare<OZChannelObjectRoot *,std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>,std::less<OZChannelObjectRoot *>,true>,std::allocator<std::__value_type<OZChannelObjectRoot *,OZRetimingUtil::RootInfo>>>::__emplace_unique_key_args<OZChannelObjectRoot *,std::piecewise_construct_t const&,std::tuple<OZChannelObjectRoot * const&>,std::tuple<>>(a2, v12);
      (*(*v12->var0 + 40))(v19);
      *(v14 + 11) = *v19;
      v14[13] = v20;
      (*(*v12->var0 + 89))(v19);
      if (v14 + 5 != v19)
      {
        v14[7] = v20;
        *(v14 + 5) = *v19;
        *(v14 + 4) = v21;
        v14[10] = v22;
      }

      var0 = v12->var0;
      TimeScale = 1.0;
      if (OZRetimingUtil::CanRetimeSimple(v12->var0, v15) && !OZRetimingUtil::GetTimeRemap(var0, v17))
      {
        TimeScale = OZRetimingUtil::GetTimeScale(var0, v17);
      }

      *(v14 + 14) = TimeScale;
      *(v14 + 15) = *v19;
      v14[17] = v20;
      v12 = (v12 + 8);
    }

    while (v12 != v13);
    v12 = v23;
  }

  if (v12)
  {
    v24 = v12;
    operator delete(v12);
  }
}

void sub_260160E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 anonymous namespace::GetRawMinDuration@<Q0>(OZChannelBase *this@<X1>, CMTime *a2@<X0>, int a3@<W2>, CMTime *a4@<X8>)
{
  v18 = 0uLL;
  v19 = 0;
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  time1 = a2[1];
  v10 = MEMORY[0x277CC08F0];
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2))
  {
    v11 = &v18;
  }

  else
  {
    v11 = v10;
  }

  result = *v11;
  *&a4->value = *v11;
  a4->epoch = v11[1].n128_i64[0];
  if (a3 == 1)
  {
    v13 = OZChannelBase::getObjectManipulator(this);
    v14 = (*(*v13 + 264))(v13);
    if (v14)
    {
      time1 = *(v14 + 1352);
      time2 = *a2;
      PC_CMTimeSaferSubtract(&time1, &time2, &v16);
      time1 = v16;
      *&time2.value = v18;
      time2.epoch = v19;
      PC_CMTimeSaferAdd(&time1, &time2, &v17);
      time1 = *a4;
      time2 = v17;
      if (CMTimeCompare(&time1, &time2) >= 0)
      {
        v15 = a4;
      }

      else
      {
        v15 = &v17;
      }

      result = *v15;
      a4->epoch = v15[1].n128_i64[0];
      *&a4->value = result;
    }
  }

  return result;
}

void anonymous namespace::GetRawMaxDuration(OZChannelBase *this@<X0>, OZChannelObjectRoot *a2@<X1>, uint64_t a3@<X8>)
{
  {
    memset(&v18, 0, sizeof(v18));
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    memset(v17, 0, sizeof(v17));
    v7 = *OZChannelBase::getObjectManipulator(this);
    (*(v7 + 280))(v17);
    TimeScale = 1.0;
    if (OZRetimingUtil::CanRetimeSimple(this, v8) && !OZRetimingUtil::GetTimeRemap(this, v9))
    {
      TimeScale = OZRetimingUtil::GetTimeScale(this, v11);
    }

    (*(this->var0 + 40))(&v15, this);
    v14[0] = v15;
    v12.n128_f64[0] = PC_CMTimeSaferAdd(v14, &v20, &v16);
    (*(this->var0 + 89))(v14, this, v12);
    v19 = v14[0];
    v20 = v16;
    PC_CMTimeSaferSubtract(&v20, &v19, a3);
  }

  else
  {
    v13 = MEMORY[0x277CC08B0];
    *a3 = *MEMORY[0x277CC08B0];
    *(a3 + 16) = *(v13 + 16);
  }
}

void OZRetimingUtil::SetTimeOffsetAndExtentInteractive(OZChannelBase *this, CMTime *a2, CMTime *a3, CMTime *a4, const CMTime *a5)
{
  memset(&v33, 0, sizeof(v33));
  (*(this->var0 + 40))(&v33);
  (*(this->var0 + 89))(&v31, this);
  time1 = *a2;
  time2 = v33;
  if (CMTimeCompare(&time1, &time2) || (time1 = *a3, time2 = v31, CMTimeCompare(&time1, &time2)) || (time1 = a3[1], time2 = v32, CMTimeCompare(&time1, &time2)))
  {
    time1 = v32;
    v9 = MEMORY[0x277CC08F0];
    time2 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &time2))
    {
      memset(&v30, 0, sizeof(v30));
      v10 = &v30;
      memset(&v29, 0, sizeof(v29));
      memset(&v28, 0, sizeof(v28));
      memset(&v27, 0, sizeof(v27));
      memset(&v26, 0, sizeof(v26));
      time1 = *a3;
      time2 = v28;
      PC_CMTimeSaferAdd(&time1, &time2, &v35);
      time1 = v35;
      time2 = *a4;
      PC_CMTimeSaferSubtract(&time1, &time2, &v26);
      memset(&v25, 0, sizeof(v25));
      time1 = *a3;
      time2 = v27;
      PC_CMTimeSaferAdd(&time1, &time2, &v35);
      time1 = v35;
      time2 = *a4;
      PC_CMTimeSaferSubtract(&time1, &time2, &v25);
      time1 = *v9;
      v24 = time1;
      v21 = *a3;
      time2 = *a3;
      v35 = v30;
      if ((CMTimeCompare(&time2, &v35) & 0x80000000) == 0)
      {
        time2 = v21;
        v35 = v29;
        if (CMTimeCompare(&time2, &v35) <= 0)
        {
          v10 = &v21;
        }

        else
        {
          v10 = &v29;
        }
      }

      v22 = *v10;
      time2 = *a3;
      v35 = a3[1];
      PC_CMTimeSaferAdd(&time2, &v35, &v34);
      time2 = v34;
      v35 = *a4;
      PC_CMTimeSaferSubtract(&time2, &v35, &v20);
      time2 = v20;
      v35 = v26;
      if (CMTimeCompare(&time2, &v35) < 0)
      {
        v13 = &v26;
      }

      else
      {
        time2 = v20;
        v35 = v25;
        v12 = CMTimeCompare(&time2, &v35);
        v13 = &v25;
        if (v12 <= 0)
        {
          v13 = &v20;
        }
      }

      time2 = *v13;
      time1 = v22;
      v35 = v22;
      PC_CMTimeSaferSubtract(&time2, &v35, &v34);
      time2 = v34;
      v35 = *a4;
      PC_CMTimeSaferAdd(&time2, &v35, &v24);
      time2 = *a2;
      v35 = v33;
      if (CMTimeCompare(&time2, &v35) || (time2 = v31, v35 = time1, CMTimeCompare(&time2, &v35)) || (time2 = v32, v35 = v24, CMTimeCompare(&time2, &v35)))
      {
        CanRetimeSimple = OZRetimingUtil::CanRetimeSimple(this, v15);
        TimeRemap = OZRetimingUtil::GetTimeRemap(this, v17);
        v34 = *v9;
        if (!CanRetimeSimple || TimeRemap)
        {
          OZChannelObjectRootBase::setTimeOffset(this, a2, 0);
          OZChannelObjectRootBase::setTimeExtent(this, &time1, 0);
          OZChannelObjectRoot::recomputeTimeRangeFromChildren(this, 0, 1, 1, 1, 1);
        }

        else
        {
          OZRetimingUtil::GetLoopOffset(this, &time2);
          v35 = v31;
          PC_CMTimeSaferAdd(&time2, &v35, &v22);
          time2 = v22;
          v35 = v33;
          PC_CMTimeSaferSubtract(&time2, &v35, &v34);
          OZChannelObjectRootBase::setTimeOffset(this, a2, 0);
          OZChannelObjectRootBase::setTimeExtent(this, &time1, 0);
          OZChannelObjectRoot::recomputeTimeRangeFromChildren(this, 0, 1, 1, 1, 1);
          time2 = time1;
          v35 = *a2;
          PC_CMTimeSaferSubtract(&time2, &v35, &v21);
          time2 = v34;
          v35 = v21;
          PC_CMTimeSaferSubtract(&time2, &v35, &v22);
        }
      }
    }

    else
    {
      OZChannelObjectRootBase::setTimeOffset(this, a2, 0);
      OZChannelObjectRootBase::setTimeExtent(this, a3, 0);
      OZRetimingUtil::SetDefaultRetimingState(this, v14);
    }
  }
}

void OZRetimingUtil::SetDefaultRetimingState(OZChannelBase *this, OZChannelObjectRoot *a2)
{
  v3 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v8 = 0;
    v7 = 0;
    v5 = 0;
    v4 = 0;
LABEL_30:
    v6 = 0;
    goto LABEL_31;
  }

  do
  {
    v4 = (*(*v3 + 24))(v3, this);
    if (v4)
    {
      break;
    }

    v3 = v3[1];
  }

  while (v3);
  v5 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v8 = 0;
    v7 = 0;
    v3 = 0;
    goto LABEL_30;
  }

  do
  {
    v3 = (*(*v5 + 32))(v5, this);
    if (v3)
    {
      break;
    }

    v5 = v5[1];
  }

  while (v5);
  v6 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v8 = 0;
    v7 = 0;
    v5 = 0;
LABEL_31:
    v9 = 0;
    goto LABEL_32;
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
  v7 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v8 = 0;
    goto LABEL_30;
  }

  do
  {
    v6 = (*(v7->var0 + 6))(v7, this);
    if (v6)
    {
      break;
    }

    v7 = v7->var1;
  }

  while (v7);
  v8 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v7 = 0;
    goto LABEL_31;
  }

  do
  {
    v7 = (*(*v8 + 56))(v8, this);
    if (v7)
    {
      break;
    }

    v8 = v8[1];
  }

  while (v8);
  v8 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    goto LABEL_31;
  }

  do
  {
    v9 = (*(*v8 + 64))(v8, this);
    if (v9)
    {
      break;
    }

    v8 = v8[1];
  }

  while (v8);
  v10 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    v8 = 0;
    goto LABEL_33;
  }

  do
  {
    v8 = (*(*v10 + 72))(v10, this);
    if (v8)
    {
      break;
    }

    v10 = v10[1];
  }

  while (v10);
  v11 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
LABEL_32:
    v10 = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v12 = (*(*v11 + 80))(v11, this);
    if (v12)
    {
      break;
    }

    v11 = v11[1];
    if (!v11)
    {
      goto LABEL_32;
    }
  }

  v10 = v12;
LABEL_33:
  memset(&v35, 0, sizeof(v35));
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (v6)
  {
    v17 = OZChannelBase::getObjectManipulator(this);
    v18 = (*(*v17 + 264))(v17);
    if (v18)
    {
      v19 = *(v18 + 1504);
      if (v19)
      {
        OZChannelBase::setRangeName(v19, 1);
      }
    }

    (*(v6->var0 + 58))(v6, 1);
    OZChannel::deleteAllKeyframes(v6, MEMORY[0x277CC08F0]);
    memset(&v34, 0, sizeof(v34));
    (*(this->var0 + 40))(&v34, this);
    (*(this->var0 + 89))(&v32, this);
    memset(&v31, 0, sizeof(v31));
    v37[0] = v32;
    v36 = v34;
    PC_CMTimeSaferSubtract(v37, &v36, &v31);
    v37[0] = v32;
    v36 = v34;
    PC_CMTimeSaferSubtract(v37, &v36, &v30);
    v21 = RetimingMath::figToFrames(&v30, &v35, v20);
    v30 = v33;
    v37[0] = v31;
    v22 = v21 + 1.0;
    memset(&v29, 0, sizeof(v29));
    v36 = v33;
    PC_CMTimeSaferAdd(v37, &v36, &v29);
    v24 = v22 + RetimingMath::figToFrames(&v30, &v35, v23);
    OZChannel::setKeyframe(v6, &v31, v22, 1);
    OZChannel::setKeyframe(v6, &v29, v24, 1);
    Keyframe = OZChannel::getKeyframe(v6, &v31);
    OZChannel::smoothKeyframe(v6, Keyframe);
    v26 = OZChannel::getKeyframe(v6, &v29);
    OZChannel::smoothKeyframe(v6, v26);
    OZChannel::setUseRetimingExtrapolation(v6, 1);
    (*(v6->var0 + 48))(v6, 0, 0);
  }

  if (v4)
  {
    (*(*v4 + 712))(v4, MEMORY[0x277CC08F0], 0, 1.0);
  }

  if (v3)
  {
    (*(*v3 + 712))(v3, MEMORY[0x277CC08F0], 0, 0.0);
  }

  if (v5)
  {
    (*(*v5 + 712))(v5, MEMORY[0x277CC08F0], 0, 0.0);
  }

  if (v7)
  {
    OZRetimingUtil::CopyChannelKeyframes(v6, v7, v15);
  }

  if (v9)
  {
    (*(*v9 + 712))(v9, MEMORY[0x277CC08F0], 0, 0.0);
  }

  if (v8)
  {
    (*(*v8 + 712))(v8, MEMORY[0x277CC08F0], 0, 0.0);
  }

  if (v10)
  {
    (*(this->var0 + 89))(&v32, this, FrameDuration);
    v37[0] = v33;
    v28.n128_f64[0] = RetimingMath::figToFrames(v37, &v35, v27);
    (*(*v10 + 712))(v10, MEMORY[0x277CC08F0], 0, v28);
  }
}

double OZRetimingUtil::GetLoopOffset@<D0>(OZChannelBase *this@<X0>, uint64_t a2@<X8>)
{
  (*(this->var0 + 89))(&v10);
  *a2 = v11;
  *(a2 + 16) = v12;
  if (OZRetimingUtil::CanRetimeSimple(this, v5) && !OZRetimingUtil::GetTimeRemap(this, v6))
  {
    if (OZRetimingUtil::GetEndCondition(this, v8))
    {
      OZRetimingUtil::GetLoopDuration(this, &v9);
      v10 = *a2;
      v13 = v9;
      return PC_CMTimeSaferSubtract(&v10, &v13, a2);
    }
  }

  return result;
}

void OZRetimingUtil::SetTimeOffsetAndExtent(OZChannelBase *this, CMTime *a2, CMTime *a3, CMTime *a4, const CMTime *a5)
{
  memset(&v35, 0, sizeof(v35));
  (*(this->var0 + 40))(&v35);
  (*(this->var0 + 89))(&v33, this);
  time1 = *a2;
  time2 = v35;
  if (CMTimeCompare(&time1, &time2) || (time1 = *a3, time2 = v33, CMTimeCompare(&time1, &time2)) || (time1 = a3[1], time2 = v34, CMTimeCompare(&time1, &time2)))
  {
    time1 = v34;
    v9 = MEMORY[0x277CC08F0];
    time2 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &time2))
    {
      memset(&v32, 0, sizeof(v32));
      v10 = &v32;
      memset(&v31, 0, sizeof(v31));
      memset(&v30, 0, sizeof(v30));
      memset(&v29, 0, sizeof(v29));
      memset(&v28, 0, sizeof(v28));
      time1 = *a3;
      time2 = v30;
      PC_CMTimeSaferAdd(&time1, &time2, &v37);
      time1 = v37;
      time2 = *a4;
      PC_CMTimeSaferSubtract(&time1, &time2, &v28);
      memset(&v27, 0, sizeof(v27));
      time1 = *a3;
      time2 = v29;
      PC_CMTimeSaferAdd(&time1, &time2, &v37);
      time1 = v37;
      time2 = *a4;
      PC_CMTimeSaferSubtract(&time1, &time2, &v27);
      time1 = *v9;
      v26 = time1;
      v23 = *a3;
      time2 = *a3;
      v37 = v32;
      if ((CMTimeCompare(&time2, &v37) & 0x80000000) == 0)
      {
        time2 = v23;
        v37 = v31;
        if (CMTimeCompare(&time2, &v37) <= 0)
        {
          v10 = &v23;
        }

        else
        {
          v10 = &v31;
        }
      }

      v24 = *v10;
      time2 = *a3;
      v37 = a3[1];
      PC_CMTimeSaferAdd(&time2, &v37, &v36);
      time2 = v36;
      v37 = *a4;
      PC_CMTimeSaferSubtract(&time2, &v37, &v22);
      time2 = v22;
      v37 = v28;
      if (CMTimeCompare(&time2, &v37) < 0)
      {
        v13 = &v28;
      }

      else
      {
        time2 = v22;
        v37 = v27;
        v12 = CMTimeCompare(&time2, &v37);
        v13 = &v27;
        if (v12 <= 0)
        {
          v13 = &v22;
        }
      }

      time2 = *v13;
      time1 = v24;
      v37 = v24;
      PC_CMTimeSaferSubtract(&time2, &v37, &v36);
      time2 = v36;
      v37 = *a4;
      PC_CMTimeSaferAdd(&time2, &v37, &v26);
      time2 = *a2;
      v37 = v35;
      if (CMTimeCompare(&time2, &v37) || (time2 = v33, v37 = time1, CMTimeCompare(&time2, &v37)) || (time2 = v34, v37 = v26, CMTimeCompare(&time2, &v37)))
      {
        CanRetimeSimple = OZRetimingUtil::CanRetimeSimple(this, v15);
        TimeRemap = OZRetimingUtil::GetTimeRemap(this, v17);
        v36 = *v9;
        if (!CanRetimeSimple || TimeRemap)
        {
          OZChannelObjectRootBase::setTimeExtent(this, &time1, 0);
          OZChannelObjectRoot::recomputeTimeRangeFromChildren(this, 1, 1, 0, 1, 1);
        }

        else
        {
          OZRetimingUtil::GetLoopOffset(this, &time2);
          v37 = v33;
          PC_CMTimeSaferAdd(&time2, &v37, &v36);
          OZChannelObjectRootBase::setTimeExtent(this, &time1, 0);
          OZChannelObjectRoot::recomputeTimeRangeFromChildren(this, 1, 1, 0, 1, 1);
          v37 = time1;
          time2 = v36;
          PC_CMTimeSaferSubtract(&time2, &v37, &v24);
        }
      }
    }

    else
    {
      OZChannelObjectRootBase::setTimeOffset(this, a2, 0);
      OZChannelObjectRootBase::setTimeExtent(this, a3, 0);
      OZRetimingUtil::SetDefaultRetimingState(this, v14);
    }
  }
}

double anonymous namespace::MoveTimeOffset(OZChannelBase *this, const CMTime *a2, const CMTime *a3)
{
  (*(this->var0 + 40))(&v11);
  time1 = *a2;
  time2 = v11;
  if (CMTimeCompare(&time1, &time2))
  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    v7 = (*(*ObjectManipulator + 264))(ObjectManipulator);
    if (v7)
    {
      v8 = *(v7 + 1504);
      if (v8)
      {
        OZChannelBase::setRangeName(v8, 1);
      }
    }

    (*(this->var0 + 40))(&v10, this);
    time1 = v10;
    time2 = *a2;
    PC_CMTimeSaferSubtract(&time1, &time2, &v11);
    *&result = OZChannelObjectRootBase::setTimeOffset(this, a2, 0).n128_u64[0];
  }

  return result;
}

double OZRetimingUtil::GetTimeScale(OZRetimingUtil *this, OZChannelObjectRoot *a2)
{
  if (!OZRetimingUtil::CanRetimeSimple(this, a2))
  {
    return 1.0;
  }

  v3 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    while (1)
    {
      v4 = (*(*v3 + 24))(v3, this);
      if (v4)
      {
        break;
      }

      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

  v5 = MEMORY[0x277CC08F0];

  OZChannel::getValueAsDouble(v4, v5, 0.0);
  return result;
}

void OZRetimingUtil::CopyChannelKeyframes(OZChannel *this, OZChannel *a2, OZChannelDouble *a3)
{
  if (this)
  {
    (*(a2->var0 + 58))(a2, 1, a3);
    v5 = *(this->var16 + 5);
    OZChannel::getKeyframes(this, 0, &v19);
    OZChannel::deleteAllKeyframes(a2, MEMORY[0x277CC08F0]);
    Extrapolation = OZChannel::getExtrapolation(this, 0);
    (*(a2->var0 + 48))(a2, Extrapolation, 0);
    v7 = v19;
    if (v20 == v19)
    {
      OZChannel::getValueAsDouble(this, MEMORY[0x277CC08F0], 0.0);
      OZChannel::setInitialValue(a2, v5 * v12 / *(a2->var16 + 5), 0);
      v7 = v19;
      if (!v19)
      {
        return;
      }

      goto LABEL_6;
    }

    v8 = 0;
    v9 = 1;
    do
    {
      v16 = 0.0;
      v17 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      v13 = 0.0;
      OZChannel::getKeyframe(this, v7[v8], &v18, &v17);
      OZChannel::getKeyframeInputTangents(this, v19[v8], &v16, &v15, 0);
      OZChannel::getKeyframeOutputTangents(this, v19[v8], &v14, &v13, 0);
      OZChannel::getKeyframeInterpolation(this, v19[v8]);
      OZChannel::getKeyframeFlags(this, v19[v8]);
      OZChannel::getKeyframeEnabled(this, v19[v8]);
      v17 = v5 * v17;
      v15 = v5 * v15;
      v13 = v5 * v13;
      v10 = *(a2->var16 + 5);
      OZChannel::setKeyframe(a2, &v18, v17 / v10, 0);
      Keyframe = OZChannel::getKeyframe(a2, &v18);
      OZChannel::setKeyframeFlags(a2, Keyframe);
      OZChannel::setKeyframeEnabled(a2, Keyframe);
      OZChannel::setKeyframeInterpolation(a2, Keyframe);
      OZChannel::setKeyframeInputTangents(a2, Keyframe, v16, v15 / v10, 0);
      OZChannel::setKeyframeOutputTangents(a2, Keyframe, v14, v13 / v10, 0);
      v8 = v9;
      v7 = v19;
      ++v9;
    }

    while (v8 < v20 - v19);
    if (v19)
    {
LABEL_6:
      v20 = v7;
      operator delete(v7);
    }
  }
}

void sub_260162D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 anonymous namespace::GetAdjustedNaturalDuration@<Q0>(OZChannelBase *this@<X0>, uint64_t a2@<X8>)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  {
    v7 = *(*ObjectManipulator + 280);

    v7(ObjectManipulator);
  }

  else
  {
    v9 = MEMORY[0x277CC08B0];
    result = *MEMORY[0x277CC08B0];
    *a2 = *MEMORY[0x277CC08B0];
    *(a2 + 16) = *(v9 + 16);
  }

  return result;
}

uint64_t OZRetimingUtil::GetEndCondition(OZRetimingUtil *this, OZChannelObjectRoot *a2)
{
  v2 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (!OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    return 0;
  }

  while (1)
  {
    v4 = (*(*v2 + 64))(v2, this);
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

  v6 = MEMORY[0x277CC08F0];

  return OZChannel::getValueAsInt(v4, v6, 0.0);
}

uint64_t anonymous namespace::BuildConstantRetimingCurve(OZChannelBase *this, OZChannelObjectRoot *a2, const CMTime *a3, double a4, const CMTime *a5)
{
  v9 = OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead;
  if (OZRetimingUtil::StaticListNode<OZRetimingUtil::RetimingExaminer>::sHead)
  {
    while (1)
    {
      v10 = (*(*v9 + 48))(v9, this, a3, a5);
      if (v10)
      {
        break;
      }

      v9 = v9[1];
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    v11 = v10;
  }

  else
  {
LABEL_4:
    v11 = 0;
  }

  (*(this->var0 + 89))(&v26, this, a2, a3, a5);
  v12 = *OZChannelBase::getObjectManipulator(this);
  v13 = (*(v12 + 264))();
  if (v13)
  {
    v14 = *(v13 + 1504);
    if (v14)
    {
      OZChannelBase::setRangeName(v14, 1);
    }
  }

  (*(v11->var0 + 58))(v11, 1);
  OZChannel::deleteAllKeyframes(v11, MEMORY[0x277CC08F0]);
  memset(&v25, 0, sizeof(v25));
  (*(this->var0 + 40))(&v25, this);
  memset(&v24, 0, sizeof(v24));
  v28 = v26;
  v27 = v25;
  PC_CMTimeSaferSubtract(&v28, &v27, &v24);
  v28 = v26;
  v27 = v25;
  PC_CMTimeSaferSubtract(&v28, &v27, &v23);
  v16 = vcvtmd_s64_f64(RetimingMath::figToFrames(&v23, a3, v15) * a4 + 0.5 + 0.0000001) + 1.0;
  memset(&v23, 0, sizeof(v23));
  v28 = v24;
  v27 = *a2;
  PC_CMTimeSaferAdd(&v28, &v27, &v23);
  v18 = v16 + RetimingMath::figToFrames(a2, a3, v17) * a4;
  OZChannel::setKeyframe(v11, &v24, v16, 1);
  OZChannel::setKeyframe(v11, &v23, v18, 1);
  Keyframe = OZChannel::getKeyframe(v11, &v24);
  OZChannel::smoothKeyframe(v11, Keyframe);
  v20 = OZChannel::getKeyframe(v11, &v23);
  OZChannel::smoothKeyframe(v11, v20);
}

void anonymous namespace::SetChildRootExtents(OZRetimingUtil ***a1, uint64_t a2, CMTime *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if ((OZChannelBase::isLocked(*v3, 1) & 1) == 0)
      {
        (*(**v3 + 712))(&v25);
        CanRetimeSimple = OZRetimingUtil::CanRetimeSimple(*v3, v7);
        v9 = *v3;
        if (CanRetimeSimple)
        {
          (*(*v9 + 320))(&v28, *v3);
          OZRetimingUtil::SetTimeOffsetAndExtentInteractive(v9, &v28, a2, a3, v10);
        }

        else
        {
          OZChannelObjectRootBase::setTimeExtent(*v3, a2, 0);
          OZChannelObjectRoot::recomputeTimeRangeFromChildren(*v3, 0, 0, 1, 1, 1);
          {
            ObjectManipulator = OZChannelBase::getObjectManipulator(*v3);
            if (ObjectManipulator)
            {
            }

            else
            {
              v13 = 0;
            }

            v14 = OZChannelBase::getObjectManipulator(*v3);
            if (v14)
            {
            }

            else
            {
              v15 = 0;
            }

            if (v13 || v15)
            {
              v16 = *v3;
              v28 = v25;
              v24 = *a2;
              v21 = *(a2 + 24);
              v22 = *(a2 + 40);
              v19 = v26;
              v20 = v27;
              operator/(&v21, &v19, &time);
              Seconds = CMTimeGetSeconds(&time);
            }
          }
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

uint64_t anonymous namespace::ScaleKeyframesRecursive(OZChannelBase *this, OZChannelFolder *a2, const CMTime *a3, const CMTime *a4, double a5)
{
  result = OZChannelBase::isLocked(this, 1);
  if ((result & 1) == 0)
  {
    var0 = this[1].var0;
    if (var0)
    {
      v12 = *var0;
      v11 = var0[1];
      if (*var0 != v11)
      {
        do
        {
          v13 = *v12;
          if (*v12)
          {
            if (v14)
            {
              v15 = v14;
              result = OZChannelBase::isLocked(v14, 1);
              if ((result & 1) == 0)
              {
                result = OZChannelBase::testFlag(v15, 0x20000);
                if ((result & 1) == 0)
                {
                  (*(v15->var0 + 40))(&v18, v15);
                  v21 = *a2;
                  v20 = v18;
                  PC_CMTimeSaferSubtract(&v21, &v20, &v19);
                  operator*(&v19, &v21, -1.0);
                  OZChannel::linearTimeWarp(v15, 1.0, &v21);
                  OZChannel::linearTimeWarp(v15, a5, MEMORY[0x277CC08F0]);
                  (*(v15->var0 + 40))(&v18, v15);
                  v21 = *a3;
                  v20 = v18;
                  PC_CMTimeSaferSubtract(&v21, &v20, &v19);
                  result = OZChannel::linearTimeWarp(v15, 1.0, &v19);
                }
              }
            }

            else
            {
              if (result)
              {
                v16 = result;
                {
                  result = OZChannelFolder::testFoldFlag(v16, 0x200000);
                  if ((result & 1) == 0)
                  {
                  }
                }
              }
            }
          }

          ++v12;
        }

        while (v12 != v11);
      }
    }
  }

  return result;
}