id sub_1B372DDB0()
{
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [v0 colorWithAlphaComponent_];

  v2 = [objc_opt_self() timeRangeMarkUIProxyWithBackgroundColor:v1 cornerRadius:0.0];
  return v2;
}

id sub_1B372DEC0()
{
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC23TimeRangeMarkUIProvider_totalDuration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrowsingVideoModel.TimeRangeMarkUIProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1B372DF40()
{
  v1 = sub_1B3C996F8();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoPlayer);
  if (v10 && (v11 = [v10 audioStatus], v11 >= 2))
  {
    if (v11 != 2)
    {
      v17[2] = 0;
      v17[3] = 0xE000000000000000;
      v15 = v11;
      sub_1B3C9D378();
      MEMORY[0x1B8C69C10](0xD000000000000015, 0x80000001B3D103B0);
      v17[1] = v15;
      type metadata accessor for PXVideoSessionAudioStatus(0);
      sub_1B3C9D458();
      result = sub_1B3C9D4C8();
      __break(1u);
      return result;
    }

    v12 = [objc_opt_self() sharedController];
    v13 = [v12 isMuted];

    v14 = MEMORY[0x1E69C2C10];
    if (!v13)
    {
      v14 = MEMORY[0x1E69C2C18];
    }

    (*(v3 + 104))(v7, *v14, v1);
    v9 = v7;
  }

  else
  {
    (*(v3 + 104))(v9, *MEMORY[0x1E69C2C08], v1);
  }

  return sub_1B372C7A0(v9);
}

void sub_1B372E170(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if ([v1 videoPlayerDidChange])
    {
      sub_1B372E284();
    }

    if ([v1 highlightTimeRangesChanged])
    {
      sub_1B372E4B0();
    }
  }
}

void sub_1B372E1E4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if ([v1 audioStatusDidChange])
    {
      sub_1B372DF40();
    }

    if (([v1 desiredPlayStateDidChange] & 1) != 0 || objc_msgSend(v1, sel_durationDidChange))
    {
      sub_1B372E2C8();
    }

    if ([v1 playerItemDidChange])
    {
      sub_1B372E4B0();
    }
  }
}

void sub_1B372E284()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_assetViewModel) videoPlayer];

  sub_1B372CEF8(v1);
}

void sub_1B372E2C8()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoPlayer;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoPlayer);
  if (v2)
  {
    v3 = [v2 isPlaybackDesired];
  }

  else
  {
    v3 = 0;
  }

  if (v3 != (sub_1B372CF74() & 1))
  {
    sub_1B372C574(v3);
  }

  v5 = *(v0 + v1);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__controlSource);
    v44 = v5;
    [v44 duration];
    OUTLINED_FUNCTION_11_1();
    *&v7 = v7;
    v8 = [v6 setMaxValue_];
    OUTLINED_FUNCTION_16_3(v8, sel_currentTime, v9, v10, v11, v12, v13, v14, v44, v49);
    OUTLINED_FUNCTION_11_1();
    *&v15 = v15;
    v16 = [v6 setCurrentValue_];
    v17 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_timeRangeMarkUIProvider);
    OUTLINED_FUNCTION_16_3(v16, sel_duration, v18, v19, v20, v21, v22, v23, v45, v50);
    v24 = OUTLINED_FUNCTION_11_1();
    *(v17 + OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC23TimeRangeMarkUIProvider_totalDuration) = v25;
    OUTLINED_FUNCTION_16_3(v24, sel_duration, v26, v27, v28, v29, v30, v31, v46, v51);
    OUTLINED_FUNCTION_11_1();
    v33 = sub_1B372CC48(v32, 0);
    OUTLINED_FUNCTION_16_3(v33, sel_currentTime, v34, v35, v36, v37, v38, v39, v47, v52);
    OUTLINED_FUNCTION_11_1();
    sub_1B372CBB8(v40, 0);
  }

  else
  {
    v41 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__controlSource);
    LODWORD(v4) = 1008981770;
    [v41 setMaxValue_];
    [v41 setCurrentValue_];
    *(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_timeRangeMarkUIProvider) + OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC23TimeRangeMarkUIProvider_totalDuration) = 0;
    sub_1B372CBE4();
    if ((v42 & 1) == 0)
    {
      sub_1B372C454(0, 1);
    }

    sub_1B372CD08();
    if ((v43 & 1) == 0)
    {

      sub_1B372C47C(0, 1);
    }
  }
}

void sub_1B372E4B0()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_assetViewModel;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_assetViewModel);
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = sub_1B372FA48(v2);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v5 = sub_1B3711890();
  v6 = v5 - 1;
  if (v5 < 1)
  {

LABEL_25:
    v24 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__controlSource);
    sub_1B3710718(0, &qword_1EB84F868);
    [v24 setTimeRangeMarks_];
    OUTLINED_FUNCTION_19_1();

    return;
  }

  v7 = v5;
  v54 = v0;
  v8 = *(v0 + v1);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8 && (v10 = [v8 videoPlayer]) != 0 && (v11 = v10, v12 = objc_msgSend(v10, sel_timeRangeMapper), v11, v12))
  {
    v63 = v9;
    sub_1B37EAC00(0, v7, 0);
    v13 = 0;
    v14 = v9;
    if ((v4 & 0xC000000000000001) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    for (i = MEMORY[0x1B8C6A930](v13, v4); ; i = *(v4 + 8 * v13 + 32))
    {
      v16 = i;
      [i CMTimeRangeValue];
      v56 = v60;
      v57 = v61;
      v58 = v62;
      [v12 scaledTimeRangeForOriginalTimeRange_];

      v63 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B37EAC00((v17 > 1), v18 + 1, 1);
        v14 = v63;
      }

      *(v14 + 16) = v18 + 1;
      OUTLINED_FUNCTION_12_0((v14 + 48 * v18), v51, v52, v54, v55, v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66);
      if (v6 == v13)
      {
        break;
      }

      ++v13;
      if ((v4 & 0xC000000000000001) != 0)
      {
        goto LABEL_8;
      }

LABEL_9:
      ;
    }
  }

  else
  {
    *&v60 = v9;
    sub_1B37EAC00(0, v7, 0);
    v19 = 0;
    v14 = v9;
    if ((v4 & 0xC000000000000001) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    for (j = MEMORY[0x1B8C6A930](v19, v4); ; j = *(v4 + 8 * v19 + 32))
    {
      v21 = j;
      [j CMTimeRangeValue];

      *&v60 = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B37EAC00((v22 > 1), v23 + 1, 1);
        v14 = v60;
      }

      *(v14 + 16) = v23 + 1;
      OUTLINED_FUNCTION_12_0((v14 + 48 * v23), v51, v52, v54, v55, v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66);
      if (v6 == v19)
      {
        break;
      }

      ++v19;
      if ((v4 & 0xC000000000000001) != 0)
      {
        goto LABEL_16;
      }

LABEL_17:
      ;
    }
  }

  v27 = *(v54 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__controlSource);
  v28 = *(v14 + 16);
  if (v28)
  {
    v53 = *(v54 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel__controlSource);
    v29 = *(v54 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_timeRangeMarkUIProvider);
    v30 = *&v29[OBJC_IVAR____TtCC15PhotosUIPrivate18BrowsingVideoModelP33_3E2DB3DF5DA24823FD948C2812C855DC23TimeRangeMarkUIProvider_totalDuration];
    *&v60 = MEMORY[0x1E69E7CC0];
    sub_1B3C9D428();
    v31 = 0;
    v32 = 32;
    while (v31 < *(v14 + 16))
    {
      v34 = *(v14 + v32 + 16);
      v33 = *(v14 + v32 + 32);
      v64 = *(v14 + v32);
      v65 = v34;
      v66 = v33;
      sub_1B3C9CEF8();
      v36 = v35;
      sub_1B3C9CA18();
      sub_1B3C9CEF8();
      v38 = v37;
      if (v30 >= v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = v30;
      }

      if (qword_1EB84FF90 != -1)
      {
        OUTLINED_FUNCTION_1_7();
        swift_once();
      }

      v40 = v36;
      v41 = sub_1B3C9A558();
      __swift_project_value_buffer(v41, qword_1EB878BD8);
      v42 = sub_1B3C9A538();
      v43 = sub_1B3C9CAB8();
      if (OUTLINED_FUNCTION_18_1(v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134218240;
        *(v44 + 4) = v40;
        *(v44 + 12) = 2048;
        *(v44 + 14) = v39;
        _os_log_impl(&dword_1B36F3000, v42, v43, "Video highlight time range: start – %f, end – %f", v44, 0x16u);
        OUTLINED_FUNCTION_3_5();
      }

      ++v31;

      v45 = objc_allocWithZone(MEMORY[0x1E6958620]);
      v46 = v29;
      v47 = sub_1B3C9C5A8();
      *&v48 = v40;
      *&v49 = v39;
      [v45 initWithStartValue:v47 endValue:v46 identifier:v48 markUIProvider:v49];

      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      sub_1B3C9D418();
      v32 += 48;
      if (v28 == v31)
      {

        v27 = v53;
        goto LABEL_42;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_42:
    sub_1B3710718(0, &qword_1EB84F868);
    v50 = sub_1B3C9C778();

    [v27 setTimeRangeMarks_];

    OUTLINED_FUNCTION_19_1();
  }
}

uint64_t sub_1B372EA08()
{
  OUTLINED_FUNCTION_0_5();
  sub_1B372FBE8(v0, v1);
  return sub_1B3C982C8();
}

id sub_1B372EAC8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for BrowsingVideoModel()
{
  result = qword_1EB84FB28;
  if (!qword_1EB84FB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B372EC8C()
{
  result = sub_1B3C996F8();
  if (v1 <= 0x3F)
  {
    result = sub_1B3C98318();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1B372EE78(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_videoPlayer);
  if (v2)
  {
    v8 = v2;
    if ((sub_1B372D4E4() - 1) > 1u)
    {
    }

    else
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v8;
      *(v4 + 24) = a1;
      aBlock[4] = sub_1B372FA3C;
      aBlock[5] = v4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_2();
      aBlock[2] = v5;
      aBlock[3] = &block_descriptor_76;
      v6 = _Block_copy(aBlock);
      v7 = v8;

      [v7 performChanges_];
      _Block_release(v6);
    }
  }
}

id sub_1B372EFB8(void *a1)
{
  v2 = sub_1B3C9CEE8();
  v3 = *MEMORY[0x1E6960CC0];
  v4 = *(MEMORY[0x1E6960CC0] + 8);
  v5 = *(MEMORY[0x1E6960CC0] + 12);
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  v19 = v2;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v14 = v6;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  return [a1 seekToTime:&v19 toleranceBefore:&v15 toleranceAfter:&v11 completionHandler:0];
}

void sub_1B372F0B8()
{
  v1 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_browsingViewModel];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    if (sub_1B372D578())
    {
      if (qword_1EB84FF90 != -1)
      {
        OUTLINED_FUNCTION_1_7();
        swift_once();
      }

      v4 = sub_1B3C9A558();
      __swift_project_value_buffer(v4, qword_1EB878BD8);
      v5 = sub_1B3C9A538();
      v6 = sub_1B3C9CAC8();
      if (OUTLINED_FUNCTION_18_1(v6))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_15_3(&dword_1B36F3000, v7, v8, "BrowsingViewModel received mediaTimelineControlWillBeginChanging when we already thought changes had begun!");
        OUTLINED_FUNCTION_3_5();
      }
    }

    sub_1B372C648(1u);
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v2;
    OUTLINED_FUNCTION_4_4();
    v14[1] = 1107296256;
    OUTLINED_FUNCTION_2();
    v14[2] = v10;
    v14[3] = &block_descriptor_70;
    v11 = _Block_copy(v14);
    v12 = v3;
    v13 = v2;

    [v12 performChanges_];
    _Block_release(v11);
  }
}

void sub_1B372F290()
{
  if (!sub_1B372D578())
  {
    if (qword_1EB84FF90 != -1)
    {
      OUTLINED_FUNCTION_1_7();
      swift_once();
    }

    v0 = sub_1B3C9A558();
    __swift_project_value_buffer(v0, qword_1EB878BD8);
    v1 = sub_1B3C9A538();
    v2 = sub_1B3C9CAC8();
    if (OUTLINED_FUNCTION_18_1(v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1B36F3000, v1, v2, "BrowsingViewModel received mediaTimelineControlDidEndChanging when we did not know that changes had begun!", v3, 2u);
      OUTLINED_FUNCTION_3_5();
    }
  }

  sub_1B372C648(2u);
}

void sub_1B372F3CC()
{
  v1 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_browsingViewModel];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    if (!sub_1B372D578())
    {
      if (qword_1EB84FF90 != -1)
      {
        OUTLINED_FUNCTION_1_7();
        swift_once();
      }

      v4 = sub_1B3C9A558();
      __swift_project_value_buffer(v4, qword_1EB878BD8);
      v5 = sub_1B3C9A538();
      v6 = sub_1B3C9CAC8();
      if (OUTLINED_FUNCTION_18_1(v6))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_15_3(&dword_1B36F3000, v7, v8, "BrowsingViewModel received mediaTimelineControlDidEndDecelerating when we did not know that changes had begun!");
        OUTLINED_FUNCTION_3_5();
      }
    }

    sub_1B372C648(0);
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v2;
    OUTLINED_FUNCTION_4_4();
    v14[1] = 1107296256;
    OUTLINED_FUNCTION_2();
    v14[2] = v10;
    v14[3] = &block_descriptor_8;
    v11 = _Block_copy(v14);
    v12 = v3;
    v13 = v2;

    [v12 performChanges_];
    _Block_release(v11);
  }
}

void sub_1B372F544(void *a1, uint64_t a2, SEL *a3)
{
  v5 = sub_1B3C9C5A8();
  [a1 *a3];
}

uint64_t getEnumTagSinglePayload for BrowsingVideoModel.TimelineControlInteractionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BrowsingVideoModel.TimelineControlInteractionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B372F780()
{
  result = qword_1EB851F80;
  if (!qword_1EB851F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB851F80);
  }

  return result;
}

uint64_t sub_1B372F864()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB878BD8);
  __swift_project_value_buffer(v0, qword_1EB878BD8);
  return sub_1B3C9A528();
}

id sub_1B372F8F4(void *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B372F9AC;
  v8[3] = &block_descriptor_93;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithViewModel:a1 changeHandler:v5];

  _Block_release(v5);

  return v6;
}

void sub_1B372F9AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1B372FA48(void *a1)
{
  v2 = [a1 highlightTimeRanges];

  if (!v2)
  {
    return 0;
  }

  sub_1B3710718(0, &unk_1EB84F780);
  v3 = sub_1B3C9C788();

  return v3;
}

uint64_t keypath_get_95Tm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B372FBE8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_7_7(uint64_t a1@<X8>)
{
  v4 = a1 + v3;
  *v4 = v1;
  *(v4 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_1B3C9CEF8();
}

__n128 OUTLINED_FUNCTION_12_0@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __n128 a20, __int128 a21, __int128 a22)
{
  result = a20;
  a1[3] = a21;
  a1[4] = a22;
  a1[2] = a20;
  return result;
}

void OUTLINED_FUNCTION_15_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1B372FD3C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_title];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitle];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_symbolName];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_titleFont] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleFont] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_updater] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleFormatter] = 0;
  v4[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_cachedHasExuberatedLineHeightFont] = 2;
  v12 = OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_titleLabel;
  *&v4[v12] = sub_1B3730B6C(4);
  v13 = OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleLabel;
  *&v4[v13] = sub_1B3730B6C(5);
  v14 = type metadata accessor for OneUpGlassTitleSubtitleView();
  v23.receiver = v4;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1B3730650();
  v22[3] = v14;
  v22[0] = v15;
  v16 = objc_allocWithZone(MEMORY[0x1E69C4600]);
  v17 = sub_1B374922C(v22);
  v18 = OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_updater;
  v19 = *&v15[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_updater];
  *&v15[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_updater] = v17;
  v20 = v17;

  if (v20)
  {
    [v20 addUpdateSelector:sel_updateLabelTexts needsUpdate:{1, v22[0]}];

    v21 = *&v15[v18];
    if (v21)
    {
      [v21 addUpdateSelector:sel_updateLabelFonts needsUpdate:1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B372FF10()
{
  v1 = (v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_symbolName);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_titleFont) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleFont) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_updater) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_cachedHasExuberatedLineHeightFont) = 2;
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_titleLabel;
  *(v0 + v4) = sub_1B3730B6C(4);
  v5 = OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleLabel;
  *(v0 + v5) = sub_1B3730B6C(5);
  sub_1B3C9D4C8();
  __break(1u);
}

uint64_t sub_1B3730030(uint64_t result, uint64_t a2, void *a3)
{
  v5 = (v3 + *a3);
  v6 = v5[1];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((v7 = result, result = *v5, *v5 == v7) ? (v8 = v6 == a2) : (v8 = 0), !v8 && (result = sub_1B3C9D6A8(), (result & 1) == 0)))
  {
LABEL_10:

    return sub_1B37307D8();
  }

  return result;
}

uint64_t sub_1B37300B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  v5 = *v4;
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  sub_1B3730030(v5, v6, a3);
}

void *sub_1B373010C(void *result, void *a2)
{
  v3 = *(v2 + *a2);
  if (v3)
  {
    if (v3 == result)
    {
      return result;
    }

    return sub_1B3730A64();
  }

  if (result)
  {
    return sub_1B3730A64();
  }

  return result;
}

void sub_1B3730138(void *a1, void *a2)
{
  v5 = *(v2 + *a2);
  *(v2 + *a2) = a1;
  v4 = a1;
  sub_1B373010C(v5, a2);
}

id sub_1B37301A4()
{
  result = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_updater);
  if (result)
  {
    return [result updateIfNeeded];
  }

  __break(1u);
  return result;
}

id sub_1B37301C4()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for OneUpGlassTitleSubtitleView();
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  sub_1B37301A4();
  v1 = sub_1B37305D0(v0);
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  Width = CGRectGetWidth(v24);
  v7 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_titleLabel];
  result = [v7 font];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  [result lineHeight];
  v11 = v10;

  v12 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleLabel];
  result = [v12 font];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = result;
  [result lineHeight];
  v15 = v14;

  v16 = v5 + v11 + v15;
  [v0 bounds];
  v17 = CGRectGetHeight(v25) - (v3 + v3);
  if (v16 <= v17)
  {
    v18 = v3 + (v17 - v16) * 0.5;
  }

  else
  {
    v18 = v3;
  }

  v19 = Width - (v1 + v1);
  [v7 setFrame_];
  v20 = v5 + v11 + v18;
  [v0 bounds];
  v21 = CGRectGetHeight(v26) - v3 - v15;
  if (v21 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  return [v12 setFrame_];
}

double sub_1B3730430()
{
  v1 = sub_1B37305D0(v0);
  v2 = sub_1B3730544(*&v0[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_titleLabel], 1.79769313e308);
  v3 = sub_1B3730544(*&v0[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleLabel], 1.79769313e308);
  if (v2 > v3)
  {
    v3 = v2;
  }

  return v1 + v1 + v3;
}

uint64_t sub_1B37304C8()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_cachedHasExuberatedLineHeightFont;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_cachedHasExuberatedLineHeightFont);
  if (v2 == 2)
  {
    v3 = [*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_titleLabel) font];
    if (v3)
    {
      v4 = v3;
      LOBYTE(v2) = CTFontHasExuberatedLineHeight();

      *(v0 + v1) = v2;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

double sub_1B3730544(void *a1, double a2)
{
  v4 = [a1 font];
  if (!v4)
  {
    return 0.0;
  }

  v5 = v4;
  [v4 lineHeight];
  [a1 sizeThatFits_];
  v8 = v7;

  return v8;
}

double sub_1B37305D0(void *a1)
{
  [a1 bounds];
  v2 = 22.0;
  if (CGRectGetHeight(v4) > 0.0)
  {
    [a1 bounds];
    v2 = CGRectGetHeight(v5) * 0.5;
  }

  if ((sub_1B37304C8() & 1) == 0)
  {
    sub_1B3C99118();
  }

  return round(v2);
}

id sub_1B3730650()
{
  v1 = v0;
  v2 = sub_1B3C9A618();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1B3C9A638();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C9A608();
  sub_1B3C9A648();
  v9[3] = v3;
  v9[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_1B3C9A628();
  (*(v4 + 8))(v6, v3);
  sub_1B3C9CF28();
  [v1 addSubview_];
  return [v1 addSubview_];
}

id sub_1B37307E4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_titleLabel];
  if (*&v1[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_title + 8])
  {

    v3 = sub_1B3C9C5A8();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];

  v4 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_symbolName + 8];
  if (v4)
  {
    v5 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_symbolName];
    v6 = OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleFormatter;
    v7 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleFormatter];
    if (v7)
    {

      v8 = v7;
    }

    else
    {
      type metadata accessor for OneUpSubtitleWithSymbolFormatter();
      v8 = swift_allocObject();
      sub_1B3730D20();

      *(v8 + 16) = sub_1B3C9C4D8();
    }

    *&v1[v6] = v8;

    v11 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleLabel];
    v12 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitle];
    v13 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitle + 8];

    v10 = sub_1B37A5114(v12, v13, v5, v4);

    [v11 setAttributedText_];
  }

  else
  {
    v9 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleLabel];
    if (*&v1[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitle + 8])
    {

      v10 = sub_1B3C9C5A8();
    }

    else
    {
      v10 = 0;
    }

    [v9 setText_];
  }

  return [v1 invalidateIntrinsicContentSize];
}

void *sub_1B3730A70(void *result)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_updater))
  {
    return [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_updater) setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

id sub_1B3730A98()
{
  [*&v0[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_titleLabel] setFont_];
  [*&v0[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_subtitleLabel] setFont_];
  v0[OBJC_IVAR____TtC15PhotosUIPrivate27OneUpGlassTitleSubtitleView_cachedHasExuberatedLineHeightFont] = 2;

  return [v0 invalidateIntrinsicContentSize];
}

id sub_1B3730B6C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setTextAlignment_];
  [v2 setLineBreakMode_];
  v3 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  return v2;
}

id OneUpGlassTitleSubtitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpGlassTitleSubtitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B3730D20()
{
  result = qword_1EB84F190;
  if (!qword_1EB84F190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84F190);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void __swiftcall PUOneUpSpatialToastController.init()(PUOneUpSpatialToastController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id PUOneUpSpatialToastController.init()()
{
  *(v0 + OBJC_IVAR___PUOneUpSpatialToastController_toastProgress) = 0;
  *(v0 + OBJC_IVAR___PUOneUpSpatialToastController_downloadProgressToast) = 0;
  *(v0 + OBJC_IVAR___PUOneUpSpatialToastController_downloadTask) = 0;
  v7.super_class = PUOneUpSpatialToastController;
  v1 = objc_msgSendSuper2(&v7, sel_init);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 defaultCenter];
  sub_1B3C99D58();
  v5 = sub_1B3C99D18();
  [v4 addObserver:v3 selector:sel_threeDToggleDidChange name:v5 object:0];

  return v3;
}

uint64_t sub_1B3730F18()
{
  v1 = v0;
  v2 = sub_1B3C99CE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  sub_1B3C99D58();
  sub_1B3C99D48();
  sub_1B3C99D28();

  v12 = *(v3 + 16);
  v12(v9, v11, v2);
  v13 = (*(v3 + 88))(v9, v2);
  if (v13 == *MEMORY[0x1E69C2E48])
  {
    v14 = OBJC_IVAR___PUOneUpSpatialToastController_downloadProgressToast;
    swift_beginAccess();
    v15 = *&v1[v14];
    if (!v15)
    {
      (*(v3 + 8))(v11, v2);
      return swift_endAccess();
    }

    swift_endAccess();
    [v15 dismissAnimated_];
  }

  else if (v13 == *MEMORY[0x1E69C2E38])
  {
    [v0 createAndStartToast];
  }

  else if (v13 != *MEMORY[0x1E69C2E50] && v13 != *MEMORY[0x1E69C2E40])
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1B3C9D378();

    v19 = 0xD000000000000012;
    v20 = 0x80000001B3D106C0;
    v12(v6, v11, v2);
    v17 = sub_1B3C9C608();
    MEMORY[0x1B8C69C10](v17);

    result = sub_1B3C9D4C8();
    __break(1u);
    return result;
  }

  return (*(v3 + 8))(v11, v2);
}

uint64_t sub_1B373124C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = aBlock - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  [v6 setTotalUnitCount_];
  [v6 setCompletedUnitCount_];
  sub_1B3710718(0, &qword_1EB852010);
  v7 = v6;
  v8 = sub_1B373158C(0, v7);
  [v8 setBottomSpacing_];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1B3732668;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_9;
  v10 = _Block_copy(aBlock);

  [v8 setCloseButtonAction_];
  _Block_release(v10);
  v11 = sub_1B3C9C5A8();
  v12 = PXLocalizedString();

  v13 = sub_1B3C9C5E8();
  v15 = v14;

  sub_1B3732678(v13, v15, v8);
  v16 = *(v1 + OBJC_IVAR___PUOneUpSpatialToastController_toastProgress);
  *(v1 + OBJC_IVAR___PUOneUpSpatialToastController_toastProgress) = v7;
  v17 = v7;

  v18 = OBJC_IVAR___PUOneUpSpatialToastController_downloadProgressToast;
  swift_beginAccess();
  v19 = *(v1 + v18);
  *(v1 + v18) = v8;
  v20 = v8;

  [v20 willStartProgress];
  v21 = sub_1B3C9C8B8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;
  v23[5] = v20;
  v23[6] = ObjectType;
  v24 = v20;
  sub_1B3850B9C();
  v26 = v25;

  *(v1 + OBJC_IVAR___PUOneUpSpatialToastController_downloadTask) = v26;
}

id sub_1B373158C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTargetDestination:a1 progress:a2];

  return v4;
}

void sub_1B37315E8()
{
  v0 = sub_1B3C99CE8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR___PUOneUpSpatialToastController_downloadTask))
    {

      sub_1B3C9C8D8();
    }

    sub_1B3C99D58();
    sub_1B3C99D48();
    (*(v1 + 104))(v3, *MEMORY[0x1E69C2E48], v0);
    sub_1B3C99D38();

    v6 = OBJC_IVAR___PUOneUpSpatialToastController_downloadProgressToast;
    swift_beginAccess();
    v7 = *&v5[v6];
    *&v5[v6] = 0;

    v8 = *&v5[OBJC_IVAR___PUOneUpSpatialToastController_toastProgress];
    *&v5[OBJC_IVAR___PUOneUpSpatialToastController_toastProgress] = 0;
  }
}

uint64_t sub_1B3731784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B3731824, 0, 0);
}

uint64_t sub_1B3731824()
{
  OUTLINED_FUNCTION_3_8();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_allocObject();
    *(v0 + 80) = v3;
    v10 = *(v0 + 48);
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v0 + 88) = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v10;
    v5 = v2;

    v6 = v10;
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *v7 = v0;
    v7[1] = sub_1B37319A8;

    return MEMORY[0x1EEE2A268](sub_1B373286C, v4);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v8();
  }
}

uint64_t sub_1B37319A8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1B3731B44;
  }

  else
  {

    v3 = sub_1B3731AE0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B3731AE0()
{

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_1B3731B44()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  v5 = sub_1B3C9C8B8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1B3C9C888();

  v7 = v1;
  v8 = sub_1B3C9C878();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  v9[5] = v1;
  v9[6] = v4;

  sub_1B3850B9C();

  OUTLINED_FUNCTION_1();

  return v11();
}

void sub_1B3731CB0(double a1, uint64_t a2, void *a3)
{
  v5 = sub_1B3C99CE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v11 = *(Strong + OBJC_IVAR___PUOneUpSpatialToastController_toastProgress);
  if (!v11)
  {
LABEL_7:
    if (a1 != 100.0)
    {

      return;
    }

    if (qword_1EB84FF98 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (a1 > -9.22337204e18)
  {
    if (a1 >= 9.22337204e18)
    {
      __break(1u);
      return;
    }

    [v11 setCompletedUnitCount_];
    goto LABEL_7;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_9:
  v12 = sub_1B3C9A558();
  __swift_project_value_buffer(v12, qword_1EB851FD8);
  v13 = sub_1B3C9A538();
  v14 = sub_1B3C9CAA8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1B36F3000, v13, v14, "Model asset subscription download is successful.", v15, 2u);
    MEMORY[0x1B8C6EC70](v15, -1, -1);
  }

  [a3 finishProgressMarkingAsComplete_];
  sub_1B3C99D58();
  sub_1B3C99D48();
  (*(v6 + 104))(v8, *MEMORY[0x1E69C2E40], v5);
  sub_1B3C99D38();
}

uint64_t sub_1B3731F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_1B3C9C888();
  v6[11] = sub_1B3C9C878();
  v8 = sub_1B3C9C848();

  return MEMORY[0x1EEE6DFA0](sub_1B3731FC4, v8, v7);
}

uint64_t sub_1B3731FC4()
{

  OUTLINED_FUNCTION_3_8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR___PUOneUpSpatialToastController_downloadProgressToast;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      [v4 dismissAnimated_];
    }

    if (*&v2[OBJC_IVAR___PUOneUpSpatialToastController_downloadTask])
    {

      sub_1B3C9C8D8();
    }

    v5 = *&v2[v3];
    *&v2[v3] = 0;

    v6 = *&v2[OBJC_IVAR___PUOneUpSpatialToastController_toastProgress];
    *&v2[OBJC_IVAR___PUOneUpSpatialToastController_toastProgress] = 0;

    if (qword_1EB84FF98 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 72);
    v8 = sub_1B3C9A558();
    __swift_project_value_buffer(v8, qword_1EB851FD8);
    v9 = v7;
    v10 = sub_1B3C9A538();
    v11 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 72);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1B36F3000, v10, v11, "Download failed with error: %{public}@.", v13, 0xCu);
      sub_1B3732918(v14);
      MEMORY[0x1B8C6EC70](v14, -1, -1);
      MEMORY[0x1B8C6EC70](v13, -1, -1);
    }

    v17 = sub_1B3C97F18();
    sub_1B3732214(v17);
  }

  OUTLINED_FUNCTION_1();

  return v18();
}

void sub_1B3732214(void *a1)
{
  v2 = sub_1B3C99CE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultManager];
  v6 = [swift_getObjCClassFromMetadata() statusManagerItemIdentifier];
  if (!v6)
  {
    sub_1B3C9C5E8();
    v6 = sub_1B3C9C5A8();
  }

  v7 = [v14 willBeginLoadOperationWithItemIdentifier_];

  v8 = v7;
  v9 = v7;
  if (!v7)
  {
    sub_1B3C9C5E8();
    v9 = sub_1B3C9C5A8();

    sub_1B3C9C5E8();
    v8 = sub_1B3C9C5A8();
  }

  v10 = v7;
  [v14 didUpdateLoadOperationWithTrackingID:v9 withProgress:0.0];

  if (a1)
  {
    a1 = sub_1B3C97F18();
  }

  [v14 didCompleteLoadOperationWithTrackingID:v8 withSuccess:0 error:a1 isFromExplicitUserAction:1];

  sub_1B3C99D58();
  sub_1B3C99D48();
  v11 = sub_1B3C99CF8();

  if (v11)
  {
    sub_1B3C99D48();
    (*(v3 + 104))(v5, *MEMORY[0x1E69C2E48], v2);
    sub_1B3C99D38();
  }

  else
  {
    v12 = v14;
  }
}

uint64_t sub_1B3732594()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB851FD8);
  __swift_project_value_buffer(v0, qword_1EB851FD8);
  return sub_1B3C9A528();
}

void sub_1B3732678(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();

  [a3 setCustomSubtitleText_];
}

uint64_t sub_1B37326DC()
{
  OUTLINED_FUNCTION_2_10();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_6(v1);

  return sub_1B3731784(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B373277C()
{

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B3732878()
{
  OUTLINED_FUNCTION_2_10();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_6(v1);

  return sub_1B3731F28(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B3732918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return swift_beginAccess();
}

uint64_t sub_1B37329B8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852038);
  v4 = MEMORY[0x1EEE9AC00](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = sub_1B3C99698();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x1E69C2BF0];
  v25 = sub_1B37376F4(&qword_1EB84F930, MEMORY[0x1E69C2BF0]);
  sub_1B3C9D208();
  v17 = v16;
  v18 = v28;
  sub_1B37376F4(&qword_1EB84F938, v17);
  v26 = a2;
  v19 = sub_1B3C9C528();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_1B3C9D248();
  }

  v22 = v29;
  sub_1B3737684(v7, v29);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t static OneUpToolbarUtilities.topBarKind(chromeEnvironment:)@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  if ((sub_1B3C999E8() & 1) != 0 && (sub_1B3C99A88() & 1) == 0)
  {
    v2 = MEMORY[0x1E69C2A40];
  }

  else
  {
    v2 = MEMORY[0x1E69C2A38];
  }

  v3 = *v2;
  sub_1B3C99548();
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 104);

  return v6(a1, v3, v4);
}

void static OneUpToolbarUtilities.toolbarKind(chromeEnvironment:)()
{
  OUTLINED_FUNCTION_39();
  v102 = v1;
  sub_1B3C995C8();
  OUTLINED_FUNCTION_0();
  v103 = v3;
  v104 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v95 = v4 - v5;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x1EEE9AC00](v6);
  v93 = v84 - v7;
  sub_1B3C99AA8();
  OUTLINED_FUNCTION_0();
  v100 = v8;
  v101 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v99 = v11 - v10;
  v105 = sub_1B3C99C28();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v97 = v15 - v16;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v84 - v18;
  v20 = sub_1B3C99B38();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  v94 = v24 - v25;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x1EEE9AC00](v26);
  v92 = v84 - v27;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_3_9();
  swift_getObjectType();
  sub_1B3C99988();
  OUTLINED_FUNCTION_11_2();
  v29 = sub_1B3C99A88();
  OUTLINED_FUNCTION_11_2();
  v30 = sub_1B3C99958();
  OUTLINED_FUNCTION_11_2();
  sub_1B3C999B8();
  OUTLINED_FUNCTION_11_2();
  v98 = sub_1B3C99A18();
  OUTLINED_FUNCTION_11_2();
  sub_1B3C99A58();
  if (v29)
  {
    swift_unknownObjectRelease();
    (*(v13 + 8))(v19, v105);
    (*(v22 + 8))(v0, v20);
    v32 = MEMORY[0x1E69C2A68];
LABEL_15:
    (*(v103 + 104))(v102, *v32, v104);
LABEL_16:
    OUTLINED_FUNCTION_27();
    return;
  }

  v90 = v13;
  v91 = v0;
  v96 = v19;
  if (v30)
  {
    swift_unknownObjectRelease();
    v33 = OUTLINED_FUNCTION_14_3();
    v34(v33);
    (*(v22 + 8))(v91, v20);
    v32 = MEMORY[0x1E69C2AA8];
    goto LABEL_15;
  }

  v35 = v31;
  ObjectType = swift_getObjectType();
  v37 = v100;
  v38 = v101;
  v39 = v101 + 104;
  v40 = *(v101 + 104);
  v41 = v99;
  v40(v99, *MEMORY[0x1E69C2C70], v100);
  v89 = ObjectType;
  v42 = sub_1B3C99CD8();
  v88 = v35;
  LOBYTE(v35) = v42;
  v45 = *(v38 + 8);
  v44 = v38 + 8;
  v43 = v45;
  v46 = OUTLINED_FUNCTION_7_8();
  v45(v46);
  if (v35 & 1) != 0 || (v40(v41, *MEMORY[0x1E69C2C78], v37), v47 = sub_1B3C99CD8(), v48 = OUTLINED_FUNCTION_7_8(), v43(v48), (v47))
  {
    swift_unknownObjectRelease();
    v49 = OUTLINED_FUNCTION_14_3();
    v50(v49);
    (*(v22 + 8))(v91, v20);
    v32 = MEMORY[0x1E69C2A88];
    goto LABEL_15;
  }

  v85 = v43;
  v86 = v40;
  v84[1] = v39;
  v101 = v44;
  v87 = v22;
  v51 = v105;
  if (v98)
  {
    swift_unknownObjectRelease();
    (*(v90 + 8))(v96, v51);
LABEL_14:
    (*(v87 + 8))(v91, v20);
    v32 = MEMORY[0x1E69C2A78];
    goto LABEL_15;
  }

  v52 = v90;
  v53 = v97;
  v54 = *(v90 + 104);
  v54(v97, *MEMORY[0x1E69C2DD8], v105);
  v55 = v96;
  v98 = sub_1B3C99A98();
  v56 = *(v52 + 8);
  v56(v53, v51);
  if (v98)
  {
    swift_unknownObjectRelease();
    v56(v55, v51);
    goto LABEL_14;
  }

  v54(v53, *MEMORY[0x1E69C2DD0], v51);
  v57 = sub_1B3C99A98();
  v56(v53, v51);
  v58 = v56;
  if (v57)
  {
    swift_unknownObjectRelease();
    v56(v55, v105);
    goto LABEL_14;
  }

  if (PFIsPreferences())
  {
    v59 = v56;
    v61 = v99;
    v60 = v100;
    v86(v99, *MEMORY[0x1E69C2C60], v100);
    v62 = sub_1B3C99CD8();
    v63 = v61;
    v58 = v56;
    v85(v63, v60);
    if (v62)
    {
      v64 = v87;
      v65 = v92;
      (*(v87 + 104))(v92, *MEMORY[0x1E69C2CB8], v20);
      v66 = v91;
      v67 = sub_1B3C99A98();
      swift_unknownObjectRelease();
      v68 = *(v64 + 8);
      v68(v65, v20);
      v59(v55, v105);
      v68(v66, v20);
      v69 = v103;
      v70 = MEMORY[0x1E69C2A98];
      if ((v67 & 1) == 0)
      {
        v70 = MEMORY[0x1E69C2A90];
      }

      v71 = v93;
      v72 = v104;
      (*(v103 + 104))(v93, *v70, v104);
      (*(v69 + 32))(v102, v71, v72);
      goto LABEL_16;
    }
  }

  v73 = v87;
  v74 = v94;
  v75 = v91;
  (*(v87 + 16))(v94, v91, v20);
  v76 = (*(v73 + 88))(v74, v20);
  v77 = v102;
  if (v76 == *MEMORY[0x1E69C2CC8])
  {
    v78 = MEMORY[0x1E69C2A70];
    v80 = v103;
    v79 = v104;
    v81 = v105;
LABEL_34:
    swift_unknownObjectRelease();
    v58(v96, v81);
    (*(v87 + 8))(v75, v20);
    v82 = *v78;
    v83 = v95;
    (*(v80 + 104))(v95, v82, v79);
    (*(v80 + 32))(v77, v83, v79);
    goto LABEL_16;
  }

  v80 = v103;
  v79 = v104;
  v81 = v105;
  if (v76 == *MEMORY[0x1E69C2CD0])
  {
    v78 = MEMORY[0x1E69C2A80];
    goto LABEL_34;
  }

  if (v76 == *MEMORY[0x1E69C2CE0])
  {
    v78 = MEMORY[0x1E69C2AB0];
    goto LABEL_34;
  }

  if (v76 == *MEMORY[0x1E69C2CB8])
  {
    v78 = MEMORY[0x1E69C2A60];
    goto LABEL_34;
  }

  if (v76 == *MEMORY[0x1E69C2CC0])
  {
    v78 = MEMORY[0x1E69C2A58];
    goto LABEL_34;
  }

  if (v76 == *MEMORY[0x1E69C2CD8])
  {
    v78 = MEMORY[0x1E69C2AA0];
    goto LABEL_34;
  }

  sub_1B3C9D4C8();
  __break(1u);
}

uint64_t static OneUpToolbarUtilities.visibleElements(forChromeEnvironment:accessoryDrawerVisibility:chromeSettings:dismissalState:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_project_boxed_opaque_existential_0Tm(a4, v9);

  return sub_1B37367EC(a1, a2, a3, v11, a5, v9, v10);
}

void static OneUpToolbarUtilities.allowedElementsForVisibleAccessoryDrawer(_:toolbarPosition:enableSideCommentsInLandscape:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  sub_1B3C995F8();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_9();
  swift_getObjectType();
  v6 = sub_1B3C99908();
  v7 = sub_1B3C99A88();
  sub_1B3C99C68();
  v8 = sub_1B3C9B4E8();
  if (v8 != sub_1B3C9B4E8())
  {
    if ((v6 & 1) == 0)
    {
      v17 = *(v3 + 104);
      if (v7)
      {
        v18 = OUTLINED_FUNCTION_12_1();
        v17(v18);
        OUTLINED_FUNCTION_13_5();
        v19 = OUTLINED_FUNCTION_5_1();
        v20(v19);
      }

      v21 = OUTLINED_FUNCTION_12_1();
      v17(v21);
      goto LABEL_11;
    }

LABEL_7:
    v15 = OUTLINED_FUNCTION_12_1();
    v16(v15);
LABEL_11:
    OUTLINED_FUNCTION_13_5();
    v22 = OUTLINED_FUNCTION_5_1();
    v23(v22);
    goto LABEL_12;
  }

  if (v6)
  {
    goto LABEL_7;
  }

  if ((v7 & 1) != 0 && (v1 & 1) == 0)
  {
    v9 = *(v3 + 104);
    v10 = OUTLINED_FUNCTION_12_1();
    v9(v10);
    OUTLINED_FUNCTION_13_5();
    v11 = *(v3 + 8);
    v12 = OUTLINED_FUNCTION_5_1();
    v11(v12);
    v13 = OUTLINED_FUNCTION_12_1();
    v9(v13);
    sub_1B3734C0C();
    v14 = OUTLINED_FUNCTION_5_1();
    v11(v14);
  }

LABEL_12:
  OUTLINED_FUNCTION_27();
}

void static OneUpToolbarUtilities.allowedTopBarButtons(chromeEnvironment:includeAirPlayButton:includeShowInLibraryButton:)()
{
  OUTLINED_FUNCTION_39();
  v47 = v1;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v46 = v7;
  sub_1B3C99698();
  OUTLINED_FUNCTION_0();
  v43 = v9;
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_9();
  v14 = sub_1B3C99B58();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  swift_getObjectType();
  v45 = sub_1B3C998F8();
  OUTLINED_FUNCTION_7_8();
  v48 = sub_1B3C99A58();
  v40 = v24;
  OUTLINED_FUNCTION_7_8();
  v41 = sub_1B3C99968();
  OUTLINED_FUNCTION_7_8();
  v39 = sub_1B3C99908();
  OUTLINED_FUNCTION_7_8();
  sub_1B3C99998();
  (*(v16 + 104))(v20, *MEMORY[0x1E69C2CF8], v14);
  v42 = sub_1B3C99B48();
  v25 = *(v16 + 8);
  v25(v20, v14);
  v26 = v23;
  v27 = v0;
  v28 = v12;
  v29 = v44;
  v25(v26, v14);
  v30 = v43;
  v49 = MEMORY[0x1E69E7CC0];
  sub_1B37376F4(&qword_1EB84F930, MEMORY[0x1E69C2BF0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852018);
  sub_1B3737410();
  sub_1B3C9D278();
  v31 = v47;
  if (v47)
  {
    sub_1B3C99638();
    sub_1B37329B8(v27, v28);
    v32 = *(v30 + 8);
    v33 = OUTLINED_FUNCTION_5_1();
    v32(v33);
    (v32)(v27, v29);
  }

  if ((v45 & 1) != 0 && (v42 & 1) == 0)
  {
    if (v41)
    {
      sub_1B3733C80(v40, v27);
    }

    else
    {
      if (v39)
      {
        sub_1B3C99628();
        goto LABEL_6;
      }

      sub_1B3733F14(v6, v4, v38 & 1, v31 & 1, v27);
    }

    v34 = v28;
    v35 = v27;
    goto LABEL_7;
  }

  sub_1B3C99688();
LABEL_6:
  v34 = v27;
  v35 = v28;
LABEL_7:
  sub_1B37329B8(v34, v35);
  swift_unknownObjectRelease();
  v36 = *(v30 + 8);
  v37 = OUTLINED_FUNCTION_5_1();
  v36(v37);
  (v36)(v27, v29);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B3733C80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v16[2] = a1;
  v3 = sub_1B3C99698();
  v16[0] = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  v9 = sub_1B3C99AA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = MEMORY[0x1E69E7CC0];
  sub_1B37376F4(&qword_1EB84F930, MEMORY[0x1E69C2BF0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852018);
  sub_1B3737410();
  v16[1] = a2;
  sub_1B3C9D278();
  swift_getObjectType();
  (*(v10 + 104))(v12, *MEMORY[0x1E69C2C48], v9);
  v13 = sub_1B3C99CD8();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_1B3C99608();
    sub_1B37329B8(v8, v6);
    v15 = *(v16[0] + 8);
    v15(v6, v3);
    return (v15)(v8, v3);
  }

  return result;
}

uint64_t sub_1B3733F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v42 = a4;
  v43 = a3;
  v41 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852028);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v39 - v8;
  v50 = sub_1B3C995C8();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1B3C99AA8();
  v52 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B3C99698();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  swift_getObjectType();
  v40 = sub_1B3C99A88();
  v44 = sub_1B3C99A58();
  v51 = v19;
  v47 = a1;
  v49 = a2;
  sub_1B3C99A28();
  swift_getObjectType();
  v53 = sub_1B3C99CB8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852030);
  v54 = v13;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B3CFA2E0;
  sub_1B3C99668();
  sub_1B3C99688();
  v55 = v20;
  sub_1B37376F4(&qword_1EB84F930, MEMORY[0x1E69C2BF0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852018);
  sub_1B3737410();
  sub_1B3C9D278();
  if (v42)
  {
    sub_1B3C99638();
    sub_1B37329B8(v18, v16);
    v21 = *(v54 + 8);
    v21(v16, v12);
    v21(v18, v12);
  }

  if (v43)
  {
    sub_1B3C99678();
    sub_1B37329B8(v18, v16);
    v22 = *(v54 + 8);
    v22(v16, v12);
    v22(v18, v12);
  }

  v23 = v45;
  if (v40)
  {
    swift_getObjectType();
    v24 = v52;
    (*(v52 + 104))(v11, *MEMORY[0x1E69C2C80], v23);
    v25 = sub_1B3C99CD8();
    (*(v24 + 8))(v11, v23);
    if (v25)
    {
      sub_1B3C99658();
      sub_1B37329B8(v18, v16);
      v26 = *(v54 + 8);
      v26(v16, v12);
      v26(v18, v12);
    }
  }

  if (v53)
  {
    sub_1B3C99648();
    sub_1B37329B8(v18, v16);
    v27 = *(v54 + 8);
    v27(v16, v12);
    v27(v18, v12);
  }

  swift_getObjectType();
  v28 = v52;
  (*(v52 + 104))(v11, *MEMORY[0x1E69C2C48], v23);
  v29 = sub_1B3C99CD8();
  (*(v28 + 8))(v11, v23);
  if (v29)
  {
    sub_1B3C99618();
    sub_1B37329B8(v18, v16);
    v30 = *(v54 + 8);
    v30(v16, v12);
    v30(v18, v12);
  }

  v31 = v46;
  static OneUpToolbarUtilities.toolbarKind(chromeEnvironment:)();
  v32 = v48;
  v33 = v50;
  v34 = (*(v48 + 88))(v31, v50);
  if (v34 == *MEMORY[0x1E69C2AA0] || v34 == *MEMORY[0x1E69C2A90] || v34 == *MEMORY[0x1E69C2A98])
  {
    sub_1B3C99668();
    v37 = v39;
    sub_1B370CDD4(v39);
    swift_unknownObjectRelease();

    (*(v54 + 8))(v18, v12);
    return sub_1B371B36C(v37, &qword_1EB852028);
  }

  else
  {
    swift_unknownObjectRelease();

    return (*(v32 + 8))(v31, v33);
  }
}

void static OneUpToolbarUtilities.toolbarPosition(forWindowOrientation:isLandscape:verticalSizeClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_1B3C99C78();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4();
  v27 = (v25 - v26);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v45 - v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_9();
  if (v14 != 2)
  {
    v46 = v32;
    if ((v18 & 1) == 0)
    {
      if (v20 == 3)
      {
        v44 = MEMORY[0x1E69C2DF8];
        if ((v16 & 1) == 0)
        {
          v44 = MEMORY[0x1E69C2E00];
        }

        (*(v32 + 104))(v27, *v44, v23);
        v42 = OUTLINED_FUNCTION_6_8();
        v43 = v27;
        goto LABEL_15;
      }

      if (v20 == 4)
      {
        v41 = MEMORY[0x1E69C2DF0];
        if ((v16 & 1) == 0)
        {
          v41 = MEMORY[0x1E69C2E00];
        }

        (*(v32 + 104))(v31, *v41, v23);
        v42 = OUTLINED_FUNCTION_6_8();
        v43 = v31;
LABEL_15:
        v16(v42, v43, v23);
        v16(v22, v12, v23);
        goto LABEL_16;
      }
    }

    (*(v32 + 104))(v12, *MEMORY[0x1E69C2E00], v23);
    (*(v46 + 32))(v22, v12, v23);
LABEL_16:
    OUTLINED_FUNCTION_27();
    return;
  }

  OUTLINED_FUNCTION_27();

  v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

void static OneUpToolbarUtilities.linkType(for:importState:)()
{
  OUTLINED_FUNCTION_39();
  v21 = v0;
  v2 = v1;
  v3 = sub_1B3C99CA8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = sub_1B3C99AA8();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  swift_getObjectType();
  (*(v12 + 104))(v16, *MEMORY[0x1E69C2C40], v10);
  v17 = sub_1B3C99CD8();
  (*(v12 + 8))(v16, v10);
  if ((v17 & 1) == 0)
  {
    v18 = MEMORY[0x1E69C2CA8];
    goto LABEL_5;
  }

  if (v21 < 5)
  {
    (*(v5 + 104))(v9, **(&unk_1E7B73608 + v21), v3);
    (*(v5 + 32))(v2, v9, v3);
    v18 = MEMORY[0x1E69C2CB0];
LABEL_5:
    v19 = *v18;
    sub_1B3C99B18();
    OUTLINED_FUNCTION_0_1();
    (*(v20 + 104))(v2, v19);
    OUTLINED_FUNCTION_27();
    return;
  }

  sub_1B3C9D378();
  MEMORY[0x1B8C69C10](0xD000000000000019, 0x80000001B3D10730);
  type metadata accessor for PXOperationState(0);
  sub_1B3C9D458();
  sub_1B3C9D4C8();
  __break(1u);
}

BOOL sub_1B3734AC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B3C9D7C8();
  sub_1B3C9C668();
  v8 = sub_1B3C9D7F8();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1B3C9D6A8() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1B3735B1C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

void sub_1B3734C0C()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v24 = v3;
  v4 = sub_1B3C995F8();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v23 = v0;
  v11 = *v0;
  OUTLINED_FUNCTION_2_11();
  sub_1B37376F4(v12, v13);
  v14 = sub_1B3C9C4F8();
  v25 = v11;
  v26 = v11 + 56;
  v15 = ~(-1 << *(v11 + 32));
  while (1)
  {
    v16 = v14 & v15;
    if (((1 << (v14 & v15)) & *(v26 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v6 + 16))(v10, v2, v4);
      v27 = *v23;
      sub_1B3735C84(v10, v16, isUniquelyReferenced_nonNull_native);
      *v23 = v27;
      (*(v6 + 32))(v24, v2, v4);
      goto LABEL_7;
    }

    v17 = *(v6 + 72) * v16;
    v18 = *(v6 + 16);
    v18(v10, *(v25 + 48) + v17, v4);
    OUTLINED_FUNCTION_2_11();
    sub_1B37376F4(&unk_1EB84F940, v19);
    v20 = sub_1B3C9C528();
    v21 = *(v6 + 8);
    v21(v10, v4);
    if (v20)
    {
      break;
    }

    v14 = v16 + 1;
  }

  v21(v2, v4);
  v18(v24, *(v25 + 48) + v17, v4);
LABEL_7:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B3734E90(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1B3C9D2D8();

    if (v8)
    {

      type metadata accessor for StorySongViewModel();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1B3C9D2C8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v15 = sub_1B37350A0(v7, result + 1);
    if (*(v15 + 24) <= *(v15 + 16))
    {
      sub_1B373582C();
    }

    sub_1B3735A78(v16, v15);

    *v3 = v15;
  }

  else
  {
    sub_1B3C9D7C8();
    sub_1B3C9C668();
    v10 = sub_1B3C9D7F8();
    v11 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v6 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v6 + 48) + 8 * v12);
      v14 = *(v13 + 32) == *(a2 + 32) && *(v13 + 40) == *(a2 + 40);
      if (v14 || (sub_1B3C9D6A8() & 1) != 0)
      {

        *a1 = *(*(v6 + 48) + 8 * v12);

        return 0;
      }

      v10 = v12 + 1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1B3735F10(v18, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
  }

  *a1 = a2;
  return 1;
}

uint64_t sub_1B37350A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525E0);
    v2 = sub_1B3C9D348();
    v14 = v2;
    sub_1B3C9D2B8();
    while (1)
    {
      if (!sub_1B3C9D2E8())
      {

        return v2;
      }

      type metadata accessor for StorySongViewModel();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1B373582C();
      }

      v2 = v14;
      sub_1B3C9D7C8();
      sub_1B3C9C668();
      result = sub_1B3C9D7F8();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B3735278()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852020);
  result = sub_1B3C9D338();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1B383BC3C(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1B3C9D7C8();
    sub_1B3C9C668();
    result = sub_1B3C9D7F8();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B37354D4()
{
  v1 = v0;
  v35 = sub_1B3C995F8();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852040);
  result = sub_1B3C9D338();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_1B383BC3C(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_1B37376F4(&unk_1EB84F950, MEMORY[0x1E69C2BD8]);
    result = sub_1B3C9C4F8();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B373582C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525E0);
  result = sub_1B3C9D338();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1B383BC3C(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_1B3C9D7C8();
    sub_1B3C9C668();
    result = sub_1B3C9D7F8();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1B3735A78(uint64_t a1, uint64_t a2)
{
  sub_1B3C9D7C8();
  sub_1B3C9C668();
  sub_1B3C9D7F8();
  result = sub_1B3C9D2A8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1B3735B1C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B3735278();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B3736070();
LABEL_10:
      v15 = *v4;
      sub_1B3C9D7C8();
      sub_1B3C9C668();
      v16 = sub_1B3C9D7F8();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (sub_1B3C9D6A8() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1B3749864();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1B3C9D708();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1B3735C84(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1B3C995F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B37354D4();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1B37362A4();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1B37376F4(&unk_1EB84F950, MEMORY[0x1E69C2BD8]);
      v13 = sub_1B3C9C4F8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1B37376F4(&unk_1EB84F940, MEMORY[0x1E69C2BD8]);
        v15 = sub_1B3C9C528();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1B3749958();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_1B3C9D708();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_1B3735F10(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B373582C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1B37365BC();
LABEL_10:
      v12 = *v3;
      sub_1B3C9D7C8();
      sub_1B3C9C668();
      v13 = sub_1B3C9D7F8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for StorySongViewModel();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = *(v15 + 32) == *(a1 + 32) && *(v15 + 40) == *(a1 + 40);
        if (v16 || (sub_1B3C9D6A8() & 1) != 0)
        {
          goto LABEL_19;
        }

        v13 = a2 + 1;
      }
    }

    sub_1B3749B54();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_19:
    sub_1B3C9D708();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_1B3736070()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852020);
  result = sub_1B3C9D338();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1B3C9D7C8();

        sub_1B3C9C668();
        result = sub_1B3C9D7F8();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B37362A4()
{
  v1 = v0;
  v32 = sub_1B3C995F8();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852040);
  v6 = sub_1B3C9D338();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_1B37376F4(&unk_1EB84F950, MEMORY[0x1E69C2BD8]);
        result = sub_1B3C9C4F8();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1B37365BC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525E0);
  result = sub_1B3C9D338();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_1B3C9D7C8();

        sub_1B3C9C668();
        result = sub_1B3C9D7F8();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B37367EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v78 = a7;
  v69 = a5;
  v81 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852048);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = &v66[-v12];
  v72 = sub_1B3C995F8();
  v82 = *(v72 - 8);
  v13 = MEMORY[0x1EEE9AC00](v72);
  v68 = &v66[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v66[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852050);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v66[-v18];
  v20 = sub_1B3C99B58();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v66[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66[-v26];
  MEMORY[0x1EEE9AC00](v25);
  v75 = v29;
  v76 = &v66[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = *(v29 + 16);
  v77 = a6;
  v31 = a2;
  v30();
  v79 = *a3;
  ObjectType = swift_getObjectType();
  if (sub_1B3C998C8())
  {
    v33 = sub_1B3C999D8() ^ 1;
  }

  else
  {
    v33 = 0;
  }

  v71 = sub_1B3C998F8();
  v67 = sub_1B3C99948();
  v80 = ObjectType;
  v81 = a1;
  v74 = v31;
  sub_1B3C99998();
  (*(v21 + 104))(v24, *MEMORY[0x1E69C2CF8], v20);
  v70 = sub_1B3C99B48();
  v34 = *(v21 + 8);
  v34(v24, v20);
  v34(v27, v20);
  sub_1B3C995E8();
  sub_1B370B718();
  v83 = v35;
  v36 = MEMORY[0x1E69E7CD0];
  if ((v33 & 1) == 0)
  {

    v83 = v36;
  }

  v37 = v72;
  v38 = v79;
  sub_1B373773C(v69, v19);
  v39 = sub_1B3C99B78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v39);
  v41 = v73;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_13;
  }

  v42 = *(v39 - 8);
  v43 = (*(v42 + 88))(v19, v39);
  if (v43 != *MEMORY[0x1E69C2D50])
  {
    if (v43 != *MEMORY[0x1E69C2D58])
    {
      result = sub_1B3C9D4C8();
      __break(1u);
      return result;
    }

    goto LABEL_11;
  }

  (*(v42 + 96))(v19, v39);
  v44 = *v19;
  if ((*(v78 + 8))(v77) <= v44)
  {
LABEL_11:

    v83 = v36;
    goto LABEL_12;
  }

  v45 = v82;
  (*(v82 + 104))(v16, *MEMORY[0x1E69C2BB0], v37);
  sub_1B374A32C();
  (*(v45 + 8))(v16, v37);
  sub_1B371B36C(v41, &qword_1EB852048);
LABEL_12:
  v38 = v79;
LABEL_13:
  if (v38)
  {
    v46 = *MEMORY[0x1E69C2BD0];
    v47 = v82;
    v48 = *(v82 + 104);
    v48(v16, v46, v37);
    sub_1B373F184();
    v50 = v49;
    v51 = *(v47 + 8);
    v51(v16, v37);
    if ((v50 & 1) == 0)
    {
      v48(v16, v46, v37);
      sub_1B374A32C();
      v51(v16, v37);
      sub_1B371B36C(v41, &qword_1EB852048);
    }

    v52 = *MEMORY[0x1E69C2BC0];
    v48(v16, v52, v37);
    sub_1B373F184();
    v54 = v53;
    v51(v16, v37);
    if ((v54 & 1) == 0)
    {
      v48(v16, v52, v37);
      sub_1B374A32C();
      v51(v16, v37);
      sub_1B371B36C(v41, &qword_1EB852048);
    }

    v48(v16, *MEMORY[0x1E69C2BC8], v37);
    sub_1B374A32C();
    v51(v16, v37);
    sub_1B371B36C(v41, &qword_1EB852048);
    v48(v16, *MEMORY[0x1E69C2BB8], v37);
    sub_1B374A32C();
    v51(v16, v37);
    sub_1B371B36C(v41, &qword_1EB852048);
    v48(v16, *MEMORY[0x1E69C2BB0], v37);
    sub_1B374A32C();
    v51(v16, v37);
    sub_1B371B36C(v41, &qword_1EB852048);
  }

  v55 = v77;
  v56 = v76;
  v57 = (*(v78 + 16))(v77);
  v58 = v82;
  if (v57 & 1) == 0 || (sub_1B3C99B08() & 1) != 0 || (v67 & 1) != 0 && ((*(v78 + 24))(v55) & 1) != 0 || (sub_1B3C99D58(), sub_1B3C99D48(), v59 = sub_1B3C99D08(), , (v59))
  {
    (*(v58 + 104))(v16, *MEMORY[0x1E69C2BB8], v37);
    sub_1B374A32C();
    (*(v58 + 8))(v16, v37);
    sub_1B371B36C(v41, &qword_1EB852048);
  }

  if (v70)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525C0);
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1B3CF6CE0;
    (*(v58 + 104))(v61 + v60, *MEMORY[0x1E69C2BD0], v37);
    sub_1B3749D90();
    v83 = v62;
  }

  if ((v71 & 1) == 0)
  {
    (*(v58 + 104))(v16, *MEMORY[0x1E69C2BC0], v37);
    sub_1B374A32C();
    (*(v58 + 8))(v16, v37);
    sub_1B371B36C(v41, &qword_1EB852048);
  }

  if (sub_1B3C99928() != 2 || (sub_1B3C99A78() & 1) != 0)
  {
    (*(v58 + 104))(v16, *MEMORY[0x1E69C2BB0], v37);
    sub_1B374A32C();
    (*(v58 + 8))(v16, v37);
    sub_1B371B36C(v41, &qword_1EB852048);
  }

  if (sub_1B3C998E8())
  {
    swift_getObjectType();
    v63 = sub_1B3C99558();
    swift_unknownObjectRelease();
    if (v63)
    {
      (*(v58 + 104))(v68, *MEMORY[0x1E69C2BB0], v37);
      sub_1B3734C0C();
      (*(v58 + 8))(v16, v37);
    }
  }

  if (sub_1B3C99AF8())
  {
    (*(v58 + 104))(v16, *MEMORY[0x1E69C2BB0], v37);
    sub_1B374A32C();
    (*(v58 + 8))(v16, v37);
    sub_1B371B36C(v41, &qword_1EB852048);
  }

  if (sub_1B3C99AC8())
  {
    (*(v58 + 104))(v16, *MEMORY[0x1E69C2BC8], v37);
    sub_1B374A32C();
    (*(v58 + 8))(v16, v37);
    sub_1B371B36C(v41, &qword_1EB852048);
  }

  v64 = v83;
  (*(v75 + 8))(v56, v55);
  return v64;
}

unint64_t sub_1B3737410()
{
  result = qword_1EB84F8A0;
  if (!qword_1EB84F8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F8A0);
  }

  return result;
}

uint64_t sub_1B3737474(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B37374C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1B3737518(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OneUpToolbarUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for OneUpToolbarUtilities(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1B3737684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852038);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37376F4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B373773C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_13_5()
{

  sub_1B3734C0C();
}

uint64_t sub_1B3737854@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852058);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1B3737BA4();
  sub_1B3C99FB8();

  v5 = sub_1B3C99228();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  sub_1B3C99218();
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result != 1)
  {
    return sub_1B36FB21C(v4, &qword_1EB852058);
  }

  return result;
}

void sub_1B3737978(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B3737A54(v1);
}

uint64_t sub_1B37379A8(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  if (v4)
  {
    if (v4 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  sub_1B3737BA4();
  sub_1B3C99FA8();
}

void *sub_1B3737A10()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1B3737A54(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;
  sub_1B37379A8(v3);
}

void (*sub_1B3737AB8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v3[3] = v4;
  v5 = v4;
  return sub_1B3737B38;
}

void sub_1B3737B38(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1B3737A54(v3);
  }

  else
  {
    sub_1B3737A54(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1B3737BA4()
{
  v1 = v0;
  if (v0[3])
  {
    v2 = v0[3];
  }

  else
  {
    v3 = *v0;
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    sub_1B3847274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852060);
    swift_allocObject();
    v2 = sub_1B3C99FD8();
    v1[3] = v2;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1B3737CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852058);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1B3C9C118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B3C9C168();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v14 = Strong;
  swift_beginAccess();
  v15 = *(v14 + 16);
  if (!v15)
  {

LABEL_7:
    v21 = sub_1B3C99228();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v21);
    sub_1B3C99FC8();
    return sub_1B36FB21C(v4, &qword_1EB852058);
  }

  v25 = v10;
  v26 = v6;
  v16 = qword_1EB84FC00;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v24 = qword_1EB84FC08;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  aBlock[4] = sub_1B3738FA8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);
  v23 = v17;

  sub_1B3C9C138();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1B37390DC(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v12, v8, v19);
  _Block_release(v19);

  (*(v26 + 8))(v8, v5);
  (*(v25 + 8))(v12, v9);
}

uint64_t sub_1B37380E8(void *a1, uint64_t a2)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852058);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v94 = &v78 - v4;
  v93 = sub_1B3C99228();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852068);
  v87 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v88 = &v78 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v80 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v78 - v13;
  v15 = sub_1B3C99238();
  *&v98 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v90 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v86 = &v78 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v78 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v78 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v78 - v24;
  [a1 badgeInfo];
  v26 = v104;
  v27 = v105;
  v28 = v106;
  v29 = v107;
  v30 = objc_opt_self();
  v104 = v26;
  v105 = v27;
  v106 = v28;
  v107 = v29;
  [v30 topLeftPrimaryBadgeInfoForBadgeInfo_];
  v31 = v101;
  v32 = v102;
  v34 = *(&v103 + 1);
  v33 = v103;
  v96 = v26;
  v104 = v26;
  v105 = v27;
  v85 = v28;
  v106 = v28;
  v107 = v29;
  v84 = v29;
  v83 = v30;
  [v30 topLeftSecondaryBadgeInfoForBadgeInfo_];
  v82 = v31;
  v99[0] = v31;
  *&v99[1] = v32;
  v99[2] = v33;
  v99[3] = v34;
  v81 = v101;
  v99[4] = v101;
  *&v99[5] = v102;
  v100 = v103;
  type metadata accessor for DefaultOneUpBadgeContentProvider();
  v35 = 0;
  v36 = 0;
  v37 = (v98 + 32);
  v38 = MEMORY[0x1E69E7CC0];
  v97 = (v98 + 32);
  do
  {
    v39 = v35;
    sub_1B38148A4(v99[4 * v36], v99[4 * v36 + 2], v99[4 * v36 + 3], v14, *&v99[4 * v36 + 1]);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1B36FB21C(v14, &qword_1EB852068);
    }

    else
    {
      v40 = *v37;
      (*v37)(v25, v14, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B370FB28(0, *(v38 + 16) + 1, 1, v38);
        v38 = v44;
      }

      v42 = *(v38 + 16);
      v41 = *(v38 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1B370FB28(v41 > 1, v42 + 1, 1, v38);
        v38 = v45;
      }

      *(v38 + 16) = v42 + 1;
      v43 = v38 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v42;
      v37 = v97;
      v40(v43, v25, v15);
    }

    v35 = 1;
    v36 = 1;
  }

  while ((v39 & 1) == 0);
  if ((v96 & 0x20000000000) != 0 && v82 != 0x20000000000 && v81 != 0x20000000000)
  {
    v47 = v80;
    sub_1B3814B0C(0x20000000000uLL);
    if (__swift_getEnumTagSinglePayload(v47, 1, v15) == 1)
    {
      sub_1B36FB21C(v47, &qword_1EB852068);
    }

    else
    {
      v48 = v98;
      v49 = *(v98 + 32);
      v50 = v78;
      v49(v78, v47, v15);
      v51 = v79;
      (*(v48 + 16))(v79, v50, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B370FB28(0, *(v38 + 16) + 1, 1, v38);
        v38 = v76;
      }

      v53 = *(v38 + 16);
      v52 = *(v38 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1B370FB28(v52 > 1, v53 + 1, 1, v38);
        v38 = v77;
      }

      v54 = v98 + 8;
      (*(v98 + 8))(v50, v15);
      *(v38 + 16) = v53 + 1;
      v49((v38 + ((*(v54 + 72) + 32) & ~*(v54 + 72)) + *(v54 + 64) * v53), v51, v15);
    }
  }

  v55 = v86;
  *v86 = 0;
  v56 = v98 + 104;
  (*(v98 + 104))(v55, *MEMORY[0x1E69C2A08], v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852070);
  v57 = *(v56 - 32);
  v58 = (*(v56 - 24) + 32) & ~*(v56 - 24);
  v59 = swift_allocObject();
  v98 = xmmword_1B3CF6CE0;
  *(v59 + 16) = xmmword_1B3CF6CE0;
  v60 = *(v56 - 72);
  v60(v59 + v58, v55, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852078);
  v61 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = v98;
  v104 = v96;
  v105 = v27;
  v106 = v85;
  v107 = v84;
  [v83 topRightBadgeInfoForBadgeInfo_];
  sub_1B38148A4(v101, v103, *(&v103 + 1), v62 + v61, v102);
  v63 = v88;
  sub_1B3738FB8(v62 + v61, v88);
  v64 = v63;
  v65 = v89;
  sub_1B3739028(v64, v89);
  if (__swift_getEnumTagSinglePayload(v65, 1, v15) == 1)
  {
    sub_1B36FB21C(v65, &qword_1EB852068);
  }

  else
  {
    v60(v90, v65, v15);
    v66 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B370FB28(0, *(v66 + 16) + 1, 1, v66);
      v66 = v74;
    }

    v68 = *(v66 + 16);
    v67 = *(v66 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_1B370FB28(v67 > 1, v68 + 1, 1, v66);
      v66 = v75;
    }

    *(v66 + 16) = v68 + 1;
    v60(v66 + v58 + v68 * v57, v90, v15);
  }

  swift_setDeallocating();
  sub_1B389E6E0();
  v69 = v91;
  sub_1B3C99208();
  v70 = v92;
  v71 = v94;
  v72 = v93;
  (*(v92 + 16))(v94, v69, v93);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v72);
  sub_1B3C99FC8();
  sub_1B36FB21C(v71, &qword_1EB852058);
  return (*(v70 + 8))(v69, v72);
}

uint64_t sub_1B3738AD0()
{
  v7 = sub_1B3C9CC78();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B3C9CC48();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B3C9C168();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B3739098();
  sub_1B3C9C148();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B37390DC(&qword_1EB84FE70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940);
  sub_1B3739124(&qword_1EB84FE80, &unk_1EB854940);
  sub_1B3C9D278();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1B3C9CCA8();
  qword_1EB84FC08 = result;
  return result;
}

uint64_t OneUpBadgeModel.deinit()
{

  v1 = OBJC_IVAR____TtC15PhotosUIPrivate15OneUpBadgeModel___observationRegistrar;
  sub_1B3C98318();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t OneUpBadgeModel.__deallocating_deinit()
{
  OneUpBadgeModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for OneUpBadgeModel()
{
  result = qword_1EB84FBE8;
  if (!qword_1EB84FBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B3738E30()
{
  result = sub_1B3C98318();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B3738F74()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1B3C98308();
  return v0;
}

uint64_t sub_1B3738FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3739028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852068);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B3739098()
{
  result = qword_1EB84FE60;
  if (!qword_1EB84FE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84FE60);
  }

  return result;
}

uint64_t sub_1B37390DC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B3739124(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B3739178()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayContainerViewController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayStoryViewController);
    if (v2)
    {
      v3 = OBJC_IVAR___PUStoryViewController_storyView;
      swift_beginAccess();
      v4 = *(v2 + v3);
      if (v4)
      {
        v5 = v1;
        v6 = v4;
        [v5 loadViewIfNeeded];
        v7 = v5;
        v8 = [v6 viewModel];
        type metadata accessor for StoryAirPlayViewModel(0);
        swift_allocObject();
        v9 = sub_1B373B484(v8);
        v10 = sub_1B3C9B098();
        *(v11 + 8) = v9;

        v10(v12, 0);
      }
    }
  }
}

void sub_1B37392A0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayContainerViewController);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayContainerViewController) = a1;
  v3 = a1;

  sub_1B3739178();
}

id sub_1B37392F8(void *a1)
{
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_pickerViewController] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayContainerViewController] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayStoryViewController] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StoryAirPlayHelper();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id sub_1B3739390()
{
  sub_1B3739A50();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryAirPlayHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B373945C(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v5 = [objc_allocWithZone(PUScreenRoutePickerViewController) init];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() sharedInstance];
    [v7 registerContentProvider_];

    v8 = [v6 popoverPresentationController];
    if (!v8)
    {
LABEL_16:
      [v19 presentViewController:v6 animated:1 completion:{0, v19}];

      v18 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_pickerViewController);
      *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_pickerViewController) = v6;
      goto LABEL_17;
    }

    v9 = v8;
    v10 = [v19 view];
    if (v10)
    {
      v11 = v10;
      if (a1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_1B3710718(0, &qword_1EB8522B8);
          v12 = [swift_getObjCClassFromMetadata() sharedInstance];
          v13 = [v12 shouldWorkAround148760530];

          if (v13)
          {
            [v9 setSourceView_];
            swift_getObjectType();
            sub_1B3C9CE58();
            v14 = 0.0;
            v15 = 0.0;
            v16 = 0.0;
            v17 = 0.0;
            if ((v25 & 1) == 0)
            {
              v16 = v23;
              v17 = v24;
              v14 = v21;
              v15 = v22;
            }

            [v9 setSourceRect_];
            [v9 _setShouldHideArrow_];
            [v9 _setCornerRadius_];

            goto LABEL_15;
          }
        }
      }
    }

    [v9 setSourceItem_];
LABEL_15:

    goto LABEL_16;
  }

  v18 = v19;
LABEL_17:
}

void sub_1B37396C8()
{
  v1 = v0;
  sub_1B3710718(0, &qword_1EB8522B8);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 shouldWorkAround148760530];

  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v16 = [Strong presentedViewController];

      Strong = v16;
    }

    v6 = OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_pickerViewController;
    v7 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_pickerViewController);
    if (Strong)
    {
      v17 = Strong;
      if (v7)
      {
        v15 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_pickerViewController);
        sub_1B3710718(0, &qword_1EB850188);
        v8 = v15;
        v9 = sub_1B3C9CFA8();

        if ((v9 & 1) == 0)
        {
          return;
        }

        v10 = *(v1 + v6);
        if (!v10)
        {
          return;
        }

        v11 = [v10 popoverPresentationController];
        if (!v11)
        {
          return;
        }

        v12 = swift_unknownObjectWeakLoadStrong();
        if (!v12)
        {
          return;
        }

        v17 = v12;
        [v12 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
        v13 = 0;
      }
    }

    else if (!v7)
    {

      v14 = 0;
    }
  }
}

void sub_1B3739890()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1B3851C34();
    v5 = [v4 mainConfiguration];

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for AirPlayContainerViewController(0));
    v7 = v5;
    v8 = sub_1B373BD8C(v7, sub_1B373C638, v6);
    v9 = [v8 presentationController];
    if (v9)
    {
      v10 = v9;
      [v9 setDelegate_];
    }

    v11 = v8;
    sub_1B37392A0(v8);
    [v3 presentViewController:v11 animated:1 completion:0];
  }
}

void sub_1B37399FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B3739A50();
  }
}

void sub_1B3739A50()
{
  v1 = [objc_opt_self() sharedInstance];
  [v1 unregisterContentProvider_];

  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayContainerViewController);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  sub_1B37392A0(0);
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayStoryViewController;
  v4 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayStoryViewController);
  if (v4)
  {
    v5 = OBJC_IVAR___PUStoryViewController_storyView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      [v6 setIsActive_];
    }
  }

  v7 = *(v0 + v3);
  *(v0 + v3) = 0;

  v8 = OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_pickerViewController;
  v9 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_pickerViewController);
  if (v9)
  {
    [v9 disconnectRoute];
    v10 = *(v0 + v8);
  }

  else
  {
    v10 = 0;
  }

  *(v0 + v8) = 0;
}

char *sub_1B3739B64()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1B3851C34();
    v5 = [v4 mainConfiguration];

    v6 = [v5 copyWithAdditionalOptions_];
    [v6 setActiveStateManagedExternally_];
    v7 = objc_allocWithZone(type metadata accessor for StoryViewController());
    v8 = v6;
    v9 = StoryViewController.init(configuration:)(v8);

    v10 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayStoryViewController);
    *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayStoryViewController) = v9;
    v11 = v9;

    return v11;
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x1E69DD258]);

    return [v13 init];
  }
}

void sub_1B3739CDC(void *a1)
{
  if (a1)
  {
    v7 = a1;
    v2 = [v7 screenAvailability];
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayStoryViewController);
        if (v3)
        {
          v4 = OBJC_IVAR___PUStoryViewController_storyView;
          swift_beginAccess();
          v5 = *(v3 + v4);
          if (v5)
          {
            v6 = [v5 tungstenView];
            [v6 setResizesDrawableManually_];
          }
        }

        sub_1B3739890();
      }

      else
      {
        sub_1B3C9D4C8();
        __break(1u);
      }
    }

    else
    {
      sub_1B3739A50();
    }
  }
}

void sub_1B3739E70(void *a1)
{
  v2 = [a1 presentedViewController];
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate18StoryAirPlayHelper_airPlayContainerViewController);
  if (v3)
  {
    v7 = v2;
    sub_1B3710718(0, &qword_1EB850188);
    v4 = v7;
    v5 = v3;
    v6 = sub_1B3C9CFA8();

    v2 = v7;
    if (v6)
    {
      sub_1B3739A50();
      v2 = v7;
    }
  }
}

uint64_t sub_1B373A000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v9 = sub_1B3C9B378();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852188);
  v13 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v15 = &v31 - v14;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852190);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852198);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8521A0);
  v18 = sub_1B370ED54(&qword_1EB8521A8, &qword_1EB852198);
  v19 = sub_1B370ED54(&qword_1EB8521B0, &qword_1EB8521A0);
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1B3C9AA48();
  sub_1B3C9B368();
  sub_1B370ED54(&qword_1EB8521B8, &qword_1EB852188);
  sub_1B373C640(&qword_1EB8521C0, MEMORY[0x1E697C938]);
  v20 = v34;
  v22 = v31;
  v21 = v32;
  sub_1B3C9B7F8();
  (*(v33 + 8))(v12, v21);
  (*(v13 + 8))(v15, v22);
  v23 = sub_1B3C9BB88();
  LOBYTE(v15) = sub_1B3C9B508();
  v24 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8521C8) + 36);
  *v24 = v23;
  *(v24 + 8) = v15;
  v25 = sub_1B3C9AB28();
  LOBYTE(v15) = sub_1B3C9B508();
  v26 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8521D0) + 36);
  *v26 = v25;
  *(v26 + 8) = v15;
  v27 = sub_1B3C9BBB8();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8521D8);
  v30 = (v20 + *(result + 36));
  *v30 = KeyPath;
  v30[1] = v27;
  return result;
}

uint64_t sub_1B373A3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8521A0);
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v23 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852198);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v23 - v12;
  *v13 = sub_1B3C9AFF8();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8521E0);
  sub_1B373A68C(a1, a2, a3, a4, &v13[*(v14 + 44)]);
  v15 = sub_1B3C9C5A8();
  v16 = PULocalizedString(v15);

  v17 = sub_1B3C9C5E8();
  v19 = v18;

  v27 = v17;
  v28 = v19;
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;

  sub_1B370A6FC(a3);
  sub_1B371B158();
  sub_1B3C9BD18();
  sub_1B370ED54(&qword_1EB8521A8, &qword_1EB852198);
  sub_1B370ED54(&qword_1EB8521B0, &qword_1EB8521A0);
  v21 = v25;
  sub_1B3C9B988();
  (*(v9 + 8))(v11, v21);
  return sub_1B370EEB0(v13, &qword_1EB852198);
}

uint64_t sub_1B373A68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8521F0);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  sub_1B3C9C008();
  sub_1B3C9A8D8();
  v25 = v30;
  v24 = v31;
  v13 = v32;
  v14 = v33;
  v15 = v34;
  v16 = v35;
  *v12 = sub_1B3C9AF18();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8521F8);
  sub_1B373A8B8(v26, v27, v28, v29, &v12[*(v17 + 44)]);
  sub_1B3C9C008();
  sub_1B3C9A8D8();
  v18 = &v12[*(v7 + 44)];
  v19 = v37;
  *v18 = v36;
  v18[1] = v19;
  v18[2] = v38;
  sub_1B373C544(v12, v10, &qword_1EB8521F0);
  *a5 = 0;
  *(a5 + 8) = 1;
  *(a5 + 16) = v25;
  *(a5 + 24) = v24;
  *(a5 + 32) = v13;
  *(a5 + 40) = v14;
  *(a5 + 48) = v15;
  *(a5 + 56) = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852200);
  sub_1B373C544(v10, a5 + *(v20 + 64), &qword_1EB8521F0);
  v21 = a5 + *(v20 + 80);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_1B370EEB0(v12, &qword_1EB8521F0);
  return sub_1B370EEB0(v10, &qword_1EB8521F0);
}

uint64_t sub_1B373A8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v72 = a5;
  v73 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852208);
  MEMORY[0x1EEE9AC00](v71);
  v9 = v58 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852210);
  MEMORY[0x1EEE9AC00](v66);
  v70 = v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852218);
  v65 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v58 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v64 = v58 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v58 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v58 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v67 = v58 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852220);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v69 = v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v68 = v58 - v30;
  if (sub_1B373B384())
  {
    v31 = swift_allocObject();
    v31[2] = v73;
    v31[3] = a2;
    v31[4] = a3;
    v31[5] = a4;
    MEMORY[0x1EEE9AC00](v31);
    v58[-2] = 0xD000000000000011;
    v58[-1] = 0x80000001B3D10A20;

    sub_1B370A6FC(a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852228);
    sub_1B373C440();
    v32 = v67;
    sub_1B3C9BCE8();
    v33 = v65;
    (*(v65 + 16))(v70, v32, v11);
    swift_storeEnumTagMultiPayload();
    sub_1B370ED54(&qword_1EB852280, &qword_1EB852218);
    sub_1B370ED54(&qword_1EB852288, &qword_1EB852208);
    v34 = v68;
    sub_1B3C9B168();
    (*(v33 + 8))(v32, v11);
  }

  else
  {
    v62 = v22;
    v35 = swift_allocObject();
    v61 = v14;
    v63 = v58;
    v36 = v73;
    v35[2] = v73;
    v35[3] = a2;
    v35[4] = a3;
    v35[5] = a4;
    MEMORY[0x1EEE9AC00](v35);
    v60 = v17;
    v58[-2] = 0xD000000000000010;
    v58[-1] = 0x80000001B3D10A00;

    sub_1B370A6FC(a3);
    v58[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852228);
    v58[1] = sub_1B373C440();
    sub_1B3C9BCE8();
    v37 = sub_1B373B350();
    v63 = v25;
    if (v37)
    {
      v38 = 0x69662E6573756170;
    }

    else
    {
      v38 = 0x6C69662E79616C70;
    }

    if (v37)
    {
      v39 = 0xEA00000000006C6CLL;
    }

    else
    {
      v39 = 0xE90000000000006CLL;
    }

    v40 = swift_allocObject();
    v59 = v9;
    v58[0] = v58;
    v40[2] = v36;
    v40[3] = a2;
    v40[4] = a3;
    v40[5] = a4;
    MEMORY[0x1EEE9AC00](v40);
    v58[-2] = v38;
    v58[-1] = v39;

    sub_1B370A6FC(a3);
    v41 = v65;
    v42 = v62;
    sub_1B3C9BCE8();

    v43 = swift_allocObject();
    v58[0] = v58;
    v43[2] = v73;
    v43[3] = a2;
    v43[4] = a3;
    v43[5] = a4;
    MEMORY[0x1EEE9AC00](v43);
    v58[-2] = 0x2E6E6F7276656863;
    v58[-1] = 0xEF64726177726F66;

    sub_1B370A6FC(a3);
    v44 = v67;
    sub_1B3C9BCE8();
    v45 = *(v41 + 16);
    v46 = v64;
    v45(v64, v63, v11);
    v47 = v60;
    v45(v60, v42, v11);
    v48 = v61;
    v49 = v44;
    v45(v61, v44, v11);
    v50 = v59;
    v45(v59, v46, v11);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852278);
    v45((v50 + *(v51 + 48)), v47, v11);
    v45((v50 + *(v51 + 64)), v48, v11);
    v52 = *(v41 + 8);
    v52(v48, v11);
    v52(v47, v11);
    v52(v46, v11);
    sub_1B373C544(v50, v70, &qword_1EB852208);
    swift_storeEnumTagMultiPayload();
    sub_1B370ED54(&qword_1EB852280, &qword_1EB852218);
    sub_1B370ED54(&qword_1EB852288, &qword_1EB852208);
    v34 = v68;
    sub_1B3C9B168();
    sub_1B370EEB0(v50, &qword_1EB852208);
    v52(v49, v11);
    v52(v62, v11);
    v52(v63, v11);
  }

  v53 = v69;
  sub_1B373C544(v34, v69, &qword_1EB852220);
  v54 = v72;
  *v72 = 0;
  *(v54 + 8) = 1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852290);
  sub_1B373C544(v53, v54 + *(v55 + 48), &qword_1EB852220);
  v56 = v54 + *(v55 + 64);
  *v56 = 0;
  v56[8] = 1;
  sub_1B370EEB0(v34, &qword_1EB852220);
  return sub_1B370EEB0(v53, &qword_1EB852220);
}

uint64_t sub_1B373B290@<X0>(uint64_t a1@<X8>)
{

  v2 = sub_1B3C9BC38();
  v3 = sub_1B3C9B5F8();
  KeyPath = swift_getKeyPath();
  v5 = sub_1B3C9BB28();
  v6 = swift_getKeyPath();
  v7 = sub_1B3C9B508();
  result = sub_1B3C9A738();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_1B373B398()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B3C9A698();

  return v1;
}

uint64_t sub_1B373B418()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B3C9A6A8();
}

uint64_t sub_1B373B484(void *a1)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8522A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854900);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel__isPlaying;
  v28 = 1;
  sub_1B3C9A678();
  v12 = *(v8 + 32);
  v12(v1 + v11, v10, v7);
  v13 = OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel__isAtEnd;
  v27 = 0;
  sub_1B3C9A678();
  v12(v1 + v13, v10, v7);
  v14 = OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel__playbackFractionCompleted;
  v26 = 0;
  sub_1B3C9A678();
  v15 = v2 + v14;
  v16 = v25;
  (*(v4 + 32))(v15, v6, v3);
  v17 = OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel_storyViewModel;
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel_storyViewModel) = 0;
  v18 = (v2 + OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel_storyViewModelObservation);
  *v18 = 0;
  v18[1] = 0;
  if (v16)
  {
    *(v2 + v17) = v16;
    swift_allocObject();
    swift_weakInit();
    v19 = v16;

    v20 = sub_1B3C9CA58();
    v22 = v21;

    *v18 = v20;
    v18[1] = v22;
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_1B373B724(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B373B974(a2);
  }

  return result;
}

void sub_1B373B784(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel_storyViewModel);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v7[4] = sub_1B373C628;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B386A148;
    v7[3] = &block_descriptor_73;
    v5 = _Block_copy(v7);
    v6 = v2;

    [v6 performChanges_];
    _Block_release(v5);
  }
}

void sub_1B373B8C0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel_storyViewModel);
  if (v3)
  {
    v6[4] = a1;
    v6[5] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B386A148;
    v6[3] = a2;
    v4 = _Block_copy(v6);
    v5 = v3;
    [v5 performChanges_];
    _Block_release(v4);
  }
}

void sub_1B373B974(int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel_storyViewModel);
  if (v2)
  {
    v4 = v2;
    v5 = v4;
    if ((a1 & 2) != 0)
    {
      [v4 desiredPlayState];
      sub_1B373B364();
      v4 = v5;
    }

    if ((a1 & 0x200000) != 0)
    {
      [v5 isAtPlaybackEnd];
      sub_1B373B404();
      v4 = v5;
    }
  }
}

uint64_t sub_1B373BA14()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel__isPlaying;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854900);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel__isAtEnd, v2);
  v4 = OBJC_IVAR____TtC15PhotosUIPrivateP33_D566EC2D13A04C62B5F95D4CBCD6719521StoryAirPlayViewModel__playbackFractionCompleted;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8522A0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B373BB1C()
{
  v0 = sub_1B373BA14();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B373BB98()
{
  sub_1B373BC94(319, &qword_1EB8547B0);
  if (v0 <= 0x3F)
  {
    sub_1B373BC94(319, &unk_1EB852150);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B373BC94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B3C9A6B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1B373BD4C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoryAirPlayViewModel(0);
  result = sub_1B3C9A658();
  *a1 = result;
  return result;
}

char *sub_1B373BD8C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + qword_1EB852160);
  type metadata accessor for StoryAirPlayViewModel(0);
  *v7 = 0;
  v7[1] = 0;
  swift_allocObject();
  sub_1B373B484(0);
  sub_1B373C640(&qword_1EB8522B0, type metadata accessor for StoryAirPlayViewModel);
  v13 = sub_1B3C9AA58();
  v14 = v8;
  v9 = sub_1B3C98DF8();
  [v9 setModalInPresentation_];

  v10 = &v9[qword_1EB852160];
  v11 = *&v9[qword_1EB852160];
  *v10 = a2;
  *(v10 + 1) = a3;
  sub_1B36F9DA0(v11);

  return v9;
}

uint64_t sub_1B373BEA8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AirPlayContainerViewController(0);
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = sub_1B3C9B098();
  v4 = *(v3 + 16);
  *(v3 + 16) = sub_1B373C618;
  *(v3 + 24) = v1;
  sub_1B36F9DA0(v4);
  v2(&v6, 0);
}

void sub_1B373BF68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_1EB852160);
    if (v2)
    {

      v2(v3);
      sub_1B36F9DA0(v2);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1B373C00C(void *a1)
{
  v1 = a1;
  sub_1B373BEA8();
}

id sub_1B373C098()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirPlayContainerViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B373C124(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B373C164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1B373C1DC()
{
  result = [objc_allocWithZone(PHPlaceholderView) initWithType_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B373C21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B373C9AC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1B373C280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B373C9AC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1B373C2E4()
{
  sub_1B373C9AC();
  sub_1B3C9B138();
  __break(1u);
}

uint64_t sub_1B373C30C()
{
  OUTLINED_FUNCTION_0_7();
  result = sub_1B3C9ADD8();
  *v0 = result;
  return result;
}

uint64_t sub_1B373C360()
{
  OUTLINED_FUNCTION_0_7();
  result = sub_1B3C9ACE8();
  *v0 = result;
  return result;
}

uint64_t sub_1B373C3E0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1B373C440()
{
  result = qword_1EB852230;
  if (!qword_1EB852230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852228);
    sub_1B373C6A0(&qword_1EB853870, &unk_1EB852240, &unk_1B3D004C0, sub_1B371B4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852230);
  }

  return result;
}

uint64_t sub_1B373C544(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_1()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B373C640(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B373C6A0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1B370ED54(&qword_1EB852268, &qword_1EB852270);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B373C750()
{
  result = qword_1EB8522C8;
  if (!qword_1EB8522C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8521D0);
    sub_1B373C7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8522C8);
  }

  return result;
}

unint64_t sub_1B373C7DC()
{
  result = qword_1EB8522D0;
  if (!qword_1EB8522D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8521C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852188);
    sub_1B3C9B378();
    sub_1B370ED54(&qword_1EB8521B8, &qword_1EB852188);
    sub_1B373C640(&qword_1EB8521C0, MEMORY[0x1E697C938]);
    swift_getOpaqueTypeConformance2();
    sub_1B370ED54(&qword_1EB8522D8, &qword_1EB8522E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8522D0);
  }

  return result;
}

unint64_t sub_1B373C958()
{
  result = qword_1EB8522E8;
  if (!qword_1EB8522E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8522E8);
  }

  return result;
}

unint64_t sub_1B373C9AC()
{
  result = qword_1EB8522F0;
  if (!qword_1EB8522F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8522F0);
  }

  return result;
}

uint64_t sub_1B373CA7C()
{
  v5[4] = sub_1B373CBDC;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1B373CBE0;
  v5[3] = &block_descriptor_12;
  v0 = _Block_copy(v5);

  v1 = PXFirstViewControllerPassingTest();
  _Block_release(v0);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    if (!v1)
    {
      return 0;
    }

    sub_1B3C98588();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v1;
      v3 = sub_1B3C98578();
    }

    return v3;
  }

  return result;
}

uint64_t sub_1B373CBE0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

id sub_1B373CC24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUSearchDebugUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B373CC7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUSearchDebugUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B373CCDC()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_exportManager;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69C3AD8]) init];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_progressController) = 0;
  sub_1B3C9D4C8();
  __break(1u);
}

char *sub_1B373CDC4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_exportManager;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x1E69C3AD8]) init];
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_progressController] = 0;
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_storyConfiguration] = a2;
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_aspectRatio] = a3;
  v14 = OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_destinationURL;
  v15 = sub_1B3C98068();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v6[v14], a1, v15);
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_iconAsset] = a5;
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_fullSizePlayerExtendedTraitCollectionSnapshot] = a4;
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_initialSongResource] = a6;
  v17 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  swift_unknownObjectRetain();
  v18 = a2;
  v19 = a3;
  swift_unknownObjectRetain();
  v20 = a4;
  v21 = [v17 init];
  v25.receiver = v6;
  v25.super_class = type metadata accessor for StoryExportActivityItemProvider();
  v22 = objc_msgSendSuper2(&v25, sel_initWithPlaceholderItem_, v21);

  [*&v22[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_exportManager] setQualityOfService_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v16 + 8))(a1, v15);
  return v22;
}

uint64_t sub_1B373D054@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  v5 = swift_allocBox();
  v7 = v6;
  v8 = sub_1B3C98068();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = dispatch_semaphore_create(0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69C3AD8]) init];
  [v10 setQualityOfService_];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_7_1();
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v5;
  v12[4] = v11;
  v13 = v9;

  sub_1B373D70C(sub_1B373EE0C, v12);

  sub_1B3C9CD38();
  swift_beginAccess();
  sub_1B373EE18(v7, v4, &qword_1EB853970);
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_1B371B36C(v4, &qword_1EB853970);
    v18 = 0u;
    v19 = 0u;
    v14 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(a1 + 24) = sub_1B3710718(0, &unk_1EB852350);

    *a1 = v14;
    if (*(&v19 + 1))
    {
      sub_1B371B36C(&v18, &qword_1EB850170);
    }
  }

  else
  {
    *(&v19 + 1) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(*(v8 - 8) + 32))(boxed_opaque_existential_1, v4, v8);

    sub_1B370ED44(&v18, a1);
  }
}

uint64_t sub_1B373D2FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852328);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v17 - v6);
  v8 = swift_projectBox();
  sub_1B373EE18(a1, v7, &qword_1EB852328);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B3CF6CE0;
    v17 = 0;
    v18 = 0xE000000000000000;
    MEMORY[0x1B8C69C10](0x20726F727265, 0xE600000000000000);
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
    sub_1B3C9D458();
    v11 = v17;
    v12 = v18;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    sub_1B3C9D798();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      [Strong cancel];
    }

    else
    {
    }
  }

  else
  {
    v15 = sub_1B3C98068();
    (*(*(v15 - 8) + 32))(v4, v7, v15);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v15);
    swift_beginAccess();
    sub_1B373EE78(v4, v8);
  }

  return sub_1B3C9CD48();
}

uint64_t sub_1B373D5B4()
{
  v0 = sub_1B3C9A428();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  sub_1B3C9A418();
  v7 = sub_1B3C9A408();
  (*(v2 + 8))(v6, v0);
  return v7;
}

void sub_1B373D70C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 activityType];
  v7 = sub_1B373DC58(v6);

  v8 = *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_storyConfiguration];
  v21[2] = v3;
  v9 = objc_allocWithZone(MEMORY[0x1E69C3AC0]);
  v10 = v8;
  v11 = v7;
  v12 = sub_1B37DECF8(v10, v11, sub_1B373EDB0, v21);
  v13 = *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_exportManager];
  v14 = sub_1B3C98018();
  v15 = *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_initialSongResource];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_7_1();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_1B373EDB8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B3814B94;
  aBlock[3] = &block_descriptor_34;
  v18 = _Block_copy(aBlock);

  v19 = [v13 requestExportWithDestinationURL:v14 configuration:v12 initialSongResource:v15 progressHandler:0 completionHandler:v18];
  _Block_release(v18);

  v20 = [v19 progress];
  sub_1B373DF84(v20);

  swift_unknownObjectRelease();
}

void sub_1B373D934(void *a1, id a2)
{
  v3 = [a2 activityType];
  [a1 setActivityType_];
}

uint64_t sub_1B373D9A4(char a1, void *a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852328);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    if (a1)
    {
      v15 = OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_destinationURL;
      v16 = sub_1B3C98068();
      (*(*(v16 - 8) + 16))(v12, &v14[v15], v16);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (a2)
      {
        v17 = a2;
      }

      else
      {
        type metadata accessor for PXStoryError(0);
        v23[11] = 10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8571B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B3CF6CE0;
        v19 = sub_1B3C9C5E8();
        v20 = MEMORY[0x1E69E6158];
        *(inited + 32) = v19;
        *(inited + 40) = v21;
        *(inited + 72) = v20;
        *(inited + 48) = 0x206E776F6E6B6E55;
        *(inited + 56) = 0xEF6572756C696166;
        sub_1B3C9C4D8();
        sub_1B373EDC4(&qword_1EB852340, type metadata accessor for PXStoryError);
        sub_1B3C97F08();
        v17 = v23[12];
      }

      *v10 = v17;
      swift_storeEnumTagMultiPayload();
      sub_1B373EC54(v10, v12);
      v22 = a2;
    }

    sub_1B373E434(v12);
    a4(v12);

    return sub_1B371B36C(v12, &qword_1EB852328);
  }

  return result;
}

id sub_1B373DC58(void *a1)
{
  v2 = v1;
  v4 = 0x4090E00000000000;
  v5 = [objc_allocWithZone(MEMORY[0x1E69C3AE8]) init];
  if (!a1)
  {
    goto LABEL_19;
  }

  v6 = sub_1B3C9C5E8();
  v8 = v7;
  if (v6 == sub_1B3C9C5E8() && v8 == v9)
  {
    goto LABEL_21;
  }

  v11 = sub_1B3C9D6A8();
  v12 = a1;

  if ((v11 & 1) == 0)
  {
    v13 = sub_1B3C9C5E8();
    v15 = v14;
    if (v13 != sub_1B3C9C5E8() || v15 != v16)
    {
      v18 = sub_1B3C9D6A8();

      if (v18)
      {
        goto LABEL_7;
      }

      v19 = sub_1B3C9C5E8();
      v21 = v20;
      if (v19 == sub_1B3C9C5E8() && v21 == v22)
      {
      }

      else
      {
        v24 = sub_1B3C9D6A8();

        if ((v24 & 1) == 0)
        {

LABEL_19:
          v25 = 0;
          goto LABEL_23;
        }
      }

      sub_1B3710718(0, &qword_1EB852330);
      v35 = sub_1B3C9CF88();
      [v5 setAverageBitratePerSecond_];

      v4 = 0x4086800000000000;
      goto LABEL_22;
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_7:

LABEL_22:
  v25 = 1;
LABEL_23:
  [v5 setCodec_];
  [v5 setFrameRate_];
  type metadata accessor for StoryExportHelper();
  v26 = OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_aspectRatio;
  v27 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_aspectRatio);
  sub_1B37DCA58(v27, v4, 0);
  v29 = v28;
  v31 = v30;

  [v5 setResolution_];
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    [v32 scale];
  }

  else
  {
    v33 = 1.0;
  }

  [v5 setScale_];
  if ([*(v2 + v26) type] == 5)
  {
    [v5 setFullSizePlayerExtendedTraitCollectionSnapshot_];
    [v5 setPrefersExportLayoutMatchesPlayback_];
  }

  return v5;
}

uint64_t sub_1B373DF84(void *a1)
{
  v3 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v25 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  sub_1B3710718(0, &qword_1EB84FE60);
  v16 = sub_1B3C9CC88();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = a1;
  aBlock[4] = sub_1B373ED3C;
  aBlock[5] = v17;
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_3_10(COERCE_DOUBLE(1107296256));
  aBlock[2] = v18;
  aBlock[3] = &block_descriptor_19_0;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  v21 = a1;

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_8();
  sub_1B373EDC4(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  OUTLINED_FUNCTION_6_9();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v15, v9, v19);
  _Block_release(v19);

  (*(v5 + 8))(v9, v3);
  return (*(v11 + 8))(v15, v25);
}

void sub_1B373E1DC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69C3308]) init];
  v5 = sub_1B3C9C5A8();
  v6 = PULocalizedString(v5);

  v7 = sub_1B3C9C5E8();
  v9 = v8;

  sub_1B373ED44(v7, v9, v4);
  [v4 setProgress_];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = sub_1B373EDA8;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B370C014;
  v15[3] = &block_descriptor_25_0;
  v11 = _Block_copy(v15);

  [v4 setCancellationHandler_];
  _Block_release(v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  [v4 setPresentingViewController_];

  [v4 showAnimated:1 allowDelay:0];
  v13 = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_progressController);
  *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_progressController) = v4;
  v14 = v4;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B37D303C();
    swift_unknownObjectRelease();
  }
}

void sub_1B373E3D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong cancel];
  }
}

uint64_t sub_1B373E434(uint64_t a1)
{
  v27 = a1;
  v1 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v31 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v29 = v8;
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852328);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  sub_1B3710718(0, &qword_1EB84FE60);
  v16 = sub_1B3C9CC88();
  sub_1B373EE18(v27, v15, &qword_1EB852328);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  v19 = v28;
  *(v18 + 16) = v28;
  sub_1B373EC54(v15, v18 + v17);
  aBlock[4] = sub_1B373ECC4;
  aBlock[5] = v18;
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_3_10(COERCE_DOUBLE(1107296256));
  aBlock[2] = v20;
  aBlock[3] = &block_descriptor_13;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_8();
  sub_1B373EDC4(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  OUTLINED_FUNCTION_6_9();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v11, v6, v21);
  _Block_release(v21);

  (*(v31 + 8))(v6, v1);
  return (*(v29 + 8))(v11, v30);
}

void sub_1B373E73C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852328);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v20 - v5);
  v7 = OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_progressController;
  v8 = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_progressController);
  if (v8)
  {
    [v8 hideAnimated:1 allowDelay:0];
    v9 = *(a1 + v7);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + v7) = 0;

  sub_1B373EE18(a2, v6, &qword_1EB852328);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B371B36C(v6, &qword_1EB852328);
    return;
  }

  v10 = *v6;
  v11 = sub_1B3C97F18();
  v12 = [v11 domain];
  v13 = sub_1B3C9C5E8();
  v15 = v14;

  if (v13 == sub_1B3C9C5E8() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_1B3C9D6A8();

    if ((v18 & 1) == 0)
    {
LABEL_16:
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B37D30B4();

        goto LABEL_18;
      }

LABEL_19:

      goto LABEL_20;
    }
  }

  if ([v11 code] != 11)
  {
    goto LABEL_16;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_19;
  }

  [Strong _cancel];

LABEL_18:
  swift_unknownObjectRelease();
LABEL_20:
}

id sub_1B373E978()
{
  [*&v0[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_exportManager] cancelAllExports];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryExportActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_cancel);
}

id sub_1B373EA10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryExportActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StoryExportActivityItemProvider()
{
  result = qword_1EB852318;
  if (!qword_1EB852318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B373EB90()
{
  result = sub_1B3C98068();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B373EC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B373ECC4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852328) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1B373E73C(v2, v3);
}

void sub_1B373ED44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();

  [a3 setTitle_];
}

uint64_t sub_1B373EDC4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B373EE18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B373EE78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B373EF34(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  v14 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_1B3723558(v8, v16);
    v10 = v5(v16);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v16);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_1B370EF10(v16, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B37EABE0(0, *(v9 + 16) + 1, 1);
        v9 = v17;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B37EABE0((v12 > 1), v13 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v13 + 1;
      result = sub_1B370EF10(v15, v9 + 40 * v13 + 32);
      v5 = v14;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B373F09C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B3C9D428();
    for (i = a3 + 32; ; i += 40)
    {
      a1(&v10, i);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1B3C9D408();
      sub_1B3C9D438();
      sub_1B3C9D448();
      sub_1B3C9D418();
      if (!--v6)
      {
        return v11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1B373F184()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v2 = sub_1B3C995F8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_0_8();
    sub_1B374C464(v9, v10);
    OUTLINED_FUNCTION_37_0();
    sub_1B3C9C4F8();
    v11 = v1 + 56;
    v18 = v1;
    OUTLINED_FUNCTION_19_2();
    v14 = ~v13;
    do
    {
      v15 = v12 & v14;
      if (((1 << (v12 & v14)) & *(v11 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v4 + 16))(v8, *(v18 + 48) + *(v4 + 72) * v15, v2);
      OUTLINED_FUNCTION_0_8();
      sub_1B374C464(&unk_1EB84F940, v16);
      v17 = sub_1B3C9C528();
      (*(v4 + 8))(v8, v2);
      v12 = v15 + 1;
    }

    while ((v17 & 1) == 0);
  }

  OUTLINED_FUNCTION_27();
}

BOOL sub_1B373F33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B3C9D7C8();
  sub_1B3C9C668();
  sub_1B3C9D7F8();
  OUTLINED_FUNCTION_19_2();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_1B3C9D6A8();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void OneUpChromeViewController.__allocating_init(browsingSession:actionsController:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_5_1();
  OneUpChromeViewController.init(browsingSession:actionsController:)();
}

void OneUpChromeViewController.init(browsingSession:actionsController:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852370);
  OUTLINED_FUNCTION_0();
  v77 = v8;
  v78 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v79 = v69 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852378);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  v76 = v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852380);
  OUTLINED_FUNCTION_8_0(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_hideScrubberWhenAccessoryIsVisible) = 1;
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_wantsShowInLibraryButton) = 0;
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_isRotating) = 0;
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_topSafeAreaInset) = 0;
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_bottomSafeAreaInset) = 0;
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeInsetBox) = 0;
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeMarginsBox) = 0;
  v15 = v1 + OBJC_IVAR___PUOneUpChromeViewController_visibleAssetRectInView;
  *v15 = 0u;
  v15[1] = 0u;
  v16 = v1 + OBJC_IVAR___PUOneUpChromeViewController_transitioningViewSize;
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeEnvironmentUpdater) = 0;
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_updater) = 0;
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_wantsStatusBarVisible) = 0;
  swift_unknownObjectWeakInit();
  v17 = v1 + OBJC_IVAR___PUOneUpChromeViewController_contentGuideInsets;
  v18 = *MEMORY[0x1E69DDCE0];
  v19 = *(MEMORY[0x1E69DDCE0] + 8);
  v20 = *(MEMORY[0x1E69DDCE0] + 16);
  v21 = *(MEMORY[0x1E69DDCE0] + 24);
  *v17 = *MEMORY[0x1E69DDCE0];
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_backgroundColorOverride) = 0;
  v22 = v1 + OBJC_IVAR___PUOneUpChromeViewController_contentDecorationAdditionalInsets;
  *v22 = v18;
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = v21;
  v23 = v1 + OBJC_IVAR___PUOneUpChromeViewController_additionalActionInfoEdgeInsets;
  *v23 = v18;
  v23[1] = v19;
  v23[2] = v20;
  v23[3] = v21;
  v24 = v1 + OBJC_IVAR___PUOneUpChromeViewController_selectionManagerObservation;
  *v24 = 0;
  v24[1] = 0;
  sub_1B3C9A528();
  v80 = ObjectType;
  v25 = sub_1B373FDBC();
  v26 = [v5 actionManager];
  v74 = v5;
  v27 = [v5 viewModel];
  if (v27)
  {
    v28 = v27;
    type metadata accessor for PhotosUIOneUpChromeEnvironment(0);
    OUTLINED_FUNCTION_36_0();
    v70 = v26;
    v29 = PhotosUIOneUpChromeEnvironment.init(viewModel:actionManager:useSystemBars:)(v28, v26, v25 & 1);
    type metadata accessor for OneUpDefaultChromeActionsDelegate();
    v30 = OUTLINED_FUNCTION_36_0();
    swift_unknownObjectRetain();

    v31 = sub_1B374B0F0(v3, v29, v30);
    sub_1B3C99528();
    OUTLINED_FUNCTION_36_0();
    v32 = sub_1B3C99518();
    sub_1B3C992E8();
    sub_1B374C464(&qword_1EB84F980, type metadata accessor for OneUpDefaultChromeActionsDelegate);
    v33 = objc_allocWithZone(type metadata accessor for DefaultOneUpBadgeContentProvider());

    v34 = v31;
    v35 = DefaultOneUpBadgeContentProvider.init(actionsDelegate:)();
    sub_1B3C998A8();
    OUTLINED_FUNCTION_36_0();
    v36 = sub_1B3C99898();
    sub_1B3710718(0, &qword_1EB84FE30);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = [ObjCClassFromMetadata sharedInstance];
    sub_1B3C9CDD8();

    sub_1B3C99798();
    v39 = objc_allocWithZone(type metadata accessor for OneUpChromeViewController.ChromeView());

    v72 = v34;

    v40 = v74;

    v71 = v35;
    v41 = sub_1B374AE88(v40, v36, v34, v29, v32, v71, v39);
    v74 = OBJC_IVAR___PUOneUpChromeViewController_chromeView;
    *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeView) = v41;
    v42 = v3;
    v43 = [ObjCClassFromMetadata sharedInstance];
    [v43 showLegibilityGradientBorders];

    v44 = v76;
    v81 = v36;
    sub_1B3C99B88();
    KeyPath = swift_getKeyPath();
    v46 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852428) + 36)];
    *v46 = KeyPath;
    v46[1] = v32;
    v47 = swift_getKeyPath();
    v48 = sub_1B374C464(&unk_1EB84FC60, type metadata accessor for PhotosUIOneUpChromeEnvironment);
    v49 = &v44[*(v75 + 9)];
    *v49 = v47;
    v49[1] = v29;
    v49[2] = v48;
    v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852438));

    v51 = sub_1B3C9AAB8();
    [v51 setUserInteractionEnabled_];
    *(v1 + OBJC_IVAR___PUOneUpChromeViewController_legibilityView) = v51;
    *(v1 + OBJC_IVAR___PUOneUpChromeViewController_actionsController) = v42;
    v73 = v42;
    *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeViewModel) = v36;
    *(v1 + OBJC_IVAR___PUOneUpChromeViewController_spec) = v32;
    v52 = (v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeEnvironment);
    *v52 = v29;
    v52[1] = v48;
    v53 = sub_1B374C464(&qword_1EB84F9A8, type metadata accessor for DefaultOneUpBadgeContentProvider);
    v54 = v1 + OBJC_IVAR___PUOneUpChromeViewController_badgeMenuProvider;
    v56 = v71;
    v55 = v72;
    *v54 = v71;
    v54[1] = v53;
    *(v1 + OBJC_IVAR___PUOneUpChromeViewController_browsingSession) = v40;
    *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeActionsDelegate) = v55;
    v57 = v74;
    v58 = *&v74[v1];
    swift_unknownObjectRetain();
    v76 = v29;

    v75 = v40;

    v69[1] = v32;

    v59 = v56;
    v60 = v51;
    [v58 bounds];
    [v60 setFrame_];
    [v60 setAutoresizingMask_];

    [*&v57[v1] insertSubview:v60 atIndex:0];
    v61 = v80;
    v83.receiver = v1;
    v83.super_class = v80;
    v62 = objc_msgSendSuper2(&v83, sel_init);
    (*(v77 + 104))(v79, *MEMORY[0x1E69C4410], v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852488);
    OUTLINED_FUNCTION_36_0();
    v63 = v62;
    *&v63[OBJC_IVAR___PUOneUpChromeViewController_updater] = sub_1B3C9A048();

    sub_1B373FE90();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B3803DC4(sub_1B374B2CC);

    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B3803D54();

    [v73 setPopoverHelper_];
    v64 = &v59[OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_delegate];
    swift_beginAccess();
    *(v64 + 1) = &protocol witness table for OneUpChromeViewController;
    swift_unknownObjectWeakAssign();
    v82[3] = v61;
    v82[0] = v63;
    v65 = objc_allocWithZone(MEMORY[0x1E69C4600]);
    v66 = sub_1B374922C(v82);
    v67 = *&v63[OBJC_IVAR___PUOneUpChromeViewController_chromeEnvironmentUpdater];
    *&v63[OBJC_IVAR___PUOneUpChromeViewController_chromeEnvironmentUpdater] = v66;
    v68 = v66;

    if (v68)
    {
      [v68 addUpdateSelector_];

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_27();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1B373FDBC()
{
  sub_1B3710718(0, &qword_1EB84FE30);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 enableSystemBars];

  return v1;
}

uint64_t sub_1B373FE50()
{
  OUTLINED_FUNCTION_0_7();
  result = sub_1B3C9ABC8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1B373FE90()
{
  v1 = v0;
  if (PFOSVariantHasInternalUI())
  {
    sub_1B3710718(0, &qword_1EB84FE30);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [ObjCClassFromMetadata sharedInstance];
    v4 = [v3 showChromeSafeAreaBox];

    if (v4)
    {
      v5 = [objc_opt_self() redColor];
      v6 = objc_allocWithZone(type metadata accessor for OneUpChromeDebugBorderView());
      v7 = sub_1B38140E4(v5, 0xD000000000000023, 0x80000001B3D11680, 0);
      [*(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeView) addSubview_];
      v8 = *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeInsetBox);
      *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeInsetBox) = v7;
    }

    v9 = [ObjCClassFromMetadata sharedInstance];
    v10 = [v9 showChromeMarginsBox];

    if (v10)
    {
      v11 = [objc_opt_self() greenColor];
      v12 = objc_allocWithZone(type metadata accessor for OneUpChromeDebugBorderView());
      v13 = sub_1B38140E4(v11, 0x4D20656D6F726843, 0xEE00736E69677261, 1);
      [*(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeView) addSubview_];
      v14 = *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeMarginsBox);
      *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeMarginsBox) = v13;
    }
  }
}

uint64_t sub_1B3740090()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 oneUpChromeViewControllerRequestDeviceUnlock:v1 for:sub_1B374018C()];

      return swift_unknownObjectRelease();
    }
  }

  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

uint64_t sub_1B374018C()
{
  v1 = v0;
  v2 = sub_1B3C995D8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E69C2B68] || v9 == *MEMORY[0x1E69C2B40])
  {
    return 0;
  }

  if (v9 == *MEMORY[0x1E69C2B70])
  {
    return 3;
  }

  v12 = v9 == *MEMORY[0x1E69C2AC0] || v9 == *MEMORY[0x1E69C2AF8];
  v13 = v12 || v9 == *MEMORY[0x1E69C2AF0];
  if (v13 || v9 == *MEMORY[0x1E69C2B78])
  {
    return 0;
  }

  if (v9 == *MEMORY[0x1E69C2B60])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x1E69C2B30])
  {
    return 0;
  }

  if (v9 == *MEMORY[0x1E69C2AE8])
  {
    return 4;
  }

  v15 = *MEMORY[0x1E69C2AE0];
  v16 = *MEMORY[0x1E69C2AD0];
  v17 = *MEMORY[0x1E69C2B38];
  v18 = v9 == *MEMORY[0x1E69C2B80] || v9 == *MEMORY[0x1E69C2B50];
  v19 = v18 || v9 == *MEMORY[0x1E69C2B58];
  v20 = v19 || v9 == *MEMORY[0x1E69C2B88];
  v21 = v20 || v9 == *MEMORY[0x1E69C2B90];
  v22 = v21 || v9 == *MEMORY[0x1E69C2AC8];
  v23 = v22 || v9 == *MEMORY[0x1E69C2B00];
  v24 = v23 || v9 == *MEMORY[0x1E69C2B08];
  v25 = v24 || v9 == *MEMORY[0x1E69C2B20];
  v26 = v25 || v9 == *MEMORY[0x1E69C2AD8];
  v27 = v26 || v9 == *MEMORY[0x1E69C2B28];
  v28 = v27 || v9 == v15;
  v29 = v28 || v9 == v16;
  if (v29 || v9 == v17)
  {
    return 0;
  }

  if (v9 == *MEMORY[0x1E69C2AB8])
  {
    return 4;
  }

  if (v9 != *MEMORY[0x1E69C2B10])
  {
    if (v9 != *MEMORY[0x1E69C2B18] && v9 != *MEMORY[0x1E69C2B48])
    {
      (*(v4 + 8))(v8, v2, v15, v16, v17);
    }

    return 0;
  }

  return 2;
}

id sub_1B3740480()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2)
  {

    return 0;
  }

  v3 = [v2 oneUpChromeViewControllerIsDeviceUnlocked_];

  swift_unknownObjectRelease();
  return v3;
}

double sub_1B37407B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1B37409A8()
{
  result = *(v0 + OBJC_IVAR___PUOneUpChromeViewController_chromeEnvironmentUpdater);
  if (result)
  {
    return [result setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

id sub_1B3740A18()
{
  result = *(v0 + OBJC_IVAR___PUOneUpChromeViewController_chromeEnvironmentUpdater);
  if (result)
  {
    return [result updateIfNeeded];
  }

  __break(1u);
  return result;
}

void *sub_1B3740CC8()
{
  sub_1B3C99848();

  return sub_1B3740D14();
}

void *sub_1B3740D14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v65 - v2;
  v4 = sub_1B3C99C78();
  v71 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v65 - v8;
  v9 = sub_1B3C995F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR___PUOneUpChromeViewController_spec);
  if (sub_1B3C99268())
  {
    swift_getObjectType();
    if (sub_1B3C998C8())
    {
      v66 = v4;
      v67 = v13;
      v68 = v0;
      v14 = *(v0 + OBJC_IVAR___PUOneUpChromeViewController_chromeViewModel);
      v15 = *(v10 + 104);
      v15(v12, *MEMORY[0x1E69C2BB0], v9);
      v16 = sub_1B3C997F8();
      v17 = *(v10 + 8);
      v17(v12, v9);
      v18 = 0.0;
      if (v16)
      {
        sub_1B3C99858();
        v18 = v19 + 0.0;
      }

      v15(v12, *MEMORY[0x1E69C2BB8], v9);
      v69 = v14;
      v20 = sub_1B3C997F8();
      v17(v12, v9);
      if (v20)
      {
        sub_1B3C99528();
        sub_1B3C993D8();
        v18 = v18 + v21;
      }

      v15(v12, *MEMORY[0x1E69C2BC0], v9);
      v22 = sub_1B3C997F8();
      v17(v12, v9);
      v23 = 0.0;
      if (v22)
      {
        sub_1B3C997D8();
        v24 = v66;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v66);
        v26 = v68;
        if (EnumTagSinglePayload == 1)
        {
          sub_1B371B36C(v3, &unk_1EB8525B0);
        }

        else
        {
          v44 = v70;
          v43 = v71;
          (*(v71 + 32))(v70, v3, v24);
          (*(v43 + 16))(v7, v44, v24);
          v45 = (*(v43 + 88))(v7, v24);
          if (v45 != *MEMORY[0x1E69C2E00])
          {
            if (v45 != *MEMORY[0x1E69C2DF0] && v45 != *MEMORY[0x1E69C2DF8])
            {
              result = sub_1B3C9D4C8();
              __break(1u);
              return result;
            }

            sub_1B3C99778();
            v42 = v62;
            if (sub_1B3C994C8())
            {
              [*(v26 + OBJC_IVAR___PUOneUpChromeViewController_chromeView) safeAreaInsets];
              v64 = v63;
              (*(v43 + 8))(v44, v24);
              v41 = 0;
              v18 = v18 + v64;
            }

            else
            {
              (*(v43 + 8))(v44, v24);
              v41 = 0;
            }

            goto LABEL_18;
          }

          sub_1B3C99778();
          v47 = v46;
          (*(v43 + 8))(v44, v24);
          v18 = v18 + v47;
        }

        v41 = 1;
        v42 = 0.0;
      }

      else
      {
        v41 = 1;
        v42 = 0.0;
        v26 = v68;
      }

LABEL_18:
      v48 = 16.0;
      if (v18 <= 0.0)
      {
        v48 = 0.0;
      }

      v49 = *(v26 + OBJC_IVAR___PUOneUpChromeViewController_bottomSafeAreaInset) + v18 + v48;
      v50 = *(v26 + OBJC_IVAR___PUOneUpChromeViewController_chromeView);
      [v50 bounds];
      v51 = CGRectGetMaxY(v77) - v49;
      v52 = (v26 + OBJC_IVAR___PUOneUpChromeViewController_visibleAssetRectInView);
      v53 = CGRectGetMaxY(*(v26 + OBJC_IVAR___PUOneUpChromeViewController_visibleAssetRectInView)) - v51;
      if (v53 > 0.0)
      {
        v30 = v53;
      }

      else
      {
        v30 = 0.0;
      }

      [v50 bounds];
      MaxY = CGRectGetMaxY(v78);
      [v50 safeAreaInsets];
      if (MaxY - v55 < CGRectGetMaxY(*v52))
      {
        [v50 safeAreaInsets];
        v30 = v49 - v56;
      }

      v27 = 0.0;
      if (v41)
      {
        v32 = 0.0;
      }

      else
      {
        [v50 bounds];
        MaxX = CGRectGetMaxX(v79);
        [v50 safeAreaInsets];
        v59 = MaxX - v58;
        if (v59 <= CGRectGetMaxX(*v52))
        {
          v32 = v42 + 16.0;
        }

        else
        {
          v60 = v42 + CGRectGetMaxX(*v52) + 16.0 - v59;
          if (v60 < 0.0)
          {
            v32 = 0.0;
          }

          else
          {
            v32 = v60;
          }
        }

        v23 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v27 = sub_1B3746450();
  v23 = v28;
  v30 = v29;
  v32 = v31;
LABEL_11:
  v33 = sub_1B3C9A538();
  v34 = sub_1B3C9CAB8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v76 = v36;
    *v35 = 136315138;
    v72 = v27;
    v73 = v23;
    v74 = v30;
    v75 = v32;
    type metadata accessor for UIEdgeInsets(0);
    v37 = sub_1B3C9C608();
    v39 = sub_1B3749364(v37, v38, &v76);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1B36F3000, v33, v34, "Applying additionalActionInfoEdgeInsets: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x1B8C6EC70](v36, -1, -1);
    MEMORY[0x1B8C6EC70](v35, -1, -1);
  }

  return sub_1B3744DFC(&OBJC_IVAR___PUOneUpChromeViewController_additionalActionInfoEdgeInsets, v27, v23, v30, v32);
}

uint64_t sub_1B3741468()
{
  type metadata accessor for PhotosUIOneUpChromeEnvironment(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    if (Strong)
    {
      v3 = [Strong oneUpChromeViewControllerIsDeviceUnlocked_];
      swift_unknownObjectRelease();
      v4 = v3 ^ 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4 != (sub_1B37ACD2C() & 1))
    {
      sub_1B37A9E74();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_1B374158C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeView);
  [a1 locationInView_];
  v3 = [v2 hitTest:0 withEvent:?];

  return v3 == 0;
}

uint64_t sub_1B3741648(char a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852050);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - v10);
  if (a1)
  {
    *v11 = a2;
    v12 = *MEMORY[0x1E69C2D50];
    v13 = sub_1B3C99B78();
    OUTLINED_FUNCTION_0_1();
    (*(v14 + 104))(v11, v12, v13);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  }

  else
  {
    if (a2 >= 1.0)
    {
      v18 = *MEMORY[0x1E69C2D58];
      v19 = sub_1B3C99B78();
      OUTLINED_FUNCTION_0_1();
      (*(v20 + 104))(v8, v18, v19);
      v16 = v8;
      v17 = 0;
      v15 = v19;
    }

    else
    {
      v15 = sub_1B3C99B78();
      v16 = v8;
      v17 = 1;
    }

    __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
    v21 = OUTLINED_FUNCTION_5_1();
    sub_1B374C3E4(v21, v22);
  }

  return sub_1B3C997B8();
}

uint64_t sub_1B3741850()
{
  v1 = sub_1B3C995A8();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1B3C99748();
  sub_1B3C99578();
  sub_1B3C99598();
  (*(v3 + 16))(v0, v7, v1);
  sub_1B3C99758();
  return (*(v3 + 8))(v7, v1);
}

void OneUpChromeViewController.viewWillTransition(to:with:)(void *a1)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_7_1();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v15 = sub_1B374B2DC;
  v16 = v5;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1B372B6C8;
  v14 = &block_descriptor_14;
  v6 = _Block_copy(&v11);
  v7 = v1;

  OUTLINED_FUNCTION_20();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v15 = sub_1B374B2F0;
  v16 = v8;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1B372B6C8;
  v14 = &block_descriptor_14;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [a1 animateAlongsideTransition:v6 completion:v9];
  _Block_release(v9);
  _Block_release(v6);
}

uint64_t sub_1B3741B7C(double a1, double a2)
{
  sub_1B3741BB4(*&a1, *&a2, 0);
  _s15PhotosUIPrivate25OneUpChromeViewControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();
  return sub_1B3741DD4();
}

uint64_t sub_1B3741BB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR___PUOneUpChromeViewController_transitioningViewSize;
  v5 = *(v3 + OBJC_IVAR___PUOneUpChromeViewController_transitioningViewSize);
  v6 = *(v3 + OBJC_IVAR___PUOneUpChromeViewController_transitioningViewSize + 8);
  v7 = *(v3 + OBJC_IVAR___PUOneUpChromeViewController_transitioningViewSize + 16);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return sub_1B3743A24(v5, v6, v7);
}

uint64_t _s15PhotosUIPrivate25OneUpChromeViewControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852638);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(v0 + OBJC_IVAR___PUOneUpChromeViewController_chromeView);
  result = [v7 window];
  if (result)
  {

    [v7 bounds];
    result = sub_1B3C9CEC8();
    if ((result & 1) == 0)
    {
      [v7 bounds];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = [Strong oneUpChromeViewControllerInterfaceOrientation_];
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 1;
      }

      sub_1B37459AC(v10, 0, v6);
      sub_1B3C99C48();
      v11 = sub_1B3C99C78();
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v11);
      sub_1B3C997E8();
      return sub_1B371B36C(v6, &qword_1EB852638);
    }
  }

  return result;
}

uint64_t sub_1B3741DD4()
{
  v1 = v0;
  v201 = sub_1B3C995A8();
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v199 = &v164 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_1B3C99488();
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v196 = &v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1B3C9B348();
  v174 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v165 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853810);
  v5 = MEMORY[0x1EEE9AC00](v173);
  v166 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v172 = &v164 - v7;
  *&v205 = COERCE_DOUBLE(sub_1B3C99178());
  v184 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  *&v204 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1B3C99168();
  v181 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  *&v182 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B3C99188();
  MEMORY[0x1EEE9AC00](v10 - 8);
  *&v180 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852050);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v188 = &v164 - v13;
  v14 = sub_1B3C99328();
  v206 = *(v14 - 8);
  v207 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v192 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v191 = &v164 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v210 = &v164 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852490);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v164 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v167 = &v164 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v168 = &v164 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v203 = &v164 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v164 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v164 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v164 - v35;
  sub_1B3710718(0, &qword_1EB84FE30);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v208 = [ObjCClassFromMetadata sharedInstance];
  v37 = &v0[OBJC_IVAR___PUOneUpChromeViewController_chromeEnvironment];
  v38 = *&v0[OBJC_IVAR___PUOneUpChromeViewController_chromeEnvironment];
  v39 = *(v37 + 1);
  ObjectType = swift_getObjectType();
  v41 = sub_1B3C99948();
  v193 = sub_1B3C998D8();
  v170 = sub_1B3C999F8();
  LODWORD(v179) = v42;
  v211 = v38;
  v190 = ObjectType;
  v212 = v39;
  v169 = sub_1B3C999C8();
  LODWORD(v175) = v43;
  v44 = *&v1[OBJC_IVAR___PUOneUpChromeViewController_chromeView];
  [v44 bounds];
  sub_1B37455D8();
  v46 = v45;
  v48 = v47;
  [v44 bounds];
  CGRectGetHeight(v214);
  _UIUserInterfaceSizeClassForWidth();
  sub_1B3C9B358();
  [v44 bounds];
  CGRectGetWidth(v215);
  _UIUserInterfaceSizeClassForWidth();
  sub_1B3C9B358();
  v195 = v41;
  sub_1B3C99288();
  sub_1B373EE18(v36, v31, &qword_1EB852490);
  sub_1B3C99398();
  v202 = v34;
  sub_1B373EE18(v34, v31, &qword_1EB852490);
  sub_1B3C993A8();
  sub_1B3C993C8();
  v49 = sub_1B374573C();
  sub_1B3C99408();
  [v44 bounds];
  sub_1B3C9CE68();
  v50 = *(v206 + 104);
  v51 = MEMORY[0x1E69C2A18];
  if (v52 > 1.0)
  {
    v51 = MEMORY[0x1E69C2A20];
  }

  v53 = *v51;
  v187 = v206 + 104;
  v186 = v50;
  v50(v210, v53, v207);
  sub_1B3C99358();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = [Strong oneUpChromeViewControllerFullSizeOneUpHostingView_];
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0;
  }

  v189 = v55;
  sub_1B374518C(v44, v55);
  sub_1B3C992B8();
  v185 = v1;
  v56 = *&v1[OBJC_IVAR___PUOneUpChromeViewController_chromeViewModel];
  v57 = v188;
  sub_1B3C997A8();
  v58 = sub_1B3C99B78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v58);
  v209 = v36;
  v210 = v44;
  if (EnumTagSinglePayload != 1)
  {
    v60 = *(v58 - 8);
    v61 = (*(v60 + 88))(v57, v58);
    if (v61 == *MEMORY[0x1E69C2D50])
    {
      (*(v60 + 96))(v57, v58);
    }

    else if (v61 != *MEMORY[0x1E69C2D58])
    {
      (*(v60 + 8))(v57, v58);
    }
  }

  sub_1B3C992A8();
  v63 = v211;
  v62 = v212;
  static OneUpChromeSpecUtilities.wantsTopLegibilityGradient(for:chromeViewModel:)();
  sub_1B3C99468();
  v188 = v56;
  static OneUpChromeSpecUtilities.wantsBottomLegibilityGradient(for:chromeViewModel:bottomLegibilityHeight:)(v49, v63, v62, v56);
  sub_1B3C994D8();
  v64 = v208;
  LODWORD(v177) = [v208 enableLegibilityBlur];
  v176 = COERCE_DOUBLE([v64 legibilityBlurCurve]);
  [v64 legibilityBlurRadius];
  [v64 legibilityBlurDistanceToBaseline];
  [v64 legibilityTintCurve];
  [v64 legibilityTintOpacity];
  v65 = *MEMORY[0x1E69C2570];
  v181 = *(*&v181 + 104);
  v66 = v182;
  v67 = v183;
  (*&v181)(*&v182, v65, v183);
  LODWORD(v178) = *MEMORY[0x1E69C2580];
  v184 = *(*&v184 + 104);
  v69 = v204;
  v68 = v205;
  (*&v184)(COERCE_DOUBLE(*&v204));
  sub_1B3C99158();
  sub_1B3C99248();
  LODWORD(v177) = [v64 enableLegibilityBlur];
  v176 = COERCE_DOUBLE([v64 legibilityBlurCurve]);
  [v64 legibilityBlurRadius];
  [v64 legibilityBlurDistanceToBaseline];
  [v64 legibilityTintCurve];
  [v64 legibilityTintOpacity];
  (*&v181)(*&v66, *MEMORY[0x1E69C2578], v67);
  (*&v184)(COERCE_DOUBLE(*&v69), LODWORD(v178), v68);
  sub_1B3C99158();
  sub_1B3C99258();
  v70 = v210;
  [v210 bounds];
  v75 = UIEdgeInsetsInsetRect(v71, v72, v73, v74, v46, v48);
  v79 = v75;
  v80 = v76;
  v81 = v77;
  v82 = v78;
  v83 = v75;
  v84 = v76;
  v85 = v75;
  v86 = v76;
  v87 = v77;
  v88 = v78;
  if ((LOBYTE(v179) & 1) == 0)
  {
    v83 = v75;
    v84 = v76;
    v85 = v75;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    if ((LOBYTE(v175) & 1) == 0)
    {
      PXRectWithAspectRatioFittingRect();
      v182 = *&v89;
      v181 = v90;
      v204 = *&v92;
      v205 = v91;
      [v70 bounds];
      PXRectWithAspectRatioFittingRect();
      sub_1B3C9CE78();
      v94 = v93;
      v96 = v95;
      v97 = v82;
      v99 = v98;
      v101 = v100;
      [v70 bounds];
      v229.origin.x = v102;
      v229.origin.y = v103;
      v229.size.width = v104;
      v229.size.height = v105;
      v216.origin.x = v94;
      v85 = v182;
      v216.origin.y = v96;
      v86 = v181;
      v216.size.width = v99;
      v82 = v97;
      v216.size.height = v101;
      *(&v77 - 2) = CGRectIntersection(v216, v229);
      v83 = v106;
      v84 = v107;
      v88 = v204;
      v87 = *&v205;
    }
  }

  v183 = *&v78;
  v184 = v77;
  v217.origin.x = v85;
  v217.origin.y = v86;
  v204 = v88;
  *&v205 = v87;
  v217.size.width = v87;
  v217.size.height = v88;
  IsNull = CGRectIsNull(v217);
  v109 = v209;
  v110 = v185;
  v111 = v203;
  if (!IsNull && (sub_1B3C9CE88() & 1) != 0)
  {
    v112 = *&v110[OBJC_IVAR___PUOneUpChromeViewController_chromeInsetBox];
    v182 = v85;
    v181 = v86;
    v180 = v84;
    if (v112)
    {
      [v112 setFrame_];
    }

    [v70 bounds];
    v230.origin.x = v113;
    v230.origin.y = v114;
    v230.size.width = v115;
    v230.size.height = v116;
    v178 = v79;
    v218.origin.x = v79;
    v177 = v80;
    v218.origin.y = v80;
    v176 = v81;
    v218.size.width = v81;
    v175 = v82;
    v218.size.height = v82;
    v219 = CGRectIntersection(v218, v230);
    x = v219.origin.x;
    y = v219.origin.y;
    width = v219.size.width;
    height = v219.size.height;
    [v70 bounds];
    v231.origin.x = v121;
    v231.origin.y = v122;
    v231.size.width = v123;
    v231.size.height = v124;
    v179 = v83;
    v220.origin.x = v83;
    v220.origin.y = v180;
    v220.size.width = v184;
    *&v220.size.height = v183;
    v221 = CGRectIntersection(v220, v231);
    v125 = v221.origin.x;
    v126 = v221.origin.y;
    v127 = v221.size.width;
    v128 = v221.size.height;
    v221.origin.x = x;
    v221.origin.y = y;
    v221.size.width = width;
    v221.size.height = height;
    v232.origin.x = v125;
    v232.origin.y = v126;
    v232.size.width = v127;
    v232.size.height = v128;
    CGRectContainsRect(v221, v232);
    v129 = &v110[OBJC_IVAR___PUOneUpChromeViewController_visibleAssetRectInView];
    *v129 = v125;
    v129[1] = v126;
    v129[2] = v127;
    v129[3] = v128;
    v130 = *MEMORY[0x1E697FF40];
    v131 = v171;
    v185 = *(v174 + 104);
    (v185)(v111, v130, v171);
    __swift_storeEnumTagSinglePayload(v111, 0, 1, v131);
    v132 = *(v173 + 48);
    v133 = v109;
    v134 = v172;
    sub_1B373EE18(v133, v172, &qword_1EB852490);
    v135 = v131;
    sub_1B373EE18(v111, v134 + v132, &qword_1EB852490);
    if (__swift_getEnumTagSinglePayload(v134, 1, v131) == 1)
    {
      sub_1B371B36C(v111, &qword_1EB852490);
      v136 = __swift_getEnumTagSinglePayload(v134 + v132, 1, v131);
      v79 = v178;
      v80 = v177;
      v81 = v176;
      v82 = v175;
      v85 = v182;
      v83 = v179;
      v86 = v181;
      v84 = v180;
      if (v136 == 1)
      {
        sub_1B371B36C(v134, &qword_1EB852490);
LABEL_30:
        v145 = v167;
        (v185)(v167, v130, v135);
        __swift_storeEnumTagSinglePayload(v145, 0, 1, v135);
        v146 = *(v173 + 48);
        v147 = v166;
        sub_1B373EE18(v202, v166, &qword_1EB852490);
        sub_1B373EE18(v145, v147 + v146, &qword_1EB852490);
        if (__swift_getEnumTagSinglePayload(v147, 1, v135) == 1)
        {
          sub_1B371B36C(v145, &qword_1EB852490);
          if (__swift_getEnumTagSinglePayload(v147 + v146, 1, v135) == 1)
          {
            sub_1B371B36C(v147, &qword_1EB852490);
LABEL_43:
            v163 = v210;
            [v210 bounds];
            CGRectGetWidth(v226);
            [v163 bounds];
            CGRectGetHeight(v227);
            v228.origin.x = v179;
            v228.origin.y = v84;
            v228.size.width = v184;
            *&v228.size.height = v183;
            CGRectGetWidth(v228);
            sub_1B3C99528();
            sub_1B3C994E8();
            v83 = v179;
            goto LABEL_37;
          }
        }

        else
        {
          v148 = v164;
          sub_1B373EE18(v147, v164, &qword_1EB852490);
          if (__swift_getEnumTagSinglePayload(v147 + v146, 1, v135) != 1)
          {
            v158 = v174;
            v159 = v165;
            (*(v174 + 32))(v165, v147 + v146, v135);
            sub_1B374C464(&qword_1EB84F8F0, MEMORY[0x1E697FF50]);
            v160 = v135;
            v161 = sub_1B3C9C528();
            v162 = *(v158 + 8);
            v162(v159, v160);
            sub_1B371B36C(v167, &qword_1EB852490);
            v162(v148, v160);
            sub_1B371B36C(v147, &qword_1EB852490);
            if ((v161 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_43;
          }

          sub_1B371B36C(v145, &qword_1EB852490);
          (*(v174 + 8))(v148, v135);
        }

        v141 = v147;
LABEL_36:
        sub_1B371B36C(v141, &unk_1EB853810);
        goto LABEL_37;
      }
    }

    else
    {
      v140 = v168;
      sub_1B373EE18(v134, v168, &qword_1EB852490);
      if (__swift_getEnumTagSinglePayload(v134 + v132, 1, v131) != 1)
      {
        v142 = v174;
        v143 = v165;
        (*(v174 + 32))(v165, v134 + v132, v135);
        sub_1B374C464(&qword_1EB84F8F0, MEMORY[0x1E697FF50]);
        LODWORD(v170) = sub_1B3C9C528();
        v144 = *(v142 + 8);
        v144(v143, v135);
        sub_1B371B36C(v203, &qword_1EB852490);
        v144(v140, v135);
        sub_1B371B36C(v172, &qword_1EB852490);
        v79 = v178;
        v80 = v177;
        v81 = v176;
        v82 = v175;
        v85 = v182;
        v83 = v179;
        v86 = v181;
        v84 = v180;
        if ((v170 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      sub_1B371B36C(v203, &qword_1EB852490);
      (*(v174 + 8))(v140, v131);
      v79 = v178;
      v80 = v177;
      v81 = v176;
      v82 = v175;
      v85 = v182;
      v83 = v179;
      v86 = v181;
      v84 = v180;
    }

    v141 = v134;
    goto LABEL_36;
  }

  v137 = *&v110[OBJC_IVAR___PUOneUpChromeViewController_chromeInsetBox];
  if (v137)
  {
    [v137 setFrame_];
  }

  v138 = *&v110[OBJC_IVAR___PUOneUpChromeViewController_chromeMarginsBox];
  if (v138)
  {
    [v138 setFrame_];
  }

  v139 = &v110[OBJC_IVAR___PUOneUpChromeViewController_visibleAssetRectInView];
  *v139 = 0u;
  *(v139 + 1) = 0u;
LABEL_37:
  v149 = v191;
  sub_1B3C99348();
  v150 = v192;
  v151 = v207;
  v186(v192, *MEMORY[0x1E69C2A20], v207);
  v152 = sub_1B3C99308();
  v153 = *(v206 + 8);
  v153(v150, v151);
  v153(v149, v151);
  if (v152)
  {
    v222.origin.x = v85;
    v222.origin.y = v86;
    v222.size.height = v204;
    *&v222.size.width = v205;
    CGRectGetWidth(v222);
  }

  sub_1B3C992C8();
  v154 = v209;
  if (sub_1B3C998C8())
  {
    sub_1B3C993B8();
    sub_1B3C99278();
    v223.origin.x = v83;
    v223.origin.y = v84;
    v223.size.width = v184;
    *&v223.size.height = v183;
    CGRectGetMinY(v223);
    v224.origin.x = v79;
    v224.origin.y = v80;
    v224.size.width = v81;
    v224.size.height = v82;
    CGRectGetMinY(v224);
    sub_1B3C99428();
  }

  sub_1B3C99A68();
  [v210 bounds];
  CGRectGetWidth(v225);
  sub_1B3C994B8();
  (*(v197 + 104))(v196, *MEMORY[0x1E69C2A28], v198);
  sub_1B3C994A8();
  sub_1B3C993F8();
  v155 = [ObjCClassFromMetadata sharedInstance];
  [v155 chromeTitleEDRBoost];

  sub_1B3C99298();
  v213 = 3;
  static OneUpChromeSpecUtilities.edrBoost(forType:assetIsHDR:isZoomedOverChrome:)(&v213);
  sub_1B3C99338();
  v156 = v199;
  sub_1B3C99748();
  LOBYTE(v155) = sub_1B3C99588();
  (*(v200 + 8))(v156, v201);
  v213 = v155 & 1;
  static OneUpChromeSpecUtilities.edrBoost(forType:assetIsHDR:isZoomedOverChrome:)(&v213);
  sub_1B3C993E8();

  sub_1B371B36C(v202, &qword_1EB852490);
  return sub_1B371B36C(v154, &qword_1EB852490);
}

uint64_t sub_1B374370C()
{
  sub_1B3741BB4(0, 0, 1);
  _s15PhotosUIPrivate25OneUpChromeViewControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();
  return sub_1B3741DD4();
}

Swift::Void __swiftcall OneUpChromeViewController.viewWillLayoutSubviews()()
{
  sub_1B3741DD4();
  _s15PhotosUIPrivate25OneUpChromeViewControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();

  sub_1B37437F0();
}

void *sub_1B37437F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852380);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  if (*(v0 + OBJC_IVAR___PUOneUpChromeViewController_transitioningViewSize + 16))
  {
    [*(v0 + OBJC_IVAR___PUOneUpChromeViewController_chromeView) bounds];
  }

  sub_1B37455D8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1B3C99788();
  v13 = sub_1B3C991F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v13);
  sub_1B371B36C(v4, &qword_1EB852380);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B3C99528();
    sub_1B3C992F8();
    v10 = v10 + v15;
  }

  result = sub_1B3744DFC(&OBJC_IVAR___PUOneUpChromeViewController_contentGuideInsets, v6, v8, v10, v12);
  v17 = *(v1 + OBJC_IVAR___PUOneUpChromeViewController_chromeView) + OBJC_IVAR____TtCC15PhotosUIPrivate25OneUpChromeViewController10ChromeView_touchInsets;
  *v17 = v6;
  *(v17 + 8) = v8;
  *(v17 + 16) = v10;
  *(v17 + 24) = v12;
  return result;
}

uint64_t sub_1B3743A24(uint64_t result, uint64_t a2, char a3)
{
  v4 = (v3 + OBJC_IVAR___PUOneUpChromeViewController_transitioningViewSize);
  if (*(v3 + OBJC_IVAR___PUOneUpChromeViewController_transitioningViewSize + 16))
  {
    if (a3)
    {
      return result;
    }

LABEL_9:
    *&result = COERCE_DOUBLE(sub_1B37437F0());
    return result;
  }

  if (a3)
  {
    goto LABEL_9;
  }

  if (*v4 != *&result || v4[1] != *&a2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1B3743A64(uint64_t a1, char a2)
{
  sub_1B3C9C888();
  v5[16] = a2;
  v6 = a1;
  return sub_1B36FA788(sub_1B374B774, v5);
}

void sub_1B3743AE4(char a1)
{
  switch(a1)
  {
    case 1:
      sub_1B3743B90();
      break;
    case 2:
      sub_1B3743D94();
      break;
    case 3:
      sub_1B3743FA0();
      break;
    case 4:
      sub_1B37437F0();
      break;
    case 5:
      sub_1B37442B4();
      break;
    case 6:
      _s15PhotosUIPrivate25OneUpChromeViewControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();
      break;
    case 7:
      v1 = sub_1B3746450();
      sub_1B3744DFC(&OBJC_IVAR___PUOneUpChromeViewController_contentDecorationAdditionalInsets, v1, v2, v3, v4);
      break;
    case 8:
      sub_1B3740D14();
      break;
    case 9:
      sub_1B374433C();
      break;
    default:
      sub_1B3741DD4();
      break;
  }
}

uint64_t sub_1B3743B90()
{
  v0 = sub_1B3C99548();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C995C8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  swift_getObjectType();
  sub_1B3C99938();
  sub_1B3C997C8();
  sub_1B3C99978();
  sub_1B3C99818();
  sub_1B3C998E8();
  sub_1B3C99718();
  sub_1B37465A4(v8);
  sub_1B3C99828();
  static OneUpToolbarUtilities.toolbarKind(chromeEnvironment:)();
  sub_1B3C99768();
  if ((sub_1B3C999E8() & 1) != 0 && (sub_1B3C99A88() & 1) == 0)
  {
    v5 = MEMORY[0x1E69C2A40];
  }

  else
  {
    v5 = MEMORY[0x1E69C2A38];
  }

  (*(v1 + 104))(v3, *v5, v0);
  return sub_1B3C99738();
}

uint64_t sub_1B3743D94()
{
  v13 = sub_1B3C995A8();
  v1 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C99698();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  v12 = *(v0 + OBJC_IVAR___PUOneUpChromeViewController_chromeEnvironment);
  sub_1B3C99748();
  sub_1B3C99568();
  (*(v1 + 8))(v3, v13);
  static OneUpToolbarUtilities.allowedTopBarButtons(chromeEnvironment:includeAirPlayButton:includeShowInLibraryButton:)();
  (*(v5 + 16))(v8, v10, v4);
  sub_1B3C99868();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1B3743FA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852050);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1B3C99C78();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C997D8();
  v11 = &OBJC_IVAR___PUOneUpSpatialToastController_downloadTask;
  v12 = &selRef_setValue_animateImmediately_;
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1B371B36C(v6, &unk_1EB8525B0);
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  (*(v8 + 32))(v10, v6, v7);
  if ((sub_1B37444EC() & 1) == 0)
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_6;
  }

  sub_1B3710718(0, &qword_1EB84FE30);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v13 enableSideCommentsInLandscape];

  v12 = &selRef_setValue_animateImmediately_;
  v11 = &OBJC_IVAR___PUOneUpSpatialToastController_downloadTask;
  static OneUpToolbarUtilities.allowedElementsForVisibleAccessoryDrawer(_:toolbarPosition:enableSideCommentsInLandscape:)();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
LABEL_7:
  v16 = (v0 + v11[140]);
  v17 = *v16;
  v18 = v16[1];
  sub_1B3710718(0, &qword_1EB84FE30);
  v19 = [swift_getObjCClassFromMetadata() v12[254]];
  sub_1B3C997A8();
  sub_1B374B79C(v17, v18, v15, v19, v3);

  sub_1B371B36C(v3, &qword_1EB852050);
  sub_1B3C99838();
}

uint64_t sub_1B37442B4()
{
  swift_getObjectType();
  if ((sub_1B3C99948() & 1) != 0 || (sub_1B3C998C8() & 1) == 0)
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_1B37444EC() ^ 1;
  }

  return sub_1B374459C(v0 & 1);
}

void sub_1B374433C()
{
  swift_getObjectType();
  v0 = sub_1B3C99A48();
  v1 = sub_1B3C99268();
  v2 = sub_1B3C99948();
  v3 = sub_1B3C99708();
  if (v3)
  {
    swift_getObjectType();
    v4 = sub_1B3C99558();
    swift_unknownObjectRelease();
    if (v0)
    {
LABEL_3:
      v3 = 0;
      goto LABEL_10;
    }

    if ((v1 & v2 & 1) == 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_3;
      }

      v7 = [objc_opt_self() currentTheme];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v10 = [v7 photoBrowserChromeVisibleBackgroundColor];
      swift_unknownObjectRelease();
      v5 = v10;
LABEL_9:
      v8 = v5;
      v6 = v5;
      v3 = v8;
      goto LABEL_10;
    }

LABEL_8:
    v5 = [objc_opt_self() blackColor];
    goto LABEL_9;
  }

  if (!(v0 & 1 | ((v1 & 1) == 0)) && ((v2 ^ 1) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v9 = v3;
  sub_1B3744B50(v3);
}

uint64_t sub_1B37444EC()
{
  swift_getObjectType();
  if ((sub_1B3C999E8() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v2 = [Strong oneUpChromeViewControllerAccessoryIsFloatingWhenPresented_];
  swift_unknownObjectRelease();
  return v2 ^ 1;
}

uint64_t sub_1B374459C(char a1)
{
  v2 = *(v1 + OBJC_IVAR___PUOneUpChromeViewController_wantsStatusBarVisible);
  *(v1 + OBJC_IVAR___PUOneUpChromeViewController_wantsStatusBarVisible) = a1;
  return sub_1B37445B4(v2);
}

uint64_t sub_1B37445B4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___PUOneUpChromeViewController_wantsStatusBarVisible) != (result & 1))
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result oneUpChromeViewControllerNeedsStatusBarAppearanceUpdate_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t OneUpChromeViewController.delegate.setter()
{
  OUTLINED_FUNCTION_46();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1B3744834(Strong);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B37447AC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id sub_1B3744834(id a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  return sub_1B37409A8();
}

void (*OneUpChromeViewController.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B3744928;
}

void sub_1B3744928(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    OneUpChromeViewController.delegate.setter();
    swift_unknownObjectRelease();
  }

  else
  {
    OneUpChromeViewController.delegate.setter();
  }

  free(v2);
}

void *OneUpChromeViewController.backgroundColorOverride.getter()
{
  v1 = OBJC_IVAR___PUOneUpChromeViewController_backgroundColorOverride;
  OUTLINED_FUNCTION_7_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B3744B50(void *a1)
{
  v3 = OBJC_IVAR___PUOneUpChromeViewController_backgroundColorOverride;
  OUTLINED_FUNCTION_46();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1B3744C44(v4);
}

id sub_1B3744BAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PUOneUpChromeViewController_backgroundColorOverride;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1B3744C14(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B3744B50(v1);
}

void sub_1B3744C44(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PUOneUpChromeViewController_backgroundColorOverride;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_1B3710718(0, &unk_1EB8525D0), v6 = v5, v7 = a1, v8 = sub_1B3C9CFA8(), v6, v7, (v8 & 1) == 0))
  {
LABEL_6:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong oneUpChromeViewControllerBackgroundColorOverrideDidChange_];
      swift_unknownObjectRelease();
    }
  }
}

void *sub_1B3744DFC(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = (v5 + *a1);
  swift_beginAccess();
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = OUTLINED_FUNCTION_5_1();
  return sub_1B3745048(v11, v12, v13, v14, v15, v16);
}

double sub_1B3744EF0(void *a1)
{
  v2 = v1 + *a1;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  return *v2;
}

__n128 sub_1B3744FC0@<Q0>(void *a1@<X0>, void *a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1 + *a2;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  result = *v4;
  v6 = *(v4 + 16);
  *a3 = *v4;
  a3[1] = v6;
  return result;
}

void *sub_1B3745048(void *a1, SEL *a2, float64_t a3, float64_t a4, float64_t a5, float64_t a6)
{
  v8 = (v6 + *a1);
  OUTLINED_FUNCTION_14();
  result = swift_beginAccess();
  v10.f64[0] = a3;
  v10.f64[1] = a4;
  v11.f64[0] = a5;
  v11.f64[1] = a6;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v8, v10), vceqq_f64(v8[1], v11)))) & 1) == 0)
  {
    OUTLINED_FUNCTION_14();
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result *a2];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1B3745138()
{
  result = sub_1B3C99708();
  if (result)
  {
    swift_getObjectType();
    v1 = sub_1B3C99558();
    swift_unknownObjectRelease();
    return v1 & 1;
  }

  return result;
}

void sub_1B374518C(void *a1, void *a2)
{
  swift_getObjectType();
  if (sub_1B373FDBC())
  {
    sub_1B37451F4(a1, a2);
  }

  else
  {
    sub_1B3745308(a1, a2);
  }
}

double sub_1B37451F4(void *a1, void *a2)
{
  [a1 layoutMargins];
  if (a2)
  {
    [a2 layoutMargins];
  }

  PXEdgeInsetsMax();
  v5 = v4;
  [a1 safeAreaInsets];
  [a1 safeAreaInsets];
  sub_1B3C99528();
  sub_1B3C99438();
  return v5;
}

void sub_1B3745308(void *a1, void *a2)
{
  sub_1B3C99528();
  sub_1B3C99388();
  [a1 layoutMargins];
  if (a2)
  {
    [a2 layoutMargins];
  }

  PXEdgeInsetsMax();
  [a1 safeAreaInsets];
  [a1 safeAreaInsets];
  sub_1B3C99438();
  [a1 bounds];
  CGRectGetWidth(v7);
  v4 = _UIUserInterfaceSizeClassForWidth();
  [a1 bounds];
  CGRectGetHeight(v8);
  v5 = _UIUserInterfaceSizeClassForWidth();
  if (v4 < 2)
  {
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        sub_1B3C99378();
        [a1 safeAreaInsets];
        [a1 safeAreaInsets];
        sub_1B3710718(0, &qword_1EB84F840);
        v6 = [swift_getObjCClassFromMetadata() sharedInstance];
        [v6 defaultFloatingToolbarBottomInset];

        return;
      }

      goto LABEL_12;
    }

LABEL_9:
    MEMORY[0x1B8C668E0]();
    MEMORY[0x1B8C66A10]();
    return;
  }

  if (v4 == 2)
  {
    if (v5 < 2)
    {
      goto LABEL_9;
    }

    if (v5 == 2)
    {
      sub_1B3C99378();
      return;
    }
  }

LABEL_12:
  sub_1B3C9D4C8();
  __break(1u);
}

void sub_1B37455D8()
{
  OUTLINED_FUNCTION_41_0();
  swift_getObjectType();
  OUTLINED_FUNCTION_7_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong oneUpChromeViewControllerFullSizeOneUpHostingView_];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + OBJC_IVAR___PUOneUpChromeViewController_chromeView);
  v4 = OUTLINED_FUNCTION_42_0();
  sub_1B374518C(v4, v5);
  v7 = v6;
  v9 = v8;
  static OneUpChromeViewController.contentGuideInsets(for:layoutMargins:chromeEnvironment:)();
  OUTLINED_FUNCTION_6();
  v10 = *(v0 + OBJC_IVAR___PUOneUpChromeViewController_chromeMarginsBox);
  if (v10)
  {
    v11 = v10;
    [v3 bounds];
    [v11 setFrame_];
  }

  OUTLINED_FUNCTION_17();
}

double sub_1B374573C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852490);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_1B3C9B348();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _UIUserInterfaceSizeClassForHeight();
  sub_1B3C9B358();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1B371B36C(v3, &qword_1EB852490);
    return 0.0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1B3C99C58();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = [Strong oneUpChromeViewControllerFullSizeOneUpHostingView_];
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
    }

    sub_1B374518C(*(v0 + OBJC_IVAR___PUOneUpChromeViewController_chromeView), v10);
    sub_1B3C99528();

    sub_1B3C99418();
    v8 = v11;

    (*(v5 + 8))(v7, v4);
  }

  return v8;
}

uint64_t sub_1B37459AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v4 = 1;
    switch(a1)
    {
      case 0:
        goto LABEL_9;
      case 1:
        sub_1B3C9B1A8();
        goto LABEL_8;
      case 2:
        sub_1B3C9B198();
        goto LABEL_8;
      case 3:
        sub_1B3C9B188();
        goto LABEL_8;
      case 4:
        sub_1B3C9B178();
LABEL_8:
        v4 = 0;
        goto LABEL_9;
      default:
        sub_1B3C9D378();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852640);
        v7 = sub_1B3C9C608();
        MEMORY[0x1B8C69C10](v7);

        result = sub_1B3C9D4C8();
        __break(1u);
        return result;
    }
  }

  v4 = 1;
LABEL_9:
  v5 = sub_1B3C9B1B8();

  return __swift_storeEnumTagSinglePayload(a3, v4, 1, v5);
}

Swift::Void __swiftcall OneUpChromeViewController.updatePresentingViewController()()
{
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong oneUpChromeViewControllerPresentationEnvironment_];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = [v2 presentingViewController];
      swift_unknownObjectRelease();
    }
  }

  swift_getObjectType();
  sub_1B3C99A08();
}

void static OneUpChromeViewController.contentGuideInsets(for:layoutMargins:chromeEnvironment:)()
{
  sub_1B3C99328();
  OUTLINED_FUNCTION_0();
  v28 = v0;
  v29 = v1;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852490);
  v6 = OUTLINED_FUNCTION_8_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_1B3C9B348();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  swift_getObjectType();
  if ((sub_1B3C999D8() & 1) == 0)
  {
    if (sub_1B373FDBC())
    {
      sub_1B3C99528();
      OUTLINED_FUNCTION_38_0();
      sub_1B3C99448();
      OUTLINED_FUNCTION_6();
    }

    else
    {
      _UIUserInterfaceSizeClassForWidth();
      sub_1B3C9B358();
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        v9 = v12;
      }

      else
      {
        v23 = *(v15 + 32);
        v23(v22, v12, v13);
        _UIUserInterfaceSizeClassForHeight();
        sub_1B3C9B358();
        if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
        {
          v23(v19, v9, v13);
          sub_1B3C99C58();
          sub_1B3C99528();
          sub_1B3C99318();
          OUTLINED_FUNCTION_38_0();
          sub_1B3C99478();
          OUTLINED_FUNCTION_6();
          (*(v29 + 8))(v4, v28);
          v26 = *(v15 + 8);
          v26(v19, v13);
          v27 = OUTLINED_FUNCTION_43_0();
          (v26)(v27);
          goto LABEL_9;
        }

        v24 = OUTLINED_FUNCTION_43_0();
        v25(v24);
      }

      sub_1B371B36C(v9, &qword_1EB852490);
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_17();
}

double sub_1B3745FB8()
{
  OUTLINED_FUNCTION_41_0();
  swift_getObjectType();
  swift_getObjectType();
  if ((sub_1B3C998C8() & 1) == 0)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  OUTLINED_FUNCTION_43_0();
  if (sub_1B3C99948())
  {
    return *MEMORY[0x1E69DDCE0];
  }

  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong oneUpChromeViewControllerFullSizeOneUpHostingView_];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + OBJC_IVAR___PUOneUpChromeViewController_chromeView);
  v5 = OUTLINED_FUNCTION_43_0();
  sub_1B374518C(v5, v6);
  if (sub_1B373FDBC())
  {
    [v4 safeAreaInsets];
  }

  else
  {
    sub_1B3746158();
  }

  v1 = v7;

  return v1;
}

uint64_t sub_1B3746158()
{
  v0 = sub_1B3C99328();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - v5;
  sub_1B3C99348();
  v7 = (*(v1 + 88))(v6, v0);
  if (v7 == *MEMORY[0x1E69C2A18])
  {
    sub_1B3C99878();
    return sub_1B3C99888();
  }

  else if (v7 == *MEMORY[0x1E69C2A20])
  {
    result = _UIUserInterfaceSizeClassForHeight();
    if (result == 1)
    {
      sub_1B3C99888();
      return sub_1B3C99878();
    }
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_1B3C9D378();
    MEMORY[0x1B8C69C10](0xD00000000000001BLL, 0x80000001B3D115B0);
    sub_1B3C99348();
    sub_1B3C9D458();
    (*(v1 + 8))(v4, v0);
    result = sub_1B3C9D4C8();
    __break(1u);
  }

  return result;
}

void sub_1B37463F8(uint64_t a1, uint64_t a2, void (*a3)(double, double))
{
  OUTLINED_FUNCTION_41_0();
  v7 = v6;
  a3(v4, v3);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();
}

double sub_1B3746450()
{
  v0 = sub_1B3C995F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1B3C99458() & 1) == 0)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  if (!sub_1B3C99708())
  {
    return *MEMORY[0x1E69DDCE0];
  }

  swift_unknownObjectRelease();
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2BB0], v0);
  v4 = sub_1B3C997F8();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  sub_1B3C99858();
  return 0.0;
}

uint64_t sub_1B37465A4@<X0>(uint64_t *a1@<X8>)
{
  sub_1B3803BF8();
  sub_1B3C9D318();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = sub_1B3C99BE8();
  v3 = MEMORY[0x1E69C2DB0];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1B3C99BD8();
}

id sub_1B374666C(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for OneUpChromeViewController.View();
  v7 = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_1B3710718(0, &unk_1EB84F790);
    v8 = v7;
    v9 = v3;
    v10 = sub_1B3C9CFA8();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id sub_1B37467C0(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for OneUpChromeViewController.View();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1B374684C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for OneUpChromeViewController.View();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1B37468FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = Strong;
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = [v2 oneUpChromeViewControllerActionMenuElements_];
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525A0);
    v4 = sub_1B3C9C788();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  return v4;
}

void sub_1B3746A58()
{
  OUTLINED_FUNCTION_39();
  v64 = v0;
  v1 = sub_1B3C991F8();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v53 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  if (PFOSVariantHasInternalUI())
  {
    v63 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    OUTLINED_FUNCTION_7_1();
    v12 = swift_allocObject();
    v54 = xmmword_1B3CF9810;
    *(v12 + 16) = xmmword_1B3CF9810;
    OUTLINED_FUNCTION_20();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = objc_allocWithZone(MEMORY[0x1E69C4450]);
    OUTLINED_FUNCTION_14();
    *(v12 + 32) = sub_1B3728644(v15, v16, v17, v18, 0, v19, v13);
    v68 = v12;
    v20 = sub_1B3C991D8();
    v21 = *(v20 + 16);
    if (v21)
    {
      v53[1] = v11;
      v67 = v10;
      sub_1B3C9D428();
      v23 = *(v3 + 16);
      v22 = v3 + 16;
      v62 = v23;
      v24 = *(v22 + 64);
      v59 = v5;
      v53[0] = v20;
      v25 = v20 + ((v24 + 32) & ~v24);
      v58 = *(v22 + 56);
      v61 = v24;
      v57 = (v24 + 24) & ~v24;
      v56 = (v22 + 16);
      v60 = v22;
      v55 = (v22 - 8);
      do
      {
        v26 = v62;
        v62(v9, v25, v1);
        sub_1B3C991C8();
        v65 = v27;
        OUTLINED_FUNCTION_20();
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = v9;
        v30 = v1;
        v31 = v63;
        v26(v63, v29, v30);
        v32 = v57;
        v33 = swift_allocObject();
        *(v33 + 16) = v28;
        v34 = v31;
        v1 = v30;
        v9 = v29;
        (*v56)(v33 + v32, v34, v1);
        v35 = objc_allocWithZone(MEMORY[0x1E69C4450]);

        OUTLINED_FUNCTION_14();
        sub_1B3728644(v36, v37, v38, v39, 0, v40, v33);
        (*v55)(v29, v1);

        sub_1B3C9D408();
        sub_1B3C9D438();
        sub_1B3C9D448();
        sub_1B3C9D418();
        v25 += v58;
        --v21;
      }

      while (v21);

      v41 = v67;
    }

    else
    {

      v41 = MEMORY[0x1E69E7CC0];
    }

    sub_1B37E7564(v41);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B3CFB680;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69C4578]) init];
    v43 = objc_allocWithZone(MEMORY[0x1E69C4450]);
    OUTLINED_FUNCTION_14();
    *(inited + 40) = sub_1B3728644(v44, v45, v46, v47, 0, v48, 0);
    sub_1B37E7564(inited);
    OUTLINED_FUNCTION_7_1();
    v49 = swift_allocObject();
    OUTLINED_FUNCTION_45_0(v49);
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69C4578]) init];
    v50 = sub_1B3747294();
    v66 = inited;
    sub_1B37E7564(v50);
    v51 = swift_initStackObject();
    OUTLINED_FUNCTION_45_0(v51);
    v52 = objc_allocWithZone(MEMORY[0x1E69C4458]);
    *(inited + 32) = sub_1B3749298(0x6142206775626544, 0xE900000000000072, 0x7061687372616567, 0xEB00000000322E65);
    sub_1B37E7564(inited);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B3746F50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852380);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1B3C991F8();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
    sub_1B3747028(v2);

    return sub_1B371B36C(v2, &qword_1EB852380);
  }

  return result;
}

void sub_1B3747028(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852380);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B3710718(0, &qword_1EB84FE30);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v5 setDebugBarKindRawValue_];
  [v5 save];
  sub_1B373EE18(a1, v4, &qword_1EB852380);
  sub_1B3C99798();
}

uint64_t sub_1B374713C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852380);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_1B3C991F8();
    (*(*(v8 - 8) + 16))(v5, a2, v8);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
    sub_1B3747028(v5);

    return sub_1B371B36C(v5, &qword_1EB852380);
  }

  return result;
}

id sub_1B374725C()
{
  v0 = objc_opt_self();

  return [v0 presentSettingsController];
}

id sub_1B3747294()
{
  v1 = v0;
  v2 = sub_1B3C98688();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1B3C986B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B3710718(0, &qword_1EB84F840);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  v11 = [v10 enablePhototypes];

  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = [*(v1 + OBJC_IVAR___PUOneUpChromeViewController_browsingSession) viewModel];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = [result currentAssetReference];

  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = [v14 asset];

  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v17 = v16;
  v18 = PXDisplayAssetFetchResultFromAsset();
  (*(v3 + 104))(v5, *MEMORY[0x1E69C3210], v2);
  result = [v17 photoLibrary];
  if (result)
  {
    v19 = PXDisplayAssetFetchResultFromAsset();
    swift_unknownObjectRetain();
    sub_1B3C98698();
    sub_1B3C988A8();
    sub_1B3C98898();
    v20 = sub_1B3C98888();

    MEMORY[0x1EEE9AC00](v21);
    *&v24[-16] = v9;
    v22 = sub_1B373EF34(sub_1B372386C, &v24[-32], v20);
    MEMORY[0x1EEE9AC00](v22);
    *&v24[-16] = v1;
    *&v24[-8] = v9;
    v23 = sub_1B373F09C(sub_1B374C344, &v24[-32], v22);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v9, v6);
    return v23;
  }

LABEL_12:
  __break(1u);
  return result;
}