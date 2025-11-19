id TTSSpeechTransformTextWithLanguageAndVoiceIdentifier(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v15 = a5;
  if (v11)
  {
    v16 = objc_msgSend_pauseMarkupString_(TTSSpeechManager, v12, v11, v13, v14);
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, v16, v18, v19, 350);

    if ((a2 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = objc_msgSend_stringByReplacingEmojiCharactersWithEmojiDescriptions_stringForPauses_language_rangeReplacements_appendEmojiSuffix_(TTSEmojiUtilities, v12, v9, v20, v10, v15, 0);

    v9 = v21;
    if ((a2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v20 = @" \x1B\\pause=350\\ ";
  if (a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((a2 & 2) != 0)
  {
LABEL_7:
    v22 = _TTSSpeechReplaceEmoticons(v9, v10, v15);

    v9 = v22;
  }

LABEL_8:

  return v9;
}

id _TTSSpeechReplaceEmoticons(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v12 = v7;
  if (!qword_1ED970280)
  {
    v13 = VOTBundle(v7, v8, v9, v10, v11);
    v16 = objc_msgSend_pathForResource_ofType_(v13, v14, @"VOTEmoticons", @"plist", v15);

    if (v16)
    {
      v20 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x1E695DF20], v17, v16, v18, v19);
      v21 = qword_1ED970280;
      qword_1ED970280 = v20;
    }
  }

  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1A9363718;
  v46 = sub_1A9363728;
  v47 = objc_msgSend_mutableCopy(v5, v8, v9, v10, v11);
  v26 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v22, v23, v24, v25);
  v27 = qword_1ED970280;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_1A9326C04;
  v36[3] = &unk_1E7880D70;
  v40 = &v42;
  v28 = v26;
  v37 = v28;
  v29 = v6;
  v38 = v29;
  v41 = v48;
  v30 = v12;
  v39 = v30;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v27, v31, v36, v32, v33);
  v34 = v43[5];

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v48, 8);

  return v34;
}

void sub_1A9326C04(void *a1, void *a2, void *a3)
{
  v73[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_length(*(*(a1[7] + 8) + 40), v7, v8, v9, v10))
  {
    v15 = 0;
    v16 = 0;
    v17 = @".";
    do
    {
      v18 = *(*(a1[7] + 8) + 40);
      v19 = objc_msgSend_length(v18, v11, v12, v13, v14);
      v21 = objc_msgSend_rangeOfString_options_range_(v18, v20, v6, 2, v15 + v16, v19 - (v15 + v16));
      v15 = v21;
      v16 = v22;
      if (v21)
      {
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          continue;
        }

        v26 = a1[4];
        v27 = objc_msgSend_characterAtIndex_(*(*(a1[7] + 8) + 40), v22, v21 - 1, v24, v25);
        if (!objc_msgSend_characterIsMember_(v26, v28, v27, v29, v30))
        {
          continue;
        }
      }

      if (v15 + v16 != objc_msgSend_length(*(*(a1[7] + 8) + 40), v22, v23, v24, v25))
      {
        v31 = a1[4];
        v32 = objc_msgSend_characterAtIndex_(*(*(a1[7] + 8) + 40), v22, v15 + v16, v24, v25);
        if (!objc_msgSend_characterIsMember_(v31, v33, v32, v34, v35))
        {
          continue;
        }
      }

      v36 = objc_msgSend_rangeOfString_(v5, v22, v17, v24, v25);
      if (v36 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v71 = objc_msgSend_substringToIndex_(v5, v22, v36, v24, v25);
        v41 = VOTBundle(v71, v37, v38, v39, v40);
        v42 = a1[5];
        v43 = AXNSLocalizedStringForLocale();

        objc_msgSend_replaceCharactersInRange_withString_(*(*(a1[7] + 8) + 40), v44, v15, v16, v43);
        *(*(a1[8] + 8) + 24) += objc_msgSend_length(v43, v45, v46, v47, v48) - v16;
        v70 = a1[6];
        v72[0] = @"originalRange";
        v51 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v49, v15 - *(*(a1[8] + 8) + 24), v16, v50);
        v72[1] = @"processedRange";
        v73[0] = v51;
        v52 = v17;
        v53 = MEMORY[0x1E696B098];
        v58 = objc_msgSend_length(v43, v54, v55, v56, v57);
        v61 = objc_msgSend_valueWithRange_(v53, v59, v15, v58, v60);
        v73[1] = v61;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v62, v73, v72, 2);
        v63 = v6;
        v65 = v64 = v5;
        objc_msgSend_addObject_(v70, v66, v65, v67, v68);

        v5 = v64;
        v6 = v63;

        v17 = v52;
      }
    }

    while (v15 < objc_msgSend_length(*(*(a1[7] + 8) + 40), v22, v23, v24, v25));
  }

  v69 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A9326EF0(uint64_t a1, id *a2)
{
  result = sub_1A957C0D8();
  *a2 = 0;
  return result;
}

uint64_t sub_1A932713C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A9327198()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_1A9378138(v0 + 3);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A93271E0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A9327270()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A93272B8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A9327300()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9327338()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9327370()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A93273B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A93273F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1A9327448(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1A9327460(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A932747C()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_1A9378138(v0 + 3);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A93274C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A9327570(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A9327614()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9327654()
{
  v1 = v0[2];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A932769C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A93276E4()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[8])
  {
    sub_1A9378138(v0 + 5);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A932773C()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_1A9378138(v0 + 3);
  }

  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A932778C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  if (v0[10])
  {
    sub_1A9378138(v0 + 7);
  }

  v4 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1A93277EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A9327888()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  sub_1A93B183C(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  v8 = *(v0 + 184);

  v9 = *(v0 + 192);

  v10 = *(v0 + 200);

  v11 = *(v0 + 208);

  if (*(v0 + 264))
  {

    v12 = *(v0 + 280);
  }

  if (*(v0 + 304))
  {

    v13 = *(v0 + 320);
  }

  v14 = *(v0 + 344);

  v15 = *(v0 + 352);

  v16 = *(v0 + 360);

  v17 = *(v0 + 368);

  return MEMORY[0x1EEE6BDD0](v0, 376, 7);
}

uint64_t sub_1A932796C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  sub_1A93B183C(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  v7 = *(v0 + 168);

  v8 = *(v0 + 176);

  v9 = *(v0 + 184);

  v10 = *(v0 + 192);

  if (*(v0 + 248))
  {

    v11 = *(v0 + 264);
  }

  if (*(v0 + 288))
  {

    v12 = *(v0 + 304);
  }

  return MEMORY[0x1EEE6BDD0](v0, 320, 7);
}

uint64_t sub_1A9327A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A957B0B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A9327AE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A957B0B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A9327B9C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9327BD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A9327C30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9327C98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A9327CE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1A9327D58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9327D90()
{
  v1 = sub_1A937829C(&qword_1EB386E60, &qword_1A9589CF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A9327E68()
{
  v1 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A9327F54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9327F94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1A9327FD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A9328008()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A9328060()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A93280A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A9328100()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9328138()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A932819C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A93281D8()
{
  MEMORY[0x1AC587DA0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9328210()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A9328254()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A93282B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A93282F0()
{
  v1 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A93283C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A9328454()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A932848C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A93284C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1A93285A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1A9328674()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9328720()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9328760()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  sub_1A93B183C(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  v6 = *(v0 + 152);

  v7 = *(v0 + 160);

  v8 = *(v0 + 168);

  v9 = *(v0 + 176);

  if (*(v0 + 232))
  {

    v10 = *(v0 + 248);
  }

  if (*(v0 + 272))
  {

    v11 = *(v0 + 288);
  }

  return MEMORY[0x1EEE6BDD0](v0, 304, 7);
}

uint64_t sub_1A9328814()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A9328864()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A93288A4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A93288EC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9328924()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_1A932896C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A93289B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A957B0B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A9328A60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A957B0B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A9328B04()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A9328B40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9328B78()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A9328BD0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  sub_1A9378138(v0 + 8);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1A9328C34()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9328C6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9328CB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1A9328D94()
{
  v1 = sub_1A957B078();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 97) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  sub_1A946D0F8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1A9328E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A957B078();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A9328F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A957B078();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A9328FE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9329018()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_1A9378138(v0 + 3);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A9329060()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9329098()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A93290E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9329120()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

__n128 sub_1A9329180(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1A93291A4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A93291F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A9329254@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A957B118();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A93292D0()
{
  v1 = v0[2];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A9329318()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9329350()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9329390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A957B0B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 40);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A932944C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A957B0B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 40) = -a2;
  }

  return result;
}

uint64_t sub_1A9329508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A93295D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A9329680()
{
  v1 = sub_1A937829C(&qword_1EB387BA0, &qword_1A95930B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A932975C()
{
  v1 = sub_1A937829C(&unk_1EB387C48, &qword_1A9593208);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A9329838()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_1A9378138(v0 + 3);
  }

  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A9329888()
{
  v1 = v0[2];

  if (v0[7])
  {
    sub_1A9378138(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A93298D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9329910()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9329948()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A9329998()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A93299E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A9329A28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9329A68()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_1A9378138(v0 + 3);
  }

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1A9329AB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9329AF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1A9329B30()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A9329BF4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9329C2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A9329C78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9329CB4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9329CF4()
{
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));

  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A9329D54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A9329D8C()
{
  _Block_release(*(v0 + 24));

  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A9329DE8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A9329E3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);
  sub_1A9410F60(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 64))
  {
    v4 = *(v0 + 72);
  }

  v5 = *(v0 + 88);

  if (*(v0 + 120))
  {

    v6 = *(v0 + 128);

    v7 = *(v0 + 144);

    v8 = *(v0 + 160);

    sub_1A93B183C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));
    v9 = *(v0 + 240);

    v10 = *(v0 + 248);

    v11 = *(v0 + 256);

    v12 = *(v0 + 264);

    if (*(v0 + 320))
    {

      v13 = *(v0 + 336);
    }

    if (*(v0 + 360))
    {

      v14 = *(v0 + 376);
    }
  }

  v15 = *(v0 + 392);

  v16 = *(v0 + 440);
  if (v16 == 2)
  {
    sub_1A9378138((v0 + 400));
    if (*(v0 + 464))
    {
LABEL_12:
      v18 = *(v0 + 472);
    }
  }

  else
  {
    if (v16 <= 1)
    {
      v17 = *(v0 + 408);
    }

    if (*(v0 + 464))
    {
      goto LABEL_12;
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 488, 7);
}

uint64_t sub_1A9329FC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 52, 7);
}

uint64_t sub_1A932A008()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A932A050()
{
  MEMORY[0x1AC587DA0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A932A088()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A932A0E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A932A120()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A932A158()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_1A9378138(v0 + 3);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A932A1A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1A932A208()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A932A250()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A932A298()
{
  v1 = sub_1A937829C(&qword_1EB388190, &qword_1A9595E08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 4);

  v12 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);
  v13 = sub_1A957B188();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v0[v8], 1, v13))
  {
    (*(v14 + 8))(&v0[v8], v13);
  }

  v15 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *&v0[v15 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v15 + 16, v3 | v7 | 7);
}

uint64_t sub_1A932A470()
{
  v1 = sub_1A937829C(&qword_1EB3881A0, &qword_1A9595E28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  v8 = *(v0 + 64);

  v9 = *(v0 + 72);

  v10 = *(v0 + 88);

  v11 = *(v0 + 104);

  sub_1A93B183C(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  v12 = *(v0 + 184);

  v13 = *(v0 + 192);

  v14 = *(v0 + 200);

  v15 = *(v0 + 208);

  if (*(v0 + 264))
  {

    v16 = *(v0 + 280);
  }

  if (*(v0 + 304))
  {

    v17 = *(v0 + 320);
  }

  v18 = (v3 + 344) & ~v3;
  v19 = *(v0 + 336);

  (*(v2 + 8))(v0 + v18, v1);

  return MEMORY[0x1EEE6BDD0](v0, v18 + v4, v3 | 7);
}

uint64_t sub_1A932A5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A932A690(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A932A740()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A932A778()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A932A7C0()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_1A9378138(v0 + 3);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A932A808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A937829C(&qword_1EB388240, &qword_1A95964A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A932A8C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A937829C(&qword_1EB388240, &qword_1A95964A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A932A980()
{
  v1 = sub_1A957B308();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A932AA08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A932AA48()
{
  v1 = type metadata accessor for CoreSynthesizer.Substitution.Context(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v1 + 20);
  v9 = sub_1A957B308();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v6 + *(v1 + 24) + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A932ABA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1A932ABE0()
{
  v1 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1A932ACE4()
{
  v1 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 19) & 0xFFFFFFFFFFFFFFF8) + 20, v3 | 7);
}

uint64_t sub_1A932ADF0()
{
  v1 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 19) & 0xFFFFFFFFFFFFFFF8) + 20, v3 | 7);
}

uint64_t sub_1A932AF04()
{
  v1 = sub_1A937829C(&qword_1EB3883C8, &qword_1A9596DF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A932AF98()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 69, 7);
}

uint64_t sub_1A932AFD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A932B010()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A932B058()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A932B0A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A932B0D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1A932B114()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_1A9378138(v0 + 3);
  }

  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A932B164()
{
  v1 = sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1A932B268()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A932B2A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1A932B2E4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1A932B384(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A932B440(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A932B4F0()
{
  v1 = (type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + v3);
  swift_unknownObjectRelease();
  v8 = v1[7];
  v9 = sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A932B5F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A932B63C()
{
  v1 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A932B71C()
{
  v1 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A932B7EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A932B868()
{
  v1 = sub_1A957B0B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A932B934()
{
  v1 = sub_1A957B0B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A932BA08()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A932BA50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A932BAA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A932BAF4()
{
  v1 = sub_1A937829C(&qword_1EB388878, &qword_1A959A3C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6 + 8);

  v8 = *(v0 + v6 + 24);

  v9 = *(v0 + v6 + 40);

  v10 = *(v0 + v6 + 64);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 80, v3 | 7);
}

uint64_t sub_1A932BBD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A932BC18()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A932BC60()
{
  v1 = v0[2];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A932BCB0()
{
  v1 = v0[2];

  if (v0[7])
  {
    sub_1A9378138(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A932BCFC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  if (v0[10])
  {
    sub_1A9378138(v0 + 7);
  }

  v4 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1A932BD5C()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_1A9378138(v0 + 3);
  }

  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A932BDAC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  if (v0[9])
  {
    sub_1A9378138(v0 + 6);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1A932BE10()
{
  v1 = *(v0 + 24);
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v2 = sub_1A957C5D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1A932BEC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A932D058(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A932D070(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1A932D0A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1A932D0B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1A957C0F8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1A932D0E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A932D0F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A957B1A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *ausdk::ComponentBase::InitializationMutex(ausdk::ComponentBase *this)
{
  if ((atomic_load_explicit(&qword_1EB390F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB390F90))
  {
    MEMORY[0x1AC586C70](&unk_1EB390F50);
    __cxa_guard_release(&qword_1EB390F90);
  }

  return &unk_1EB390F50;
}

ausdk::ComponentBase *ausdk::ComponentBase::ComponentBase(ausdk::ComponentBase *this, OpaqueAudioComponentInstance *a2)
{
  *this = &unk_1F1CEF130;
  *(this + 1) = a2;
  ausdk::ComponentBase::GetComponentDescription(this, v4);
  return this;
}

{
  *this = &unk_1F1CEF130;
  *(this + 1) = a2;
  ausdk::ComponentBase::GetComponentDescription(this, v4);
  return this;
}

double ausdk::ComponentBase::GetComponentDescription@<D0>(AudioComponentInstance *this@<X0>, uint64_t a2@<X8>)
{
  memset(&outDesc, 0, sizeof(outDesc));
  Component = AudioComponentInstanceGetComponent(this[1]);
  if (Component && !AudioComponentGetDescription(Component, &outDesc))
  {
    result = *&outDesc.componentType;
    *a2 = outDesc;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t ausdk::ComponentBase::DoPostConstructor(ausdk::ComponentBase *this)
{
  (*(*this + 32))(this);
  v2 = *(*this + 16);

  return v2(this);
}

uint64_t ausdk::ComponentBase::DoPreDestructor(ausdk::ComponentBase *this)
{
  (*(*this + 24))(this);
  v2 = *(*this + 40);

  return v2(this);
}

uint64_t ausdk::ComponentBase::AP_Open(ausdk::ComponentBase *this, void *a2, OpaqueAudioComponentInstance *a3)
{
  ausdk::ComponentBase::InitializationMutex(this);
  std::recursive_mutex::lock(&stru_1EB390F50);
  v5 = (*(this + 4))(this + 64, a2);
  (*(*v5 + 32))(v5);
  (*(*v5 + 16))(v5);
  std::recursive_mutex::unlock(&stru_1EB390F50);
  return 0;
}

void sub_1A932D448(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v4 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      v5 = -108;
      if (!v2)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    case 3:
      v5 = *__cxa_begin_catch(a1);
LABEL_4:
      __cxa_end_catch();
      if (!v2)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    default:
      v4 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        __cxa_end_catch();
        v5 = -1;
        if (!v2)
        {
          goto LABEL_15;
        }

LABEL_8:
        if (v5)
        {
          MEMORY[0x1AC586D00](v2, 0x1080C4018D86D6ALL);
        }

LABEL_15:
        JUMPOUT(0x1A932D438);
      }

      break;
  }

  v5 = v4[4];
  goto LABEL_4;
}

uint64_t ausdk::ComponentBase::AP_Close(ausdk::ComponentBase *this, void *a2)
{
  v3 = this + 64;
  (*(*(this + 8) + 24))(this + 64, a2);
  (*(*v3 + 40))(v3);
  (*(this + 5))(v3);
  free(this);
  return 0;
}

void *sub_1A932D60C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22.receiver = a1;
  v22.super_class = &off_1F1D1ED00;
  v10 = objc_msgSendSuper2(&v22, sel_init);
  v14 = v10;
  if (v10)
  {
    objc_msgSend_setMark_(v10, v11, a3, v12, v13);
    objc_msgSend_setTextRange_(v14, v15, a4, a5, v16);
    objc_msgSend_setByteSampleOffset_(v14, v17, a6, v18, v19);
    v20 = v14;
  }

  return v14;
}

void *sub_1A932D6A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20.receiver = a1;
  v20.super_class = &off_1F1D1ED00;
  v8 = objc_msgSendSuper2(&v20, sel_init);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setTextRange_(v8, v9, a3, a4, v10);
    objc_msgSend_setMark_(v11, v12, 1, v13, v14);
    objc_msgSend_setByteSampleOffset_(v11, v15, a5, v16, v17);
    v18 = v11;
  }

  return v11;
}

void *sub_1A932D738(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20.receiver = a1;
  v20.super_class = &off_1F1D1ED00;
  v8 = objc_msgSendSuper2(&v20, sel_init);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setTextRange_(v8, v9, a3, a4, v10);
    objc_msgSend_setMark_(v11, v12, 2, v13, v14);
    objc_msgSend_setByteSampleOffset_(v11, v15, a5, v16, v17);
    v18 = v11;
  }

  return v11;
}

void *sub_1A932D7C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20.receiver = a1;
  v20.super_class = &off_1F1D1ED00;
  v8 = objc_msgSendSuper2(&v20, sel_init);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setTextRange_(v8, v9, a3, a4, v10);
    objc_msgSend_setMark_(v11, v12, 3, v13, v14);
    objc_msgSend_setByteSampleOffset_(v11, v15, a5, v16, v17);
    v18 = v11;
  }

  return v11;
}

void *sub_1A932D858(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v20.receiver = a1;
  v20.super_class = &off_1F1D1ED00;
  v7 = objc_msgSendSuper2(&v20, sel_init);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_setMark_(v7, v8, 0, v9, v10);
    objc_msgSend_setPhoneme_(v11, v12, v6, v13, v14);
    objc_msgSend_setByteSampleOffset_(v11, v15, a4, v16, v17);
    v18 = v11;
  }

  return v11;
}

void *sub_1A932D8EC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v20.receiver = a1;
  v20.super_class = &off_1F1D1ED00;
  v7 = objc_msgSendSuper2(&v20, sel_init);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_setMark_(v7, v8, 4, v9, v10);
    objc_msgSend_setBookmarkName_(v11, v12, v6, v13, v14);
    objc_msgSend_setByteSampleOffset_(v11, v15, a4, v16, v17);
    v18 = v11;
  }

  return v11;
}

void sub_1A932D980(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_bookmarkName(a1, v5, v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(v4, v10, v9, @"bookmarkName", v11);

  v16 = objc_msgSend_phoneme(a1, v12, v13, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"phoneme", v18);

  v19 = MEMORY[0x1E696AD98];
  v24 = objc_msgSend_mark(a1, v20, v21, v22, v23);
  v28 = objc_msgSend_numberWithInteger_(v19, v25, v24, v26, v27);
  objc_msgSend_encodeObject_forKey_(v4, v29, v28, @"mark", v30);

  v31 = MEMORY[0x1E696AD98];
  v36 = objc_msgSend_byteSampleOffset(a1, v32, v33, v34, v35);
  v40 = objc_msgSend_numberWithUnsignedInteger_(v31, v37, v36, v38, v39);
  objc_msgSend_encodeObject_forKey_(v4, v41, v40, @"byteSampleOffset", v42);

  v43 = MEMORY[0x1E696AD98];
  v48 = objc_msgSend_textRange(a1, v44, v45, v46, v47);
  v52 = objc_msgSend_numberWithUnsignedInteger_(v43, v49, v48, v50, v51);
  objc_msgSend_encodeObject_forKey_(v4, v53, v52, @"textRange_location", v54);

  v55 = MEMORY[0x1E696AD98];
  objc_msgSend_textRange(a1, v56, v57, v58, v59);
  v65 = objc_msgSend_numberWithUnsignedInteger_(v55, v60, v60, v61, v62);
  objc_msgSend_encodeObject_forKey_(v4, v63, v65, @"textRange_length", v64);
}

id sub_1A932DB00(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v66.receiver = a1;
  v66.super_class = &off_1F1D1ED00;
  v5 = objc_msgSendSuper2(&v66, sel_init);
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"bookmarkName", v8);
    objc_msgSend_setBookmarkName_(v5, v10, v9, v11, v12);

    v13 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"phoneme", v15);
    objc_msgSend_setPhoneme_(v5, v17, v16, v18, v19);

    v20 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"mark", v22);
    v28 = objc_msgSend_longValue(v23, v24, v25, v26, v27);
    objc_msgSend_setMark_(v5, v29, v28, v30, v31);

    v32 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v33, v32, @"byteSampleOffset", v34);
    v40 = objc_msgSend_unsignedIntValue(v35, v36, v37, v38, v39);
    objc_msgSend_setByteSampleOffset_(v5, v41, v40, v42, v43);

    v44 = objc_opt_class();
    v47 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v45, v44, @"textRange_location", v46);
    v52 = objc_msgSend_unsignedIntValue(v47, v48, v49, v50, v51);

    v53 = objc_opt_class();
    v56 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v54, v53, @"textRange_length", v55);
    v61 = objc_msgSend_unsignedIntValue(v56, v57, v58, v59, v60);

    objc_msgSend_setTextRange_(v5, v62, v52, v61, v63);
    v64 = v5;
  }

  return v5;
}

CFErrorRef TTSErrorCreate(const __CFAllocator *a1, const __CFString *a2, CFIndex a3, void *a4)
{
  userInfoKeys[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E620];
  userInfoValues = a4;
  userInfoKeys[0] = v4;
  result = CFErrorCreateWithUserInfoKeysAndValues(a1, a2, a3, userInfoKeys, &userInfoValues, a4 != 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

float DFT_split_180_execute(vDSP_DFT_SetupStruct *__Setup, float32x2_t *a2, float32x2_t *a3, float *a4, float *a5, vDSP_DFT_Direction a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, uint64_t a45, uint64_t a46)
{
  v47 = 0;
  if (a6 == vDSP_DFT_INVERSE)
  {
    v48 = a4;
  }

  else
  {
    v48 = a5;
  }

  if (a6 == vDSP_DFT_INVERSE)
  {
    v49 = a5;
  }

  else
  {
    v49 = a4;
  }

  if (a6 == vDSP_DFT_INVERSE)
  {
    v50 = a2;
  }

  else
  {
    v50 = a3;
  }

  if (a6 == vDSP_DFT_INVERSE)
  {
    v51 = a3;
  }

  else
  {
    v51 = a2;
  }

  v52 = -8;
  do
  {
    v54 = *&v51[v47 / 4];
    v53 = *&v51[v47 / 4 + 4];
    v56 = *v50[v47 / 8].f32;
    v55 = *v50[v47 / 8 + 2].f32;
    v58 = *&v51[v47 / 4 + 90];
    v57 = *&v51[v47 / 4 + 94];
    v60 = *v50[v47 / 8 + 45].f32;
    v59 = *v50[v47 / 8 + 47].f32;
    v62 = *(&unk_1A9585F80 + v47);
    v61 = *(&unk_1A9585F80 + v47 + 16);
    v63 = *(&unk_1A9586100 + v47);
    v64 = *(&unk_1A9586100 + v47 + 16);
    v65 = (&STACK[0x890] + v47);
    *v65 = vaddq_f32(v54, v58);
    v65[1] = vaddq_f32(v53, v57);
    v66 = (&v89 + v47);
    *v66 = vaddq_f32(v56, v60);
    v66[1] = vaddq_f32(v55, v59);
    v67 = vsubq_f32(v53, v57);
    v68 = vsubq_f32(v54, v58);
    v69 = vsubq_f32(v56, v60);
    v70 = vsubq_f32(v55, v59);
    v71 = (&STACK[0x890] + v47 + 360);
    *v71 = vmlaq_f32(vmulq_f32(v69, v63), v62, v68);
    v71[1] = vmlaq_f32(vmulq_f32(v70, v64), v61, v67);
    v72 = (&a44 + v47);
    *v72 = vmlaq_f32(vmulq_f32(v63, vnegq_f32(v68)), v62, v69);
    v72[1] = vmlaq_f32(vmulq_f32(v64, vnegq_f32(v67)), v61, v70);
    v52 += 8;
    v47 += 32;
  }

  while (v52 < 0x4B);
  v73 = *(v51 + 88);
  v74 = *(v51 + 178);
  v75 = vsub_f32(v73, v74);
  v76 = vsub_f32(v50[44], v50[89]);
  STACK[0x9F0] = vadd_f32(v73, v74);
  STACK[0xB58] = vmla_f32(vmul_f32(v76, 0x3D0EF2AD3D8EDC7BLL), 0xBF7FD814BF7F605CLL, v75);
  STACK[0x878] = vmla_f32(vmul_f32(v75, 0xBD0EF2ADBD8EDC7BLL), 0xBF7FD814BF7F605CLL, v76);
  vDSP_DFT_Execute(__Setup, &STACK[0x890], &v89, &STACK[0x890], &v89);
  vDSP_DFT_Execute(__Setup, &STACK[0x9F8], &a44, &STACK[0x9F8], &a44);
  v77 = 0;
  v78 = -8;
  v79 = v48;
  v80 = v49;
  do
  {
    v91.val[0] = *(&STACK[0x890] + v77);
    v90.val[0] = *(&STACK[0x890] + v77 + 16);
    v91.val[1] = *(&STACK[0x890] + v77 + 360);
    v90.val[1] = *(&STACK[0x890] + v77 + 376);
    v93.val[0] = *(&v89 + v77);
    v92.val[0] = *(&v89 + v77 + 16);
    v93.val[1] = *(&a44 + v77);
    v92.val[1] = *(&a46 + v77);
    v81 = v80 + 16;
    vst2q_f32(v80, v91);
    v82 = v80 + 8;
    vst2q_f32(v82, v90);
    v83 = v79 + 16;
    vst2q_f32(v79, v93);
    v84 = v79 + 8;
    vst2q_f32(v84, v92);
    v78 += 8;
    v77 += 32;
    v79 = v83;
    v80 = v81;
  }

  while (v78 < 0x4B);
  v85 = 0;
  v86 = v49 + 177;
  v87 = v48 + 177;
  do
  {
    *(v86 - 1) = *(&STACK[0x890] + v85 + 352);
    *(v87 - 1) = *(&v89 + v85 + 352);
    *v86 = *(&STACK[0x890] + v85 + 712);
    v86 += 2;
    result = *(&STACK[0x878] + v85);
    *v87 = result;
    v87 += 2;
    v85 += 4;
  }

  while (v85 != 8);
  return result;
}

void ResamplerInitLocker::ResamplerInitLocker(ResamplerInitLocker *this)
{
  pthread_mutex_lock(&stru_1EB3864A8);
}

{
  pthread_mutex_lock(&stru_1EB3864A8);
}

void ResamplerInitLocker::~ResamplerInitLocker(ResamplerInitLocker *this)
{
  pthread_mutex_unlock(&stru_1EB3864A8);
}

{
  pthread_mutex_unlock(&stru_1EB3864A8);
}

ausdk::AUBase *ausdk::MusicDeviceBase::MusicDeviceBase(ausdk::MusicDeviceBase *this, OpaqueAudioComponentInstance *a2, int a3, int a4, int a5)
{
  result = ausdk::AUBase::AUBase(this, a2, a3, a4, a5);
  *(result + 67) = result;
  *result = &unk_1F1CEF198;
  *(result + 66) = &unk_1F1CEF400;
  return result;
}

uint64_t ausdk::MusicDeviceBase::GetPropertyInfo(ausdk::MusicDeviceBase *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 == 1000)
  {
    if (a3)
    {
      return 4294956430;
    }

    else
    {
      result = 0;
      *a5 = 4;
      *a6 = 0;
    }
  }

  else
  {
    result = ausdk::AUBase::GetPropertyInfo(this, a2, a3, a4, a5, a6);
    if (result == -10879)
    {

      return ausdk::AUMIDIBase::DelegateGetPropertyInfo((this + 528), a2, a3, a4, a5, a6);
    }
  }

  return result;
}

uint64_t ausdk::MusicDeviceBase::GetProperty(ausdk::MusicDeviceBase *this, unsigned int a2, unsigned int a3, unsigned int a4, _DWORD *a5)
{
  if (a2 == 1000)
  {
    if (a3)
    {
      return 4294956430;
    }

    else
    {
      v11 = 0;
      result = (*(*this + 592))(this, &v11);
      *a5 = v11;
    }
  }

  else
  {
    result = ausdk::AUBase::GetProperty(this, a2, a3, a4, a5);
    if (result == -10879)
    {

      return ausdk::AUMIDIBase::DelegateGetProperty((this + 528), a2, a3, a4, a5);
    }
  }

  return result;
}

uint64_t ausdk::MusicDeviceBase::SetProperty(ausdk::MusicDeviceBase *this, unsigned int a2, unsigned int a3, unsigned int a4, const void *a5)
{
  result = ausdk::AUBase::SetProperty(this, a2, a3, a4, a5);
  if (result == -10879)
  {

    return ausdk::AUMIDIBase::DelegateSetProperty((this + 528), a2, a3, a4, a5);
  }

  return result;
}

uint64_t ausdk::MusicDeviceBase::HandleNoteOn(ausdk::MusicDeviceBase *this, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v6[0] = 2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  v7 = 0;
  return (*(*this + 480))(this, 0xFFFFFFFFLL, a2, 0, a5, v6);
}

uint64_t non-virtual thunk toausdk::MusicDeviceBase::HandleNoteOn(ausdk::MusicDeviceBase *this, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v6[0] = 2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  v7 = 0;
  return (*(*(this - 66) + 480))(this - 528, 0xFFFFFFFFLL, a2, 0, a5, v6);
}

uint64_t sub_1A932F174(uint64_t a1, uint64_t a2, double *a3)
{
  if (*a3 == *(a1 + 272))
  {
    return 0;
  }

  v3 = *a3;
  v4 = *(a3 + 1);
  v5 = *(a3 + 3);
  *(a1 + 304) = *(a3 + 2);
  *(a1 + 320) = v5;
  *(a1 + 272) = v3;
  *(a1 + 288) = v4;
  return (*(*a1 + 208))();
}

void sub_1A9330514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A9330538(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a1 + 40) + 8);
  if (*(v7 + 24) == 1)
  {
    v8 = 0;
    *a3 = 1;
  }

  else
  {
    *(v7 + 24) = 1;
    *a3 = 0;
    v8 = objc_msgSend_avBuffer(*(a1 + 32), a2, a3, a4, a5, v5);
  }

  return v8;
}

uint64_t sub_1A933062C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_aqRef(*(a1 + 32), a2, a3, a4, a5);

  return AudioQueueFlush(v5);
}

uint64_t sub_1A9330DFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend__tearDownAudioQueue(*(a1 + 32), a2, a3, a4, a5);
  v9 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v9, sel__rebuildAudioQueue, v6, v7, v8);
}

void sub_1A9330E4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_inflightBuffers(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_addObject_(v9, v6, *(a1 + 40), v7, v8);
}

uint64_t sub_1A9330EA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_state(*(a1 + 32), a2, a3, a4, a5))
  {
    memset(&v26, 0, sizeof(v26));
    v10 = objc_msgSend_aqRef(*(a1 + 32), v6, v7, v8, v9);
    v15 = objc_msgSend_aqBuffer(*(a1 + 40), v11, v12, v13, v14);
    *(*(*(a1 + 48) + 8) + 24) = AudioQueueEnqueueBufferWithParameters(v10, v15, 0, 0, 0, 0, 0, 0, 0, &v26);
    v25 = v26;
    return objc_msgSend_setQueuedTimeStamp_(*(a1 + 40), v16, &v25, v17, v18);
  }

  else
  {
    v20 = *(a1 + 32);
    v22 = objc_msgSend_aqBuffer(*(a1 + 40), v6, v7, v8, v9);

    return objc_msgSend_bufferCallback_(v20, v21, v22, v23, v24);
  }
}

void sub_1A9330F78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_inflightBuffers(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_removeObject_(v9, v6, *(a1 + 40), v7, v8);
}

uint64_t sub_1A9330FCC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend__tearDownAudioQueue(*(a1 + 32), a2, a3, a4, a5);
  v9 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v9, sel__rebuildAudioQueue, v6, v7, v8);
}

uint64_t sub_1A933101C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_aqRef(*(a1 + 32), a2, a3, a4, a5);

  return AudioQueuePause(v5);
}

uint64_t sub_1A9331134(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_aqRef(*(a1 + 32), a2, a3, a4, a5);
  AudioQueuePause(v6);
  v10 = *(a1 + 32);

  return objc_msgSend_setState_(v10, v7, 2, v8, v9);
}

uint64_t sub_1A933124C(uint64_t a1)
{
  v2 = AXTTSLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1A95772A8(a1, v2, v3, v4, v5);
  }

  v10 = objc_msgSend_aqRef(*(a1 + 32), v6, v7, v8, v9);
  return AudioQueueReset(v10);
}

uint64_t sub_1A933175C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend__tearDownAudioQueue(*(a1 + 32), a2, a3, a4, a5);
  v9 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v9, sel__rebuildAudioQueue, v6, v7, v8);
}

void sub_1A9331C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void *sub_1A9331CB0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1A9331CE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A9331CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
    v11 = objc_msgSend_inflightBuffers(*(a1 + 40), v7, v8, v9, v10);
    objc_msgSend_removeObject_(v11, v12, *(a1 + 32), v13, v14);
  }

  v19 = objc_msgSend_inflightBuffers(*(a1 + 40), v6, a3, a4, a5);
  *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_count(v19, v15, v16, v17, v18) == 0;
}

void sub_1A9331F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A9331F88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend__syncGraphProperties(*(a1 + 32), a2, a3, a4, a5);
  v10 = objc_msgSend_aqRef(*(a1 + 32), v6, v7, v8, v9);
  *(*(*(a1 + 40) + 8) + 24) = AudioQueueStart(v10, 0);
  v14 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v14, sel__syncGraphParameters, v11, v12, v13);
}

uint64_t sub_1A9332050(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_aqRef(*(a1 + 32), a2, a3, a4, a5);
  if (!result)
  {
    v10 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v10, sel__rebuildAudioQueue, v7, v8, v9);
  }

  return result;
}

void sub_1A9332340(int a1, AudioQueueRef inAQ)
{
  ioDataSize = 4;
  outData = 0;
  if (!AudioQueueGetProperty(inAQ, 0x6171726Eu, &outData, &ioDataSize))
  {
    v3 = outData;
    v4 = AXTTSLogCommon();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v5)
      {
        sub_1A95774B8(inAQ, v4, v6, v7, v8);
      }
    }

    else if (v5)
    {
      sub_1A9577548(inAQ, v4, v6, v7, v8);
    }
  }
}

void sub_1A93323DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = objc_msgSend_inflightBuffers(*(a1 + 32), a2, a3, a4, a5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v34, v38, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = objc_msgSend_completionHandler(v16, v9, v10, v11, v12);

        if (v17)
        {
          v18 = *(*(*(a1 + 40) + 8) + 40);
          v19 = objc_msgSend_completionHandler(v16, v9, v10, v11, v12);
          v20 = _Block_copy(v19);
          objc_msgSend_addObject_(v18, v21, v20, v22, v23);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v34, v38, 16);
    }

    while (v13);
  }

  v28 = objc_msgSend_inflightBuffers(*(a1 + 32), v24, v25, v26, v27);
  objc_msgSend_removeAllObjects(v28, v29, v30, v31, v32);

  v33 = *MEMORY[0x1E69E9840];
}

void sub_1A9332544(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v9, v13, 16);
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v7, &v9, v13, 16);
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A9332FC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setNeedsPropertySync_(*(a1 + 32), a2, 1, a4, a5);
  v10 = *(a1 + 32);

  return objc_msgSend__syncGraphProperties(v10, v6, v7, v8, v9);
}

uint64_t sub_1A93330B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setNeedsParameterSync_(*(a1 + 32), a2, 1, a4, a5);
  v9 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v9, sel__syncGraphParameters, v6, v7, v8);
}

void sub_1A9333674(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1A93336AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1A93336D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

_DWORD *ausdk::BufferAllocator::Allocate(ausdk::BufferAllocator *this, unsigned int a2, int a3)
{
  if (a2 > 0x1000)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1A933383C(exception, "AudioBuffers::Allocate: Too many buffers");
    __cxa_throw(exception, off_1E787FDC0, MEMORY[0x1E69E5280]);
  }

  v4 = 0;
  v5 = 0;
  v6 = (a3 + 15) & 0xFFFFFFF0;
  if (a2 && v6)
  {
    if (((v6 * a2) & 0xFFFFFFFF00000000) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A957791C();
      }

      v11 = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(v11);
      __cxa_throw(v12, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

    v5 = v6 * a2;
    if (v6 * a2)
    {
      v4 = malloc_type_malloc(v6 * a2, 0x91292B42uLL);
      bzero(v4, v6 * a2);
    }

    else
    {
      v4 = 0;
    }
  }

  if (a2 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  v8 = 16 * v7 + 56;
  result = malloc_type_malloc(v8, 0x473342A0uLL);
  *result = a2;
  result[1] = v6;
  *(result + 1) = 0;
  result[4] = v8;
  result[5] = v5;
  *(result + 3) = 0;
  *(result + 4) = v4;
  *(result + 5) = 0;
  *(result + 7) = 0;
  *(result + 8) = 0;
  result[12] = a2;
  return result;
}

std::logic_error *sub_1A933383C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void ausdk::BufferAllocator::Deallocate(int a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    free(v3);
  }

  free(a2);
}

uint64_t ausdk::AllocatedBuffer::Prepare(ausdk::AllocatedBuffer *this, int a2, unsigned int a3)
{
  v6 = *(this + 12);
  result = this + 48;
  v5 = v6;
  if (v6 > *this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1A933383C(exception, "AllocatedBuffer::Prepare(): too many buffers");
    goto LABEL_10;
  }

  v7 = *(this + 1);
  if (v7 < a3)
  {
    goto LABEL_9;
  }

  v8 = *(this + 4);
  v9 = v8 + *(this + 5);
  if (v5)
  {
    v10 = (this + 64);
    do
    {
      *v10 = v8;
      v8 += v7;
      *(v10 - 2) = a2;
      *(v10 - 1) = a3;
      v10 += 2;
      --v5;
    }

    while (v5);
  }

  if (v8 > v9)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1A933383C(exception, "AllocatedBuffer::Prepare(): insufficient capacity");
LABEL_10:
    __cxa_throw(exception, off_1E787FDC0, MEMORY[0x1E69E5280]);
  }

  return result;
}

uint64_t ausdk::AllocatedBuffer::PrepareNull(ausdk::AllocatedBuffer *this, int a2, int a3)
{
  v6 = *(this + 12);
  result = this + 48;
  v5 = v6;
  if (v6 > *this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1A933383C(exception, "AllocatedBuffer::PrepareNull(): too many buffers");
    __cxa_throw(exception, off_1E787FDC0, MEMORY[0x1E69E5280]);
  }

  if (v5)
  {
    v7 = (this + 64);
    do
    {
      *(v7 - 2) = a2;
      *(v7 - 1) = a3;
      *v7 = 0;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t ausdk::AUBufferList::PrepareBuffer(ausdk::AUBufferList *this, const AudioStreamBasicDescription *a2, unsigned int a3)
{
  if (*(this + 5) < a3)
  {
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      sub_1A95779DC(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    sub_1A9333D44(exception, -10874);
LABEL_16:
    __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
  }

  mFormatFlags = a2->mFormatFlags;
  mChannelsPerFrame = a2->mChannelsPerFrame;
  if ((mFormatFlags & 0x20) != 0)
  {
    v6 = a2->mChannelsPerFrame;
  }

  else
  {
    v6 = 1;
  }

  if (v6 > *(this + 4))
  {
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      sub_1A9577964(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    sub_1A9333D44(exception, -10868);
    goto LABEL_16;
  }

  if ((mFormatFlags & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2->mChannelsPerFrame;
  }

  result = ausdk::AllocatedBuffer::Prepare(*(this + 1), v7, a2->mBytesPerFrame * a3);
  *this = 1;
  return result;
}

uint64_t ausdk::AUBufferList::PrepareNullBuffer(ausdk::AUBufferList *this, const AudioStreamBasicDescription *a2, int a3)
{
  mFormatFlags = a2->mFormatFlags;
  mChannelsPerFrame = a2->mChannelsPerFrame;
  if ((mFormatFlags & 0x20) != 0)
  {
    v5 = a2->mChannelsPerFrame;
  }

  else
  {
    v5 = 1;
  }

  if (v5 > *(this + 4))
  {
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      sub_1A9577964(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    sub_1A9333D44(exception, -10868);
    __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
  }

  if ((mFormatFlags & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2->mChannelsPerFrame;
  }

  result = ausdk::AllocatedBuffer::PrepareNull(*(this + 1), v7, a2->mBytesPerFrame * a3);
  *this = 2;
  return result;
}

uint64_t ausdk::AUBufferList::Allocate(ausdk::AUBufferList *this, const AudioStreamBasicDescription *a2, int a3)
{
  v6 = ausdk::BufferAllocator::instance(this);
  v7 = v6;
  if (*(this + 1))
  {
    ((*v6)[3])(v6);
  }

  mBytesPerFrame = a2->mBytesPerFrame;
  if ((a2->mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  else
  {
    mChannelsPerFrame = 1;
  }

  result = ((*v7)[2])(v7, mChannelsPerFrame, mBytesPerFrame * a3, 0);
  *(this + 1) = result;
  *(this + 4) = mChannelsPerFrame;
  *(this + 5) = a3;
  *this = 0;
  return result;
}

void *ausdk::AUBufferList::Deallocate(void *this)
{
  v1 = this;
  if (this[1])
  {
    v2 = ausdk::BufferAllocator::instance(this);
    this = ((*v2)[3])(v2, v1[1]);
    v1[1] = 0;
  }

  v1[2] = 0;
  *v1 = 0;
  return this;
}

uint64_t sub_1A9333D4C(uint64_t a1, int __val)
{
  *(&v10.__r_.__value_.__s + 23) = 9;
  strcpy(&v10, "OSStatus ");
  std::to_string(&__p, __val);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v10, p_p, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F1CEF530;
  *(a1 + 16) = __val;
  return a1;
}

void sub_1A9333E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9333E94(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC586D00);
}

void sub_1A9333ECC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1A9333F3C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, a4, a5);
  objc_setAssociatedObject(a1, &unk_1EB390F9B, v6, 1);
}

uint64_t sub_1A9333FA4(void *a1)
{
  v1 = objc_getAssociatedObject(a1, &unk_1EB390F9B);
  v6 = objc_msgSend_BOOLValue(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1A9334000(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v8 = objc_msgSend_shared(_TtC12TextToSpeech12SSMLServices, v3, v4, v5, v6);
    v13 = objc_msgSend_speechString(v7, v9, v10, v11, v12);
    v35 = 0;
    v16 = objc_msgSend_parseSSMLToPlainText_error_(v8, v14, v13, &v35, v15);
    v17 = v35;

    v18 = AXLogSpeechSynthesis();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1A9577A54(v16, v18);
    }

    if (v17 || !objc_msgSend_length(v16, v19, v20, v21, v22))
    {
      v23 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1A9577ACC(v17, v23);
      }
    }

    else
    {
      v28 = objc_msgSend_speechString(v7, v24, v25, v26, v27);
      objc_msgSend_setSsmlRepresentation_(v7, v29, v28, v30, v31);

      objc_msgSend_setSpeechString_(v7, v32, v16, v33, v34);
    }
  }
}

void sub_1A9334138(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  objc_setAssociatedObject(a1, &unk_1EB390F9D, v4, 3);
}

void sub_1A93341A4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  objc_setAssociatedObject(a1, &unk_1EB390F9E, v4, 3);
}

id sub_1A933422C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E6958520];
  v4 = a3;
  v5 = [v3 alloc];
  v9 = objc_msgSend_initWithString_(v5, v6, v4, v7, v8);

  return v9;
}

id sub_1A9334284(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E6958520];
  v4 = a3;
  v5 = [v3 alloc];
  v9 = objc_msgSend_initWithAttributedString_(v5, v6, v4, v7, v8);

  return v9;
}

id sub_1A93342DC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E6958520];
  v4 = a3;
  v5 = [v3 alloc];
  v9 = objc_msgSend_initWithSSMLRepresentation_(v5, v6, v4, v7, v8);

  return v9;
}

void *sub_1A9334334(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v27.receiver = a1;
  v27.super_class = &off_1F1D1F2B8;
  v5 = objc_msgSendSuper2(&v27, sel_init);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    LODWORD(v8) = 1.0;
    objc_msgSend_setVolume_(v7, v9, v10, v11, v12, v8);
    LODWORD(v13) = 1.0;
    objc_msgSend_setPitchMultiplier_(v7, v14, v15, v16, v17, v13);
    LODWORD(v18) = *MEMORY[0x1E6958368];
    objc_msgSend_setRate_(v7, v19, v20, v21, v22, v18);
    objc_msgSend_setSpeechString_(v7, v23, v4, v24, v25);
  }

  return v6;
}

void *sub_1A93343D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_string(v4, v5, v6, v7, v8);
  v13 = objc_msgSend_initWithString_(a1, v10, v9, v11, v12);

  if (v13)
  {
    objc_msgSend_setAttributedSpeechString_(v13, v14, v4, v15, v16);
  }

  return v13;
}

id sub_1A9334440(id a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!objc_opt_class())
  {
    v9 = AXLogSpeechSynthesis();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1A9577B44(v9);
    }
  }

  v10 = objc_msgSend_shared(_TtC12TextToSpeech12SSMLServices, v5, v6, v7, v8);
  v26 = 0;
  v13 = objc_msgSend_parseSSMLToPlainText_error_(v10, v11, v4, &v26, v12);
  v14 = v26;

  if (v14)
  {
    v18 = AXLogSpeechSynthesis();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1A9577B88(v14, v18);
    }

    v19 = 0;
  }

  else
  {
    v20 = objc_msgSend_initWithString_(a1, v15, v13, v16, v17);
    v24 = v20;
    if (v20)
    {
      objc_msgSend_setSsmlRepresentation_(v20, v21, v4, v22, v23);
    }

    a1 = v24;
    v19 = a1;
  }

  return v19;
}

id sub_1A9334568(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = objc_opt_class();
  v8 = objc_msgSend_speechString(v2, v4, v5, v6, v7);
  v13 = objc_msgSend_voice(v2, v9, v10, v11, v12);
  objc_msgSend_rate(v2, v14, v15, v16, v17);
  v19 = v18;
  objc_msgSend_volume(v2, v20, v21, v22, v23);
  v25 = v24;
  objc_msgSend_pitchMultiplier(v2, v26, v27, v28, v29);
  v31 = v30;
  objc_msgSend_preUtteranceDelay(v2, v32, v33, v34, v35);
  v37 = v36;
  objc_msgSend_postUtteranceDelay(v2, v38, v39, v40, v41);
  v46 = objc_msgSend_stringWithFormat_(v1, v42, @"[%@ %p] String: %@\nVoice: %@\nRate: %.2f\nVolume: %.2f\nPitch Multiplier: %.2f\nDelays: Pre: %.2f(s) Post: %.2f(s)", v43, v44, v3, v2, v8, v13, *&v19, *&v25, *&v31, v37, v45);

  return v46;
}

unint64_t MultiRadixFFT::NearestSupportedSizes(unint64_t this)
{
  if (this >= 0x11)
  {
    if (this >> 20)
    {
      v1 = 0x100000;
      this = 0x100000;
    }

    else
    {
      v1 = 1 << (__clz(this) ^ 0x1F);
      v2 = __clz(this - 1);
      v3 = 1 << -v2;
      if (v1 >= v3)
      {
        this = (1 << -v2);
      }

      else
      {
        v4 = __clz(this / 0xF);
        v5 = 15 << ~v4;
        v6 = __clz(this / 5);
        v7 = 5 << ~v6;
        v8 = __clz(this / 3);
        if (v7 <= 3 << ~v8)
        {
          v7 = 3 << ~v8;
        }

        if (v5 <= v7)
        {
          v5 = v7;
        }

        if (v1 <= v5)
        {
          v1 = v5;
        }

        if (v1 != this)
        {
          v9 = 30 << (31 - v4);
          v10 = 10 << (31 - v6);
          v11 = 6 << (31 - v8);
          if (v11 < v10)
          {
            v10 = v11;
          }

          if (v10 < v9)
          {
            v9 = v10;
          }

          if (v9 >= v3)
          {
            this = v3;
          }

          else
          {
            this = v9;
          }
        }
      }
    }
  }

  else
  {
    v1 = 16;
    this = 16;
  }

  return v1 | (this << 32);
}

uint64_t MultiRadixFFT::Initialize(MultiRadixFFT *this, unsigned int a2)
{
  v4 = sub_1A9334800();
  sub_1A9334894(v4, a2, &v10);
  v6 = v11;
  v5 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 1);
  *this = v6;
  *(this + 1) = v5;
  if (v7)
  {
    sub_1A9335264(v7);
  }

  v8 = v10;
  if (v12)
  {
    sub_1A9335264(v12);
  }

  return v8;
}

uint64_t sub_1A9334800()
{
  if ((atomic_load_explicit(&qword_1EB386610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB386610))
  {
    operator new();
  }

  return qword_1EB386608;
}

void sub_1A9334894(os_unfair_lock_s *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v8 = a2;
  sub_1A93352D0(a1, &v8, &v8, &v6);
  v4 = v6;
  if (*(v6 + 8) && *(v6 + 16))
  {
    *a3 = 0;
    v5 = v7;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 1936292453;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  if (v7)
  {
    sub_1A9335264(v7);
  }
}

uint64_t MultiRadixFFT::Size(MultiRadixFFT *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

uint64_t MultiRadixRealFFT::Initialize(MultiRadixRealFFT *this, unsigned int a2)
{
  v4 = sub_1A93349AC();
  sub_1A9334A40(v4, a2, &v10);
  v6 = v11;
  v5 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 1);
  *this = v6;
  *(this + 1) = v5;
  if (v7)
  {
    sub_1A9335264(v7);
  }

  v8 = v10;
  if (v12)
  {
    sub_1A9335264(v12);
  }

  return v8;
}

uint64_t sub_1A93349AC()
{
  if ((atomic_load_explicit(&qword_1EB386620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB386620))
  {
    operator new();
  }

  return qword_1EB386618;
}

void sub_1A9334A40(os_unfair_lock_s *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v8 = a2;
  sub_1A9335C0C(a1, &v8, &v8, &v6);
  v4 = v6;
  if (*(v6 + 8) && *(v6 + 16))
  {
    *a3 = 0;
    v5 = v7;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 1936292453;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  if (v7)
  {
    sub_1A9335264(v7);
  }
}

uint64_t MultiRadixRealFFT::Size(MultiRadixRealFFT *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

uint64_t MultiRadixFFT::CplxOutOfPlaceTransform(MultiRadixFFT *this, const DSPSplitComplex *a2, DSPSplitComplex *a3, int a4)
{
  if (!*this)
  {
    abort();
  }

  v4 = 16;
  if (a4 == 1)
  {
    v4 = 8;
  }

  vDSP_DFT_Execute(*(*this + v4), a2->realp, a2->imagp, a3->realp, a3->imagp);
  return 0;
}

uint64_t MultiRadixRealFFT::RealInPlaceTransform(MultiRadixRealFFT *this, DSPSplitComplex *a2, int a3, float a4)
{
  if (!*this)
  {
    abort();
  }

  v8 = 16;
  if (a3 == 1)
  {
    v8 = 8;
  }

  vDSP_DFT_Execute(*(*this + v8), a2->realp, a2->imagp, a2->realp, a2->imagp);
  if (a3 == 1)
  {
    v10 = a4 * 0.5;
    MEMORY[0x1AC588080](a2->realp, 1, &v10, a2->realp, 1, **this >> 1);
    MEMORY[0x1AC588080](a2->imagp, 1, &v10, a2->imagp, 1, **this >> 1);
  }

  return 0;
}

uint64_t MultiRadixRealFFT::RealOutOfPlaceForwardTransform(MultiRadixRealFFT *this, DSPComplex *__C, DSPSplitComplex *a3, float a4)
{
  vDSP_ctoz(__C, 2, a3, 1, **this >> 1);
  MultiRadixRealFFT::RealInPlaceTransform(this, a3, 1, a4);
  return 0;
}

uint64_t MultiRadixRealFFT::RealOutOfPlaceInverseTransform(MultiRadixRealFFT *this, const DSPSplitComplex *a2, DSPComplex *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    abort();
  }

  if (**this)
  {
    v5 = MEMORY[0x1EEE9AC00]();
    v8 = (&v14 - ((v7 + 15) & 0x7FFFFFFF0));
    __Z.realp = v8;
    v9 = *v5;
    if (*v5)
    {
      v10 = *v9 >> 1;
    }

    else
    {
      v10 = 0;
    }

    __Z.imagp = &v8[v10];
    vDSP_DFT_Execute(v9[2], *v6, v6[1], v8, __Z.imagp);
    if (*this)
    {
      v12 = **this >> 1;
    }

    else
    {
      v12 = 0;
    }

    vDSP_ztoc(&__Z, 1, a3, 2, v12);
    result = 0;
  }

  else
  {
    result = 561214580;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MultiRadixFFT_Dispose(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      sub_1A9335264(v1);
    }

    JUMPOUT(0x1AC586D00);
  }

  return result;
}

unsigned int **MultiRadixFFT_Size(unsigned int **result)
{
  if (result)
  {
    if (*result)
    {
      return **result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MultiRadixFFT_CplxInPlaceTransform(MultiRadixFFT *a1, DSPSplitComplex *a2, int a3)
{
  if (!a1)
  {
    return 561214580;
  }

  MultiRadixFFT::CplxOutOfPlaceTransform(a1, a2, a2, a3);
  return 0;
}

uint64_t MultiRadixFFT_CplxOutOfPlaceTransform(MultiRadixFFT *a1, const DSPSplitComplex *a2, DSPSplitComplex *a3, int a4)
{
  if (!a1)
  {
    return 561214580;
  }

  MultiRadixFFT::CplxOutOfPlaceTransform(a1, a2, a3, a4);
  return 0;
}

uint64_t MultiRadixRealFFT_Dispose(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      sub_1A9335264(v1);
    }

    JUMPOUT(0x1AC586D00);
  }

  return result;
}

unsigned int **MultiRadixRealFFT_Size(unsigned int **result)
{
  if (result)
  {
    if (*result)
    {
      return **result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MultiRadixRealFFT_RealInPlaceTransform(MultiRadixRealFFT *a1, DSPSplitComplex *a2, int a3)
{
  if (!a1)
  {
    return 561214580;
  }

  MultiRadixRealFFT::RealInPlaceTransform(a1, a2, a3, 1.0);
  return 0;
}

uint64_t MultiRadixRealFFT_RealOutOfPlaceForwardTransform(MultiRadixRealFFT *a1, DSPComplex *__C, DSPSplitComplex *a3)
{
  if (!a1)
  {
    return 561214580;
  }

  vDSP_ctoz(__C, 2, a3, 1, **a1 >> 1);
  MultiRadixRealFFT::RealInPlaceTransform(a1, a3, 1, 1.0);
  return 0;
}

uint64_t MultiRadixRealFFT_RealOutOfPlaceInverseTransform(MultiRadixRealFFT *a1, const DSPSplitComplex *a2, DSPComplex *a3)
{
  if (a1)
  {
    return MultiRadixRealFFT::RealOutOfPlaceInverseTransform(a1, a2, a3);
  }

  else
  {
    return 561214580;
  }
}

float realFFTMultiply(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6, unsigned int a7)
{
  __A.realp = a1;
  __A.imagp = a2;
  __B.realp = a3;
  __B.imagp = a4;
  v13.realp = a5;
  v13.imagp = a6;
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  vDSP_zvmul(&__A, 1, &__B, 1, &v13, 1, a7 >> 1, 1);
  imagp = v13.imagp;
  *v13.realp = v7 * v9;
  result = v8 * v10;
  *imagp = v8 * v10;
  return result;
}

void realFFTZeroPad(const DSPComplex *a1, float *a2, float *a3, unsigned int a4, int a5, MultiRadixRealFFT *a6)
{
  v11.realp = a2;
  v11.imagp = a3;
  v9 = a4 >> 1;
  vDSP_ctoz(a1, 2, &v11, 1, v9);
  if (a5 - a4 >= 2)
  {
    v10 = 16 * ((a5 - a4) >> 1);
    bzero(&v11.realp[v9], v10);
    bzero(&v11.imagp[v9], v10);
  }

  if (a6)
  {
    MultiRadixRealFFT::RealInPlaceTransform(a6, &v11, 1, 1.0);
  }
}

uint64_t realIFFTUnload(float *a1, float *a2, DSPComplex *__C, unsigned int a4, unsigned int a5, MultiRadixRealFFT *this, float a7)
{
  v12.realp = a1;
  v12.imagp = a2;
  v11 = a7;
  __Z.realp = &a1[a5 >> 1];
  __Z.imagp = &a2[a5 >> 1];
  if (this)
  {
    MultiRadixRealFFT::RealInPlaceTransform(this, &v12, -1, 1.0);
  }

  vDSP_ztoc(&__Z, 1, __C, 2, a4 >> 1);
  return MEMORY[0x1AC588080](__C, 1, &v11, __C, 1, a4);
}

void sub_1A9335264(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_1A93352D0(os_unfair_lock_s *a1@<X0>, _DWORD *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  os_unfair_lock_lock(a1);
  sub_1A9335514(a1, a2, a4);
  if (!*a4)
  {
    v8 = a4[1];
    if (v8)
    {
      sub_1A9335264(v8);
    }

    Setup = vDSP_DFT_zop_CreateSetup(0, *a3, vDSP_DFT_FORWARD);
    if (Setup)
    {
      vDSP_DFT_zop_CreateSetup(Setup, *a3, vDSP_DFT_INVERSE);
    }

    operator new();
  }

  os_unfair_lock_unlock(a1);
}

void sub_1A93354D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, char a14)
{
  if (a12)
  {
    sub_1A9335264(a12);
  }

  os_unfair_lock_unlock(v14);
  _Unwind_Resume(a1);
}

void sub_1A9335514(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v5 = a1 + 8;
  v6 = sub_1A933561C(*(a1 + 8), *(a1 + 16));
  sub_1A93356C8(v5, v6, *(v5 + 8));
  v8 = *v5;
  v7 = *(v5 + 8);
  while (1)
  {
    if (v8 == v7)
    {
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    v9 = v8[1];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        break;
      }
    }

LABEL_8:
    v8 += 2;
  }

  if (!*v8 || (v11 = *(*v8 + 16), *v11 != *a2))
  {
    sub_1A9335264(v10);
    goto LABEL_8;
  }

  *a3 = v11;
  a3[1] = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);

  sub_1A9335264(v10);
}

uint64_t *sub_1A93355D4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_1A9335A54(v2);
    MEMORY[0x1AC586D00](v3, 0x1060C40CA828048);
  }

  return a1;
}

uint64_t *sub_1A933561C(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (1)
    {
      v5 = v2[1];
      if (!v5 || *(v5 + 8) == -1)
      {
        break;
      }

      v2 += 2;
      if (v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = v2 + 2; i != a2; i += 2)
      {
        v7 = i[1];
        if (v7 && *(v7 + 8) != -1)
        {
          v8 = *i;
          *i = 0;
          i[1] = 0;
          v9 = v2[1];
          *v2 = v8;
          v2[1] = v7;
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }

          v2 += 2;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1A93356C8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_1A933574C(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__int128 *sub_1A933574C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1A9335858()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1A93358AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CEF558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC586D00);
}

void *sub_1A933590C(void *a1)
{
  sub_1A9335954(a1[3]);
  sub_1A93355D4(a1 + 2);
  v2 = a1[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1A9335954(uint64_t a1)
{
  if (os_unfair_lock_trylock(a1))
  {
    v2 = sub_1A933561C(*(a1 + 8), *(a1 + 16));
    sub_1A93356C8(a1 + 8, v2, *(a1 + 16));

    os_unfair_lock_unlock(a1);
  }
}

void sub_1A93359CC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_1A9335264(v5);
      }
    }
  }
}

uint64_t sub_1A9335A54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    vDSP_DFT_DestroySetup(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    vDSP_DFT_DestroySetup(v3);
  }

  return a1;
}

void sub_1A9335AAC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1A9335B08(exception, a1);
  __cxa_throw(exception, off_1E787FDB8, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1A9335B08(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1A9335B3C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1A9335858();
}

void **sub_1A9335B84(void **a1)
{
  sub_1A9335BB8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A9335BB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_1A9335C0C(os_unfair_lock_s *a1@<X0>, _DWORD *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  os_unfair_lock_lock(a1);
  sub_1A9335514(a1, a2, a4);
  if (!*a4)
  {
    v8 = a4[1];
    if (v8)
    {
      sub_1A9335264(v8);
    }

    Setup = vDSP_DFT_zrop_CreateSetup(0, *a3, vDSP_DFT_FORWARD);
    if (Setup)
    {
      vDSP_DFT_zrop_CreateSetup(Setup, *a3, vDSP_DFT_INVERSE);
    }

    operator new();
  }

  os_unfair_lock_unlock(a1);
}

void sub_1A9335E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, char a14)
{
  if (a12)
  {
    sub_1A9335264(a12);
  }

  os_unfair_lock_unlock(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1A9335E94()
{
  qword_1ED970EA8 = objc_alloc_init(TTSAXResourceMigrationUtilities);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1A9336678(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_1A9337520()
{
  v0 = AXTTSLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A9324000, v0, OS_LOG_TYPE_DEFAULT, "Canceled asset download", v1, 2u);
  }
}

void sub_1A93375CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_msgSend_assistantVoiceMaps(MEMORY[0x1E69D3328], a2, a3, a4, a5);
  v9 = objc_msgSend_deprecatedVoicesMap(v11, v5, v6, v7, v8);
  v10 = qword_1ED9705B0;
  qword_1ED9705B0 = v9;
}

void sub_1A933776C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (a2)
  {
    v5 = *(v3 + 16);
    v6 = *MEMORY[0x1E69E9840];
    v7 = *(a1 + 32);
    a3.n128_f64[0] = v4;

    v5(v7, 1, 0, a3);
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v14 = *MEMORY[0x1E696A588];
    v15[0] = @"Download failed";
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], 0, v15, &v14, 1);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(v8, v11, v9, 0, v10);
    (*(v3 + 16))(v3, 1, v12, v4);

    v13 = *MEMORY[0x1E69E9840];
  }
}

void sub_1A9338204(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

_OWORD *VPTimeFreqConverter::VPTimeFreqConverter(_OWORD *a1, _DWORD *a2)
{
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[2] = 0u;
  VPTimeFreqConverter::Setup(a1, a2);
  return a1;
}

void sub_1A9338268(_Unwind_Exception *exception_object)
{
  v3 = v1[20];
  if (v3)
  {
    v1[21] = v3;
    operator delete(v3);
  }

  v4 = v1[17];
  if (v4)
  {
    v1[18] = v4;
    operator delete(v4);
  }

  v5 = v1[14];
  if (v5)
  {
    v1[15] = v5;
    operator delete(v5);
  }

  v6 = v1[11];
  if (v6)
  {
    v1[12] = v6;
    operator delete(v6);
  }

  v7 = v1[8];
  if (v7)
  {
    v1[9] = v7;
    operator delete(v7);
  }

  v8 = v1[5];
  if (v8)
  {
    sub_1A9335264(v8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VPTimeFreqConverter::Setup(uint64_t a1, _DWORD *a2)
{
  *(a1 + 184) = 0;
  if (*a2)
  {
    return 4294967246;
  }

  v2 = a2[3];
  if (v2 != a2[2])
  {
    return 4294967246;
  }

  v3 = a2[4];
  if (v3 != 2 * v2)
  {
    return 4294967246;
  }

  result = 4294967246;
  if (v3)
  {
    v6 = a2[5];
    if (v6)
    {
      if (v2)
      {
        if (v6 == v3)
        {
          v7 = a2[1];
          *a1 = 0;
          *(a1 + 4) = v7;
          *(a1 + 8) = v2;
          *(a1 + 12) = v2;
          *(a1 + 16) = v3;
          *(a1 + 20) = v3;
          *(a1 + 24) = a2[6];
          *(a1 + 28) = v3 >> 1;
          operator new[]();
        }
      }
    }
  }

  return result;
}

void VPTimeFreqConverter::VPTimeFreqConverter(VPTimeFreqConverter *this, int a2, int a3)
{
  *(this + 169) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  v3[0] = 0;
  v3[1] = a2;
  v3[2] = a3;
  v3[3] = a3;
  v3[4] = 2 * a3;
  v3[5] = 2 * a3;
  *&v3[6] = 1.0 / (2 * a3);
  VPTimeFreqConverter::Setup(this, v3);
}

void sub_1A933849C(_Unwind_Exception *exception_object)
{
  v3 = v1[20];
  if (v3)
  {
    v1[21] = v3;
    operator delete(v3);
  }

  v4 = v1[17];
  if (v4)
  {
    v1[18] = v4;
    operator delete(v4);
  }

  v5 = v1[14];
  if (v5)
  {
    v1[15] = v5;
    operator delete(v5);
  }

  v6 = v1[11];
  if (v6)
  {
    v1[12] = v6;
    operator delete(v6);
  }

  v7 = v1[8];
  if (v7)
  {
    v1[9] = v7;
    operator delete(v7);
  }

  v8 = v1[5];
  if (v8)
  {
    sub_1A9335264(v8);
  }

  _Unwind_Resume(exception_object);
}

void VPTimeFreqConverter::~VPTimeFreqConverter(VPTimeFreqConverter *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x1AC586CE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x1AC586CE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
    operator delete(v7);
  }

  v8 = *(this + 8);
  if (v8)
  {
    *(this + 9) = v8;
    operator delete(v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    sub_1A9335264(v9);
  }
}

uint64_t VPTimeFreqConverter::IsValid(VPTimeFreqConverter *this)
{
  if (*(this + 184))
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t VPTimeFreqConverter::Analyze(VPTimeFreqConverter *this, const float *a2, DSPSplitComplex *a3)
{
  if (!*(this + 184) || (*(this + 1) | 2) != 2)
  {
    return 4294956433;
  }

  if (*this)
  {
    return 4294967292;
  }

  memcpy(*(this + 8), (*(this + 8) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
  memcpy((*(this + 8) + 4 * (*(this + 4) - *(this + 3))), a2, 4 * *(this + 3));
  MEMORY[0x1AC588000](*(this + 17), 1, *(this + 8), 1, *(this + 11), 1, *(this + 4));
  MEMORY[0x1AC588080](*(this + 11), 1, this + 24, *(this + 11), 1, *(this + 4));
  v7 = *(this + 11);

  return MultiRadixRealFFT::RealOutOfPlaceForwardTransform((this + 32), v7, a3, 1.0);
}

uint64_t VPTimeFreqConverter::Synthesize(VPTimeFreqConverter *this, const DSPSplitComplex *a2, float *a3)
{
  if (!*(this + 184))
  {
    return 4294956433;
  }

  if ((*(this + 1) - 1) > 1)
  {
    return 4294956433;
  }

  if (*this)
  {
    return 4294967292;
  }

  result = MultiRadixRealFFT::RealOutOfPlaceInverseTransform((this + 32), a2, *(this + 11));
  if (!result)
  {
    MEMORY[0x1AC588000](*(this + 11), 1, *(this + 20), 1, *(this + 11), 1, *(this + 4));
    MEMORY[0x1AC587FA0](*(this + 11), 1, *(this + 14), 1, *(this + 14), 1, *(this + 4));
    memcpy(a3, *(this + 14), 4 * *(this + 3));
    memmove(*(this + 14), (*(this + 14) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
    bzero((*(this + 14) + 4 * (*(this + 4) - *(this + 3))), 4 * *(this + 3));
    return 0;
  }

  return result;
}

void sub_1A93387C4(void *a1, unint64_t a2)
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
    sub_1A9338960(a1, a2 - v2);
  }
}

uint64_t VPTimeFreqConverter_Dispose(VPTimeFreqConverter *a1)
{
  if (a1)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(a1);
    MEMORY[0x1AC586D00]();
  }

  return 0;
}

uint64_t VPTimeFreqConverter_IsValid(uint64_t a1)
{
  result = 4294967246;
  if (a1)
  {
    if (*(a1 + 184))
    {
      return 0;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t VPTimeFreqConverter_Analyze(VPTimeFreqConverter *a1, const float *a2, DSPSplitComplex *a3)
{
  if (a1)
  {
    return VPTimeFreqConverter::Analyze(a1, a2, a3);
  }

  else
  {
    return 4294967246;
  }
}

uint64_t VPTimeFreqConverter_Synthesize(VPTimeFreqConverter *a1, const DSPSplitComplex *a2, float *a3)
{
  if (a1)
  {
    return VPTimeFreqConverter::Synthesize(a1, a2, a3);
  }

  else
  {
    return 4294967246;
  }
}

void sub_1A9338960(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_1A9335A94();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1A9338A90(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_1A9338A90(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1A9335858();
}

uint64_t TTSGetComponentsInOldSiriVoiceIdentifier(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v11 = objc_msgSend_componentsSeparatedByString_(v7, v8, @"_", v9, v10);
  if (objc_msgSend_count(v11, v12, v13, v14, v15) >= 4 && objc_msgSend_isOldSiriVoiceIdentifier_(TTSAlternativeVoices, v16, v7, v17, v18))
  {
    if (a2)
    {
      *a2 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, 1, v20, v21);
    }

    if (a3)
    {
      *a3 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, 2, v20, v21);
    }

    if (a4)
    {
      *a4 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, 3, v20, v21);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t TTSGetComponentsInNamedSiriVoiceIdentifier(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v11 = objc_msgSend_componentsSeparatedByString_(v7, v8, @"_", v9, v10);
  if (objc_msgSend_count(v11, v12, v13, v14, v15) >= 4 && objc_msgSend_isSiriVoiceIdentifier_(TTSAlternativeVoices, v16, v7, v17, v18))
  {
    if (a2)
    {
      *a2 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, 1, v20, v21);
    }

    if (a3)
    {
      *a3 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, 2, v20, v21);
    }

    if (a4)
    {
      *a4 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, 3, v20, v21);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

BOOL TTSGetComponentsInNashvilleVoiceIdentifier(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_componentsSeparatedByString_(a1, a2, @"-", a4, a5);
  if (objc_msgSend_count(v7, v8, v9, v10, v11) >= 2)
  {
    *a3 = objc_msgSend_lastObject(v7, v12, v13, v14, v15);
    v21 = objc_msgSend_count(v7, v17, v18, v19, v20);
    v24 = objc_msgSend_subarrayWithRange_(v7, v22, 0, v21 - 1, v23);
    v28 = objc_msgSend_componentsJoinedByString_(v24, v25, @"-", v26, v27);

    v32 = objc_msgSend_componentsSeparatedByString_(v28, v29, @".", v30, v31);
    v37 = objc_msgSend_count(v32, v33, v34, v35, v36);
    v16 = v37 > 1;
    if (v37 >= 2)
    {
      *a2 = objc_msgSend_lastObject(v32, v38, v39, v40, v41);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void AUSpeechEnhancerV2::AUSpeechEnhancerV2(AUSpeechEnhancerV2 *this, OpaqueAudioComponentInstance *a2)
{
  v3 = ausdk::AUBase::AUBase(this, a2, 1, 1, 0);
  *v3 = &unk_1F1CEF5E8;
  *(v3 + 69) = 0;
  *(v3 + 140) = 0;
  *(v3 + 33) = 0u;
  *(v3 + 272) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 162) = 1;
  *(v3 + 660) = 0;
  *(v3 + 668) = 0;
  *(v3 + 652) = 0;
  *(v3 + 169) = 0;
  sub_1A9339404(v3 + 82);
  v4 = sub_1A933BE1C(this + 32, 0);
  (*(*v4 + 40))(v4, (*(this + 83) - *(this + 82)) >> 5);
  ausdk::AUBase::CreateElements(this);
  v5 = *(this + 82);
  if (*(this + 83) != v5)
  {
    v6 = 0;
    v7 = 24;
    do
    {
      ausdk::AUBase::SetParameter(this, v6++, 0, 0, *(v5 + v7));
      v5 = *(this + 82);
      v7 += 32;
    }

    while (v6 < (*(this + 83) - v5) >> 5);
  }
}

void sub_1A93393C4(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 83) = v5;
    operator delete(v5);
  }

  sub_1A933BE70(v1 + 592);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v6;
    operator delete(v6);
  }

  ausdk::AUBase::~AUBase(v1);
  _Unwind_Resume(a1);
}

void sub_1A9339404(void *a1)
{
  *&v2 = @"Bypass Algorithm + Auto Volume";
  *(&v2 + 1) = 0x8000000000000002;
  *&v3 = 0x3F80000000000000;
  *(&v3 + 1) = 0xFFFFFFFF00000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Wind Flag";
  *(&v2 + 1) = 0x800000000000;
  *&v3 = 0x3F80000000000000;
  *(&v3 + 1) = 0x200000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Loudspeaker Calibration";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 0x43160000C2480000;
  *(&v3 + 1) = 0x342B40000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Signal Spectrum Smoothing Time";
  *(&v2 + 1) = 0x8000000000000004;
  *&v3 = 0x4120000000000000;
  *(&v3 + 1) = 0x340800000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Noise Spectrum Attack Time";
  *(&v2 + 1) = 0x8000000000000004;
  *&v3 = 0x4120000000000000;
  *(&v3 + 1) = 0x340000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Noise Spectrum Release Time";
  *(&v2 + 1) = 0x8000000000000004;
  *&v3 = 0x4120000000000000;
  *(&v3 + 1) = 0x33F000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Environmental Noise Power (dBA)";
  *(&v2 + 1) = 0x80000000000DLL;
  *&v3 = 0x4302000000000000;
  *(&v3 + 1) = 0x241F00000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Auto Volume Low Noise";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 0x42F0000000000000;
  *(&v3 + 1) = 0x442480000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Auto Volume High Noise";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 0x42F0000000000000;
  *(&v3 + 1) = 0x442C80000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Auto Volume Low Slope";
  *(&v2 + 1) = -0.0;
  *&v3 = 0x40A0000000000000;
  *(&v3 + 1) = 0x43ECCCCCDLL;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Auto Volume High Slope";
  *(&v2 + 1) = -0.0;
  *&v3 = 0x40A0000000000000;
  *(&v3 + 1) = 0x43F4CCCCDLL;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Total Volume Max Gain";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 0x41F00000C1200000;
  *(&v3 + 1) = 0x440A00000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Auto Volume Gain";
  *(&v2 + 1) = 0x80000000000DLL;
  *&v3 = 0x41F0000000000000;
  *(&v3 + 1) = 0x400000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Bandwidth";
  *(&v2 + 1) = 0x8000000000000008;
  *&v3 = 0x469C400042C80000;
  *(&v3 + 1) = 0x3463B8000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Regularization High SNR";
  *(&v2 + 1) = 0x840000000000000DLL;
  *&v3 = 0x4248000040A00000;
  *(&v3 + 1) = 0x541700000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"EQ Min Gain (low freq)";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 3248488448;
  *(&v3 + 1) = 0x5C0A00000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"EQ Max Gain (low freq)";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 0x41A0000000000000;
  *(&v3 + 1) = 0x541200000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Post Auto Volume Signal Power (dBA)";
  *(&v2 + 1) = 0x80000000000DLL;
  *&v3 = 0x4302000000000000;
  *(&v3 + 1) = 0x241F00000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Num Iterations to Converge EQ";
  *(&v2 + 1) = 0x400800000000000;
  *&v3 = 0x4348000000000000;
  *(&v3 + 1) = 0x500000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Signal Spectrum";
  *(&v2 + 1) = 0x8000000000000001;
  *&v3 = 0x3F80000000000000;
  *(&v3 + 1) = 0x13F800000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Enable EQ Display (expert mode)";
  *(&v2 + 1) = 0x8000000000000002;
  *&v3 = 0x3F80000000000000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"User Volume Gain";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41700000C1F00000;
  *(&v3 + 1) = 0x400000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Total Volume Gain";
  *(&v2 + 1) = 0x80000000000DLL;
  *&v3 = 0x41700000C1F00000;
  *(&v3 + 1) = 0x400000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"EQ Min Gain (high freq)";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 3248488448;
  *(&v3 + 1) = 0x5C0A00000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"EQ Max Gain (high freq)";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 0x41A0000000000000;
  *(&v3 + 1) = 0x541200000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"EQ Frequency Boundary";
  *(&v2 + 1) = 0x8000000000000008;
  *&v3 = 0x469C400042C80000;
  *(&v3 + 1) = 0x544480000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"EQ Low Noise";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 0x42F0000000000000;
  *(&v3 + 1) = 0x5425C0000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Change in Environment";
  *(&v2 + 1) = 0x800000000000;
  *&v3 = 0x3F80000000000000;
  *(&v3 + 1) = 0x200000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"0.20 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"0.40 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"0.80 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"1.25 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"1.60 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"2.00 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"2.50 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"3.15 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"4.00 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"5.00 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"6.30 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"8.00 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"10.00 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"12.50 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"16.00 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"20.00 kHz";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x41F00000C1A00000;
  *(&v3 + 1) = 0x700000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"EQ Slew Rate (dB/s)";
  *(&v2 + 1) = 0x8400000000000000;
  *&v3 = 0x4170000000000000;
  *(&v3 + 1) = 0x540400000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Noise Slew Rate (dB/s)";
  *(&v2 + 1) = 0x8400000000000000;
  *&v3 = 0x4170000000000000;
  *(&v3 + 1) = 0x340A00000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Auto Volume Slew Rate (dB/s)";
  *(&v2 + 1) = 0x8400000000000000;
  *&v3 = 0x41F0000000000000;
  *(&v3 + 1) = 0x440A00000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Near-End Speech Presence";
  *(&v2 + 1) = 0x400800000000000;
  *&v3 = 0x3F80000000000000;
  *(&v3 + 1) = 0x200000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Near-End SPP Threshold";
  *(&v2 + 1) = 0x8400000000000000;
  *&v3 = 0x3F80000000000000;
  *(&v3 + 1) = 0x23E800000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Enhancement Algorithm";
  *(&v2 + 1) = 0x8000000000000001;
  *&v3 = 0x4000000000000000;
  *(&v3 + 1) = 0x13F800000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Auto Volume";
  *(&v2 + 1) = 0x8000000000000001;
  *&v3 = 0x3F80000000000000;
  *(&v3 + 1) = 0x100000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"DRC Naturalness";
  *(&v2 + 1) = -0.0;
  LODWORD(v3) = 1056964608;
  *(&v3 + 4) = 0x3F4CCCCD3F800000;
  HIDWORD(v3) = 6;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"DRC Min Threshold Offset (dB)";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 0x41F0000000000000;
  *(&v3 + 1) = 0x640400000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"DRC Band Importance Adjustment (L)";
  *(&v2 + 1) = -0.0;
  *&v3 = 0x3F8000003DCCCCCDLL;
  *(&v3 + 1) = 0x63F000000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"DRC Band Importance Adjustment (MH)";
  *(&v2 + 1) = -0.0;
  *&v3 = 0x3F8000003DCCCCCDLL;
  *(&v3 + 1) = 0x63F800000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"DRC Slope Adjustment";
  *(&v2 + 1) = -0.0;
  *&v3 = 0x404000003F800000;
  *(&v3 + 1) = 0x640200000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"DRC Min Gain (low freq)";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 3253731328;
  *(&v3 + 1) = 0x6C1A00000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"DRC Max Gain (low freq)";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 0x41F0000000000000;
  *(&v3 + 1) = 0x641700000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"DRC Min Gain (high freq)";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 3253731328;
  *(&v3 + 1) = 0x6C1700000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"DRC Max Gain (high freq)";
  *(&v2 + 1) = 0x800000000000000DLL;
  *&v3 = 0x420C000000000000;
  *(&v3 + 1) = 0x641C80000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Noise dBA SPL";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x42C8000000000000;
  *(&v3 + 1) = 0x641F00000;
  sub_1A933BCFC(a1, &v2);
  *&v2 = @"Current Linear Volume";
  *(&v2 + 1) = 0x40080000000000DLL;
  *&v3 = 0x3F80000000000000;
  *(&v3 + 1) = 0x63F000000;
  sub_1A933BCFC(a1, &v2);
  if (a1[1] - *a1 != 1984)
  {
    sub_1A9577E28();
  }
}

void AUSpeechEnhancerV2::~AUSpeechEnhancerV2(AUSpeechEnhancerV2 *this)
{
  *this = &unk_1F1CEF5E8;
  v2 = *(this + 82);
  if (v2)
  {
    *(this + 83) = v2;
    operator delete(v2);
  }

  v4 = (this + 624);
  sub_1A933BEC8(&v4);
  v4 = (this + 600);
  sub_1A933BEC8(&v4);
  sub_1A933C104(this + 74, 0);
  v3 = *(this + 71);
  if (v3)
  {
    *(this + 72) = v3;
    operator delete(v3);
  }

  ausdk::AUBase::~AUBase(this);
}

{
  AUSpeechEnhancerV2::~AUSpeechEnhancerV2(this);

  JUMPOUT(0x1AC586D00);
}

uint64_t AUSpeechEnhancerV2::Initialize(AUSpeechEnhancerV2 *this)
{
  result = ausdk::AUBase::Initialize(this);
  if (!result)
  {
    v3 = sub_1A933BF74(this + 80, 0);
    v4 = sub_1A933BF74(this + 128, 0);
    v5 = *(v3 + 88);
    *(this + 545) = v5 == 1718773105;
    v6 = *(v3 + 108);
    *(this + 133) = v6;
    v7 = *(v4 + 108);
    *(this + 134) = v7;
    v8 = v5 == 1819304813 || v5 == 1718773105;
    if (v8 && v6 == v7 && *(v3 + 80) == *(v4 + 80))
    {
      *(this + 132) = (*(sub_1A933BF74(this + 128, 0) + 80) + 0.5);
      *(this + 135) = *(this + 84);
      v9 = *(this + 69);
      if (v9 > 0.0)
      {
        v10 = *(this + 140);
        if (v10)
        {
          v11 = v9;
          sub_1A933A0B4((v10 + 1), &v13, 0.0, v11 * 0.5);
          v12 = *(this + 71);
          if (v12)
          {
            *(this + 72) = v12;
            operator delete(v12);
          }

          *(this + 568) = v13;
          *(this + 73) = v14;
        }
      }

      AUSpeechEnhancerV2::setupCore(this);
    }

    return 4294956428;
  }

  return result;
}

void sub_1A933A0B4(unint64_t a1@<X0>, float **a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  sub_1A933C770(a2, a1);
  v8 = *a2;
  __B = (a4 - a3) / (a1 - 1);
  __A = a3;
  vDSP_vramp(&__A, &__B, v8, 1, a1);
}

void sub_1A933A128(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpeechEnhancerV2::Reset(AUSpeechEnhancerV2 *this, int16x4_t a2)
{
  if (*(this + 17) == 1)
  {
    v3 = *(this + 74);
    if (v3)
    {
      sub_1A933C824(v3, a2);
    }
  }

  return ausdk::AUBase::Reset(this);
}

uint64_t AUSpeechEnhancerV2::SupportedNumChannels(AUSpeechEnhancerV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &unk_1A9586600;
  }

  return 1;
}

uint64_t AUSpeechEnhancerV2::ValidFormat(AUSpeechEnhancerV2 *this, unsigned int a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  result = ausdk::AUBase::ValidFormat(this, a2, a3, a4);
  if ((result & 1) == 0 && a4->mFormatID == 1718773105)
  {
    v6 = *&a4->mBytesPerPacket;
    v7[0] = *&a4->mSampleRate;
    v7[1] = v6;
    v8 = *&a4->mBitsPerChannel;
    DWORD2(v7[0]) = 1819304813;
    v9 = 0;
    LODWORD(result) = sub_1A933BFF8(v7, &v9, 0);
    if (v9 == 4)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUSpeechEnhancerV2::GetPropertyInfo(AUSpeechEnhancerV2 *this, signed int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return ausdk::AUBase::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  if (a2 > 1002)
  {
    if (a2 == 1003)
    {
      *a6 = 1;
      v7 = 8;
      goto LABEL_13;
    }

    if (a2 != 1004 && a2 != 3700)
    {
      return ausdk::AUBase::GetPropertyInfo(this, a2, a3, a4, a5, a6);
    }

    goto LABEL_11;
  }

  if (a2 == 21)
  {
LABEL_11:
    *a6 = 1;
    v7 = 4;
    goto LABEL_13;
  }

  if (a2 != 1001)
  {
    return ausdk::AUBase::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  *a6 = 1;
  v7 = 4 * *(this + 84) + 4;
LABEL_13:
  *a5 = v7;
  return 0;
}

uint64_t AUSpeechEnhancerV2::GetProperty(AUSpeechEnhancerV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return ausdk::AUBase::GetProperty(this, a2, a3, a4, a5);
  }

  if (a2 == 3700)
  {
    v6 = *(this + 376);
  }

  else
  {
    if (a2 != 21)
    {
      return ausdk::AUBase::GetProperty(this, a2, a3, a4, a5);
    }

    v6 = *(this + 544);
  }

  *a5 = v6;
  return 0;
}

double AUSpeechEnhancerV2::SetProperty(float **this, signed int a2, unsigned int a3, unsigned int a4, unsigned int *__src, unsigned int a6, double result)
{
  if (a3)
  {
LABEL_2:

    ausdk::AUBase::SetProperty(this, a2, a3, a4, __src);
    return result;
  }

  if (a2 <= 1001)
  {
    if (a2 == 21)
    {
      *(this + 544) = *__src != 0;
      return result;
    }

    if (a2 != 1001)
    {
      goto LABEL_2;
    }

    if (*(this + 17) == 1)
    {
      if (__src)
      {
        v8 = a6 >> 2;
        v9 = *(this + 140);
        if (v8 == v9 + 1)
        {
          if (v9)
          {
            result = *(this + 69);
            if (result > 0.0)
            {
              v10 = this[71];
              if (v10)
              {
                v11 = *(this + 135);
                if (*(this + 132) == result && v11 == v9)
                {
                  memmove(*(this[74] + 138), __src, 4 * v9 + 4);
                }

                else
                {
                  sub_1A933A6E4(v10, v8, __src, *(this[74] + 135), (v11 + 1), *(this[74] + 138));
                }

                __C = 0.0;
                vDSP_sve(*(this[74] + 138), 1, &__C, (*(this + 135) + 1));
                MEMORY[0x1AC588080](*(this[74] + 174), 1, &__C, *(this[74] + 138), 1, (*(this + 135) + 1));
              }
            }
          }
        }
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 1002:
        if (*(this + 17) == 1 && __src)
        {
          sub_1A933A764(this[74], 1uLL, *__src);
        }

        break;
      case 1003:
        if (__src && (*(this + 17) & 1) == 0)
        {
          result = *__src;
          this[69] = *__src;
        }

        break;
      case 1004:
        if (__src && (*(this + 17) & 1) == 0)
        {
          *(this + 140) = *__src;
        }

        break;
      default:
        goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_1A933A6E4(float *a1, uint64_t a2, float *a3, float *a4, unint64_t a5, uint64_t a6)
{
  sub_1A933CBF8(a1, a2, a3, a4, a5, a6, *a3, a3[a2 - 1]);
  v11 = (a4[1] - *a4) / (a1[1] - *a1);
  return MEMORY[0x1AC588080](a6, 1, &v11, a6, 1, a5);
}

void *sub_1A933A764(void *result, unint64_t a2, float a3)
{
  if (a2 >= (result[1] - *result) >> 4)
  {
    sub_1A9577E54();
  }

  v3 = (*result + 16 * a2);
  if (v3[1] < a3)
  {
    a3 = v3[1];
  }

  if (a3 < *v3)
  {
    a3 = *v3;
  }

  v3[3] = a3;
  return result;
}

uint64_t AUSpeechEnhancerV2::GetParameterInfo(AUSpeechEnhancerV2 *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956418;
  }

  v4 = *(this + 82);
  if (a3 >= ((*(this + 83) - v4) >> 5))
  {
    return 4294956418;
  }

  v5 = v4 + 32 * a3;
  v6 = *(v5 + 12);
  buffer->unit = *(v5 + 8);
  buffer->minValue = *(v5 + 16);
  buffer->maxValue = *(v5 + 20);
  buffer->defaultValue = *(v5 + 24);
  v7 = v6 + 1098907648;
  buffer->flags = v6 + 1098907648;
  v8 = *(v5 + 28);
  if (v8 >= 1)
  {
    buffer->clumpID = v8;
    v7 |= 0x100000u;
  }

  v9 = *v5;
  buffer->cfNameString = *v5;
  buffer->flags = v7 | 0x8000000;
  CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
  return 0;
}

uint64_t AUSpeechEnhancerV2::GetParameterList(AUSpeechEnhancerV2 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    *a4 = 0;
    return 4294956430;
  }

  else
  {
    if (a3)
    {
      *(a3 + 22) = 0x140000003DLL;
      *(a3 + 8) = xmmword_1A9586684;
      *(a3 + 9) = unk_1A9586694;
      *(a3 + 10) = xmmword_1A95866A4;
      *(a3 + 4) = xmmword_1A9586644;
      *(a3 + 5) = unk_1A9586654;
      *(a3 + 6) = xmmword_1A9586664;
      *(a3 + 7) = unk_1A9586674;
      *a3 = xmmword_1A9586604;
      *(a3 + 1) = unk_1A9586614;
      *(a3 + 2) = xmmword_1A9586624;
      *(a3 + 3) = unk_1A9586634;
      *(a3 + 46) = xmmword_1A9586530;
      *(a3 + 50) = xmmword_1A9586540;
      *(a3 + 54) = xmmword_1A9586550;
      *(a3 + 58) = xmmword_1A9586560;
    }

    *a4 = 62;
    if (*(this + 83) - *(this + 82) != 1984)
    {
      sub_1A9577E80();
    }

    return 0;
  }
}

uint64_t AUSpeechEnhancerV2::GetParameterValueStrings(AUSpeechEnhancerV2 *this, int a2, int a3, const __CFArray **a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_2;
  }

  if (!a4)
  {
    result = 0;
    goto LABEL_13;
  }

  switch(a3)
  {
    case 19:
      v7 = &xmmword_1E7880088;
      goto LABEL_11;
    case 50:
      v7 = &xmmword_1E7880098;
LABEL_11:
      v10 = *v7;
      v6 = 2;
      goto LABEL_12;
    case 49:
      v10 = xmmword_1E7880070;
      v11 = @"None";
      v6 = 3;
LABEL_12:
      v8 = CFArrayCreate(0, &v10, v6, 0);
      result = 0;
      *a4 = v8;
      goto LABEL_13;
  }

LABEL_2:
  result = 4294956418;
LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AUSpeechEnhancerV2::SetParameter(AUSpeechEnhancerV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v6 = *(this + 82);
  if (a2 > ((*(this + 83) - v6) >> 5))
  {
    return 4294956418;
  }

  if ((*(v6 + 32 * a2 + 13) & 0x80) != 0)
  {
    if (a2 > 59)
    {
      if (a2 == 60)
      {
        v16 = *(this + 74);
        if (v16)
        {
          sub_1A933A764(v16, 0x3CuLL, a5);
          sub_1A933AB90(*(this + 74));
        }
      }

      else if (a2 == 61)
      {
        v14 = *(this + 74);
        if (v14)
        {
          sub_1A933A764(v14, 0x3DuLL, a5);
          sub_1A933AC28(*(this + 74));
        }
      }
    }

    else if (a2 == 21)
    {
      v15 = *(this + 74);
      if (v15)
      {
        sub_1A933A764(v15, 0x15uLL, a5);
        sub_1A933AB3C(*(this + 74));
      }
    }

    else if (a2 == 47)
    {
      v13 = *(this + 74);
      if (v13)
      {
        sub_1A933A764(v13, 0x2FuLL, a5);
      }
    }
  }

  else
  {
    ++*(this + 162);
  }

  return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
}

float sub_1A933AB3C(uint64_t a1)
{
  if (*(a1 + 8) - *a1 <= 0x150uLL)
  {
    sub_1A9577EAC();
  }

  result = exp(*(*a1 + 348) * 0.230258509);
  *(a1 + 140) = result;
  return result;
}

float sub_1A933AB90(void *a1)
{
  if (a1[1] - *a1 <= 0x3C0uLL)
  {
    sub_1A9577EAC();
  }

  v2 = exp(*(*a1 + 972) * 0.230258509);
  v3 = v2 * 1.45;
  v5 = v3;
  MEMORY[0x1AC588080](a1[174], 1, &v5, a1[138], 1, a1[97]);
  return sub_1A933CDA0((a1 + 237), (a1 + 138));
}

float sub_1A933AC28(float *a1)
{
  if (*(a1 + 1) - *a1 <= 0x3D0uLL)
  {
    sub_1A9577EAC();
  }

  v2 = cbrtf(*(*a1 + 988));
  sub_1A933A764(a1, 0x15uLL, (v2 * 58.0) + -58.0);
  if (*(a1 + 1) - *a1 <= 0x150uLL)
  {
    sub_1A9577EAC();
  }

  result = exp(*(*a1 + 348) * 0.230258509);
  a1[35] = result;
  return result;
}

uint64_t AUSpeechEnhancerV2::RestoreState(AudioComponentInstance *this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result && *(this + 17) == 1)
  {
    ++*(this + 162);
  }

  return result;
}

uint64_t AUSpeechEnhancerV2::Render(AUSpeechEnhancerV2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v8 = sub_1A933BF74(this + 80, 0);
  result = ausdk::AUInputElement::PullInput(v8, &v13, a3, 0, a4);
  if (!result)
  {
    v10 = sub_1A933BF74(this + 80, 0);
    v15[0] = sub_1A933ADF0(v10);
    v11 = sub_1A933BF74(this + 128, 0);
    v14 = sub_1A933ADF0(v11);
    result = (*(*this + 184))(this, a2, a4, 1, v15, 1, &v14);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A933ADF0(uint64_t a1)
{
  if (!*(a1 + 144))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A9577ED8();
    }

    exception = __cxa_allocate_exception(0x18uLL);
    sub_1A9333D44(exception, -1);
    __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
  }

  return *(a1 + 152) + 48;
}

uint64_t AUSpeechEnhancerV2::ProcessMultipleBufferLists(AUSpeechEnhancerV2 *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v7 = *(this + 135);
  if (v7 < a3)
  {
    return 4294956422;
  }

  v12 = v7 << *(this + 545);
  if (*(this + 544) == 1)
  {
    v13 = *(this + 133);
    if (v13)
    {
      v14 = 0;
      v15 = 16;
      do
      {
        v16 = *(&(*a5)->mNumberBuffers + v15);
        v17 = *(&(*a7)->mNumberBuffers + v15);
        if (v16 != v17 && v12 != 0)
        {
          memmove(v17, v16, 4 * v12);
          v13 = *(this + 133);
        }

        ++v14;
        v15 += 16;
      }

      while (v14 < v13);
    }

    return 0;
  }

  else
  {
    v19 = *(this + 162);
    if (v19 != *(this + 163))
    {
      *(this + 163) = v19;
      AUSpeechEnhancerV2::syncParametersWithCore(this);
    }

    v20 = *(this + 133);
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      v23 = 16;
      do
      {
        if (v12)
        {
          memmove(*(*(this + 75) + v21), *(&(*a5)->mNumberBuffers + v23), 4 * v12);
          v20 = *(this + 133);
        }

        ++v22;
        v21 += 24;
        v23 += 16;
      }

      while (v22 < v20);
    }

    sub_1A933B0B4(*(this + 74), this + 75, this + 78, *(this + 135), *(this + 545));
    v25 = *(this + 133);
    if (v25)
    {
      v26 = 0;
      v27 = 0;
      v28 = 16;
      do
      {
        if (v12)
        {
          memmove(*(&(*a7)->mNumberBuffers + v28), *(*(this + 78) + v26), 4 * v12);
          v25 = *(this + 133);
        }

        ++v27;
        v28 += 16;
        v26 += 24;
      }

      while (v27 < v25);
    }

    return AUSpeechEnhancerV2::updateMeterDisplay(this, v24);
  }
}

float AUSpeechEnhancerV2::syncParametersWithCore(AUSpeechEnhancerV2 *this)
{
  if (*(this + 83) != *(this + 82))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 74);
      v4 = sub_1A933BE1C(this + 32, 0);
      Parameter = ausdk::AUElement::GetParameter(v4, v2);
      sub_1A933A764(v3, v2++, Parameter);
    }

    while (v2 < (*(this + 83) - *(this + 82)) >> 5);
  }

  v6 = *(this + 74);

  return sub_1A933B640(v6);
}

uint64_t sub_1A933B0B4(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4, int a5)
{
  *&v31[12] = *MEMORY[0x1E69E9840];
  v5 = a2[1] - *a2;
  if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) != *(a1 + 792))
  {
    sub_1A9577F5C();
  }

  if (a3[1] - *a3 != v5)
  {
    sub_1A9577F88();
  }

  if (*(a1 + 760) != a4)
  {
    sub_1A9577FB4();
  }

  v8 = (*(*a2 + 8) - **a2) >> 2;
  if (a5)
  {
    if (v8 >= 2 * a4)
    {
      goto LABEL_6;
    }

LABEL_30:
    sub_1A957800C();
  }

  if (v8 < a4)
  {
    goto LABEL_30;
  }

LABEL_6:
  if (!*(a1 + 32))
  {
    v9 = *(a1 + 80);
    if (v9 <= 0.0)
    {
      sub_1A9577FE0();
    }

    *(a1 + 136) = *(a1 + 576) / v9;
    sub_1A933D24C(a1, *(a1 + 1080), *(a1 + 776), *(a1 + 1464));
    *&v29[0].realp = *(a1 + 136) / 10000000.0;
    MEMORY[0x1AC588080](*(a1 + 1464), 1, v29, *(a1 + 1416), 1, *(a1 + 776));
    v29[0] = xmmword_1A95866D4;
    v29[1] = unk_1A95866E4;
    *v30 = xmmword_1A95866F4;
    *&v30[12] = *(&xmmword_1A95866F4 + 12);
    __src.imagp = 0;
    v28 = 0;
    __src.realp = 0;
    sub_1A933D404(&__src, v29, v31, 0xFuLL);
    realp = __src.realp;
    v11 = __src.imagp - __src.realp;
    v12 = *(a1 + 544);
    if (v11 >= (*(a1 + 552) - v12) >> 2)
    {
      v11 = (*(a1 + 552) - v12) >> 2;
    }

    if (v11)
    {
      memmove(v12, __src.realp, 4 * v11);
      realp = __src.realp;
    }

    if (realp)
    {
      __src.imagp = realp;
      operator delete(realp);
    }
  }

  sub_1A933CE20(a1, a2, a5);
  sub_1A933CF2C(a1, a2, a5);
  v29[0].realp = **(a1 + 1536);
  v29[0].imagp = **(a1 + 1560);
  result = sub_1A933D044(a1, v29);
  if (*(a1 + 792))
  {
    v14 = result;
    v15 = 0;
    for (i = 0; *(a1 + 792) > i; ++i)
    {
      if (*(a1 + 8) == *a1)
      {
        sub_1A9577EAC();
      }

      if (*(*a1 + 12) <= 0.5)
      {
        __src.realp = 0;
        __src.imagp = 0;
        __src.realp = *(*(a1 + 1536) + v15);
        __src.imagp = *(*(a1 + 1560) + v15);
        v20 = *v14;
        v21 = *__src.imagp;
        v22 = *(a1 + 776) - 1;
        MEMORY[0x1AC588000](__src.realp, 1, *v14, 1, __src.realp, 1, v22);
        result = MEMORY[0x1AC588000](__src.imagp, 1, v20, 1, __src.imagp, 1, v22);
        *__src.imagp = v21 * *(v20 + 4 * v22);
        if (a5)
        {
          if (a4)
          {
            memmove(*(*a3 + v15), __src.realp, 4 * a4);
            imagp = __src.imagp;
            v19 = (*(*a3 + v15) + 4 * a4);
            goto LABEL_25;
          }
        }

        else
        {
          result = VPTimeFreqConverter::Synthesize(*(*(a1 + 2360) + 8 * i), &__src, *(a1 + 816));
          if (a4)
          {
            imagp = *(a1 + 816);
            v19 = *(*a3 + v15);
LABEL_25:
            v17 = 4 * a4;
LABEL_26:
            result = memmove(v19, imagp, v17);
          }
        }
      }

      else if (a4 << a5)
      {
        v17 = 4 * (a4 << a5);
        imagp = *(*a2 + v15);
        v19 = *(*a3 + v15);
        goto LABEL_26;
      }

      v15 += 24;
    }
  }

  ++*(a1 + 32);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AUSpeechEnhancerV2::updateMeterDisplay(AUSpeechEnhancerV2 *this, __n128 a2)
{
  updated = AUSpeechEnhancerV2::updateMeterDisplay(this, 1u, a2);
  v5 = AUSpeechEnhancerV2::updateMeterDisplay(this, 0x1Bu, v4);
  v7 = AUSpeechEnhancerV2::updateMeterDisplay(this, 0x11u, v6);
  v9 = AUSpeechEnhancerV2::updateMeterDisplay(this, 6u, v8);
  v11 = AUSpeechEnhancerV2::updateMeterDisplay(this, 0xCu, v10);
  v13 = AUSpeechEnhancerV2::updateMeterDisplay(this, 0x15u, v12);
  v15 = AUSpeechEnhancerV2::updateMeterDisplay(this, 0x16u, v14);
  v17 = AUSpeechEnhancerV2::updateMeterDisplay(this, 0x12u, v16);
  v19 = **(this + 74);
  if ((*(*(this + 74) + 8) - v19) <= 0x140)
  {
    sub_1A9578038();
  }

  v20 = v5 | updated | v7 | v9 | v11 | v13 | v15 | v17;
  v18.n128_u32[0] = *(v19 + 332);
  if (v18.n128_f32[0] > 0.5)
  {
    for (i = 28; i != 44; ++i)
    {
      v20 = AUSpeechEnhancerV2::updateMeterDisplay(this, i, v18) | v20;
    }
  }

  return v20;
}

uint64_t AUSpeechEnhancerV2::updateMeterDisplay(AUSpeechEnhancerV2 *this, unsigned int a2, __n128 a3)
{
  v4 = **(this + 74);
  if (a2 >= ((*(*(this + 74) + 8) - v4) >> 4))
  {
    sub_1A9578038();
  }

  a3.n128_u32[0] = *(v4 + 16 * a2 + 12);
  v5 = *(*this + 152);

  return v5(a3);
}

double AUSpeechEnhancerV2::GetLatency(AUSpeechEnhancerV2 *this)
{
  result = 0.0;
  if ((*(this + 545) & 1) == 0)
  {
    LODWORD(result) = *(this + 84);
    return *&result / *(sub_1A933BF74(this + 128, 0) + 80);
  }

  return result;
}

float sub_1A933B640(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8) - *a1 <= 0x320uLL)
  {
    sub_1A9577EAC();
  }

  *(a1 + 64) = (v1[203] + 0.5);
  v3 = (v1[199] + 0.5);
  *(a1 + 48) = v3;
  if (v3)
  {
    *(a1 + 784) = 0;
    __A = 1.0;
    vDSP_vfill(&__A, *(a1 + 1032), 1, *(a1 + 776));
    vDSP_vfill(&__A, *(a1 + 1344), 1, *(a1 + 776));
    v1 = *a1;
    if (*(a1 + 8) - *a1 <= 0x130uLL)
    {
      sub_1A9577EAC();
    }
  }

  *(a1 + 56) = (v1[79] + 0.5);
  v4 = *(a1 + 116) / *(a1 + 760);
  *(a1 + 84) = expf(-1.0 / (v1[15] * v4));
  *(a1 + 72) = expf(-1.0 / (v1[19] * v4));
  *(a1 + 76) = expf(-1.0 / (v4 * v1[23]));
  v5 = exp(v1[11] * 0.230258509);
  *(a1 + 80) = v5;
  sub_1A9341288(a1 + 1648);
  sub_1A933F704((a1 + 1320), *(a1 + 1688), *(a1 + 1696), (*(a1 + 1696) - *(a1 + 1688)) >> 2);
  if (*(a1 + 8) - *a1 <= 0xD0uLL)
  {
    sub_1A9577EAC();
  }

  sub_1A9342314(a1, (*a1 + 220));
  v6 = *(a1 + 24);
  v7 = *(a1 + 2216);
  if ((*(a1 + 2224) - v7) >> 2 < v6)
  {
    v6 = (*(a1 + 2224) - v7) >> 2;
  }

  *(a1 + 1936) = v6;
  v8 = *a1;
  if (*(a1 + 8) - *a1 <= 0x2E0uLL)
  {
    sub_1A9577EAC();
  }

  *(a1 + 172) = v8[187];
  *(a1 + 176) = v8[179];
  *(a1 + 180) = v8[183];
  sub_1A9342390(a1);
  if (*(a1 + 8) - *a1 <= 0xE0uLL)
  {
    sub_1A9577EAC();
  }

  v9 = exp(*(*a1 + 236) * 0.230258509);
  *(a1 + 88) = v9;
  *(a1 + 92) = 1.0 / v9;
  MEMORY[0x1AC588080](*(a1 + 1200), 1, a1 + 88, *(a1 + 1248), 1, *(a1 + 24));
  __A = 1.0;
  vDSP_svdiv(&__A, *(a1 + 1248), 1, *(a1 + 1248), 1, *(a1 + 24));
  MEMORY[0x1AC588060](*(a1 + 1200), 1, a1 + 88, a1 + 92, *(a1 + 1272), 1, *(a1 + 24));
  MEMORY[0x1AC587FA0](*(a1 + 1176), 1, *(a1 + 1272), 1, *(a1 + 1272), 1, *(a1 + 24));
  vDSP_vdiv(*(a1 + 1272), 1, *(a1 + 1224), 1, *(a1 + 1272), 1, *(a1 + 24));
  v10 = *a1;
  v11 = *(a1 + 8) - *a1;
  v12 = v11 >> 4;
  if ((v11 >> 4) <= 0x19)
  {
    sub_1A9577EAC();
  }

  v13 = vcvtas_u32_f32(v10[103] / (*(a1 + 116) / *(a1 + 768)));
  if (*(a1 + 776) < v13)
  {
    v13 = *(a1 + 776);
  }

  *(a1 + 40) = v13;
  v14 = exp(v10[63] * 0.230258509);
  *(a1 + 100) = v14;
  v15 = exp(v10[95] * 0.230258509);
  *(a1 + 104) = v15;
  v16 = exp(v10[67] * 0.230258509);
  *(a1 + 108) = v16;
  v17 = exp(v10[99] * 0.230258509);
  *(a1 + 112) = v17;
  if (v12 <= 0x38)
  {
    sub_1A9577EAC();
  }

  v18 = exp(v10[227] * 0.230258509);
  *(a1 + 212) = v18;
  if (v12 <= 0x3A)
  {
    sub_1A9577EAC();
  }

  v19 = exp(v10[235] * 0.230258509);
  *(a1 + 216) = v19;
  v20 = exp(v10[231] * 0.230258509);
  *(a1 + 220) = v20;
  if (v11 == 944)
  {
    sub_1A9577EAC();
  }

  v21 = exp(v10[239] * 0.230258509);
  *(a1 + 224) = v21;
  *(a1 + 196) = v10[207];
  v22 = exp(v10[211] * 0.230258509);
  *(a1 + 200) = v22;
  *(a1 + 204) = v10[215];
  *(a1 + 208) = v10[219];
  *(a1 + 228) = v10[223];
  v23 = *(a1 + 1664);
  v24 = *(a1 + 1672) - v23;
  v25 = v24 >> 2;
  if (v24)
  {
    v26 = 0;
    if (v25 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v25;
    }

    while (*(v23 + 4 * v26) <= v10[103])
    {
      if (v27 == ++v26)
      {
        goto LABEL_23;
      }
    }

    v25 = v26;
  }

LABEL_23:
  v28 = *(a1 + 24);
  if (v28)
  {
    v29 = 0;
    v30 = *(a1 + 1736);
    v31 = (*(a1 + 1744) - v30) >> 2;
    while (1)
    {
      if (v25 >= v29)
      {
        if (v31 <= v29 || (v32 = *(a1 + 448), v33 = (a1 + 204), v29 >= (*(a1 + 456) - v32) >> 2))
        {
LABEL_54:
          sub_1A933D390();
        }
      }

      else
      {
        if (v31 <= v29)
        {
          goto LABEL_54;
        }

        v32 = *(a1 + 448);
        v33 = (a1 + 208);
        if (v29 >= (*(a1 + 456) - v32) >> 2)
        {
          goto LABEL_54;
        }
      }

      v32[v29] = powf(*(v30 + 4 * v29), 1.0 / *v33);
      if (v28 == ++v29)
      {
        goto LABEL_34;
      }
    }
  }

  v32 = *(a1 + 448);
LABEL_34:
  __B = 0.0000001;
  __C = 0.0;
  v42 = 1065353216;
  vDSP_sve(v32, 1, &__C, v28);
  vDSP_vsdiv(*(a1 + 448), 1, &__C, *(a1 + 448), 1, *(a1 + 24));
  vDSP_vclip(*(a1 + 448), 1, &__B, &v42, *(a1 + 448), 1, *(a1 + 24));
  v34 = *a1;
  v35 = *(a1 + 8) - *a1;
  v36 = v35 >> 4;
  if ((v35 >> 4) <= 7)
  {
    sub_1A9577EAC();
  }

  if (v35 == 128)
  {
    sub_1A9577EAC();
  }

  if (v36 <= 9)
  {
    sub_1A9577EAC();
  }

  if (v35 == 160)
  {
    sub_1A9577EAC();
  }

  if (v36 <= 0xB)
  {
    sub_1A9577EAC();
  }

  result = v34[31];
  v38 = *(v34 + 35);
  v39 = *(v34 + 39);
  v40 = *(v34 + 43);
  v41 = *(v34 + 47);
  *(a1 + 1844) = result;
  *(a1 + 1848) = v38;
  *(a1 + 1852) = v39;
  *(a1 + 1856) = v40;
  *(a1 + 1860) = v41;
  *(a1 + 811) = 1;
  *(a1 + 809) = 257;
  *(a1 + 800) = *(a1 + 32);
  return result;
}

uint64_t sub_1A933BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8[0] = a3;
  result = (*(*a1 + 184))(a1, a2, a5, 1, v8, 1, &v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A933BCFC(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_1A9335A94();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1A933BDD4(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_1A933BDD4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1A9335858();
}

uint64_t sub_1A933BE1C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    return (*(*v3 + 32))();
  }

  v6 = a1 + 16;
  v5 = *(a1 + 16);
  if (a2 >= ((*(v6 + 8) - v5) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v5 + 8 * a2);
  }
}

uint64_t sub_1A933BE70(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_1A933BEC8(&v3);
  v3 = (a1 + 8);
  sub_1A933BEC8(&v3);
  sub_1A933C104(a1, 0);
  return a1;
}

void sub_1A933BEC8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1A933BF1C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1A933BF1C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_1A933BF74(uint64_t a1, unsigned int a2)
{
  result = sub_1A933BE1C(a1, a2);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A9578064();
    }

    exception = __cxa_allocate_exception(0x18uLL);
    sub_1A9333D44(exception, -10877);
    __cxa_throw(exception, &unk_1F1CEF160, std::runtime_error::~runtime_error);
  }

  return result;
}

uint64_t sub_1A933BFF8(_DWORD *a1, int *a2, BOOL *a3)
{
  if (a1[2] != 1819304813)
  {
    return 0;
  }

  if (a1[5] != 1)
  {
    return 0;
  }

  v3 = a1[6];
  if (v3 != a1[4])
  {
    return 0;
  }

  v4 = a1[8];
  if (v3 < v4 >> 3)
  {
    return 0;
  }

  v5 = a1[7];
  if (!v5)
  {
    return 0;
  }

  v6 = a1[3];
  if ((v6 & 0x20) == 0)
  {
    if (v3 % v5)
    {
      return 0;
    }

    v3 /= v5;
  }

  v7 = 0;
  if ((v6 & 2) == 0 && 8 * v3 == v4)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 4) != 0)
      {
        v9 = (v6 >> 7) & 0x3F;
        if (v9 == 24 && v3 == 4)
        {
          v7 = 3;
        }

        else if (v9 || v3 != 4)
        {
          if (v3 == 2 && v9 == 0)
          {
            v7 = 2;
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 5;
        }
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_30;
    }

    if ((v6 & 0x1F84) == 0)
    {
      v7 = 4 * (v3 == 8);
      if (v3 == 4)
      {
        v7 = 1;
      }

      goto LABEL_30;
    }

    return 0;
  }

LABEL_30:
  if (a3)
  {
    *a3 = (a1[3] & 0x20) == 0;
  }

  *a2 = v7;
  return 1;
}

uint64_t sub_1A933C104(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1A933C150(result);

    JUMPOUT(0x1AC586D00);
  }

  return result;
}

uint64_t sub_1A933C150(uint64_t a1)
{
  v57 = (a1 + 2360);
  sub_1A933C524(&v57);
  v57 = (a1 + 2336);
  sub_1A933C524(&v57);
  sub_1A933C5F8((a1 + 1928));
  v2 = *(a1 + 1904);
  if (v2)
  {
    *(a1 + 1912) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1784);
  if (v3)
  {
    *(a1 + 1792) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 1760);
  if (v4)
  {
    *(a1 + 1768) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 1736);
  if (v5)
  {
    *(a1 + 1744) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 1712);
  if (v6)
  {
    *(a1 + 1720) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 1688);
  if (v7)
  {
    *(a1 + 1696) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 1664);
  if (v8)
  {
    *(a1 + 1672) = v8;
    operator delete(v8);
  }

  v57 = (a1 + 1560);
  sub_1A933BEC8(&v57);
  v57 = (a1 + 1536);
  sub_1A933BEC8(&v57);
  v9 = *(a1 + 1512);
  if (v9)
  {
    *(a1 + 1520) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 1488);
  if (v10)
  {
    *(a1 + 1496) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 1464);
  if (v11)
  {
    *(a1 + 1472) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1440);
  if (v12)
  {
    *(a1 + 1448) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 1416);
  if (v13)
  {
    *(a1 + 1424) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 1392);
  if (v14)
  {
    *(a1 + 1400) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 1368);
  if (v15)
  {
    *(a1 + 1376) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 1344);
  if (v16)
  {
    *(a1 + 1352) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 1320);
  if (v17)
  {
    *(a1 + 1328) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 1296);
  if (v18)
  {
    *(a1 + 1304) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 1272);
  if (v19)
  {
    *(a1 + 1280) = v19;
    operator delete(v19);
  }

  v20 = *(a1 + 1248);
  if (v20)
  {
    *(a1 + 1256) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 1224);
  if (v21)
  {
    *(a1 + 1232) = v21;
    operator delete(v21);
  }

  v22 = *(a1 + 1200);
  if (v22)
  {
    *(a1 + 1208) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 1176);
  if (v23)
  {
    *(a1 + 1184) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 1152);
  if (v24)
  {
    *(a1 + 1160) = v24;
    operator delete(v24);
  }

  v25 = *(a1 + 1128);
  if (v25)
  {
    *(a1 + 1136) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 1104);
  if (v26)
  {
    *(a1 + 1112) = v26;
    operator delete(v26);
  }

  v27 = *(a1 + 1080);
  if (v27)
  {
    *(a1 + 1088) = v27;
    operator delete(v27);
  }

  v28 = *(a1 + 1056);
  if (v28)
  {
    *(a1 + 1064) = v28;
    operator delete(v28);
  }

  v29 = *(a1 + 1032);
  if (v29)
  {
    *(a1 + 1040) = v29;
    operator delete(v29);
  }

  v30 = *(a1 + 1008);
  if (v30)
  {
    *(a1 + 1016) = v30;
    operator delete(v30);
  }

  v31 = *(a1 + 984);
  if (v31)
  {
    *(a1 + 992) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 960);
  if (v32)
  {
    *(a1 + 968) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 936);
  if (v33)
  {
    *(a1 + 944) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 912);
  if (v34)
  {
    *(a1 + 920) = v34;
    operator delete(v34);
  }

  v35 = *(a1 + 888);
  if (v35)
  {
    *(a1 + 896) = v35;
    operator delete(v35);
  }

  v36 = *(a1 + 864);
  if (v36)
  {
    *(a1 + 872) = v36;
    operator delete(v36);
  }

  v37 = *(a1 + 840);
  if (v37)
  {
    *(a1 + 848) = v37;
    operator delete(v37);
  }

  v38 = *(a1 + 816);
  if (v38)
  {
    *(a1 + 824) = v38;
    operator delete(v38);
  }

  v39 = *(a1 + 720);
  if (v39)
  {
    *(a1 + 728) = v39;
    operator delete(v39);
  }

  v40 = *(a1 + 696);
  if (v40)
  {
    *(a1 + 704) = v40;
    operator delete(v40);
  }

  v41 = *(a1 + 544);
  if (v41)
  {
    *(a1 + 552) = v41;
    operator delete(v41);
  }

  v42 = *(a1 + 520);
  if (v42)
  {
    *(a1 + 528) = v42;
    operator delete(v42);
  }

  v43 = *(a1 + 496);
  if (v43)
  {
    *(a1 + 504) = v43;
    operator delete(v43);
  }

  v44 = *(a1 + 472);
  if (v44)
  {
    *(a1 + 480) = v44;
    operator delete(v44);
  }

  v45 = *(a1 + 448);
  if (v45)
  {
    *(a1 + 456) = v45;
    operator delete(v45);
  }

  v46 = *(a1 + 424);
  if (v46)
  {
    *(a1 + 432) = v46;
    operator delete(v46);
  }

  v47 = *(a1 + 400);
  if (v47)
  {
    *(a1 + 408) = v47;
    operator delete(v47);
  }

  v48 = *(a1 + 376);
  if (v48)
  {
    *(a1 + 384) = v48;
    operator delete(v48);
  }

  v49 = *(a1 + 352);
  if (v49)
  {
    *(a1 + 360) = v49;
    operator delete(v49);
  }

  v50 = *(a1 + 328);
  if (v50)
  {
    *(a1 + 336) = v50;
    operator delete(v50);
  }

  v51 = *(a1 + 304);
  if (v51)
  {
    *(a1 + 312) = v51;
    operator delete(v51);
  }

  v52 = *(a1 + 280);
  if (v52)
  {
    *(a1 + 288) = v52;
    operator delete(v52);
  }

  v53 = *(a1 + 256);
  if (v53)
  {
    *(a1 + 264) = v53;
    operator delete(v53);
  }

  v54 = *(a1 + 232);
  if (v54)
  {
    *(a1 + 240) = v54;
    operator delete(v54);
  }

  v55 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v55;
    operator delete(v55);
  }

  return a1;
}

void sub_1A933C524(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        sub_1A933C5AC(--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

VPTimeFreqConverter *sub_1A933C5AC(VPTimeFreqConverter **a1, VPTimeFreqConverter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(result);

    JUMPOUT(0x1AC586D00);
  }

  return result;
}

void *sub_1A933C5F8(void *a1)
{
  v2 = a1[42];
  if (v2)
  {
    a1[43] = v2;
    operator delete(v2);
  }

  v3 = a1[39];
  if (v3)
  {
    a1[40] = v3;
    operator delete(v3);
  }

  v4 = a1[36];
  if (v4)
  {
    a1[37] = v4;
    operator delete(v4);
  }

  v5 = a1[33];
  if (v5)
  {
    a1[34] = v5;
    operator delete(v5);
  }

  v6 = a1[30];
  if (v6)
  {
    a1[31] = v6;
    operator delete(v6);
  }

  v7 = a1[27];
  if (v7)
  {
    a1[28] = v7;
    operator delete(v7);
  }

  v8 = a1[24];
  if (v8)
  {
    a1[25] = v8;
    operator delete(v8);
  }

  v9 = a1[21];
  if (v9)
  {
    a1[22] = v9;
    operator delete(v9);
  }

  v10 = a1[18];
  if (v10)
  {
    a1[19] = v10;
    operator delete(v10);
  }

  v11 = a1[15];
  if (v11)
  {
    a1[16] = v11;
    operator delete(v11);
  }

  v12 = a1[12];
  if (v12)
  {
    a1[13] = v12;
    operator delete(v12);
  }

  v13 = a1[9];
  if (v13)
  {
    a1[10] = v13;
    operator delete(v13);
  }

  v14 = a1[6];
  if (v14)
  {
    a1[7] = v14;
    operator delete(v14);
  }

  return a1;
}

void *sub_1A933C6EC(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    a1[3] = v7;
    operator delete(v7);
  }

  return a1;
}

void *sub_1A933C770(void *result, unint64_t a2)
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

void sub_1A933C7CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A933C7E8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1A9338A90(a1, a2);
  }

  sub_1A9335A94();
}

void sub_1A933C824(uint64_t a1, int16x4_t a2)
{
  v3 = *(a1 + 776);
  v5 = 629145600;
  sub_1A933C954((a1 + 1440), v3, &v5, a2);
  *(a1 + 1884) = 0;
  *(a1 + 1868) = 0;
  *(a1 + 800) = 0;
  *(a1 + 32) = 0;
  *(a1 + 124) = 0;
  *(a1 + 810) = 257;
  __A = 1.0;
  vDSP_vfill(&__A, *(a1 + 1344), 1, *(a1 + 776));
  if (*(a1 + 792))
  {
    operator new();
  }
}

_DWORD *sub_1A933C954(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      sub_1A933C7E8(a1, v9);
    }

    sub_1A9335A94();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1A9586580)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1A9586570)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1A9586580)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1A9586570)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

float *sub_1A933CBF8(float *result, uint64_t a2, float *a3, float *a4, unint64_t a5, uint64_t a6, float a7, float a8)
{
  v9 = *a3;
  v8 = a3[1];
  v11 = *result;
  v10 = result[1];
  if (*a4 >= *result)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      *(a6 + 4 * v12) = a7;
      v13 = v12 + 1;
      v14 = a4[++v12];
    }

    while (v14 < *result);
  }

  if (v13 >= a5)
  {
LABEL_20:
    v25 = a5 - v13;
    if (a5 > v13)
    {
      v26 = 0;
      v27 = vdupq_n_s64(v25 - 1);
      v28 = (a6 + 4 * v13 + 8);
      do
      {
        v29 = vdupq_n_s64(v26);
        v30 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_1A9586580)));
        if (vuzp1_s16(v30, *v27.i8).u8[0])
        {
          *(v28 - 2) = a8;
        }

        if (vuzp1_s16(v30, *&v27).i8[2])
        {
          *(v28 - 1) = a8;
        }

        if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_1A9586570)))).i32[1])
        {
          *v28 = a8;
          v28[1] = a8;
        }

        v26 += 4;
        v28 += 4;
      }

      while (((v25 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v26);
    }
  }

  else
  {
    v15 = 0;
    v16 = 1;
    v17 = (v8 - v9) / (v10 - v11);
    do
    {
      v18 = a4[v13];
      v19 = result[v16];
      if (v18 >= v19)
      {
        if (v18 <= v19 || v18 >= result[a2 - 1])
        {
          if (v18 == result[v15])
          {
            v20 = a3[v15];
          }

          else
          {
            if (v18 != v19)
            {
              goto LABEL_20;
            }

            v20 = a3[v16];
          }
        }

        else
        {
          do
          {
            v21 = &result[v16++];
            ++v15;
            v22 = v21[1];
          }

          while (v18 > v22);
          v23 = a3[v15];
          v24 = result[v15];
          v17 = (a3[v16] - v23) / (v22 - v24);
          v20 = v23 + (v17 * (v18 - v24));
        }
      }

      else
      {
        v20 = a3[v15] + (v17 * (v18 - result[v15]));
      }

      *(a6 + 4 * v13++) = v20;
    }

    while (v13 != a5);
  }

  return result;
}

float sub_1A933CDA0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8) - *a2;
  v5 = *(a1 + 8);
  if (v4 != *(a1 + 16) - v5)
  {
    sub_1A95780E8();
  }

  __C = 0.0;
  vDSP_dotpr(v3, 1, v5, 1, &__C, v4 >> 2);
  return *a1 + (log10f(fabsf(__C) + 0.00000011921) * 10.0);
}

float *sub_1A933CE20(float *result, uint64_t *a2, int a3)
{
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v15 = v3;
    v16 = v4;
    v8 = result;
    v9 = 0;
    v10 = 0;
    do
    {
      v14.realp = 0;
      v14.imagp = 0;
      result = *(*(v8 + 192) + v9);
      v11 = *(*(v8 + 195) + v9);
      v14.realp = result;
      v14.imagp = v11;
      v12 = *(v8 + 95);
      if (a3)
      {
        if (v12)
        {
          result = memmove(result, *(v5 + v9), 4 * v12);
          v13 = *(v8 + 95);
        }

        else
        {
          v13 = 0;
        }

        if (4 * v13 != 8 * v13)
        {
          result = memmove(*(*(v8 + 195) + v9), (*(*a2 + v9) + 4 * v13), 4 * v13);
        }
      }

      else
      {
        if (v12)
        {
          memmove(*(v8 + 102), *(v5 + v9), 4 * v12);
        }

        result = VPTimeFreqConverter::Analyze(*(*(v8 + 292) + 8 * v10), *(v8 + 102), &v14);
      }

      ++v10;
      v5 = *a2;
      v9 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v10);
  }

  return result;
}

void sub_1A933CF2C(uint64_t a1, const void ***a2, int a3)
{
  __D = 0;
  v4 = *(a1 + 196);
  v5 = **(a1 + 1560);
  v13.realp = **(a1 + 1536);
  v13.imagp = v5;
  if (a3)
  {
    VPTimeFreqConverter::Synthesize(**(a1 + 2360), &v13, *(a1 + 816));
  }

  else
  {
    v6 = *(a1 + 760);
    if (v6)
    {
      memmove(*(a1 + 816), **a2, 4 * v6);
    }
  }

  v12 = 0;
  vDSP_nzcros(*(a1 + 816), 1, *(a1 + 760), &v12, &__D, *(a1 + 760));
  v7 = ((v4 * 0.8) / 0.79) + (((0.0 - v4) / 0.79) * (__D / *(a1 + 760)));
  v8 = *(a1 + 196);
  if (v7 >= v8)
  {
    v7 = *(a1 + 196);
  }

  v9 = fmaxf(v7, 0.0);
  v10 = v8 * 0.5;
  v11 = v8 - v9;
  if (v10 > v9)
  {
    v9 = v11;
  }

  *(a1 + 184) = v9;
}

uint64_t sub_1A933D044(uint64_t a1, DSPSplitComplex *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if ((v3 >> 4) <= 1)
  {
    sub_1A9577EAC();
  }

  if (v2[7] <= 0.5)
  {
    if ((v3 >> 4) <= 0x2F)
    {
      sub_1A9577EAC();
    }

    if (v3 == 768)
    {
      sub_1A9577EAC();
    }

    if (v2[191] < v2[195])
    {
      sub_1A933D478(a1);
    }
  }

  sub_1A933D4E4(a1, a2);
  *(a1 + 148) = sub_1A933CDA0(a1 + 1896, a1 + 1128);
  *(a1 + 156) = sub_1A933CDA0(a1 + 1896, a1 + 1440);
  sub_1A933D6B4(a1);
  v6 = sub_1A933D748(a1);
  MEMORY[0x1AC588080](*(a1 + 1128), 1, a1 + 128, *(a1 + 1128), 1, *(a1 + 776), v6);
  *(a1 + 148) = sub_1A933CDA0(a1 + 1896, a1 + 1128);
  MEMORY[0x1AC588080](*(a1 + 424), 1, a1 + 128, *(a1 + 424), 1, *(a1 + 776));
  v7 = *(a1 + 48);
  if (v7 == 1)
  {
    if (!(*(a1 + 32) % *(a1 + 624)))
    {
      sub_1A933DF48(a1);
    }

    sub_1A933E118(a1);
    v8 = *(a1 + 1056);
    goto LABEL_15;
  }

  if (!v7)
  {
    if (!(*(a1 + 32) % *(a1 + 624)))
    {
      sub_1A933D804(a1);
    }

    v8 = *(a1 + 1032);
LABEL_15:
    MEMORY[0x1AC588080](v8, 1, a1 + 132, *(a1 + 816), 1, *(a1 + 776));
    goto LABEL_17;
  }

  vDSP_vfill((a1 + 132), *(a1 + 816), 1, *(a1 + 776));
LABEL_17:
  v9 = *a1;
  v10 = (*(a1 + 8) - *a1) >> 4;
  if (v10 <= 0x11)
  {
    sub_1A9577EAC();
  }

  v9[71] = *(a1 + 148);
  v11 = *(a1 + 156);
  *(v9 + 27) = v11;
  if (v10 <= 0x1B)
  {
    sub_1A9577EAC();
  }

  LOBYTE(v11) = *(a1 + 809);
  v9[111] = v11;
  v12 = *(a1 + 120);
  v9[51] = v12;
  v9[91] = v12 + v9[87];
  v9[75] = *(a1 + 784);
  if (v9[83] > 0.5)
  {
    sub_1A933E39C(a1);
  }

  return a1 + 816;
}

float *sub_1A933D24C(void *a1, float *a2, unint64_t a3, uint64_t a4)
{
  v4 = a1[88];
  v5 = a1[87];
  v6 = v4 - v5;
  v7 = a1[90];
  if (v4 - v5 != a1[91] - v7)
  {
    sub_1A9578114();
  }

  v8 = v6 >> 2;
  v9 = a1[102];
  v10 = (a1[103] - v9) >> 2;
  if (v10 < v6 >> 2)
  {
    sub_1A9578140();
  }

  if (v4 != v5)
  {
    if (v8 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v6 >> 2;
    }

    v14 = a1[87];
    v15 = a1[102];
    do
    {
      v16 = *v14++;
      v17 = (a2[1] - *a2) / (v16 * 0.23156);
      v18 = *v7++;
      v19 = exp(v18 * 0.230258509);
      *v15++ = v17 * v19;
      --v13;
    }

    while (v13);
  }

  if (v10 <= v8 - 1)
  {
    sub_1A933D390();
  }

  v20 = *v9;
  v21 = v9[v8 - 1];

  return sub_1A933CBF8(v5, v8, v9, a2, a3, a4, v20, v21);
}

void sub_1A933D3A8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1A933383C(exception, a1);
  __cxa_throw(exception, off_1E787FDC0, MEMORY[0x1E69E5280]);
}

uint64_t sub_1A933D404(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1A933C7E8(result, a4);
  }

  return result;
}

void sub_1A933D45C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A933D478(uint64_t a1)
{
  v2 = 1065353216;
  MEMORY[0x1AC588080](*(a1 + 1104), 1, &v2, *(a1 + 1440), 1, *(a1 + 776));
  vDSP_vclip(*(a1 + 1440), 1, (a1 + 164), (a1 + 168), *(a1 + 1440), 1, *(a1 + 776));
}

uint64_t sub_1A933D4E4(uint64_t a1, DSPSplitComplex *a2)
{
  __C = 0.0;
  v3 = *(a1 + 816);
  v4 = *(a1 + 776);
  __A = *a2;
  vDSP_zvmags(&__A, 1, v3, 1, v4);
  v5 = *(a1 + 816);
  *v5 = 0.0;
  v6 = *(a1 + 776);
  v5[v6 - 1] = 0.0;
  vDSP_sve(v5, 1, &__C, v6);
  v7 = __C;
  v8 = (__C * *(a1 + 140)) * *(a1 + 80);
  v9 = exp(*(a1 + 580) * 0.230258509);
  if (v8 <= v9)
  {
    *(a1 + 192) = 0;
    if (*(a1 + 56))
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 136);
  }

  else
  {
    v10 = *(a1 + 84);
    v11 = 1.0 - v10;
    v12 = (v7 * (1.0 - v10)) + (v10 * *(a1 + 136));
    *(a1 + 136) = v12;
    *(a1 + 192) = 1;
    if (*(a1 + 56))
    {
      *&__A.realp = v11;
      v13 = *(a1 + 816);
      v15 = *(a1 + 776);
      MEMORY[0x1AC588070](*(a1 + 1416));
      goto LABEL_7;
    }
  }

  *&__A.realp = v12 / 10000000.0;
  MEMORY[0x1AC588080](*(a1 + 1464), 1, &__A, *(a1 + 1416), 1, *(a1 + 776));
LABEL_7:
  MEMORY[0x1AC588080](*(a1 + 1416), 1, a1 + 140, *(a1 + 1128), 1, *(a1 + 776));
  result = MEMORY[0x1AC588080](*(a1 + 1128), 1, a1 + 80, *(a1 + 1128), 1, *(a1 + 776));
  if (*(a1 + 192))
  {
    MEMORY[0x1AC588080](*(a1 + 816), 1, a1 + 140, *(a1 + 424), 1, *(a1 + 776));
    return MEMORY[0x1AC588080](*(a1 + 424), 1, a1 + 80, *(a1 + 424), 1, *(a1 + 776));
  }

  return result;
}

uint64_t sub_1A933D6B4(uint64_t result)
{
  v1 = *(result + 156);
  v2 = *(result + 148);
  if (vabds_f32(v1, *(result + 160)) <= *(result + 592) && vabds_f32(v2, *(result + 152)) <= *(result + 588) && *(result + 140) == *(result + 144))
  {
    if (((*(result + 32) - *(result + 800)) / (*(result + 116) / *(result + 760))) > *(result + 596))
    {
      *(result + 809) = 0;
    }
  }

  else
  {
    *(result + 809) = 1;
    *(result + 800) = *(result + 32);
    *(result + 160) = v1;
    *(result + 152) = v2;
    *(result + 144) = *(result + 140);
  }

  return result;
}

float sub_1A933D748(uint64_t a1)
{
  if ((*(a1 + 809) & 1) != 0 || *(a1 + 810) == 1)
  {
    if (*(a1 + 8) - *a1 <= 0x150uLL)
    {
      sub_1A9577EAC();
    }

    *(a1 + 120) = sub_1A933E4D4(a1 + 1840, *(a1 + 156), *(*a1 + 348));
  }

  if (*(a1 + 64) == 1)
  {
    *(a1 + 120) = 0;
    v2 = 0.0;
  }

  else
  {
    v2 = *(a1 + 120);
  }

  *(a1 + 810) = 0;
  *(a1 + 124) = v2;
  v3 = v2;
  v4 = exp(v2 * 0.230258509);
  *(a1 + 128) = v4;
  result = exp(v3 * 0.115129255);
  *(a1 + 132) = result;
  return result;
}

void sub_1A933D804(uint64_t a1)
{
  vDSP_mmul(*(a1 + 1784), 1, *(a1 + 1128), 1, *(a1 + 840), 1, *(a1 + 1648), 1uLL, *(a1 + 776));
  vDSP_mmul(*(a1 + 1784), 1, *(a1 + 1440), 1, *(a1 + 864), 1, *(a1 + 1648), 1uLL, *(a1 + 776));
  *(a1 + 784) = 0;
  if (*(a1 + 8) - *a1 <= 0x1A0uLL)
  {
    sub_1A9577EAC();
  }

  if (*(a1 + 156) >= *(*a1 + 428))
  {
    v2 = (a1 + 776);
    if (*(a1 + 809) & 1) != 0 || (*(a1 + 810) & 1) != 0 || (*(a1 + 811))
    {
      __A = 0.0;
      v3 = 1;
      vDSP_sve(*(a1 + 1128), 1, &__A, *(a1 + 776));
      MEMORY[0x1AC587FF0](*(a1 + 864), 1, *(a1 + 1248), 1, *(a1 + 840), 1, *(a1 + 888), 1, *(a1 + 24));
      MEMORY[0x1AC588050](*(a1 + 840), 1, a1 + 92, *(a1 + 864), 1, *(a1 + 864), 1, *(a1 + 24));
      __C = 0.0;
      vDSP_sve(*(a1 + 888), 1, &__C, *(a1 + 24));
      v35 = 1.0 / (__C + 2.2204e-16);
      MEMORY[0x1AC588080](*(a1 + 888), 1, &v35, *(a1 + 888), 1, *(a1 + 24));
      MEMORY[0x1AC588080](*(a1 + 864), 1, &v35, *(a1 + 864), 1, *(a1 + 24));
      MEMORY[0x1AC588000](*(a1 + 888), 1, *(a1 + 864), 1, *(a1 + 840), 1, *(a1 + 24));
      MEMORY[0x1AC588090](*(a1 + 888), 1, *(a1 + 912), 1, *(a1 + 24));
      MEMORY[0x1AC588090](*(a1 + 864), 1, *(a1 + 864), 1, *(a1 + 24));
      v4 = *(a1 + 148) - *(a1 + 156);
      v5 = v4 * (1.0 / (log10f(*(a1 + 88) + 2.2204e-16) * 10.0));
      if (v5 < 0.0)
      {
        v5 = 0.0;
      }

      if (v5 > 1.0)
      {
        v5 = 1.0;
      }

      v34 = v5;
      MEMORY[0x1AC588080](*(a1 + 1272), 1, &v34, *(a1 + 1296), 1, *(a1 + 24));
      MEMORY[0x1AC588010](*(a1 + 1296), 1, *(a1 + 1296), 1, *(a1 + 24));
      v33 = 0;
      v6 = *(a1 + 24);
      if (v6)
      {
        v7 = *(a1 + 864);
        if (*v7 <= 2.2204e-16 || (v8 = *(a1 + 888), *v8 <= 2.2204e-16))
        {
          v3 = 0;
        }

        else
        {
          v9 = 1;
          do
          {
            v10 = v9;
            if (v6 == v9)
            {
              break;
            }

            if (v7[v9] <= 2.2204e-16)
            {
              break;
            }

            v11 = v8[v9++];
          }

          while (v11 > 2.2204e-16);
          v3 = v6 <= v10;
        }
      }

      *(a1 + 808) = v3;
      if ((*(a1 + 572) * __A) != INFINITY)
      {
        v12 = 0.0;
        v13 = -1000000.0;
        do
        {
          v14 = *(a1 + 784);
          if (v14 > *(a1 + 616))
          {
            break;
          }

          *(a1 + 784) = v14 + 1;
          *(&v33 + 1) = (v12 + v13) * 0.5;
          MEMORY[0x1AC588050](*(a1 + 888), 1, &v33 + 4, *(a1 + 1296), 1, *(a1 + 936), 1, *(a1 + 24));
          MEMORY[0x1AC588000](*(a1 + 864), 1, *(a1 + 936), 1, *(a1 + 960), 1, *(a1 + 24));
          MEMORY[0x1AC587FF0](*(a1 + 840), 1, *(a1 + 1224), 1, *(a1 + 960), 1, *(a1 + 960), 1, *(a1 + 24));
          MEMORY[0x1AC588000](*(a1 + 936), 1, *(a1 + 840), 1, *(a1 + 1008), 1, *(a1 + 24));
          MEMORY[0x1AC588000](*(a1 + 1008), 1, *(a1 + 1176), 1, *(a1 + 1008), 1, *(a1 + 24));
          MEMORY[0x1AC588000](*(a1 + 936), 1, *(a1 + 912), 1, *(a1 + 984), 1, *(a1 + 24));
          MEMORY[0x1AC588000](*(a1 + 984), 1, *(a1 + 1200), 1, *(a1 + 984), 1, *(a1 + 24));
          if (*(a1 + 808))
          {
            sub_1A933E62C(a1, (a1 + 984), (a1 + 1008), (a1 + 984), (a1 + 960), (a1 + 936));
            v15 = *(a1 + 24);
          }

          else
          {
            v15 = *(a1 + 24);
            if (v15)
            {
              v16 = 0;
              v17 = *(a1 + 864);
              do
              {
                if (*(v17 + 4 * v16) <= 2.2204e-16 || *(*(a1 + 888) + 4 * v16) <= 2.2204e-16)
                {
                  *(*(a1 + 936) + 4 * v16) = 1065353216;
                }

                ++v16;
              }

              while (v15 != v16);
            }
          }

          vDSP_vthr(*(a1 + 936), 1, (a1 + 748), *(a1 + 936), 1, v15);
          sub_1A933CBF8(*(a1 + 1664), *(a1 + 1648), *(a1 + 936), *(a1 + 1712), (*(a1 + 1720) - *(a1 + 1712)) >> 2, *(a1 + 1032), 0.0, 1.0);
          vDSP_vclip(*(a1 + 1032), 1, (a1 + 100), (a1 + 108), *(a1 + 1032), 1, *(a1 + 40));
          vDSP_vclip((*(a1 + 1032) + 4 * *(a1 + 40)), 1, (a1 + 104), (a1 + 112), (*(a1 + 1032) + 4 * *(a1 + 40)), 1, *(a1 + 776) - *(a1 + 40));
          vDSP_dotpr(*(a1 + 1032), 1, *(a1 + 1128), 1, &v33, *(a1 + 776));
          v18 = vabds_f32(*&v33, __A);
          if (*&v33 <= __A)
          {
            v13 = *(&v33 + 1);
          }

          else
          {
            v12 = *(&v33 + 1);
          }
        }

        while (v18 > (*(a1 + 572) * __A));
      }

      vvsqrtf(*(a1 + 1032), *(a1 + 1032), (a1 + 776));
      if (*(a1 + 8) - *a1 <= 0x1A0uLL)
      {
        sub_1A9577EAC();
      }

      v19 = (*(a1 + 156) - *(*a1 + 428)) * 0.25;
      if (v19 < 1.0)
      {
        v20 = *v2;
        if (v20)
        {
          v21 = *(a1 + 1032);
          do
          {
            *v21 = powf(*v21, v19);
            ++v21;
            --v20;
          }

          while (v20);
        }
      }
    }

    else if (*v2)
    {
      memmove(*(a1 + 1032), *(a1 + 1344), 4 * *v2);
    }
  }

  else
  {
    __A = 1.0;
    vDSP_vfill(&__A, *(a1 + 1032), 1, *(a1 + 776));
    vDSP_vfill(&__A, *(a1 + 1344), 1, *(a1 + 776));
  }

  v22 = *(a1 + 1032);
  v23 = (*(a1 + 1040) - v22) >> 2;
  __A = 0.0;
  vDSP_sve(v22, 1, &__A, v23);
  if ((LODWORD(__A) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    __A = 1.0;
    vDSP_vfill(&__A, *(a1 + 1032), 1, *(a1 + 776));
  }

  *(a1 + 811) = 0;
  v24 = *(a1 + 776);
  if (v24)
  {
    v25 = *(a1 + 1032);
    v26 = *(a1 + 1344);
    v27 = *(a1 + 624);
    v28 = *(a1 + 760);
    v29 = *(a1 + 776);
    do
    {
      v30 = *v26;
      v31 = *v25 / *v26;
      v32 = exp(((*(a1 + 176) * v27) / (*(a1 + 116) / v28)) * 0.115129255);
      if (v31 > v32)
      {
        *v25 = v30 * v32;
        *(a1 + 811) = 1;
      }

      ++v26;
      ++v25;
      --v29;
    }

    while (v29);
    memmove(*(a1 + 1344), *(a1 + 1032), 4 * v24);
  }
}

void sub_1A933DF48(uint64_t a1)
{
  if ((*(a1 + 809) & 1) != 0 || (*(a1 + 810) & 1) != 0 || *(a1 + 811) == 1)
  {
    vDSP_mmul(*(a1 + 1784), 1, *(a1 + 1128), 1, *(a1 + 840), 1, *(a1 + 1648), 1uLL, *(a1 + 776));
    vDSP_mmul(*(a1 + 1784), 1, *(a1 + 1440), 1, *(a1 + 400), 1, *(a1 + 1648), 1uLL, *(a1 + 776));
    v4 = 916964780;
    MEMORY[0x1AC588080](*(a1 + 840), 1, &v4, *(a1 + 232), 1, *(a1 + 24));
    vvlogf(*(a1 + 864), *(a1 + 232), (a1 + 24));
    if (!*(a1 + 32))
    {
      __A = 1.0;
      vDSP_svdiv(&__A, *(a1 + 544), 1, *(a1 + 520), 1, *(a1 + 24));
      MEMORY[0x1AC587FA0](*(a1 + 520), 1, *(a1 + 864), 1, *(a1 + 520), 1, *(a1 + 24));
      MEMORY[0x1AC588080](*(a1 + 544), 1, a1 + 228, *(a1 + 544), 1, *(a1 + 24));
      vvpowf(*(a1 + 496), *(a1 + 544), *(a1 + 840), (a1 + 24));
    }

    v2 = 1.0;
    MEMORY[0x1AC5880A0](*(a1 + 864), 1, *(a1 + 520), 1, *(a1 + 888), 1, *(a1 + 24));
    vDSP_svdiv(&v2, *(a1 + 888), 1, *(a1 + 544), 1, *(a1 + 24));
    MEMORY[0x1AC588080](*(a1 + 544), 1, a1 + 228, *(a1 + 544), 1, *(a1 + 24));
    sub_1A933E774(a1, (a1 + 400));
    sub_1A933E8C0(a1, (a1 + 840), (a1 + 400));
  }
}

void sub_1A933E118(uint64_t a1)
{
  __A = 1.0;
  if (*(a1 + 192))
  {
    vDSP_mmul(*(a1 + 1784), 1, *(a1 + 424), 1, *(a1 + 376), 1, *(a1 + 1648), 1uLL, *(a1 + 776));
    v4 = 1.0 - *(a1 + 84);
    vvlogf(*(a1 + 864), *(a1 + 376), (a1 + 24));
    MEMORY[0x1AC588070](*(a1 + 520), 1, a1 + 84, *(a1 + 864), 1, &v4, *(a1 + 520), 1, *(a1 + 24));
    vvpowf(*(a1 + 472), *(a1 + 544), *(a1 + 376), (a1 + 24));
    MEMORY[0x1AC588070](*(a1 + 496), 1, a1 + 84, *(a1 + 472), 1, &v4, *(a1 + 496), 1, *(a1 + 24));
  }

  if (*(a1 + 8) - *a1 <= 0x1A0uLL)
  {
    sub_1A9577EAC();
  }

  if (*(a1 + 156) >= *(*a1 + 428) && *(a1 + 192) && *(a1 + 1928))
  {
    sub_1A933F830(a1, (a1 + 376), (a1 + 400));
    sub_1A933FB3C(a1, (a1 + 376));
    vDSP_vdiv(*(a1 + 376), 1, *(a1 + 352), 1, *(a1 + 840), 1, *(a1 + 24));
    sub_1A933CBF8(*(a1 + 1664), *(a1 + 1648), *(a1 + 840), *(a1 + 1712), (*(a1 + 1720) - *(a1 + 1712)) >> 2, *(a1 + 1056), 0.0, 1.0);
    vDSP_vclip(*(a1 + 1056), 1, (a1 + 212), (a1 + 220), *(a1 + 1056), 1, *(a1 + 40));
    vDSP_vclip((*(a1 + 1056) + 4 * *(a1 + 40)), 1, (a1 + 216), (a1 + 224), (*(a1 + 1056) + 4 * *(a1 + 40)), 1, *(a1 + 776) - *(a1 + 40));
    vvsqrtf(*(a1 + 1056), *(a1 + 1056), (a1 + 776));
  }

  else
  {
    vDSP_vfill(&__A, *(a1 + 1056), 1, *(a1 + 776));
    vDSP_vfill(&__A, *(a1 + 1368), 1, *(a1 + 776));
  }

  v2 = *(a1 + 1056);
  v3 = (*(a1 + 1064) - v2) >> 2;
  __C = 0.0;
  vDSP_sve(v2, 1, &__C, v3);
  if ((LODWORD(__C) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    vDSP_vfill(&__A, *(a1 + 1056), 1, *(a1 + 776));
  }

  *(a1 + 811) = 0;
}

void sub_1A933E39C(uint64_t a1)
{
  v2 = a1 + 1584;
  vDSP_vclr((a1 + 1584), 1, 0x10uLL);
  v3 = *(a1 + 776);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 1080);
    while (1)
    {
      if (*(v7 + 4 * v4) >= *(a1 + 632 + 4 * v6))
      {
        v8 = *(v2 + 4 * v6) / fmaxf(v5, 1.0);
        *(v2 + 4 * v6) = v8;
        if (v6 + 28 >= ((*(a1 + 8) - *a1) >> 4))
        {
          sub_1A9577EAC();
        }

        *(*a1 + 16 * (v6 + 28) + 12) = v8;
        if (++v6 == 16)
        {
          return;
        }

        v5 = 0;
      }

      v9 = *(a1 + 48);
      v10 = (a1 + 1032);
      if (!v9)
      {
        goto LABEL_10;
      }

      if (v9 == 1)
      {
        break;
      }

LABEL_11:
      ++v5;
      if (v3 == ++v4)
      {
        return;
      }
    }

    v10 = (a1 + 1056);
LABEL_10:
    *(v2 + 4 * v6) = *(v2 + 4 * v6) + (log10f(*(*v10 + 4 * v4) + 2.2204e-16) * 20.0);
    goto LABEL_11;
  }
}

float sub_1A933E4D4(uint64_t a1, float a2, float a3)
{
  v3 = *(a1 + 4);
  if (*(a1 + 44) != 1)
  {
    *(a1 + 32) = a3;
    *(a1 + 36) = v3;
    *(a1 + 40) = a3;
    *(a1 + 44) = 1;
  }

  if (v3 > a2)
  {
    *(a1 + 40) = a3;
    *(a1 + 45) = 0;
LABEL_5:
    v4 = a3;
    goto LABEL_20;
  }

  if (*(a1 + 45) == 1)
  {
    if (*(a1 + 48) <= a2)
    {
      v6 = *(a1 + 32);
      if (v6 <= a3)
      {
        v4 = *(a1 + 40);
      }

      else
      {
        v4 = (a3 - v6) + *(a1 + 40);
        *(a1 + 40) = v4;
        *(a1 + 45) = 0;
      }

      goto LABEL_16;
    }

    *(a1 + 45) = 0;
  }

  v5 = 12;
  if (*(a1 + 8) < a2)
  {
    v5 = 16;
  }

  v4 = (*(a1 + 40) + (*(a1 + v5) * (a2 - *(a1 + 36)))) + (a3 - *(a1 + 32));
  *(a1 + 40) = v4;
  if (v4 > *(a1 + 20))
  {
    *(a1 + 45) = 1;
    *(a1 + 48) = a2;
  }

LABEL_16:
  v7 = *(a1 + 20);
  if (v4 <= v7)
  {
    if (v4 < a3)
    {
      *(a1 + 40) = a3;
      goto LABEL_5;
    }
  }

  else
  {
    *(a1 + 40) = v7;
    v4 = v7;
  }

LABEL_20:
  v8 = v4 - a3;
  v9 = *a1;
  if (v8 <= *a1)
  {
    v10 = v8;
  }

  else
  {
    v10 = *a1;
  }

  *(a1 + 32) = a3;
  *(a1 + 36) = a2;
  *(a1 + 28) = v8;
  if (v8 > v9 || (LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    if ((LODWORD(v10) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v10;
    }

    *(a1 + 28) = v8;
  }

  return v8;
}

void sub_1A933E62C(uint64_t a1, void *a2, void *a3, void *a4, const float **a5, const float **a6)
{
  v10 = (a1 + 24);
  MEMORY[0x1AC588000](*a2, 1, *a5, 1, *a6, 1, *(a1 + 24));
  MEMORY[0x1AC588080](*a6, 1, v10 + 90, *a6, 1, *v10);
  MEMORY[0x1AC588090](*a3, 1, *a4, 1, *v10);
  MEMORY[0x1AC5880A0](*a6, 1, *a4, 1, *a6, 1, *v10);
  vDSP_vthr(*a6, 1, v10 + 181, *a6, 1, *v10);
  vvsqrtf(*a6, *a6, v10);
  MEMORY[0x1AC5880A0](*a3, 1, *a6, 1, *a6, 1, *v10);
  vDSP_vdiv(*a6, 1, *a5, 1, *a6, 1, *v10);
  v11 = *a6;
  v12 = *v10;

  JUMPOUT(0x1AC588080);
}

void sub_1A933E774(uint64_t a1, const float **a2)
{
  v3 = (a1 + 24);
  vDSP_vfill((a1 + 188), *(a1 + 912), 1, *(a1 + 24));
  vvpowf(*(v3 + 29), *a2, *(v3 + 111), v3);
  vvpowf(*(v3 + 114), *(v3 + 65), *(v3 + 26), v3);
  MEMORY[0x1AC588000](*(v3 + 29), 1, *(v3 + 26), 1, *(v3 + 111), 1, *v3);
  MEMORY[0x1AC5880A0](*(v3 + 111), 1, *(v3 + 26), 1, *(v3 + 117), 1, *v3);
  MEMORY[0x1AC587FA0](*a2, 1, *(v3 + 117), 1, *(v3 + 117), 1, *v3);
  vDSP_vdiv(*(v3 + 114), 1, *(v3 + 117), 1, *(v3 + 35), 1, *v3);
  v4 = -1073741824;
  MEMORY[0x1AC588000](*(v3 + 65), 1, *(v3 + 114), 1, *(v3 + 117), 1, *v3);
  MEMORY[0x1AC588080](*(v3 + 117), 1, &v4, *(v3 + 117), 1, *v3);
  vDSP_vdiv(*(v3 + 117), 1, *a2, 1, *(v3 + 38), 1, *v3);
}

void sub_1A933E8C0(uint64_t a1, const float **a2, const float **a3)
{
  __C = 0.0;
  vDSP_sve(*a2, 1, &__C, *(a1 + 24));
  v8 = 0.0;
  vDSP_sve(*(a1 + 1128), 1, &v8, *(a1 + 776));
  __C = (__C + v8) * 0.5;
  MEMORY[0x1AC588000](*(a1 + 256), 1, *a2, 1, *(a1 + 888), 1, *(a1 + 24));
  MEMORY[0x1AC587FF0](*(a1 + 304), 1, *(a1 + 496), 1, *(a1 + 888), 1, *(a1 + 888), 1, *(a1 + 24));
  MEMORY[0x1AC5880A0](*a3, 1, *(a1 + 888), 1, *(a1 + 888), 1, *(a1 + 24));
  vDSP_vdiv(*(a1 + 544), 1, *a3, 1, *(a1 + 912), 1, *(a1 + 24));
  MEMORY[0x1AC588080](*(a1 + 912), 1, a1 + 756, *(a1 + 912), 1, *(a1 + 24));
  MEMORY[0x1AC587FF0](*(a1 + 328), 1, *(a1 + 496), 1, *(a1 + 912), 1, *(a1 + 912), 1, *(a1 + 24));
  __B = 0.0;
  vDSP_sve(*(a1 + 888), 1, &__B, *(a1 + 24));
  __B = -(__B - __C);
  vDSP_vsdiv(*(a1 + 912), 1, &__B, *(a1 + 936), 1, *(a1 + 24));
  v6 = 0x40000000;
  MEMORY[0x1AC588080](*(a1 + 544), 1, &v6, *(a1 + 912), 1, *(a1 + 24));
  v6 = 981668463;
  MEMORY[0x1AC588080](*(a1 + 544), 1, &v6, *(a1 + 888), 1, *(a1 + 24));
  MEMORY[0x1AC588090](*(a1 + 912), 1, *(a1 + 960), 1, *(a1 + 24));
  vDSP_vdiv(*(a1 + 960), 1, *(a1 + 448), 1, *(a1 + 960), 1, *(a1 + 24));
  sub_1A933EAF8(a1 + 1928, (a1 + 960), (a1 + 888), (a1 + 912), (a1 + 936), 1.0);
}

void sub_1A933EAF8(uint64_t a1, char **a2, char **a3, char **a4, char **a5, float a6)
{
  v11 = (a1 + 48);
  if (v11 != a2)
  {
    sub_1A933F704(v11, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if ((a1 + 72) != a3)
  {
    sub_1A933F704((a1 + 72), *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  if ((a1 + 96) != a4)
  {
    sub_1A933F704((a1 + 96), *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  if ((a1 + 120) != a5)
  {
    sub_1A933F704((a1 + 120), *a5, a5[1], (a5[1] - *a5) >> 2);
  }

  *(a1 + 32) = a6;
  *(a1 + 376) = 0;
  if (*(a1 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = *(a1 + 192);
    v15 = (*(a1 + 200) - v14) >> 3;
    do
    {
      if (v15 <= v12)
      {
        sub_1A933D390();
      }

      *(v14 + 8 * v12) = v13;
      v12 = *(a1 + 376) + 1;
      *(a1 + 376) = v12;
      ++v13;
      v16 = *(a1 + 8);
    }

    while (v16 > v13);
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 36) = a6;
  *(a1 + 16) = v16;
  *(a1 + 24) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  __A = 0.0;
  vDSP_vfill(&__A, *(a1 + 288), 1, v16);
  MEMORY[0x1AC588000](*(a1 + 48), 1, *(a1 + 72), 1, *(a1 + 312), 1, *(a1 + 8));
  vDSP_vdiv(*(a1 + 120), 1, *(a1 + 312), 1, *(a1 + 312), 1, *(a1 + 8));
  v24 = -1073741824;
  MEMORY[0x1AC588080](*(a1 + 312), 1, &v24, *(a1 + 312), 1, *(a1 + 8));
  MEMORY[0x1AC588000](*(a1 + 48), 1, *(a1 + 96), 1, *(a1 + 336), 1, *(a1 + 8));
  vDSP_vdiv(*(a1 + 120), 1, *(a1 + 336), 1, *(a1 + 336), 1, *(a1 + 8));
  MEMORY[0x1AC588080](*(a1 + 336), 1, &v24, *(a1 + 336), 1, *(a1 + 8));
  __C = 0.0;
  vDSP_dotpr(*(a1 + 120), 1, *(a1 + 96), 1, &__C, *(a1 + 8));
  if (__C >= *(a1 + 32))
  {
    while (*(a1 + 24) < *(a1 + 8))
    {
      sub_1A933EDEC(a1);
      sub_1A933EE98(a1);
      sub_1A933EFA4(a1);
      v22 = *(a1 + 44);
      if (v22 <= 0.0)
      {
        if (v22 >= 0.0)
        {
          if (v22 == 0.0 || !*(a1 + 384))
          {
            sub_1A933F384(a1);
            break;
          }

          *a1 = 0;
        }

        else
        {
          sub_1A933F258(a1);
        }
      }

      else
      {
        sub_1A933F12C(a1);
      }
    }

    sub_1A933F454(a1);
    *a1 = 1;
  }

  else
  {
    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = 0;
      v19 = *a3;
      v20 = (a3[1] - *a3) >> 2;
      do
      {
        if (v20 == v18 || (v21 = *(a1 + 288), v18 >= (*(a1 + 296) - v21) >> 2))
        {
          sub_1A933D390();
        }

        *(v21 + 4 * v18) = *&v19[4 * v18];
        *a1 = 0;
        ++v18;
      }

      while (v17 != v18);
    }
  }
}

uint64_t sub_1A933EDEC(uint64_t result)
{
  v1 = *(result + 376);
  if (v1)
  {
    v2 = *(result + 192);
    v3 = (*(result + 200) - v2) >> 3;
    v4 = 0.0;
    do
    {
      if (!v3)
      {
        sub_1A933D390();
      }

      v5 = *v2;
      v6 = *(result + 120);
      if (*v2 >= (*(result + 128) - v6) >> 2 || (v7 = *(result + 48), v5 >= (*(result + 56) - v7) >> 2))
      {
        sub_1A933D390();
      }

      v4 = *(v6 + 4 * v5) * *(v6 + 4 * v5) / *(v7 + 4 * v5) + v4;
      --v3;
      ++v2;
      --v1;
    }

    while (v1);
    *(result + 40) = (*(result + 36) * -2.0) / v4;
  }

  else
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1A933EE98(uint64_t result)
{
  *(result + 384) = 0;
  *(result + 392) = 0;
  *(result + 400) = 0;
  if (*(result + 376))
  {
    v1 = 0;
    v2 = *(result + 40);
    v3 = *(result + 192);
    v4 = (*(result + 200) - v3) >> 3;
    do
    {
      if (v4 == v1)
      {
LABEL_16:
        sub_1A933D390();
      }

      v5 = *(v3 + 8 * v1);
      v6 = *(result + 312);
      if (v5 >= (*(result + 320) - v6) >> 2)
      {
        goto LABEL_17;
      }

      if (v2 >= *(v6 + 4 * v5))
      {
        v12 = *(result + 392);
        v13 = *(result + 240);
        if (v12 >= (*(result + 248) - v13) >> 3)
        {
          goto LABEL_16;
        }

        v10 = (v13 + 8 * v12);
        v11 = (result + 392);
      }

      else
      {
        v7 = *(result + 336);
        if (v5 >= (*(result + 344) - v7) >> 2)
        {
LABEL_17:
          sub_1A933D390();
        }

        if (v2 <= *(v7 + 4 * v5))
        {
          v14 = *(result + 400);
          v15 = *(result + 264);
          if (v14 >= (*(result + 272) - v15) >> 3)
          {
            goto LABEL_16;
          }

          v10 = (v15 + 8 * v14);
          v11 = (result + 400);
        }

        else
        {
          v8 = *(result + 384);
          v9 = *(result + 216);
          if (v8 >= (*(result + 224) - v9) >> 3)
          {
            goto LABEL_16;
          }

          v10 = (v9 + 8 * v8);
          v11 = (result + 384);
        }
      }

      *v10 = v5;
      ++*v11;
      ++v1;
    }

    while (*(result + 376) > v1);
  }

  return result;
}

uint64_t sub_1A933EFA4(uint64_t result)
{
  v1 = *(result + 384);
  v2 = 0.0;
  v3 = 0.0;
  if (v1)
  {
    v4 = *(result + 216);
    v5 = (*(result + 224) - v4) >> 3;
    do
    {
      if (!v5)
      {
        goto LABEL_25;
      }

      v6 = *v4;
      v7 = *(result + 120);
      if (*v4 >= (*(result + 128) - v7) >> 2 || (v8 = *(result + 48), v6 >= (*(result + 56) - v8) >> 2))
      {
LABEL_24:
        sub_1A933D390();
      }

      v3 = *(v7 + 4 * v6) * *(v7 + 4 * v6) / *(v8 + 4 * v6) + v3;
      --v5;
      ++v4;
      --v1;
    }

    while (v1);
    v3 = (*(result + 40) * -0.5) * v3;
  }

  v9 = *(result + 392);
  if (v9)
  {
    v10 = *(result + 240);
    v11 = (*(result + 248) - v10) >> 3;
    v2 = 0.0;
    while (v11)
    {
      v12 = *v10;
      v13 = *(result + 120);
      if (*v10 >= (*(result + 128) - v13) >> 2)
      {
        goto LABEL_24;
      }

      v14 = *(result + 72);
      if (v12 >= (*(result + 80) - v14) >> 2)
      {
        goto LABEL_24;
      }

      v2 = v2 + (*(v13 + 4 * v12) * *(v14 + 4 * v12));
      --v11;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

LABEL_25:
    sub_1A933D390();
  }

LABEL_14:
  v15 = *(result + 400);
  v16 = 0.0;
  if (v15)
  {
    v17 = *(result + 264);
    v18 = (*(result + 272) - v17) >> 3;
    while (v18)
    {
      v19 = *v17;
      v20 = *(result + 120);
      if (*v17 >= (*(result + 128) - v20) >> 2)
      {
        goto LABEL_24;
      }

      v21 = *(result + 96);
      if (v19 >= (*(result + 104) - v21) >> 2)
      {
        goto LABEL_24;
      }

      v16 = v16 + (*(v20 + 4 * v19) * *(v21 + 4 * v19));
      --v18;
      ++v17;
      if (!--v15)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_25;
  }

LABEL_20:
  v22 = (v3 + v2) + v16;
  v23 = *(result + 36);
  if (vabds_f32(v22, v23) >= 0.0000001)
  {
    v24 = v22 - v23;
  }

  else
  {
    v24 = 0.0;
  }

  *(result + 44) = v24;
  return result;
}

uint64_t sub_1A933F12C(uint64_t result)
{
  if (*(result + 392))
  {
    v1 = 0;
    v2 = *(result + 240);
    v3 = (*(result + 248) - v2) >> 3;
    do
    {
      if (v3 <= v1)
      {
        goto LABEL_21;
      }

      v4 = *(v2 + 8 * v1);
      v5 = *(result + 120);
      if (v4 >= (*(result + 128) - v5) >> 2 || (v6 = *(result + 72), v4 >= (*(result + 80) - v6) >> 2))
      {
        sub_1A933D390();
      }

      *(result + 36) = *(result + 36) - (*(v5 + 4 * v4) * *(v6 + 4 * v4));
      v7 = *(result + 192);
      v8 = *(result + 376);
      v9 = (v7 + 8 * v8);
      if (v8)
      {
        v10 = *(result + 192);
        while (*v10 != v4)
        {
          if (++v10 == v9)
          {
            v10 = v9;
            break;
          }
        }

        if (v9 != v10)
        {
          for (i = v10 + 1; i != v9; ++i)
          {
            if (*i != v4)
            {
              *v10++ = *i;
            }
          }
        }
      }

      else
      {
        v10 = *(result + 192);
      }

      *(result + 376) = (v10 - v7) >> 3;
      *(result + 16) = vaddq_s64(*(result + 16), xmmword_1A9586590);
      v12 = *(result + 360);
      v13 = *(result + 144);
      if (v12 >= (*(result + 152) - v13) >> 3)
      {
LABEL_21:
        sub_1A933D390();
      }

      *(v13 + 8 * v12) = v4;
      ++*(result + 360);
      ++v1;
    }

    while (*(result + 392) > v1);
  }

  return result;
}

uint64_t sub_1A933F258(uint64_t result)
{
  if (*(result + 400))
  {
    v1 = 0;
    v2 = *(result + 264);
    v3 = (*(result + 272) - v2) >> 3;
    do
    {
      if (v3 <= v1)
      {
        goto LABEL_21;
      }

      v4 = *(v2 + 8 * v1);
      v5 = *(result + 120);
      if (v4 >= (*(result + 128) - v5) >> 2 || (v6 = *(result + 96), v4 >= (*(result + 104) - v6) >> 2))
      {
        sub_1A933D390();
      }

      *(result + 36) = *(result + 36) - (*(v5 + 4 * v4) * *(v6 + 4 * v4));
      v7 = *(result + 192);
      v8 = *(result + 376);
      v9 = (v7 + 8 * v8);
      if (v8)
      {
        v10 = *(result + 192);
        while (*v10 != v4)
        {
          if (++v10 == v9)
          {
            v10 = v9;
            break;
          }
        }

        if (v9 != v10)
        {
          for (i = v10 + 1; i != v9; ++i)
          {
            if (*i != v4)
            {
              *v10++ = *i;
            }
          }
        }
      }

      else
      {
        v10 = *(result + 192);
      }

      *(result + 376) = (v10 - v7) >> 3;
      *(result + 16) = vaddq_s64(*(result + 16), xmmword_1A9586590);
      v12 = *(result + 368);
      v13 = *(result + 168);
      if (v12 >= (*(result + 176) - v13) >> 3)
      {
LABEL_21:
        sub_1A933D390();
      }

      *(v13 + 8 * v12) = v4;
      ++*(result + 368);
      ++v1;
    }

    while (*(result + 400) > v1);
  }

  return result;
}

void *sub_1A933F384(void *result)
{
  if (result[49])
  {
    v1 = 0;
    v2 = result[30];
    v3 = (result[31] - v2) >> 3;
    while (v3 != v1)
    {
      v4 = result[45];
      v5 = result[18];
      if (v4 >= (result[19] - v5) >> 3)
      {
        break;
      }

      *(v5 + 8 * v4) = *(v2 + 8 * v1);
      ++result[45];
      if (result[49] <= ++v1)
      {
        goto LABEL_6;
      }
    }

LABEL_12:
    sub_1A933D390();
  }

LABEL_6:
  if (result[50])
  {
    v6 = 0;
    v7 = result[33];
    v8 = (result[34] - v7) >> 3;
    while (v8 != v6)
    {
      v9 = result[46];
      v10 = result[21];
      if (v9 >= (result[22] - v10) >> 3)
      {
        break;
      }

      *(v10 + 8 * v9) = *(v7 + 8 * v6);
      ++result[46];
      if (result[50] <= ++v6)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1A933F454(uint64_t result)
{
  if (*(result + 40) <= 0.0)
  {
    v24 = *(result + 360);
    if (v24)
    {
      v25 = *(result + 144);
      v26 = (*(result + 152) - v25) >> 3;
      while (v26)
      {
        v27 = *v25;
        v28 = *(result + 72);
        if (*v25 >= (*(result + 80) - v28) >> 2 || (v29 = *(result + 288), v27 >= (*(result + 296) - v29) >> 2))
        {
LABEL_51:
          sub_1A933D390();
        }

        *(v29 + 4 * v27) = *(v28 + 4 * v27);
        --v26;
        ++v25;
        if (!--v24)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_36:
      v30 = *(result + 368);
      if (v30)
      {
        v31 = *(result + 168);
        v32 = (*(result + 176) - v31) >> 3;
        while (v32)
        {
          v33 = *v31;
          v34 = *(result + 96);
          if (*v31 >= (*(result + 104) - v34) >> 2)
          {
            goto LABEL_51;
          }

          v35 = *(result + 288);
          if (v33 >= (*(result + 296) - v35) >> 2)
          {
            goto LABEL_51;
          }

          *(v35 + 4 * v33) = *(v34 + 4 * v33);
          --v32;
          ++v31;
          if (!--v30)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
LABEL_42:
        v36 = *(result + 384);
        if (!v36)
        {
          return result;
        }

        v37 = *(result + 216);
        for (i = (*(result + 224) - v37) >> 3; i; --i)
        {
          v39 = *v37;
          v40 = *(result + 120);
          if (*v37 >= (*(result + 128) - v40) >> 2)
          {
            goto LABEL_51;
          }

          v41 = *(result + 48);
          if (v39 >= (*(result + 56) - v41) >> 2)
          {
            goto LABEL_51;
          }

          v42 = *(result + 288);
          if (v39 >= (*(result + 296) - v42) >> 2)
          {
            goto LABEL_51;
          }

          *(v42 + 4 * v39) = (*(v40 + 4 * v39) * -*(result + 40)) / (*(v41 + 4 * v39) + *(v41 + 4 * v39));
          ++v37;
          if (!--v36)
          {
            return result;
          }
        }
      }
    }

LABEL_52:
    sub_1A933D390();
  }

  v1 = *(result + 368);
  if (v1)
  {
    v2 = *(result + 168);
    v3 = (*(result + 176) - v2) >> 3;
    while (v3)
    {
      v4 = *v2;
      v5 = *(result + 96);
      if (*v2 >= (*(result + 104) - v5) >> 2)
      {
        goto LABEL_51;
      }

      v6 = *(result + 288);
      if (v4 >= (*(result + 296) - v6) >> 2)
      {
        goto LABEL_51;
      }

      *(v6 + 4 * v4) = *(v5 + 4 * v4);
      --v3;
      ++v2;
      if (!--v1)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_52;
  }

LABEL_8:
  v7 = *(result + 384);
  if (v7)
  {
    v8 = *(result + 216);
    v9 = (*(result + 224) - v8) >> 3;
    while (v9)
    {
      v10 = *v8;
      v11 = *(result + 96);
      if (*v8 >= (*(result + 104) - v11) >> 2)
      {
        goto LABEL_51;
      }

      v12 = *(result + 288);
      if (v10 >= (*(result + 296) - v12) >> 2)
      {
        goto LABEL_51;
      }

      v13 = *(v11 + 4 * v10);
      if (v13 > 0.0)
      {
        v13 = 0.0;
      }

      *(v12 + 4 * v10) = v13;
      --v9;
      ++v8;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_52;
  }

LABEL_16:
  v14 = *(result + 360);
  if (v14)
  {
    v15 = *(result + 144);
    for (j = (*(result + 152) - v15) >> 3; j; --j)
    {
      v17 = *v15;
      v18 = *(result + 72);
      if (*v15 >= (*(result + 80) - v18) >> 2)
      {
        goto LABEL_51;
      }

      v19 = *(v18 + 4 * v17);
      if (v19 >= 0.0)
      {
        v23 = *(result + 288);
        if (v17 >= (*(result + 296) - v23) >> 2)
        {
          goto LABEL_51;
        }

        *(v23 + 4 * v17) = v19;
      }

      else
      {
        v20 = *(result + 96);
        if (v17 >= (*(result + 104) - v20) >> 2)
        {
          goto LABEL_51;
        }

        v21 = *(result + 288);
        if (v17 >= (*(result + 296) - v21) >> 2)
        {
          goto LABEL_51;
        }

        v22 = *(v20 + 4 * v17);
        if (v22 > 0.0)
        {
          v22 = 0.0;
        }

        *(v21 + 4 * v17) = v22;
      }

      ++v15;
      if (!--v14)
      {
        return result;
      }
    }

    goto LABEL_52;
  }

  return result;
}