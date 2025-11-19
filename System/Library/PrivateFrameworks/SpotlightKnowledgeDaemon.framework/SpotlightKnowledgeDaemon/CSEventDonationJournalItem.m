@interface CSEventDonationJournalItem
- (BOOL)containsAnyInAttributes:(id)a3;
- (BOOL)containsAttribute:(id)a3;
- (BOOL)hasHTMLContent;
- (BOOL)hasTextContent;
- (BOOL)isUpdate;
- (BOOL)isUserActivity;
- (CSEventDonationJournalItem)initWithIdentifier:(id *)a3 itemObj:(id *)a4 attrDictObj:(id *)a5 customDictObj:(id *)a6 contentObj:(id *)a7 htmlObj:(id *)a8 embeddingsObj:(id *)a9 flags:(unsigned int)a10;
- (id)attributesForKeys:(id)a3 bundleID:(id)a4;
- (uint64_t)attrDictObj;
- (uint64_t)contentObj;
- (uint64_t)customDictObj;
- (uint64_t)embeddingsObj;
- (uint64_t)flags;
- (uint64_t)htmlObj;
- (uint64_t)identifier;
- (uint64_t)itemObj;
@end

@implementation CSEventDonationJournalItem

- (CSEventDonationJournalItem)initWithIdentifier:(id *)a3 itemObj:(id *)a4 attrDictObj:(id *)a5 customDictObj:(id *)a6 contentObj:(id *)a7 htmlObj:(id *)a8 embeddingsObj:(id *)a9 flags:(unsigned int)a10
{
  v24.receiver = self;
  v24.super_class = CSEventDonationJournalItem;
  result = [(CSEventDonationJournalItem *)&v24 init];
  if (result)
  {
    v17 = *&a3->var0;
    result->_identifier.reference = a3->var2;
    *&result->_identifier.containerBytes = v17;
    v18 = *&a4->var0;
    result->_itemObj.reference = a4->var2;
    *&result->_itemObj.containerBytes = v18;
    v19 = *&a5->var0;
    result->_attrDictObj.reference = a5->var2;
    *&result->_attrDictObj.containerBytes = v19;
    v20 = *&a6->var0;
    result->_customDictObj.reference = a6->var2;
    *&result->_customDictObj.containerBytes = v20;
    v21 = *&a7->var0;
    result->_contentObj.reference = a7->var2;
    *&result->_contentObj.containerBytes = v21;
    v22 = *&a8->var0;
    result->_htmlObj.reference = a8->var2;
    *&result->_htmlObj.containerBytes = v22;
    v23 = *&a9->var0;
    result->_embeddingsObj.reference = a9->var2;
    *&result->_embeddingsObj.containerBytes = v23;
    result->_flags = a10;
  }

  return result;
}

- (BOOL)hasTextContent
{
  if (self)
  {
    contentObj = self->_contentObj;
    if (_MDPlistGetPlistObjectType() == 244)
    {
      return 1;
    }

    v5 = *&self->_contentObj.containerBytes;
    reference = self->_contentObj.reference;
  }

  else if (_MDPlistGetPlistObjectType() == 244)
  {
    return 1;
  }

  return _MDPlistGetPlistObjectType() == 245;
}

- (uint64_t)contentObj
{
  if (result)
  {
    *a2 = *(result + 112);
    *(a2 + 16) = *(result + 128);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (BOOL)hasHTMLContent
{
  if (self)
  {
    htmlObj = self->_htmlObj;
  }

  return _MDPlistGetPlistObjectType() == 246;
}

- (uint64_t)htmlObj
{
  if (result)
  {
    *a2 = *(result + 136);
    *(a2 + 16) = *(result + 152);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (BOOL)isUserActivity
{
  if (self)
  {
    attrDictObj = self->_attrDictObj;
  }

  return _MDPlistDictionaryGetPlistObjectForKey() != 0;
}

- (uint64_t)attrDictObj
{
  if (result)
  {
    *a2 = *(result + 64);
    *(a2 + 16) = *(result + 80);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (BOOL)containsAnyInAttributes:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v5)
  {
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if (![(CSEventDonationJournalItem *)self containsAttribute:v8])
        {
          if (!self)
          {
            continue;
          }

          if (!self->_customDictObj.containerLength)
          {
            continue;
          }

          v16 = *&self->_customDictObj.containerBytes;
          reference = self->_customDictObj.reference;
          v9 = v8;
          [v8 UTF8String];
          v10 = v8;
          strlen([v8 UTF8String]);
          if (!_MDPlistDictionaryGetPlistObjectForKey())
          {
            continue;
          }
        }

        LOBYTE(self) = 1;
        goto LABEL_16;
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (self)
  {
    if (self->_customDictObj.containerLength)
    {
      *&v16 = 0;
      *(&v16 + 1) = &v16;
      reference = 0x2020000000;
      v18 = 0;
      v14 = *&self->_customDictObj.containerBytes;
      v15 = self->_customDictObj.reference;
      v13 = v4;
      _MDPlistDictionaryIterate();
      LOBYTE(self) = *(*(&v16 + 1) + 24);

      _Block_object_dispose(&v16, 8);
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
  return self & 1;
}

- (uint64_t)customDictObj
{
  if (result)
  {
    *a2 = *(result + 88);
    *(a2 + 16) = *(result + 104);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void __54__CSEventDonationJournalItem_containsAnyInAttributes___block_invoke(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a2, a3, 0x8000100u, 0, *MEMORY[0x277CBED00]);
    if ([*(a1 + 32) containsObject:?])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (BOOL)containsAttribute:(id)a3
{
  v4 = a3;
  if (![v4 isEqualToString:@"kMDItemTextContent"])
  {
    if ([v4 isEqualToString:@"kMDItemHTMLContentData"])
    {
      v5 = [(CSEventDonationJournalItem *)self hasHTMLContent];
      goto LABEL_5;
    }

    if ([v4 isEqualToString:@"kMDItemExtraData"])
    {
      if (!self || !self->_customDictObj.containerLength)
      {
        goto LABEL_16;
      }

      v9 = *&self->_customDictObj.containerBytes;
      reference = self->_customDictObj.reference;
    }

    else
    {
      if (!self)
      {
        v9 = 0uLL;
        v10 = 0;
LABEL_14:
        [v4 UTF8String];
        strlen([v4 UTF8String]);
        if (_MDPlistDictionaryGetPlistObjectForKey())
        {
          v6 = 1;
          goto LABEL_6;
        }

LABEL_16:
        v6 = 0;
        goto LABEL_6;
      }

      v9 = *&self->_attrDictObj.containerBytes;
      reference = self->_attrDictObj.reference;
    }

    v10 = reference;
    goto LABEL_14;
  }

  v5 = [(CSEventDonationJournalItem *)self hasTextContent];
LABEL_5:
  v6 = v5;
LABEL_6:

  return v6;
}

- (id)attributesForKeys:(id)a3 bundleID:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count") + 1}];
  v34 = 0uLL;
  v35 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    v12 = *MEMORY[0x277CBECE8];
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        if (-[CSEventDonationJournalItem hasHTMLContent](self, "hasHTMLContent") && [v14 isEqualToString:@"kMDItemHTMLContentData"])
        {
          if (self)
          {
            v24 = *&self->_htmlObj.containerBytes;
            reference = self->_htmlObj.reference;
          }
        }

        else
        {
          if (!-[CSEventDonationJournalItem hasTextContent](self, "hasTextContent") || ![v14 isEqualToString:@"kMDItemTextContent"])
          {
            if ([v14 isEqualToString:@"kMDItemExtraData"] && SKGBundleIsWallet())
            {
              if (!self)
              {
                goto LABEL_23;
              }

              if (!self->_customDictObj.containerLength || (v26 = *&self->_customDictObj.containerBytes, v28 = self->_customDictObj.reference, [v14 UTF8String], strlen(objc_msgSend(v14, "UTF8String")), !_MDPlistDictionaryGetPlistObjectForKey()))
              {
LABEL_22:
                v27 = *&self->_attrDictObj.containerBytes;
                v29 = self->_attrDictObj.reference;
                goto LABEL_23;
              }
            }

            else
            {
              if (self)
              {
                goto LABEL_22;
              }

LABEL_23:
              [v14 UTF8String];
              strlen([v14 UTF8String]);
              if (!_MDPlistDictionaryGetPlistObjectForKey())
              {
                goto LABEL_28;
              }
            }

            v17 = _MDPlistContainerCopyObject();
            goto LABEL_25;
          }

          if (self)
          {
            v25 = *&self->_contentObj.containerBytes;
            v16 = self->_contentObj.reference;
          }
        }

        v17 = MDJournalReaderMDPlistObjectCopy();
LABEL_25:
        v18 = v17;
        if (v17)
        {
          [v7 setObject:v17 forKey:v14];
        }

LABEL_28:
        ++v13;
      }

      while (v10 != v13);
      v19 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
      v10 = v19;
    }

    while (v19);
  }

  if (v23)
  {
    v20 = [v7 objectForKey:@"_kMDItemBundleID"];

    if (!v20)
    {
      [v7 setObject:v23 forKey:@"_kMDItemBundleID"];
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

- (uint64_t)identifier
{
  if (result)
  {
    *a2 = *(result + 16);
    *(a2 + 16) = *(result + 32);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (uint64_t)itemObj
{
  if (result)
  {
    *a2 = *(result + 40);
    *(a2 + 16) = *(result + 56);
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
    *a2 = *(result + 160);
    *(a2 + 16) = *(result + 176);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (BOOL)isUpdate
{
  if (self)
  {
    LOBYTE(self) = self->_flags & 1;
  }

  return self;
}

- (uint64_t)flags
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end