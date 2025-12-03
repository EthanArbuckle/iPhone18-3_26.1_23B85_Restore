@interface CSEventListenerDonation
- (CSEventListenerDonation)initWithSerialNumber:(unint64_t)number bundle:(const char *)bundle journalCookie:(const char *)cookie itemsObj:(id *)obj contentDictObj:(id *)dictObj htmlDictObj:(id *)htmlDictObj embeddingsObj:(id *)embeddingsObj indexType:(int)self0 bundleHash:(unsigned int)self1;
- (__n128)setContentDictObj:(__n128 *)obj;
- (__n128)setEmbeddingsObj:(__n128 *)obj;
- (__n128)setHtmlDictObj:(uint64_t)obj;
- (__n128)setItemsObj:(uint64_t)obj;
- (uint64_t)contentDictObj;
- (uint64_t)embeddingsObj;
- (uint64_t)homePathHash;
- (uint64_t)htmlDictObj;
- (uint64_t)indexTypeName;
- (uint64_t)itemsObj;
- (uint64_t)setBundle:(uint64_t)result;
- (uint64_t)setBundleHash:(uint64_t)result;
- (uint64_t)setFd:(uint64_t)result;
- (uint64_t)setHomePathHash:(uint64_t)result;
- (uint64_t)setIndexType:(uint64_t)result;
- (uint64_t)setIsManaged:(uint64_t)result;
- (uint64_t)setJournalCookie:(uint64_t)result;
- (uint64_t)setOffset:(uint64_t)result;
- (uint64_t)setSize:(uint64_t)result;
- (unsigned)protectionClass;
- (void)iterateItems:(id)items;
@end

@implementation CSEventListenerDonation

- (CSEventListenerDonation)initWithSerialNumber:(unint64_t)number bundle:(const char *)bundle journalCookie:(const char *)cookie itemsObj:(id *)obj contentDictObj:(id *)dictObj htmlDictObj:(id *)htmlDictObj embeddingsObj:(id *)embeddingsObj indexType:(int)self0 bundleHash:(unsigned int)self1
{
  v22.receiver = self;
  v22.super_class = CSEventListenerDonation;
  result = [(CSEventListenerDonation *)&v22 init];
  if (result)
  {
    result->_serialNumber = number;
    result->_bundle = bundle;
    result->_journalCookie = cookie;
    v18 = *&obj->var0;
    result->_itemsObj.reference = obj->var2;
    *&result->_itemsObj.containerBytes = v18;
    v19 = *&dictObj->var0;
    result->_contentDictObj.reference = dictObj->var2;
    *&result->_contentDictObj.containerBytes = v19;
    v20 = *&htmlDictObj->var0;
    result->_htmlDictObj.reference = htmlDictObj->var2;
    *&result->_htmlDictObj.containerBytes = v20;
    v21 = *&embeddingsObj->var0;
    result->_embeddingsObj.reference = embeddingsObj->var2;
    *&result->_embeddingsObj.containerBytes = v21;
    result->_indexType = type;
    result->_bundleHash = hash;
  }

  return result;
}

- (void)iterateItems:(id)items
{
  itemsCopy = items;
  v33[4] = self->_itemsObj;
  if (_MDPlistGetPlistObjectType() == 240)
  {
    v33[4] = self->_contentDictObj;
    PlistObjectType = _MDPlistGetPlistObjectType();
    v33[4] = self->_htmlDictObj;
    v6 = _MDPlistGetPlistObjectType();
    v33[4] = self->_itemsObj;
    Count = _MDPlistArrayGetCount();
    if (Count)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        memset(&v33[4], 0, sizeof($DD1C4990CCBE32AF9555CAB6BCF9DEC8));
        *&v33[2].reference.embeddedReference = *&self->_itemsObj.containerBytes;
        v33[3].containerLength = self->_itemsObj.reference;
        _MDPlistArrayGetPlistObjectAtIndex();
        *&v33[2].reference.embeddedReference = v33[4];
        if (_MDPlistGetPlistObjectType() == 246)
        {
          v33[1].containerLength = 0;
          *&v33[2].reference.embeddedReference = v33[4];
          _MDPlistDataGetBytePtr();
          _MDPlistGetRootPlistObjectFromBytes();
          v33[4] = *&v33[2].reference.embeddedReference;
        }

        *&v33[2].reference.embeddedReference = v33[4];
        if (_MDPlistGetPlistObjectType() == 240)
        {
          *&v33[2].reference.embeddedReference = v33[4];
          v10 = _MDPlistArrayGetCount();
          if ((v10 - 3) <= 1)
          {
            v11 = v10;
            *&v33[1].containerLength = v33[4];
            _MDPlistArrayGetPlistObjectAtIndex();
            IntValue = _MDPlistNumberGetIntValue();
            memset(&v33[2].reference, 0, sizeof($DD1C4990CCBE32AF9555CAB6BCF9DEC8));
            *&v33[1].containerLength = v33[4];
            _MDPlistArrayGetPlistObjectAtIndex();
            memset(&v33[1].containerLength, 0, sizeof($DD1C4990CCBE32AF9555CAB6BCF9DEC8));
            *&v33[0].containerBytes = *&v33[2].reference.embeddedReference;
            v33[0].reference = v33[3].containerLength;
            if (_MDPlistDictionaryGetPlistObjectForKey())
            {
              v32 = 0;
              v31 = 0;
              v33[0] = *&v33[1].containerLength;
              _MDPlistStringGetValue();
              memset(v33, 0, 24);
              v29 = 0uLL;
              v30 = 0;
              v27 = 0uLL;
              v28 = 0;
              if (v11 == 4)
              {
                contentDictObj = v33[4];
                _MDPlistArrayGetPlistObjectAtIndex();
              }

              if (PlistObjectType == 241)
              {
                contentDictObj = self->_contentDictObj;
                _MDPlistDictionaryGetPlistObjectForKey();
              }

              if (v6 == 241)
              {
                contentDictObj = self->_htmlDictObj;
                _MDPlistDictionaryGetPlistObjectForKey();
              }

              v13 = [CSEventDonationJournalItem alloc];
              contentDictObj = *&v33[1].containerLength;
              v25 = v33[4];
              v23 = *&v33[2].reference.embeddedReference;
              containerLength = v33[3].containerLength;
              v22 = v33[0];
              v20 = v29;
              v21 = v30;
              v18 = v27;
              v19 = v28;
              memset(v17, 0, sizeof(v17));
              LODWORD(v16) = IntValue;
              v14 = [(CSEventDonationJournalItem *)v13 initWithIdentifier:&contentDictObj itemObj:&v25 attrDictObj:&v23 customDictObj:&v22 contentObj:&v20 htmlObj:&v18 embeddingsObj:v17 flags:v16];
              v15 = itemsCopy[2](itemsCopy, v14);

              if (v15)
              {
                break;
              }
            }
          }
        }
      }
    }
  }
}

- (uint64_t)itemsObj
{
  if (result)
  {
    *a2 = *(result + 72);
    *(a2 + 16) = *(result + 88);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (uint64_t)contentDictObj
{
  if (result)
  {
    *a2 = *(result + 96);
    *(a2 + 16) = *(result + 112);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (uint64_t)htmlDictObj
{
  if (result)
  {
    *a2 = *(result + 120);
    *(a2 + 16) = *(result + 136);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (uint64_t)embeddingsObj
{
  if (result)
  {
    *a2 = *(result + 144);
    *(a2 + 16) = *(result + 160);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (unsigned)protectionClass
{
  if (self)
  {
    self = protectionClassWithType(self[4]);
    v1 = vars8;
  }

  return self;
}

- (uint64_t)indexTypeName
{
  if (self)
  {
    return OUTLINED_FUNCTION_18(self);
  }

  return self;
}

- (uint64_t)setFd:(uint64_t)result
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

- (uint64_t)setOffset:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)setSize:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setBundle:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

- (uint64_t)setJournalCookie:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

- (__n128)setItemsObj:(uint64_t)obj
{
  if (obj)
  {
    result = *a2;
    *(obj + 88) = a2[1].n128_u64[0];
    *(obj + 72) = result;
  }

  return result;
}

- (__n128)setContentDictObj:(__n128 *)obj
{
  if (obj)
  {
    result = *a2;
    obj[7].n128_u64[0] = a2[1].n128_u64[0];
    obj[6] = result;
  }

  return result;
}

- (__n128)setHtmlDictObj:(uint64_t)obj
{
  if (obj)
  {
    result = *a2;
    *(obj + 136) = a2[1].n128_u64[0];
    *(obj + 120) = result;
  }

  return result;
}

- (uint64_t)setIndexType:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setBundleHash:(uint64_t)result
{
  if (result)
  {
    *(result + 20) = a2;
  }

  return result;
}

- (uint64_t)setIsManaged:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)homePathHash
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)setHomePathHash:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (__n128)setEmbeddingsObj:(__n128 *)obj
{
  if (obj)
  {
    result = *a2;
    obj[10].n128_u64[0] = a2[1].n128_u64[0];
    obj[9] = result;
  }

  return result;
}

@end