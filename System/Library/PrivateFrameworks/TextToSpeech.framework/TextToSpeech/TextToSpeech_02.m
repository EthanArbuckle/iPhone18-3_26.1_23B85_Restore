void sub_1A9359FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id location, char a55)
{
  _Block_object_dispose(&a55, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1A935A0D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v5 = qword_1ED970330;
  v12 = qword_1ED970330;
  if (!qword_1ED970330)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A935BB44;
    v8[3] = &unk_1E787FF60;
    v8[4] = &v9;
    sub_1A935BB44(v8, a2, a3, a4, a5);
    v5 = v10[3];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1A935A19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A935A1B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v5 = qword_1EB391048;
  v17 = qword_1EB391048;
  if (!qword_1EB391048)
  {
    v6 = sub_1A935BB9C(a1, a2, a3, a4, a5);
    v15[3] = dlsym(v6, "AXSpeechSourceKeyVoiceOver");
    qword_1EB391048 = v15[3];
    v5 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v5)
  {
    sub_1A9578C00(v7, v8, v9, v10, v11);
  }

  v12 = *v5;

  return v12;
}

void sub_1A935A2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A935A2B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v5 = qword_1EB391050;
  v17 = qword_1EB391050;
  if (!qword_1EB391050)
  {
    v6 = sub_1A935BB9C(a1, a2, a3, a4, a5);
    v15[3] = dlsym(v6, "AXSpeechSourceKeySwitchControl");
    qword_1EB391050 = v15[3];
    v5 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v5)
  {
    sub_1A9578C78(v7, v8, v9, v10, v11);
  }

  v12 = *v5;

  return v12;
}

void sub_1A935A3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A935A3BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v5 = qword_1EB391058;
  v17 = qword_1EB391058;
  if (!qword_1EB391058)
  {
    v6 = sub_1A935BB9C(a1, a2, a3, a4, a5);
    v15[3] = dlsym(v6, "AXSpeechSourceKeySpeechFeatures");
    qword_1EB391058 = v15[3];
    v5 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v5)
  {
    sub_1A9578CF0(v7, v8, v9, v10, v11);
  }

  v12 = *v5;

  return v12;
}

void sub_1A935A4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A935A4C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend__accessibilityBoolValueForKey_(*(a1 + 32), a2, @"AXAVSpeechUtteranceIsStopped", a4, a5))
  {
    v11 = objc_msgSend_inflightUtterance(*(a1 + 40), v7, v8, v9, v10);
    objc_msgSend__accessibilitySetBoolValue_forKey_(v11, v12, 0, @"AXAVSpeechUtteranceIsStopped", v13);

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    objc_msgSend_processSpeechJobFinished_successful_(WeakRetained, v14, *(a1 + 32), a3, v15);
  }
}

id sub_1A935A56C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v5 = qword_1EB391060;
  v17 = qword_1EB391060;
  if (!qword_1EB391060)
  {
    v6 = sub_1A935BE48(a1, a2, a3, a4, a5);
    v15[3] = dlsym(v6, "UIAccessibilityTokenBrailleDisplayOnly");
    qword_1EB391060 = v15[3];
    v5 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v5)
  {
    sub_1A9578D68(v7, v8, v9, v10, v11);
  }

  v12 = *v5;

  return v12;
}

void sub_1A935A658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A935A670(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = objc_loadWeakRetained((a1 + 40));
    v11 = objc_msgSend_utterance(v14, v7, v8, v9, v10);
    objc_msgSend_speechSynthesizer_didStartSpeechUtterance_(v5, v12, v6, v11, v13);
  }
}

void sub_1A935A724(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = objc_loadWeakRetained((a1 + 40));
    v11 = objc_msgSend_utterance(v14, v7, v8, v9, v10);
    objc_msgSend_speechSynthesizer_didPauseSpeechUtterance_(v5, v12, v6, v11, v13);
  }
}

void sub_1A935A7D8(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = objc_loadWeakRetained((a1 + 40));
    v11 = objc_msgSend_utterance(v14, v7, v8, v9, v10);
    objc_msgSend_speechSynthesizer_didContinueSpeechUtterance_(v5, v12, v6, v11, v13);
  }
}

void sub_1A935A88C(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v12 = objc_msgSend_utterance(v21, v8, v9, v10, v11);
    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = objc_loadWeakRetained((a1 + 40));
    v19 = objc_msgSend_avMark(v5, v15, v16, v17, v18);
    objc_msgSend_speechSynthesizer_willSpeakMarker_utterance_(v13, v20, v14, v19, v12);
  }
}

void sub_1A935A970(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_opt_respondsToSelector();

  v13 = v39;
  if (v8)
  {
    v14 = objc_msgSend_utterance(v39, v9, v10, v11, v12);
    v19 = objc_msgSend_ssmlRepresentation(v14, v15, v16, v17, v18);
    v24 = v19;
    if (v19)
    {
      v25 = v19;
    }

    else
    {
      v25 = objc_msgSend_speechString(v14, v20, v21, v22, v23);
    }

    v26 = v25;

    if (a3 + a4 <= objc_msgSend_length(v26, v27, v28, v29, v30))
    {
      v31 = objc_loadWeakRetained((a1 + 32));
      v32 = objc_loadWeakRetained((a1 + 40));
      v37 = objc_msgSend_utterance(v39, v33, v34, v35, v36);
      objc_msgSend_speechSynthesizer_willSpeakRangeOfSpeechString_utterance_(v31, v38, v32, a3, a4, v37);
    }

    v13 = v39;
  }
}

void sub_1A935AA9C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleSpeechDone_successful_(WeakRetained, v6, v5, a3, v7);
}

void sub_1A935AB08(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_utterance(a3, a2, a3, a4, a5);
  objc_msgSend_processSpeechJobFinished_successful_(a1, v7, v9, a4, v8);
}

uint64_t sub_1A935AB74(void *a1, uint64_t a2, uint64_t a3)
{
  if (!TTSUseCoreSynthesizerForAV())
  {
    v15 = a1;
    objc_sync_enter(v15);
    v20 = objc_msgSend_inflightUtterance(v15, v16, v17, v18, v19);
    if (v20)
    {
    }

    else
    {
      v29 = objc_msgSend_speechQueue(v15, v21, v22, v23, v24);
      v34 = objc_msgSend_count(v29, v30, v31, v32, v33);

      if (!v34)
      {
        v14 = 0;
LABEL_9:
        objc_sync_exit(v15);

        return v14 & 1;
      }
    }

    v35 = objc_msgSend_inflightUtterance(v15, v25, v26, v27, v28);
    objc_msgSend__accessibilitySetBoolValue_forKey_(v35, v36, 1, @"AXAVSpeechUtteranceIsStopped", v37);

    v42 = objc_msgSend_speechManager(v15, v38, v39, v40, v41);
    v46 = objc_msgSend__convertBoundary_(v15, v43, a3, v44, v45);
    objc_msgSend_stopSpeaking_(v42, v47, v46, v48, v49);

    v54 = objc_msgSend_speechManager(v15, v50, v51, v52, v53);
    objc_msgSend_clearSpeechQueue(v54, v55, v56, v57, v58);

    v63 = objc_msgSend_speechQueue(v15, v59, v60, v61, v62);
    v68 = objc_msgSend_count(v63, v64, v65, v66, v67);

    if (v68 >= 2)
    {
      v73 = objc_msgSend_speechQueue(v15, v69, v70, v71, v72);
      v78 = objc_msgSend_speechQueue(v15, v74, v75, v76, v77);
      v83 = objc_msgSend_count(v78, v79, v80, v81, v82);
      objc_msgSend_removeObjectsInRange_(v73, v84, 1, v83 - 1, v85);
    }

    v14 = 1;
    goto LABEL_9;
  }

  v5 = dispatch_semaphore_create(0);
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v10 = objc_msgSend_coreSynth(a1, v6, v7, v8, v9);
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = sub_1A935ADCC;
  v87[3] = &unk_1E7880A98;
  v89 = &v90;
  v11 = v5;
  v88 = v11;
  objc_msgSend_stopSpeakingAt_completionHandler_(v10, v12, a3, v87, v13);

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v14 = *(v91 + 24);

  _Block_object_dispose(&v90, 8);
  return v14 & 1;
}

void sub_1A935ADA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A935ADE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (!TTSUseCoreSynthesizerForAV())
  {
    v14 = a1;
    objc_sync_enter(v14);
    v19 = objc_msgSend_inflightUtterance(v14, v15, v16, v17, v18);
    if (v19)
    {
    }

    else
    {
      v28 = objc_msgSend_speechQueue(v14, v20, v21, v22, v23);
      v33 = objc_msgSend_count(v28, v29, v30, v31, v32);

      if (!v33)
      {
        v13 = 0;
        goto LABEL_7;
      }
    }

    v34 = objc_msgSend_speechManager(v14, v24, v25, v26, v27);
    v38 = objc_msgSend__convertBoundary_(v14, v35, a3, v36, v37);
    objc_msgSend_pauseSpeaking_(v34, v39, v38, v40, v41);

    v13 = 1;
LABEL_7:
    objc_sync_exit(v14);

    return v13 & 1;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v5 = dispatch_semaphore_create(0);
  v10 = objc_msgSend_coreSynth(a1, v6, v7, v8, v9);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_1A935AF84;
  v43[3] = &unk_1E7880AC0;
  v43[4] = &v44;
  objc_msgSend_pauseSpeakingAt_completionHandler_(v10, v11, a3, v43, v12);

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v13 = *(v45 + 24);

  _Block_object_dispose(&v44, 8);
  return v13 & 1;
}

void sub_1A935AF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A935AF94(void *a1)
{
  if (!TTSUseCoreSynthesizerForAV())
  {
    v6 = a1;
    objc_sync_enter(v6);
    v16 = objc_msgSend_inflightUtterance(v6, v12, v13, v14, v15);
    if (v16)
    {
    }

    else
    {
      v25 = objc_msgSend_speechQueue(v6, v17, v18, v19, v20);
      v30 = objc_msgSend_count(v25, v26, v27, v28, v29);

      if (!v30)
      {
        v11 = 0;
        goto LABEL_7;
      }
    }

    v31 = objc_msgSend_speechManager(v6, v21, v22, v23, v24);
    objc_msgSend_continueSpeaking(v31, v32, v33, v34, v35);

    v11 = 1;
LABEL_7:
    objc_sync_exit(v6);
    goto LABEL_8;
  }

  v6 = objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
  v11 = objc_msgSend_continueSpeaking(v6, v7, v8, v9, v10);
LABEL_8:

  return v11;
}

uint64_t sub_1A935B06C(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
  }

  else
  {
    objc_msgSend_speechManager(a1, v2, v3, v4, v5);
  }
  v6 = ;
  isSpeaking = objc_msgSend_isSpeaking(v6, v7, v8, v9, v10);

  return isSpeaking;
}

uint64_t sub_1A935B0C4(void *a1)
{
  if (TTSUseCoreSynthesizerForAV())
  {
    objc_msgSend_coreSynth(a1, v2, v3, v4, v5);
  }

  else
  {
    objc_msgSend_speechManager(a1, v2, v3, v4, v5);
  }
  v6 = ;
  isPaused = objc_msgSend_isPaused(v6, v7, v8, v9, v10);

  return isPaused;
}

void sub_1A935B11C(void *a1, uint64_t a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!MEMORY[0x1EEE947B8])
  {
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v25)
    {
      sub_1A9578E58(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A935B3D8;
    block[3] = &unk_1E787FE70;
    v56 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v33 = v56;
    goto LABEL_13;
  }

  if ((objc_msgSend__supportsSpeakingWithPersonalVoices(a1, v4, v5, v6, v7) & 1) == 0)
  {
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v34)
    {
      sub_1A9578DE0(v34, v35, v36, v37, v38, v39, v40, v41);
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_1A935B3EC;
    v53[3] = &unk_1E787FE70;
    v54 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v53);
    v33 = v54;
LABEL_13:

    goto LABEL_14;
  }

  if (objc_msgSend_isSoftAppUsageProtectionDisabled(a1, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v13, v14, v15, v16);
    v22 = objc_msgSend_bundleIdentifier(v17, v18, v19, v20, v21);

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v22;
      _os_log_impl(&dword_1A9324000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Will request personal voice TCC: %@", buf, 0xCu);
    }

    v23 = *MEMORY[0x1E69D5608];
    v51 = v22;
    v52 = v8;
    v24 = v22;
    TCCAccessRequest();
  }

  else
  {
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v43)
    {
      sub_1A9578E1C(v43, v44, v45, v46, v47, v48, v49, v50);
    }

    (*(v8 + 2))(v8, 1);
  }

LABEL_14:

  v42 = *MEMORY[0x1E69E9840];
}

void sub_1A935B400(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v4, a2, v5, v6);
    *buf = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1A9324000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Did request personal voice TCC for %@. granted=%@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A935B544;
  v10[3] = &unk_1E7880AE8;
  v11 = *(a1 + 40);
  v12 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A935B544(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_shared(_TtC12TextToSpeech22CoreSynthesisVoiceShim, a2, a3, a4, a5);
  objc_msgSend_reloadPublicResolver(v6, v7, v8, v9, v10);

  *(a1 + 40);
  v11 = *(*(a1 + 32) + 16);

  return v11();
}

uint64_t sub_1A935B5AC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!MEMORY[0x1EEE947B8])
  {
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_1A9578E58(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    return 2;
  }

  if ((objc_msgSend__supportsSpeakingWithPersonalVoices(a1, a2, a3, a4, a5) & 1) == 0)
  {
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v19)
    {
      sub_1A9578DE0(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    return 2;
  }

  if (TTSIsPersonalVoicePrivilagedProcess())
  {
    return 3;
  }

  if (!objc_msgSend_isSoftAppUsageProtectionDisabled(a1, v6, v7, v8, v9))
  {
    return 1;
  }

  v27 = MEMORY[0x1E69D5608];
  v28 = *MEMORY[0x1E69D5608];
  v29 = TCCAccessPreflight();
  if (v29 == 2)
  {
    return 0;
  }

  if (!v29)
  {
    return 3;
  }

  v30 = *v27;
  if (TCCAccessRestricted())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_1A935B680(void *a1, uint64_t a2, void *a3, void *a4)
{
  v16 = a4;
  v6 = a3;
  if (TTSUseCoreSynthesizerForAV())
  {
    v11 = objc_msgSend_coreSynth(a1, v7, v8, v9, v10);
    objc_msgSend_write_toBufferCallback_synth_completionHandler_(v11, v12, v6, v16, a1, &unk_1F1CF0158);

    v6 = v11;
  }

  else
  {
    objc_msgSend_setAudioBufferCallback_(v6, v7, v16, v9, v10);
    objc_msgSend_speakUtterance_(a1, v13, v6, v14, v15);
  }
}

void sub_1A935B734(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v18 = a5;
  v8 = a4;
  v9 = a3;
  if (TTSUseCoreSynthesizerForAV())
  {
    v14 = objc_msgSend_coreSynth(a1, v10, v11, v12, v13);
    objc_msgSend_write_toBufferCallback_toMarkerCallback_synth_completionHandler_(v14, v15, v9, v8, v18, a1, &unk_1F1CF0178);

    v8 = v9;
    v9 = v14;
  }

  else
  {
    objc_msgSend_setMarkerCallback_(v9, v10, v18, v12, v13);
    objc_msgSend_writeUtterance_toBufferCallback_(a1, v16, v9, v8, v17);
  }
}

void sub_1A935B804(void *a1, uint64_t a2, void *a3)
{
  v58 = a3;
  if (TTSUseCoreSynthesizerForAV())
  {
    v8 = objc_msgSend_coreSynth(a1, v4, v5, v6, v7);
    objc_msgSend_speak_synth_completionHandler_(v8, v9, v58, a1, &unk_1F1CEDA48);
    goto LABEL_13;
  }

  v8 = a1;
  objc_sync_enter(v8);
  objc_msgSend__applyWebKitBehaviors(v8, v10, v11, v12, v13);
  if (v58)
  {
    if (objc_msgSend_detectSSMLAndModifyUtterances(v8, v14, v15, v16, v17))
    {
      objc_msgSend_transformUtteranceBasedOnSSMLIfDetected_(MEMORY[0x1E6958520], v18, v58, v20, v21);
    }

    v22 = objc_msgSend_speechQueue(v8, v18, v19, v20, v21);
    if (objc_msgSend_indexOfObjectIdenticalTo_(v22, v23, v58, v24, v25) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = objc_msgSend_inflightUtterance(v8, v26, v27, v28, v29);

      if (v30 != v58)
      {
        v35 = objc_msgSend_speechQueue(v8, v31, v32, v33, v34);
        objc_msgSend_addObject_(v35, v36, v58, v37, v38);

        v43 = objc_msgSend_inflightUtterance(v8, v39, v40, v41, v42);
        if (v43)
        {
        }

        else
        {
          v48 = objc_msgSend_speechQueue(v8, v44, v45, v46, v47);
          v53 = objc_msgSend_count(v48, v49, v50, v51, v52);

          if (v53)
          {
            objc_msgSend__enqueueNextJob(v8, v54, v55, v56, v57);
          }
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v31, @"AVSpeechSynthesizer", @"An AVSpeechUtterance shall not be enqueued twice", v34);
  }

LABEL_12:
  objc_sync_exit(v8);
LABEL_13:
}

Class sub_1A935B9A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  if (!qword_1EB391040)
  {
    v12[1] = MEMORY[0x1E69E9820];
    v12[2] = 3221225472;
    v12[3] = sub_1A935BAD0;
    v12[4] = &unk_1E7880300;
    v12[5] = v12;
    v13 = xmmword_1E7880B30;
    v14 = 0;
    qword_1EB391040 = _sl_dlopen();
  }

  if (!qword_1EB391040)
  {
    sub_1A9578F10(v12, a2, a3, a4, a5);
  }

  if (v12[0])
  {
    free(v12[0]);
  }

  result = objc_getClass("TTSVBSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A9578E94(result, v7, v8, v9, v10);
  }

  qword_1EB391038 = *(*(*(a1 + 32) + 8) + 24);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A935BAD0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EB391040 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1A935BB44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A935BB9C(a1, a2, a3, a4, a5);
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A9578F90(result, v7, v8, v9, v10);
  }

  qword_1ED970330 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A935BB9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1ED970360)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = sub_1A935BC94;
    v8[4] = &unk_1E7880300;
    v8[5] = v8;
    v9 = xmmword_1E7880B48;
    v10 = 0;
    qword_1ED970360 = _sl_dlopen();
  }

  v5 = qword_1ED970360;
  if (!qword_1ED970360)
  {
    sub_1A957900C(v8, a2, a3, a4, a5);
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1A935BC94(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED970360 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A935BD08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A935BB9C(a1, a2, a3, a4, a5);
  result = dlsym(v6, "AXSpeechSourceKeyVoiceOver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB391048 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A935BD58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A935BB9C(a1, a2, a3, a4, a5);
  result = dlsym(v6, "AXSpeechSourceKeySwitchControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB391050 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A935BDA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A935BB9C(a1, a2, a3, a4, a5);
  result = dlsym(v6, "AXSpeechSourceKeySpeechFeatures");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB391058 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A935BDF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A935BE48(a1, a2, a3, a4, a5);
  result = dlsym(v6, "UIAccessibilityTokenBrailleDisplayOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB391060 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A935BE48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1EB391068)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = sub_1A935BF40;
    v8[4] = &unk_1E7880300;
    v8[5] = v8;
    v9 = xmmword_1E7880B60;
    v10 = 0;
    qword_1EB391068 = _sl_dlopen();
  }

  v5 = qword_1EB391068;
  if (!qword_1EB391068)
  {
    sub_1A957908C(v8, a2, a3, a4, a5);
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1A935BF40(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EB391068 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A935BFB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A935BE48(a1, a2, a3, a4, a5);
  result = dlsym(v6, "kAXPidKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB391070 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A935C004(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A935BE48(a1, a2, a3, a4, a5);
  result = dlsym(v6, "kAXNotificationDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB391078 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A935C054(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A935BE48(a1, a2, a3, a4, a5);
  result = dlsym(v6, "AXPushNotificationToSystemForBroadcast");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB391080 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A935C23C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A935C554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  _Block_object_dispose((v22 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1A935C5A0()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1EB391088;
  qword_1EB391088 = v0;

  dword_1EB391098 = 0;
}

uint64_t sub_1A935C5D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A935C5F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_objectForKey_(qword_1EB391088, a2, *(a1 + 32), a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A935CCDC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_1EB3910A0 = objc_msgSend__initializeRules(*(a1 + 32), a2, a3, a4, a5);

  return MEMORY[0x1EEE66BB8]();
}

BOOL sub_1A935CE34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v10 = objc_msgSend_objectAtIndexedSubscript_(v5, v7, 0, v8, v9);
  v14 = objc_msgSend_objectAtIndexedSubscript_(v5, v11, 0, v12, v13);
  v19 = objc_msgSend_length(v14, v15, v16, v17, v18);
  v21 = objc_msgSend_firstMatchInString_options_range_(v6, v20, v10, 0, 0, v19);

  if (v21)
  {
    v26 = objc_msgSend_range(v21, v22, v23, v24, v25) != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

BOOL sub_1A935D05C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v10 = objc_msgSend_objectAtIndexedSubscript_(v5, v7, 0, v8, v9);
  v14 = objc_msgSend_objectAtIndexedSubscript_(v5, v11, 0, v12, v13);
  v19 = objc_msgSend_length(v14, v15, v16, v17, v18);
  v21 = objc_msgSend_firstMatchInString_options_range_(v6, v20, v10, 0, 0, v19);

  v22 = *(a1 + 40);
  v26 = objc_msgSend_objectAtIndexedSubscript_(v5, v23, 1, v24, v25);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v5, v27, 1, v28, v29);
  v35 = objc_msgSend_length(v30, v31, v32, v33, v34);
  v37 = objc_msgSend_firstMatchInString_options_range_(v22, v36, v26, 0, 0, v35);

  if (v21)
  {
    v46 = 0;
    if (objc_msgSend_range(v21, v38, v39, v40, v41) != 0x7FFFFFFFFFFFFFFFLL && v37)
    {
      v46 = objc_msgSend_range(v37, v42, v43, v44, v45) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

BOOL sub_1A935D328(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v10 = objc_msgSend_objectAtIndexedSubscript_(v5, v7, 1, v8, v9);
  v14 = objc_msgSend_objectAtIndexedSubscript_(v5, v11, 1, v12, v13);
  v19 = objc_msgSend_length(v14, v15, v16, v17, v18);
  v21 = objc_msgSend_firstMatchInString_options_range_(v6, v20, v10, 0, 0, v19);

  v22 = *(a1 + 40);
  v26 = objc_msgSend_objectAtIndexedSubscript_(v5, v23, 2, v24, v25);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v5, v27, 2, v28, v29);
  v35 = objc_msgSend_length(v30, v31, v32, v33, v34);
  v37 = objc_msgSend_firstMatchInString_options_range_(v22, v36, v26, 0, 0, v35);

  if (v21)
  {
    v46 = 0;
    if (objc_msgSend_range(v21, v38, v39, v40, v41) != 0x7FFFFFFFFFFFFFFFLL && v37)
    {
      v46 = objc_msgSend_range(v37, v42, v43, v44, v45) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

BOOL sub_1A935D5C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v10 = objc_msgSend_objectAtIndexedSubscript_(v5, v7, 3, v8, v9);
  v14 = objc_msgSend_objectAtIndexedSubscript_(v5, v11, 3, v12, v13);
  v19 = objc_msgSend_length(v14, v15, v16, v17, v18);
  v21 = objc_msgSend_firstMatchInString_options_range_(v6, v20, v10, 0, 0, v19);

  if (v21)
  {
    v26 = objc_msgSend_range(v21, v22, v23, v24, v25) != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

BOOL sub_1A935D7B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v5, 0, v6, v7);
  v12 = objc_msgSend_objectAtIndexedSubscript_(v3, v9, 0, v10, v11);
  v17 = objc_msgSend_length(v12, v13, v14, v15, v16);
  v19 = objc_msgSend_firstMatchInString_options_range_(v4, v18, v8, 0, 0, v17);

  if (v19)
  {
    v24 = objc_msgSend_range(v19, v20, v21, v22, v23) != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

BOOL sub_1A935D9DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = objc_msgSend_objectAtIndexedSubscript_(v3, v5, 0, v6, v7);
  v12 = objc_msgSend_objectAtIndexedSubscript_(v3, v9, 0, v10, v11);
  v17 = objc_msgSend_length(v12, v13, v14, v15, v16);
  v19 = objc_msgSend_firstMatchInString_options_range_(v4, v18, v8, 0, 0, v17);

  v20 = *(a1 + 40);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v3, v21, 1, v22, v23);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v3, v25, 1, v26, v27);
  v33 = objc_msgSend_length(v28, v29, v30, v31, v32);
  v35 = objc_msgSend_firstMatchInString_options_range_(v20, v34, v24, 0, 0, v33);

  if (v19)
  {
    v44 = 0;
    if (objc_msgSend_range(v19, v36, v37, v38, v39) != 0x7FFFFFFFFFFFFFFFLL && v35)
    {
      v44 = objc_msgSend_range(v35, v40, v41, v42, v43) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

void sub_1A935F730(_Unwind_Exception *a1)
{
  STACK[0x438] = v1;

  _Unwind_Resume(a1);
}

id sub_1A9360024(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_ruleWithHeterogeniousArray_(TTSApplebetMapperRule, a2, a2, a4, a5);

  return v5;
}

uint64_t sub_1A93614F0()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9361534()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9361578()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9362A48()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9362D0C()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9362F10()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A9363298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1A93632E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v5 = qword_1ED970338;
  v12 = qword_1ED970338;
  if (!qword_1ED970338)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A9369440;
    v8[3] = &unk_1E787FF60;
    v8[4] = &v9;
    sub_1A9369440(v8, a2, a3, a4, a5);
    v5 = v10[3];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1A93633A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A93633C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateUserSubstitutions(WeakRetained, v1, v2, v3, v4);
}

uint64_t sub_1A9363400()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9363718(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A9363FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A93643C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A93644F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_speechVoice(a2, a2, a3, a4, a5);
  v6 = AXAVSpeechSynthesisVoiceFromTTSAXResource(v5);

  return v6;
}

id AXAVSpeechSynthesisVoiceFromTTSAXResource(void *a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = AXLogSpeechSynthesis();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_1A9579524();
    }

    v3 = objc_alloc_init(MEMORY[0x1E69584F8]);
    v8 = objc_msgSend_language(v1, v4, v5, v6, v7);
    v13 = objc_msgSend_copy(v8, v9, v10, v11, v12);
    objc_msgSend_setLanguage_(v3, v14, v13, v15, v16);

    v21 = objc_msgSend_identifier(v1, v17, v18, v19, v20);
    v26 = objc_msgSend_copy(v21, v22, v23, v24, v25);
    objc_msgSend_setIdentifier_(v3, v27, v26, v28, v29);

    isNoveltyVoice = objc_msgSend_isNoveltyVoice(v1, v30, v31, v32, v33);
    objc_msgSend_setIsNoveltyVoice_(v3, v35, isNoveltyVoice, v36, v37);
    v42 = objc_msgSend_name(v1, v38, v39, v40, v41);
    v47 = objc_msgSend_copy(v42, v43, v44, v45, v46);
    objc_msgSend_setNonLocalizedNameWithoutQuality_(v3, v48, v47, v49, v50);

    v55 = objc_msgSend_speechVoice(v1, v51, v52, v53, v54);
    v56 = AXAVVoiceQualityFromTTSSpeechVoice(v55);
    objc_msgSend_setQuality_(v3, v57, v56, v58, v59);

    objc_msgSend_setIsInstalled_(v3, v60, 1, v61, v62);
    canBeDownloaded = objc_msgSend_canBeDownloaded(v1, v63, v64, v65, v66);
    objc_msgSend_setCanBeDownloaded_(v3, v68, canBeDownloaded, v69, v70);
    objc_msgSend_setAssetSize_(v3, v71, 0, v72, v73);
    isDefault = objc_msgSend_isDefault(v1, v74, v75, v76, v77);
    objc_msgSend_setIsDefault_(v3, v79, isDefault, v80, v81);
    v86 = objc_msgSend_synthesisProviderVoice(v1, v82, v83, v84, v85);
    objc_msgSend_setSynthesisProviderVoice_(v3, v87, v86, v88, v89);

    if (objc_msgSend_gender(v1, v90, v91, v92, v93) == 1)
    {
      objc_msgSend_setGender_(v3, v94, 1, v96, v97);
    }

    else
    {
      v98 = 2 * (objc_msgSend_gender(v1, v94, v95, v96, v97) == 2);
      objc_msgSend_setGender_(v3, v99, v98, v100, v101);
    }
  }

  else
  {
    v3 = 0;
  }

  v102 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1A936492C()
{
  v49 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AAE8];
  v1 = AXSAccessibilityUtilitiesPath();
  v5 = objc_msgSend_bundleWithPath_(v0, v2, v1, v3, v4);
  v6 = qword_1ED970FF8;
  qword_1ED970FF8 = v5;

  v11 = qword_1ED970FF8;
  if (!qword_1ED970FF8)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"**** AX Error: Could not load AccessibilityUtilities.framework bundle. bundleWithPath came back nil", v9, v10);
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"%s:%d %@", v14, v15, "+[TTSSpeechManager availableVoices:]_block_invoke", 993, v12);
    if (qword_1ED970350 != -1)
    {
      sub_1A95795D4();
    }

    v17 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
      v19 = v17;
      *buf = 136446210;
      v48 = objc_msgSend_UTF8String(v16, v20, v21, v22, v23);
      _os_log_impl(&dword_1A9324000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v11 = qword_1ED970FF8;
  }

  if ((objc_msgSend_isLoaded(v11, v7, v8, v9, v10) & 1) == 0)
  {
    v46 = 0;
    v27 = objc_msgSend_loadAndReturnError_(qword_1ED970FF8, v24, &v46, v25, v26);
    v31 = v46;
    if ((v27 & 1) == 0)
    {
      v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v28, @"Could not load bundle: %@", v29, v30, v31);
      v36 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v33, @"%s:%d %@", v34, v35, "+[TTSSpeechManager availableVoices:]_block_invoke", 1001, v32);
      if (qword_1ED970350 != -1)
      {
        sub_1A95795E8();
      }

      v37 = qword_1ED970348;
      if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v36;
        v39 = v37;
        v44 = objc_msgSend_UTF8String(v36, v40, v41, v42, v43);
        *buf = 136446210;
        v48 = v44;
        _os_log_impl(&dword_1A9324000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A9364B90()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9364BD4()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

id sub_1A9364C18(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_voiceType(v2, v3, v4, v5, v6) == 4 || objc_msgSend_voiceType(v2, v7, v8, v9, v10) == 5 || objc_msgSend_voiceType(v2, v11, v12, v13, v14) == 7)
  {
    v15 = 0;
  }

  else
  {
    v15 = AXAVSpeechSynthesisVoiceFromTTSAXResource(v2);
  }

  return v15;
}

id sub_1A9364CA8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = AXAVSpeechSynthesisVoiceFromTTSAXResource(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1A93655B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_completionCallback(*(a1 + 32), a2, a3, a4, a5);

  if (v6)
  {
    v11 = objc_msgSend_completionCallback(*(a1 + 32), v7, v8, v9, v10);
    (*(v11 + 2))(v11, *(a1 + 32), *(a1 + 40));
  }
}

uint64_t sub_1A9365638()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A936567C()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A93656C8()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A936570C()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A9365750(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_audioSession(*(a1 + 32), a2, a3, a4, a5);
  active = objc_msgSend_setActiveOptions(*(a1 + 32), v7, v8, v9, v10);
  v31 = 0;
  objc_msgSend_setActive_withOptions_error_(v6, v12, 0, active, &v31);
  v13 = v31;

  if (v13)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"Error setting audio session to inactive: %@", v15, v16, v13);
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"%s:%d %@", v19, v20, "[TTSSpeechManager _speechJobFinished:action:]_block_invoke", 1148, v17);
    if (qword_1ED970350 != -1)
    {
      sub_1A95796B0();
    }

    v22 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v21;
      v24 = v22;
      v29 = objc_msgSend_UTF8String(v21, v25, v26, v27, v28);
      *buf = 136446210;
      v33 = v29;
      _os_log_impl(&dword_1A9324000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A93658C8()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A9365B14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(TTSSubstitution);
    v12 = objc_msgSend_string(*(a1 + 32), v8, v9, v10, v11);
    v15 = objc_msgSend_substringWithRange_(v12, v13, a3, a4, v14);
    objc_msgSend_setOriginalString_(v7, v16, v15, v17, v18);

    objc_msgSend_setPhonemes_(v7, v19, v27, v20, v21);
    objc_msgSend_setReplacementRange_(v7, v22, a3, a4, v23);
    objc_msgSend_addObject_(*(a1 + 40), v24, v7, v25, v26);
  }
}

void sub_1A936676C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1A9366790()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A93667D4()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9366818()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A936685C()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A93668A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A9366968;
  block[3] = &unk_1E7880870;
  block[4] = WeakRetained;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1A9366968(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  v6 = a1[6];
  v10[0] = a1[5];
  v10[1] = v6;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v10, 2, a5);
  objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(v5, v8, sel__processAudioBufferCallback_, v7, 1);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A9366A08()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9366A4C()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A9366C8C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, 0, a4, a5);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v6, 1, v7, v8);
  v14 = objc_msgSend_audioBufferCallback(v9, v10, v11, v12, v13);

  if (v14)
  {
    v19 = objc_msgSend_audioBufferCallback(v9, v15, v16, v17, v18);
    (v19)[2](v19, v20);
  }
}

uint64_t sub_1A9367260()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A93672A4()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A93672E8()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A936732C()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9367370()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A9367974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A936798C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_outputChannels(*(*(a1 + 32) + 16), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9367D3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 40);
  *(*(a1 + 32) + 68) = v5;
  return objc_msgSend_setAudioQueueFlags_(*(*(a1 + 32) + 16), a2, v5, a4, a5);
}

uint64_t sub_1A9367E74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_onSpeechStartCallback(*(a1 + 32), a2, a3, a4, a5);

  if (v6)
  {
    v11 = objc_msgSend_onSpeechStartCallback(*(a1 + 32), v7, v8, v9, v10);
    v11[2](v11, *(a1 + 32));
  }

  result = qword_1EB3910C8;
  if (qword_1EB3910C8)
  {
    v13 = *(a1 + 32);
    v14 = *(qword_1EB3910C8 + 16);

    return v14();
  }

  return result;
}

uint64_t sub_1A93685E4()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9368628()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A93687E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_onPauseCallback(*(a1 + 32), a2, a3, a4, a5);

  if (v6)
  {
    v11 = objc_msgSend_onPauseCallback(*(a1 + 32), v7, v8, v9, v10);
    v11[2](v11, *(a1 + 32));
  }
}

void sub_1A93689E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_onResumeCallback(*(a1 + 32), a2, a3, a4, a5);

  if (v6)
  {
    v11 = objc_msgSend_onResumeCallback(*(a1 + 32), v7, v8, v9, v10);
    v11[2](v11, *(a1 + 32));
  }
}

void sub_1A9368D38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_onMarkerCallback(*(a1 + 32), a2, a3, a4, a5);

  if (v6)
  {
    v11 = objc_msgSend_onMarkerCallback(*(a1 + 32), v7, v8, v9, v10);
    (*(v11 + 2))(v11, *(a1 + 32), *(a1 + 40));
  }
}

void sub_1A9368EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9368F04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_processedString(*(a1 + 32), a2, a3, a4, a5);

  if (!v6)
  {
    goto LABEL_19;
  }

  objc_msgSend_emojiRangeReplacements(*(a1 + 32), v7, v8, v9, v10);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v11 = v90 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v87, v91, 16);
  if (v13)
  {
    v17 = v13;
    v18 = *v88;
LABEL_4:
    v19 = 0;
    while (1)
    {
      if (*v88 != v18)
      {
        objc_enumerationMutation(v11);
      }

      v20 = *(*(&v87 + 1) + 8 * v19);
      v21 = objc_msgSend_objectForKey_(v20, v14, @"processedRange", v15, v16, v87);
      v26 = objc_msgSend_rangeValue(v21, v22, v23, v24, v25);
      v28 = v27;

      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 32);
      if (v30 >= v26 && *(v29 + 40) + v30 <= v26 + v28)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v87, v91, 16);
        if (v17)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }

    v32 = objc_msgSend_objectForKey_(v20, v14, @"notified", v15, v16);
    v37 = objc_msgSend_BOOLValue(v32, v33, v34, v35, v36);

    if (v37)
    {
      v31 = 0;
      goto LABEL_14;
    }

    v45 = objc_msgSend_objectForKey_(v20, v38, @"originalRange", v39, v40);
    v50 = objc_msgSend_rangeValue(v45, v46, v47, v48, v49);
    v52 = v51;

    v56 = objc_msgSend_indexOfObject_(v11, v53, v20, v54, v55);
    v57 = *(a1 + 32);
    v62 = objc_msgSend_wordCallbackPostProcessedOffset(v57, v58, v59, v60, v61);
    objc_msgSend_setWordCallbackPostProcessedOffset_(v57, v63, v28 - v52 + v62, v64, v65);
    v66 = *(*(a1 + 40) + 8);
    *(v66 + 32) = v50;
    *(v66 + 40) = v52;

    if (v56 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v70 = objc_msgSend_objectAtIndex_(v11, v67, v56, v68, v69);
      v75 = objc_msgSend_mutableCopy(v70, v71, v72, v73, v74);

      objc_msgSend_setObject_forKeyedSubscript_(v75, v76, MEMORY[0x1E695E118], @"notified", v77);
      objc_msgSend_replaceObjectAtIndex_withObject_(v11, v78, v56, v75, v79);
    }

    goto LABEL_19;
  }

LABEL_11:
  v31 = 1;
LABEL_14:

  *(*(*(a1 + 40) + 8) + 32) -= objc_msgSend_wordCallbackPostProcessedOffset(*(a1 + 32), v41, v42, v43, v44);
  if (v31)
  {
LABEL_19:
    v80 = objc_msgSend_onWillSpeakRangeCallback(*(a1 + 32), v7, v8, v9, v10, v87);

    if (v80)
    {
      v85 = objc_msgSend_onWillSpeakRangeCallback(*(a1 + 32), v81, v82, v83, v84);
      v85[2](v85, *(a1 + 32), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40));
    }
  }

  v86 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A93693FC()
{
  qword_1ED970348 = os_log_create("com.apple.Accessibility", "SpeechManager");

  return MEMORY[0x1EEE66BB8]();
}

Class sub_1A9369440(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A9369498(a1, a2, a3, a4, a5);
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A9579AAC(result, v7, v8, v9, v10);
  }

  qword_1ED970338 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A9369498(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1ED970368)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = sub_1A9369590;
    v8[4] = &unk_1E7880300;
    v8[5] = v8;
    v9 = xmmword_1E7880D90;
    v10 = 0;
    qword_1ED970368 = _sl_dlopen();
  }

  v5 = qword_1ED970368;
  if (!qword_1ED970368)
  {
    sub_1A9579B28(v8, a2, a3, a4, a5);
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1A9369590(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED970368 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1A9369604(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A9369498(a1, a2, a3, a4, a5);
  result = objc_getClass("AXLanguageManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A9579BA8(result, v7, v8, v9, v10);
  }

  qword_1EB3910D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A936965C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A9369498(a1, a2, a3, a4, a5);
  result = dlsym(v6, "AXVOLocalizedStringForCharacter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB3910D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A93696AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1A9369AA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v8 = objc_msgSend_range(a2, a2, a3, a4, a5);
  v9 = *(a1 + 40);

  return objc_msgSend_transformRange_to_(v6, v7, v8, v7, v9);
}

BOOL sub_1A936A7D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_range(v3, v4, v5, v6, v7);
  if (v8 == objc_msgSend_range(*(a1 + 32), v9, v10, v11, v12))
  {
    objc_msgSend_range(v3, v13, v14, v15, v16);
    v18 = v17 == 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

BOOL sub_1A936A83C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_range(a2, v5, v6, v7, v8);
  v14 = objc_msgSend_range(v4, v10, v11, v12, v13);

  return v9 < v14;
}

id sub_1A936AAB4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1, a2, @"&", @"&amp", a5);;
  v8 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v6, @">", @"&gt", v7);;
  v11 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v8, v9, @"", @"&quot", v10);;
  v14 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v11, v12, @"'", @"&apos", v13);;
  v17 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v15, @"<", @"&lt", v16);;

  return v17;
}

id sub_1A936AB90(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1, a2, @"&lt", @"<", a5);;
  v8 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v6, @"&gt", @">", v7);;
  v11 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v8, v9, @"&quot", @"", v10);;
  v14 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v11, v12, @"&apos", @"'", v13);;
  v17 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v15, @"&amp", @"&", v16);;

  return v17;
}

uint64x2_t CreateMagicalWindow(uint64_t a1, int a2, uint64x2_t result)
{
  if (a2 >= 1)
  {
    *result.i32 = a2;
    v44 = vdupq_lane_s32(*result.i8, 0);
    v45 = vdupq_n_s64(a2 - 1);
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v4 = xmmword_1A9586570;
    result = xmmword_1A9586580;
    v5 = xmmword_1A9586A40;
    v6 = (a1 + 8);
    __asm { FMOV            V1.4S, #4.0 }

    v43 = _Q1;
    __asm { FMOV            V1.4S, #1.0 }

    v51 = _Q1;
    __asm { FMOV            V4.4S, #3.0 }

    v41 = vdupq_n_s64(0x3FF459A5D6E6692DuLL);
    v42 = _Q4;
    v39 = vdupq_n_s64(4uLL);
    v40 = vdupq_n_s32(0x3FC90FDBu);
    do
    {
      v49 = result;
      v50 = v4;
      v14 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v45, result), vcgeq_u64(v45, v4)));
      v48 = v5;
      v15 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(v5), v43), v44);
      v16 = vmovn_s32(vcgtq_f32(v51, v15));
      v17 = vbic_s8(v14, v16);
      v18.i64[0] = 0x4000000040000000;
      v18.i64[1] = 0x4000000040000000;
      v19 = vmovn_s32(vcgtq_f32(v18, v15));
      v20 = vbic_s8(v17, v19);
      v21 = vmovn_s32(vcgtq_f32(v42, v15));
      v22 = vbic_s8(v20, v21);
      v23 = vsubq_f32(v18, v15);
      v24 = vand_s8(v20, v21);
      v25.i64[0] = 0xC0000000C0000000;
      v25.i64[1] = 0xC0000000C0000000;
      v26 = vand_s8(v17, v19);
      v47 = vorr_s8(vorr_s8(v22, vorr_s8(vand_s8(v14, v16), v26)), v24);
      v27 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v22), 0x1FuLL)), vaddq_f32(v23, v18), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v24), 0x1FuLL)), vaddq_f32(v15, v25), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v26), 0x1FuLL)), v23, v15)));
      v46 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorn_s8(v22, vorr_s8(v24, v26))), 0x1FuLL));
      v55 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v27.f32), v41)), vmulq_f64(vcvt_hight_f64_f32(v27), v41)), v40);
      v52 = cosf(v55.f32[1]);
      v28.f32[0] = cosf(v55.f32[0]);
      v28.f32[1] = v52;
      v53 = v28;
      v29 = cosf(v55.f32[2]);
      v30 = v53;
      v30.f32[2] = v29;
      v54 = v30;
      v31 = cosf(v55.f32[3]);
      v32 = v54;
      v32.f32[3] = v31;
      v33.i64[0] = 0x3F0000003F000000;
      v33.i64[1] = 0x3F0000003F000000;
      v34.i64[0] = 0xBF000000BF000000;
      v34.i64[1] = 0xBF000000BF000000;
      v35 = vmlaq_f32(v33, v34, v32);
      v36 = vmulq_f32(v35, v35);
      v37 = vsqrtq_f32(vbslq_s8(v46, v36, vsubq_f32(v51, v36)));
      if (v47.i8[0])
      {
        *(v6 - 2) = v37.i32[0];
      }

      if (v47.i8[2])
      {
        *(v6 - 1) = v37.i32[1];
      }

      if (v47.i8[4])
      {
        *v6 = v37.i32[2];
      }

      if (v47.i8[6])
      {
        v6[1] = v37.i32[3];
      }

      v4 = vaddq_s64(v50, v39);
      result = vaddq_s64(v49, v39);
      v38.i64[0] = 0x400000004;
      v38.i64[1] = 0x400000004;
      v5 = vaddq_s32(v48, v38);
      v6 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

float calc_alpha(unsigned int a1, float a2)
{
  if (a1)
  {
    return 1.0 - powf(1.0 - a2, 1.0 / a1);
  }

  else
  {
    return 1.0;
  }
}

void calc_alpha_TE(float a1, float a2, float a3)
{
  v3 = a1 / (a2 * 1000.0);
  v4 = floor(v3);
  v5 = ceil(v3);
  if (v4 == v5)
  {
    if (v4)
    {
      powf((a3 / -100.0) + 1.0, 1.0 / v4);
    }
  }

  else
  {
    v6 = a3 / 100.0;
    if (v4)
    {
      powf(1.0 - v6, 1.0 / v4);
    }

    if (v5)
    {
      powf(1.0 - v6, 1.0 / v5);
    }
  }
}

void *ausdk::AUInputElement::SetConnection(ausdk::AUInputElement *this, const AudioUnitConnection *a2)
{
  if (a2->sourceAudioUnit)
  {
    *(this + 43) = 1;
    *(this + 12) = *a2;
    return (*(*this + 64))(this, 0);
  }

  else
  {
    *(this + 43) = 0;
    return ausdk::AUBufferList::Deallocate(this + 18);
  }
}

void *ausdk::AUInputElement::SetInputCallback(ausdk::AUInputElement *this, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a3)
{
  if (a2)
  {
    *(this + 43) = 2;
    *(this + 22) = a2;
    *(this + 23) = a3;
    return (*(*this + 64))(this, 0);
  }

  else
  {
    *(this + 43) = 0;
    return ausdk::AUBufferList::Deallocate(this + 18);
  }
}

uint64_t ausdk::AUInputElement::SetStreamFormat(ausdk::AUInputElement *this, const AudioStreamBasicDescription *a2)
{
  v3 = ausdk::AUIOElement::SetStreamFormat(this, a2);
  if (!v3)
  {
    (*(*this + 64))(this, 0);
  }

  return v3;
}

uint64_t ausdk::AUInputElement::PullInput(ausdk::AUInputElement *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(this + 43);
  if (!v5)
  {
    return 4294956420;
  }

  if (v5 == 1 || (*(this + 168) & 1) == 0)
  {
    v11 = ausdk::AUBufferList::PrepareNullBuffer((this + 144), this + 2, a5);
  }

  else
  {
    v11 = ausdk::AUBufferList::PrepareBuffer((this + 144), this + 2, a5);
  }

  if (*(this + 43) == 1)
  {
    LODWORD(result) = AudioUnitRender(*(this + 24), a2, a3, *(this + 50), a5, v11);
  }

  else
  {
    LODWORD(result) = (*(this + 22))(*(this + 23), a2, a3, a4, a5, v11);
  }

  if (*(this + 43))
  {
    return result;
  }

  else
  {
    return 4294956420;
  }
}

uint64_t sub_1A936B204(void *a1)
{
  *a1 = &unk_1F1CF0988;
  ausdk::AUBufferList::Deallocate(a1 + 18);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  return sub_1A9345C2C(a1);
}

void sub_1A936B26C(void *a1)
{
  *a1 = &unk_1F1CF0988;
  ausdk::AUBufferList::Deallocate(a1 + 18);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  sub_1A9345C2C(a1);

  JUMPOUT(0x1AC586D00);
}

uint64_t sub_1A936B33C()
{
  qword_1ED970410 = objc_alloc_init(TTSRegexCache);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A936B644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A936B660(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A936B678(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = objc_msgSend_cache(*(a1 + 32), a2, a3, a4, a5);
  v9 = objc_msgSend_objectForKey_(v12, v6, *(a1 + 40), v7, v8);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1A936B6E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_cache(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_setValue_forKey_(v8, v6, *(a1 + 40), *(a1 + 48), v7);
}

ausdk::AUBase *ausdk::AUBase::AUBase(ausdk::AUBase *this, OpaqueAudioComponentInstance *a2, int a3, int a4, int a5)
{
  v9 = ausdk::ComponentBase::ComponentBase(this, a2);
  v10 = 0;
  *v9 = &unk_1F1CF0660;
  *(v9 + 8) = 0;
  *(v9 + 18) = 0;
  *(v9 + 5) = a3;
  *(v9 + 6) = a4;
  *(v9 + 7) = a5;
  do
  {
    v11 = this + v10;
    *(v11 + 4) = 0;
    *(v11 + 10) = 0;
    *(v11 + 3) = 0uLL;
    *(v11 + 4) = 0uLL;
    v10 += 48;
  }

  while (v10 != 192);
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 264) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 42) = 0;
  v15 = 0;
  mach_timebase_info(&v15);
  LODWORD(v12) = v15.denom;
  LODWORD(v13) = v15.numer;
  *(this + 43) = v12 / v13 * 1000000000.0;
  *(this + 44) = 0;
  *(this + 90) = -1;
  *(this + 46) = 0;
  *(this + 376) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 432) = 0;
  ausdk::AUBase::CreateLoggingString(this, (this + 440));
  *(this + 41) = 0;
  *(this + 312) = 0u;
  *(this + 296) = 0u;
  *(this + 280) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 34) = 0xFFEFFFFFFFFFFFFFLL;
  sub_1A936C9C4((this + 32), this, 0, 1);
  *(this + 90) = -1;
  *(this + 46) = @"Untitled";
  CFRetain(@"Untitled");
  return this;
}

void sub_1A936C5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v10[51];
  if (v13)
  {
    v10[52] = v13;
    operator delete(v13);
  }

  v14 = v10[48];
  if (v14)
  {
    v10[49] = v14;
    operator delete(v14);
  }

  sub_1A9373B04(v11);
  v15 = (v10 + 24);
  v16 = -192;
  do
  {
    a10 = v15;
    sub_1A9372118(&a10);
    v15 -= 6;
    v16 += 48;
  }

  while (v16);
  _Unwind_Resume(a1);
}

void ausdk::AUBase::CreateLoggingString(AudioComponentInstance *this@<X0>, std::string *a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  v31 = 0;
  ausdk::ComponentBase::GetComponentDescription(this, &v29);
  memset(__str, 0, sizeof(__str));
  snprintf(__str, 0x20uLL, "AU (%p): ", this[1]);
  v4.i32[0] = bswap32(v29);
  v5 = vzip1_s8(v4, v4);
  v6 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v5, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v5, 0x2E002E002E002ELL);
  *(&v24.__r_.__value_.__s + 23) = 4;
  LODWORD(v24.__r_.__value_.__l.__data_) = vuzp1_s8(v6, v6).u32[0];
  v24.__r_.__value_.__s.__data_[4] = 0;
  v7 = strlen(__str);
  v8 = std::string::insert(&v24, 0, __str, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v25, 47);
  v10.i32[1] = HIDWORD(v25.__r_.__value_.__r.__words[0]);
  v26 = v25;
  memset(&v25, 0, sizeof(v25));
  v10.i32[0] = bswap32(HIDWORD(v29));
  v11 = vzip1_s8(v10, v10);
  v12 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v11, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v11, 0x2E002E002E002ELL);
  v23 = 4;
  *__s = vuzp1_s8(v12, v12).u32[0];
  __s[4] = 0;
  v13 = std::string::append(&v26, __s, 4uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v27, 47);
  v15.i32[1] = HIDWORD(v27.__r_.__value_.__r.__words[0]);
  v28 = v27;
  memset(&v27, 0, sizeof(v27));
  v15.i32[0] = bswap32(v30);
  v16 = vzip1_s8(v15, v15);
  v17 = vbsl_s8(vcgt_u16(0x5F005F005F005FLL, (*&vadd_s16(v16, 0xE000E000E000E0) & 0xFF00FF00FF00FFLL)), v16, 0x2E002E002E002ELL);
  v21 = 4;
  *v20 = vuzp1_s8(v17, v17).u32[0];
  v20[4] = 0;
  v18 = std::string::append(&v28, v20, 4uLL);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v21 < 0)
  {
    operator delete(*v20);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1A936C900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 105) < 0)
  {
    operator delete(*(v47 - 128));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double ausdk::AUBase::ResetRenderTime(ausdk::AUBase *this)
{
  *(this + 41) = 0;
  result = 0.0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 280) = 0u;
  *(this + 34) = 0xFFEFFFFFFFFFFFFFLL;
  return result;
}

void *sub_1A936C9C4(ausdk::AUScope *this, uint64_t a2, int a3, uint64_t a4)
{
  *this = a2;
  *(this + 2) = a3;
  v5 = *(this + 5);
  if (!v5)
  {
    return ausdk::AUScope::SetNumberOfElements(this, a4);
  }

  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  return (*(*v5 + 16))(v5, a4);
}

void ausdk::AUBase::~AUBase(ausdk::AUBase *this)
{
  *this = &unk_1F1CF0660;
  v2 = *(this + 46);
  if (v2)
  {
    CFRelease(v2);
  }

  sub_1A9345C90(this + 65);
  sub_1A9345C90(this + 58);
  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
  }

  v3 = *(this + 51);
  if (v3)
  {
    *(this + 52) = v3;
    operator delete(v3);
  }

  v4 = *(this + 48);
  if (v4)
  {
    *(this + 49) = v4;
    operator delete(v4);
  }

  sub_1A9373B04(this + 28);
  v5 = 192;
  do
  {
    v6 = (this + v5);
    sub_1A9372118(&v6);
    v5 -= 48;
  }

  while (v5);
}

uint64_t ausdk::AUBase::PostConstructorInternal(ausdk::AUBase *this)
{
  if (!*(this + 84))
  {
    (*(*this + 512))(this, 1156);
  }

  return ausdk::AUBase::CreateElements(this);
}

uint64_t ausdk::AUBase::CreateElements(uint64_t this)
{
  if ((*(this + 16) & 1) == 0)
  {
    v1 = this;
    sub_1A936C9C4((this + 80), this, 1, *(this + 20));
    sub_1A936C9C4((v1 + 128), v1, 2, *(v1 + 24));
    sub_1A936C9C4((v1 + 176), v1, 3, *(v1 + 28));
    this = (*(*v1 + 48))(v1);
    *(v1 + 16) = 1;
  }

  return this;
}

void ausdk::AUBase::PreDestructorInternal(ausdk::AUBase *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    (*(*v2 + 16))(*(this + 59));
  }

  v3.n128_f64[0] = ausdk::AUBase::DoCleanup(this);
  if (v2)
  {
    v4 = *(*v2 + 24);

    v4(v2, v3);
  }
}

void sub_1A936CC7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A95788CC(v1);
  }

  _Unwind_Resume(exception_object);
}

double ausdk::AUBase::DoCleanup(ausdk::AUBase *this)
{
  if (*(this + 17))
  {
    (*(*this + 64))(this);
  }

  (*(*this + 504))(this);
  *(this + 41) = 0;
  result = 0.0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 280) = 0u;
  *(this + 34) = 0xFFEFFFFFFFFFFFFFLL;
  *(this + 17) = 0;
  return result;
}

uint64_t ausdk::AUBase::SetMaxFramesPerSlice(uint64_t this, int a2)
{
  if (*(this + 336) != a2)
  {
    v3 = this;
    *(this + 336) = a2;
    if (*(this + 432))
    {
      (*(*this + 496))(this);
    }

    v4 = *(*v3 + 432);

    return v4(v3, 14, 0, 0);
  }

  return this;
}

uint64_t ausdk::AUBase::CanSetMaxFrames(ausdk::AUBase *this)
{
  if (*(this + 17))
  {
    return 4294956447;
  }

  else
  {
    return 0;
  }
}

uint64_t ausdk::AUBase::ReallocateBuffers(ausdk::AUBase *this)
{
  ausdk::AUBase::CreateElements(this);
  v2 = *(this + 21);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = (*(this + 19) - *(this + 18)) >> 3;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4 = 0;
  do
  {
    v5 = sub_1A933BF74(this + 128, v4);
    (*(*v5 + 64))(v5, 0);
    ++v4;
  }

  while (v3 != v4);
LABEL_7:
  result = *(this + 15);
  if (result)
  {
    result = (*(*result + 24))(result);
    LODWORD(v7) = result;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = (*(this + 13) - *(this + 12)) >> 3;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  v8 = 0;
  do
  {
    v9 = sub_1A933BF74(this + 80, v8);
    result = (*(*v9 + 64))(v9, 0);
    ++v8;
  }

  while (v7 != v8);
LABEL_13:
  *(this + 432) = 1;
  return result;
}

void *ausdk::AUBase::DeallocateIOBuffers(void *this)
{
  if (*(this + 432) == 1)
  {
    v1 = this;
    v2 = this[21];
    if (v2)
    {
      LODWORD(v3) = (*(*v2 + 24))(v2);
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = (v1[19] - v1[18]) >> 3;
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    v4 = 0;
    do
    {
      v5 = sub_1A933BF74((v1 + 16), v4);
      ausdk::AUIOElement::DeallocateBuffer(v5);
      ++v4;
    }

    while (v3 != v4);
LABEL_8:
    this = v1[15];
    if (this)
    {
      this = (*(*this + 24))(this);
      LODWORD(v6) = this;
      if (!this)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = (v1[13] - v1[12]) >> 3;
      if (!v6)
      {
LABEL_14:
        *(v1 + 432) = 0;
        return this;
      }
    }

    v7 = 0;
    do
    {
      v8 = sub_1A933BF74((v1 + 10), v7);
      this = ausdk::AUIOElement::DeallocateBuffer(v8);
      ++v7;
    }

    while (v6 != v7);
    goto LABEL_14;
  }

  return this;
}

uint64_t ausdk::AUBase::DoInitialize(ausdk::AUBase *this)
{
  if (*(this + 17))
  {
    return 0;
  }

  result = (*(*this + 56))(this);
  if (!result)
  {
    if ((*(*this + 160))(this))
    {
      sub_1A936D144(this + 48, 0x18uLL);
    }

    *(this + 18) = 1;
    (*(*this + 496))(this);
    result = 0;
    *(this + 17) = 1;
    __dmb(0xBu);
  }

  return result;
}

void *sub_1A936D144(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      sub_1A93721D8(result, a2);
    }

    sub_1A9335A94();
  }

  return result;
}

uint64_t ausdk::AUBase::DoReset(ausdk::AUBase *this)
{
  *(this + 41) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 280) = 0u;
  *(this + 34) = 0xFFEFFFFFFFFFFFFFLL;
  return (*(*this + 72))();
}

uint64_t ausdk::AUBase::DispatchGetPropertyInfo(ausdk::AUBase *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, BOOL *a6)
{
  switch(a2)
  {
    case 0:
    case 25:
    case 54:
      if (a3)
      {
        return 4294956430;
      }

      goto LABEL_3;
    case 1:
    case 23:
      if (a3 > 1)
      {
        return 4294956430;
      }

      goto LABEL_21;
    case 2:
      v18 = 8;
      goto LABEL_38;
    case 3:
      LODWORD(v23) = 0;
      v16 = (*(*this + 248))(this, a3, 0, &v23);
      if (v16)
      {
        return v16;
      }

      v19 = 4 * v23;
      goto LABEL_42;
    case 4:
      v16 = 0;
      v19 = 104;
      goto LABEL_42;
    case 8:
      v18 = 40;
LABEL_38:
      *a5 = v18;
      *a6 = ausdk::AUBase::IsStreamFormatWritable(this, a3, a4);
      goto LABEL_56;
    case 11:
      *a5 = 4;
      v16 = 0;
      *a6 = (*(*this + 216))(this, a3);
      return v16;
    case 12:
    case 61:
      if (!a3)
      {
        goto LABEL_5;
      }

      return 4294956430;
    case 13:
      if (a3)
      {
        return 4294956430;
      }

      v15 = (*(*this + 376))(this, 0);
      if (!v15)
      {
        return 4294956417;
      }

      v12 = 4 * v15;
      goto LABEL_24;
    case 14:
      if (a3)
      {
        return 4294956430;
      }

      v11 = 4;
      goto LABEL_55;
    case 16:
      v16 = (*(*this + 296))(this, a3, a4, 0);
      if (!v16)
      {
        goto LABEL_36;
      }

      return v16;
    case 19:
      *a6 = 0;
      v20 = (*(*this + 528))(this, a3, a4, 0, a6);
      *a5 = v20;
      if (v20)
      {
        return 0;
      }

      (*(*this + 552))(&v23, this, a3, a4);
      if (v23 == v24)
      {
        v16 = 4294956417;
      }

      else
      {
        v16 = 4294956445;
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      return v16;
    case 20:
      if (a3)
      {
        return 4294956430;
      }

      if ((*(*this + 360))(this))
      {
        goto LABEL_5;
      }

      return 4294956417;
    case 22:
      if (a3)
      {
        return 4294956430;
      }

      v12 = 4;
      goto LABEL_24;
    case 24:
      if (a3)
      {
        return 4294956430;
      }

      v17 = (*(*this + 312))(this, 0);
      if (v17)
      {
        return v17;
      }

LABEL_5:
      v12 = 8;
LABEL_24:
      *a5 = v12;
      *a6 = 0;
      goto LABEL_56;
    case 27:
      if (a3)
      {
        return 4294956430;
      }

      v11 = 40;
      goto LABEL_55;
    case 30:
LABEL_3:
      v11 = 8;
      goto LABEL_55;
    case 32:
      (*(*this + 552))(&v23, this, a3, a4);
      v13 = v23;
      v14 = v24;
      if (v23 != v24)
      {
        *a5 = v24 - v23;
        *a6 = 0;
      }

      if (v13)
      {
        v24 = v13;
        operator delete(v13);
      }

      if (v13 == v14)
      {
        return 4294956417;
      }

      return 0;
    case 35:
      v12 = 16;
      goto LABEL_24;
    case 36:
      if (a3)
      {
        return 4294956430;
      }

LABEL_21:
      v11 = 16;
LABEL_55:
      *a5 = v11;
      *a6 = 1;
      goto LABEL_56;
    case 51:
      if ((a3 - 1) > 1)
      {
        return 4294956430;
      }

      *a6 = 1;
      *a5 = 4;
LABEL_56:
      v21 = sub_1A936DF30(this, a3);
      if (sub_1A933BE1C(v21, a4))
      {
        return 0;
      }

      else
      {
        return 4294956419;
      }

    case 53:
      v16 = 0;
LABEL_36:
      v19 = 8;
LABEL_42:
      *a5 = v19;
      *a6 = 0;
      return v16;
    default:
      return (*(*this + 80))(this);
  }
}

uint64_t ausdk::AUBase::IsStreamFormatWritable(ausdk::AUBase *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (a2)
  {
    if (a2 != 2 && (a2 != 1 || *(sub_1A933BF74(this + 80, a3) + 172) == 1))
    {
      return 0;
    }

    v7 = *(*v3 + 368);
    this = v3;
    v8 = a2;
    v9 = a3;
  }

  else
  {
    v7 = *(*this + 368);
    v8 = 2;
    v9 = 0;
  }

  return v7(this, v8, v9);
}

uint64_t ausdk::AUBase::DispatchGetProperty(ausdk::AUBase *this, int a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 0:
      __src[0] = 0;
      v9 = (*(*this + 272))(this, __src);
      goto LABEL_26;
    case 1:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 15:
    case 17:
    case 18:
    case 21:
    case 23:
    case 26:
    case 28:
    case 29:
    case 31:
    case 33:
    case 34:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 52:
      goto LABEL_5;
    case 2:
      (*(*this + 392))(__src, this, a3, a4);
      v10 = 0;
      goto LABEL_27;
    case 3:
      v34 = 0;
      v10 = (*(*this + 248))(this, a3, 0, &v34);
      if (!v10)
      {
        sub_1A9372220(__src, v34);
        v10 = (*(*this + 248))(this, a3, __src[0], &v34);
        v27 = __src[0];
        if (!v10)
        {
          memcpy(a5, __src[0], __src[1] - __src[0]);
        }

        if (v27)
        {
          __src[1] = v27;
          operator delete(v27);
        }
      }

      goto LABEL_60;
    case 4:
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      *__src = 0u;
      v36 = 0u;
      v10 = (*(*this + 256))(this, a3, a4, __src);
      v21 = v40;
      a5[4] = v39;
      a5[5] = v21;
      *(a5 + 12) = v41;
      v22 = v36;
      *a5 = *__src;
      a5[1] = v22;
      v23 = v38;
      a5[2] = v37;
      a5[3] = v23;
      goto LABEL_60;
    case 8:
      (*(*this + 392))(__src, this, a3, a4);
      v10 = 0;
      v25 = v36;
      *a5 = *__src;
      a5[1] = v25;
      *(a5 + 4) = v37;
      goto LABEL_60;
    case 11:
      v17 = sub_1A936DF30(this, a3);
      v18 = v17[5];
      if (v18)
      {
        LODWORD(v19) = (*(*v18 + 24))(v18);
      }

      else
      {
        v19 = (v17[3] - v17[2]) >> 3;
      }

      v10 = 0;
      *a5 = v19;
      goto LABEL_60;
    case 12:
      (*(*this + 344))(this);
      goto LABEL_48;
    case 13:
      __src[0] = 0;
      v28 = (*(*this + 376))(this, __src);
      if (v28)
      {
        v29 = __src[0] == 0;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        memcpy(a5, __src[0], 4 * v28);
      }

      goto LABEL_53;
    case 14:
      v10 = 0;
      v24 = *(this + 84);
      goto LABEL_50;
    case 16:
      __src[0] = 0;
      v9 = (*(*this + 296))(this, a3, a4, __src);
      goto LABEL_26;
    case 19:
      LOBYTE(__src[0]) = 0;
      if (!(*(*this + 528))(this, a3, a4, a5, __src))
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    case 20:
      if (!(*(*this + 360))(this))
      {
        goto LABEL_59;
      }

      v30 = (*(*this + 352))(this);
LABEL_48:
      v10 = 0;
      *a5 = v30;
      goto LABEL_60;
    case 22:
      v10 = 0;
      *a5 = *(this + 85);
      *(this + 85) = 0;
      goto LABEL_60;
    case 24:
      __src[0] = 0;
      v9 = (*(*this + 312))(this, __src);
      goto LABEL_26;
    case 25:
      v20 = *(this + 65);
      *a5 = v20;
      if (!v20)
      {
        goto LABEL_19;
      }

      goto LABEL_52;
    case 27:
      v10 = 0;
      v15 = *(this + 30);
      v16 = *(this + 31);
      *(a5 + 4) = *(this + 64);
      *a5 = v15;
      a5[1] = v16;
      goto LABEL_60;
    case 30:
      v13 = sub_1A936DF30(this, a3);
      __src[0] = *(sub_1A933BE1C(v13, a4) + 72);
      sub_1A9372298(__src);
      v14 = __src[0];
      sub_1A9345C90(__src);
      if (v14)
      {
        CFRetain(v14);
        v10 = 0;
        *a5 = v14;
      }

      else
      {
LABEL_19:
        v10 = 4294956446;
      }

      goto LABEL_60;
    case 32:
      (*(*this + 552))(__src, this, a3, a4);
      v26 = __src[0];
      if (__src[0] == __src[1])
      {
        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

LABEL_59:
        v10 = 4294956417;
      }

      else
      {
        memcpy(a5, __src[0], __src[1] - __src[0]);
        if (v26)
        {
          __src[1] = v26;
          operator delete(v26);
        }

LABEL_53:
        v10 = 0;
      }

      goto LABEL_60;
    case 35:
      *__src = *a5;
      if (!LODWORD(__src[0]))
      {
        v10 = 4294956445;
        goto LABEL_60;
      }

      v10 = (*(*this + 304))(this, a3);
      *a5 = *__src;
      if (v10 != -10879)
      {
        goto LABEL_60;
      }

      v12 = (*(*this + 88))(this, 35, a3, a4, a5);
      goto LABEL_11;
    case 36:
      *a5 = *(this + 360);
      v20 = *(this + 46);
      if (!v20)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    case 51:
      v31 = sub_1A936DF30(this, a3);
      v10 = 0;
      v24 = *(sub_1A9370FE4(v31, a4) + 168);
LABEL_50:
      *a5 = v24;
      goto LABEL_60;
    case 53:
      __src[0] = 0;
      v9 = (*(*this + 264))(this, a3, a4, __src, __src + 4);
LABEL_26:
      v10 = v9;
LABEL_27:
      v11 = __src[0];
      goto LABEL_28;
    case 54:
      v20 = *(this + 58);
      *a5 = v20;
      if (v20)
      {
LABEL_52:
        CFRetain(v20);
      }

      goto LABEL_53;
    default:
      if (a2 == 61)
      {
        v10 = 0;
        v11 = *(this + 34);
LABEL_28:
        *a5 = v11;
      }

      else
      {
LABEL_5:
        v12 = (*(*this + 88))(this);
LABEL_11:
        v10 = v12;
      }

LABEL_60:
      v32 = *MEMORY[0x1E69E9840];
      return v10;
  }
}

void sub_1A936DF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A936DF30(uint64_t a1, unsigned int a2)
{
  if (a2 < 4)
  {
    return a1 + 48 * a2 + 32;
  }

  result = (*(*a1 + 408))(a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    sub_1A9333D44(exception, -10866);
    __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
  }

  return result;
}

uint64_t ausdk::AUBase::DispatchSetProperty(const void **this, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *__s2, uint64_t a6)
{
  v6 = a6;
  if (a2 <= 22)
  {
    if (a2 > 7)
    {
      if (a2 > 13)
      {
        if (a2 == 14)
        {
          if (a6 == 4)
          {
            v12 = (*(*this + 65))(this);
            if (!v12)
            {
              (*(*this + 64))(this, *__s2);
            }

            return v12;
          }

          return 4294956445;
        }

        if (a2 == 19)
        {
          if (a6 >= 0xC)
          {
            v17 = a6;
            if (20 * __s2[2] + 12 <= a6)
            {
              if ((a6 & 0x1F) != 0)
              {
                v18 = (a6 >> 5) + 1;
              }

              else
              {
                v18 = a6 >> 5;
              }

              sub_1A93722BC(&__s1, v18);
              memcpy(__s1, __s2, v17);
              v12 = (*(*this + 67))(this, a3, a4, __s1);
              if (!v12)
              {
                (*(*this + 54))(this, 19, a3, a4);
              }

              if (__s1)
              {
                *(&__s1 + 1) = __s1;
                operator delete(__s1);
              }

              return v12;
            }
          }

          return 4294956445;
        }

        goto LABEL_86;
      }

      if (a2 != 8)
      {
        if (a2 == 11)
        {
          if (a6 == 4)
          {
            if ((*(*this + 27))(this, a3))
            {
              v12 = (*(*this + 28))(this, a3, *__s2);
              if (!v12)
              {
                (*(*this + 54))(this, 11, a3, a4);
              }

              return v12;
            }

            return 4294956431;
          }

          return 4294956445;
        }

LABEL_86:
        v12 = (*(*this + 12))(this, a2, a3, a4, __s2, a6);
        if (!v12)
        {
          (*(*this + 54))(this, a2, a3, a4);
        }

        return v12;
      }

      if (a6 < 0x24)
      {
        return 4294956445;
      }

      v19 = sub_1A936DF30(this, a3);
      if (sub_1A933BE1C(v19, a4))
      {
        v20 = *(__s2 + 1);
        __s1 = *__s2;
        v36 = v20;
        v37 = __s2[8];
        if (sub_1A936E994(&__s1) && (*(*this + 48))(this, a3, a4, &__s1))
        {
          v34 = 0;
          v32 = 0u;
          v33 = 0u;
          (*(*this + 49))(&v32, this, a3, a4);
          if (memcmp(&v32, &__s1, 0x28uLL))
          {
            if (ausdk::AUBase::IsStreamFormatWritable(this, a3, a4))
            {
              return (*(*this + 50))(this, a3, a4, &v32, &__s1);
            }

            return 4294956431;
          }

          return 0;
        }

        return 4294956428;
      }

      return 4294956419;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (a6 < 0x10)
        {
          return 4294956445;
        }

        __s1 = *__s2;
        return (*(*this + 29))(this, &__s1);
      }

      if (a2 != 2)
      {
        goto LABEL_86;
      }

      if (a6 != 8)
      {
        return 4294956445;
      }

      v15 = sub_1A936DF30(this, a3);
      if (!sub_1A933BE1C(v15, a4))
      {
        return 4294956419;
      }

      v37 = 0;
      __s1 = 0u;
      v36 = 0u;
      (*(*this + 49))(&__s1, this, a3, a4);
      v34 = v37;
      v32 = __s1;
      v33 = v36;
      *&v32 = *__s2;
      if (!(*(*this + 48))(this, a3, a4, &v32))
      {
        return 4294956428;
      }

      if (!memcmp(&__s1, &v32, 0x28uLL))
      {
        return 0;
      }

      if (!ausdk::AUBase::IsStreamFormatWritable(this, a3, a4))
      {
        return 4294956431;
      }

      return (*(*this + 50))(this, a3, a4, &__s1, &v32);
    }

    if (a6 != 8)
    {
      return 4294956445;
    }

    if (!a3)
    {
      v25 = *__s2;
      v26 = *(*this + 36);

      return v26();
    }

    return 4294956430;
  }

  if (a2 > 29)
  {
    if (a2 > 50)
    {
      if (a2 == 51)
      {
        if ((a3 - 1) <= 1)
        {
          v24 = sub_1A936DF30(this, a3);
          if (sub_1A933BE1C(v24, a4))
          {
            if (v6 == 4)
            {
              if (*(this + 17))
              {
                return 4294956447;
              }

              v31 = sub_1A936DF30(this, a3);
              v12 = 0;
              *(sub_1A9370FE4(v31, a4) + 168) = *__s2 != 0;
              return v12;
            }

            return 4294956445;
          }

          return 4294956419;
        }
      }

      else
      {
        if (a2 != 54)
        {
          goto LABEL_86;
        }

        if (!a3)
        {
          if (a6 != 8)
          {
            return 4294956445;
          }

          sub_1A936EA38(this + 58, *__s2);
          (*(*this + 54))(this, 54, 0, a4);
          return 0;
        }
      }
    }

    else
    {
      if (a2 == 30)
      {
        v21 = sub_1A936DF30(this, a3);
        if (sub_1A933BE1C(v21, a4))
        {
          if (v6 != 8)
          {
            return 4294956445;
          }

          v22 = sub_1A936DF30(this, a3);
          v23 = sub_1A933BE1C(v22, a4);
          sub_1A936EA38((v23 + 72), *__s2);
          (*(*this + 54))(this, 30, a3, a4);
          return 0;
        }

        return 4294956419;
      }

      if (a2 != 36)
      {
        goto LABEL_86;
      }

      if (a6 != 16)
      {
        return 4294956445;
      }

      if (!a3)
      {
        v13 = *(__s2 + 1);
        *&__s1 = *__s2;
        *(&__s1 + 1) = v13;
        if ((__s1 & 0x80000000) != 0)
        {
          if (!v13)
          {
            return 4294956445;
          }

          v14 = (*(*this + 41))(this, &__s1);
          if (v14)
          {
            return v14;
          }
        }

        else
        {
          v14 = (*(*this + 40))(this, &__s1);
          if (v14)
          {
            return v14;
          }
        }

        (*(*this + 54))(this, 36, 0, a4);
        return 0;
      }
    }

    return 4294956430;
  }

  if (a2 != 23)
  {
    if (a2 == 25)
    {
      if (a6 != 8)
      {
        return 4294956445;
      }

      if (!a3)
      {
        sub_1A936EA38(this + 65, *__s2);
        (*(*this + 54))(this, 25, 0, a4);
        return 0;
      }
    }

    else
    {
      if (a2 != 27)
      {
        goto LABEL_86;
      }

      if (!a3)
      {
        if (a6 >= 0x28)
        {
          v16 = 40;
        }

        else
        {
          v16 = a6;
        }

        v12 = memcmp(this + 60, __s2, v16);
        *(this + 30) = 0u;
        *(this + 31) = 0u;
        this[64] = 0;
        memcpy(this + 60, __s2, v16);
        if (!v12)
        {
          return v12;
        }

        (*(*this + 54))(this, 27, 0, a4);
        return 0;
      }
    }

    return 4294956430;
  }

  if (a6 < 0x10)
  {
    return 4294956445;
  }

  v28 = *__s2;
  v29 = *(__s2 + 1);
  v30 = *(*this + 30);

  return v30();
}

void sub_1A936E978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A936E994(uint64_t a1)
{
  result = 0;
  if (*a1 >= 0.0 && *a1 < 3000000.0)
  {
    v3 = *(a1 + 16);
    if (v3 >= 0xF4240)
    {
      return 0;
    }

    v4 = *(a1 + 20);
    if (v4 >= 0xF4240)
    {
      return 0;
    }

    v5 = *(a1 + 24);
    if (v5 >= 0xF4240)
    {
      return 0;
    }

    result = 0;
    if ((*(a1 + 28) - 1) > 0x3FF || *(a1 + 32) > 0x400u)
    {
      return result;
    }

    v6 = *(a1 + 8);
    if (!v6)
    {
      return 0;
    }

    v8 = v4 == 1 && v3 == v5;
    return v6 != 1819304813 || v8;
  }

  return result;
}

const void **sub_1A936EA38(const void **a1, const void *a2)
{
  if (*a1 != a2)
  {
    sub_1A9345C90(a1);
    *a1 = a2;
    sub_1A9372298(a1);
  }

  return a1;
}

uint64_t ausdk::AUBase::DispatchRemovePropertyValue(ausdk::AUBase *this, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 26)
  {
    if (a2 == 27)
    {
      if (!a3)
      {
        v14 = 0;
        memset(v13, 0, sizeof(v13));
        v12 = (this + 480);
        if (!memcmp(this + 480, v13, 0x28uLL))
        {
          return 0;
        }

        *(this + 64) = 0;
        *v12 = 0u;
        *(this + 31) = 0u;
        v7 = *(*this + 432);
        v8 = this;
        v9 = 27;
LABEL_18:
        v7(v8, v9, 0, a4);
        return 0;
      }
    }

    else
    {
      if (a2 != 54)
      {
        goto LABEL_9;
      }

      if (!a3)
      {
        sub_1A936EA38(this + 58, 0);
        v7 = *(*this + 432);
        v8 = this;
        v9 = 54;
        goto LABEL_18;
      }
    }

    return 4294956430;
  }

  if (a2 == 19)
  {
    result = (*(*this + 544))(this, a3, a4);
    if (result)
    {
      return result;
    }

    (*(*this + 432))(this, 19, a3, a4);
    return 0;
  }

  if (a2 == 25)
  {
    sub_1A936EA38(this + 65, 0);
    return 0;
  }

LABEL_9:
  v10 = *(*this + 104);

  return v10();
}

uint64_t ausdk::AUBase::AddPropertyListener(ausdk::AUBase *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4)
{
  v8 = *(this + 52);
  if (*(this + 51) == v8)
  {
    sub_1A936EDAC(this + 51, 0x20uLL);
    v8 = *(this + 52);
  }

  v9 = *(this + 53);
  if (v8 >= v9)
  {
    v11 = *(this + 51);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v11) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1A9335A94();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      sub_1A9372370(this + 408, v15);
    }

    v16 = 24 * v12;
    *v16 = a2;
    *(v16 + 8) = a3;
    *(v16 + 16) = a4;
    v10 = 24 * v12 + 24;
    v17 = *(this + 51);
    v18 = *(this + 52) - v17;
    v19 = (24 * v12 - v18);
    memcpy(v19, v17, v18);
    v20 = *(this + 51);
    *(this + 51) = v19;
    *(this + 52) = v10;
    *(this + 53) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v8 = a2;
    v10 = v8 + 24;
    *(v8 + 8) = a3;
    *(v8 + 16) = a4;
  }

  *(this + 52) = v10;
  return 0;
}

void *sub_1A936EDAC(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      sub_1A9372370(result, a2);
    }

    sub_1A9335A94();
  }

  return result;
}

uint64_t ausdk::AUBase::RemovePropertyListener(ausdk::AUBase *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4, int a5)
{
  v6 = *(this + 51);
  v5 = *(this + 52);
  if (v6 != v5)
  {
    while (*v6 != a2 || *(v6 + 8) != a3 || a5 && *(v6 + 16) != a4)
    {
      v6 += 24;
      if (v6 == v5)
      {
        return 0;
      }
    }

    if (v6 != v5)
    {
      v8 = (v6 + 24);
      if ((v6 + 24) != v5)
      {
        do
        {
          if (*v8 != a2 || *(v8 + 1) != a3 || a5 && *(v8 + 2) != a4)
          {
            v9 = *v8;
            *(v6 + 16) = *(v8 + 2);
            *v6 = v9;
            v6 += 24;
          }

          v8 = (v8 + 24);
        }

        while (v8 != v5);
        v5 = *(this + 52);
      }
    }

    if (v6 != v5)
    {
      *(this + 52) = v6;
    }
  }

  return 0;
}

uint64_t ausdk::AUBase::PropertyChanged(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(this + 408);
  v5 = *(this + 416);
  if (v4 != v5)
  {
    v9 = this;
    do
    {
      if (*v4 == a2)
      {
        this = (*(v4 + 8))(*(v4 + 16), *(v9 + 8), a2, a3, a4);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return this;
}

uint64_t ausdk::AUBase::SetRenderNotification(ausdk::AUBase *this, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), unint64_t a3)
{
  if (!a2)
  {
    return 4294967246;
  }

  *(this + 248) = 1;
  v6 = sub_1A9373BB0(this + 224);
  *(v6 + 2) = 1;
  v6[2] = a2;
  v6[3] = a3;
  do
  {
    v7 = atomic_load(this + 29);
    *v6 = v7;
    v8 = v7;
    atomic_compare_exchange_strong(this + 29, &v8, v6);
  }

  while (v8 != v7);
  return 0;
}

uint64_t ausdk::AUBase::RemoveRenderNotification(ausdk::AUBase *this, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), unint64_t a3)
{
  v6 = sub_1A9373BB0(this + 224);
  *(v6 + 2) = 2;
  v6[2] = a2;
  v6[3] = a3;
  do
  {
    v7 = atomic_load(this + 29);
    *v6 = v7;
    v8 = v7;
    atomic_compare_exchange_strong(this + 29, &v8, v6);
  }

  while (v8 != v7);
  return 0;
}

uint64_t ausdk::AUBase::GetParameter(ausdk::AUBase *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  v8 = sub_1A936DF30(this, a3);
  v9 = sub_1A933BF74(v8, a4);
  *a5 = ausdk::AUElement::GetParameter(v9, a2);
  return 0;
}

uint64_t ausdk::AUBase::SetParameter(ausdk::AUBase *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v8 = sub_1A936DF30(this, a3);
  v9 = sub_1A933BF74(v8, a4);
  ausdk::AUElement::SetParameter(v9, a2, a5, 0);
  return 0;
}

uint64_t ausdk::AUBase::ScheduleParameter(ausdk::AUBase *this, const AudioUnitParameterEvent *a2, unsigned int a3)
{
  v6 = (*(*this + 160))(this);
  if (a3)
  {
    v7 = v6;
    v8 = a3;
    do
    {
      if (a2->eventType == kParameterEvent_Immediate)
      {
        (*(*this + 152))(this, a2->parameter, a2->scope, a2->element, a2->eventValues.immediate.bufferOffset, a2->eventValues.immediate.value);
      }

      if (v7)
      {
        v9 = *(this + 49);
        v10 = *(this + 50);
        if (v9 >= v10)
        {
          v13 = *(this + 48);
          v14 = (v9 - v13) >> 5;
          v15 = v14 + 1;
          if ((v14 + 1) >> 59)
          {
            sub_1A9335A94();
          }

          v16 = v10 - v13;
          if (v16 >> 4 > v15)
          {
            v15 = v16 >> 4;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFE0)
          {
            v17 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            sub_1A93721D8(this + 384, v17);
          }

          v18 = (32 * v14);
          eventValues = a2->eventValues;
          *v18 = *&a2->scope;
          v18[1] = eventValues;
          v12 = 32 * v14 + 32;
          v20 = *(this + 48);
          v21 = *(this + 49) - v20;
          v22 = 32 * v14 - v21;
          memcpy(v18 - v21, v20, v21);
          v23 = *(this + 48);
          *(this + 48) = v22;
          *(this + 49) = v12;
          *(this + 50) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          v11 = a2->eventValues;
          *v9 = *&a2->scope;
          v9[1] = v11;
          v12 = (v9 + 2);
        }

        *(this + 49) = v12;
      }

      ++a2;
      --v8;
    }

    while (v8);
  }

  return 0;
}

uint64_t ausdk::AUBase::ProcessForScheduledParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = 126 - 2 * __clz((v9 - v8) >> 5);
  v32 = sub_1A936F4C8;
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_1A93723C8(v8, v9, &v32, v11, 1, a5);
  if (a3)
  {
    v13 = 0;
    v14 = a3;
    while (1)
    {
      v16 = *a2;
      v15 = *(a2 + 8);
      v17 = a3;
      v18 = *a2;
      if (*a2 != v15)
      {
        break;
      }

      v23 = (a3 - v13);
      v17 = a3;
LABEL_21:
      result = (*(*a1 + 568))(a1, a4, v13, v23, a3, v12);
      if (result)
      {
        return result;
      }

      v13 = v17;
      v25 = v14 > v23;
      if (v14 >= v23)
      {
        v14 -= v23;
      }

      else
      {
        v14 = 0;
      }

      if (!v25)
      {
        return 0;
      }
    }

    while (1)
    {
      v19 = *(v18 + 4);
      if (v19 > v13 && v19 < v17)
      {
        break;
      }

      if (*(v18 + 3) == 2)
      {
        v21 = *(v18 + 5) + v19;
        if (v21 >= v17)
        {
          v22 = v17;
        }

        else
        {
          v22 = v21;
        }

        if (v21 <= v13)
        {
          v17 = v17;
        }

        else
        {
          v17 = v22;
        }
      }

      v18 += 2;
      if (v18 == v15)
      {
        goto LABEL_28;
      }
    }

    v17 = *(v18 + 4);
LABEL_28:
    v23 = (v17 - v13);
    while (1)
    {
      if (v16 == v15)
      {
        goto LABEL_21;
      }

      v26 = v16[4];
      if (v16[3] != 2)
      {
        break;
      }

      if (v26 < v17 && (v16[5] + v26) > v13)
      {
        goto LABEL_38;
      }

LABEL_40:
      v16 += 8;
    }

    if (v26 > v13)
    {
      goto LABEL_40;
    }

LABEL_38:
    v28 = v16[1];
    v29 = sub_1A936DF30(a1, *v16);
    v30 = sub_1A933BE1C(v29, v28);
    if (v30)
    {
      (*(*v30 + 32))(v30, v16[2], v16, v13, (v17 - v13), 0);
    }

    goto LABEL_40;
  }

  return 0;
}

uint64_t ausdk::AUBase::SetWantsRenderThreadID(uint64_t this, int a2)
{
  if (*(this + 264) != a2)
  {
    *(this + 264) = a2;
    if ((a2 & 1) == 0)
    {
      *(this + 256) = 0;
    }
  }

  return this;
}

uint64_t ausdk::AUBase::DoRender(ausdk::AUBase *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5, AudioBufferList *a6)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(this + 17))
  {
    v8 = *(this + 84);
    if (v8 < a5)
    {
      v9 = mach_absolute_time();
      if (*(this + 43) < (v9 - *(this + 44)))
      {
        *(this + 44) = v9;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A9579E68(this + 84);
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A9579EF4(this);
      }

      v10 = 4294956422;
      if (!*(this + 85))
      {
        *(this + 85) = -10874;
        (*(*this + 432))(this, 22, 0, 0);
      }

      goto LABEL_58;
    }

    if (v8 != a5 && (*(this + 376) & 1) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A9579DF0(this);
      }

      v10 = 4294967246;
      if (*(this + 85))
      {
        goto LABEL_58;
      }

      goto LABEL_19;
    }

    v15 = sub_1A933BF74(this + 128, a4);
    if ((*(v15 + 92) & 0x20) != 0)
    {
      v16 = *(v15 + 108);
    }

    else
    {
      v16 = 1;
    }

    if (v16 == a6->mNumberBuffers)
    {
      if (!v16)
      {
LABEL_30:
        v22 = v15;
        if (*(this + 264) == 1)
        {
          *(this + 32) = pthread_self();
        }

        if (*(this + 248) == 1)
        {
          sub_1A936FB84(this + 28);
          *buf = *a2 | 4;
          for (i = atomic_load(this + 28); i; i = *i)
          {
            (*(i + 16))(*(i + 24), buf, a3, a4, a5, a6);
          }
        }

        v24 = sub_1A936FD94(this, a2, a3, a4, v22, a5, &a6->mNumberBuffers);
        v10 = v24;
        if (v24 && !*(this + 85))
        {
          *(this + 85) = v24;
          (*(*this + 432))(this, 22, 0, 0);
        }

        if (*(this + 248) == 1)
        {
          v25 = v10 ? 264 : 8;
          *buf = *a2 | v25;
          for (j = atomic_load(this + 28); j; j = *j)
          {
            (*(j + 16))(*(j + 24), buf, a3, a4, a5, a6);
          }
        }

        v27 = *(this + 48);
        if (v27 != *(this + 49))
        {
          *(this + 49) = v27;
        }

        goto LABEL_58;
      }

      v17 = 0;
      v18 = *(v15 + 104);
      v19 = v18 * a5;
      p_mDataByteSize = &a6->mBuffers[0].mDataByteSize;
      while (1)
      {
        if (*(p_mDataByteSize + 1))
        {
          v21 = *p_mDataByteSize;
          if (*p_mDataByteSize < v19)
          {
            v28 = v18;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 67110144;
              v32 = a5;
              v33 = 1024;
              v34 = v28;
              v35 = 1024;
              v36 = v19;
              v37 = 1024;
              v38 = v17;
              v39 = 1024;
              v40 = v21;
              _os_log_error_impl(&dword_1A9324000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; ioData.mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x20u);
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A9579DF0(this);
            }

            v10 = 4294967246;
            if (!*(this + 85))
            {
              *(this + 85) = -50;
              (*(*this + 432))(this, 22, 0, 0);
            }

            goto LABEL_58;
          }

          *p_mDataByteSize = v19;
        }

        ++v17;
        p_mDataByteSize += 4;
        if (v16 == v17)
        {
          goto LABEL_30;
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A9579D78();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A9579DF0(this);
    }

    v10 = 4294967246;
    if (!*(this + 85))
    {
LABEL_19:
      *(this + 85) = -50;
      (*(*this + 432))(this, 22, 0, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A9579CF8(this);
    }

    v10 = 4294956429;
    if (!*(this + 85))
    {
      *(this + 85) = -10867;
      (*(*this + 432))(this, 22, 0, 0);
    }
  }

LABEL_58:
  v29 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1A936FA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a2)
  {
    v11 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      sub_1A936FAE8(&a10, *v11);
    }

    else
    {
      sub_1A936FAE8(&a10, 0xFFFFFFFFLL);
    }

    __cxa_end_catch();
    JUMPOUT(0x1A936F9A0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A936FAE8(_DWORD **a1, uint64_t a2)
{
  v3 = *a1;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A9579F74(v3);
    if (!a2)
    {
      return a2;
    }
  }

  else if (!a2)
  {
    return a2;
  }

  if (!v3[85])
  {
    v3[85] = a2;
    (*(*v3 + 432))(v3, 22, 0, 0);
  }

  return a2;
}

void sub_1A936FB84(unint64_t *a1)
{
  while (1)
  {
    v2 = atomic_load(a1 + 1);
    if (!v2)
    {
      break;
    }

    v3 = v2;
    atomic_compare_exchange_strong(a1 + 1, &v3, 0);
    if (v3 == v2)
    {
      v4 = 0;
      do
      {
        v5 = v4;
        v4 = v2;
        v2 = *v2;
        *v4 = v5;
      }

      while (v2);
      v6 = MEMORY[0x1E69E9C10];
      do
      {
        v7 = v4;
        v4 = *v4;
        v8 = *(v7 + 8);
        switch(v8)
        {
          case 3:
            v16 = atomic_load(a1);
            if (v16)
            {
              do
              {
                v17 = *v16;
                do
                {
                  v18 = atomic_load(a1 + 2);
                  *v16 = v18;
                  v19 = v18;
                  atomic_compare_exchange_strong(a1 + 2, &v19, v16);
                }

                while (v19 != v18);
                v16 = v17;
              }

              while (v17);
            }

            do
            {
              v20 = atomic_load(a1 + 2);
              *v7 = v20;
              v21 = v20;
              atomic_compare_exchange_strong(a1 + 2, &v21, v7);
            }

            while (v21 != v20);
            if (atomic_load(a1))
            {
              atomic_store(0, a1);
            }

            break;
          case 2:
            v13 = atomic_load(a1);
            if (v13)
            {
              v14 = 0;
              while (1)
              {
                v15 = v13;
                if (v13[2] == *(v7 + 16) && v13[3] == *(v7 + 24))
                {
                  break;
                }

                v13 = *v13;
                v14 = v15;
                if (!*v15)
                {
                  goto LABEL_36;
                }
              }

              v24 = *v13;
              if (v14)
              {
                *v14 = v24;
              }

              else
              {
                atomic_store(v24, a1);
              }

              do
              {
                v25 = atomic_load(a1 + 2);
                *v15 = v25;
                v26 = v25;
                atomic_compare_exchange_strong(a1 + 2, &v26, v15);
              }

              while (v26 != v25);
            }

            do
            {
LABEL_36:
              v27 = atomic_load(a1 + 2);
              *v7 = v27;
              v28 = v27;
              atomic_compare_exchange_strong(a1 + 2, &v28, v7);
            }

            while (v28 != v27);
            break;
          case 1:
            v9 = atomic_load(a1);
            if (v9)
            {
              while (1)
              {
                v10 = v9;
                if (v9[2] == *(v7 + 16) && v9[3] == *(v7 + 24))
                {
                  break;
                }

                v9 = *v9;
                if (!*v10)
                {
                  *v10 = v7;
                  *v7 = 0;
                  goto LABEL_37;
                }
              }

              do
              {
                v11 = atomic_load(a1 + 2);
                *v7 = v11;
                v12 = v11;
                atomic_compare_exchange_strong(a1 + 2, &v12, v7);
              }

              while (v12 != v11);
            }

            else
            {
              v23 = atomic_load(a1);
              *v7 = v23;
              atomic_store(v7, a1);
            }

            break;
          default:
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              sub_1A9579FF0(&v29, v30);
            }

            break;
        }

LABEL_37:
        ;
      }

      while (v4);
      return;
    }
  }
}

uint64_t sub_1A936FD94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *__src)
{
  if (*(__src + 2) && (*(a5 + 168) != 1 || ((v14 = a1[21]) == 0 ? (v15 = (a1[19] - a1[18]) >> 3) : (LODWORD(v15) = (*(*v14 + 24))(v14)), v15 < 2)))
  {
    v16 = *__src;
    if (*(a5 + 160) < v16)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A957A034();
      }

      goto LABEL_21;
    }

    *(a5 + 144) = 2;
    memcpy((*(a5 + 152) + 48), __src, (16 * v16) | 8);
  }

  else
  {
    sub_1A9373A20(a5, a6);
  }

  v17 = (*(*a1 + 200))(a1, a2, a3, a4, a6);
  if (!v17)
  {
    if (*(__src + 2))
    {
      sub_1A935749C((a5 + 144), __src);
      *(a5 + 144) = 0;
      return v17;
    }

    if (*(a5 + 144))
    {
      memcpy(__src, (*(a5 + 152) + 48), (16 * *__src) | 8);
      return v17;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A957A034();
    }

LABEL_21:
    exception = __cxa_allocate_exception(0x18uLL);
    sub_1A9333D44(exception, -1);
    __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
  }

  return v17;
}

uint64_t ausdk::AUBase::DoProcess(ausdk::AUBase *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, AudioBufferList *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 1) & 2) != 0)
  {
    goto LABEL_28;
  }

  if (*(this + 17))
  {
    v10 = *(this + 84);
    if (v10 < a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A957A21C(this);
      }

      v11 = 4294956422;
      if (!*(this + 85))
      {
        *(this + 85) = -10874;
        (*(*this + 432))(this, 22, 0, 0);
      }

      goto LABEL_33;
    }

    if (v10 != a4 && (*(this + 376) & 1) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A957A1A4(this);
      }

      v11 = 4294967246;
      if (*(this + 85))
      {
        goto LABEL_33;
      }

LABEL_17:
      *(this + 85) = -50;
      (*(*this + 432))(this, 22, 0, 0);
      goto LABEL_33;
    }

    v12 = sub_1A933BF74(this + 80, 0);
    if ((*(v12 + 92) & 0x20) != 0)
    {
      v13 = *(v12 + 108);
    }

    else
    {
      v13 = 1;
    }

    if (v13 == a5->mNumberBuffers)
    {
      if (v13)
      {
        v14 = 0;
        v15 = *(v12 + 104);
        v16 = v15 * a4;
        p_mDataByteSize = &a5->mBuffers[0].mDataByteSize;
        do
        {
          if (*(p_mDataByteSize + 1))
          {
            v18 = *p_mDataByteSize;
            if (*p_mDataByteSize < v16)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 67110144;
                v25 = a4;
                v26 = 1024;
                v27 = v15;
                v28 = 1024;
                v29 = v15 * a4;
                v30 = 1024;
                v31 = v14;
                v32 = 1024;
                v33 = v18;
                _os_log_error_impl(&dword_1A9324000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; ioData.mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x20u);
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                sub_1A957A1A4(this);
              }

              v11 = 4294967246;
              if (!*(this + 85))
              {
                *(this + 85) = -50;
                (*(*this + 432))(this, 22, 0, 0);
              }

              goto LABEL_33;
            }

            *p_mDataByteSize = v16;
          }

          ++v14;
          p_mDataByteSize += 4;
        }

        while (v13 != v14);
      }

LABEL_28:
      if (*(this + 264) == 1)
      {
        *(this + 32) = pthread_self();
      }

      if (a3->mSampleTime == *(this + 34))
      {
        v11 = 0;
      }

      else
      {
        v19 = *&a3->mSampleTime;
        v20 = *&a3->mRateScalar;
        v21 = *&a3->mSMPTETime.mHours;
        *(this + 19) = *&a3->mSMPTETime.mSubframes;
        *(this + 20) = v21;
        *(this + 17) = v19;
        *(this + 18) = v20;
        v11 = (*(*this + 176))(this, a2, a5, a5, a4);
      }

      goto LABEL_33;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A957A12C();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A957A1A4(this);
    }

    v11 = 4294967246;
    if (!*(this + 85))
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A957A0AC(this);
    }

    v11 = 4294956429;
    if (!*(this + 85))
    {
      *(this + 85) = -10867;
      (*(*this + 432))(this, 22, 0, 0);
    }
  }

LABEL_33:
  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1A93703D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a2)
  {
    v11 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      sub_1A937046C(&a10, *v11);
    }

    else
    {
      sub_1A937046C(&a10, 0xFFFFFFFFLL);
    }

    __cxa_end_catch();
    JUMPOUT(0x1A9370228);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A937046C(_DWORD **a1, uint64_t a2)
{
  v3 = *a1;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A957A29C(v3);
    if (!a2)
    {
      return a2;
    }
  }

  else if (!a2)
  {
    return a2;
  }

  if (!v3[85])
  {
    v3[85] = a2;
    (*(*v3 + 432))(v3, 22, 0, 0);
  }

  return a2;
}

uint64_t ausdk::AUBase::DoProcessMultiple(ausdk::AUBase *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5, const AudioBufferList **a6, uint64_t a7, AudioBufferList **a8)
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v59 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 1) & 2) != 0)
  {
    goto LABEL_45;
  }

  if ((*(this + 17) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A957A318(this);
    }

    v17 = 4294956429;
    if (!*(this + 85))
    {
      *(this + 85) = -10867;
      (*(*this + 432))(this, 22, 0, 0);
    }

    goto LABEL_50;
  }

  v16 = *(this + 84);
  if (v16 < a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A957A510(this);
    }

    v17 = 4294956422;
    if (!*(this + 85))
    {
      *(this + 85) = -10874;
      (*(*this + 432))(this, 22, 0, 0);
    }

    goto LABEL_50;
  }

  if (v16 != a4 && (*(this + 376) & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A957A418(this);
    }

    v17 = 4294967246;
    if (*(this + 85))
    {
      goto LABEL_50;
    }

    goto LABEL_77;
  }

  v45 = a7;
  v46 = a5;
  if (a5)
  {
    v18 = 0;
    do
    {
      if (a6[v18])
      {
        v19 = sub_1A933BF74(this + 80, v18);
        if ((*(v19 + 92) & 0x20) != 0)
        {
          v20 = *(v19 + 108);
        }

        else
        {
          v20 = 1;
        }

        v21 = a6[v18];
        if (v20 != v21->mNumberBuffers)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A957A398();
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A957A418(this);
          }

          v17 = 4294967246;
          if (*(this + 85))
          {
            goto LABEL_50;
          }

LABEL_77:
          *(this + 85) = -50;
          (*(*this + 432))(this, 22, 0, 0);
          goto LABEL_50;
        }

        if (v20)
        {
          v22 = 0;
          v23 = *(v19 + 104) * a4;
          p_mData = &v21->mBuffers[0].mData;
          while (*p_mData)
          {
            v25 = *(p_mData - 1);
            if (v25 < v23)
            {
              v41 = *(v19 + 104);
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 67110400;
                v48 = a4;
                v49 = 1024;
                v50 = v41;
                v51 = 1024;
                v52 = v23;
                v53 = 1024;
                v54 = v18;
                v55 = 1024;
                v56 = v22;
                v57 = 1024;
                v58 = v25;
                _os_log_error_impl(&dword_1A9324000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; inInputBufferLists[%u].mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x26u);
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                sub_1A957A418(this);
              }

              goto LABEL_57;
            }

            ++v22;
            p_mData += 2;
            if (v20 == v22)
            {
              goto LABEL_30;
            }
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A957A418(this);
          }

LABEL_57:
          v17 = 4294967246;
          if (!*(this + 85))
          {
            goto LABEL_64;
          }

          goto LABEL_50;
        }
      }

LABEL_30:
      ++v18;
    }

    while (v18 != v46);
  }

  v8 = a8;
  v9 = v45;
  v11 = v46;
  if (!v45)
  {
LABEL_45:
    if (*(this + 264) == 1)
    {
      *(this + 32) = pthread_self();
    }

    if (a3->mSampleTime == *(this + 34))
    {
      v17 = 0;
    }

    else
    {
      v36 = *&a3->mSampleTime;
      v37 = *&a3->mRateScalar;
      v38 = *&a3->mSMPTETime.mHours;
      *(this + 19) = *&a3->mSMPTETime.mSubframes;
      *(this + 20) = v38;
      *(this + 17) = v36;
      *(this + 18) = v37;
      v17 = (*(*this + 184))(this, a2, a4, v11, a6, v9, v8);
    }

    goto LABEL_50;
  }

  v26 = 0;
  while (1)
  {
    if (a8[v26])
    {
      v27 = v26;
      v28 = sub_1A933BF74(this + 128, v26);
      if ((*(v28 + 92) & 0x20) != 0)
      {
        v29 = *(v28 + 108);
      }

      else
      {
        v29 = 1;
      }

      v30 = a8[v27];
      v26 = v27;
      if (v29 != v30->mNumberBuffers)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A957A490();
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A957A418(this);
        }

        v17 = 4294967246;
        if (*(this + 85))
        {
          goto LABEL_50;
        }

        goto LABEL_77;
      }

      if (v29)
      {
        break;
      }
    }

LABEL_44:
    ++v26;
    v9 = v45;
    v11 = v46;
    if (v26 == v45)
    {
      goto LABEL_45;
    }
  }

  v31 = 0;
  v32 = *(v28 + 104);
  v33 = v32 * a4;
  p_mDataByteSize = &v30->mBuffers[0].mDataByteSize;
  while (!*(p_mDataByteSize + 1))
  {
LABEL_43:
    ++v31;
    p_mDataByteSize += 4;
    if (v29 == v31)
    {
      goto LABEL_44;
    }
  }

  v35 = *p_mDataByteSize;
  if (*p_mDataByteSize >= v33)
  {
    *p_mDataByteSize = v33;
    goto LABEL_43;
  }

  v42 = v32;
  v43 = v26;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67110400;
    v48 = a4;
    v49 = 1024;
    v50 = v42;
    v51 = 1024;
    v52 = v33;
    v53 = 1024;
    v54 = v43;
    v55 = 1024;
    v56 = v31;
    v57 = 1024;
    v58 = v35;
    _os_log_error_impl(&dword_1A9324000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; ioOutputBufferLists[%u]->mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x26u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A957A418(this);
  }

  v17 = 4294967246;
  if (!*(this + 85))
  {
LABEL_64:
    *(this + 85) = -50;
    (*(*this + 432))(this, 22, 0, 0);
  }

LABEL_50:
  v39 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1A9370BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a2)
  {
    v13 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      sub_1A9370C98(&a12, *v13);
    }

    else
    {
      sub_1A9370C98(&a12, 0xFFFFFFFFLL);
    }

    __cxa_end_catch();
    JUMPOUT(0x1A9370888);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A9370C98(_DWORD **a1, uint64_t a2)
{
  v3 = *a1;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A957A590(v3);
    if (!a2)
    {
      return a2;
    }
  }

  else if (!a2)
  {
    return a2;
  }

  if (!v3[85])
  {
    v3[85] = a2;
    (*(*v3 + 432))(v3, 22, 0, 0);
  }

  return a2;
}

uint64_t ausdk::AUBase::SetInputCallback(ausdk::AUBase *this, uint64_t a2, uint64_t a3, int (*a4)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a5)
{
  v10 = sub_1A933BF74(this + 80, a3);
  ausdk::AUInputElement::SetInputCallback(v10, a4, a5);
  (*(*this + 432))(this, a2, 1, a3);
  return 0;
}

uint64_t ausdk::AUBase::SetConnection(const void **this, const AudioUnitConnection *a2)
{
  v4 = sub_1A933BF74((this + 10), a2->destInputNumber);
  sourceAudioUnit = a2->sourceAudioUnit;
  if (!a2->sourceAudioUnit || (ioDataSize = 40, result = AudioUnitGetProperty(sourceAudioUnit, 8u, 2u, a2->sourceOutputNumber, outData, &ioDataSize), !result) && (result = ausdk::AUBase::DispatchSetProperty(this, 8, 1, a2->destInputNumber, outData, 40), !result))
  {
    ausdk::AUInputElement::SetConnection(v4, a2);
    (*(*this + 54))(this, 1, 1, a2->destInputNumber);
    return 0;
  }

  return result;
}

BOOL ausdk::AUBase::ValidFormat(ausdk::AUBase *this, unsigned int a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  result = sub_1A9370F04(a4);
  if (result)
  {
    return (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  return result;
}

BOOL sub_1A9370F04(_DWORD *a1)
{
  if (a1[2] != 1819304813 || a1[5] != 1)
  {
    return 0;
  }

  v2 = a1[4];
  if (v2 != a1[6])
  {
    return 0;
  }

  v3 = a1[3];
  if ((v3 & 1) == 0 || (v3 & 0x20) == 0 && a1[7] != 1)
  {
    return 0;
  }

  v4 = 0;
  if ((v3 & 2) == 0 && a1[8] == 32)
  {
    if ((v3 & 0x20) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = a1[7];
    }

    return v2 == 4 * v6;
  }

  return v4;
}

__n128 ausdk::AUBase::GetStreamFormat@<Q0>(ausdk::AUBase *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    a3 = 0;
LABEL_7:
    v5 = 128;
    goto LABEL_8;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      sub_1A9371090(-10866);
    }

    goto LABEL_7;
  }

  v5 = 80;
LABEL_8:
  v6 = sub_1A9370FE4(this + v5, a3);
  result = *(v6 + 80);
  v8 = *(v6 + 96);
  *a4 = result;
  *(a4 + 16) = v8;
  *(a4 + 32) = *(v6 + 112);
  return result;
}

uint64_t sub_1A9370FE4(uint64_t a1, unsigned int a2)
{
  v2 = sub_1A933BE1C(a1, a2);
  if (!v2 || (result = (*(*v2 + 48))(v2)) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A957A60C();
    }

    exception = __cxa_allocate_exception(0x18uLL);
    sub_1A9333D44(exception, -10877);
    __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
  }

  return result;
}

void sub_1A9371090(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_error_impl(&dword_1A9324000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "throwing %d", v3, 8u);
  }

  exception = __cxa_allocate_exception(0x18uLL);
  sub_1A9333D44(exception, a1);
  __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
}

uint64_t ausdk::AUBase::SetBusCount(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 17))
  {
    return 4294956447;
  }

  v5 = sub_1A936DF30(this, a2);
  ausdk::AUScope::SetNumberOfElements(v5, a3);
  return 0;
}

uint64_t ausdk::AUBase::ChangeStreamFormat(ausdk::AUBase *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *__s2, const AudioStreamBasicDescription *__s1)
{
  if (memcmp(__s1, __s2, 0x28uLL))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 80;
      }

      else
      {
        if (a2 != 2)
        {
          sub_1A9371090(-10866);
        }

        v9 = 128;
      }

      v10 = a3;
    }

    else
    {
      v10 = 0;
      v9 = 128;
    }

    v11 = sub_1A9370FE4(this + v9, v10);
    (*(*v11 + 56))(v11, __s1);
    (*(*this + 432))(this, 8, a2, a3);
  }

  return 0;
}

uint64_t ausdk::AUBase::GetChannelLayoutTags(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  v4 = sub_1A936DF30(this, a2);
  v5 = *(*sub_1A9370FE4(v4, a3) + 80);

  return v5();
}

uint64_t ausdk::AUBase::GetAudioChannelLayout(ausdk::AUBase *this, unsigned int a2, unsigned int a3, AudioChannelLayout *a4, BOOL *a5)
{
  v6 = sub_1A936DF30(this, a2);
  v7 = *(*sub_1A9370FE4(v6, a3) + 96);

  return v7();
}

uint64_t ausdk::AUBase::RemoveAudioChannelLayout(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  v4 = sub_1A936DF30(this, a2);
  v5 = sub_1A9370FE4(v4, a3);
  v7 = 0;
  result = (*(*v5 + 96))(v5, 0, &v7);
  if (result)
  {
    return (*(*v5 + 104))(v5);
  }

  return result;
}

uint64_t ausdk::AUBase::SetAudioChannelLayout(ausdk::AUBase *this, uint64_t a2, uint64_t a3, AudioChannelLayout *a4)
{
  v8 = sub_1A936DF30(this, a2);
  v9 = sub_1A9370FE4(v8, a3);
  v10 = v9[27];
  if (v10 != sub_1A9371564(a4))
  {
    return 4294956445;
  }

  (*(*this + 552))(&v16, this, a2, a3);
  v11 = v16;
  if (v16 == v17)
  {
    v14 = 4294956417;
  }

  else
  {
    v12 = v16;
    while (*v12 && *v12 != a4->mChannelLayoutTag)
    {
      if (++v12 == v17)
      {
        goto LABEL_14;
      }
    }

    if (v12 != v17)
    {
      v14 = (*(*v9 + 88))(v9, a4);
      v11 = v16;
      goto LABEL_15;
    }

LABEL_14:
    v14 = 4294956445;
  }

LABEL_15:
  if (v11)
  {
    v17 = v11;
    operator delete(v11);
  }

  return v14;
}

void sub_1A9371548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A9371564(_DWORD *a1)
{
  if (*a1 == 0x10000)
  {
    v2 = a1[1];
    return sub_1A9373A60(&v2, 0, 0x20uLL);
  }

  else if (*a1)
  {
    return *a1;
  }

  else
  {
    return a1[2];
  }
}

uint64_t ausdk::AUBase::SaveState(ausdk::AUBase *this, CFMutableDictionaryRef *a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  ausdk::ComponentBase::GetComponentDescription(this, &v16);
  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sub_1A9371850(theDict, @"version", 0);
  sub_1A9371850(theDict, @"type", v16);
  sub_1A9371850(theDict, @"subtype", SHIDWORD(v16));
  v14 = v17;
  sub_1A9371850(theDict, @"manufacturer", v17);
  v4 = 0;
  value = CFDataCreateMutable(0, 0);
  do
  {
    v5 = sub_1A936DF30(this, v4);
    ausdk::AUScope::SaveState(v5, value);
    ++v4;
  }

  while (v4 != 3);
  (*(*this + 280))(this, value);
  CFDictionarySetValue(theDict, @"data", value);
  sub_1A93718B4(&value, 0);
  CFDictionarySetValue(theDict, @"name", *(this + 46));
  if (!(*(*this + 88))(this, 26, 0, 0, &v14))
  {
    sub_1A9371850(theDict, @"render-quality", v14);
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_1A936DF30(this, v6);
    if (ausdk::AUScope::HasElementWithName(v7))
    {
      break;
    }

    if (++v6 == 4)
    {
      goto LABEL_12;
    }
  }

  v8 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  do
  {
    v9 = sub_1A936DF30(this, v8);
    ausdk::AUScope::AddElementNamesToDict(v9, Mutable);
    ++v8;
  }

  while (v8 != 4);
  CFDictionarySetValue(theDict, @"element-name", Mutable);
  sub_1A9373C3C(&Mutable);
LABEL_12:
  v10 = theDict;
  theDict = 0;
  *a2 = v10;
  sub_1A9373C84(&value);
  sub_1A9373C3C(&theDict);
  return 0;
}

void sub_1A9371804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  v7 = va_arg(va2, void);
  sub_1A9373C3C(va);
  sub_1A9373C84(va1);
  sub_1A9373C3C(va2);
  _Unwind_Resume(a1);
}

void sub_1A9371850(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

const void **sub_1A93718B4(const void **a1, const void *a2)
{
  if (*a1 != a2)
  {
    sub_1A9373C84(a1);
    *a1 = a2;
    sub_1A9373C60(a1);
  }

  return a1;
}

uint64_t ausdk::AUBase::RestoreState(AudioComponentInstance *this, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294956445;
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  ausdk::ComponentBase::GetComponentDescription(this, &v41);
  if (CFDictionaryContainsKey(cf, @"part"))
  {
    return 4294956445;
  }

  Value = CFDictionaryGetValue(cf, @"version");
  if (!Value)
  {
    return 4294956445;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFNumberGetTypeID())
  {
    return 4294956445;
  }

  valuePtr = 0;
  CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr)
  {
    return 4294956445;
  }

  v9 = CFDictionaryGetValue(cf, @"subtype");
  if (!v9)
  {
    return 4294956445;
  }

  v10 = v9;
  v11 = CFGetTypeID(v9);
  if (v11 != CFNumberGetTypeID())
  {
    return 4294956445;
  }

  CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr != HIDWORD(v41))
  {
    return 4294956445;
  }

  v12 = CFDictionaryGetValue(cf, @"manufacturer");
  if (!v12)
  {
    return 4294956445;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFNumberGetTypeID())
  {
    return 4294956445;
  }

  CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr != v42)
  {
    return 4294956445;
  }

  v15 = CFDictionaryGetValue(cf, @"data");
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v16);
      Length = CFDataGetLength(v16);
      if (Length >= 1)
      {
        v20 = &BytePtr[Length];
        do
        {
          v21 = sub_1A936DF30(this, bswap32(*BytePtr));
          BytePtr = ausdk::AUScope::RestoreState(v21, BytePtr + 4);
        }

        while (BytePtr < v20);
      }
    }
  }

  v22 = CFDictionaryGetValue(cf, @"name");
  v23 = this[46];
  if (v23)
  {
    CFRelease(v23);
  }

  if (!v22 || (v24 = CFGetTypeID(v22), v24 != CFStringGetTypeID()))
  {
    v22 = @"Untitled";
  }

  this[46] = v22;
  *(this + 90) = -1;
  CFRetain(v22);
  (*(*this + 54))(this, 36, 0, 0);
  v25 = CFDictionaryGetValue(cf, @"render-quality");
  if (v25)
  {
    v26 = v25;
    v27 = CFGetTypeID(v25);
    if (v27 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v26, kCFNumberSInt32Type, &valuePtr);
      ausdk::AUBase::DispatchSetProperty(this, 26, 0, 0, &valuePtr, 4);
    }
  }

  result = CFDictionaryGetValue(cf, @"element-name");
  if (result)
  {
    v28 = result;
    v29 = CFGetTypeID(result);
    if (v29 == CFDictionaryGetTypeID())
    {
      v30 = 0;
      do
      {
        v31 = CFStringCreateWithFormat(0, 0, @"%u", v30);
        v32 = CFDictionaryGetValue(v28, v31);
        if (v32)
        {
          v33 = v32;
          v34 = CFGetTypeID(v32);
          if (v34 == CFDictionaryGetTypeID())
          {
            v35 = sub_1A936DF30(this, v30);
            ausdk::AUScope::RestoreElementNames(v35, v33, &v38);
            v36 = v38;
            v37 = v39;
            if (v38 != v39)
            {
              do
              {
                (*(*this + 54))(this, 30, v30, *v36++);
              }

              while (v36 != v37);
              v36 = v38;
            }

            if (v36)
            {
              v39 = v36;
              operator delete(v36);
            }
          }
        }

        CFRelease(v31);
        result = 0;
        v30 = (v30 + 1);
      }

      while (v30 != 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1A9371CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUBase::NewCustomPresetSet(CFTypeRef *this, const AUPreset *a2)
{
  v4 = (this + 45);
  CFRelease(this[46]);
  *v4 = *a2;
  CFRetain(this[46]);
  return 0;
}

uint64_t ausdk::AUBase::SetAFactoryPresetAsCurrent(CFTypeRef *this, const AUPreset *a2)
{
  v2 = a2->presetNumber < 0 || a2->presetName == 0;
  v3 = !v2;
  if (!v2)
  {
    v6 = (this + 45);
    CFRelease(this[46]);
    *v6 = *a2;
    CFRetain(this[46]);
  }

  return v3;
}

BOOL ausdk::AUBase::HasIcon(ausdk::AUBase *this)
{
  v1 = (*(*this + 336))(this);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

uint64_t ausdk::AUBase::GetParameterList(ausdk::AUBase *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  v6 = sub_1A936DF30(this, a2);
  v7 = v6[5];
  if (v7)
  {
    LODWORD(v8) = (*(*v7 + 24))(v7);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v8 = (v6[3] - v6[2]) >> 3;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = sub_1A933BE1C(v6, v11);
    v13 = (*(*v12 + 16))(v12);
    if (v13 > v10)
    {
      v10 = v13;
      v9 = v12;
    }

    ++v11;
  }

  while (v8 != v11);
  if (a3 && v9)
  {
    (*(*v9 + 24))(v9, a3);
  }

LABEL_12:
  *a4 = v10;
  return 0;
}

void *ausdk::AUBase::SetNumberOfElements(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  if (!a2 && a3 != 1)
  {
    sub_1A9371090(-10866);
  }

  v4 = sub_1A936DF30(this, a2);

  return ausdk::AUScope::SetNumberOfElements(v4, a3);
}

void ausdk::AUBase::CreateElement(ausdk::AUBase *this, int a2)
{
  if (a2 > 2)
  {
    if ((a2 - 3) >= 2)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      operator new();
    }

    if (a2 == 2)
    {
      operator new();
    }

LABEL_9:
    sub_1A9371090(-10866);
  }

  operator new();
}

uint64_t ausdk::AUBase::GetLoggingString(ausdk::AUBase *this)
{
  result = this + 440;
  if (*(this + 463) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1A9372118(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1A937216C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_1A937216C(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_1A93721D8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1A9335858();
}

void *sub_1A9372220(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1A933C7E8(result, a2);
  }

  return result;
}

void sub_1A937227C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef sub_1A9372298(CFTypeRef *a1)
{
  result = *a1;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void *sub_1A93722BC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1A9372334(result, a2);
  }

  return result;
}

void sub_1A9372318(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9372334(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1A93721D8(a1, a2);
  }

  sub_1A9335A94();
}

void sub_1A9372370(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1A9335858();
}

__n128 sub_1A93723C8(__int128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = &a2[-4];
  v11 = &a2[-6];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 5;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        if ((*a3)(a2 - 2, v12))
        {
          goto LABEL_77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v69 = (*a3)(v12 + 2, v12);
      v70 = (*a3)(v12 + 4, v12 + 2);
      if (v69)
      {
        if (v70)
        {
          v114 = *v12;
          v141 = v12[1];
          v71 = v12[5];
          *v12 = v12[4];
          v12[1] = v71;
          v12[4] = v114;
          v12[5] = v141;
        }

        else
        {
          v116 = *v12;
          v143 = v12[1];
          v79 = v12[3];
          *v12 = v12[2];
          v12[1] = v79;
          v12[2] = v116;
          v12[3] = v143;
          if ((*a3)(v12 + 4, v12 + 2))
          {
            v81 = v12[2];
            v80 = v12[3];
            v82 = v12[5];
            v12[2] = v12[4];
            v12[3] = v82;
            v12[4] = v81;
            v12[5] = v80;
          }
        }
      }

      else if (v70)
      {
        v76 = v12[2];
        v75 = v12[3];
        v77 = v12[5];
        v12[2] = v12[4];
        v12[3] = v77;
        v12[4] = v76;
        v12[5] = v75;
        if ((*a3)(v12 + 2, v12))
        {
          v115 = *v12;
          v142 = v12[1];
          v78 = v12[3];
          *v12 = v12[2];
          v12[1] = v78;
          v12[2] = v115;
          v12[3] = v142;
        }
      }

      if (!(*a3)(v9, v12 + 4))
      {
        return result;
      }

      v84 = v12[4];
      v83 = v12[5];
      v85 = v9[1];
      v12[4] = *v9;
      v12[5] = v85;
      *v9 = v84;
      v9[1] = v83;
      if (!(*a3)(v12 + 4, v12 + 2))
      {
        return result;
      }

      v87 = v12[2];
      v86 = v12[3];
      v88 = v12[5];
      v12[2] = v12[4];
      v12[3] = v88;
      v12[4] = v87;
      v12[5] = v86;
LABEL_102:
      if ((*a3)(v12 + 2, v12))
      {
        v117 = *v12;
        v144 = v12[1];
        v89 = v12[3];
        *v12 = v12[2];
        v12[1] = v89;
        result = v117;
        v12[2] = v117;
        v12[3] = v144;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_1A9372CB4(v12, v12 + 2, v12 + 4, v12 + 6, a2 - 2, a3).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_1A9372EB0(v12, a2, a3);
      }

      else
      {

        sub_1A9372F84(v12, a2, a3);
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        sub_1A9373678(v12, a2, a2, a3, result);
      }

      return result;
    }

    v16 = &v12[2 * (v15 >> 1)];
    v17 = *a3;
    if (v15 >= 0x81)
    {
      v18 = v17(&v12[2 * (v15 >> 1)], v12);
      v19 = (*a3)(a2 - 2, v16);
      if (v18)
      {
        if (v19)
        {
          v91 = *a1;
          v118 = a1[1];
          v20 = a2[-1];
          *a1 = *v9;
          a1[1] = v20;
          goto LABEL_27;
        }

        v97 = *a1;
        v124 = a1[1];
        v28 = v16[1];
        *a1 = *v16;
        a1[1] = v28;
        *v16 = v97;
        v16[1] = v124;
        if ((*a3)(a2 - 2, v16))
        {
          v91 = *v16;
          v118 = v16[1];
          v29 = a2[-1];
          *v16 = *v9;
          v16[1] = v29;
LABEL_27:
          *v9 = v91;
          a2[-1] = v118;
        }
      }

      else if (v19)
      {
        v93 = *v16;
        v120 = v16[1];
        v24 = a2[-1];
        *v16 = *v9;
        v16[1] = v24;
        *v9 = v93;
        a2[-1] = v120;
        if ((*a3)(v16, a1))
        {
          v94 = *a1;
          v121 = a1[1];
          v25 = v16[1];
          *a1 = *v16;
          a1[1] = v25;
          *v16 = v94;
          v16[1] = v121;
        }
      }

      v30 = v16 - 2;
      v31 = (*a3)(v16 - 2, a1 + 2);
      v32 = (*a3)(a2 - 4, v16 - 2);
      if (v31)
      {
        if (v32)
        {
          v34 = a1[2];
          v33 = a1[3];
          v35 = a2[-3];
          a1[2] = *v10;
          a1[3] = v35;
          *v10 = v34;
          goto LABEL_39;
        }

        v101 = a1[2];
        v128 = a1[3];
        v40 = *(v16 - 1);
        a1[2] = *v30;
        a1[3] = v40;
        *v30 = v101;
        *(v16 - 1) = v128;
        if ((*a3)(a2 - 4, v16 - 2))
        {
          v102 = *v30;
          v129 = *(v16 - 1);
          v41 = a2[-3];
          *v30 = *v10;
          *(v16 - 1) = v41;
          *v10 = v102;
          v33 = v129;
LABEL_39:
          a2[-3] = v33;
        }
      }

      else if (v32)
      {
        v98 = *v30;
        v125 = *(v16 - 1);
        v36 = a2[-3];
        *v30 = *v10;
        *(v16 - 1) = v36;
        *v10 = v98;
        a2[-3] = v125;
        if ((*a3)(v16 - 2, a1 + 2))
        {
          v99 = a1[2];
          v126 = a1[3];
          v37 = *(v16 - 1);
          a1[2] = *v30;
          a1[3] = v37;
          *v30 = v99;
          *(v16 - 1) = v126;
        }
      }

      v42 = (*a3)(v16 + 2, a1 + 4);
      v43 = (*a3)(a2 - 6, v16 + 2);
      if (v42)
      {
        if (v43)
        {
          v45 = a1[4];
          v44 = a1[5];
          v46 = a2[-5];
          a1[4] = *v11;
          a1[5] = v46;
          *v11 = v45;
          goto LABEL_48;
        }

        v105 = a1[4];
        v132 = a1[5];
        v49 = v16[3];
        a1[4] = v16[2];
        a1[5] = v49;
        v16[2] = v105;
        v16[3] = v132;
        if ((*a3)(a2 - 6, v16 + 2))
        {
          v106 = v16[2];
          v133 = v16[3];
          v50 = a2[-5];
          v16[2] = *v11;
          v16[3] = v50;
          *v11 = v106;
          v44 = v133;
LABEL_48:
          a2[-5] = v44;
        }
      }

      else if (v43)
      {
        v103 = v16[2];
        v130 = v16[3];
        v47 = a2[-5];
        v16[2] = *v11;
        v16[3] = v47;
        *v11 = v103;
        a2[-5] = v130;
        if ((*a3)(v16 + 2, a1 + 4))
        {
          v104 = a1[4];
          v131 = a1[5];
          v48 = v16[3];
          a1[4] = v16[2];
          a1[5] = v48;
          v16[2] = v104;
          v16[3] = v131;
        }
      }

      v51 = (*a3)(v16, v16 - 2);
      v52 = (*a3)(v16 + 2, v16);
      if (v51)
      {
        if (v52)
        {
          v107 = *v30;
          v134 = *(v16 - 1);
          v53 = v16[3];
          *v30 = v16[2];
          *(v16 - 1) = v53;
          goto LABEL_57;
        }

        v110 = *v30;
        v137 = *(v16 - 1);
        v56 = v16[1];
        *v30 = *v16;
        *(v16 - 1) = v56;
        *v16 = v110;
        v16[1] = v137;
        if ((*a3)(v16 + 2, v16))
        {
          v107 = *v16;
          v134 = v16[1];
          v57 = v16[3];
          *v16 = v16[2];
          v16[1] = v57;
LABEL_57:
          v16[2] = v107;
          v16[3] = v134;
        }
      }

      else if (v52)
      {
        v108 = *v16;
        v135 = v16[1];
        v54 = v16[3];
        *v16 = v16[2];
        v16[1] = v54;
        v16[2] = v108;
        v16[3] = v135;
        if ((*a3)(v16, v16 - 2))
        {
          v109 = *v30;
          v136 = *(v16 - 1);
          v55 = v16[1];
          *v30 = *v16;
          *(v16 - 1) = v55;
          *v16 = v109;
          v16[1] = v136;
        }
      }

      v111 = *a1;
      v138 = a1[1];
      v58 = v16[1];
      *a1 = *v16;
      a1[1] = v58;
      *v16 = v111;
      v16[1] = v138;
      goto LABEL_59;
    }

    v21 = v17(v12, &v12[2 * (v15 >> 1)]);
    v22 = (*a3)(a2 - 2, a1);
    if (v21)
    {
      if (v22)
      {
        v92 = *v16;
        v119 = v16[1];
        v23 = a2[-1];
        *v16 = *v9;
        v16[1] = v23;
LABEL_36:
        *v9 = v92;
        a2[-1] = v119;
        goto LABEL_59;
      }

      v100 = *v16;
      v127 = v16[1];
      v38 = a1[1];
      *v16 = *a1;
      v16[1] = v38;
      *a1 = v100;
      a1[1] = v127;
      if ((*a3)(a2 - 2, a1))
      {
        v92 = *a1;
        v119 = a1[1];
        v39 = a2[-1];
        *a1 = *v9;
        a1[1] = v39;
        goto LABEL_36;
      }
    }

    else if (v22)
    {
      v95 = *a1;
      v122 = a1[1];
      v26 = a2[-1];
      *a1 = *v9;
      a1[1] = v26;
      *v9 = v95;
      a2[-1] = v122;
      if ((*a3)(a1, v16))
      {
        v96 = *v16;
        v123 = v16[1];
        v27 = a1[1];
        *v16 = *a1;
        v16[1] = v27;
        *a1 = v96;
        a1[1] = v123;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 2, a1) & 1) == 0)
    {
      v12 = sub_1A937303C(a1, a2, a3);
      goto LABEL_66;
    }

    v59 = sub_1A937316C(a1, a2, a3);
    if ((v60 & 1) == 0)
    {
      goto LABEL_64;
    }

    v61 = sub_1A93732A0(a1, v59, a3);
    v12 = &v59[2];
    if (sub_1A93732A0(v59 + 2, a2, a3))
    {
      a4 = -v14;
      a2 = v59;
      if (v61)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v61)
    {
LABEL_64:
      sub_1A93723C8(a1, v59, a3, -v14, a5 & 1);
      v12 = &v59[2];
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v62 = (*a3)(v12 + 2, v12);
  v63 = (*a3)(v9, v12 + 2);
  if ((v62 & 1) == 0)
  {
    if (!v63)
    {
      return result;
    }

    v73 = v12[2];
    v72 = v12[3];
    v74 = v9[1];
    v12[2] = *v9;
    v12[3] = v74;
    *v9 = v73;
    v9[1] = v72;
    goto LABEL_102;
  }

  if (v63)
  {
LABEL_77:
    v113 = *v12;
    v140 = v12[1];
    v68 = v9[1];
    *v12 = *v9;
    v12[1] = v68;
    *v9 = v113;
    result = v140;
    v9[1] = v140;
    return result;
  }

  v112 = *v12;
  v139 = v12[1];
  v64 = v12[3];
  *v12 = v12[2];
  v12[1] = v64;
  v12[2] = v112;
  v12[3] = v139;
  if ((*a3)(v9, v12 + 2))
  {
    v65 = v12[2];
    result = v12[3];
    v66 = v9[1];
    v12[2] = *v9;
    v12[3] = v66;
    *v9 = v65;
    v9[1] = result;
  }

  return result;
}

__n128 sub_1A9372CB4(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = *a1;
      v14 = a1[1];
      v16 = a3[1];
      *a1 = *a3;
      a1[1] = v16;
LABEL_9:
      *a3 = v15;
      a3[1] = v14;
      goto LABEL_10;
    }

    v24 = *a1;
    v23 = a1[1];
    v25 = a2[1];
    *a1 = *a2;
    a1[1] = v25;
    *a2 = v24;
    a2[1] = v23;
    if ((*a6)(a3, a2))
    {
      v15 = *a2;
      v14 = a2[1];
      v26 = a3[1];
      *a2 = *a3;
      a2[1] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v18 = *a2;
    v17 = a2[1];
    v19 = a3[1];
    *a2 = *a3;
    a2[1] = v19;
    *a3 = v18;
    a3[1] = v17;
    if ((*a6)(a2, a1))
    {
      v21 = *a1;
      v20 = a1[1];
      v22 = a2[1];
      *a1 = *a2;
      a1[1] = v22;
      *a2 = v21;
      a2[1] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v28 = *a3;
    v27 = a3[1];
    v29 = a4[1];
    *a3 = *a4;
    a3[1] = v29;
    *a4 = v28;
    a4[1] = v27;
    if ((*a6)(a3, a2))
    {
      v31 = *a2;
      v30 = a2[1];
      v32 = a3[1];
      *a2 = *a3;
      a2[1] = v32;
      *a3 = v31;
      a3[1] = v30;
      if ((*a6)(a2, a1))
      {
        v34 = *a1;
        v33 = a1[1];
        v35 = a2[1];
        *a1 = *a2;
        a1[1] = v35;
        *a2 = v34;
        a2[1] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v38 = *a4;
    v37 = a4[1];
    v39 = a5[1];
    *a4 = *a5;
    a4[1] = v39;
    *a5 = v38;
    a5[1] = v37;
    if ((*a6)(a4, a3))
    {
      v41 = *a3;
      v40 = a3[1];
      v42 = a4[1];
      *a3 = *a4;
      a3[1] = v42;
      *a4 = v41;
      a4[1] = v40;
      if ((*a6)(a3, a2))
      {
        v44 = *a2;
        v43 = a2[1];
        v45 = a3[1];
        *a2 = *a3;
        a2[1] = v45;
        *a3 = v44;
        a3[1] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = *a1;
          result = a1[1];
          v47 = a2[1];
          *a1 = *a2;
          a1[1] = v47;
          *a2 = v46;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A9372EB0(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v20 = v3;
    v21 = v4;
    v6 = result;
    v7 = (result + 32);
    if ((result + 32) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v12 = v10[1];
          v18 = *v10;
          v19 = v12;
          v13 = v9;
          while (1)
          {
            v14 = v6 + v13;
            v15 = *(v6 + v13 + 16);
            *(v14 + 2) = *(v6 + v13);
            *(v14 + 3) = v15;
            if (!v13)
            {
              break;
            }

            v13 -= 32;
            result = (*a3)(&v18, v6 + v13);
            if ((result & 1) == 0)
            {
              v16 = (v6 + v13 + 32);
              goto LABEL_10;
            }
          }

          v16 = v6;
LABEL_10:
          v17 = v19;
          *v16 = v18;
          v16[1] = v17;
        }

        v7 = v10 + 2;
        v9 += 32;
      }

      while (v10 + 2 != a2);
    }
  }

  return result;
}

uint64_t sub_1A9372F84(uint64_t result, _OWORD *a2, uint64_t (**a3)(__int128 *, _OWORD *))
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = (result + 32);
    if ((result + 32) != a2)
    {
      v9 = (result - 32);
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v11 = v6[1];
          v15 = *v6;
          v16 = v11;
          v12 = v9;
          do
          {
            v13 = v12[3];
            v12[4] = v12[2];
            v12[5] = v13;
            result = (*a3)(&v15, v12);
            v12 -= 2;
          }

          while ((result & 1) != 0);
          v14 = v16;
          v12[4] = v15;
          v12[5] = v14;
        }

        v7 = v6 + 2;
        v9 += 2;
      }

      while (v6 + 2 != a2);
    }
  }

  return result;
}

__int128 *sub_1A937303C(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  if ((*a3)(&v17, a2 - 2))
  {
    v7 = a1;
    do
    {
      v7 += 2;
    }

    while (((*a3)(&v17, v7) & 1) == 0);
  }

  else
  {
    v8 = a1 + 2;
    do
    {
      v7 = v8;
      if (v8 >= v4)
      {
        break;
      }

      v9 = (*a3)(&v17, v8);
      v8 = v7 + 2;
    }

    while (!v9);
  }

  if (v7 < v4)
  {
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  while (v7 < v4)
  {
    v10 = v7[1];
    v19 = *v7;
    v20 = v10;
    v11 = v4[1];
    *v7 = *v4;
    v7[1] = v11;
    v12 = v20;
    *v4 = v19;
    v4[1] = v12;
    do
    {
      v7 += 2;
    }

    while (!(*a3)(&v17, v7));
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  v13 = v7 - 2;
  if (v7 - 2 != a1)
  {
    v14 = *(v7 - 1);
    *a1 = *v13;
    a1[1] = v14;
  }

  v15 = v18;
  *v13 = v17;
  *(v7 - 1) = v15;
  return v7;
}

__int128 *sub_1A937316C(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v18 = *a1;
  v19 = v7;
  do
  {
    v6 += 2;
  }

  while (((*a3)(&a1[v6], &v18) & 1) != 0);
  v8 = &a1[v6];
  v9 = &a1[v6 - 2];
  if (v6 == 2)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 2;
    }

    while (((*a3)(a2, &v18) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 2;
    }

    while (!(*a3)(a2, &v18));
  }

  if (v8 < a2)
  {
    v10 = &a1[v6];
    v11 = a2;
    do
    {
      v13 = v10[1];
      v20 = *v10;
      v12 = v20;
      v21 = v13;
      v14 = v11[1];
      *v10 = *v11;
      v10[1] = v14;
      *v11 = v12;
      v11[1] = v13;
      do
      {
        v10 += 2;
      }

      while (((*a3)(v10, &v18) & 1) != 0);
      do
      {
        v11 -= 2;
      }

      while (!(*a3)(v11, &v18));
    }

    while (v10 < v11);
    v9 = v10 - 2;
  }

  if (v9 != a1)
  {
    v15 = v9[1];
    *a1 = *v9;
    a1[1] = v15;
  }

  v16 = v19;
  *v9 = v18;
  v9[1] = v16;
  return v9;
}

BOOL sub_1A93732A0(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = a2 - 2;
      v12 = (*a3)(a1 + 2, a1);
      v13 = (*a3)(v11, a1 + 2);
      if (v12)
      {
        if (v13)
        {
          v15 = *a1;
          v14 = a1[1];
          v16 = v11[1];
          *a1 = *v11;
          a1[1] = v16;
        }

        else
        {
          v45 = *a1;
          v44 = a1[1];
          v46 = a1[3];
          *a1 = a1[2];
          a1[1] = v46;
          a1[2] = v45;
          a1[3] = v44;
          if (!(*a3)(v11, a1 + 2))
          {
            return 1;
          }

          v15 = a1[2];
          v14 = a1[3];
          v47 = v11[1];
          a1[2] = *v11;
          a1[3] = v47;
        }

        *v11 = v15;
        v11[1] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v30 = a1[2];
      v29 = a1[3];
      v31 = v11[1];
      a1[2] = *v11;
      a1[3] = v31;
      *v11 = v30;
      v11[1] = v29;
LABEL_50:
      if ((*a3)(a1 + 2, a1))
      {
        v72 = *a1;
        v71 = a1[1];
        v73 = a1[3];
        *a1 = a1[2];
        a1[1] = v73;
        a1[2] = v72;
        a1[3] = v71;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_1A9372CB4(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
    }

    v23 = a2 - 2;
    v24 = (*a3)(a1 + 2, a1);
    v25 = (*a3)(a1 + 4, a1 + 2);
    if ((v24 & 1) == 0)
    {
      if (v25)
      {
        v39 = a1[2];
        v38 = a1[3];
        v40 = a1[5];
        a1[2] = a1[4];
        a1[3] = v40;
        a1[4] = v39;
        a1[5] = v38;
        if ((*a3)(a1 + 2, a1))
        {
          v42 = *a1;
          v41 = a1[1];
          v43 = a1[3];
          *a1 = a1[2];
          a1[1] = v43;
          a1[2] = v42;
          a1[3] = v41;
        }
      }

      goto LABEL_47;
    }

    if (v25)
    {
      v27 = *a1;
      v26 = a1[1];
      v28 = a1[5];
      *a1 = a1[4];
      a1[1] = v28;
    }

    else
    {
      v62 = *a1;
      v61 = a1[1];
      v63 = a1[3];
      *a1 = a1[2];
      a1[1] = v63;
      a1[2] = v62;
      a1[3] = v61;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_47;
      }

      v27 = a1[2];
      v26 = a1[3];
      v64 = a1[5];
      a1[2] = a1[4];
      a1[3] = v64;
    }

    a1[4] = v27;
    a1[5] = v26;
LABEL_47:
    if (!(*a3)(v23, a1 + 4))
    {
      return 1;
    }

    v66 = a1[4];
    v65 = a1[5];
    v67 = v23[1];
    a1[4] = *v23;
    a1[5] = v67;
    *v23 = v66;
    v23[1] = v65;
    if (!(*a3)(a1 + 4, a1 + 2))
    {
      return 1;
    }

    v69 = a1[2];
    v68 = a1[3];
    v70 = a1[5];
    a1[2] = a1[4];
    a1[3] = v70;
    a1[4] = v69;
    a1[5] = v68;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 2;
    if ((*a3)(a2 - 2, a1))
    {
      v9 = *a1;
      v8 = a1[1];
      v10 = a2[-1];
      *a1 = *v7;
      a1[1] = v10;
      *v7 = v9;
      a2[-1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = a1 + 4;
  v18 = (*a3)(a1 + 2, a1);
  v19 = (*a3)(a1 + 4, a1 + 2);
  if (v18)
  {
    if (v19)
    {
      v21 = *a1;
      v20 = a1[1];
      v22 = a1[5];
      *a1 = *v17;
      a1[1] = v22;
    }

    else
    {
      v49 = *a1;
      v48 = a1[1];
      v50 = a1[3];
      *a1 = a1[2];
      a1[1] = v50;
      a1[2] = v49;
      a1[3] = v48;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_33;
      }

      v21 = a1[2];
      v20 = a1[3];
      v51 = a1[5];
      a1[2] = *v17;
      a1[3] = v51;
    }

    *v17 = v21;
    a1[5] = v20;
  }

  else if (v19)
  {
    v33 = a1[2];
    v32 = a1[3];
    v34 = a1[5];
    a1[2] = *v17;
    a1[3] = v34;
    *v17 = v33;
    a1[5] = v32;
    if ((*a3)(a1 + 2, a1))
    {
      v36 = *a1;
      v35 = a1[1];
      v37 = a1[3];
      *a1 = a1[2];
      a1[1] = v37;
      a1[2] = v36;
      a1[3] = v35;
    }
  }

LABEL_33:
  v52 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    if ((*a3)(v52, v17))
    {
      v55 = v52[1];
      v75 = *v52;
      v76 = v55;
      v56 = v53;
      while (1)
      {
        v57 = a1 + v56;
        v58 = *(&a1[5] + v56);
        *(v57 + 96) = *(a1 + v56 + 64);
        *(v57 + 112) = v58;
        if (v56 == -64)
        {
          break;
        }

        v56 -= 32;
        if (((*a3)(&v75, (v57 + 32)) & 1) == 0)
        {
          v59 = (a1 + v56 + 96);
          goto LABEL_41;
        }
      }

      v59 = a1;
LABEL_41:
      v60 = v76;
      *v59 = v75;
      v59[1] = v60;
      if (++v54 == 8)
      {
        return &v52[2] == a2;
      }
    }

    v17 = v52;
    v53 += 32;
    v52 += 2;
    if (v52 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_1A9373678(__int128 *a1, __int128 *a2, __int128 *a3, unsigned int (**a4)(__int128 *, __int128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = (a2 - a1) >> 5;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[2 * v10];
      do
      {
        a5.n128_f64[0] = sub_1A937383C(a1, a4, v9, v12);
        v12 -= 2;
        --v11;
      }

      while (v11);
    }

    v13 = v7;
    if (v7 != a3)
    {
      v13 = v7;
      do
      {
        if ((*a4)(v13, a1, a5))
        {
          v15 = *v13;
          v14 = v13[1];
          v16 = a1[1];
          *v13 = *a1;
          v13[1] = v16;
          *a1 = v15;
          a1[1] = v14;
          a5.n128_f64[0] = sub_1A937383C(a1, a4, v9, a1);
        }

        v13 += 2;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      do
      {
        v28 = v7;
        v17 = 0;
        v29 = *a1;
        v30 = a1[1];
        v18 = a1;
        do
        {
          v19 = &v18[2 * v17];
          v20 = v19 + 2;
          v21 = (2 * v17) | 1;
          v22 = 2 * v17 + 2;
          if (v22 < v9)
          {
            v23 = v19 + 4;
            if ((*a4)(v19 + 2, v19 + 4))
            {
              v20 = v23;
              v21 = v22;
            }
          }

          v24 = v20[1];
          *v18 = *v20;
          v18[1] = v24;
          v18 = v20;
          v17 = v21;
        }

        while (v21 <= ((v9 - 2) >> 1));
        v7 = v28 - 2;
        if (v20 == v28 - 2)
        {
          *v20 = v29;
          v20[1] = v30;
        }

        else
        {
          v25 = *(v28 - 1);
          *v20 = *v7;
          v20[1] = v25;
          *v7 = v29;
          *(v28 - 1) = v30;
          sub_1A9373974(a1, (v20 + 2), a4, ((v20 + 2) - a1) >> 5);
        }
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

double sub_1A937383C(uint64_t a1, unsigned int (**a2)(__int128 *, __int128 *), uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v25 = v4;
    v26 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 5)
    {
      v12 = (a4 - a1) >> 4;
      v13 = v12 + 1;
      v14 = (a1 + 32 * (v12 + 1));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 2))
      {
        v14 += 2;
        v13 = v15;
      }

      if (((*a2)(v14, v7) & 1) == 0)
      {
        v17 = v7[1];
        v23 = *v7;
        v24 = v17;
        do
        {
          v18 = v14;
          v19 = v14[1];
          *v7 = *v14;
          v7[1] = v19;
          if (v9 < v13)
          {
            break;
          }

          v20 = (2 * v13) | 1;
          v14 = (a1 + 32 * v20);
          v21 = 2 * v13 + 2;
          if (v21 < a3)
          {
            if ((*a2)((a1 + 32 * v20), v14 + 2))
            {
              v14 += 2;
              v20 = v21;
            }
          }

          v7 = v18;
          v13 = v20;
        }

        while (!(*a2)(v14, &v23));
        result = *&v23;
        v22 = v24;
        *v18 = v23;
        v18[1] = v22;
      }
    }
  }

  return result;
}

double sub_1A9373974(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v19 = v4;
    v20 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 32 * (v6 >> 1));
    v11 = (a2 - 32);
    if ((*a3)(v10, (a2 - 32)))
    {
      v13 = v11[1];
      v17 = *v11;
      v18 = v13;
      do
      {
        v14 = v10;
        v15 = v10[1];
        *v11 = *v10;
        v11[1] = v15;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 32 * v9);
        v11 = v14;
      }

      while (((*a3)(v10, &v17) & 1) != 0);
      result = *&v17;
      v16 = v18;
      *v14 = v17;
      v14[1] = v16;
    }
  }

  return result;
}

uint64_t sub_1A9373A20(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 168) != 1)
  {
    sub_1A9371090(-10851);
  }

  v4 = (a1 + 144);

  return ausdk::AUBufferList::PrepareBuffer(v4, (a1 + 80), a2);
}

uint64_t sub_1A9373A60(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

unint64_t *sub_1A9373B04(unint64_t *a1)
{
  for (i = atomic_load(a1); i; i = atomic_load(a1))
  {
    atomic_store(*i, a1);
    MEMORY[0x1AC586D00]();
  }

  for (j = atomic_load(a1 + 1); j; j = atomic_load(a1 + 1))
  {
    atomic_store(*j, a1 + 1);
    MEMORY[0x1AC586D00]();
  }

  for (k = atomic_load(a1 + 2); k; k = atomic_load(a1 + 2))
  {
    atomic_store(*k, a1 + 2);
    MEMORY[0x1AC586D00]();
  }

  return a1;
}

unint64_t *sub_1A9373BB0(uint64_t a1)
{
  do
  {
    v1 = atomic_load((a1 + 16));
    if (!v1)
    {
      operator new();
    }

    v2 = v1;
    atomic_compare_exchange_strong((a1 + 16), &v2, 0);
  }

  while (v2 != v1);
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
    do
    {
      v6 = atomic_load((a1 + 16));
      *v5 = v6;
      v7 = v6;
      atomic_compare_exchange_strong((a1 + 16), &v7, v3);
    }

    while (v7 != v6);
  }

  return v1;
}

void sub_1A9373C3C(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

CFTypeRef sub_1A9373C60(CFTypeRef *a1)
{
  result = *a1;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_1A9373C84(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_1A9373CD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 463);
  return result;
}

void sub_1A9373D00(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id TTSCurrentSiriVoice(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48[2] = *MEMORY[0x1E69E9840];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v5 = qword_1EB391140;
  v46 = qword_1EB391140;
  if (!qword_1EB391140)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_1A9374E38;
    v42[3] = &unk_1E787FF60;
    v42[4] = &v43;
    sub_1A9374E38(v42, a2, a3, a4, a5);
    v5 = v44[3];
  }

  v6 = v5;
  _Block_object_dispose(&v43, 8);
  v11 = objc_msgSend_sharedPreferences(v5, v7, v8, v9, v10);
  v16 = objc_msgSend_outputVoice(v11, v12, v13, v14, v15);

  v25 = objc_msgSend_name(v16, v17, v18, v19, v20);
  if (!v25 || (objc_msgSend_languageCode(v16, v21, v22, v23, v24), v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v25, v27))
  {
    v39 = 0;
  }

  else
  {
    v47[0] = @"name";
    v32 = objc_msgSend_name(v16, v28, v29, v30, v31);
    v48[0] = v32;
    v47[1] = @"languageCode";
    v37 = objc_msgSend_languageCode(v16, v33, v34, v35, v36);
    v48[1] = v37;
    v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v38, v48, v47, 2);
  }

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

void sub_1A9373EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _TTSSelectedIdentifiersForSpeechSource(void *a1, int a2)
{
  v7 = a1;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2050000000;
  v8 = qword_1ED970340;
  v52 = qword_1ED970340;
  if (!qword_1ED970340)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = sub_1A9374FD8;
    v47 = &unk_1E787FF60;
    v48 = &v49;
    sub_1A9374FD8(&v44, v3, v4, v5, v6);
    v8 = v50[3];
  }

  v9 = v8;
  _Block_object_dispose(&v49, 8);
  v14 = objc_msgSend_sharedInstance(v8, v10, v11, v12, v13);
  v19 = v14;
  if (!a2)
  {
    goto LABEL_14;
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v20 = qword_1EB391150;
  v52 = qword_1EB391150;
  if (!qword_1EB391150)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = sub_1A937519C;
    v47 = &unk_1E787FF60;
    v48 = &v49;
    v21 = sub_1A9375030(v14, v15, v16, v17, v18);
    v22 = dlsym(v21, "AXSpeechSourceKeyVoiceOver");
    *(v48[1] + 24) = v22;
    qword_1EB391150 = *(v48[1] + 24);
    v20 = v50[3];
  }

  _Block_object_dispose(&v49, 8);
  if (!v20)
  {
    sub_1A957A704(v23, v24, v25, v26, v27);
  }

  isEqual = objc_msgSend_isEqual_(v7, v24, *v20, v26, v27);
  if (isEqual)
  {
    isEqual = objc_msgSend_voiceOverEnabled(v19, v29, v30, v31, v32);
    if (!isEqual)
    {
      goto LABEL_15;
    }
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v33 = qword_1EB391158;
  v52 = qword_1EB391158;
  if (!qword_1EB391158)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = sub_1A93751EC;
    v47 = &unk_1E787FF60;
    v48 = &v49;
    v34 = sub_1A9375030(isEqual, v29, v30, v31, v32);
    v35 = dlsym(v34, "AXSpeechSourceKeySwitchControl");
    *(v48[1] + 24) = v35;
    qword_1EB391158 = *(v48[1] + 24);
    v33 = v50[3];
  }

  _Block_object_dispose(&v49, 8);
  if (!v33)
  {
    sub_1A957A68C(v36, v37, v38, v39, v40);
  }

  if (objc_msgSend_isEqual_(v7, v37, *v33, v39, v40) && !objc_msgSend_switchControlEnabled(v19, v15, v41, v17, v18))
  {
LABEL_15:
    v42 = MEMORY[0x1E695E0F0];
  }

  else
  {
LABEL_14:
    v42 = objc_msgSend_selectedSpeechVoiceIdentifiersForSourceKey_(v19, v15, v7, v17, v18);
  }

  return v42;
}

void sub_1A93741CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id TTSRosebudLogger()
{
  if (qword_1EB3910F0 != -1)
  {
    sub_1A957A77C();
  }

  v1 = qword_1EB3910E8;

  return v1;
}

uint64_t sub_1A9374240()
{
  qword_1EB3910E8 = os_log_create("com.apple.Accessibility", "TTSRosebud");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t TTSIsInternalBuild()
{
  if (qword_1ED970ED0 != -1)
  {
    sub_1A957A790();
  }

  return byte_1ED970ED8;
}

uint64_t sub_1A93742BC()
{
  result = MGGetBoolAnswer();
  byte_1ED970ED8 = result;
  return result;
}

__CFString *TTSStringForSpeechFootprint(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7880E70[a1 - 1];
  }
}

__CFString *TTSStringForResourceType(unint64_t a1)
{
  if (a1 > 0xA)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1E7880E98[a1];
  }

  return v2;
}

uint64_t AXAVVoiceQualityFromTTSSpeechVoice(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_synthesisProviderVoice(v1, v2, v3, v4, v5);
  if (!v6)
  {
    goto LABEL_5;
  }

  v11 = v6;
  v12 = objc_msgSend_synthesisProviderVoice(v1, v7, v8, v9, v10);
  if (!v12)
  {
LABEL_8:

    goto LABEL_9;
  }

  v17 = v12;
  v18 = objc_msgSend_synthesisProviderVoice(v1, v13, v14, v15, v16);
  if ((objc_msgSend_isFirstParty(v18, v19, v20, v21, v22) & 1) == 0)
  {

    goto LABEL_8;
  }

  canBeDownloaded = objc_msgSend_canBeDownloaded(v1, v23, v24, v25, v26);

  if (!canBeDownloaded)
  {
LABEL_9:
    v29 = 1;
    goto LABEL_10;
  }

LABEL_5:
  v28 = objc_msgSend_footprint(v1, v7, v8, v9, v10);
  if ((v28 - 1) > 4)
  {
    goto LABEL_9;
  }

  v29 = qword_1A9586AB8[v28 - 1];
LABEL_10:

  return v29;
}

__CFString *TTSStringForSpeechGender(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7880EF0[a1];
  }
}

void *TTSChoseong_JongseongToHangul(void *a1)
{
  v1 = qword_1EB391100;
  v5 = a1;
  if (v1 != -1)
  {
    sub_1A957A7A4();
  }

  v6 = objc_msgSend_objectForKey_(qword_1EB3910F8, v2, v5, v3, v4);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

void sub_1A93744BC()
{
  v0 = qword_1EB3910F8;
  qword_1EB3910F8 = &unk_1F1D10758;
}

id AXSpeechReplaceJapaneseElongationCharactersIfNeeded(void *a1)
{
  v5 = a1;
  if (qword_1EB391110 != -1)
  {
    sub_1A957A7B8();
  }

  v6 = MEMORY[0x1E696AD60];
  v7 = objc_msgSend_length(v5, v1, v2, v3, v4);
  v11 = objc_msgSend_stringWithCapacity_(v6, v8, v7, v9, v10);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_1A9374668;
  v25[4] = sub_1A9374678;
  v26 = 0;
  v16 = objc_msgSend_length(v5, v12, v13, v14, v15);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1A9374680;
  v22[3] = &unk_1E7880E20;
  v24 = v25;
  v17 = v11;
  v23 = v17;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v5, v18, 0, v16, 2, v22);
  v19 = v23;
  v20 = v17;

  _Block_object_dispose(v25, 8);

  return v20;
}

void sub_1A9374638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9374650()
{
  v0 = qword_1EB391108;
  qword_1EB391108 = &unk_1F1D10780;
}

uint64_t sub_1A9374668(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A9374680(uint64_t a1, void *a2)
{
  v20 = a2;
  if (objc_msgSend_isEqualToString_(v20, v3, @"ー", v4, v5))
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (v9)
    {
      v10 = objc_msgSend_objectForKey_(qword_1EB391108, v6, v9, v7, v8);
      v11 = v10;
      if (v10)
      {
        v12 = v10;

        v20 = v12;
      }
    }
  }

  objc_msgSend_appendString_(*(a1 + 32), v6, v20, v7, v8);
  v17 = objc_msgSend_copy(v20, v13, v14, v15, v16);
  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

uint64_t TTSSupportsNeuralVoices()
{
  if (qword_1ED970EC8 != -1)
  {
    sub_1A957A7CC();
  }

  return byte_1ED970EC0;
}

uint64_t sub_1A937477C()
{
  result = MGGetBoolAnswer();
  byte_1ED970EC0 = result;
  return result;
}

uint64_t TTSSupportsNeuralAXVoices()
{
  if (qword_1ED970EC8 != -1)
  {
    sub_1A957A7CC();
  }

  if (byte_1ED970EC0 != 1)
  {
    return 0;
  }

  return MEMORY[0x1EEDEA168]();
}

uint64_t TTSVoiceTypeForResourceType(uint64_t a1, uint64_t a2)
{
  result = 6;
  if (a1 > 5)
  {
    if ((a1 - 7) < 3)
    {
      return 1;
    }

    v4 = 3;
    if (a1 != 6)
    {
      v4 = 6;
    }

    if (a1 == 10)
    {
      return 2;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 < 3)
    {
      return 1;
    }

    if (a1 != 3)
    {
      if (a1 != 5)
      {
        return result;
      }

      return 1;
    }

    v5 = 5;
    if (a2 == 7)
    {
      v5 = 7;
    }

    if (a2 == 4)
    {
      return 4;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t TTSIsPersonalVoicePrivilagedProcess()
{
  if (AXProcessIsAxctl() & 1) != 0 || (AXCUProcessIsAXUIServer() & 1) != 0 || (AXProcessIsLiveSpeech() & 1) != 0 || (AXProcessMacOSSettingsExtension() & 1) != 0 || (AXCUProcessIsPreferences())
  {
    return 1;
  }

  return MEMORY[0x1EEDEA108]();
}

uint64_t TTSVoiceWithIdentifierIsAllowedToUseBufferCallbackAPIInCurrentProcess(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!objc_msgSend_isPersonalVoiceIdentifier_(TTSAlternativeVoices, a2, a1, a4, a5) || (TTSIsPersonalVoicePrivilagedProcess() & 1) != 0)
  {
    return 1;
  }

  v6 = AXLogSpeechSynthesis();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1A957A7E0(v6);
  }

  return 0;
}

uint64_t TTSHasRBSAssertionEntitlement()
{
  if (qword_1EB391120 != -1)
  {
    sub_1A957A824();
  }

  return byte_1EB391118;
}

void sub_1A9374994()
{
  v0 = xpc_copy_entitlement_for_self();
  if (v0)
  {
    v1 = v0;
    byte_1EB391118 = xpc_BOOL_get_value(v0);
    v0 = v1;
  }
}

void TTSKickAudioComponentRegistry()
{
  if (qword_1EB391128 != -1)
  {
    sub_1A957A838();
  }
}

double TTSSpeechRateToNashvilleRate(double a1)
{
  if (a1 >= 0.5)
  {
    return (a1 + -0.5 + a1 + -0.5) * 2.9 + 1.0;
  }

  else
  {
    return (1.0 - (0.5 - a1 + 0.5 - a1)) * 0.9 + 0.1;
  }
}

_opaque_pthread_t *_GetScheduledPriority(_opaque_pthread_t *result, int a2)
{
  if (result)
  {
    v3 = result;
    v15 = 0;
    *thread_info_out = 0u;
    v14 = 0u;
    *v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    thread_info_outCnt = 10;
    v4 = pthread_mach_thread_np(result);
    thread_info(v4, 3u, thread_info_out, &thread_info_outCnt);
    switch(DWORD1(v14))
    {
      case 4:
        thread_info_outCnt = 4;
        v7 = pthread_mach_thread_np(v3);
        thread_info(v7, 0xCu, &v11 + 2, &thread_info_outCnt);
        if (a2 || !v12)
        {
          return HIDWORD(v11);
        }

        else
        {
          return HIDWORD(v12);
        }

      case 2:
        thread_info_outCnt = 5;
        v6 = pthread_mach_thread_np(v3);
        thread_info(v6, 0xBu, &v10 + 1, &thread_info_outCnt);
        if (a2 || !v11)
        {
          return DWORD2(v10);
        }

        else
        {
          return DWORD1(v11);
        }

      case 1:
        thread_info_outCnt = 5;
        v5 = pthread_mach_thread_np(v3);
        thread_info(v5, 0xAu, v9, &thread_info_outCnt);
        if (a2)
        {
          return v9[1];
        }

        else
        {
          return v9[2];
        }

      default:
        return 0;
    }
  }

  return result;
}

BOOL TTSSetThreadPriorityHigh(int a1)
{
  pthread_once(&stru_1EB386440, sub_1A9374D08);
  v2 = pthread_self();
  ScheduledPriority = _GetScheduledPriority(v2, 0);
  if (a1)
  {
    v4 = 97;
  }

  else
  {
    v4 = dword_1EB386438;
  }

  policy_info = v4 - ScheduledPriority;
  v5 = AXTTSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1A957A84C();
  }

  v6 = MEMORY[0x1AC5870E0]();
  v7 = thread_policy_set(v6, 3u, &policy_info, 1u);
  v14 = 0;
  v13 = 0;
  v8 = pthread_self();
  pthread_getschedparam(v8, &v14, &v13);
  v13.sched_priority = v4;
  v9 = pthread_self();
  pthread_setschedparam(v9, 4, &v13);
  v10 = AXTTSLogCommon();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v11)
    {
      sub_1A957A8C0();
    }
  }

  else if (v11)
  {
    sub_1A957A900();
  }

  return v7 == 0;
}

void sub_1A9374D08()
{
  v0 = pthread_self();
  dword_1EB386438 = _GetScheduledPriority(v0, 0);
  v1 = AXTTSLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1A957A940();
  }
}

id TTSLocString(void *a1)
{
  v1 = qword_1EB391138;
  v3 = a1;
  if (v1 != -1)
  {
    sub_1A957A9C0();
  }

  v4 = objc_msgSend_localizedStringForKey_value_table_(qword_1EB391130, v2, v3, &stru_1F1CFF8D8, @"Localizable");

  return v4;
}

uint64_t sub_1A9374DDC()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();
  qword_1EB391130 = objc_msgSend_bundleForClass_(v0, v2, v1, v3, v4);

  return MEMORY[0x1EEE66BB8]();
}

Class sub_1A9374E38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  if (!qword_1EB391148)
  {
    v12[1] = MEMORY[0x1E69E9820];
    v12[2] = 3221225472;
    v12[3] = sub_1A9374F64;
    v12[4] = &unk_1E7880300;
    v12[5] = v12;
    v13 = xmmword_1E7880E40;
    v14 = 0;
    qword_1EB391148 = _sl_dlopen();
  }

  if (!qword_1EB391148)
  {
    sub_1A957AA50(v12, a2, a3, a4, a5);
  }

  if (v12[0])
  {
    free(v12[0]);
  }

  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A957A9D4(result, v7, v8, v9, v10);
  }

  qword_1EB391140 = *(*(*(a1 + 32) + 8) + 24);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A9374F64(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EB391148 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1A9374FD8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A9375030(a1, a2, a3, a4, a5);
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A957AAD0(result, v7, v8, v9, v10);
  }

  qword_1ED970340 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A9375030(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1ED970370)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = sub_1A9375128;
    v8[4] = &unk_1E7880300;
    v8[5] = v8;
    v9 = xmmword_1E7880E58;
    v10 = 0;
    qword_1ED970370 = _sl_dlopen();
  }

  v5 = qword_1ED970370;
  if (!qword_1ED970370)
  {
    sub_1A957AB4C(v8, a2, a3, a4, a5);
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1A9375128(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED970370 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A937519C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A9375030(a1, a2, a3, a4, a5);
  result = dlsym(v6, "AXSpeechSourceKeyVoiceOver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB391150 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A93751EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A9375030(a1, a2, a3, a4, a5);
  result = dlsym(v6, "AXSpeechSourceKeySwitchControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB391158 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A937527C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_1A93767DC(a1, a2 - v2);
  }
}

BOOL ausdk::AUElement::HasParameterID(ausdk::AUElement *this, unsigned int a2)
{
  if (*(this + 40) == 1)
  {
    return a2 < ((*(this + 7) - *(this + 6)) >> 2);
  }

  else
  {
    return *(this + 3) != sub_1A9375304(this + 2, a2);
  }
}

char *sub_1A9375304(char **a1, unsigned int a2)
{
  v3 = *a1;
  result = a1[1];
  if (result != v3)
  {
    v4 = (result - v3) >> 3;
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[8 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 8;
      v4 += ~(v4 >> 1);
      if (v8 < a2)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
    if (v3 != result && *v3 == a2)
    {
      return v3;
    }
  }

  return result;
}

float ausdk::AUElement::GetParameter(char **this, unsigned int a2)
{
  if (*(this + 40) != 1)
  {
    v5 = sub_1A9375304(this + 2, a2);
    if (this[3] != v5)
    {
      v4 = (v5 + 4);
      return COERCE_FLOAT(atomic_load_explicit(v4, memory_order_acquire));
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A957ABD4();
    }

LABEL_12:
    exception = __cxa_allocate_exception(0x18uLL);
    sub_1A9333D44(exception, -10878);
    __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
  }

  v3 = this[6];
  if (a2 >= ((this[7] - v3) >> 2))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A957ABD4();
    }

    goto LABEL_12;
  }

  v4 = &v3[4 * a2];
  return COERCE_FLOAT(atomic_load_explicit(v4, memory_order_acquire));
}

void ausdk::AUElement::SetParameter(ausdk::AUElement *this, unsigned int a2, float a3, char a4)
{
  if (*(this + 40) == 1)
  {
    v7 = *(this + 6);
    if (a2 >= ((*(this + 7) - v7) >> 2))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A957ABD4();
      }

      exception = __cxa_allocate_exception(0x18uLL);
      sub_1A9333D44(exception, -10878);
      __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
    }

    v8 = (v7 + 4 * a2);
    goto LABEL_6;
  }

  v10 = this + 16;
  v11 = sub_1A9375304(this + 2, a2);
  if (*(this + 3) != v11)
  {
    v8 = (v11 + 4);
LABEL_6:
    atomic_store(LODWORD(a3), v8);
    return;
  }

  v12 = *(this + 1);
  if (*(v12 + 17) != 1 || (a4 & 1) != 0)
  {
    v16 = a3;
    v14 = v10;
    v15 = a2;
    sub_1A9375598(&v14, &v16);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A957AC4C(v12);
  }
}

uint64_t sub_1A9375598(uint64_t a1, unsigned int *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *v3;
  v6 = v3[1];
  if (v6 == *v3)
  {
    v5 = v3[1];
  }

  else
  {
    v7 = (v6 - *v3) >> 3;
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[8 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v7 += ~(v7 >> 1);
      if (v11 < v4)
      {
        v5 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  if (v6 == v5 || *v5 != v4)
  {
    v16[0] = *(a1 + 8);
    v14 = atomic_load(a2);
    v16[1] = v14;
    sub_1A9376B38(v3, v5, v16);
  }

  else
  {
    v12 = (v5 + 4);
    if (v12 != a2)
    {
      v13 = atomic_load(a2);
      atomic_store(v13, v12);
    }
  }

  return a1;
}

void ausdk::AUElement::SetScheduledEvent(ausdk::AUElement *this, unsigned int a2, const AudioUnitParameterEvent *a3, unsigned int a4, unsigned int a5, char a6)
{
  if (a3->eventType == kParameterEvent_Immediate)
  {
    value = a3->eventValues.immediate.value;

    ausdk::AUElement::SetParameter(this, a2, value, a6);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A957ACE4(this);
  }
}

uint64_t ausdk::AUElement::GetParameterList(uint64_t this, unsigned int *a2)
{
  if (*(this + 40) == 1)
  {
    v2 = *(this + 56) - *(this + 48);
    if (v2)
    {
      v3 = 0;
      v4 = (v2 - 4) >> 2;
      v5 = vdupq_n_s64(v4);
      v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v7 = a2 + 2;
      do
      {
        v8 = vdupq_n_s64(v3);
        v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1A9586580)));
        if (vuzp1_s16(v9, *v5.i8).u8[0])
        {
          *(v7 - 2) = v3;
        }

        if (vuzp1_s16(v9, *&v5).i8[2])
        {
          *(v7 - 1) = v3 + 1;
        }

        if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1A9586570)))).i32[1])
        {
          *v7 = v3 + 2;
          v7[1] = v3 + 3;
        }

        v3 += 4;
        v7 += 4;
      }

      while (v6 != v3);
    }
  }

  else
  {
    v10 = *(this + 16);
    v11 = *(this + 24);
    while (v10 != v11)
    {
      v12 = *v10;
      v10 += 2;
      *a2++ = v12;
    }
  }

  return this;
}

UInt8 *ausdk::AUElement::SaveState(ausdk::AUElement *this, int a2, CFDataRef theData)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = a2;
  theDataa = theData;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  Length = CFDataGetLength(theData);
  v19 = 0;
  v18[0] = this;
  v18[1] = &v21;
  v18[2] = v22;
  v18[3] = &theDataa;
  v18[4] = &v19;
  *bytes = 0;
  CFDataAppendBytes(theData, bytes, 4);
  if (*(this + 40) == 1)
  {
    v6 = *(this + 7) - *(this + 6);
    if ((v6 & 0x3FFFFFFFCLL) != 0)
    {
      v7 = 0;
      v8 = (v6 >> 2);
      do
      {
        v9 = COERCE_FLOAT(atomic_load((*(this + 6) + 4 * v7)));
        sub_1A93758E0(v18, v7++, v9);
      }

      while (v8 != v7);
    }
  }

  else
  {
    v14 = *(this + 2);
    v13 = *(this + 3);
    while (v14 != v13)
    {
      v15 = v14 + 1;
      v16 = *v14;
      v14 += 2;
      LODWORD(v15) = atomic_load(v15);
      sub_1A93758E0(v18, v16, *&v15);
    }
  }

  v10 = bswap32(v19);
  result = CFDataGetMutableBytePtr(theDataa);
  *&result[Length] = v10;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A93758E0(uint64_t a1, uint64_t a2, float a3)
{
  v4 = a2;
  if ((*(**(*a1 + 8) + 256))(*(*a1 + 8), **(a1 + 8), a2, *(a1 + 16)))
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 16);
  if ((*(v8 + 96) & 0x10) != 0)
  {
    v9 = *(v8 + 72);
    if (v9)
    {
      CFRelease(v9);
      v8 = *(a1 + 16);
    }

    if (*(v8 + 80) == 26)
    {
      v10 = *(v8 + 56);
      if (v10)
      {
        CFRelease(v10);
        v8 = *(a1 + 16);
      }
    }
  }

  if ((*(v8 + 97) & 0xA0) == 0)
  {
LABEL_2:
    v6 = **(a1 + 24);
    *bytes = bswap32(v4);
    CFDataAppendBytes(v6, bytes, 4);
    v7 = **(a1 + 24);
    *v11 = bswap32(LODWORD(a3));
    CFDataAppendBytes(v7, v11, 4);
    ++**(a1 + 32);
  }
}

unsigned int *ausdk::AUElement::RestoreState(ausdk::AUElement *this, const unsigned __int8 *a2)
{
  v2 = (a2 + 4);
  if (*a2)
  {
    v4 = bswap32(*a2);
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    do
    {
      v6 = *v2;
      v7 = v2[1];
      v2 += 2;
      ausdk::AUElement::SetParameter(this, bswap32(v6), COERCE_FLOAT(bswap32(v7)), 0);
      --v5;
    }

    while (v5);
  }

  return v2;
}

ausdk::AUIOElement *ausdk::AUIOElement::AUIOElement(ausdk::AUIOElement *this, ausdk::AUBase *a2)
{
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *this = &unk_1F1CF0988;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  sub_1A93722BC(this + 15, 1uLL);
  v3 = *(this + 15);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 168) = 1;
  *(this + 10) = 0x40E5888000000000;
  *(this + 88) = xmmword_1A9586AE0;
  *(this + 104) = xmmword_1A9586AF0;
  return this;
}

uint64_t ausdk::AUIOElement::SetStreamFormat(ausdk::AUIOElement *this, const AudioStreamBasicDescription *a2)
{
  v3 = *&a2->mSampleRate;
  v4 = *&a2->mBytesPerPacket;
  *(this + 14) = *&a2->mBitsPerChannel;
  *(this + 5) = v3;
  *(this + 6) = v4;
  if (sub_1A9371564(*(this + 15)))
  {
    v5 = *(this + 27);
    if (v5 != sub_1A9371564(*(this + 15)))
    {
      (*(*this + 104))(this);
    }
  }

  return 0;
}

uint64_t ausdk::AUIOElement::AllocateBuffer(uint64_t this, int a2)
{
  v3 = *(this + 8);
  if (*(v3 + 18) == 1)
  {
    v4 = a2;
    v5 = this;
    if (!a2)
    {
      v4 = *(v3 + 336);
    }

    if (*(this + 168) == 1)
    {
      if ((*(*this + 72))(this))
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    return ausdk::AUBufferList::Allocate(&v5[3].mBytesPerFrame, v5 + 2, v6);
  }

  return this;
}

void ausdk::AUIOElement::GetChannelLayoutTags(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t ausdk::AUIOElement::GetAudioChannelLayout(ausdk::AUIOElement *this, AudioChannelLayout *a2, BOOL *a3)
{
  *a3 = 1;
  if (!sub_1A9371564(*(this + 15)))
  {
    return 0;
  }

  v5 = *(this + 15);
  v6 = v5[2];
  v7 = (20 * v6 + 12);
  if (a2 && 20 * v6 != -12)
  {
    memcpy(a2, v5, (20 * v6 + 12));
  }

  return v7;
}

uint64_t ausdk::AUIOElement::SetAudioChannelLayout(ausdk::AUIOElement *this, AudioChannelLayout *a2)
{
  v4 = *(this + 27);
  if (v4 != sub_1A9371564(a2))
  {
    return 4294956445;
  }

  v5 = 20 * a2->mNumberChannelDescriptions + 12;
  v6 = (v5 & 0x1C) == 0;
  v7 = v5 >> 5;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  sub_1A93722BC(__dst, v8);
  memcpy(__dst[0], a2, 20 * a2->mNumberChannelDescriptions + 12);
  v9 = *(this + 15);
  if (v9)
  {
    *(this + 16) = v9;
    operator delete(v9);
  }

  result = 0;
  *(this + 120) = *__dst;
  *(this + 17) = v12;
  return result;
}

uint64_t ausdk::AUIOElement::RemoveAudioChannelLayout(ausdk::AUIOElement *this)
{
  sub_1A93722BC(&v5, 1uLL);
  v2 = v5;
  *v5 = 0;
  *(v2 + 2) = 0;
  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
    v2 = v5;
  }

  *(this + 15) = v2;
  *(this + 8) = v6;
  return 0;
}

void *ausdk::AUScope::SetNumberOfElements(ausdk::AUScope *this, unsigned int a2)
{
  result = *(this + 5);
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  else
  {
    v5 = a2;
    v6 = *(this + 2);
    v7 = *(this + 3);
    v8 = (this + 16);
    v9 = (v7 - v6) >> 3;
    if (v9 >= a2)
    {
      if (v9 > a2)
      {
        v24 = (v7 - 8);
        v25 = v7 - 8;
        do
        {
          result = *v24;
          *v24 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
            v6 = *v8;
          }

          *(this + 3) = v24;
          v26 = v25 - v6;
          v25 -= 8;
          --v24;
        }

        while (v5 < v26 >> 3);
      }
    }

    else
    {
      result = sub_1A9376084(this + 2, a2);
      if ((*(this + 3) - *(this + 2)) >> 3 < v5)
      {
        do
        {
          v10 = *(this + 2);
          (*(**this + 416))(&v27);
          v12 = *(this + 3);
          v11 = *(this + 4);
          if (v12 >= v11)
          {
            v15 = *v8;
            v16 = v12 - *v8;
            v17 = v16 >> 3;
            v18 = (v16 >> 3) + 1;
            if (v18 >> 61)
            {
              sub_1A9335A94();
            }

            v19 = v11 - v15;
            if (v19 >> 2 > v18)
            {
              v18 = v19 >> 2;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF8)
            {
              v20 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            v28[4] = this + 16;
            if (v20)
            {
              sub_1A9341F2C(this + 16, v20);
            }

            v21 = v27;
            v27 = 0;
            *(8 * v17) = v21;
            v14 = 8 * v17 + 8;
            memcpy(0, v15, v16);
            v22 = *(this + 2);
            *(this + 2) = 0;
            *(this + 3) = v14;
            v23 = *(this + 4);
            *(this + 4) = 0;
            v28[2] = v22;
            v28[3] = v23;
            v28[0] = v22;
            v28[1] = v22;
            sub_1A9376990(v28);
          }

          else
          {
            v13 = v27;
            v27 = 0;
            *v12 = v13;
            v14 = (v12 + 8);
          }

          *(this + 3) = v14;
          result = v27;
          v27 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
            v14 = *(this + 3);
          }
        }

        while ((v14 - *v8) >> 3 < v5);
      }
    }
  }

  return result;
}