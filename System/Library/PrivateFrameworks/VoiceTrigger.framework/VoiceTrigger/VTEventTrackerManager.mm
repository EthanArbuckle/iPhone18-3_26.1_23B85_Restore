@interface VTEventTrackerManager
- (VTEventTrackerManager)init;
- (id)_contentsOfDirectoryAtURL:(id)l matchingPattern:(id)pattern includingPropertiesForKeys:(id)keys error:(id *)error;
- (id)_contentsOfDirectoryAtURL:(id)l matchingPattern:(id)pattern sortedByDateWithResourceKey:(id)key error:(id *)error;
- (id)_dictionaryToJson:(id)json;
- (id)_sortedURLsInDirectory:(id)directory matchingPattern:(id)pattern;
- (void)voiceTriggerEvent:(id)event;
@end

@implementation VTEventTrackerManager

- (id)_contentsOfDirectoryAtURL:(id)l matchingPattern:(id)pattern sortedByDateWithResourceKey:(id)key error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  patternCopy = pattern;
  keyCopy = key;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__190;
  v24 = __Block_byref_object_dispose__191;
  v25 = 0;
  v26[0] = keyCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v14 = [(VTEventTrackerManager *)self _contentsOfDirectoryAtURL:lCopy matchingPattern:patternCopy includingPropertiesForKeys:v13 error:error];

  if (v14)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101__VTEventTrackerManager__contentsOfDirectoryAtURL_matchingPattern_sortedByDateWithResourceKey_error___block_invoke;
    v17[3] = &unk_2784EC410;
    v18 = keyCopy;
    v19 = &v20;
    v15 = [v14 sortedArrayUsingComparator:v17];
  }

  else
  {
    v15 = 0;
  }

  if (v21[5])
  {

    v15 = 0;
    if (error)
    {
      *error = v21[5];
    }
  }

  _Block_object_dispose(&v20, 8);

  return v15;
}

uint64_t __101__VTEventTrackerManager__contentsOfDirectoryAtURL_matchingPattern_sortedByDateWithResourceKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  obj = 0;
  v20 = 0;
  v7 = *(*(a1 + 40) + 8);
  v8 = [v5 getResourceValue:&v20 forKey:*(a1 + 32) error:&obj];
  v9 = v20;
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    NSLog(&cfstr_UnableToGetFor.isa, *(a1 + 32), v5, *(*(*(a1 + 40) + 8) + 40));
  }

  v17 = 0;
  v18 = 0;
  v10 = *(*(a1 + 40) + 8);
  v11 = [v6 getResourceValue:&v18 forKey:*(a1 + 32) error:&v17];
  v12 = v18;
  objc_storeStrong((v10 + 40), v17);
  if ((v11 & 1) == 0)
  {
    NSLog(&cfstr_UnableToGetFor.isa, *(a1 + 32), v6, *(*(*(a1 + 40) + 8) + 40));
  }

  v13 = [v12 compare:v9];
  if (!v13)
  {
    v14 = [v6 path];
    v15 = [v14 containsString:@"-prepare"];

    if (v15)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (id)_contentsOfDirectoryAtURL:(id)l matchingPattern:(id)pattern includingPropertiesForKeys:(id)keys error:(id *)error
{
  lCopy = l;
  keysCopy = keys;
  v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:pattern options:17 error:error];
  if (v11)
  {
    v12 = objc_opt_new();
    v13 = [v12 contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:keysCopy options:0 error:error];
    if (v13)
    {
      v14 = MEMORY[0x277CCAC30];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __100__VTEventTrackerManager__contentsOfDirectoryAtURL_matchingPattern_includingPropertiesForKeys_error___block_invoke;
      v18[3] = &unk_2784EC3E8;
      v19 = v11;
      v15 = [v14 predicateWithBlock:v18];
      v16 = [v13 filteredArrayUsingPredicate:v15];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

BOOL __100__VTEventTrackerManager__contentsOfDirectoryAtURL_matchingPattern_includingPropertiesForKeys_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [*(a1 + 32) numberOfMatchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}] != 0;

  return v4;
}

- (id)_sortedURLsInDirectory:(id)directory matchingPattern:(id)pattern
{
  v4 = *MEMORY[0x277CBE7C0];
  v7 = 0;
  v5 = [(VTEventTrackerManager *)self _contentsOfDirectoryAtURL:directory matchingPattern:pattern sortedByDateWithResourceKey:v4 error:&v7];

  return v5;
}

- (id)_dictionaryToJson:(id)json
{
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:json options:1 error:0];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)voiceTriggerEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__VTEventTrackerManager_voiceTriggerEvent___block_invoke;
    v7[3] = &unk_2784ECD30;
    v7[4] = self;
    v8 = eventCopy;
    dispatch_async(queue, v7);
  }
}

void __43__VTEventTrackerManager_voiceTriggerEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEBC0];
  if (VTAudioLogDirectory_onceToken != -1)
  {
    dispatch_once(&VTAudioLogDirectory_onceToken, &__block_literal_global_6627);
  }

  v4 = VTAudioLogDirectory_logPath;
  v5 = [v3 URLWithString:v4];
  v6 = [v2 _sortedURLsInDirectory:v5 matchingPattern:@".*.json"];

  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [VTEvent eventFromURL:*(*(&v15 + 1) + 8 * i), v15];
        v14 = [v13 eventTrackerDictionary];
        if (v14)
        {
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
}

- (VTEventTrackerManager)init
{
  v6.receiver = self;
  v6.super_class = VTEventTrackerManager;
  v2 = [(VTEventTrackerManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.voicetrigger.eventtracker", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end