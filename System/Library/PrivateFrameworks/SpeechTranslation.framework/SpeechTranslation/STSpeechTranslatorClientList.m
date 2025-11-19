@interface STSpeechTranslatorClientList
@end

@implementation STSpeechTranslatorClientList

void __74___STSpeechTranslatorClientList_addSecondaryClientPeer_withXPCConnection___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [[_STSpeechTranslatorClientContext alloc] initWithClientPeer:a1[4]];
  [*(a1[5] + 56) setObject:v2 forKeyedSubscript:a1[6]];
  v3 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v11 = 138544130;
    v12 = v4;
    v13 = 2114;
    v14 = v2;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_DEFAULT, "clientList: %{public}@ adding context: %{public}@ for key: %{public}@ connection: %{public}@", &v11, 0x2Au);
  }

  v7 = a1[5];
  if (v7[4])
  {
    v8 = [(_STSpeechTranslatorClientContext *)v2 clientPeer];
    [v8 translationDidStart];

    v9 = [(_STSpeechTranslatorClientContext *)v2 clientPeer];
    [v9 translationDidPauseWithReason:*(a1[5] + 32)];
LABEL_7:

    goto LABEL_8;
  }

  if ([v7 _running])
  {
    v9 = [(_STSpeechTranslatorClientContext *)v2 clientPeer];
    [v9 translationDidStart];
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

void __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke_2;
    block[3] = &unk_279CF7E50;
    block[4] = WeakRetained;
    v13 = v6;
    v14 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v15 = v10;
    v16 = v11;
    dispatch_async(v9, block);
  }
}

uint64_t __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _invalidated];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = _LTOSLogSTMultiprocess();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke_2_cold_1(a1, v5, (a1 + 40));
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v6 = *(a1 + 56);
      v8 = v5;
      v9 = [v6 localeIdentifier];
      v10 = NSStringFromClass(*(a1 + 64));
      *buf = 138543874;
      v25 = v7;
      v26 = 2114;
      v27 = v9;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_26B5BC000, v8, OS_LOG_TYPE_DEFAULT, "Fetched preferredFormat: %{public}@ for locale: %{public}@ onto class: %{public}@", buf, 0x20u);
    }

    if (*(a1 + 40))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 48);
    }

    objc_storeStrong((*(a1 + 32) + 72), v11);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = *(*(a1 + 32) + 80);
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(a1 + 48);
          (*(*(*(&v19 + 1) + 8 * i) + 16))(*(*(&v19 + 1) + 8 * i));
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    result = [*(*(a1 + 32) + 80) removeAllObjects];
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void __55___STSpeechTranslatorClientList__prepareXPCConnection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138543874;
      v8 = v3;
      v9 = 2114;
      v10 = WeakRetained;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_26B5BC000, v4, OS_LOG_TYPE_INFO, "secondary connection: %{public}@ exiting, clientList: %{public}@ key: %{public}@", &v7, 0x20u);
    }

    [WeakRetained _removeSecondaryClientPeerWithConnectionKey:*(a1 + 32)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __64___STSpeechTranslatorClientList__startTranslatorWhileDispatched__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64___STSpeechTranslatorClientList__startTranslatorWhileDispatched__block_invoke_2;
    v7[3] = &unk_279CF7D38;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __73___STSpeechTranslatorClientList__stopTranslatorWhileDispatchedWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __73___STSpeechTranslatorClientList__stopTranslatorWhileDispatchedWithError___block_invoke_2;
    v5[3] = &unk_279CF7D38;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    dispatch_async(v4, v5);
  }
}

void __65___STSpeechTranslatorClientList_translator_producedSpeechResult___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v21 = v3;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_26B5BC000, v2, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback producedSpeechResult: %{public}@", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 48) produceTranscripts])
  {
    v5 = [*(*(a1 + 32) + 48) clientPeer];
    [v5 producedTranscription:*(a1 + 40)];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(*(a1 + 32) + 56) allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 produceTranscripts])
        {
          v12 = [v11 clientPeer];
          [v12 producedTranscription:*(a1 + 40)];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [*(a1 + 32) delegate];
  [v13 producedTranscription:*(a1 + 40)];

  v14 = *MEMORY[0x277D85DE8];
}

void __70___STSpeechTranslatorClientList_translator_producedTranslationResult___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v21 = v3;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_26B5BC000, v2, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback producedTranslationResult: %{public}@", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 48) produceTranslatedText])
  {
    v5 = [*(*(a1 + 32) + 48) clientPeer];
    [v5 producedTranslation:*(a1 + 40)];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(*(a1 + 32) + 56) allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 produceTranslatedText])
        {
          v12 = [v11 clientPeer];
          [v12 producedTranslation:*(a1 + 40)];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [*(a1 + 32) delegate];
  [v13 producedTranslation:*(a1 + 40)];

  v14 = *MEMORY[0x277D85DE8];
}

void __81___STSpeechTranslatorClientList_translator_willStartTranslatedAudioWithMetadata___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v21 = v3;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_26B5BC000, v2, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback willStartTranslatedAudioWithMetadata: %{public}@", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 48) produceAudio])
  {
    v5 = [*(*(a1 + 32) + 48) clientPeer];
    [v5 willStartTranslatedAudioWithMetadata:*(a1 + 40)];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(*(a1 + 32) + 56) allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 produceAudio])
        {
          v12 = [v11 clientPeer];
          [v12 willStartTranslatedAudioWithMetadata:*(a1 + 40)];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [*(a1 + 32) delegate];
  [v13 willStartTranslatedAudioWithMetadata:*(a1 + 40)];

  v14 = *MEMORY[0x277D85DE8];
}

void __71___STSpeechTranslatorClientList_translator_didGenerateTranslatedAudio___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __71___STSpeechTranslatorClientList_translator_didGenerateTranslatedAudio___block_invoke_cold_1(a1, v2);
  }

  v3 = [*(*(a1 + 32) + 48) produceAudio];
  v4 = MEMORY[0x277CBECE8];
  if (v3)
  {
    v5 = [*(a1 + 40) st_serializeWithBufferAllocator:*MEMORY[0x277CBECE8]];
    if (!v5)
    {
      goto LABEL_20;
    }

    v6 = v5;
    v7 = [*(*(a1 + 32) + 48) clientPeer];
    [v7 didGenerateTranslatedAudio:v6];
  }

  else
  {
    v6 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [*(*(a1 + 32) + 56) allValues];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = *v4;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 produceAudio])
        {
          if (!v6)
          {
            v6 = [*(a1 + 40) st_serializeWithBufferAllocator:v12];
            if (!v6)
            {
              goto LABEL_19;
            }
          }

          v15 = [v14 clientPeer];
          [v15 didGenerateTranslatedAudio:v6];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [*(a1 + 32) delegate];
  [v16 didGenerateTranslatedAudio:v6];

  v8 = v6;
LABEL_19:

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
}

void __68___STSpeechTranslatorClientList_translatorDidFinishTranslatedAudio___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v20 = v3;
    _os_log_impl(&dword_26B5BC000, v2, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback translatorDidFinishTranslatedAudio", buf, 0xCu);
  }

  if ([*(*(a1 + 32) + 48) produceAudio])
  {
    v4 = [*(*(a1 + 32) + 48) clientPeer];
    [v4 audioGenerationDidFinish];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [*(*(a1 + 32) + 56) allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 produceAudio])
        {
          v11 = [v10 clientPeer];
          [v11 audioGenerationDidFinish];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [*(a1 + 32) delegate];
  [v12 audioGenerationDidFinish];

  v13 = *MEMORY[0x277D85DE8];
}

void __59___STSpeechTranslatorClientList_startTranslationWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _whileDispatchedTransitionToState:1];
  v3 = *(a1 + 40);
  v7 = v2;
  if (v2)
  {
    v3[2]();
  }

  else
  {
    v4 = _Block_copy(v3);
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;
  }
}

void __48___STSpeechTranslatorClientList_stopTranslation__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v2 = [*(a1 + 32) _whileDispatchedTransitionToState:4];
    v3 = *(a1 + 32);
    v5 = v2;
    if (v2)
    {
      [v3 _notifyClientsOfTranslationDidStopWhileDispatchedWithError:v2];
    }

    else
    {
      v4 = v3[3];
      v3[3] = 0;
    }
  }
}

void __55___STSpeechTranslatorClientList_setProduceTranscripts___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v2 = [*(a1 + 32) _contextForKeyWhileDispatched:*(a1 + 40)];
    v3 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v9 = 138544386;
      v10 = v7;
      v11 = 2114;
      v12 = v4;
      v13 = 1024;
      v14 = v6;
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v2;
      _os_log_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_INFO, "clientList: %{public}@ connection: %{public}@ calling setProduceTranscripts: %{BOOL}d key: %{public}@ context: %{public}@", &v9, 0x30u);
    }

    [v2 setProduceTranscripts:*(a1 + 56)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __58___STSpeechTranslatorClientList_setProduceTranslatedText___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v2 = [*(a1 + 32) _contextForKeyWhileDispatched:*(a1 + 40)];
    v3 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v9 = 138544386;
      v10 = v7;
      v11 = 2114;
      v12 = v4;
      v13 = 1024;
      v14 = v6;
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v2;
      _os_log_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_INFO, "clientList: %{public}@ connection: %{public}@ calling setProduceTranslatedText: %{BOOL}d key: %{public}@ context: %{public}@", &v9, 0x30u);
    }

    [v2 setProduceTranslatedText:*(a1 + 56)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __49___STSpeechTranslatorClientList_setProduceAudio___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v2 = [*(a1 + 32) _contextForKeyWhileDispatched:*(a1 + 40)];
    v3 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v9 = 138544386;
      v10 = v7;
      v11 = 2114;
      v12 = v4;
      v13 = 1024;
      v14 = v6;
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v2;
      _os_log_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_INFO, "clientList: %{public}@ connection: %{public}@ calling setProduceAudio: %{BOOL}d key: %{public}@ context: %{public}@", &v9, 0x30u);
    }

    [v2 setProduceAudio:*(a1 + 56)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __67___STSpeechTranslatorClientList_setPreferredTranslatedAudioFormat___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _invalidated];
  if ((result & 1) == 0)
  {
    v3 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(v4 + 40);
      v8 = 138543874;
      v9 = v4;
      v10 = 2114;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_INFO, "clientList: %{public}@ applying format: %{public}@ to translator: %{public}@", &v8, 0x20u);
    }

    result = [*(*(a1 + 32) + 40) setPreferredOutputAudioFormat:*(a1 + 40)];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __80___STSpeechTranslatorClientList_obtainCachedPreferredSourceAudioFormat_inReply___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _invalidated])
  {
    v2 = *(*(a1 + 40) + 16);
LABEL_6:

    v2();
    return;
  }

  v3 = *(a1 + 32);
  if (*(v3 + 72) || *(a1 + 48) == 1)
  {
    v2 = *(*(a1 + 40) + 16);
    goto LABEL_6;
  }

  v4 = *(v3 + 80);
  v5 = _Block_copy(*(a1 + 40));
  [v4 addObject:v5];
}

uint64_t __54___STSpeechTranslatorClientList_translateAudioBuffer___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _running];
  if (result)
  {
    v3 = [MEMORY[0x277CB83C8] st_deserializeData:*(a1 + 40) withBufferAllocator:*MEMORY[0x277CBECE8]];
    if (v3)
    {
      [*(*(a1 + 32) + 40) addAudio:v3];
    }

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void __60___STSpeechTranslatorClientList_pauseTranslationWithReason___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = v2[3];
    if (([v2 _running] & 1) != 0 || v3)
    {
      if (!v3)
      {
        v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v5 = *(a1 + 32);
        v6 = *(v5 + 24);
        *(v5 + 24) = v4;
      }

      [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
      v7 = [*(a1 + 32) _whileDispatchedTransitionToState:4];
      if (v7)
      {
        v8 = _LTOSLogSTMultiprocess();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 32);
          v16 = *(a1 + 40);
          v17 = 138543874;
          v18 = v15;
          v19 = 2114;
          v20 = v16;
          v21 = 2112;
          v22 = v7;
          _os_log_error_impl(&dword_26B5BC000, v8, OS_LOG_TYPE_ERROR, "clientList: %{public}@ failed to process pause with reason: %{public}@, error: %@", &v17, 0x20u);
        }

        [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
        if (!v3)
        {
          v9 = *(a1 + 32);
          v10 = *(v9 + 24);
          *(v9 + 24) = 0;
        }
      }

      else
      {
        objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
        v11 = _LTOSLogSTMultiprocess();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 32);
          v13 = *(a1 + 40);
          v17 = 138543618;
          v18 = v12;
          v19 = 2114;
          v20 = v13;
          _os_log_impl(&dword_26B5BC000, v11, OS_LOG_TYPE_INFO, "clientList: %{public}@ processing pause with reason: %{public}@", &v17, 0x16u);
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    if (*(*v1 + 3))
    {
      v2 = [*v1 _whileDispatchedTransitionToState:3];
      v3 = _LTOSLogSTMultiprocess();
      v4 = v3;
      if (v2)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke_cold_1(v1);
        }
      }

      else
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v6 = *v1;
          v8 = 138543362;
          v9 = v6;
          _os_log_impl(&dword_26B5BC000, v4, OS_LOG_TYPE_INFO, "clientList: %{public}@ processing resume", &v8, 0xCu);
        }

        [*v1 _resetPauseReasons];
      }
    }

    else
    {
      v5 = _LTOSLogSTMultiprocess();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke_cold_2(v1, v5);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = [v5 localeIdentifier];
  v8 = NSStringFromClass(*(a1 + 64));
  v9 = *a3;
  v11 = 138543874;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  v15 = 2112;
  v16 = v9;
  _os_log_error_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_ERROR, "Fetching preferredFormat for locale: %{public}@ onto class: %{public}@ failed with error: %@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __71___STSpeechTranslatorClientList_translator_didGenerateTranslatedAudio___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v3;
  _os_log_debug_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_DEBUG, "clientList: %{public}@ received callback didGenerateTranslatedAudio: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "clientList: %{public}@ rejecting resume because there is no pause in progress", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end