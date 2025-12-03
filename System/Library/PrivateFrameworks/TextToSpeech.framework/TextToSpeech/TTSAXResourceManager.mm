@interface TTSAXResourceManager
+ (id)sharedInstance;
- (NSSet)allAvailableLanguages;
- (TTSAXResourceManager)init;
- (id)_resourceWithVoiceId:(id)id assetId:(id)assetId;
- (id)_resourcesWithType:(unint64_t)type subType:(unint64_t)subType languageCode:(id)code;
- (id)languageCodeForResourceName:(id)name withType:(unint64_t)type;
- (id)resourceWithVoiceId:(id)id;
- (id)resourcesWithType:(unint64_t)type subType:(unint64_t)subType;
- (id)speechVoiceWithVoiceId:(id)id;
- (id)superCompactVoiceIdForCompactVoiceId:(id)id;
- (void)_performBlockOnObservers:(id)observers;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation TTSAXResourceManager

+ (id)sharedInstance
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1A934B6E0;
  v8 = sub_1A934B6F0;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (TTSAXResourceManager)init
{
  v10.receiver = self;
  v10.super_class = TTSAXResourceManager;
  v6 = [(TTSAXResourceManager *)&v10 init];
  if (v6)
  {
    v7 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v2, v3, v4, v5);
    observers = v6->__observers;
    v6->__observers = v7;
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = TTSAXResourceManager;
  [(TTSAXResourceManager *)&v4 dealloc];
}

- (id)resourcesWithType:(unint64_t)type subType:(unint64_t)subType
{
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = objc_msgSend__resourcesWithType_subType_languageCode_(self, a2, type, subType, 0);
  }

  return v5;
}

- (id)_resourcesWithType:(unint64_t)type subType:(unint64_t)subType languageCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    v13 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, v8, v9, v10, v11);
    v17 = objc_msgSend_resourcesWithLanguageCode_(v13, v14, codeCopy, v15, v16);
  }

  else
  {
    v17 = objc_msgSend_allVoices_(self, v8, 0, v10, v11);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A934B98C;
  v23[3] = &unk_1E7880598;
  v23[4] = type;
  v23[5] = subType;
  v21 = objc_msgSend_ax_filteredArrayUsingBlock_(v17, v18, v23, v19, v20);

  return v21;
}

- (id)resourceWithVoiceId:(id)id
{
  if (id)
  {
    v5 = objc_msgSend__resourceWithVoiceId_assetId_(self, a2, id, 0, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_resourceWithVoiceId:(id)id assetId:(id)assetId
{
  idCopy = id;
  v9 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, v5, v6, v7, v8);
  v13 = objc_msgSend_resourceVoiceWithIdentifier_(v9, v10, idCopy, v11, v12);

  return v13;
}

- (id)languageCodeForResourceName:(id)name withType:(unint64_t)type
{
  nameCopy = name;
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_resourcesWithType_subType_(self, v6, type, 1, v7);
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = sub_1A934BBE0;
    v28 = &unk_1E78805C0;
    v29 = nameCopy;
    typeCopy = type;
    v14 = objc_msgSend_indexOfObjectPassingTest_(v10, v11, &v25, v12, v13);
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
      objc_msgSend_primaryLanguage(0, v15, v16, v17, v18, v25, v26, v27, v28);
    }

    else
    {
      v19 = objc_msgSend_objectAtIndex_(v10, v15, v14, v17, v18, v25, v26, v27, v28);
      objc_msgSend_primaryLanguage(v19, v20, v21, v22, v23, v25, v26, v27, v28);
    }
    v9 = ;
  }

  return v9;
}

- (id)superCompactVoiceIdForCompactVoiceId:(id)id
{
  idCopy = id;
  if (objc_msgSend_hasPrefix_(idCopy, v4, @"com.apple.voice.compact", v5, v6))
  {
    v9 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(idCopy, v7, @"compact", @"super-compact", v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)speechVoiceWithVoiceId:(id)id
{
  idCopy = id;
  v8 = objc_msgSend_allVoices_(self, v5, 0, v6, v7);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A934BDE8;
  v19[3] = &unk_1E78805E8;
  v9 = idCopy;
  v20 = v9;
  v13 = objc_msgSend_indexOfObjectPassingTest_(v8, v10, v19, v11, v12);
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend_objectAtIndex_(v8, v14, v13, v15, v16);
  }

  return v17;
}

- (NSSet)allAvailableLanguages
{
  allAvailableLanguages = self->_allAvailableLanguages;
  if (!allAvailableLanguages)
  {
    v5 = objc_msgSend_resourcesWithType_subType_(self, a2, 4, 2, v2);
    v8 = objc_msgSend_resourcesWithType_subType_(self, v6, 9, 2, v7);
    v12 = objc_msgSend_ax_filteredArrayUsingBlock_(v5, v9, &unk_1F1CEFD58, v10, v11);
    v16 = objc_msgSend_arrayByAddingObjectsFromArray_(v12, v13, v8, v14, v15);
    v21 = objc_msgSend_set(MEMORY[0x1E695DFD8], v17, v18, v19, v20);
    v25 = objc_msgSend_ax_flatMappedArrayUsingBlock_(v16, v22, &unk_1F1CEFD78, v23, v24);
    v29 = objc_msgSend_setByAddingObjectsFromArray_(v21, v26, v25, v27, v28);
    v30 = self->_allAvailableLanguages;
    self->_allAvailableLanguages = v29;

    allAvailableLanguages = self->_allAvailableLanguages;
  }

  return allAvailableLanguages;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v3 = observerCopy;
  AX_PERFORM_WITH_LOCK();
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v3 = observerCopy;
  AX_PERFORM_WITH_LOCK();
}

- (void)_performBlockOnObservers:(id)observers
{
  v29 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1A934B6E0;
  v26 = sub_1A934B6F0;
  v27 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = sub_1A934C430;
  v19 = &unk_1E7880670;
  selfCopy = self;
  v21 = &v22;
  AX_PERFORM_WITH_LOCK();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v23[5];
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v28, 16);
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        observersCopy[2](observersCopy, *(*(&v12 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v12, v28, 16);
    }

    while (v7);
  }

  _Block_object_dispose(&v22, 8);
  v11 = *MEMORY[0x1E69E9840];
}

@end