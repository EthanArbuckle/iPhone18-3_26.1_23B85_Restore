uint64_t sub_1E3D769CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3D76A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = 0;
  v8 = *(a1 + 98);
  if (sub_1E38504C4(*(a1 + 98)) || sub_1E38504FC() || sub_1E3850574(v8))
  {
LABEL_5:
    OUTLINED_FUNCTION_4_183();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_1_210();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
    sub_1E3D7960C();
    sub_1E414930C();
LABEL_6:
    v10 = v186;
    goto LABEL_7;
  }

  if (sub_1E385050C())
  {
    type metadata accessor for TextBadgeLayout();
    OUTLINED_FUNCTION_60_1();
    v41 = sub_1E382F6D0();
    v42 = sub_1E38309BC(v8);
    v43 = sub_1E382F7FC(a1);
    v44 = sub_1E382F55C(v42, v41, v43 & 1);
LABEL_21:
    v10 = v44;
    v186 = v44;
LABEL_7:
    if (!v10)
    {
      OUTLINED_FUNCTION_71_2();
      v12 = (*(v11 + 624))();
      v176 = a2;
      if (v12)
      {
        v13 = (*(*v12 + 376))(v12);
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      v16 = sub_1E324FBDC();
      (*(v5 + 16))(v7, v16, v4);
      OUTLINED_FUNCTION_2_4();
      v17 = swift_allocObject();
      v171 = v7;
      v173 = v4;
      v18 = v5;
      v19 = v17;
      v166 = v13;
      *(v17 + 16) = v13;
      *(v17 + 24) = v15;
      v178 = a1;
      swift_retain_n();
      v175 = v15;
      swift_bridgeObjectRetain_n();
      v179 = sub_1E41FFC94();
      v177 = sub_1E4206814();
      v20 = OUTLINED_FUNCTION_28_65();
      *(v20 + 16) = 32;
      v21 = v20;
      v167 = OUTLINED_FUNCTION_28_65();
      *(v167 + 16) = 8;
      OUTLINED_FUNCTION_2_4();
      v22 = swift_allocObject();
      *(v22 + 16) = sub_1E3D794DC;
      *(v22 + 24) = a1;
      OUTLINED_FUNCTION_2_4();
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1E3D1BCC4;
      *(v23 + 24) = v22;
      v24 = OUTLINED_FUNCTION_28_65();
      *(v24 + 16) = 32;
      v25 = OUTLINED_FUNCTION_28_65();
      v174 = v18;
      v26 = v25;
      *(v25 + 16) = 8;
      OUTLINED_FUNCTION_2_4();
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1E3D79508;
      *(v27 + 24) = v19;
      OUTLINED_FUNCTION_2_4();
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1E3D79818;
      *(v28 + 24) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341C8);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1E429A200;
      *(v29 + 32) = sub_1E3B8B3B0;
      *(v29 + 40) = v21;
      v30 = v21;
      v31 = v167;
      *(v29 + 48) = sub_1E3B8B494;
      *(v29 + 56) = v31;
      *(v29 + 64) = sub_1E3D1BCEC;
      *(v29 + 72) = v23;
      *(v29 + 80) = sub_1E3B8B494;
      *(v29 + 88) = v24;
      *(v29 + 96) = sub_1E3B8B494;
      *(v29 + 104) = v26;
      *(v29 + 112) = sub_1E3D79814;
      *(v29 + 120) = v28;

      v168 = v22;

      v172 = v19;

      v170 = v30;

      v169 = v24;

      if (os_log_type_enabled(v179, v177))
      {
        v32 = sub_1E3D1B860();
        v33 = swift_slowAlloc();
        v181[0] = v33;
        *v32 = 514;
        *(v32 + 2) = 32;

        *(v32 + 3) = 8;

        v35 = (*(*v178 + 376))(v34);
        v37 = sub_1E3270FC8(v35, v36, v181);

        *(v32 + 4) = v37;

        *(v32 + 12) = 32;

        *(v32 + 13) = 8;

        v38 = v175;

        v39 = sub_1E3270FC8(v166, v38, v181);

        *(v32 + 14) = v39;

        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_1E323F000, v179, v177, "LayoutFactory::there is no default/override layout for %s Parent: %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E69143B0](v33, -1, -1);
        sub_1E3D1B868();
      }

      swift_bridgeObjectRelease_n();
      (*(v174 + 8))(v171, v173);
      a2 = v176;
    }

    goto LABEL_14;
  }

  LOBYTE(v184) = 0;
  OUTLINED_FUNCTION_71_2();
  v46 = *(v45 + 776);
  v47 = OUTLINED_FUNCTION_6_156();
  v46(v47);
  if (v182)
  {
    OUTLINED_FUNCTION_17_108();
    if (swift_dynamicCast())
    {
      v48 = sub_1E3ACAAF4();
      if (v48 == 4)
      {
        v49 = 2;
      }

      else
      {
        v49 = v48;
      }

      goto LABEL_29;
    }
  }

  else
  {
    sub_1E329505C(v181);
  }

  v49 = 2;
LABEL_29:
  switch(v8)
  {
    case 0:
      type metadata accessor for TemplateViewModel();
      v96 = OUTLINED_FUNCTION_31_21();
      if (!v96)
      {
        goto LABEL_14;
      }

      v97 = v96;
      v98 = *(v96 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);

      v100 = 0;
      switch(v98)
      {
        case 1:
          type metadata accessor for AlertPickerTemplateLayout();
          v101 = sub_1E3B20558();
          goto LABEL_147;
        case 2:
        case 6:
        case 13:
        case 14:
        case 15:
        case 17:
        case 18:
        case 19:
        case 20:
        case 23:
        case 27:
          type metadata accessor for CollectionLayoutFactory();
          v101 = sub_1E3C11B4C();
          goto LABEL_147;
        case 3:
        case 4:
        case 7:
        case 8:
        case 16:
        case 22:
        case 30:
          goto LABEL_148;
        case 5:
          type metadata accessor for ConfirmationDialogLayout();
          v101 = sub_1E41016F8();
          goto LABEL_147;
        case 9:
          type metadata accessor for DescriptionTemplateLayout();
          v101 = sub_1E3D4FAA8();
          goto LABEL_147;
        case 10:
          type metadata accessor for ErrorTemplateViewLayout();
          v164 = OUTLINED_FUNCTION_70_3();
          v101 = sub_1E3DA9A68(v164);
          goto LABEL_147;
        case 11:
          type metadata accessor for OfferSelectionTemplateLayout();

          v101 = sub_1E3DB4EF0();
          goto LABEL_147;
        case 12:
          type metadata accessor for SplitOfferTemplateLayout();
          v101 = sub_1E3DBE850();
          goto LABEL_147;
        case 21:
          v157 = (*(*v97 + 1000))(v99);
          v159 = v158;
          v160 = sub_1E4205F14();
          if (!v159)
          {

            goto LABEL_362;
          }

          if (v157 == v160 && v159 == v161)
          {

            goto LABEL_364;
          }

          v163 = sub_1E42079A4();

          if ((v163 & 1) == 0)
          {
LABEL_362:
            type metadata accessor for UpsellOfferTemplateLayout();
            v101 = sub_1E4046E68();
            goto LABEL_147;
          }

LABEL_364:
          type metadata accessor for AMSUpsellLayout();
          v101 = sub_1E3BDA02C();
LABEL_147:
          v100 = v101;
LABEL_148:

          v186 = v100;
LABEL_14:
          if (a2 && *(a2 + 16) && v186)
          {
            (*(*v186 + 1616))(a2);
          }

          return v186;
        case 24:
          type metadata accessor for CollectionLayoutFactory();
          v101 = sub_1E3C11B78();
          goto LABEL_147;
        case 25:
          type metadata accessor for OneupTemplateLayout();
          v101 = sub_1E396A0D4();
          goto LABEL_147;
        case 26:
          type metadata accessor for ShowcaseTemplateLayout();
          v101 = sub_1E40B0EA4();
          goto LABEL_147;
        case 28:
          type metadata accessor for LeagueStandingsTemplateLayout();
          v101 = sub_1E3DAEC0C();
          goto LABEL_147;
        case 29:
          type metadata accessor for ListWithDetailsViewLayout();
          v101 = sub_1E4002DB8();
          goto LABEL_147;
        default:
          type metadata accessor for AlertTemplateLayout();
          v101 = sub_1E3E29D6C();
          goto LABEL_147;
      }

    case 1:
      OUTLINED_FUNCTION_4_183();
      MEMORY[0x1EEE9AC00](v102);
      OUTLINED_FUNCTION_1_210();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
      sub_1E3D7960C();
      sub_1E414930C();
      goto LABEL_14;
    case 2:
      type metadata accessor for ErrorContentViewLayout();
      v114 = OUTLINED_FUNCTION_70_3();
      v44 = sub_1E3DA8AD8(v114);
      goto LABEL_21;
    case 49:
      type metadata accessor for ImageLayout();
      v44 = sub_1E3BD61D8();
      goto LABEL_21;
    case 59:
    case 65:
    case 66:
      type metadata accessor for ButtonLayout();
      v44 = sub_1E3BBB724();
      goto LABEL_21;
    case 60:
      type metadata accessor for ButtonLayout();
      v105 = j__OUTLINED_FUNCTION_18();
      v90 = sub_1E3B050E8();
      v106 = j__OUTLINED_FUNCTION_18();
      v92 = v105 & 1;
      v93 = v106 & 1;
      v94 = 3;
      goto LABEL_159;
    case 63:
    case 64:
      type metadata accessor for ButtonLayout();
      v44 = sub_1E3BBF110();
      goto LABEL_21;
    case 67:
      type metadata accessor for ContextMenuButtonLayout();
      v44 = sub_1E3890F28();
      goto LABEL_21;
    case 68:
      type metadata accessor for ButtonLayout();
      v118 = OUTLINED_FUNCTION_18_26();
      v44 = sub_1E3BBFC3C(v118);
      goto LABEL_21;
    case 70:
      type metadata accessor for ButtonLayout();
      v89 = j__OUTLINED_FUNCTION_18();
      v90 = sub_1E3B050E8();
      v91 = j__OUTLINED_FUNCTION_18();
      v92 = v89 & 1;
      v93 = v91 & 1;
      v94 = 10;
LABEL_159:
      v44 = sub_1E3BBD964(v94, v92, v90, v93);
      goto LABEL_21;
    case 73:
    case 95:
    case 140:
    case 145:
    case 222:
    case 231:
    case 232:
      goto LABEL_14;
    case 74:
      type metadata accessor for OfferSelectionFooterViewLayout();
      v44 = sub_1E41D7100();
      goto LABEL_21;
    case 75:
      type metadata accessor for ConnectedAppFooterLayout();
      v44 = sub_1E39EA778();
      goto LABEL_21;
    case 77:
      type metadata accessor for LeagueStandingsFooterLayout();
      v44 = sub_1E4165E8C();
      goto LABEL_21;
    case 79:
      type metadata accessor for SearchDescriptionLayout();
      v44 = sub_1E3EFF950();
      goto LABEL_21;
    case 82:
      type metadata accessor for ChannelBannerLayout();
      v44 = sub_1E4040E08();
      goto LABEL_21;
    case 83:
      LOBYTE(v184) = 0;
      v110 = OUTLINED_FUNCTION_6_156();
      v46(v110);
      if (v182)
      {
        OUTLINED_FUNCTION_17_108();
        if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && sub_1E3FA5BB0() != 3)
        {
          OUTLINED_FUNCTION_9_5();
          type metadata accessor for CanonicalBannerLayout();
          v111 = OUTLINED_FUNCTION_50();
          goto LABEL_308;
        }
      }

      else
      {
        sub_1E329505C(v181);
      }

      type metadata accessor for CanonicalBannerLayout();
      v111 = OUTLINED_FUNCTION_70_3();
LABEL_308:
      v44 = sub_1E3FA6A08(v111);
      goto LABEL_21;
    case 84:
      v46(v181);
      if (v182)
      {
        OUTLINED_FUNCTION_17_108();
        if (OUTLINED_FUNCTION_21_4())
        {
          v95 = v184;
          goto LABEL_305;
        }
      }

      else
      {
        sub_1E329505C(v181);
      }

      v95 = 0;
LABEL_305:
      type metadata accessor for RoomBannerLayout();
      v44 = sub_1E37EA6B4(84, v95);
      goto LABEL_21;
    case 86:
      if (TVAppFeature.isEnabled.getter(10))
      {
        type metadata accessor for SportsCanonicalBannerViewLayout();
        v44 = sub_1E3D3E7F8();
        goto LABEL_21;
      }

      type metadata accessor for LegacySportsCanonicalBannerViewLayout();
      v186 = sub_1E37C2700();
      if ([objc_opt_self() isIpadInterface])
      {
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_71_2();
      (*(v137 + 672))();
      v138 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      sub_1E3F9F164(v138);

      if (!*(&v185 + 1))
      {
        goto LABEL_340;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      OUTLINED_FUNCTION_48_10();
      if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
      {
        goto LABEL_341;
      }

      __swift_destroy_boxed_opaque_existential_1(v181);
      v182 = &unk_1F5D5DAC8;
      v183 = &off_1F5D5C9A8;
      v139 = OUTLINED_FUNCTION_97(48);
      sub_1E3F9F164(v139);

      if (*(&v185 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          v140 = v180;
          __swift_destroy_boxed_opaque_existential_1(v181);
          v10 = sub_1E37C2930(v140);
          goto LABEL_164;
        }

LABEL_341:
        __swift_destroy_boxed_opaque_existential_1(v181);
      }

      else
      {
LABEL_340:
        OUTLINED_FUNCTION_15_52();
      }

      goto LABEL_6;
    case 89:
      type metadata accessor for QueryDescriptionBannerLayout();
      OUTLINED_FUNCTION_60_1();

      v66 = sub_1E3A6DD04(v119);
      goto LABEL_189;
    case 90:
      type metadata accessor for AttributionTextViewLayout();
      OUTLINED_FUNCTION_60_1();

      v66 = sub_1E3C82468(v120);
      goto LABEL_189;
    case 96:
      type metadata accessor for PlaybackStatusLayout();
      v87 = OUTLINED_FUNCTION_18_26();
      v44 = sub_1E3A70EBC(v87);
      goto LABEL_21;
    case 97:
    case 99:
      goto LABEL_5;
    case 100:
      type metadata accessor for LibViewModel();
      if (OUTLINED_FUNCTION_31_21())
      {
        v59 = sub_1E3C8E228();
        goto LABEL_197;
      }

      type metadata accessor for NavigationBarLayout();
      OUTLINED_FUNCTION_60_1();

      v44 = sub_1E4117E00();
      goto LABEL_21;
    case 104:
      type metadata accessor for SegmentedPickerLayout();
      v44 = sub_1E3EAFB4C();
      goto LABEL_21;
    case 107:
      OUTLINED_FUNCTION_71_2();
      if (!(*(v107 + 624))())
      {
        goto LABEL_285;
      }

      type metadata accessor for TemplateViewModel();
      v108 = swift_dynamicCastClass();
      if (!v108 || (sub_1E3D79254(*(v108 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType), 9, sub_1E39E42E0) & 1) == 0)
      {

LABEL_285:
        type metadata accessor for CanonicalFooterLayout();
        v44 = sub_1E3DE9C60();
        goto LABEL_21;
      }

      type metadata accessor for CanonicalFooterLayout();
      v109 = OUTLINED_FUNCTION_26_82();
      v10 = sub_1E3DE9A08(v109);
LABEL_164:

LABEL_325:
      v186 = v10;
      goto LABEL_7;
    case 115:
      type metadata accessor for ProgressLayout();
      v44 = sub_1E3FB3220();
      goto LABEL_21;
    case 117:
    case 118:
    case 119:
    case 121:
    case 122:
    case 129:
      type metadata accessor for LibCollectionViewModel();
      if (OUTLINED_FUNCTION_31_21())
      {
        v44 = sub_1E3C8E278();
      }

      else
      {
        type metadata accessor for CollectionLayoutFactory();
        OUTLINED_FUNCTION_60_1();
        v44 = sub_1E3C11B78();
      }

      goto LABEL_21;
    case 123:
      type metadata accessor for MediaShowcaseCollectionLayout();
      v44 = sub_1E3FC6EAC();
      goto LABEL_21;
    case 124:
      type metadata accessor for FlexibleGridCollectionLayout();
      v44 = sub_1E3822820();
      goto LABEL_21;
    case 125:
      type metadata accessor for FlexibleGridLayout();
      v44 = sub_1E3B8B8C0();
      goto LABEL_21;
    case 127:
      if (TVAppFeature.isEnabled.getter(17) & 1) != 0 && ((v86 = objc_opt_self(), ([v86 isPhone]) || (objc_msgSend(v86, sel_isPad) & 1) != 0 || objc_msgSend(v86, sel_isMac)))
      {
        type metadata accessor for EpicShowcaseViewLayout();
        v44 = sub_1E37E7E7C();
      }

      else
      {
        type metadata accessor for CarouselViewLayout();
        v104 = OUTLINED_FUNCTION_18_26();
LABEL_253:
        v44 = sub_1E3A2B630(v104);
      }

      goto LABEL_21;
    case 128:
      type metadata accessor for CarouselViewLayout();
      v104 = OUTLINED_FUNCTION_26_82();
      goto LABEL_253;
    case 130:
    case 131:
      type metadata accessor for EpisodeCollectionLayout();
      v55 = OUTLINED_FUNCTION_38();
      v44 = sub_1E3ACA838(v55);
      goto LABEL_21;
    case 132:
    case 133:
    case 134:
      if (TVAppFeature.isEnabled.getter(10))
      {
        type metadata accessor for CollectionLayoutFactory();
        OUTLINED_FUNCTION_60_1();
        v52 = sub_1E3C11B78();
      }

      else
      {
        type metadata accessor for ViewLayout();
        v52 = sub_1E3C2F968();
      }

      v10 = v52;
      goto LABEL_325;
    case 135:
      type metadata accessor for UnifiedMessagingBannerLayout();
      v44 = sub_1E3E25EDC();
      goto LABEL_21;
    case 137:
      type metadata accessor for UnifiedMessagingBubbleTipLayout();
      v44 = sub_1E3E25EDC();
      goto LABEL_21;
    case 138:
      type metadata accessor for LibViewModel();
      if (!OUTLINED_FUNCTION_31_21())
      {
        goto LABEL_203;
      }

      v59 = sub_1E3C8DC30();
      goto LABEL_197;
    case 139:
LABEL_203:
      type metadata accessor for RichHeaderViewLayout();
      v44 = sub_1E3EBACB4();
      goto LABEL_21;
    case 142:
      type metadata accessor for SearchTopResultsListHeaderLayout();
      v44 = sub_1E3913128();
      goto LABEL_21;
    case 143:
      type metadata accessor for SearchHistoryListHeaderLayout();
      v44 = sub_1E3CDAC44();
      goto LABEL_21;
    case 146:
      type metadata accessor for AskToBuyListHeaderLayout();
      v44 = sub_1E37BF9B0();
      goto LABEL_21;
    case 148:
    case 149:
      type metadata accessor for EpicInlineLayout();
      v44 = sub_1E3D48404();
      goto LABEL_21;
    case 153:
    case 157:
    case 158:
    case 159:
    case 160:
      if ([objc_opt_self() isSUIEnabled] & 1) != 0 || (TVAppFeature.isEnabled.getter(18))
      {
        type metadata accessor for UnifiedOverlayLayout();
        v50 = sub_1E3B050E8();
        v51 = v8;
LABEL_36:
        v44 = sub_1E3DFEB84(v51, v50);
      }

      else
      {
        type metadata accessor for OverlayLayout();
        v64 = OUTLINED_FUNCTION_38();
        v65 = sub_1E3ACC790(v64);
        v44 = sub_1E3ACC840(v65);
      }

      goto LABEL_21;
    case 154:
    case 155:
    case 156:
    case 163:
    case 165:
      type metadata accessor for UnifiedOverlayLayout();
      v51 = OUTLINED_FUNCTION_38();
      v50 = v49;
      goto LABEL_36;
    case 162:
      type metadata accessor for ChannelOfferOverlayLayout();
      v44 = sub_1E3B91818(162);
      goto LABEL_21;
    case 166:
      type metadata accessor for CanonicalInfoCardLayout();
      v77 = OUTLINED_FUNCTION_70_3();
      goto LABEL_213;
    case 167:
      type metadata accessor for FeaturedLockupCellLayout();
      v82 = OUTLINED_FUNCTION_18_26();
      v44 = sub_1E3AE152C(v82);
      goto LABEL_21;
    case 168:
      type metadata accessor for CanonicalInfoCardLayout();
      v77 = OUTLINED_FUNCTION_18_26();
      goto LABEL_213;
    case 169:
      if (TVAppFeature.isEnabled.getter(10))
      {
        type metadata accessor for StandardExtrasLockupCellLayout();
        v85 = 169;
        goto LABEL_208;
      }

      type metadata accessor for CardCollectionViewCellLayout();
      v60 = 14;
      goto LABEL_332;
    case 170:
      if (TVAppFeature.isEnabled.getter(10))
      {
        type metadata accessor for EditorialLockupLayout();
        v44 = sub_1E3C5C364();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_71_2();
      (*(v141 + 672))();
      v142 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v142);

      if (!*(&v185 + 1))
      {
        goto LABEL_333;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((OUTLINED_FUNCTION_3_176() & 1) == 0)
      {
        goto LABEL_335;
      }

      OUTLINED_FUNCTION_23_77();
      v182 = &unk_1F5D5E608;
      v183 = &off_1F5D5CC28;
      v143 = OUTLINED_FUNCTION_97_2();
      OUTLINED_FUNCTION_29_74(v143);

      if (*(&v185 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_10_117();
          if (v135)
          {
            type metadata accessor for CardCollectionViewCellLayout();
            v60 = 15;
            goto LABEL_332;
          }
        }

        else
        {
LABEL_335:
          __swift_destroy_boxed_opaque_existential_1(v181);
        }
      }

      else
      {
LABEL_333:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for CardCollectionViewCellLayout();
      v60 = 6;
      goto LABEL_332;
    case 171:
      if (TVAppFeature.isEnabled.getter(10))
      {
        type metadata accessor for EpisodeLockupLayout();
        v44 = sub_1E3C62E3C();
        goto LABEL_21;
      }

      type metadata accessor for CardCollectionViewCellLayout();
      v60 = 19;
      goto LABEL_332;
    case 173:
      type metadata accessor for CardCollectionViewCellLayout();
      v60 = OUTLINED_FUNCTION_70_3();
      goto LABEL_332;
    case 174:
      type metadata accessor for FlowcaseCellLayout();
      v44 = sub_1E3D0A42C();
      goto LABEL_21;
    case 176:
      type metadata accessor for NavBarCellLayout();
      v44 = sub_1E38AAB84();
      goto LABEL_21;
    case 177:
      type metadata accessor for VideoItunesExtrasDescriptionCellLayout();
      v44 = sub_1E3B9D450();
      goto LABEL_21;
    case 178:
    case 213:
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
        type metadata accessor for CardCollectionViewCellLayout();
        v60 = 11;
        goto LABEL_332;
      }

      v182 = &unk_1F5D5D918;
      v183 = &off_1F5D5C938;
      LOBYTE(v181[0]) = 1;
      v56 = j__OUTLINED_FUNCTION_18();
      v57 = OUTLINED_FUNCTION_19_100(v56);
      __swift_destroy_boxed_opaque_existential_1(v181);
      v182 = &unk_1F5D5E9F8;
      v183 = &off_1F5D5CCF8;
      sub_1E3BCEF40();
      OUTLINED_FUNCTION_11_126();
      sub_1E39C2B80();
      __swift_destroy_boxed_opaque_existential_1(v181);
      if (v184 == 6)
      {
        v58 = 0;
      }

      else
      {
        v58 = v184;
      }

      type metadata accessor for StandardLockupCellLayout();
      v44 = sub_1E3D8C108(v58, v57 & 1);
      goto LABEL_21;
    case 179:
      if (TVAppFeature.isEnabled.getter(10))
      {
        type metadata accessor for StandardExtrasLockupCellLayout();
        v85 = 179;
        goto LABEL_208;
      }

      OUTLINED_FUNCTION_71_2();
      (*(v144 + 672))();
      v145 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v145);

      if (!*(&v185 + 1))
      {
        goto LABEL_334;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((OUTLINED_FUNCTION_3_176() & 1) == 0)
      {
        goto LABEL_337;
      }

      OUTLINED_FUNCTION_23_77();
      v182 = &unk_1F5D5E608;
      v183 = &off_1F5D5CC28;
      v146 = OUTLINED_FUNCTION_97_2();
      OUTLINED_FUNCTION_29_74(v146);

      if (*(&v185 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_10_117();
          if (v135)
          {
            goto LABEL_279;
          }
        }

        else
        {
LABEL_337:
          __swift_destroy_boxed_opaque_existential_1(v181);
        }
      }

      else
      {
LABEL_334:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for CardCollectionViewCellLayout();
      v60 = 5;
      goto LABEL_332;
    case 180:
      type metadata accessor for OfferCardLegacyLayout();
      v44 = sub_1E3DAFF08();
      goto LABEL_21;
    case 181:
      type metadata accessor for OfferCardLayout();
      v44 = sub_1E3FB6848();
      goto LABEL_21;
    case 182:
      sub_1E39C2540();
      if (v127)
      {
        v182 = &unk_1F5D5D888;
        v183 = &off_1F5D5C918;
        LOBYTE(v181[0]) = 10;
        sub_1E3D79538();
        OUTLINED_FUNCTION_11_126();
        sub_1E39C2B80();
        __swift_destroy_boxed_opaque_existential_1(v181);
        v128 = v184;
      }

      else
      {
        v128 = 8;
      }

      LOBYTE(v181[0]) = v128;
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38210);
      v154 = type metadata accessor for OfferListLockupCellLayout();
      sub_1E4148F70(sub_1E3D7933C, 0, v153, v154, &v184);
      v180 = v184;
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38218);
      sub_1E4148C68(sub_1E3D79370, v155, v181);

      v10 = v181[0];
      goto LABEL_325;
    case 183:
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
        type metadata accessor for CardCollectionViewCellLayout();
        v60 = 13;
        goto LABEL_332;
      }

      type metadata accessor for StandardExtrasLockupCellLayout();
      v85 = 183;
LABEL_208:
      v44 = sub_1E3890648(v85);
      goto LABEL_21;
    case 184:
    case 189:
    case 190:
      if (TVAppFeature.isEnabled.getter(10))
      {
        v182 = &unk_1F5D5D528;
        v183 = &off_1F5D5C858;
        LOBYTE(v181[0]) = 13;
        sub_1E3D7958C();
        OUTLINED_FUNCTION_11_126();
        sub_1E39C2B80();
        __swift_destroy_boxed_opaque_existential_1(v181);
        if (v184 != 4)
        {
          goto LABEL_75;
        }

LABEL_74:
        sub_1E373F6E0();
LABEL_75:
        type metadata accessor for SportsLockupCellLayout();
        OUTLINED_FUNCTION_50();
        sub_1E3A0657C();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_71_2();
      v62 = (*(v61 + 536))();
      if (v62)
      {
        LOBYTE(v49) = v62;
        v182 = &unk_1F5D5E578;
        v183 = &off_1F5D5CC08;
        v63 = OUTLINED_FUNCTION_97(3);
        OUTLINED_FUNCTION_29_74(v63);

        __swift_destroy_boxed_opaque_existential_1(v181);
        if (*(&v185 + 1))
        {
          if (!OUTLINED_FUNCTION_21_4() || (v181[0] & 1) == 0)
          {
            goto LABEL_251;
          }

LABEL_248:
          type metadata accessor for CardCollectionViewCellLayout();
          v60 = 9;
LABEL_332:
          v44 = sub_1E3D2E424(v60);
          goto LABEL_21;
        }
      }

      else
      {
        v184 = 0u;
        v185 = 0u;
      }

      sub_1E329505C(&v184);
LABEL_251:
      sub_1E373F6E0();
      OUTLINED_FUNCTION_9_5();
      type metadata accessor for CardCollectionViewCellLayout();
      v135 = (v49 & 1) == 0;
      v136 = 4;
      goto LABEL_329;
    case 185:
    case 186:
      type metadata accessor for SportsScoreboardLayout();
      v44 = sub_1E39DF330();
      goto LABEL_21;
    case 187:
      type metadata accessor for CardCollectionViewCellLayout();
      v60 = OUTLINED_FUNCTION_18_26();
      goto LABEL_332;
    case 188:
      OUTLINED_FUNCTION_71_2();
      (*(v115 + 672))();
      v116 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v116);

      if (!*(&v185 + 1))
      {
        goto LABEL_282;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((OUTLINED_FUNCTION_3_176() & 1) == 0)
      {
        goto LABEL_291;
      }

      OUTLINED_FUNCTION_23_77();
      v182 = &unk_1F5D5E608;
      v183 = &off_1F5D5CC28;
      v117 = OUTLINED_FUNCTION_97_2();
      OUTLINED_FUNCTION_52_17(v117);

      if (*(&v185 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_10_117();
          if (v135)
          {
LABEL_279:
            type metadata accessor for CardCollectionViewCellLayout();
            v60 = 16;
            goto LABEL_332;
          }
        }

        else
        {
LABEL_291:
          __swift_destroy_boxed_opaque_existential_1(v181);
        }
      }

      else
      {
LABEL_282:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for CardCollectionViewCellLayout();
      v60 = OUTLINED_FUNCTION_26_82();
      goto LABEL_332;
    case 191:
      type metadata accessor for SportsPlayByPlayLayout();
      v44 = sub_1E3754E80();
      goto LABEL_21;
    case 192:
      type metadata accessor for CanonicalInfoCardLayout();
      v77 = OUTLINED_FUNCTION_26_82();
LABEL_213:
      v44 = sub_1E4183740(v77);
      goto LABEL_21;
    case 193:
      if (TVAppFeature.isEnabled.getter(10) & 1) != 0 && (sub_1E373F6E0())
      {
        type metadata accessor for UpNextLockupCellLayout();
        v44 = sub_1E3A2246C();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_71_2();
      v133 = (*(v132 + 536))();
      if (v133)
      {
        LOBYTE(v49) = v133;
        v182 = &unk_1F5D5E578;
        v183 = &off_1F5D5CC08;
        v134 = OUTLINED_FUNCTION_97(3);
        OUTLINED_FUNCTION_29_74(v134);

        __swift_destroy_boxed_opaque_existential_1(v181);
        if (*(&v185 + 1))
        {
          if (OUTLINED_FUNCTION_21_4() && (v181[0] & 1) != 0)
          {
            goto LABEL_248;
          }

LABEL_328:
          sub_1E373F6E0();
          OUTLINED_FUNCTION_9_5();
          type metadata accessor for CardCollectionViewCellLayout();
          v135 = (v49 & 1) == 0;
          v136 = 8;
LABEL_329:
          if (v135)
          {
            v60 = v136;
          }

          else
          {
            v60 = 12;
          }

          goto LABEL_332;
        }
      }

      else
      {
        v184 = 0u;
        v185 = 0u;
      }

      sub_1E329505C(&v184);
      goto LABEL_328;
    case 194:
    case 215:
      type metadata accessor for LibViewModel();
      if (!OUTLINED_FUNCTION_31_21())
      {
        type metadata accessor for MonogramLockupCellLayout();
        v131 = OUTLINED_FUNCTION_60_1();
        v129 = sub_1E3D793A4(v131);
        goto LABEL_298;
      }

      v59 = sub_1E3C8E118();
LABEL_197:
      v10 = *v59;
      v186 = *v59;

      goto LABEL_7;
    case 195:
      v46(v181);
      if (v182)
      {
        OUTLINED_FUNCTION_17_108();
        if (OUTLINED_FUNCTION_21_4())
        {
          v112 = *(&v184 + 1);
          v113 = v184;
          goto LABEL_311;
        }
      }

      else
      {
        sub_1E329505C(v181);
      }

      v149 = sub_1E3B799A8();
      v113 = *v149;
      v112 = *(v149 + 1);

LABEL_311:
      v150 = sub_1E3B799B4();
      if (v113 != *v150 || v112 != *(v150 + 1))
      {
        sub_1E42079A4();
      }

      type metadata accessor for SportsFavoriteBannerCellLayout();
      v152 = OUTLINED_FUNCTION_25_77();
      v44 = sub_1E3E732AC(v152);
      goto LABEL_21;
    case 196:
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0 && [objc_opt_self() isPad])
      {
        type metadata accessor for CardCollectionViewCellLayout();
        v60 = 17;
        goto LABEL_332;
      }

      type metadata accessor for SyndicationCellLayout();
      v44 = sub_1E3E0B744();
      goto LABEL_21;
    case 197:
    case 216:
      type metadata accessor for CardCollectionViewCellLayout();
      v60 = 7;
      goto LABEL_332;
    case 198:
      type metadata accessor for BrandLockupCellLayout();
      v44 = sub_1E3F818BC();
      goto LABEL_21;
    case 200:
      if (TVAppFeature.isEnabled.getter(10))
      {
        v182 = &unk_1F5D5D918;
        v183 = &off_1F5D5C938;
        LOBYTE(v181[0]) = 1;
        v83 = j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_19_100(v83);
        __swift_destroy_boxed_opaque_existential_1(v181);
        type metadata accessor for OrdinalLockupCellLayout();
        v84 = OUTLINED_FUNCTION_25_77();
        v44 = sub_1E3EA6698(v84);
      }

      else
      {
        type metadata accessor for OrdinalCellLayout();
        v73 = OUTLINED_FUNCTION_18_26();
LABEL_257:
        v44 = sub_1E3DE76C4(v73);
      }

      goto LABEL_21;
    case 201:
      type metadata accessor for OrdinalCellLayout();
      v73 = OUTLINED_FUNCTION_70_3();
      goto LABEL_257;
    case 202:
      type metadata accessor for OneupLockupLayout();
      v44 = sub_1E3E7E5FC();
      goto LABEL_21;
    case 203:
      type metadata accessor for ShowcaseLockupViewLayout();
      v44 = sub_1E3C8FBFC();
      goto LABEL_21;
    case 204:
      OUTLINED_FUNCTION_71_2();
      (*(v123 + 672))();
      v124 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v124);

      if (!*(&v185 + 1))
      {
        goto LABEL_283;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((OUTLINED_FUNCTION_3_176() & 1) == 0)
      {
        goto LABEL_293;
      }

      OUTLINED_FUNCTION_23_77();
      v182 = &unk_1F5D5E608;
      v183 = &off_1F5D5CC28;
      v125 = OUTLINED_FUNCTION_97_2();
      OUTLINED_FUNCTION_52_17(v125);

      if (*(&v185 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_10_117();
          if (v135)
          {
            type metadata accessor for PlaybackPersonViewLayout();
            v126 = OUTLINED_FUNCTION_70_3();
            goto LABEL_295;
          }
        }

        else
        {
LABEL_293:
          __swift_destroy_boxed_opaque_existential_1(v181);
        }
      }

      else
      {
LABEL_283:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for PlaybackPersonViewLayout();
      v126 = OUTLINED_FUNCTION_18_26();
LABEL_295:
      v130 = 204;
      goto LABEL_296;
    case 205:
      OUTLINED_FUNCTION_71_2();
      (*(v67 + 672))();
      v68 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v68);

      if (!*(&v185 + 1))
      {
        goto LABEL_280;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((OUTLINED_FUNCTION_3_176() & 1) == 0)
      {
        goto LABEL_286;
      }

      OUTLINED_FUNCTION_23_77();
      v182 = &unk_1F5D5E608;
      v183 = &off_1F5D5CC28;
      v69 = OUTLINED_FUNCTION_97_2();
      OUTLINED_FUNCTION_52_17(v69);

      if (*(&v185 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_10_117();
          if (v135)
          {
            type metadata accessor for PlaybackSongViewLayout();
            OUTLINED_FUNCTION_70_3();
            goto LABEL_288;
          }
        }

        else
        {
LABEL_286:
          __swift_destroy_boxed_opaque_existential_1(v181);
        }
      }

      else
      {
LABEL_280:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for PlaybackSongViewLayout();
      OUTLINED_FUNCTION_18_26();
LABEL_288:
      v44 = sub_1E3FB36FC();
      goto LABEL_21;
    case 206:
    case 217:
      type metadata accessor for LibViewModel();
      if (OUTLINED_FUNCTION_31_21())
      {
        v186 = *sub_1E3C8E118();

        sub_1E39DFFC0();
        goto LABEL_6;
      }

      v129 = sub_1E3D793A4(a1);
      if (TVAppFeature.isEnabled.getter(10))
      {
        if (sub_1E3D79254(4, 0, sub_1E38F0870))
        {
          type metadata accessor for PlaybackPersonViewLayout();
          v126 = OUTLINED_FUNCTION_18_26();
          v130 = v8;
LABEL_296:
          v44 = sub_1E3915434(v126, v130);
        }

        else
        {
          type metadata accessor for EntityLockupCollectionViewCellLayout();
          v156 = OUTLINED_FUNCTION_25_77();
          v44 = sub_1E3B9117C(v156, 4);
        }
      }

      else
      {
        sub_1E373F6E0();
        type metadata accessor for MonogramLockupCellLayout();
LABEL_298:
        v148 = OUTLINED_FUNCTION_18();
        v44 = sub_1E38EF9E8(v129 & 1, v148);
      }

      goto LABEL_21;
    case 207:
    case 208:
    case 209:
      type metadata accessor for OfferListCardLayout();
      v54 = OUTLINED_FUNCTION_38();
      v44 = sub_1E3BD9F64(v54);
      goto LABEL_21;
    case 210:
    case 211:
    case 212:
      type metadata accessor for SportsFavoritesLockupCellLayout();
      v53 = OUTLINED_FUNCTION_38();
      v44 = sub_1E37DAE90(v53);
      goto LABEL_21;
    case 214:
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
        type metadata accessor for CardCollectionViewCellLayout();
        v60 = 3;
        goto LABEL_332;
      }

      v182 = &unk_1F5D5D528;
      v183 = &off_1F5D5C858;
      LOBYTE(v181[0]) = 13;
      sub_1E3D7958C();
      OUTLINED_FUNCTION_11_126();
      sub_1E39C2B80();
      __swift_destroy_boxed_opaque_existential_1(v181);
      if (v184 != 4)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    case 218:
      type metadata accessor for HintListCellLayout();
      v44 = sub_1E3909774();
      goto LABEL_21;
    case 219:
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
        goto LABEL_6;
      }

      type metadata accessor for SearchTopResultLockupLayout();
      goto LABEL_238;
    case 220:
      if ((sub_1E39DFFC8() & 1) == 0)
      {
        goto LABEL_6;
      }

      [objc_opt_self() isPad];
      OUTLINED_FUNCTION_9_5();
      type metadata accessor for SearchTopResultLockupLayout();
      if (v49)
      {
        v121 = 1;
LABEL_229:
        v44 = sub_1E412D104(v121);
      }

      else
      {
LABEL_238:
        v44 = sub_1E412D3D0();
      }

      goto LABEL_21;
    case 221:
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
        goto LABEL_6;
      }

      type metadata accessor for SearchTopResultLockupLayout();
      v121 = OUTLINED_FUNCTION_70_3();
      goto LABEL_229;
    case 223:
      v182 = &unk_1F5D5D528;
      v183 = &off_1F5D5C858;
      LOBYTE(v181[0]) = 9;
      v78 = j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_19_100(v78);
      __swift_destroy_boxed_opaque_existential_1(v181);
      type metadata accessor for MediaShowcaseLockupLayout();
      v79 = OUTLINED_FUNCTION_25_77();
      v44 = sub_1E3AC626C(v79);
      goto LABEL_21;
    case 226:
      LOBYTE(v184) = 2;
      v80 = OUTLINED_FUNCTION_6_156();
      v46(v80);
      if (v182)
      {
        OUTLINED_FUNCTION_17_108();
        if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && sub_1E3CCDE78() != 4)
        {
          OUTLINED_FUNCTION_9_5();
          type metadata accessor for PlaylistLockupLayout();
          v81 = OUTLINED_FUNCTION_50();
          goto LABEL_321;
        }
      }

      else
      {
        sub_1E329505C(v181);
      }

      type metadata accessor for PlaylistLockupLayout();
      v81 = OUTLINED_FUNCTION_18_26();
LABEL_321:
      v44 = sub_1E3FB95BC(v81);
      goto LABEL_21;
    case 227:
      LOBYTE(v184) = 4;
      v122 = OUTLINED_FUNCTION_6_156();
      v46(v122);
      if (v182)
      {
        OUTLINED_FUNCTION_17_108();
        if (OUTLINED_FUNCTION_21_4())
        {
          sub_1E3D7CB28();
        }
      }

      else
      {
        sub_1E329505C(v181);
      }

      sub_1E3D7919C();
      OUTLINED_FUNCTION_9_5();
      type metadata accessor for PlaylistLockupLayout();
      if (v49)
      {
        v81 = 6;
      }

      else
      {
        v81 = 7;
      }

      goto LABEL_321;
    case 228:
      type metadata accessor for PlaylistLockupLayout();
      v81 = 8;
      goto LABEL_321;
    case 230:
      LOBYTE(v184) = 55;
      v88 = OUTLINED_FUNCTION_6_156();
      v46(v88);
      if (v182)
      {
        OUTLINED_FUNCTION_17_108();
        if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && v184 == 1)
        {
          type metadata accessor for ContextMenuPreviewItemViewLayout();
          OUTLINED_FUNCTION_18_26();
          v44 = sub_1E3E09920();
          goto LABEL_21;
        }
      }

      else
      {
        sub_1E329505C(v181);
      }

      type metadata accessor for ContextMenuPreviewItemViewLayout();
      OUTLINED_FUNCTION_18_26();
      v44 = sub_1E3E08A24();
      goto LABEL_21;
    case 233:
      type metadata accessor for DownloadStateIndicatorLayout();
      v44 = sub_1E3C6D918();
      goto LABEL_21;
    case 234:
      OUTLINED_FUNCTION_71_2();
      v71 = (*(v70 + 624))();
      if (v71)
      {
        v72 = *(v71 + 98);

        LOWORD(v181[0]) = v72;
        LOWORD(v184) = 86;
        sub_1E3741534();
        sub_1E4205E84();
      }

      goto LABEL_14;
    case 241:
      type metadata accessor for SportStatsLayout();
      v44 = sub_1E3DA3A40();
      goto LABEL_21;
    case 242:
      type metadata accessor for TeamStatsLayout();
      v44 = sub_1E3DA2BF8();
      goto LABEL_21;
    case 243:
      type metadata accessor for PlayerStatsLayout();
      v44 = sub_1E4048408();
      goto LABEL_21;
    case 244:
      OUTLINED_FUNCTION_71_2();
      (*(v74 + 672))();
      v75 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v75);

      if (!*(&v185 + 1))
      {
        goto LABEL_281;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((OUTLINED_FUNCTION_3_176() & 1) == 0)
      {
        goto LABEL_289;
      }

      OUTLINED_FUNCTION_23_77();
      v182 = &unk_1F5D5D888;
      v183 = &off_1F5D5C928;
      v76 = OUTLINED_FUNCTION_97(13);
      OUTLINED_FUNCTION_52_17(v76);

      if (*(&v185 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        OUTLINED_FUNCTION_21_4();
LABEL_289:
        __swift_destroy_boxed_opaque_existential_1(v181);
      }

      else
      {
LABEL_281:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for LeagueStandingsCardLayout();
      v147 = OUTLINED_FUNCTION_50();
      v44 = sub_1E3A6F5CC(v147);
      goto LABEL_21;
    case 248:
      type metadata accessor for EmptyStateViewLayout();
      v44 = sub_1E3F385CC();
      goto LABEL_21;
    case 249:
    case 252:
      type metadata accessor for ViewLayout();
      v44 = sub_1E3C2F968();
      goto LABEL_21;
    case 250:
      type metadata accessor for UnitTestLockupLayout();
      v44 = sub_1E3A69A28();
      goto LABEL_21;
    case 251:
      type metadata accessor for UnitTestCardLayout();
      v44 = sub_1E40038B0();
      goto LABEL_21;
    case 253:
      type metadata accessor for MainMenuViewLayout();
      v44 = sub_1E3F75090();
      goto LABEL_21;
    case 254:
      type metadata accessor for ListLockupLayout();
      v44 = sub_1E418E6F8(0xFEu);
      goto LABEL_21;
    case 255:
      type metadata accessor for ExtrasPreviewBadgeLayout();
      v66 = sub_1E4027158();
LABEL_189:
      v186 = v66;
      goto LABEL_14;
    case 256:
      v103 = sub_1E3C8DEA0();
      goto LABEL_233;
    case 257:
      v103 = sub_1E3C8DDFC();
      goto LABEL_233;
    case 258:
      v103 = sub_1E3C8DCB4();
LABEL_233:
      v186 = *v103;

      goto LABEL_14;
    case 259:
      type metadata accessor for LeagueStandingsLegendLayout();
      v44 = sub_1E3A67A5C();
      goto LABEL_21;
    case 261:
      type metadata accessor for LeagueRankLayout();
      v44 = sub_1E4001754();
      goto LABEL_21;
    default:
      goto LABEL_6;
  }
}

uint64_t sub_1E3D7919C()
{
  sub_1E3D797C0();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

uint64_t sub_1E3D79254(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E3D79310()
{
  OUTLINED_FUNCTION_9_5();
  type metadata accessor for OfferListLockupCellLayout();
  OUTLINED_FUNCTION_50();
  return sub_1E415EF74();
}

uint64_t sub_1E3D7933C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D79310();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D79370@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OfferListLockupCellLayout();
  result = sub_1E4160CD4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D793A4(uint64_t a1)
{
  (*(*a1 + 672))();
  v5 = &type metadata for ViewModelKeys;
  v6 = &off_1F5D7BCA8;
  LOBYTE(v4[0]) = 11;
  OUTLINED_FUNCTION_52_17(v4);

  if (!v8)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_27_65() & 1) == 0)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v4);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  v5 = &unk_1F5D5E608;
  v6 = &off_1F5D5CC28;
  OUTLINED_FUNCTION_52_17(v4);

  if (!v8)
  {
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_1E329505C(v7);
    return 0;
  }

  if ((OUTLINED_FUNCTION_27_65() & 1) == 0)
  {
    goto LABEL_7;
  }

  v1 = v3;
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

uint64_t sub_1E3D79508()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1E3D79538()
{
  result = qword_1ECF38220;
  if (!qword_1ECF38220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38220);
  }

  return result;
}

unint64_t sub_1E3D7958C()
{
  result = qword_1EE25FE48[0];
  if (!qword_1EE25FE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE25FE48);
  }

  return result;
}

unint64_t sub_1E3D7960C()
{
  result = qword_1EE23B610;
  if (!qword_1EE23B610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B610);
  }

  return result;
}

uint64_t sub_1E3D7974C(void (*a1)(void), uint64_t (*a2)(void))
{
  v4 = *(v2 + 16);
  a1(0);
  *v4 = a2();
}

unint64_t sub_1E3D797C0()
{
  result = qword_1EE27C048[0];
  if (!qword_1EE27C048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE27C048);
  }

  return result;
}

uint64_t sub_1E3D7981C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3D79850()
{
  OUTLINED_FUNCTION_3_13();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3D79890(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E3D7990C;
}

void sub_1E3D7990C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1E3D7998C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  sub_1E3D79A20();
  return v0;
}

uint64_t sub_1E3D799C4(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t sub_1E3D79A20()
{
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_13();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1E3D79A70()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E3D79AA4@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *a1 = qword_1ECF71640;
}

uint64_t sub_1E3D79AF4()
{
  sub_1E3D79B30();
  sub_1E4201AC4();
  return v1;
}

unint64_t sub_1E3D79B30()
{
  result = qword_1EE259028[0];
  if (!qword_1EE259028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE259028);
  }

  return result;
}

uint64_t sub_1E3D79BC0(void *a1)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38228);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v2 = a1;
  sub_1E3D799C4(a1);
  sub_1E4202DE4();
}

uint64_t sub_1E3D79C90()
{
  v1 = qword_1EE237CE8;
  v2 = *(v0 + qword_1EE237CE8);
  if (!v2)
  {
    return 0;
  }

  v3 = v0;
  v4 = *(*v2 + 624);

  v6 = v4(v5);

  if (v6)
  {
    type metadata accessor for EpisodeCollectionViewModel();
    OUTLINED_FUNCTION_20_2();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  if (!*(v3 + v1))
  {
    return 0;
  }

  sub_1E3D79D5C();
  OUTLINED_FUNCTION_12_1();

  return v3;
}

uint64_t sub_1E3D79D5C()
{
  v2 = (*v1 + 624);
  v3 = *v2;
  v4 = (*v2)();
  if (v4)
  {
    v0 = v4;
    type metadata accessor for CollectionViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  result = (v3)(v4);
  if (result)
  {
    sub_1E3D79D5C();
    OUTLINED_FUNCTION_12_1();

    return v0;
  }

  return result;
}

void sub_1E3D79DF8()
{
  OUTLINED_FUNCTION_21_5();
  v57 = v1;
  v3 = v2;
  v5 = v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38230);
  OUTLINED_FUNCTION_0_10();
  v55 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v53 - v8;
  v59 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v58 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v15 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(v5[49]);
  v18 = v17;
  v20 = v19;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1E3283528();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  OUTLINED_FUNCTION_4_184();
  sub_1E41FFB94();

  v53 = v0;
  if (v3)
  {
    v21 = v3;
  }

  else
  {
    v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v22 = _MergedGlobals_77;
  v23 = *&v21[_MergedGlobals_77];
  if (v23)
  {
    v24 = v3;
    v25 = v23;
  }

  else
  {
    type metadata accessor for HostingCellCoordinator();
    v25 = swift_allocObject();
    v26 = v3;
    sub_1E41FE614();
    LOBYTE(v64) = 1;
    v27 = v25 + OBJC_IVAR____TtC8VideosUIP33_634439971D7F5B6DBBCC23E0497BA8BB22HostingCellCoordinator__cellMetrics;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0u;
    *(v27 + 64) = 0u;
    *(v27 + 80) = 1;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    sub_1E41FE924();
  }

  v28 = v21;

  sub_1E3D7B4C8(v21);
  *&v28[qword_1EE237CE8] = v5;

  v29 = qword_1EE237CF0;
  swift_beginAccess();

  v30 = v57;
  sub_1E3D7B728(v57, &v28[v29]);
  swift_endAccess();
  v31 = sub_1E3D79C90();
  if (v31)
  {
    v32 = v31;
    sub_1E39C4734(v30, &v64);
    if (v66 == 0.0)
    {

      sub_1E325F7A8(&v64, &qword_1ECF296C0);
    }

    else
    {
      v57 = v13;
      sub_1E3251BE8(&v64, v70);
      v34 = *&v28[qword_1EE237CF8];
      v33 = *&v28[qword_1EE237CF8 + 8];
      v66 = MEMORY[0x1E69E6158];
      *&v64 = v34;
      *(&v64 + 1) = v33;
      v35 = *(*v5 + 784);

      v35(v36, &v64, &unk_1F5D5EA88, &off_1F5D5CD18);
      sub_1E325F7A8(&v64, &unk_1ECF296E0);
      sub_1E327F454(v70, &v65);
      *&v64 = v5;
      *(&v64 + 1) = v32;

      v68 = *sub_1E3CD9D88();
      v69 = v25;
      v63 = 0;
      v61 = MEMORY[0x1E69E6370];
      LOBYTE(v60[0]) = 1;

      v35(&v63, v60, &unk_1F5D5E7B8, &off_1F5D5CC78);
      v37 = sub_1E325F7A8(v60, &unk_1ECF296E0);
      MEMORY[0x1EEE9AC00](v37);
      sub_1E3D7B7A4();
      v38 = v28;
      v39 = v54;
      sub_1E42021C4();
      sub_1E4202734();
      v40 = v56;
      v61 = v56;
      v62 = OUTLINED_FUNCTION_5_164(&qword_1EE2888C8, &qword_1ECF38230);
      __swift_allocate_boxed_opaque_existential_1(v60);
      sub_1E42021B4();
      (*(v55 + 8))(v39, v40);
      MEMORY[0x1E6911580](v60);
      if (sub_1E4206C54())
      {

        v41 = OUTLINED_FUNCTION_16_0();
        sub_1E34AF594(v41);
      }

      else
      {
        *(swift_allocObject() + 16) = *(v53 + 80);
        sub_1E4206C64();
      }

      v13 = v57;
      __swift_destroy_boxed_opaque_existential_1(v70);
      sub_1E3D7B800(&v64);
    }
  }

  *&v21[v22] = v25;

  v43 = 0.0;
  if ((*(*v5 + 392))(v42))
  {
    OUTLINED_FUNCTION_30();
    (*(v44 + 552))(&v64);
    v45 = v64;
    v46 = v65;
    v47 = v66;

    if ((v67 & 1) == 0)
    {
      v43 = sub_1E3952BE8(*&v45, *(&v45 + 1), v46, v47);
    }
  }

  v48 = [v28 vuiLayer];
  [v48 setCornerRadius_];

  type metadata accessor for Accessibility();
  v49 = v28;
  sub_1E40A8408();
  if (v50)
  {
    v51 = sub_1E4205ED4();
  }

  else
  {
    v51 = 0;
  }

  [v49 setVuiAccessibilityIdentifier_];

  sub_1E4206B94();
  v52 = VUISignpostLogObject();
  sub_1E41FFBA4();

  (*(v58 + 8))(v13, v59);
  OUTLINED_FUNCTION_20_0();
}

uint64_t type metadata accessor for HostingCellCoordinator()
{
  result = qword_1EE29A810;
  if (!qword_1EE29A810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3D7A610(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38230);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  if (sub_1E41FFE24() & 1) != 0 || (sub_1E41FFE04())
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E41FFDF4();
  }

  type metadata accessor for PlatformHostingCellView();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = qword_1EE237CF0;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E39C4734(v10 + v11, v27);
    if (v28)
    {
      v12 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
      if (swift_dynamicCast())
      {
        v29 = v25;
        v30[0] = v26[0];
        *(v30 + 10) = *(v26 + 10);
        v13 = *(v10 + qword_1EE237CE8);
        if (v13)
        {

          v14 = sub_1E3D79C90();
          if (v14)
          {
            v15 = v14;
            v16 = *(v10 + _MergedGlobals_77);
            if (v16)
            {
              v24[5] = &type metadata for CollectionViewCellContext;
              v24[6] = &off_1F5D621F8;
              v17 = v16;
              v18 = swift_allocObject();
              v24[1] = v15;
              v24[2] = v18;
              v19 = v30[0];
              *(v18 + 16) = v29;
              *(v18 + 32) = v19;
              *(v18 + 42) = *(v30 + 10);
              *(v18 + 58) = v8 & 1;
              v24[0] = v13;

              v20 = sub_1E3CD9D88();
              v22[1] = v22;
              v24[7] = *v20;
              v24[8] = v17;
              MEMORY[0x1EEE9AC00](v20);
              v22[-2] = v24;
              sub_1E3D7B7A4();
              v21 = v12;

              sub_1E42021C4();
              sub_1E4202734();
              v23[3] = v2;
              v23[4] = OUTLINED_FUNCTION_5_164(&qword_1EE2888C8, &qword_1ECF38230);
              __swift_allocate_boxed_opaque_existential_1(v23);
              sub_1E42021B4();
              (*(v4 + 8))(v7, v2);
              MEMORY[0x1E6911580](v23);

              sub_1E3D7B800(v24);
              return;
            }
          }
        }
      }
    }

    else
    {
      sub_1E325F7A8(v27, &qword_1ECF296C0);
    }
  }
}

double sub_1E3D7A968(double a1, double a2)
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  v6 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v7 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E4297BE0;
  v9 = *&v2[qword_1EE237CE8];
  if (v9)
  {
    sub_1E384EE08(*(v9 + 98));
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1E3283528();
  v14 = 16718;
  if (v13)
  {
    v14 = v11;
  }

  v15 = 0xE200000000000000;
  if (v13)
  {
    v15 = v13;
  }

  *(v8 + 32) = v14;
  *(v8 + 40) = v15;
  OUTLINED_FUNCTION_4_184();
  OUTLINED_FUNCTION_7_167();
  sub_1E41FFB94();

  v16 = [v2 vuiContentView];
  [v16 sizeThatFits_];
  v18 = v17;

  sub_1E4206B94();
  v19 = VUISignpostLogObject();
  OUTLINED_FUNCTION_7_167();
  sub_1E41FFBA4();

  v20 = OUTLINED_FUNCTION_16_0();
  v21(v20);
  return v18;
}

double sub_1E3D7AB8C(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_1E3D7A968(a2, a3);

  return v6;
}

void sub_1E3D7ABE0()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v34 = v12;
  v13 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v21 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E4297BE0;
  v23 = *(v1 + qword_1EE237CE8);
  if (v23)
  {
    sub_1E384EE08(*(v23 + 98));
    v25 = v24;
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1E3283528();
  v28 = 16718;
  if (v27)
  {
    v28 = v25;
  }

  v29 = 0xE200000000000000;
  if (v27)
  {
    v29 = v27;
  }

  *(v22 + 32) = v28;
  *(v22 + 40) = v29;
  OUTLINED_FUNCTION_4_184();
  sub_1E41FFB94();

  sub_1E41A300C(v35);
  sub_1E41A2FE8(v11, 1.79769313e308);
  v30 = _MergedGlobals_77;
  if (*(v1 + _MergedGlobals_77))
  {
    memcpy(v37, v35, 0x50uLL);
    v36[0] = 0;
    v37[80] = 0;

    sub_1E3D7B358();
  }

  v31 = sub_1E3D7A968(v11, 1.79769313e308);
  sub_1E41A2FE8(v31, v32);
  v35[6] = v9;
  v35[7] = v7;
  v35[8] = v5;
  v35[9] = v3;
  if (*(v1 + v30))
  {
    memcpy(v36, v35, 0x50uLL);
    v36[80] = 0;

    sub_1E3D7B358();
  }

  sub_1E4206B94();
  v33 = VUISignpostLogObject();
  sub_1E41FFBA4();

  (*(v15 + 8))(v19, v13);
  memcpy(v34, v35, 0x50uLL);
  OUTLINED_FUNCTION_20_0();
}

id sub_1E3D7AEBC()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v2 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  *(v0 + _MergedGlobals_77) = 0;
  v6 = (v0 + qword_1EE237CF8);
  sub_1E41FE614();
  v7 = sub_1E41FE5E4();
  v9 = v8;
  (*(v4 + 8))(v0, v2);
  *v6 = v7;
  v6[1] = v9;
  *(v0 + qword_1EE237CE8) = 0;
  v10 = v0 + qword_1EE237CF0;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v12, v13, v11, v0, ObjectType);
}

id sub_1E3D7B020()
{
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  v3 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  *&v1[_MergedGlobals_77] = 0;
  v7 = &v1[qword_1EE237CF8];
  sub_1E41FE614();
  v8 = sub_1E41FE5E4();
  v10 = v9;
  (*(v5 + 8))(v1, v3);
  *v7 = v8;
  v7[1] = v10;
  *&v1[qword_1EE237CE8] = 0;
  v11 = &v1[qword_1EE237CF0];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, v0);

  if (v12)
  {
  }

  return v12;
}

uint64_t sub_1E3D7B190(uint64_t a1)
{

  return sub_1E325F7A8(a1 + qword_1EE237CF0, &qword_1ECF296C0);
}

void *sub_1E3D7B240@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1E3D7CA88();
  sub_1E41FE8F4();

  return memcpy(a1, (v1 + OBJC_IVAR____TtC8VideosUIP33_634439971D7F5B6DBBCC23E0497BA8BB22HostingCellCoordinator__cellMetrics), 0x51uLL);
}

uint64_t sub_1E3D7B358()
{
  swift_getKeyPath();
  sub_1E3D7CA88();
  sub_1E41FE8E4();
}

uint64_t sub_1E3D7B3F0()
{
  swift_getKeyPath();
  sub_1E3D7CA88();
  sub_1E41FE8F4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3D7B46C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D7B3F0();
  *a1 = result;
  return result;
}

void sub_1E3D7B498(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E3D7B4C8(v1);
}

void sub_1E3D7B4C8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && a1)
  {
    sub_1E373C4DC();
    v2 = Strong;
    v3 = a1;
    v4 = sub_1E4206F64();

    if ((v4 & 1) == 0)
    {
LABEL_10:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1E3D7CA88();
      sub_1E41FE8E4();

      return;
    }
  }

  else
  {

    if (Strong || a1)
    {
      goto LABEL_10;
    }
  }

  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3D7B650()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_634439971D7F5B6DBBCC23E0497BA8BB22HostingCellCoordinator_id;
  sub_1E41FE624();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUIP33_634439971D7F5B6DBBCC23E0497BA8BB22HostingCellCoordinator__sourceView);
  v3 = OBJC_IVAR____TtC8VideosUIP33_634439971D7F5B6DBBCC23E0497BA8BB22HostingCellCoordinator___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1E3D7B728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF296C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3D7B7A4()
{
  result = qword_1EE2A44B8[0];
  if (!qword_1EE2A44B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A44B8);
  }

  return result;
}

void *sub_1E3D7B830@<X0>(void *a1@<X8>)
{
  v77 = a1;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v61 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  type metadata accessor for CollectionViewModel();
  v11 = swift_dynamicCastClass();
  v62 = v4;
  v63 = v2;
  if (v11)
  {
    OUTLINED_FUNCTION_30();
    v13 = *(v12 + 1016);

    v15 = v13(v14);
    if (v15)
    {
      v16 = v15;
      MEMORY[0x1EEE9AC00](v15);
      *(&v60 - 2) = v1;
      v17 = sub_1E3D7C090(sub_1E3D7CA48, (&v60 - 4), v16);
    }

    else
    {
      v17 = 0;
    }

    v22 = ((*v1)[168])(v15);
  }

  else
  {
    type metadata accessor for EpisodeCollectionViewModel();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      OUTLINED_FUNCTION_30();
      v20 = *(v19 + 1000);

      v17 = v20(v21);
    }

    else
    {
      v17 = 0;
    }

    v22 = 263;
  }

  v23 = *(*v1[7] + 184);
  v24 = COERCE_DOUBLE((v23)(v18));
  if (v25)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v24;
  }

  sub_1E327F454((v1 + 2), v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
  v27 = swift_dynamicCast();
  v79 = v1;
  if (v27)
  {
    v26 = *&v86[1];
  }

  else
  {
    sub_1E327F454((v1 + 2), v83);
    if (swift_dynamicCast())
    {
      memcpy(v85, v86, 0x82uLL);
      sub_1E3D7C9F4(v85);
      v26 = *&v85[8];
    }
  }

  v78 = v17;
  if (v22 == 263 || (sub_1E373F6E0() & 1) == 0)
  {
    if (v26 <= 0.0)
    {
      v23();
    }

    v28 = &v105;
    v30 = sub_1E42012F4();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v30);
    v106 = 0u;
    v107 = 0u;
    v108 = 1;
    if (sub_1E3ABB674(*(*v79 + 49), &unk_1F5D83AB0))
    {
      sub_1E327F454((v79 + 2), v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
      swift_dynamicCast();
    }

    v29 = &v104;
    sub_1E389BFA8();
    sub_1E325F7A8(v10, &qword_1ECF2A250);
  }

  else
  {
    v28 = &v103;
    v106 = 0u;
    v107 = 0u;
    v108 = 1;
    v29 = &v102;
    sub_1E389CD28();
  }

  v76 = v28[32];
  v75 = v29[36];
  v74 = v28[17];
  v73 = v29[34];
  v31 = v28[16];
  v71 = *v28;
  v72 = v31;
  v70 = v29[32];
  v32 = *(v29 + 217);
  v68 = *(v29 + 216);
  v69 = v32;
  v33 = *(v29 + 112);
  v34 = *(v29 + 15);
  v35 = v29[16];
  v36 = *(v29 + 136);
  v37 = v29[18];
  v38 = *(v29 + 152);
  v39 = *(v29 + 176);
  v40 = *(v29 + 177);
  v41 = *(v29 + 178);
  v42 = v29[23];
  v64 = *(v29 + 192);
  v65 = v41;
  v43 = *(v29 + 194);
  v66 = *(v29 + 193);
  v67 = v43;
  memcpy(v101, v29, sizeof(v101));
  memcpy(v85, v101, 0x5BuLL);
  *&v85[96] = *(v29 + 6);
  v85[112] = v33 & 1;
  *&v85[120] = v34;
  *&v85[128] = v35;
  v85[136] = v36 & 1;
  *&v85[144] = v37;
  v85[152] = v38 & 1;
  *&v85[160] = *(v29 + 10);
  v85[176] = v39;
  v85[177] = v40 & 1;
  v85[178] = v65;
  *&v85[184] = v42;
  v85[192] = v64 & 1;
  v85[193] = v66 & 1;
  v85[194] = v67 & 1;
  memcpy(v86, v85, 0xC3uLL);
  v87 = *(v29 + 25);
  v88 = v68;
  v89 = v69;
  v44 = *(v29 + 15);
  v90 = *(v29 + 14);
  v91 = v44;
  v92 = v70;
  v93 = v71;
  v94 = v73;
  v95 = v72;
  v96 = v74;
  v97 = v75;
  v98 = v76;
  v45 = *(v29 + 20);
  v99 = *(v29 + 19);
  v100 = v45;
  v46 = v79;
  sub_1E375C1CC(v85, v83);
  sub_1E3D7B240(v83);
  if (v84 & 1) != 0 || v83[0] <= 0.0 || (v36)
  {
    sub_1E375B760(v86);
  }

  else if (floor(v83[0]) == floor(v34) || ceil(v83[0]) == ceil(v34))
  {

    sub_1E375B760(v86);
  }

  else
  {
    v48 = sub_1E324FBDC();
    v50 = v61;
    v49 = v62;
    v51 = v63;
    (*(v62 + 16))(v61, v48, v63);
    sub_1E3D7C9BC(v46, v82);
    v52 = sub_1E41FFC94();
    v53 = sub_1E42067F4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v81 = v55;
      *v54 = 136315138;
      v80 = *(v82[0] + 98);
      sub_1E37D144C();
      v56 = sub_1E4207944();
      v58 = v57;
      sub_1E3D7B800(v82);
      v59 = sub_1E3270FC8(v56, v58, &v81);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_1E323F000, v52, v53, "sui & uikit calculation must match for %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1E69143B0](v55, -1, -1);
      MEMORY[0x1E69143B0](v54, -1, -1);

      sub_1E375B760(v86);
      (*(v49 + 8))(v50, v51);
    }

    else
    {
      sub_1E375B760(v86);

      (*(v49 + 8))(v50, v51);
      sub_1E3D7B800(v82);
    }
  }

  return memcpy(v77, v85, 0xC3uLL);
}

uint64_t sub_1E3D7C090(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_1E32AE9B0(a3);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a3);
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v9;
    v10 = a1(&v11);
    if (v3)
    {

      return v9;
    }

    if (v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E3D7C188()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38240);
  OUTLINED_FUNCTION_5_7();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  (*(**v0 + 776))(v27, v3);
  if (v27[3])
  {
    if (swift_dynamicCast())
    {
      v6 = v25;
      v7 = v26;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E325F7A8(v27, &unk_1ECF296E0);
  }

  v6 = 0;
  v7 = 0;
LABEL_6:
  sub_1E3D7B830(v27);
  OUTLINED_FUNCTION_25();
  sub_1E40EA03C(v8, v9, v10, v11, v12);
  sub_1E37E6F2C(v27);
  type metadata accessor for Router();
  sub_1E40C4334();

  sub_1E40C49A8();
  v14 = v13;

  sub_1E3D7C7DC();
  OUTLINED_FUNCTION_20_2();
  v15 = sub_1E4200504();
  v16 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38248) + 36)];
  *v16 = v15;
  v16[1] = v14;
  sub_1E3D7B3F0();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38228);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_20_2();
  v19 = sub_1E3D799C4(v18);
  v20 = &v5[*(v1 + 36)];
  *v20 = KeyPath;
  v20[1] = v19;
  if (v7)
  {
    v21 = v6;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v7;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v25 = v21;
  v26 = v22;
  sub_1E3D7C834();
  sub_1E4203184();

  return sub_1E32D32CC(v5);
}

uint64_t sub_1E3D7C418()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
  v3 = v2;
  v4 = sub_1E40C4334();
  if (v1 == *v4 && v3 == v4[1])
  {
    v6 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_0();
    v6 = sub_1E42079A4();
  }

  return v6 & 1;
}

void __swiftcall DocumentViewController.vuifindPresentationSource(source:)(UIView_optional *__return_ptr retstr, Swift::String source)
{
  v3 = [v2 vuiView];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E4206ED4();

    if (v5)
    {
      v6 = v5;
      v7 = sub_1E4206ED4();

      if (v7)
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3D7C660()
{
  result = sub_1E41FE624();
  if (v1 <= 0x3F)
  {
    result = sub_1E41FE934();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1E3D7C7DC()
{
  result = qword_1EE23C228;
  if (!qword_1EE23C228)
  {
    type metadata accessor for Router();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23C228);
  }

  return result;
}

unint64_t sub_1E3D7C834()
{
  result = qword_1EE2896E0;
  if (!qword_1EE2896E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38240);
    sub_1E3D7C8EC();
    sub_1E328FCF4(&qword_1EE2887F8, &qword_1ECF38238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896E0);
  }

  return result;
}

unint64_t sub_1E3D7C8EC()
{
  result = qword_1EE289BF0;
  if (!qword_1EE289BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38248);
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BF0);
  }

  return result;
}

unint64_t sub_1E3D7CA88()
{
  result = qword_1EE29A828[0];
  if (!qword_1EE29A828[0])
  {
    type metadata accessor for HostingCellCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29A828);
  }

  return result;
}

uint64_t sub_1E3D7CB28()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3D7CB78(char a1)
{
  if (a1)
  {
    return 0x7372656C69617274;
  }

  else
  {
    return 0x7370696C63;
  }
}

uint64_t sub_1E3D7CBD4()
{
  sub_1E4206014();
}

uint64_t sub_1E3D7CC44()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D7CCC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D7CB28();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D7CCF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D7CB78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1E3D7CD1C()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = sub_1E3741090(0xD000000000000011, 0x80000001E4281970, result);
    v4 = v3;

    if (v4)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3D7CDDC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  v2 = [v1 prefersStatusBarHidden];

  return v2;
}

id sub_1E3D7CE58()
{
  v1 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E3D7CEA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3D7CEF8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3D7CF3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_cancellables;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
}

void sub_1E3D7D02C()
{
  OUTLINED_FUNCTION_31_1();
  objc_allocWithZone(v0);
  OUTLINED_FUNCTION_32_65();
  sub_1E3D7D0A4();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D7D0A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v49 = v2;
  v50 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v53 = v10;
  v54 = v11;
  v52 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v45 - v14;
  v15 = (v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_pageContext);
  *v15 = 0x726579616C70;
  v15[1] = 0xE600000000000000;
  v16 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = -2;
  v17 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = -2;
  v18 = (v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle);
  *v18 = 0;
  v18[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController) = 0;
  OUTLINED_FUNCTION_30_64(OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
  *(v0 + v19) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_contextDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v20 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData;
  type metadata accessor for Document();
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = sub_1E401885C();
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_document) = v21;
  type metadata accessor for CollectionViewModel();

  v22 = sub_1E40B1B68();
  if (v22)
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel) = v22;
    *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType) = 1;
    *v18 = xmmword_1E42B6850;

    v23 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating;
    v48 = v9;
    *v23 = v9;
    v47 = v7 & 1;
    *(v23 + 8) = v7 & 1;
    v24 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating;
    *v24 = v5;
    v49 &= 1u;
    *(v24 + 8) = v49;
    OUTLINED_FUNCTION_3_0();
    v25 = *v20;
    v26 = *(v20 + 8);
    v46 = v5;
    v27 = v52;
    v28 = v54;
    *v20 = v52;
    *(v20 + 8) = v28;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;

    sub_1E395F8D8(v25, v26);
    *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_allowsCellular) = v50 & 1;
    type metadata accessor for PlaylistViewController();
    v29 = OUTLINED_FUNCTION_5_11();
    *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController) = sub_1E37F23A8(v29, MEMORY[0x1E69E7CC0], 2, 0);
    v30 = type metadata accessor for ClipsTemplateViewController();
    v55 = v1;
    v56 = v30;
    OUTLINED_FUNCTION_25();
    v33 = objc_msgSendSuper2(v31, v32);
    sub_1E3D7E440();
    v34 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v34);
    sub_1E4206434();

    v35 = sub_1E4206424();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E85E0];
    *(v36 + 16) = v35;
    *(v36 + 24) = v37;
    *(v36 + 32) = v33;
    *(v36 + 40) = v27;
    v38 = v53;
    *(v36 + 48) = v28;
    *(v36 + 56) = v38;
    v39 = v48;
    *(v36 + 64) = v21;
    *(v36 + 72) = v39;
    *(v36 + 80) = v47;
    *(v36 + 88) = v46;
    *(v36 + 96) = v49;
    v40 = OUTLINED_FUNCTION_42_55();
    sub_1E376FE58(v40, v41, v42, v43, v44);

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3D7D434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a4;
  v4[34] = sub_1E4206434();
  v4[35] = sub_1E4206424();
  v5 = swift_task_alloc();
  v4[36] = v5;
  *v5 = v4;
  v5[1] = sub_1E3D7D558;

  return sub_1E3D83B68();
}

uint64_t sub_1E3D7D558()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v3[37] = v0;

  v7 = sub_1E42063B4();
  v3[38] = v7;
  v3[39] = v6;
  if (v0)
  {
    v8 = sub_1E3D7DB90;
  }

  else
  {
    v8 = sub_1E3D7D6A8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E3D7D6A8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 264);
  *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel) = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle);
  *v3 = *(v0 + 24);
  v3[1] = v2;

  v5 = sub_1E3D7CFDC();
  if (*(v4 + 8))
  {
    v6 = *(v0 + 64);
    *(v0 + 232) = v6;
    *(v4 + 16) = v6;
    sub_1E37C5830(v0 + 232, v0 + 248, &qword_1ECF3D960);
  }

  (v5)(v0 + 176, 0);

  return MEMORY[0x1EEE6DFA0](sub_1E3D7D7B4, 0, 0);
}

uint64_t sub_1E3D7D7B4()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 320) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3D7D838, v2, v1);
}

uint64_t sub_1E3D7D838()
{
  v1 = v0[33];

  if (*(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType))
  {
    v2 = OUTLINED_FUNCTION_13_126();

    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {

    v3 = 1;
  }

  v4 = v0[33];
  type metadata accessor for PlaylistViewController();
  v5 = v0[7];

  v6 = OUTLINED_FUNCTION_5_11();
  v7 = sub_1E37F23A8(v6, v5, v3, 0);
  v8 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController;
  OUTLINED_FUNCTION_3_0();
  v9 = *(v4 + v8);
  *(v4 + v8) = v7;

  sub_1E3D7E5B8(v0[6], v5);
  OUTLINED_FUNCTION_36_3();
  v11 = (*((*MEMORY[0x1E69E7D40] & v10) + 0x188))();
  v12 = [v11 vuiView];

  if (v12)
  {
    [v12 setVuiAlpha_];

    v16 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[14] = sub_1E3D82CF8;
    v0[15] = v17;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1E378AEA4;
    v0[13] = &block_descriptor_67_1;
    v18 = _Block_copy(v0 + 10);

    OUTLINED_FUNCTION_4_0();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[20] = sub_1E3D82128;
    v0[21] = v19;
    v0[16] = MEMORY[0x1E69E9820];
    v0[17] = 1107296256;
    v0[18] = sub_1E37EB82C;
    v0[19] = &block_descriptor_71;
    v20 = _Block_copy(v0 + 16);

    [v16 vui:v18 animateWithDuration:v20 animations:0.25 completion:?];
    _Block_release(v20);
    _Block_release(v18);
    v14 = v0[38];
    v15 = v0[39];
    v13 = sub_1E3D7DB30;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1E3D7DB30()
{
  OUTLINED_FUNCTION_24();

  sub_1E3D82CA4(v0 + 16);
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3D7DB90()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 296);

  sub_1E3D7DC00();

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3D7DC00()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E324FBDC();
  v11 = OUTLINED_FUNCTION_33_61();
  v12(v11);
  v13 = v3;
  v14 = sub_1E41FFC94();
  v15 = sub_1E42067F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_1E323F000, v14, v15, "ClipsTemplateViewController:: trailer fetch failed %@", v16, 0xCu);
    sub_1E325F748(v17, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v10, v4);
  [v1 dismissViewControllerAnimated:1 completion:0];
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3D7DE20(unint64_t a1, uint64_t a2, unint64_t a3, char a4, unint64_t a5, char a6, char a7)
{
  v8 = v7;
  swift_getObjectType();
  v11 = (v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_pageContext);
  *v11 = 0x726579616C70;
  v11[1] = 0xE600000000000000;
  v12 = v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = -2;
  v13 = v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = -2;
  v14 = (v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle);
  *v14 = 0;
  v14[1] = 0;
  v35 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController;
  *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController) = 0;
  v37 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController;
  OUTLINED_FUNCTION_30_64(OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
  *(v7 + v15) = 0;
  v48 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef;
  *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef) = 0;
  v49 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_contextDataRef;
  *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_contextDataRef) = 0;
  *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v16 = v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData;
  type metadata accessor for Document();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = sub_1E401885C();
  *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_document) = v17;
  swift_retain_n();
  v18 = a1;
  v46 = a3;
  v39 = a4 & 1;
  v42 = a6 & 1;
  sub_1E388A9D0(a2, v18, v17, a3, a4 & 1, a5, v42, v52);

  v19 = v52[0];
  if (v52[0])
  {
    v47 = v54;
    v44 = v55;
    v20 = v53;
    *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel) = v52[0];
    v36 = v52[1];
    v38 = v52[2];
    *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType) = v20 & 1;
    OUTLINED_FUNCTION_3_0();
    v21 = *v16;
    v22 = *(v16 + 8);
    *v16 = 0u;
    *(v16 + 16) = 0u;

    sub_1E37C5830(v52, v51, &qword_1ECF38268);
    sub_1E395F8D8(v21, v22);
    *v14 = v36;
    v14[1] = v38;

    v24 = v8 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating;
    *v24 = v46;
    *(v24 + 8) = v39;
    v25 = v8 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating;
    *v25 = a5;
    *(v25 + 8) = v42;
    *(v8 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_allowsCellular) = a7 & 1;
    *(v8 + v48) = (*(*v19 + 1160))(v23);

    OUTLINED_FUNCTION_3_11();
    *(v8 + v49) = (*(v26 + 1136))();

    OUTLINED_FUNCTION_3_11();
    (*(v27 + 1328))(0);
    if (v20)
    {
      v28 = OUTLINED_FUNCTION_13_126();

      if (v28)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }
    }

    else
    {

      v29 = 1;
    }

    type metadata accessor for PlaylistViewController();

    v31 = OUTLINED_FUNCTION_5_11();
    *(v8 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController) = sub_1E37F23A8(v31, v47, v29, 0);
    type metadata accessor for ClipsTemplateViewController();
    OUTLINED_FUNCTION_25();
    v30 = objc_msgSendSuper2(v32, v33);
    sub_1E3D7E440();
    sub_1E3D7E5B8(v44, v47);

    sub_1E325F748(v52, &qword_1ECF38268);
  }

  else
  {

    sub_1E3D82108(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24));
    sub_1E3D82108(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24));

    sub_1E395F8D8(*v16, *(v16 + 8));
    type metadata accessor for ClipsTemplateViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v30;
}

void sub_1E3D7E310()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_pageContext);
  *v1 = 0x726579616C70;
  v1[1] = 0xE600000000000000;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = -2;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = -2;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_paginateOffset) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_serviceRequest) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_contextDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData);
  *v5 = 0u;
  v5[1] = 0u;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3D7E440()
{
  [v0 setVuiModalPresentationCapturesStatusBarAppearance_];
  [v0 setVuiModalPresentationStyle_];
  [v0 vui:2 setOverrideUserInterfaceStyle:?];
  result = [objc_opt_self() isPhone];
  if (result)
  {
    [v0 _setIgnoreAppSupportedOrientations_];

    return [v0 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  return result;
}

uint64_t sub_1E3D7E4E4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;
  OUTLINED_FUNCTION_23_78();

  return sub_1E3D7D434(v3, v4, v5, v6);
}

void sub_1E3D7E5B8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 appController];

  if (v7)
  {
    v8 = [v7 appContext];
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_3_0();
  swift_unknownObjectWeakAssign();

  v9 = [objc_opt_self() isFeatureEnabled_];
  v10 = MEMORY[0x1E69E7D40];
  if (!v9)
  {
    if (!sub_1E32AE9B0(a2))
    {
      goto LABEL_13;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_33;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_10;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_16_1();
  v12 = v3;
  (*(v11 + 392))();
  OUTLINED_FUNCTION_7_5();
  v14.n128_u64[0] = 0x7FF0000000000000;
  (*((*v10 & v13) + 0x240))(v14);
LABEL_12:

LABEL_13:
  while (sub_1E32AE9B0(a2))
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, a2);
LABEL_17:
      sub_1E39C2F7C(16, MEMORY[0x1E69E63B0], &v73);

      if ((v74 & 1) == 0)
      {
        v19 = v73;
        OUTLINED_FUNCTION_16_1();
        (*(v20 + 392))();
        OUTLINED_FUNCTION_7_5();
        (*((*v10 & v21) + 0x258))(v19, 0);
      }

      break;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_17;
    }

    __break(1u);
LABEL_33:
    MEMORY[0x1E6911E60](0, a2);
LABEL_10:
    sub_1E39C2F7C(15, MEMORY[0x1E69E63B0], &v73);

    if ((v74 & 1) == 0)
    {
      v15 = v73;
      OUTLINED_FUNCTION_16_1();
      v12 = v3;
      (*(v16 + 392))();
      OUTLINED_FUNCTION_7_5();
      v18.n128_u64[0] = v15;
      (*((*v10 & v17) + 0x240))(v18);
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_16_1();
  v22 += 49;
  v23 = *v22;
  v24 = (*v22)();
  OUTLINED_FUNCTION_4_0();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_26_3();
  v27 = *((*v10 & v26) + 0x3F0);

  v27(sub_1E3D826C8, v25);

  v23();
  OUTLINED_FUNCTION_7_5();
  (*((*v10 & v28) + 0x2C0))(0);

  v23();
  OUTLINED_FUNCTION_7_5();
  (*((*v10 & v29) + 0x368))(1);

  v23();
  OUTLINED_FUNCTION_7_5();
  (*((*v10 & v30) + 0x2D8))(0);

  v23();
  OUTLINED_FUNCTION_7_5();
  (*((*v10 & v31) + 0x2A8))(1);

  v32 = (v23)();
  (*((*v10 & *v32) + 0x338))(*MEMORY[0x1E69874E8]);

  v33 = (v23)();
  sub_1E4205F14();
  OUTLINED_FUNCTION_26_3();
  (*((*v10 & v34) + 0x350))();

  v35 = (v23)();
  (*((*v10 & *v35) + 0x380))(v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_allowsCellular]);

  v23();
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_4_0();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_26_3();
  v38 = *((*v10 & v37) + 0x408);

  v38(sub_1E37FADC0, v36);

  v39 = [v3 vuiView];
  if (!v39)
  {
    goto LABEL_35;
  }

  v40 = v39;
  v41 = (v23)();
  v42 = [v41 vuiView];

  [v40 vui:v42 addSubview:0 oldView:?];
  v43 = (v23)();
  [v3 vui:v43 addChildViewController:?];

  v44 = (v23)();
  [v44 vui:v3 didMoveToParentViewController:?];

  v23();
  OUTLINED_FUNCTION_7_5();
  (*((*v10 & v45) + 0x228))(1);

  v23();
  OUTLINED_FUNCTION_7_5();
  (*((*v10 & v46) + 0x288))(a1);

  sub_1E3D81984(a1);
  type metadata accessor for TemplateViewModel();
  sub_1E4205CB4();
  sub_1E410D4C8();
  if (!v47)
  {
LABEL_30:
    sub_1E3D7F628();
    sub_1E3D7F2A0();
    return;
  }

  v48 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1E4298880;
  *(v49 + 32) = *&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel];
  v50 = *(*v48 + 472);

  v50(v49);
  type metadata accessor for ClipsTabViewController();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();

  sub_1E3840BF0(v51);
  v53 = v52;
  sub_1E3280A90(0, &qword_1EE23AD50);
  v54.n128_f64[0] = sub_1E41DA724();
  (*((*v10 & *v53) + 0x8B0))(v54);
  v55 = v53;
  v56 = [v55 vuiView];
  if (!v56)
  {
    goto LABEL_36;
  }

  v57 = v56;
  [v56 setVuiClipsToBounds_];

  v72 = a1;
  (*((*v10 & *v55) + 0xA58))(a1);
  v58 = [objc_allocWithZone(VUIHUDViewController) init];
  [v58 setPlayerViewSize_];
  [v58 setHudContentViewController_];
  v59 = v58;
  v60 = [v59 vuiView];
  if (v60)
  {
    v61 = v60;
    [v60 setVuiClipsToBounds_];

    v62 = &v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle];
    if (*&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle + 8])
    {

      v63 = sub_1E4205ED4();
    }

    else
    {
      v63 = 0;
    }

    [v59 setTitle_];

    v64 = *&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController];
    *&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController] = v59;
    v65 = v59;

    OUTLINED_FUNCTION_36_3();
    v67 = (*((*v10 & v66) + 0x188))();
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1E4298880;
    *(v68 + 32) = v65;
    (*((*v10 & *v67) + 0x518))();

    if (*(v62 + 1))
    {
      v69 = *v62;

      sub_1E4205ED4();
      OUTLINED_FUNCTION_16_5();
    }

    else
    {
      v69 = 0;
    }

    [v55 setTitle_];

    v70 = *&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController];
    *&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController] = v53;
    v71 = v55;

    sub_1E3D81C00(v72);

    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
}

void sub_1E3D7F2A0()
{
  OUTLINED_FUNCTION_31_1();
  v23 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22 - v2;
  v4 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v17 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v18 = sub_1E4206A04();
  v24[0] = v18;
  v19 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v19);
  sub_1E3274B88(&qword_1EE23B130, MEMORY[0x1E6969F20]);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F748(v3, &unk_1ECF2D2B0);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00);
  sub_1E4200844();

  (*(v13 + 8))(v16, v11);
  OUTLINED_FUNCTION_36_3();
  v21 = (*((*MEMORY[0x1E69E7D40] & v20) + 0x258))(v24);
  sub_1E42004C4();

  v21(v24, 0);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3D7F628()
{
  [v0 setVuiModalPresentationStyle_];
  [v0 vui:2 setOverrideUserInterfaceStyle:?];
  result = [objc_opt_self() isPhone];
  if (result)
  {
    [v0 _setIgnoreAppSupportedOrientations_];

    return [v0 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  return result;
}

void sub_1E3D7F6B8()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ClipsTemplateViewController();
  objc_msgSendSuper2(&v12, sel_vui_viewDidLoad);
  v2 = [v0 vuiView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() blackColor];
    [v3 setVuiBackgroundColor_];

    v5 = [objc_opt_self() sharedInstance];
    [v5 setDelegate_];

    type metadata accessor for LayoutGrid();
    sub_1E3A256EC();
    type metadata accessor for PlayerCollectionViewModel();
    if (swift_dynamicCastClass())
    {
      sub_1E3280A90(0, &qword_1EE23AD50);

      sub_1E41DA724();
      OUTLINED_FUNCTION_3_11();
      (*(v6 + 1664))();
      v7 = [v1 traitCollection];
      sub_1E3C2AE10();
      v9 = v8;
      OUTLINED_FUNCTION_3_11();
      (*(v10 + 1656))(v11);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3D7F8FC(uint64_t a1)
{
  v13 = type metadata accessor for ClipsTemplateViewController();
  v3 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v4, v5, a1, v3, v1, v13);
  v6 = OUTLINED_FUNCTION_6_12();
  [v7 v8];
  v9 = *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
  if (v9)
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x8B0);
    v11 = v9;
    v12 = OUTLINED_FUNCTION_6_12();
    v10(v12);
  }
}

void sub_1E3D7FA50()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ClipsTemplateViewController();
  objc_msgSendSuper2(&v23, sel_vui_viewDidAppear_, v3 & 1);
  if (*(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType) == 1)
  {
  }

  else
  {
    v18 = OUTLINED_FUNCTION_14_124();

    if ((v18 & 1) == 0)
    {
      sub_1E3280A90(0, &qword_1EE23B1D0);
      v21 = sub_1E4206A04();
      OUTLINED_FUNCTION_4_0();
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_45_2();
      v22[4] = sub_1E3D82128;
      v22[5] = v19;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_1E378AEA4;
      v22[3] = &block_descriptor_105;
      v20 = _Block_copy(v22);

      sub_1E4203FE4();
      v22[0] = MEMORY[0x1E69E7CC0];
      sub_1E3274B88(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
      sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v17, v10, v20);
      _Block_release(v20);

      (*(v6 + 8))(v10, v4);
      (*(v13 + 8))(v17, v11);
    }
  }

  [v1 setNeedsStatusBarAppearanceUpdate];
  [v1 setNeedsUpdateOfHomeIndicatorAutoHidden];
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3D7FDBC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ClipsTemplateViewController();
  return objc_msgSendSuper2(&v4, sel_vui_viewDidDisappear_, a1 & 1);
}

void sub_1E3D7FE48()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ClipsTemplateViewController();
  objc_msgSendSuper2(&v14, sel_vui_viewDidLayoutSubviews);
  OUTLINED_FUNCTION_26_3();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x188))();
  v3 = [v2 vuiView];

  if (v3)
  {
    v4 = [v0 vuiView];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v3 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3D8000C()
{

  OUTLINED_FUNCTION_21_84(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle);
  OUTLINED_FUNCTION_21_84(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle);

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData + 8);

  return sub_1E395F8D8(v1, v2);
}

id sub_1E3D800FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClipsTemplateViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3D80224()
{
  OUTLINED_FUNCTION_31_1();
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - v3;
  v5 = &v0[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = *(v5 + 1);
  if (v6)
  {
    v7 = *v5;

    OUTLINED_FUNCTION_32_65();
    sub_1E395F9C4(v8, v9);
    OUTLINED_FUNCTION_32_65();
    sub_1E395F8D8(v10, v11);
    if (*(v5 + 1) && (v13 = *(v5 + 2), v12 = *(v5 + 3), OUTLINED_FUNCTION_32_65(), sub_1E395F9C4(v14, v15), , OUTLINED_FUNCTION_32_65(), sub_1E395F8D8(v16, v17), v12))
    {
      v18 = sub_1E4206474();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v18);
      sub_1E4206434();
      v19 = v0;
      v20 = sub_1E4206424();
      v21 = swift_allocObject();
      v22 = MEMORY[0x1E69E85E0];
      v21[2] = v20;
      v21[3] = v22;
      v21[4] = v19;
      v21[5] = v7;
      v21[6] = v6;
      v21[7] = v13;
      v21[8] = v12;
      v21[9] = ObjectType;
      v23 = OUTLINED_FUNCTION_42_55();
      sub_1E37748D8(v23, v24, v25, v26, v27);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D803D0()
{
  OUTLINED_FUNCTION_24();
  v0[16] = v1;
  v0[17] = v10;
  v0[14] = v2;
  v0[15] = v3;
  v0[12] = v4;
  v0[13] = v5;
  v0[18] = sub_1E4206434();
  v0[19] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v7 = sub_1E42063B4();
  v0[20] = v7;
  v0[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E3D80474, v7, v6);
}

void sub_1E3D80474()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0[12] + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel);
  v2 = *(*v1 + 1040);

  v2(v3);
  OUTLINED_FUNCTION_50();

  if (v1)
  {
    if (!sub_1E32AE9B0(v1))
    {
      v7 = 0;
      goto LABEL_10;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
      v5 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = *(v1 + 32);
    }

    (*(*v5 + 872))(v6);
    OUTLINED_FUNCTION_50();

    if (v5)
    {
      v7 = sub_1E32AE9B0(v5);
LABEL_10:

      goto LABEL_11;
    }
  }

  v7 = 0;
LABEL_11:
  v0[22] = v7;
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_1E3D80614;

  sub_1E3D82DD4();
}

uint64_t sub_1E3D80614()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  *(v1 + 192) = v3;
  *(v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = *(v2 + 168);
    v6 = sub_1E3D80C00;
  }

  else
  {
    v6 = sub_1E3D80728;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E3D80728()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 208) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3D807AC, v2, v1);
}

uint64_t sub_1E3D807AC()
{
  v34 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 96);

  sub_1E388A9D0(v1, v2, *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_document), *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating), *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating + 8), *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating), *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating + 8), v33);
  v4 = v33[0];
  if (v33[0])
  {
    v5 = v33[4];
    v7 = sub_1E3D7CFDC();
    if (!*(v6 + 8))
    {
      goto LABEL_10;
    }

    v8 = v6;
    OUTLINED_FUNCTION_26();
    v10 = *(v9 + 1160);

    v10(v11);
    OUTLINED_FUNCTION_16_5();

    if (v4)
    {
      sub_1E3277E60(0x656B6F547478656ELL, 0xE90000000000006ELL, v4, (v0 + 48));

      if (*(v0 + 72))
      {
        v12 = swift_dynamicCast();
        v13 = *(v0 + 80);
        v14 = *(v0 + 88);
        if (!v12)
        {
          v13 = 0;
          v14 = 0;
        }

        goto LABEL_9;
      }
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    sub_1E325F748(v0 + 48, &unk_1ECF296E0);
    v13 = 0;
    v14 = 0;
LABEL_9:
    *(v8 + 16) = v13;
    *(v8 + 24) = v14;

LABEL_10:
    v15 = (v7)(v0 + 16, 0);
    v16 = *(v0 + 96);
    v17 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v16) + 0x188))(v15);
    OUTLINED_FUNCTION_7_5();
    (*((*v17 & v18) + 0x580))(v5);

    v19 = *(v16 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
    if (!v19)
    {

LABEL_22:

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_26();
    v21 = *(v20 + 1040);
    v22 = v19;

    v21(v23);
    OUTLINED_FUNCTION_16_5();

    if (v4)
    {
      if (sub_1E32AE9B0(v4))
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_41_1();
          v28 = v31;
        }

        else
        {
          OUTLINED_FUNCTION_34_0();
          if (!v27)
          {
            __break(1u);
            return MEMORY[0x1EEE6DFA0](v24, v25, v26);
          }

          v28 = *(v4 + 32);
        }

        v30 = (*(*v28 + 872))(v29);

        if (v30)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_21:
    (*((*v17 & *v22) + 0xA88))(v30);

    goto LABEL_22;
  }

LABEL_23:

  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  v24 = sub_1E3D80BA4;

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1E3D80BA4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D80C00()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3D80C5C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44[-v10];
  v12 = *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef);
  if (v12 && (v13 = *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_contextDataRef)) != 0)
  {

    v14 = sub_1E324FBDC();
    (*(v5 + 16))(v11, v14, v3);
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "ClipsTemplateViewController:: fetching next fragment", v17, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v11, v3);
    v18 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel;
    OUTLINED_FUNCTION_3_11();
    v20 = *(v19 + 1112);

    v22 = v20(v21);
    v24 = v23;

    v25 = [objc_opt_self() sharedInstance];
    v26 = [v25 appController];

    if (v26)
    {
      v27 = [v26 appContext];
    }

    else
    {
      v27 = 0;
    }

    type metadata accessor for CollectionServiceRequestContext();
    v32 = v27;
    v33 = sub_1E3E3D284(2, v22, v24, v27);
    (*(*v33 + 256))(v12);
    (*(*v33 + 232))(v13);
    v34 = *(v1 + v18);
    v35 = *(*v34 + 1040);

    v37 = v35(v36);

    if (v37)
    {
      sub_1E37D027C(v37);
      OUTLINED_FUNCTION_16_5();
    }

    else
    {
      v34 = 0;
    }

    (*(*v33 + 184))(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8);
    v38 = sub_1E37B2890();
    *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_serviceRequest) = v38;

    (*(*v38 + 352))(v39);
    OUTLINED_FUNCTION_16_5();

    if (v38)
    {
      OUTLINED_FUNCTION_4_0();
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_45_2();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = ObjectType;
      sub_1E41EC148(sub_1E3D826C0, v41);

      OUTLINED_FUNCTION_36_3();
      v43 = (*((*MEMORY[0x1E69E7D40] & v42) + 0x258))(v44);
      sub_1E42004C4();

      v43(v44, 0);
    }
  }

  else
  {
    v28 = sub_1E324FBDC();
    (*(v5 + 16))(v8, v28, v3);
    v29 = sub_1E41FFC94();
    v30 = sub_1E42067D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1E323F000, v29, v30, "ClipsTemplateViewController:: skipping fetch because append context is missing", v31, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v8, v3);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D81210()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v10 = *v1;
  v9 = v1[1];
  v11 = *(v1 + 16);
  v12 = *(v1 + 17);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_55;
  }

  v14 = Strong;
  if (v12)
  {
    sub_1E324FBDC();
    v15 = OUTLINED_FUNCTION_33_61();
    v16(v15);
    v17 = OUTLINED_FUNCTION_36_9();
    sub_1E3781F8C(v17, v18, v19);
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();
    v22 = OUTLINED_FUNCTION_36_9();
    sub_1E37D172C(v22, v23, v24, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v59 = v21;
      v25 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v25 = 138412290;
      sub_1E3781F38();
      swift_allocError();
      *v26 = v10;
      *(v26 + 8) = v9;
      *(v26 + 16) = v11;
      v27 = OUTLINED_FUNCTION_36_9();
      sub_1E3781F8C(v27, v28, v29);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v30;
      *v57 = v30;
      _os_log_impl(&dword_1E323F000, v20, v59, "ClipsTemplateViewController:: failed to fetch next fragment %@", v25, 0xCu);
      sub_1E325F748(v57, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v8, v2);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v31 = *(v10 + 32);
  if (!v31)
  {

    goto LABEL_55;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef) = *(v10 + 24);

  v58 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  v32 = sub_1E32AE9B0(v31);
  for (i = 0; v32 != i; ++i)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1E6911E60](i, v31);
    }

    else
    {
      if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v34 = *(v31 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      return;
    }

    v35 = *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating + 8);
    if (v35 == 1 && (*(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating + 8) & 1) != 0 || (sub_1E388A10C(v34, *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating), v35, *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating), (v35 ^ 1) & *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating + 8)) & 1) == 0)
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }
  }

  v36 = v60;
  v37 = MEMORY[0x1E69E7CC0];
  v61 = MEMORY[0x1E69E7CC0];
  v38 = sub_1E32AE9B0(v36);
  v39 = 0;
  while (v38 != v39)
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1E6911E60](v39, v36);
      v40 = v41;
    }

    else
    {
      if (v39 >= *(v36 + 16))
      {
        goto LABEL_59;
      }

      v40 = *(v36 + 8 * v39 + 32);
    }

    if (__OFADD__(v39, 1))
    {
      goto LABEL_58;
    }

    v42 = (*(*v40 + 488))(v41);
    if (v42)
    {
      if (!*(v42 + 16) || (sub_1E3740AE8(227), (v43 & 1) == 0))
      {

        goto LABEL_30;
      }

      MEMORY[0x1E6910BF0](v44);
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v37 = v61;
      ++v39;
    }

    else
    {
LABEL_30:

      ++v39;
    }
  }

  v62 = MEMORY[0x1E69E7CC0];
  v45 = sub_1E32AE9B0(v37);
  v46 = 0;
  while (v45 != v46)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1E6911E60](v46, v37);
      v47 = v48;
    }

    else
    {
      if (v46 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v47 = *(v37 + 8 * v46 + 32);
    }

    if (__OFADD__(v46, 1))
    {
      goto LABEL_60;
    }

    v49 = (*(*v47 + 488))(v48);
    if (v49)
    {
      if (!*(v49 + 16) || (sub_1E3740AE8(193), (v50 & 1) == 0))
      {

        goto LABEL_45;
      }

      MEMORY[0x1E6910BF0](v51);
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v58 = v62;
      ++v46;
    }

    else
    {
LABEL_45:

      ++v46;
    }
  }

  v52 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x188))();
  OUTLINED_FUNCTION_7_5();
  (*((*v52 & v53) + 0x580))(v37);

  v54 = *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
  if (v54)
  {
    v55 = *((*v52 & *v54) + 0xA88);
    v56 = v54;
    v55(v58);
  }

LABEL_54:
  *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_serviceRequest) = 0;

LABEL_55:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D81908()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType) == 1)
  {

LABEL_4:

    sub_1E3D80224();
    return;
  }

  v1 = OUTLINED_FUNCTION_14_124();

  if (v1)
  {
    goto LABEL_4;
  }

  sub_1E3D80C5C();
}

void sub_1E3D81984(uint64_t a1)
{
  v2 = v1;
  v3 = v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle + 24) != 254)
  {
    v4 = *v3;
    v5 = OUTLINED_FUNCTION_11_127();
    sub_1E3C270F0(v5, v6, v7);
    sub_1E3D81ED0(v4, 1);
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_11_127();
      v12 = sub_1E3C2877C(v9, v10, v11);
      v14 = v13;
      v16 = v15;
      OUTLINED_FUNCTION_9_126();

      v17 = v12;
      v2 = v1;
      sub_1E37AE010(v17, v14, v16);
    }

    else
    {
      OUTLINED_FUNCTION_9_126();
    }
  }

  v18 = v2 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle + 24) != 254)
  {
    v19 = *v18;
    v20 = OUTLINED_FUNCTION_11_127();
    sub_1E3C270F0(v20, v21, v22);
    sub_1E3D81ED0(v19, 0);
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_11_127();
      v27 = sub_1E3C2877C(v24, v25, v26);
      v29 = v28;
      v31 = v30;
      OUTLINED_FUNCTION_9_126();

      sub_1E37AE010(v27, v29, v31);
    }

    else
    {
      OUTLINED_FUNCTION_9_126();
    }
  }

  sub_1E3D81ED0(a1, 1);
  if (v32)
  {

    v33 = sub_1E3D7CD1C();
    v35 = sub_1E3C2877C(v33, v34, 0);
    v37 = v36;
    v39 = v38;
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v39 = -1;
  }

  v40 = *v3;
  v41 = *(v3 + 8);
  v42 = *(v3 + 16);
  *v3 = a1;
  *(v3 + 8) = v35;
  *(v3 + 16) = v37;
  v43 = *(v3 + 24);
  *(v3 + 24) = v39;
  v44 = OUTLINED_FUNCTION_1_22();
  sub_1E3C270F0(v44, v45, v46);
  sub_1E3D82108(v40, v41, v42, v43);
  sub_1E3D81ED0(a1, 0);
  if (v47)
  {
    v48 = sub_1E3D7CD1C();
    v50 = sub_1E3C2877C(v48, v49, 0);
    v52 = v51;
    v54 = v53;
    v55 = OUTLINED_FUNCTION_1_22();
    sub_1E37AE010(v55, v56, v57);
  }

  else
  {
    v58 = OUTLINED_FUNCTION_1_22();
    sub_1E37AE010(v58, v59, v60);
    v50 = 0;
    v52 = 0;
    v54 = -1;
  }

  v61 = *v18;
  v62 = *(v18 + 8);
  v63 = *(v18 + 16);
  *v18 = a1;
  *(v18 + 8) = v50;
  *(v18 + 16) = v52;
  v64 = *(v18 + 24);
  *(v18 + 24) = v54;

  sub_1E3D82108(v61, v62, v63, v64);
}

void sub_1E3D81C00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
  if (!v11)
  {
    return;
  }

  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x1B8);
  v13 = v11;
  v23 = v12();

  v14 = *(v2 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel);
  v15 = *(*v14 + 1040);

  v15(v16);
  OUTLINED_FUNCTION_16_5();

  if (!v14)
  {
    goto LABEL_12;
  }

  if (sub_1E32AE9B0(v14))
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
      v18 = v22;
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = *(v14 + 32);
    }

    OUTLINED_FUNCTION_26();
    (*(v19 + 872))();
    OUTLINED_FUNCTION_16_5();

    if (v18)
    {
      v20 = sub_1E32AE9B0(v18);

      if (v20 > a1 && [v23 numberOfSections] >= 1)
      {
        MEMORY[0x1E6909190](a1, 0);
        v21 = sub_1E41FE7E4();
        (*(v6 + 8))(v10, v4);
        [v23 scrollToItemAtIndexPath:v21 atScrollPosition:8 animated:0];

        return;
      }
    }

LABEL_12:

    return;
  }
}

void sub_1E3D81ED0(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel);
  v6 = *(*v5 + 1040);

  v6(v7);
  OUTLINED_FUNCTION_31_4();

  if (v5)
  {
    if (!sub_1E32AE9B0(v5))
    {

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v8)
      {
        __break(1u);
        return;
      }
    }

    OUTLINED_FUNCTION_26();
    v10 = (*(v9 + 872))();

    if (v10)
    {
      v20[1] = v10;
      v18 = a1;
      v19 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      OUTLINED_FUNCTION_46();
      sub_1E32752B0(v11, v12);
      sub_1E38D2054(&v18, v20);

      if (v20[0])
      {
        v13 = *(*v20[0] + 488);

        v15 = v13(v14);

        if (!v15 || ((a2 & 1) == 0 ? (v16 = 15) : (v16 = 16), (v17 = sub_1E373E010(v16, v15), , , v17) && *v17 != _TtC8VideosUI13TextViewModel))
        {
        }
      }
    }
  }
}

void sub_1E3D82108(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 254)
  {
    sub_1E37AE010(a2, a3, a4);
  }
}

void sub_1E3D82128()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    v4 = (*(v3 + 392))();

    OUTLINED_FUNCTION_36_3();
    (*((*v2 & v5) + 0x2C0))(1);
  }
}

unint64_t sub_1E3D821F4()
{
  result = qword_1ECF38270;
  if (!qword_1ECF38270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38270);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClipsPlaylistType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1E3D82334()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() sharedInstance];
    [v2 setBackgroundMediaControllerForPIP_];

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1E3D823C0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    v5 += 49;
    v6 = *v5;
    v8 = v7;
    (*v5)();
    OUTLINED_FUNCTION_7_5();
    v10 = (*((*v4 & v9) + 0x280))();

    if (v10 != a1)
    {
      v6();
      OUTLINED_FUNCTION_7_5();
      (*((*v4 & v11) + 0x288))(a1);

      sub_1E3D81984(a1);
      if (*&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController])
      {
        OUTLINED_FUNCTION_10_118();
        v13 = *(v12 + 440);
        v15 = v14;
        v16 = v13();

        [v16 reloadData];
      }

      sub_1E3D81C00(a1);
    }
  }
}

void sub_1E3D82568()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3D81908();
  }
}

uint64_t objectdestroyTm_39(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 64));

  return swift_deallocObject();
}

uint64_t sub_1E3D82614()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;
  OUTLINED_FUNCTION_23_78();

  return sub_1E3D803D0();
}

void sub_1E3D826C8(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    v7 = v6;
    (*(v5 + 392))();
    OUTLINED_FUNCTION_7_5();
    v9 = (*((*v4 & v8) + 0x200))();

    sub_1E32AE9B0(v9);
    OUTLINED_FUNCTION_31_4();

    if (__OFSUB__(v7, 2))
    {
      __break(1u);
    }

    else
    {
      if (v7 - 2 <= a1 && !*(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_serviceRequest))
      {
        sub_1E3D81908();
      }

      v10 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController;
      if (*(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController))
      {
        OUTLINED_FUNCTION_10_118();
        v12 = *(v11 + 2648);
        v14 = v13;
        v12(a1);
      }

      sub_1E3D81984(a1);
      if (*(v3 + v10))
      {
        OUTLINED_FUNCTION_10_118();
        v16 = *(v15 + 440);
        v18 = v17;
        v19 = v16();

        [v19 reloadData];
      }

      sub_1E3D81C00(a1);
      v20 = *((*v4 & *v3) + 0x188);
      v20();
      OUTLINED_FUNCTION_7_5();
      (*((*v4 & v21) + 0x200))();

      v20();
      OUTLINED_FUNCTION_7_5();
      v23 = (*((*v4 & v22) + 0x280))();

      v45 = v23;
      v46 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      OUTLINED_FUNCTION_46();
      sub_1E32752B0(v24, v25);
      sub_1E38D2054(&v45, &v47);
      v26 = v47;

      if (!v26)
      {
        goto LABEL_20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      v27 = sub_1E39C2E98();
      if (!v27)
      {
        goto LABEL_19;
      }

      v28 = v27;
      v29 = objc_opt_self();
      v30 = sub_1E388A824(v28);

      v31 = sub_1E3D82BE4(v30, 0, v29);
      if (!v31)
      {
        goto LABEL_19;
      }

      a1 = v31;
      if (!sub_1E32AE9B0(v31))
      {

        goto LABEL_20;
      }

      if ((a1 & 0xC000000000000001) == 0)
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v32 = *(a1 + 32);
LABEL_17:
        v33 = v32;

        sub_1E3C823F8(v33);
        if (v34)
        {
          v35 = objc_opt_self();
          v36 = sub_1E4205ED4();

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          sub_1E4205F14();
          v38 = @"PlayerPlaylist";
          v39 = MEMORY[0x1E69E6158];
          sub_1E4207414();
          v41 = *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_pageContext);
          v40 = *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_pageContext + 8);
          *(inited + 96) = v39;
          *(inited + 72) = v41;
          *(inited + 80) = v40;

          v42 = sub_1E4205CB4();
          v43 = sub_1E38A7618(v36, v38, v42, v35);

          v44 = [objc_opt_self() sharedInstance];
          [v44 recordPage_];

LABEL_20:
          return;
        }

LABEL_19:

        goto LABEL_20;
      }
    }

    v32 = MEMORY[0x1E6911E60](0, a1);
    goto LABEL_17;
  }
}

uint64_t sub_1E3D82BE4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  v5 = sub_1E42062A4();

  v6 = [a3 videosPlayablesFromDictionaries:v5 andMetadataDictionary:a2];

  if (!v6)
  {
    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B1C0);
  v7 = sub_1E42062B4();

  return v7;
}

void sub_1E3D82CF8()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_64();
    v3 = (*(v2 + 392))();

    v4 = [v3 vuiView];
    if (v4)
    {
      [v4 setVuiAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3D82DD4()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[7] = sub_1E4206434();
  v0[8] = sub_1E4206424();
  v6 = sub_1E42063B4();
  v0[9] = v6;
  v0[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3D82E70, v6, v5);
}

uint64_t sub_1E3D82E70()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 appController];

  if (v2 && (v3 = [v2 appContext], *(v0 + 88) = v3, v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 40);
    v15 = *(v0 + 24);
    v6 = sub_1E4206424();
    *(v0 + 96) = v6;
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = v15;
    *(v7 + 40) = v5;
    *(v7 + 48) = v4;
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    *v8 = v0;
    v8[1] = sub_1E3D83078;
    v10 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 16, v6, v10, 0xD00000000000002ELL, 0x80000001E42819B0, sub_1E3D834C8, v7, v9);
  }

  else
  {

    sub_1E3D83280();
    v11 = OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_8_137(v11, v12);
    OUTLINED_FUNCTION_54();

    return v13();
  }
}

uint64_t sub_1E3D83078()
{
  OUTLINED_FUNCTION_24();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[15] = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1E3D83200;
  }

  else
  {

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1E3D83190;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E3D83190()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E3D83200()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_54();

  return v2();
}

unint64_t sub_1E3D83280()
{
  result = qword_1ECF38278;
  if (!qword_1ECF38278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38278);
  }

  return result;
}

void sub_1E3D832D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  (*(v12 + 16))(&v25 - v17, a1, v10, v16);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v12 + 32))(v21 + v19, v18, v10);
  v22 = (v21 + v20);
  *v22 = a3;
  v22[1] = a4;
  v23 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v25;
  v23[1] = a6;
  aBlock[4] = sub_1E3D84F9C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E377674C;
  aBlock[3] = &block_descriptor_106;
  v24 = _Block_copy(aBlock);

  [v26 evaluate_];
  _Block_release(v24);
}

void sub_1E3D834D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = sub_1E4205ED4();
  v18 = [a1 objectForKeyedSubscript_];

  if (v18)
  {
    v39 = a5;
    v44 = v18;
    v41 = *(v13 + 16);
    v42 = a3;
    v41(v16, a2, v11);
    v19 = *(v13 + 80);
    v43 = a4;
    v20 = (v19 + 16) & ~v19;
    v21 = swift_allocObject();
    v22 = *(v13 + 32);
    v22(v21 + v20, v16, v11);
    v48 = sub_1E3D85058;
    v49 = v21;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_1E37C7850;
    *(&v47 + 1) = &block_descriptor_21;
    v40 = _Block_copy(&aBlock);

    v41(v16, a2, v11);
    v23 = swift_allocObject();
    v24 = v23 + v20;
    v25 = v43;
    v26 = v45;
    v22(v24, v16, v11);
    v48 = sub_1E3D85260;
    v49 = v23;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v27 = v40;
    *&v47 = sub_1E37C7850;
    *(&v47 + 1) = &block_descriptor_27_1;
    v28 = _Block_copy(&aBlock);

    _Block_copy(v27);
    _Block_copy(v28);
    v29 = sub_1E4205ED4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E4298AD0;
    v31 = MEMORY[0x1E69E6158];
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 32) = v42;
    *(v30 + 40) = v25;
    if (v26)
    {
      *(&v47 + 1) = v31;
      *&aBlock = v39;
      *(&aBlock + 1) = v26;
      sub_1E329504C(&aBlock, (v30 + 64));
    }

    else
    {
      aBlock = 0u;
      v47 = 0u;
      v34 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

      v35 = [v34 init];
      *(v30 + 88) = sub_1E3D852DC();
      *(v30 + 64) = v35;
      if (*(&v47 + 1))
      {
        sub_1E325F7A8(&aBlock, &unk_1ECF296E0);
      }
    }

    *(v30 + 120) = swift_getObjectType();
    *(v30 + 96) = v27;
    *(v30 + 152) = swift_getObjectType();
    *(v30 + 128) = v28;
    _Block_copy(v27);
    _Block_copy(v28);

    v36 = v44;
    v37 = sub_1E3A49FB0(v29, v30, v44);

    _Block_release(v28);
    _Block_release(v27);
    _Block_release(v28);
    _Block_release(v27);
  }

  else
  {
    sub_1E3D83280();
    v32 = OUTLINED_FUNCTION_206();
    *v33 = 2;
    *&aBlock = v32;
    sub_1E42063C4();
  }
}

uint64_t sub_1E3D83948(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E324FBDC();
  (*(v4 + 16))(v7, v8, v2);
  swift_unknownObjectRetain();
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067F4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = a1;
    v20 = v12;
    *v11 = 136315138;
    swift_unknownObjectRetain();
    v13 = sub_1E4205F84();
    v15 = sub_1E3270FC8(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v9, v10, "ClipsTemplateViewController:: failed to refresh view model %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E69143B0](v12, -1, -1);
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v2);
  sub_1E3D83280();
  v16 = OUTLINED_FUNCTION_206();
  *v17 = 4;
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
  return sub_1E42063C4();
}

uint64_t sub_1E3D83B68()
{
  OUTLINED_FUNCTION_27_2();
  *(v1 + 545) = v13;
  *(v1 + 376) = v2;
  *(v1 + 384) = v0;
  *(v1 + 544) = v3;
  *(v1 + 360) = v4;
  *(v1 + 368) = v5;
  *(v1 + 344) = v6;
  *(v1 + 352) = v7;
  *(v1 + 328) = v8;
  *(v1 + 336) = v9;
  *(v1 + 392) = swift_getObjectType();
  *(v1 + 400) = sub_1E4206434();
  *(v1 + 408) = sub_1E4206424();
  v10 = swift_task_alloc();
  *(v1 + 416) = v10;
  *v10 = v1;
  v10[1] = sub_1E3D83C54;

  return sub_1E3D82DD4();
}

uint64_t sub_1E3D83C54(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *v5 = *v2;
  v4[53] = v1;

  if (v1)
  {
    v6 = sub_1E42063B4();
    v8 = v7;
    v9 = sub_1E3D84B64;
    v10 = v6;
    v11 = v8;
  }

  else
  {
    v4[54] = a1;
    v12 = sub_1E42063B4();
    v11 = v13;
    v4[55] = v12;
    v4[56] = v13;
    v9 = sub_1E3D83DDC;
    v10 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3D83DDC()
{
  sub_1E388A9D0(*(v0 + 432), *(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 544) & 1, *(v0 + 376), *(v0 + 545) & 1, (v0 + 64));

  v1 = *(v0 + 64);
  *(v0 + 456) = v1;
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  *(v0 + 472) = *(v0 + 80);
  *(v0 + 480) = v2;
  if (!v1)
  {

    sub_1E3D84C60();
    OUTLINED_FUNCTION_206();
    *v10 = 0;
    swift_willThrow();
LABEL_23:
    OUTLINED_FUNCTION_54();
    goto LABEL_24;
  }

  *(v0 + 304) = v3;
  OUTLINED_FUNCTION_8();
  v5 = *(v4 + 1160);

  v6 = sub_1E3D84CB4(v0 + 64, v0 + 112);
  v7 = v5(v6);
  if (!v7)
  {
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_8;
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_10_119();
  sub_1E3277E60(v9, 0xE90000000000006ELL, v8, (v0 + 208));

  if (!*(v0 + 232))
  {
LABEL_8:
    sub_1E325F7A8(v0 + 208, &unk_1ECF296E0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    *(v0 + 272) = 0;
    *(v0 + 280) = 0;
  }

  OUTLINED_FUNCTION_8();
  (*(v11 + 1328))(0);
  OUTLINED_FUNCTION_8();
  v12 += 130;
  v13 = *v12;
  *(v0 + 488) = *v12;
  *(v0 + 496) = v12 & 0xFFFFFFFFFFFFLL | 0x53CC000000000000;
  v14 = v13();

  if (!v14)
  {

LABEL_21:

    sub_1E3D84C60();
    v35 = OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_8_137(v35, v36);
    sub_1E325F7A8(v0 + 64, &qword_1ECF38268);
LABEL_22:

    goto LABEL_23;
  }

  result = sub_1E32AE9B0(v14);
  if (!result)
  {

    goto LABEL_21;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1E6911E60](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  *(v0 + 504) = v16;

  if (!*(v0 + 280) || (v17 = *(v0 + 480), OUTLINED_FUNCTION_8(), *(v0 + 320) = (*(v18 + 872))(), v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8), sub_1E3798394(), v20 = sub_1E41491E0(v19), , v17 < v20))
  {
    v21 = *(v0 + 480);

    OUTLINED_FUNCTION_8();
    *(v0 + 312) = (*(v22 + 872))();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
    sub_1E3798394();
    v24 = sub_1E41491E0(v23);

    if (v21 < v24)
    {
      v26 = *(v0 + 472);
      v25 = *(v0 + 480);
      v28 = *(v0 + 456);
      v27 = *(v0 + 464);
      v29 = *(v0 + 384);
      v30 = *(v0 + 328);
      sub_1E325F7A8(v0 + 64, &qword_1ECF38268);

      v31 = *(v29 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType);
      v32 = *(v0 + 304);
      v33 = *(v0 + 272);
      *v30 = v28;
      *(v30 + 8) = v27;
      *(v30 + 16) = v26;
      *(v30 + 24) = v31;
      *(v30 + 32) = v25;
      *(v30 + 40) = v32;
      *(v30 + 48) = v33;
      OUTLINED_FUNCTION_54();
LABEL_24:

      return v34();
    }

    sub_1E3D84C60();
    OUTLINED_FUNCTION_206();
    *v37 = 2;
    swift_willThrow();
    sub_1E325F7A8(v0 + 64, &qword_1ECF38268);

    goto LABEL_22;
  }

  *(v0 + 512) = *(v0 + 280);

  v38 = swift_task_alloc();
  *(v0 + 520) = v38;
  *v38 = v0;
  OUTLINED_FUNCTION_0_231(v38);

  return sub_1E3D82DD4();
}

uint64_t sub_1E3D84304()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v4[66] = v0;

  if (v0)
  {

    v6 = v4[55];
    v7 = v4[56];
    v8 = sub_1E3D84BC0;
  }

  else
  {
    v4[67] = v3;
    v6 = v4[55];
    v7 = v4[56];
    v8 = sub_1E3D84444;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E3D84444()
{
  v1 = v0 + 16;
  sub_1E388A9D0(*(v0 + 536), *(v0 + 480), *(v0 + 360), *(v0 + 368), *(v0 + 544) & 1, *(v0 + 376), *(v0 + 545) & 1, (v0 + 16));

  v2 = *(v0 + 16);
  if (!v2)
  {

LABEL_20:

    sub_1E3D84C60();
    v14 = OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_8_137(v14, v15);
    sub_1E325F7A8(v0 + 64, &qword_1ECF38268);
    goto LABEL_21;
  }

  v3 = *(*v2 + 1040);
  v4 = *v2 + 1040;

  v5 = sub_1E3D84CB4(v0 + 16, v0 + 160);
  v6 = v3(v5);

  if (!v6)
  {
LABEL_17:

    goto LABEL_20;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!sub_1E4207384())
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1E6911E60](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_27:
      result = sub_1E4207384();
      if (result)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }

    v8 = *(v6 + 32);
  }

  v7 = (*(*v8 + 872))(v9);

  if (!v7)
  {
    goto LABEL_17;
  }

  v11 = (*(v0 + 488))(v10);
  if (!v11)
  {
LABEL_29:

    goto LABEL_30;
  }

  v6 = v11;
  v4 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    goto LABEL_27;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_12:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1E6911E60](0, v6);
  }

  else
  {
    if (!*(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v13 = *(v6 + 32);
  }

  (*(*v13 + 1016))(v7);

LABEL_30:

  sub_1E379738C(v17);
  v18 = *(*v2 + 1160);

  v20 = v18(v19);

  if (!v20)
  {
    sub_1E325F7A8(v0 + 16, &qword_1ECF38268);

    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
LABEL_39:
    sub_1E325F7A8(v0 + 240, &unk_1ECF296E0);
    v25 = 0;
    v26 = 0;
    goto LABEL_40;
  }

  if (*(v20 + 16) && (v21 = OUTLINED_FUNCTION_10_119(), v22 = sub_1E327D33C(v21, 0xE90000000000006ELL), (v23 & 1) != 0))
  {
    sub_1E328438C(*(v20 + 56) + 32 * v22, v0 + 240);
  }

  else
  {
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
  }

  sub_1E325F7A8(v0 + 16, &qword_1ECF38268);
  if (!*(v0 + 264))
  {
    goto LABEL_39;
  }

  v24 = swift_dynamicCast();
  v25 = *(v0 + 288);
  v26 = *(v0 + 296);
  if (!v24)
  {
    v25 = 0;
    v26 = 0;
  }

LABEL_40:
  *(v0 + 272) = v25;
  *(v0 + 280) = v26;

  if (!*(v0 + 280) || (v27 = *(v0 + 480), OUTLINED_FUNCTION_8(), *(v0 + 320) = (*(v28 + 872))(), v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8), sub_1E3798394(), v30 = sub_1E41491E0(v29), , v27 < v30))
  {
    v31 = *(v0 + 480);

    OUTLINED_FUNCTION_8();
    *(v0 + 312) = (*(v32 + 872))();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
    sub_1E3798394();
    v34 = sub_1E41491E0(v33);

    if (v31 < v34)
    {
      v36 = *(v0 + 472);
      v35 = *(v0 + 480);
      v38 = *(v0 + 456);
      v37 = *(v0 + 464);
      v39 = *(v0 + 384);
      v40 = *(v0 + 328);
      sub_1E325F7A8(v0 + 64, &qword_1ECF38268);

      v41 = *(v39 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType);
      v42 = *(v0 + 304);
      v43 = *(v0 + 272);
      *v40 = v38;
      *(v40 + 8) = v37;
      *(v40 + 16) = v36;
      *(v40 + 24) = v41;
      *(v40 + 32) = v35;
      *(v40 + 40) = v42;
      *(v40 + 48) = v43;
      OUTLINED_FUNCTION_54();
      goto LABEL_22;
    }

    sub_1E3D84C60();
    OUTLINED_FUNCTION_206();
    *v44 = 2;
    swift_willThrow();
    v1 = v0 + 64;
LABEL_21:
    sub_1E325F7A8(v1, &qword_1ECF38268);

    OUTLINED_FUNCTION_54();
LABEL_22:

    return v16();
  }

  *(v0 + 512) = *(v0 + 280);

  v45 = swift_task_alloc();
  *(v0 + 520) = v45;
  *v45 = v0;
  OUTLINED_FUNCTION_0_231();

  return sub_1E3D82DD4();
}

uint64_t sub_1E3D84B64()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D84BC0()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E325F7A8(v0 + 64, &qword_1ECF38268);

  OUTLINED_FUNCTION_54();

  return v1();
}

unint64_t sub_1E3D84C60()
{
  result = qword_1ECF38280;
  if (!qword_1ECF38280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38280);
  }

  return result;
}

uint64_t sub_1E3D84CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3D84D28()
{
  result = qword_1ECF38288;
  if (!qword_1ECF38288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38288);
  }

  return result;
}

unint64_t sub_1E3D84D80()
{
  result = qword_1ECF38290;
  if (!qword_1ECF38290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38290);
  }

  return result;
}

_BYTE *sub_1E3D84DD4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1E3D84EAC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_1E3D84F9C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  sub_1E3D834D8(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_1E3D85058(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
  *&v7 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (OUTLINED_FUNCTION_9_127())
  {
    sub_1E384EE08(117);
    sub_1E3277E60(v2, v3, v9, &v7);

    if (v8)
    {
      if (OUTLINED_FUNCTION_9_127())
      {
        *&v7 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
        return sub_1E42063D4();
      }
    }

    else
    {
      sub_1E325F7A8(&v7, &unk_1ECF296E0);
    }
  }

  sub_1E3D83280();
  v5 = OUTLINED_FUNCTION_206();
  *v6 = 3;
  *&v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
  return sub_1E42063C4();
}

uint64_t objectdestroy_17Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E3D85260(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);

  return sub_1E3D83948(a1);
}

unint64_t sub_1E3D852DC()
{
  result = qword_1ECF382A0;
  if (!qword_1ECF382A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF382A0);
  }

  return result;
}

uint64_t sub_1E3D85330(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_60;
  }

  v2 = a2;
  OUTLINED_FUNCTION_26_0();
  v5 = *(v4 + 392);
  v6 = v2;
  v7 = v5();
  if (!v7)
  {
    goto LABEL_60;
  }

  if (*v7 != _TtC8VideosUI21CanonicalFooterLayout)
  {

    goto LABEL_60;
  }

  v8 = (*(*a1 + 464))();
  if (!v8)
  {
    goto LABEL_55;
  }

  v62 = v8;
  v9 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x88);

  v9(v10);
  v11 = v62;
  v12 = v6;
  [v12 vuiBounds];
  CGRectGetWidth(v68);
  v66 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_185();
  v14 = (*(v13 + 152))();
  v15 = sub_1E32AE9B0(v62);
  if (!v15)
  {

LABEL_47:
    OUTLINED_FUNCTION_4_185();
    (*(v51 + 160))();
    LOBYTE(v65) = 13;
    (*(*a1 + 776))(v67, &v65, &unk_1F5D5DAC8, &off_1F5D5C998);
    if (v67[3])
    {
      if (swift_dynamicCast() & 1) != 0 && sub_1E3F36DEC() != 8 && (sub_1E3881E80())
      {
        v52 = [v12 vuiContentView];

        v53 = *sub_1E3E5FACC();
        [v52 setVuiBackgroundColor_];

LABEL_54:
LABEL_55:

        return v2;
      }
    }

    else
    {
      sub_1E325F748(v67, &unk_1ECF296E0);
    }

    v53 = [v12 vuiContentView];

    [v53 setVuiBackgroundColor_];
    goto LABEL_54;
  }

  v61 = v14;
  v64 = v15;
  if (v15 < 1)
  {
    goto LABEL_59;
  }

  v55 = a1;
  v16 = 0;
  v63 = 0;
  v17 = 0;
  v60 = v14 & 0xFFFFFFFFFFFFFF8;
  v56 = v14 + 32;
  v57 = v14 & 0xC000000000000001;
  v59 = v2;
  v58 = v12;
  v18 = v15;
  while (1)
  {
    if ((v62 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1E6911E60](v17, v11);
    }

    else
    {
      v19 = *(v11 + 8 * v17 + 32);
    }

    v20 = v19[49];
    if (v20 != 109)
    {
      if (v20 == 108)
      {
        type metadata accessor for CanonicalFooterFactory();
        OUTLINED_FUNCTION_4_185();
        v22 = (*(v21 + 176))();
        v23 = (*(*v19 + 488))();
        if (v23)
        {
          v24 = v23;
          if (v22)
          {
            v25 = v22;
            v26 = v22;
          }

          else
          {
            type metadata accessor for CanonicalFooterAiringView();
            v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v25 = 0;
          }

          v33 = v25;
          sub_1E3DE9924();
          OUTLINED_FUNCTION_3_177();
          (*(v34 + 112))();
          v35 = sub_1E373E010(17, v24);
          if (v35)
          {
            if (*v35 == _TtC8VideosUI13TextViewModel)
            {
              type metadata accessor for UIFactory();
              OUTLINED_FUNCTION_3_177();
              v37 = *(v36 + 128);

              v39 = v37(v38);
              sub_1E3280A90(0, &qword_1EE23AD40);
              v40 = OUTLINED_FUNCTION_5_165();
              v42 = sub_1E393D92C(v40, v39, v41, 0);

              sub_1E325F748(v67, &qword_1ECF296C0);
              OUTLINED_FUNCTION_3_177();
              (*(v43 + 136))(v42);
            }
          }

          type metadata accessor for UIFactory();
          sub_1E373E010(39, v24);

          OUTLINED_FUNCTION_3_177();
          v45 = (*(v44 + 152))();
          sub_1E3280A90(0, &qword_1EE23B360);
          v46 = OUTLINED_FUNCTION_5_165();
          v48 = sub_1E393D92C(v46, v45, v47, 0);

          sub_1E325F748(v67, &qword_1ECF296C0);
          OUTLINED_FUNCTION_3_177();
          (*(v49 + 160))(v48);
          v12 = v58;
          v2 = v59;
        }

        else
        {
          v26 = 0;
        }

        OUTLINED_FUNCTION_4_185();
        (*(v50 + 184))(v26);

        v11 = v62;
LABEL_41:
        v18 = v64;
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    if (v61 && (v61 >> 62 ? (v27 = sub_1E4207384()) : (v27 = *(v60 + 16)), v16 = v63, v63 < v27))
    {
      if (v57)
      {

        v28 = MEMORY[0x1E6911E60](v63, v61);
      }

      else
      {
        if (v63 < 0)
        {
          goto LABEL_57;
        }

        if (v63 >= *(v60 + 16))
        {
          goto LABEL_58;
        }

        v28 = *(v56 + 8 * v63);
      }
    }

    else
    {
      v28 = 0;
    }

    if (__OFADD__(v16++, 1))
    {
      break;
    }

    type metadata accessor for CanonicalFooterFactory();
    v30 = sub_1E3DE998C();
    v31 = sub_1E3D85BF4(v19, v30, v28);

    if (v31)
    {
      v32 = v31;
      MEMORY[0x1E6910BF0]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v63 = v16;
      goto LABEL_41;
    }

    v63 = v16;
LABEL_42:
    if (v18 == ++v17)
    {

      a1 = v55;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

unint64_t sub_1E3D85BF4(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_26_0();
  v6 = (*(v5 + 464))();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    type metadata accessor for CanonicalFooterSectionView();
    v8 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x118);
  v10 = a3;
  v9(a2);
  v11 = MEMORY[0x1E69E7CC0];
  v103 = MEMORY[0x1E69E7CC0];
  result = sub_1E32AE9B0(v7);
  if (!result)
  {
LABEL_103:

    OUTLINED_FUNCTION_0_96();
    (*(v90 + 208))(v11);
    return v8;
  }

  v13 = result;
  v14 = 0;
  v15 = v7 & 0xC000000000000001;
  v94 = v7 & 0xFFFFFFFFFFFFFF8;
  v91 = v7;
  v92 = v8;
  v96 = v7 & 0xC000000000000001;
  v97 = result;
  while (1)
  {
    if (v15)
    {
      result = MEMORY[0x1E6911E60](v14, v7);
    }

    else
    {
      if (v14 >= *(v94 + 16))
      {
        goto LABEL_106;
      }
    }

    if (__OFADD__(v14++, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v17 = *(result + 98);
    if (v17 == 112)
    {
      OUTLINED_FUNCTION_26_0();
      v34 = (*(v33 + 488))();
      if (v34)
      {
        v35 = v34;
        if (*(v34 + 16) && ((sub_1E3740AE8(9), (v36 & 1) != 0) || *(v35 + 16) && (sub_1E3740AE8(4), (v37 & 1) != 0)))
        {

          type metadata accessor for UIFactory();
          OUTLINED_FUNCTION_0_96();
          v39 = *(v38 + 176);

          v41 = v39(v40);
          v13 = v97;
          v42 = v41;
          sub_1E3280A90(0, &qword_1EE23AE80);
          v43 = OUTLINED_FUNCTION_0_232();
          v45 = sub_1E393D92C(v43, v42, v44, 0);

          sub_1E325F748(v102, &qword_1ECF296C0);
          OUTLINED_FUNCTION_0_96();
          (*(v46 + 184))(v45);
          v15 = v96;
        }

        else
        {
        }
      }

      goto LABEL_41;
    }

    if (v17 == 111)
    {
      break;
    }

    if (v17 == 110)
    {
      OUTLINED_FUNCTION_26_0();
      v19 = (*(v18 + 488))();
      if (v19)
      {
        v99 = v11;
        if (*(v19 + 16))
        {
          v20 = v7;
          sub_1E3740AE8(23);
          if (v21)
          {
            v22 = v14;

LABEL_59:
            type metadata accessor for UIFactory();
            OUTLINED_FUNCTION_0_96();
            v56 = (*(v55 + 152))();
            sub_1E3280A90(0, &qword_1EE23AD40);
            v57 = OUTLINED_FUNCTION_0_232();
            v59 = sub_1E393D92C(v57, v56, v58, 0);

            sub_1E325F748(v102, &qword_1ECF296C0);
            OUTLINED_FUNCTION_0_96();
            (*(v60 + 160))(v59);

            v14 = v22;
            v15 = v96;
            v7 = v20;
            v11 = v99;
            goto LABEL_97;
          }
        }

        else
        {
          v20 = v7;
        }

        v22 = v14;

        goto LABEL_59;
      }
    }

LABEL_41:

LABEL_97:
    if (v14 == v13)
    {
      goto LABEL_103;
    }
  }

  v95 = v14;
  v23 = result;
  if (v11 >> 62)
  {
    v24 = sub_1E4207384();
  }

  else
  {
    v24 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  OUTLINED_FUNCTION_0_96();
  v26 = *(v25 + 200);
  v27 = v26();
  if (!v27)
  {
LABEL_44:
    type metadata accessor for CanonicalFooterSectionView.ItemViewModel();
    v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v32 = 0;
    v13 = v97;
    goto LABEL_45;
  }

  v28 = v27;
  result = v26();
  if (!result)
  {
    if (v24 < 0)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

  if (result >> 62)
  {
    v29 = sub_1E4207384();
  }

  else
  {
    v29 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 >= v29)
  {
LABEL_43:

    goto LABEL_44;
  }

LABEL_27:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x1E6911E60](v24, v28);
    v13 = v97;
  }

  else
  {
    v13 = v97;
    if (v24 < 0)
    {
      goto LABEL_108;
    }

    if (v24 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_109;
    }

    v30 = *(v28 + 8 * v24 + 32);
  }

  v31 = v30;
  v32 = v31;
LABEL_45:
  v101 = MEMORY[0x1E69E7CC0];
  v47 = (*(*v23 + 464))();
  if (!v47)
  {
    goto LABEL_94;
  }

  v48 = v47;
  v49 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v50 = sub_1E4207384();
  }

  else
  {
    v50 = 0;
  }

  OUTLINED_FUNCTION_7_0();
  result = (*(v51 + 120))();
  if (!result)
  {
LABEL_61:
    v100 = 0;
    goto LABEL_62;
  }

  v52 = result;
  v53 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v50 >= result)
  {

    goto LABEL_61;
  }

  if ((v52 & 0xC000000000000001) != 0)
  {
    v54 = MEMORY[0x1E6911E60](v50, v52);
  }

  else
  {
    if (v50 < 0)
    {
      goto LABEL_110;
    }

    if (v50 >= *(v53 + 16))
    {
      goto LABEL_111;
    }

    v54 = *(v52 + 8 * v50 + 32);
  }

  v100 = v54;

LABEL_62:
  v93 = v32;
  if (!(v48 >> 62))
  {
    v61 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_64;
    }

LABEL_92:
    v98 = v49;
LABEL_93:

    OUTLINED_FUNCTION_7_0();
    (*(v88 + 128))(v98);

    v7 = v91;
    v8 = v92;
    v13 = v97;
    v32 = v93;
LABEL_94:
    v89 = v31;
    MEMORY[0x1E6910BF0]();
    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();

    v11 = v103;
    v14 = v95;
    v15 = v96;
    goto LABEL_97;
  }

  result = sub_1E4207384();
  v61 = result;
  if (!result)
  {
    goto LABEL_92;
  }

LABEL_64:
  if (v61 >= 1)
  {
    v62 = 0;
    v98 = v49;
    while (1)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x1E6911E60](v62, v48);
      }

      else
      {
        v63 = *(v48 + 8 * v62 + 32);
      }

      v64 = *(v63 + 98);
      switch(v64)
      {
        case 4:
        case 9:
          type metadata accessor for UIFactory();
          sub_1E3280A90(0, &qword_1EE23AE80);
          v75 = OUTLINED_FUNCTION_0_232();
          v77 = sub_1E393D92C(v75, v100, v76, 0);
          sub_1E325F748(v102, &qword_1ECF296C0);
          if (v77)
          {
            v78 = v77;
            MEMORY[0x1E6910BF0]();
            if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();

            v98 = v101;
            goto LABEL_87;
          }

          break;
        case 23:
          type metadata accessor for UIFactory();
          OUTLINED_FUNCTION_7_0();
          v80 = *(v79 + 96);

          v82 = v80(v81);
          sub_1E3280A90(0, &qword_1EE23AE80);
          v83 = OUTLINED_FUNCTION_0_232();
          v85 = sub_1E393D92C(v83, v82, v84, 0);

          sub_1E325F748(v102, &qword_1ECF296C0);
          OUTLINED_FUNCTION_7_0();
          (*(v86 + 104))(v85);
          break;
        case 39:
          type metadata accessor for UIFactory();
          OUTLINED_FUNCTION_7_0();
          v67 = *(v66 + 96);

          v69 = v67(v68);
          sub_1E3280A90(0, &qword_1EE23AE80);
          v70 = OUTLINED_FUNCTION_0_232();
          v72 = sub_1E393D92C(v70, v69, v71, 0);

          sub_1E325F748(v102, &qword_1ECF296C0);
          if (v72)
          {
            objc_opt_self();
            v73 = swift_dynamicCastObjCClass();
            if (v73)
            {
              v74 = v72;
              [v73 setAdjustsLocalImageForContentSizeCategory_];
            }

            else
            {
            }
          }

          else
          {
            v73 = 0;
          }

          OUTLINED_FUNCTION_7_0();
          (*(v87 + 104))(v73);

          goto LABEL_87;
      }

LABEL_87:
      if (v61 == ++v62)
      {
        goto LABEL_93;
      }
    }
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
  return result;
}

uint64_t sub_1E3D86704()
{
  v0 = type metadata accessor for TextLayout();
  sub_1E383BCC0();
  OUTLINED_FUNCTION_30();
  (*(v1 + 2056))(0, 0);
  (*(*v0 + 1984))(4);

  v2 = *sub_1E3E5FD88();
  v3 = *(*v0 + 680);
  v4 = v2;
  v3(v2);

  v59[0] = 17;
  LOBYTE(v86) = 17;
  LOBYTE(v81) = 15;
  LOBYTE(v76) = 3;
  LOBYTE(v71) = 17;
  v5 = sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_0_233(v5, v6, v7, v8, v9, v10, v11, v12, *v59, *&v59[8], *&v59[16], *&v59[24], *&v59[32], *&v59[40], *&v59[48], *&v59[56], *&v59[64], *&v59[72], *&v59[80], *&v59[88], *&v59[96], *&v59[104], *&v59[112], *&v59[120], *&v59[128], *&v59[136], *&v59[144], *&v59[152], *&v59[160], *&v59[168], *&v59[176], *&v59[184], *&v59[192], *&v59[200], *&v59[208], *&v59[216], *&v59[224], *&v59[232], v65, *(&v60 + 1), v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  *v59 = __src[0];
  *&v59[4] = __src[1];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v14 = *(v13 + 1600);
  v23 = OUTLINED_FUNCTION_30_3(v15, v16, v17, v18, v19, v20, v21, v22, *v59);
  v14(v23, 48);
  sub_1E3952C88();
  *v59 = v24;
  *&v59[8] = v25;
  *&v59[16] = v26;
  *&v59[24] = v27;
  v59[32] = 0;
  sub_1E3952C88();
  v86 = v28;
  v87 = v29;
  v88 = v30;
  v89 = v31;
  v90 = 0;
  sub_1E3952C88();
  v81 = v32;
  v82 = v33;
  v83 = v34;
  v84 = v35;
  v85 = 0;
  sub_1E3952C88();
  v76 = v36;
  v77 = v37;
  v78 = v38;
  v79 = v39;
  LOBYTE(v80) = 0;
  sub_1E3952C88();
  OUTLINED_FUNCTION_8_138();
  v41 = sub_1E3C3DE00(v40);
  LOBYTE(v63) = v69;
  OUTLINED_FUNCTION_0_233(v41, v42, v43, v44, v45, v46, v47, v48, *v59, *&v59[8], *&v59[16], *&v59[24], *&v59[32], *&v59[40], *&v59[48], *&v59[56], *&v59[64], *&v59[72], *&v59[80], *&v59[88], *&v59[96], *&v59[104], *&v59[112], *&v59[120], *&v59[128], *&v59[136], *&v59[144], *&v59[152], *&v59[160], *&v59[168], *&v59[176], *&v59[184], *&v59[192], *&v59[200], *&v59[208], *&v59[216], *&v59[224], *&v59[232], v65, v66, v67, v68, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  memcpy(v59, __src, 0xE9uLL);
  v49 = OUTLINED_FUNCTION_18();
  v57 = OUTLINED_FUNCTION_30_3(v49, v50, v51, v52, v53, v54, v55, v56, *v59);
  v14(v57, 0);
  return v0;
}

uint64_t sub_1E3D8695C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ScoreRowLayout();
    OUTLINED_FUNCTION_3_139();
    swift_allocObject();
    v1 = sub_1E3D86AF0();
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3D869CC()
{
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  return sub_1E3D86AF0();
}

uint64_t sub_1E3D869FC()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = sub_1E3D86704();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3D86A58()
{
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  return sub_1E3D86A88();
}

uint64_t sub_1E3D86A88()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  v2 = sub_1E3D8695C();
  sub_1E3C37CBC(v2, 235);

  v3 = sub_1E3D869FC();
  sub_1E3C37CBC(v3, 4);

  return v1;
}

uint64_t sub_1E3D86AF0()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3D86BC8();
  v2 = sub_1E3D870B4();
  v3 = (*(*v1 + 1704))(v2);
  sub_1E3C37CBC(v3, 236);

  v5 = (*(*v1 + 1728))(v4);
  sub_1E3C37CBC(v5, 237);

  return v1;
}

uint64_t sub_1E3D86BC8()
{
  v1 = (*v0 + 1704);
  v2 = *v1;
  (*v1)();
  OUTLINED_FUNCTION_30();
  (*(v3 + 1696))(1);

  (v2)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1984))(4);

  (v2)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 1792))(10);

  v9 = (v2)(v8);
  v10 = *sub_1E3E5FD88();
  v11 = *(*v9 + 680);
  v12 = v10;
  v11(v10);

  (v2)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 2056))(1, 0);

  (v2)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 2080))(1, 0);

  (v2)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 2104))(0, 0);

  (v2)(v19);
  v20 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v89 = v94;
  LOBYTE(v90) = v95;
  sub_1E3C2FC98();
  v79 = v84;
  LOBYTE(v80) = v85;
  sub_1E3C3DE00(v20);
  v69 = v73;
  v70 = v74;
  sub_1E3C3DE00(v20);
  v104 = v106;
  v105 = v107;
  sub_1E3C3DE00(v20);
  v100 = v102;
  v101 = v103;
  sub_1E3C2FCB8(&v89, __src);
  memcpy(v68, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v29 = OUTLINED_FUNCTION_30_3(v21, v22, v23, v24, v25, v26, v27, v28, *v68);
  v30(v29, 65);

  (v2)(v31);
  sub_1E3952C88();
  *v68 = v32;
  *&v68[8] = v33;
  *&v68[16] = v34;
  *&v68[24] = v35;
  v68[32] = 0;
  sub_1E3952C88();
  v94 = v36;
  v95 = v37;
  v96 = v38;
  v97 = v39;
  v98 = 0;
  sub_1E3952C88();
  v89 = v40;
  v90 = v41;
  v91 = v42;
  v92 = v43;
  v93 = 0;
  sub_1E3952C88();
  v84 = v44;
  v85 = v45;
  v86 = v46;
  v87 = v47;
  LOBYTE(v88) = 0;
  sub_1E3952C88();
  OUTLINED_FUNCTION_8_138();
  v49 = sub_1E3C3DE00(v48);
  LOBYTE(v71) = v77;
  OUTLINED_FUNCTION_0_233(v49, v50, v51, v52, v53, v54, v55, v56, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], *&v68[184], *&v68[192], *&v68[200], *&v68[208], *&v68[216], *&v68[224], *&v68[232], v73, v74, v75, v76, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  memcpy(v68, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v65 = OUTLINED_FUNCTION_30_3(v57, v58, v59, v60, v61, v62, v63, v64, *v68);
  v66(v65, 0);
}

uint64_t sub_1E3D870B4()
{
  [(*(*v0 + 1704))() copyWithZone_];

  sub_1E4207264();
  swift_unknownObjectRelease();
  type metadata accessor for TextLayout();
  v1 = swift_dynamicCast();
  if (v1)
  {
    v0[14] = v11;
  }

  v2 = (*v0 + 1728);
  v3 = *v2;
  (*v2)(v1);
  OUTLINED_FUNCTION_30();
  (*(v4 + 1792))(0);

  v3(v5);
  if ([objc_opt_self() isAXLargeEnabled_])
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  LOBYTE(v11) = v6;
  v10[3] = 2;
  v10[2] = 2;
  sub_1E3C3DE00(&unk_1F5D54CA8);
  v10[0] = v10[1];
  sub_1E3C3DE00(&unk_1F5D54CA8);
  sub_1E3C3DE00(&unk_1F5D54CA8);
  sub_1E3C2FCB8(v10, &v12);
  LODWORD(v11) = v12;
  WORD2(v11) = v13;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v7 + 1600))(&v11, 59, v8 & 1, &unk_1F5D54CA8);
}

uint64_t sub_1E3D873F8@<X0>(uint64_t a1@<X0>, const void *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SportsScoreboardPostGameView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[6]) = a1;
  memcpy(a3 + v6[7], a2, 0xC3uLL);
  v8 = (a3 + v6[8]);

  sub_1E3743538(a2, &v14, &qword_1ECF28C28);
  type metadata accessor for SportsScoreboardLayout();
  OUTLINED_FUNCTION_0_234();
  sub_1E3D88C88(v9, v10);

  *v8 = sub_1E42010C4();
  v8[1] = v11;
  v12 = sub_1E39DF25C();
  sub_1E325F6F0(a2, &qword_1ECF28C28);

  *(a3 + v6[9]) = v12;
  return result;
}

void *sub_1E3D87590@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382A8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &__src[-v4];
  *v5 = *sub_1E41F0A04();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382B0);
  sub_1E3D876AC(v1, &v5[*(v6 + 44)]);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_21_1();
  sub_1E3741EA0(v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382B8);
  return memcpy((a1 + *(v10 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3D876AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v4);
  v121 = (&v100 - v5);
  v116 = type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_3();
  v105 = v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v120 = &v100 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v100 - v11;
  v13 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v100 - v21;
  v117 = type metadata accessor for SportsScoreboardCompetitorView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_3();
  v107 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382F0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v100 - v29;
  v30 = type metadata accessor for SportsScoreboardPostGameView(0);
  v31 = *(a1 + *(v30 + 24));
  v32 = sub_1E3827278();
  v33 = *(a1 + *(v30 + 32) + 8);

  v122 = v33;

  v101 = sub_1E38266E4();
  v106 = v30;
  v111 = a1;
  sub_1E374709C(v22);
  v34 = *MEMORY[0x1E697E7D0];
  v35 = *(v15 + 104);
  v104 = v15 + 104;
  v103 = v35;
  v35(v19, v34, v13);
  v36 = sub_1E4201314();
  v37 = *(v15 + 8);
  v37(v19, v13);
  v109 = v13;
  v108 = v15 + 8;
  v102 = v37;
  v38 = (v37)(v22, v13);
  v100 = v12;
  if (v32)
  {
    sub_1E3B29758(v38);

    v39 = v107;
    OUTLINED_FUNCTION_21_1();
    sub_1E3B297BC(v40, v41, v101, v42, 1, v43);
    sub_1E3D88CD0(v39, v120, type metadata accessor for SportsScoreboardCompetitorView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_179();
    sub_1E3D88C88(v44, v45);
    OUTLINED_FUNCTION_1_211();
    sub_1E3D88C88(v46, v47);
    v48 = v105;
    sub_1E4201F44();
    sub_1E3D88D2C(v39, type metadata accessor for SportsScoreboardCompetitorView);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v50 = v105;
    *v105 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
    swift_storeEnumTagMultiPayload();
    v51 = v116;
    *(v50 + *(v116 + 20)) = v31;
    v52 = (v50 + v51[6]);
    type metadata accessor for SportsScoreboardLayout();
    OUTLINED_FUNCTION_0_234();
    sub_1E3D88C88(v53, v54);
    v55 = v120;

    *v52 = sub_1E42010C4();
    v52[1] = v56;
    *(v50 + v51[7]) = v101;
    *(v50 + v51[8]) = v36 & 1;
    sub_1E3D88CD0(v50, v55, type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_179();
    sub_1E3D88C88(v57, v58);
    OUTLINED_FUNCTION_1_211();
    sub_1E3D88C88(v59, v60);
    v48 = v50;
    sub_1E4201F44();
    sub_1E3D88D2C(v50, type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores);
    v39 = v107;
  }

  v61 = v121;
  sub_1E41EEC10(v31, v122, v121);
  v62 = sub_1E41F0A04();
  v63 = (v61 + *(v110 + 36));
  *v63 = *v62;
  v63[1] = sub_1E374A0BC;
  v63[2] = 0;
  v64 = sub_1E3827278();

  v65 = sub_1E38266EC();
  sub_1E374709C(v22);
  v66 = v109;
  v103(v19, *MEMORY[0x1E697E7D8], v109);
  v67 = sub_1E4201314();
  v68 = v19;
  v69 = v102;
  v102(v68, v66);
  v70 = v69(v22, v66);
  if (v64)
  {
    v71 = v100;
    sub_1E3B29758(v70);
    sub_1E3B297BC(v71, v31, v65, v67 & 1, 1, v39);
    v72 = type metadata accessor for SportsScoreboardCompetitorView;
    sub_1E3D88CD0(v39, v120, type metadata accessor for SportsScoreboardCompetitorView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_179();
    sub_1E3D88C88(v73, v74);
    OUTLINED_FUNCTION_1_211();
    sub_1E3D88C88(v75, v76);
    OUTLINED_FUNCTION_14_125();
    sub_1E4201F44();
    v77 = v39;
  }

  else
  {
    *v48 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
    swift_storeEnumTagMultiPayload();
    v78 = v116;
    *(v48 + *(v116 + 20)) = v31;
    v79 = (v48 + v78[6]);
    type metadata accessor for SportsScoreboardLayout();
    OUTLINED_FUNCTION_0_234();
    sub_1E3D88C88(v80, v81);
    *v79 = sub_1E42010C4();
    v79[1] = v82;
    *(v48 + v78[7]) = v65;
    *(v48 + v78[8]) = v67 & 1;
    v72 = type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores;
    sub_1E3D88CD0(v48, v120, type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_179();
    sub_1E3D88C88(v83, v84);
    OUTLINED_FUNCTION_1_211();
    sub_1E3D88C88(v85, v86);
    OUTLINED_FUNCTION_14_125();
    sub_1E4201F44();
    v77 = v48;
  }

  sub_1E3D88D2C(v77, v72);
  v129 = 0;
  v130 = 0;
  v131[0] = &v129;
  v87 = v113;
  sub_1E3743538(v119, v113, &qword_1ECF382F0);
  v127 = 0;
  v128 = 0;
  v131[1] = v87;
  v131[2] = &v127;
  v88 = v121;
  v89 = v115;
  sub_1E3743538(v121, v115, &qword_1ECF28D70);
  v125 = 0;
  v126 = 0;
  v131[3] = v89;
  v131[4] = &v125;
  v90 = v112;
  sub_1E3743538(v22, v112, &qword_1ECF382F0);
  v123 = 0;
  v124 = 0;
  v131[5] = v90;
  v131[6] = &v123;
  sub_1E3D881A8(v131, v114);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v91, v92);
  sub_1E325F6F0(v88, &qword_1ECF28D70);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v93, v94);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v95, v96);
  sub_1E325F6F0(v89, &qword_1ECF28D70);
  OUTLINED_FUNCTION_21_1();
  return sub_1E325F6F0(v97, v98);
}

uint64_t sub_1E3D881A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382F8);
  sub_1E3743538(*(a1 + 8), a2 + v5[12], &qword_1ECF382F0);
  v6 = a2 + v5[16];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v6 = v9;
  *(v6 + 8) = v8;
  sub_1E3743538(v7, a2 + v5[20], &qword_1ECF28D70);
  v10 = a2 + v5[24];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v10 = v13;
  *(v10 + 8) = v12;
  result = sub_1E3743538(v11, a2 + v5[28], &qword_1ECF382F0);
  v15 = a2 + v5[32];
  v16 = *(a1 + 48);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v15 = v17;
  *(v15 + 8) = v16;
  return result;
}

void *sub_1E3D882B8@<X0>(uint64_t a1@<X8>)
{
  v34 = sub_1E4201B84();
  v39 = 0;
  v3 = type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores(0);
  v4 = *(v1 + *(v3 + 32));
  if (v4 == 1)
  {
    v5 = *(v1 + *(v3 + 20));

    OUTLINED_FUNCTION_18();
    sub_1E3AC5824();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    OUTLINED_FUNCTION_20_86();
    swift_beginAccess();
    v12 = *(**(v5 + 288) + 176);

    v12(v49, v13);

    v1 = sub_1E4203DA4();
    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_64_3();
    v35[0] = 0;
    memcpy(&v43[7], __src, 0x70uLL);
    v40[0] = v7;
    v40[1] = v9;
    LOBYTE(v40[2]) = v11 & 1;
    v40[3] = 0;
    LOBYTE(v40[4]) = 0;
    memcpy(&v40[4] + 1, v43, 0x77uLL);
    nullsub_1(v14, v15);
    memcpy(__dst, v40, 0x98uLL);
  }

  else
  {
    sub_1E3D88C50(__dst);
  }

  v18 = nullsub_1(v16, v17);
  v20 = v19;
  v21 = *sub_1E41F0A04();
  if (v4)
  {
    sub_1E3D88C60(v48);
  }

  else
  {
    OUTLINED_FUNCTION_20_86();
    swift_beginAccess();
    v22 = *(**(v1 + 288) + 176);

    v22(&v51, v23);

    sub_1E4203DA4();
    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_64_3();
    memcpy(&v47[7], v52, 0x70uLL);

    OUTLINED_FUNCTION_18();
    sub_1E3AC5824();
    v25 = v24;
    v27 = v26;
    v29 = v28 & 1;
    v40[0] = 0;
    LOBYTE(v40[1]) = 0;
    memcpy(&v40[1] + 1, v47, 0x77uLL);
    v40[16] = v25;
    v40[17] = v27;
    LOBYTE(v40[18]) = v29;
    nullsub_1(v30, v31);
    memcpy(v48, v40, 0x91uLL);
  }

  memcpy(v44, __dst, sizeof(v44));
  memcpy(v46, v48, 0x91uLL);
  memcpy(v35, __dst, 0x98uLL);
  memcpy(v45, v48, 0x91uLL);
  memcpy(v37, __dst, sizeof(v37));
  memcpy(v36, v48, sizeof(v36));
  sub_1E3743538(v35, v40, &qword_1ECF382D8);

  sub_1E3743538(v45, v40, &qword_1ECF382E0);
  sub_1E325F6F0(v46, &qword_1ECF382E0);

  memcpy(v40, v44, 0x98uLL);
  sub_1E325F6F0(v40, &qword_1ECF382D8);
  memcpy(v40, v37, 0x98uLL);
  v40[19] = v18;
  v40[20] = v20;
  v40[21] = v21;
  v40[22] = sub_1E374AE08;
  v40[23] = 0;
  memcpy(&v40[24], v36, 0x91uLL);
  memcpy(__dst, v37, 0x98uLL);
  __dst[19] = v18;
  __dst[20] = v20;
  __dst[21] = v21;
  __dst[22] = sub_1E374AE08;
  __dst[23] = 0;
  memcpy(v42, v36, sizeof(v42));
  sub_1E3743538(v40, v35, &qword_1ECF382C0);
  sub_1E325F6F0(__dst, &qword_1ECF382C0);
  memcpy(&v38[7], v40, 0x151uLL);
  v32 = v39;
  *a1 = v34;
  *(a1 + 8) = 0;
  *(a1 + 16) = v32;
  return memcpy((a1 + 17), v38, 0x158uLL);
}

void sub_1E3D8889C()
{
  sub_1E3D88AF4(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_5_166();
    sub_1E3D88AF4(319, v1, v2, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      type metadata accessor for ScoreboardViewModel();
      if (v4 <= 0x3F)
      {
        sub_1E374A270();
        if (v5 <= 0x3F)
        {
          sub_1E374A2C0();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3D889E8()
{
  OUTLINED_FUNCTION_5_166();
  sub_1E3D88AF4(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for ScoreboardViewModel();
    if (v3 <= 0x3F)
    {
      sub_1E374A2C0();
      if (v4 <= 0x3F)
      {
        sub_1E3D88AF4(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3D88AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1E3D88B58()
{
  result = qword_1EE2897D0;
  if (!qword_1EE2897D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF382B8);
    sub_1E3D88BFC(&qword_1EE2885B8, &qword_1ECF382A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897D0);
  }

  return result;
}

uint64_t sub_1E3D88BFC(unint64_t *a1, uint64_t *a2)
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

double sub_1E3D88C60(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 1;
  *(a1 + 128) = xmmword_1E42C0270;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_1E3D88C88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3D88CD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3D88D2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3D88D84(char a1)
{
  switch(a1)
  {
    case 4:
      goto LABEL_8;
    default:
      v2 = sub_1E42079A4();

      if (v2)
      {
        return 1;
      }

      if (sub_1E3D88F04(a1) == 0x7974536B63697262 && v3 == 0xEB0000000033656CLL)
      {
LABEL_8:

        return 1;
      }

      else
      {
        v5 = sub_1E42079A4();

        return v5 & 1;
      }
  }
}

uint64_t sub_1E3D88EB8()
{
  v0 = sub_1E4207784();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D88F04(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6C616E6964726FLL;
      break;
    case 2:
      result = 0x7972617262696CLL;
      break;
    case 3:
      result = 0x7974536B63697262;
      break;
    case 4:
      result = 0x7974536B63697262;
      break;
    case 5:
      result = 0x7974536B63697262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3D88FE4(char a1)
{
  sub_1E4207B44();
  sub_1E3D88F04(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D89050()
{
  sub_1E4206014();
}

uint64_t sub_1E3D89158(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D88F04(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D891B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D88EB8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D891E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D88F04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D89214(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 160) = a1;
}

uint64_t sub_1E3D8927C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 168) = a1;
}

uint64_t sub_1E3D892B8()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 176) = v1;
  }

  return v1;
}

uint64_t sub_1E3D8934C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 184) = a1;
}

uint64_t sub_1E3D893B4(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 192) = a1;
}

uint64_t sub_1E3D893F0()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    type metadata accessor for ViewGradientLayout();
    v1 = sub_1E40C3088();
    *(v0 + 208) = v1;
  }

  return v1;
}

uint64_t sub_1E3D89464()
{
  if (!*(v0 + 216))
  {
    v2 = v0;
    type metadata accessor for ViewGradientLayout();
    v1 = sub_1E40C3088();
    (*(*v1 + 1776))(1);
    OUTLINED_FUNCTION_13();
    v4 = *(v3 + 1864);
    v5 = v4();
    if (OUTLINED_FUNCTION_36_53(v5) == 0x746C7561666564 && v6 == 0xE700000000000000)
    {
    }

    else
    {
      v8 = OUTLINED_FUNCTION_38_23();

      if ((v8 & 1) == 0)
      {
        OUTLINED_FUNCTION_34_60();
        v9 = v4();
        if (OUTLINED_FUNCTION_36_53(v9) == v8 && v10 == 0xE700000000000000)
        {
        }

        else
        {
          v12 = OUTLINED_FUNCTION_38_23();

          if ((v12 & 1) == 0)
          {
LABEL_17:
            OUTLINED_FUNCTION_111();
            (*(v27 + 1728))(0, 0, 0);
            OUTLINED_FUNCTION_9_2();
            (*(v28 + 1752))(0, 0x3FF0000000000000, 0);
            *(v2 + 216) = v1;

            goto LABEL_18;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v30 = OUTLINED_FUNCTION_26_11();
        *(v30 + 16) = xmmword_1E42A76D0;
        v31 = [objc_opt_self() blackColor];
        v32 = OUTLINED_FUNCTION_30_65(v31);

        *(v30 + 32) = v32;
        v33 = OUTLINED_FUNCTION_22_65();
        OUTLINED_FUNCTION_18_74();
        v36 = [v34 v35];

        *(v30 + 40) = v36;
        v37 = OUTLINED_FUNCTION_22_65();
        OUTLINED_FUNCTION_18_74();
        v40 = [v38 v39];

        *(v30 + 48) = v40;
        v41 = OUTLINED_FUNCTION_22_65();
        OUTLINED_FUNCTION_18_74();
        v44 = [v42 v43];

        *(v30 + 56) = v44;
        v45 = OUTLINED_FUNCTION_22_65();
        v46 = [v45 colorWithAlphaComponent_];

        *(v30 + 64) = v46;
        (*(*v1 + 1800))(v30);
LABEL_16:
        OUTLINED_FUNCTION_111();
        (*(v26 + 1824))();
        goto LABEL_17;
      }
    }

    v13 = objc_opt_self();
    v14 = [v13 blackColor];
    v48 = [v14 colorWithAlphaComponent_];

    v15 = [v13 blackColor];
    v47 = [v15 colorWithAlphaComponent_];

    v16 = OUTLINED_FUNCTION_33_62();
    v17 = [v16 colorWithAlphaComponent_];

    v18 = OUTLINED_FUNCTION_33_62();
    v19 = [v18 colorWithAlphaComponent_];

    v20 = OUTLINED_FUNCTION_33_62();
    v21 = [v20 colorWithAlphaComponent_];

    v22 = OUTLINED_FUNCTION_33_62();
    v23 = [v22 colorWithAlphaComponent_];

    v24 = OUTLINED_FUNCTION_33_62();
    v25 = [v24 colorWithAlphaComponent_];

    goto LABEL_16;
  }

  v1 = *(v0 + 216);
LABEL_18:

  return v1;
}

uint64_t (*sub_1E3D899BC(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3D89464();
  return sub_1E3D89A04;
}

uint64_t sub_1E3D89A40(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 224) = a1;
}

uint64_t sub_1E3D89AA8(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 232) = a1;
}

uint64_t sub_1E3D89AE4()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 240) = v1;
  }

  return v1;
}

double sub_1E3D89B4C()
{
  if ((*(v0 + 280) & 1) == 0)
  {
    return *(v0 + 248);
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1560))();
  v3 = sub_1E3A24FDC(v2);
  v4 = 8.0;
  *(v0 + 248) = 0x4026000000000000;
  if ((v3 & 1) == 0)
  {
    v4 = 12.0;
  }

  *(v0 + 256) = v4;
  *(v0 + 264) = 0x4026000000000000;
  *(v0 + 272) = v4;
  *(v0 + 280) = 0;
  return 11.0;
}

void sub_1E3D89BD4(double a1, double a2, double a3, double a4)
{
  *(v4 + 248) = a1;
  *(v4 + 256) = a2;
  *(v4 + 264) = a3;
  *(v4 + 272) = a4;
  *(v4 + 280) = 0;
}

uint64_t sub_1E3D89C10(double a1, double a2, double a3, double a4)
{
  result = OUTLINED_FUNCTION_14_0();
  v4[36] = a1;
  v4[37] = a2;
  v4[38] = a3;
  v4[39] = a4;
  return result;
}

uint64_t sub_1E3D89C5C()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  (*(v2 + 2224))();
  OUTLINED_FUNCTION_8();
  if (v4)
  {
    (*(v3 + 752))(0);
    OUTLINED_FUNCTION_111();
    (*(v5 + 872))(0);
    v453 = 0u;
    v454 = 0u;
    LOBYTE(v455) = 1;
    (*(*v0 + 560))(&v453);
    v6 = sub_1E3C6DC70();
    v7 = v6[1];
    v449 = *v6;
    v450 = v7;
    LOBYTE(v451) = 0;
    OUTLINED_FUNCTION_111();
    (*(v8 + 184))(&v449);
    v9 = *sub_1E3C6DC7C();
    (*(*v0 + 1160))(v9, 0);
    OUTLINED_FUNCTION_9_2();
    (*(v10 + 1936))();
    sub_1E3C6DC94();

    OUTLINED_FUNCTION_9_2();
    (*(v11 + 1984))();
    sub_1E3C6DE18();

    OUTLINED_FUNCTION_9_2();
    v13 = (*(v12 + 2008))();
    sub_1E3C6E604(v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_10_7();
    v15(v14);
    OUTLINED_FUNCTION_9_2();
    (*(v16 + 256))(0x7FF0000000000000, 0);
    OUTLINED_FUNCTION_9_2();
    v17 = OUTLINED_FUNCTION_10_7();
    v18(v17);
    OUTLINED_FUNCTION_9_2();
    (*(v19 + 360))(0x7FF0000000000000, 0);
    v20 = *sub_1E3E5FB0C();
    v21 = *(*v1 + 752);
    v22 = v20;
    v21(v20);
    v23 = *sub_1E3E5FB88();
    v24 = *(*v1 + 872);
    v25 = v23;
    v24(v23);
    OUTLINED_FUNCTION_9_2();
    v27 = (*(v26 + 2008))();
    v28 = *sub_1E3E5FDEC();
    v29 = *(*v27 + 680);
    v30 = v28;
    v29(v28);
  }

  type metadata accessor for StandardLockupCellLayout();
  sub_1E3D8D0C0(v1[13]);
  OUTLINED_FUNCTION_9_2();
  (*(v31 + 2256))(2);

  v32 = [objc_opt_self() blackColor];
  v33 = v1[18];
  OUTLINED_FUNCTION_36();
  (*(v34 + 1776))(2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1E42A1E20;
  *(v35 + 32) = [v32 colorWithAlphaComponent_];
  *(v35 + 40) = [v32 colorWithAlphaComponent_];
  *(v35 + 48) = [v32 colorWithAlphaComponent_];
  *(v35 + 56) = [v32 colorWithAlphaComponent_];
  (*(*v33 + 1728))(0x3FF0000000000000, 0, 0);
  OUTLINED_FUNCTION_36();
  (*(v36 + 1848))(0x4034000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v37 + 1872))(0x404E000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v38 + 1800))(v35);
  OUTLINED_FUNCTION_36();
  (*(v39 + 1824))(&unk_1F5D844A8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v40 = OUTLINED_FUNCTION_26_11();
  *(v40 + 16) = xmmword_1E42A76D0;
  v41 = [objc_opt_self() blackColor];
  OUTLINED_FUNCTION_44_46();
  v44 = [v42 v43];

  *(v40 + 32) = v44;
  v45 = OUTLINED_FUNCTION_48_36();
  OUTLINED_FUNCTION_44_46();
  v48 = [v46 v47];

  *(v40 + 40) = v48;
  v49 = OUTLINED_FUNCTION_48_36();
  OUTLINED_FUNCTION_44_46();
  v52 = [v50 v51];

  *(v40 + 48) = v52;
  v53 = OUTLINED_FUNCTION_48_36();
  OUTLINED_FUNCTION_44_46();
  v56 = [v54 v55];

  *(v40 + 56) = v56;
  *(v40 + 64) = OUTLINED_FUNCTION_48_36();
  v57 = *(*v1 + 2056);
  v57();
  OUTLINED_FUNCTION_2_1();
  (*(v58 + 1728))(0, 0, 0);

  (v57)(v59);
  OUTLINED_FUNCTION_2_1();
  (*(v60 + 1752))(0, 0x3FF0000000000000, 0);

  (v57)(v61);
  OUTLINED_FUNCTION_2_1();
  (*(v62 + 1776))(1);

  (v57)(v63);
  OUTLINED_FUNCTION_2_1();
  (*(v64 + 1800))(v40);

  (v57)(v65);
  OUTLINED_FUNCTION_2_1();
  (*(v66 + 1824))(&unk_1F5D844E8);

  OUTLINED_FUNCTION_9_2();
  v68 = (*(v67 + 2224))();
  v69 = v1[14];
  OUTLINED_FUNCTION_3_11();
  v71 = (*(v70 + 432))();
  if ((v68 & 1) == 0)
  {
    if (v72)
    {
      v71 = *sub_1E418A500();
    }

    (*(*v69 + 440))(v71, 0);
    OUTLINED_FUNCTION_3_11();
    (*(v74 + 1352))(0);
    OUTLINED_FUNCTION_3_11();
    (*(v75 + 1328))(1);
    OUTLINED_FUNCTION_9_2();
    v82 = (*(v76 + 1864))(v77, v78, v79, v80, v81);
    if (OUTLINED_FUNCTION_36_53(v82) == 0x746C7561666564 && v83 == 0xE700000000000000)
    {
    }

    else
    {
      v85 = OUTLINED_FUNCTION_38_23();

      if ((v85 & 1) == 0)
      {
        v86 = *sub_1E3BD2884();
LABEL_20:
        (*(*v69 + 1280))(v86, 0);
        sub_1E39537A8();
        __src[0] = v108;
        __src[1] = v109;
        __src[2] = v110;
        __src[3] = v111;
        LOBYTE(__src[4]) = 0;
        (*(*v69 + 560))(__src);
        OUTLINED_FUNCTION_3_11();
        (*(v112 + 512))(2);
        v113 = *sub_1E3E5FB0C();
        v114 = *(*v69 + 776);
        v115 = v113;
        v114(v113);
        OUTLINED_FUNCTION_3_11();
        v117 = (*(v116 + 1808))(3);
        v117.n128_u64[0] = 1.0;
        __dst[0] = j__OUTLINED_FUNCTION_7_78(v117);
        __dst[1] = v118;
        __dst[2] = v119;
        __dst[3] = v120;
        LOBYTE(__dst[4]) = 0;
        (*(*v69 + 1856))(__dst);
        sub_1E3755B54();
        v121 = [objc_allocWithZone(OUTLINED_FUNCTION_43_48()) initWithWhite:0.0 alpha:0.08];
        v122 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
        v123 = sub_1E3E5F2F8(v121, v122);

        OUTLINED_FUNCTION_3_11();
        (*(v124 + 1832))(v123);
        goto LABEL_23;
      }
    }

    v86 = 0x4043000000000000;
    goto LABEL_20;
  }

  if (v72)
  {
    v73 = *sub_1E418A500();
  }

  else
  {
    v73 = *&v71;
  }

  sub_1E3C6DFCC(v73);
  OUTLINED_FUNCTION_111();
  v87 += 239;
  v88 = *v87;
  v94 = (*v87)(v89, v90, v91, v92, v93);
  v99 = v88(v94, v95, v96, v97, v98);
  v104 = (*(*v99 + 432))(v99, v100, v101, v102, v103);
  v106 = v105;

  if (v106)
  {
    v107 = *sub_1E418A500();
  }

  else
  {
    v107 = *&v104;
  }

  sub_1E3C6DFCC(v107);

LABEL_23:
  OUTLINED_FUNCTION_111();
  v125 += 233;
  v126 = *v125;
  v127 = (*v125)();
  v129 = sub_1E3D88F04(v127) == 0x746C7561666564 && v128 == 0xE700000000000000;
  if (v129 || ((OUTLINED_FUNCTION_38_23(), OUTLINED_FUNCTION_11_5(), v130 = , v131 = (v126)(v130), sub_1E3D88F04(v131) == 0x6C616E6964726FLL) ? (v133 = v132 == 0xE700000000000000) : (v133 = 0), v133 || ((OUTLINED_FUNCTION_38_23(), OUTLINED_FUNCTION_11_5(), v134 = , v135 = (v126)(v134), sub_1E3D88F04(v135) == 0x7974536B63697262) ? (v137 = v136 == 0xEB0000000031656CLL) : (v137 = 0), v137)))
  {

    goto LABEL_47;
  }

  v138 = sub_1E42079A4();

  if (v138)
  {
LABEL_47:
    v161 = v1[16];
    sub_1E3C8BE74();
    sub_1E3DEFBE8(1);
    OUTLINED_FUNCTION_13();
    (*(v162 + 1696))(22);
    OUTLINED_FUNCTION_9_2();
    v164 = (*(v163 + 1864))();
    if (OUTLINED_FUNCTION_36_53(v164) == 0x6C616E6964726FLL && v165 == 0xE700000000000000)
    {

      v168 = 1;
    }

    else
    {
      v167 = OUTLINED_FUNCTION_21_85();

      if (v167)
      {
        v168 = 1;
      }

      else
      {
        v168 = 2;
      }
    }

    (*(*v161 + 2056))(v168, 0);
    OUTLINED_FUNCTION_13();
    v170 = *(v169 + 2080);
    v171 = OUTLINED_FUNCTION_10_7();
    v170(v171);
    v172 = OUTLINED_FUNCTION_10_7();
    v170(v172);
    OUTLINED_FUNCTION_13();
    (*(v173 + 1720))(11);
    OUTLINED_FUNCTION_13();
    (*(v174 + 1984))(1);
    OUTLINED_FUNCTION_9_2();
    v176 = *(v175 + 1960);
    v176();
    OUTLINED_FUNCTION_2_1();
    (*(v177 + 1984))(1);

    (v176)(v178);
    OUTLINED_FUNCTION_2_1();
    v179 = OUTLINED_FUNCTION_8_5();
    v180(v179);

    (v176)(v181);
    OUTLINED_FUNCTION_2_1();
    (*(v182 + 2128))(0x3FF0000000000000, 0);

    (v176)(v183);
    OUTLINED_FUNCTION_2_1();
    (*(v184 + 656))(0);

    (v176)(v185);
    OUTLINED_FUNCTION_43_48();
    v186 = [objc_opt_self() whiteColor];
    OUTLINED_FUNCTION_36();
    (*(v187 + 680))();

    (v176)(v188);
    OUTLINED_FUNCTION_2_1();
    v189 = OUTLINED_FUNCTION_10_7();
    v190(v189);

    (v176)(v191);
    OUTLINED_FUNCTION_42_56();
    OUTLINED_FUNCTION_41_51();
    v485 = 0x4040000000000000;
    LOBYTE(v486) = 0;
    OUTLINED_FUNCTION_40_52(0x403D000000000000uLL);
    OUTLINED_FUNCTION_29_75();
    sub_1E3C2FC98();
    v192 = OUTLINED_FUNCTION_7_168();
    sub_1E3C3DE00(v192);
    OUTLINED_FUNCTION_14_126();
    OUTLINED_FUNCTION_6_157(v193, v194, v195, v196, v197, v198, v199, v200, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    OUTLINED_FUNCTION_22_74(v201, v202, v203, v204, v205, v206, v207, v208, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v217 = OUTLINED_FUNCTION_13_127(v209, v210, v211, v212, v213, v214, v215, v216, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    v218(v217, 8);

    (v176)(v219);
    LOBYTE(__dst[0]) = 7;
    v457[0] = 9;
    LOBYTE(v485) = 7;
    LOBYTE(v480) = 7;
    OUTLINED_FUNCTION_29_75();
    sub_1E3C2FC98();
    v220 = OUTLINED_FUNCTION_46_46();
    LOBYTE(v466) = v469[0];
    OUTLINED_FUNCTION_6_157(v220, v221, v222, v223, v224, v225, v226, v227, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    OUTLINED_FUNCTION_4_186();
    OUTLINED_FUNCTION_14();
    v236 = OUTLINED_FUNCTION_13_127(v228, v229, v230, v231, v232, v233, v234, v235, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    v237(v236, 48);

    (v176)(v238);
    LOBYTE(__dst[0]) = 10;
    v457[0] = 6;
    LOBYTE(v485) = 11;
    LOBYTE(v480) = 6;
    OUTLINED_FUNCTION_29_75();
    sub_1E3C2FC98();
    v239 = OUTLINED_FUNCTION_46_46();
    LOBYTE(v466) = v469[0];
    OUTLINED_FUNCTION_6_157(v239, v240, v241, v242, v243, v244, v245, v246, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    OUTLINED_FUNCTION_4_186();
    OUTLINED_FUNCTION_14();
    v255 = OUTLINED_FUNCTION_13_127(v247, v248, v249, v250, v251, v252, v253, v254, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    v257 = 54;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_111();
  v139 += 242;
  v140 = *v139;
  (*v139)();
  OUTLINED_FUNCTION_30();
  (*(v141 + 1864))(3);

  (v140)(v142);
  OUTLINED_FUNCTION_2_1();
  v143 = OUTLINED_FUNCTION_10_7();
  v144(v143);

  (v140)(v145);
  OUTLINED_FUNCTION_2_1();
  v146 = OUTLINED_FUNCTION_10_7();
  v147(v146);

  (v140)(v148);
  OUTLINED_FUNCTION_2_1();
  v149 = OUTLINED_FUNCTION_10_7();
  v150(v149);

  OUTLINED_FUNCTION_9_2();
  v152 = *(v151 + 1864);
  v153 = v152();
  if (OUTLINED_FUNCTION_36_53(v153) == 0x7974536B63697262 && v154 == 0xEB0000000032656CLL)
  {

    goto LABEL_59;
  }

  v156 = sub_1E42079A4();

  if (v156)
  {
LABEL_59:
    (v140)(v157);
    OUTLINED_FUNCTION_30();
    (*(v340 + 1984))(5);

    (v140)(v341);
    OUTLINED_FUNCTION_2_1();
    (*(v342 + 2056))(1, 0);

    (v140)(v343);
    OUTLINED_FUNCTION_2_1();
    v344 = OUTLINED_FUNCTION_8_5();
    v345(v344);

    (v140)(v346);
    OUTLINED_FUNCTION_2_1();
    v347 = OUTLINED_FUNCTION_8_5();
    v348(v347);

    (v140)(v349);
    OUTLINED_FUNCTION_2_1();
    (*(v350 + 2128))(0x3FECCCCCCCCCCCCDLL, 0);

    (v140)(v351);
    OUTLINED_FUNCTION_43_48();
    v352 = [objc_opt_self() whiteColor];
    OUTLINED_FUNCTION_36();
    (*(v353 + 680))();

    (v140)(v354);
    LOBYTE(__dst[0]) = 2;
    v457[0] = 1;
    LOBYTE(v485) = 2;
    LOBYTE(v480) = 6;
    LOBYTE(v475) = 6;
    v355 = OUTLINED_FUNCTION_23_79();
    sub_1E3C3DE00(v355);
    OUTLINED_FUNCTION_38_47();
    OUTLINED_FUNCTION_1_212();
    OUTLINED_FUNCTION_4_186();
    OUTLINED_FUNCTION_14();
    v364 = OUTLINED_FUNCTION_13_127(v356, v357, v358, v359, v360, v361, v362, v363, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    v365(v364, 48);

    (v140)(v366);
    LOBYTE(__dst[0]) = 10;
    v457[0] = 10;
    LOBYTE(v485) = 6;
    LOBYTE(v480) = 6;
    LOBYTE(v475) = 6;
    v367 = OUTLINED_FUNCTION_23_79();
    sub_1E3C3DE00(v367);
    OUTLINED_FUNCTION_38_47();
    OUTLINED_FUNCTION_1_212();
    OUTLINED_FUNCTION_4_186();
    OUTLINED_FUNCTION_14();
    v376 = OUTLINED_FUNCTION_13_127(v368, v369, v370, v371, v372, v373, v374, v375, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    v377(v376, 54);

    (v140)(v378);
    LOBYTE(__dst[0]) = 5;
    v457[0] = 3;
    LOBYTE(v485) = 3;
    sub_1E3C3DE00(&unk_1F5D54B88);
    LOBYTE(v475) = v480;
    v379 = OUTLINED_FUNCTION_23_79();
    sub_1E3C3DE00(v379);
    OUTLINED_FUNCTION_38_47();
    v380 = OUTLINED_FUNCTION_37_57();
    sub_1E3C3DE00(v380);
    LOBYTE(v464) = v466;
    sub_1E3C2FCB8(__dst, __src);
    OUTLINED_FUNCTION_4_186();
    OUTLINED_FUNCTION_14();
    v256 = *(v381 + 1600);
    v255 = __dst;
LABEL_60:
    v257 = 55;
LABEL_56:
    v256(v255, v257);

    goto LABEL_57;
  }

  v158 = (v152)(v157);
  if (OUTLINED_FUNCTION_36_53(v158) == 0x7974536B63697262 && v159 == 0xEB0000000033656CLL)
  {

    (v140)(v382);
    OUTLINED_FUNCTION_30();
    (*(v383 + 1984))(5);

    (v140)(v384);
    v485 = 3;
    LOBYTE(v486) = 0;
    OUTLINED_FUNCTION_42_56();
    v385 = MEMORY[0x1E69E6810];
    sub_1E3C3DE00(MEMORY[0x1E69E6810]);
    v480 = *v457;
    LOBYTE(v481) = v457[8];
    v386 = OUTLINED_FUNCTION_29_75();
    sub_1E3C3DE00(v386);
    v387 = OUTLINED_FUNCTION_7_168();
    sub_1E3C3DE00(v387);
    OUTLINED_FUNCTION_14_126();
    sub_1E3C3DE00(v385);
    OUTLINED_FUNCTION_35_55();
    sub_1E3C2FCB8(&v485, __src);
    OUTLINED_FUNCTION_22_74(v388, v389, v390, v391, v392, v393, v394, v395, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v404 = OUTLINED_FUNCTION_13_127(v396, v397, v398, v399, v400, v401, v402, v403, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    v405(v404, 62);

    (v140)(v406);
    OUTLINED_FUNCTION_2_1();
    v407 = OUTLINED_FUNCTION_10_7();
    v408(v407);

    (v140)(v409);
    OUTLINED_FUNCTION_2_1();
    v410 = OUTLINED_FUNCTION_10_7();
    v411(v410);

    (v140)(v412);
    OUTLINED_FUNCTION_43_48();
    v413 = [objc_opt_self() whiteColor];
    OUTLINED_FUNCTION_36();
    (*(v414 + 680))();

    (v140)(v415);
    OUTLINED_FUNCTION_41_51();
    OUTLINED_FUNCTION_40_52(0x3FE3333333333333uLL);
    v416 = MEMORY[0x1E69E7DE0];
    v417 = OUTLINED_FUNCTION_29_75();
    sub_1E3C3DE00(v417);
    v418 = OUTLINED_FUNCTION_7_168();
    sub_1E3C3DE00(v418);
    OUTLINED_FUNCTION_14_126();
    sub_1E3C3DE00(v416);
    OUTLINED_FUNCTION_35_55();
    sub_1E3C3DE00(v416);
    v458 = v460;
    LOBYTE(v459) = v461;
    sub_1E3C2FCB8(v457, __dst);
    memcpy(v457, __dst, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v419 + 1600))(v457, 65, v420 & 1, v416);

    (v140)(v421);
    v457[0] = 15;
    LOBYTE(v480) = 14;
    LOBYTE(v475) = 14;
    LOBYTE(v472[0]) = 3;
    LOBYTE(v469[0]) = 14;
    v422 = OUTLINED_FUNCTION_37_57();
    v423 = sub_1E3C3DE00(v422);
    OUTLINED_FUNCTION_16_111(v423, v424, v425, v426, v427, v428, v429, v430, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    OUTLINED_FUNCTION_15_118();
    OUTLINED_FUNCTION_14();
    (*(v431 + 1600))(v457, 48, v432 & 1, &qword_1F5D549D8);

    (v140)(v433);
    v457[0] = 10;
    LOBYTE(v480) = 10;
    LOBYTE(v475) = 6;
    LOBYTE(v472[0]) = 6;
    LOBYTE(v469[0]) = 6;
    v434 = OUTLINED_FUNCTION_37_57();
    v435 = sub_1E3C3DE00(v434);
    OUTLINED_FUNCTION_16_111(v435, v436, v437, v438, v439, v440, v441, v442, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
    OUTLINED_FUNCTION_15_118();
    OUTLINED_FUNCTION_14();
    (*(v443 + 1600))(v457, 54, v444 & 1, &qword_1F5D54AF8);

    (v140)(v445);
    v457[0] = 5;
    LOBYTE(v480) = 3;
    LOBYTE(v475) = 3;
    v446 = OUTLINED_FUNCTION_23_79();
    sub_1E3C3DE00(v446);
    OUTLINED_FUNCTION_38_47();
    v447 = OUTLINED_FUNCTION_37_57();
    sub_1E3C3DE00(v447);
    LOBYTE(v464) = v466;
    sub_1E3C3DE00(&unk_1F5D54B88);
    LOBYTE(v460) = v462;
    sub_1E3C2FCB8(v457, __dst);
    OUTLINED_FUNCTION_15_118();
    OUTLINED_FUNCTION_14();
    v256 = *(v448 + 1600);
    v255 = v457;
    goto LABEL_60;
  }

  sub_1E42079A4();
  OUTLINED_FUNCTION_11_5();

LABEL_57:
  v258 = v1[17];
  OUTLINED_FUNCTION_8();
  (*(v259 + 2072))(22);
  OUTLINED_FUNCTION_36();
  (*(v260 + 2024))(1, 0);
  v261 = *sub_1E3E5FD88();
  v262 = *(*v258 + 680);
  v263 = v261;
  v262(v261);
  OUTLINED_FUNCTION_42_56();
  OUTLINED_FUNCTION_41_51();
  v485 = 0x4065800000000000;
  LOBYTE(v486) = 0;
  OUTLINED_FUNCTION_40_52(0x4059000000000000uLL);
  v475 = 0x4057C00000000000;
  LOBYTE(v476) = 0;
  v264 = OUTLINED_FUNCTION_23_79();
  sub_1E3C3DE00(v264);
  v469[0] = v472[0];
  LOBYTE(v469[1]) = v472[1];
  OUTLINED_FUNCTION_1_212();
  OUTLINED_FUNCTION_22_74(v265, v266, v267, v268, v269, v270, v271, v272, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v274 = *(v273 + 1600);
  v283 = OUTLINED_FUNCTION_13_127(v275, v276, v277, v278, v279, v280, v281, v282, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v274(v283, 4);
  OUTLINED_FUNCTION_42_56();
  OUTLINED_FUNCTION_41_51();
  v485 = 0x404E000000000000;
  LOBYTE(v486) = 0;
  OUTLINED_FUNCTION_40_52(v284);
  v475 = 0x403C000000000000;
  LOBYTE(v476) = 0;
  v285 = OUTLINED_FUNCTION_23_79();
  sub_1E3C3DE00(v285);
  v469[0] = v472[0];
  LOBYTE(v469[1]) = v472[1];
  OUTLINED_FUNCTION_1_212();
  OUTLINED_FUNCTION_22_74(v286, v287, v288, v289, v290, v291, v292, v293, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v294 = OUTLINED_FUNCTION_18();
  v302 = OUTLINED_FUNCTION_13_127(v294, v295, v296, v297, v298, v299, v300, v301, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v274(v302, 8);
  sub_1E3952C94();
  __dst[0] = v303;
  __dst[1] = v304;
  __dst[2] = v305;
  __dst[3] = v306;
  LOBYTE(__dst[4]) = 0;
  sub_1E3952C94();
  *v457 = v307;
  *&v457[8] = v308;
  *&v457[16] = v309;
  *&v457[24] = v310;
  v457[32] = 0;
  sub_1E3952C94();
  v485 = v311;
  v486 = v312;
  v487 = v313;
  v488 = v314;
  v489 = 0;
  sub_1E3952C94();
  v480 = v315;
  v481 = v316;
  v482 = v317;
  v483 = v318;
  v484 = 0;
  sub_1E3952C94();
  v475 = v319;
  v476 = v320;
  v477 = v321;
  v478 = v322;
  v479 = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C3DE00(v323);
  *v469 = *v472;
  v470 = v473;
  v471 = v474;
  OUTLINED_FUNCTION_1_212();
  memcpy(__dst, __src, 0xE9uLL);
  v324 = OUTLINED_FUNCTION_18();
  v332 = OUTLINED_FUNCTION_13_127(v324, v325, v326, v327, v328, v329, v330, v331, v449, *(&v449 + 1), v450, *(&v450 + 1), v451, v452, v453, *(&v453 + 1), v454, *(&v454 + 1), v455, v456, *v457, *&v457[8], *&v457[16], *&v457[24], *&v457[32], *&v457[40], *&v457[48], *&v457[56], *&v457[64], *&v457[72], *&v457[80], *&v457[88], v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, __dst[0]);
  v274(v332, 0);
  OUTLINED_FUNCTION_9_2();
  (*(v333 + 2104))();
  sub_1E3C6E74C();

  OUTLINED_FUNCTION_9_2();
  (*(v334 + 2128))();
  sub_1E3C6E74C();

  OUTLINED_FUNCTION_9_2();
  v336 = (*(v335 + 2152))();
  OUTLINED_FUNCTION_9_2();
  v338 = (*(v337 + 2224))();
  sub_1E375DA98(v336, v338 & 1);
}

uint64_t sub_1E3D8C094(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 320);
  *(v1 + 320) = a1 & 1;
  result = swift_beginAccess();
  if (v3 != *(v1 + 320))
  {
    return sub_1E3D89C5C();
  }

  return result;
}

uint64_t *sub_1E3D8C108(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_11_5();
  swift_allocObject();
  return sub_1E3D8C150(v2, a2);
}

uint64_t *sub_1E3D8C150(char a1, char a2)
{
  type metadata accessor for TextLayout();
  *(v2 + 104) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v2 + 112) = sub_1E3BD61D8();
  *(v2 + 120) = sub_1E3BD61D8();
  *(v2 + 128) = sub_1E383BCC0();
  *(v2 + 136) = sub_1E3BD61D8();
  type metadata accessor for ViewGradientLayout();
  *(v2 + 144) = sub_1E40C3088();
  *(v2 + 152) = 0;
  *(v2 + 160) = sub_1E3BD61D8();
  *(v2 + 168) = sub_1E383BCC0();
  *(v2 + 176) = 0;
  *(v2 + 184) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  *(v2 + 192) = sub_1E3BBB724();
  type metadata accessor for TextBadgeLayout();
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 200) = 0;
  v5 = OUTLINED_FUNCTION_51_1();
  *(v2 + 224) = sub_1E382F55C(3, 1, v5 & 1);
  v6 = OUTLINED_FUNCTION_51_1();
  *(v2 + 232) = sub_1E382F55C(4, 1, v6 & 1);
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0;
  *(v2 + 280) = 1;
  *(v2 + 288) = 0x4020000000000000;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0;
  *(v2 + 312) = 0x4020000000000000;
  *(v2 + 320) = 0;
  *(v2 + 98) = a1;
  *(v2 + 152) = a2;
  v7 = sub_1E3C2F9A0();

  sub_1E3D89C5C();
  sub_1E3C37CBC(v7[14], 39);
  OUTLINED_FUNCTION_36();
  v9 = (*(v8 + 1912))();
  sub_1E3C37CBC(v9, 48);

  sub_1E3C37CBC(v7[15], 40);
  sub_1E3C37CBC(v7[16], 13);
  sub_1E3C37CBC(v7[17], 47);
  sub_1E3C37EC8(v7[13], &unk_1F5D84530);
  OUTLINED_FUNCTION_36();
  v11 = (*(v10 + 1936))();
  sub_1E3C37CBC(v11, 23);

  OUTLINED_FUNCTION_36();
  v13 = (*(v12 + 1960))();
  sub_1E3C37CBC(v13, 24);

  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 1984))();
  sub_1E3C37CBC(v15, 15);

  OUTLINED_FUNCTION_36();
  v17 = (*(v16 + 2008))();
  sub_1E3C37CBC(v17, 67);

  OUTLINED_FUNCTION_36();
  v19 = (*(v18 + 2104))();
  sub_1E3C37CBC(v19, 53);

  OUTLINED_FUNCTION_36();
  v21 = (*(v20 + 2128))();
  sub_1E3C37CBC(v21, 54);

  OUTLINED_FUNCTION_36();
  v23 = (*(v22 + 2152))();
  sub_1E3C37CBC(v23, 31);

  return v7;
}

void sub_1E3D8C560()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v0 + 112) = sub_1E3BD61D8();
  *(v0 + 120) = sub_1E3BD61D8();
  *(v0 + 128) = sub_1E383BCC0();
  *(v0 + 136) = sub_1E3BD61D8();
  type metadata accessor for ViewGradientLayout();
  *(v0 + 144) = sub_1E40C3088();
  *(v0 + 152) = 0;
  *(v0 + 160) = sub_1E3BD61D8();
  *(v0 + 168) = sub_1E383BCC0();
  *(v0 + 176) = 0;
  *(v0 + 184) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  *(v0 + 192) = sub_1E3BBB724();
  type metadata accessor for TextBadgeLayout();
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 200) = 0;
  v1 = OUTLINED_FUNCTION_51_1();
  *(v0 + 224) = sub_1E382F55C(3, 1, v1 & 1);
  v2 = OUTLINED_FUNCTION_51_1();
  *(v0 + 232) = sub_1E382F55C(4, 1, v2 & 1);
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0;
  *(v0 + 280) = 1;
  *(v0 + 288) = 0x4020000000000000;
  *(v0 + 296) = 0;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0x4020000000000000;
  *(v0 + 320) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3D8C6D0(__n128 a1, __n128 a2)
{
  nullsub_1(a1, a2);
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 1864))();
  if (OUTLINED_FUNCTION_36_53(v4) == 0x7972617262696CLL && v5 == 0xE700000000000000)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_21_85();

    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout();
    result = swift_dynamicCastClass();
    if (result)
    {
      v9 = result;
      OUTLINED_FUNCTION_14_0();
      v2[25] = v9;
      swift_retain_n();

      OUTLINED_FUNCTION_13();
      v11 = (*(v10 + 1864))();
      if (OUTLINED_FUNCTION_36_53(v11) == 0x7972617262696CLL && v12 == 0xE700000000000000)
      {
      }

      else
      {
        v14 = OUTLINED_FUNCTION_21_85();

        if ((v14 & 1) == 0)
        {
LABEL_19:
          v25 = *sub_1E3810A0C();

          sub_1E3C37EC8(v9, v25);
        }
      }

      if ((*(*v2 + 2032))(v15))
      {
        __dst[0] = xmmword_1E42B29E0;
        memset(&__dst[1], 0, 17);
        __asm { FMOV            V0.2D, #12.0 }

        v37 = _Q0;
        v38 = xmmword_1E4298720;
        v39 = 0;
        __asm { FMOV            V1.2D, #14.0 }

        v34 = _Q1;
        v35 = xmmword_1E429D550;
        v36 = 0;
        v31 = _Q1;
        v32 = _Q1;
        v33 = 0;
        v28 = xmmword_1E4298700;
        v29 = xmmword_1E4298700;
        v30 = 0;
        __dst[15] = _Q0;
        __dst[16] = _Q0;
        v27 = 0;
        type metadata accessor for UIEdgeInsets();
        v22 = v21;
        sub_1E3C2FCB8(__dst, __src);
        memcpy(__dst, __src, 0xE9uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        (*(v23 + 1600))(__dst, 0, v24 & 1, v22);
      }

      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_1E3D8C99C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v4 = a1;
  sub_1E3C35CF4(a1, a2);
  v6 = sub_1E3D8C9E8(v4, v5, a3);

  return sub_1E3D8C094(v6);
}

uint64_t sub_1E3D8C9E8(char a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 3 > 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1E3A24FDC(a1);
  }

  return v3 & 1;
}

uint64_t sub_1E3D8CA20()
{
  BYTE8(v6) = 0;
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0x3D656C797473, 0xE600000000000000);
  OUTLINED_FUNCTION_9_2();
  (*(v0 + 1864))();
  OUTLINED_FUNCTION_47_43();
  MEMORY[0x1E69109E0](0x5474756F79616C20, 0xEC0000003D657079);
  OUTLINED_FUNCTION_9_2();
  *&v6 = (*(v1 + 2224))() & 1;
  OUTLINED_FUNCTION_47_43();
  MEMORY[0x1E69109E0](32, 0xE100000000000000);
  v2 = sub_1E3C3684C();
  v4 = v3;

  MEMORY[0x1E69109E0](v2, v4);

  return *(&v6 + 1);
}

uint64_t sub_1E3D8CBA8(uint64_t a1)
{
  OUTLINED_FUNCTION_34_60();
  OUTLINED_FUNCTION_8();
  v3 += 233;
  v4 = *v3;
  v5 = (*v3)();
  if (sub_1E3D88F04(v5) != v1 || v6 != 0xE700000000000000)
  {
    v8 = OUTLINED_FUNCTION_38_23();

    if (v8)
    {
      goto LABEL_13;
    }

    v10 = (v4)(v9);
    if (sub_1E3D88F04(v10) != 0x7974536B63697262 || v11 != 0xEB0000000031656CLL)
    {
      v13 = sub_1E42079A4();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v14 = OUTLINED_FUNCTION_26_11();
  *(v14 + 16) = xmmword_1E42A76D0;
  v15 = [objc_opt_self() blackColor];
  v16 = OUTLINED_FUNCTION_30_65(v15);

  *(v14 + 32) = v16;
  v17 = OUTLINED_FUNCTION_27_66();
  OUTLINED_FUNCTION_18_74();
  v20 = [v18 v19];

  *(v14 + 40) = v20;
  v21 = OUTLINED_FUNCTION_27_66();
  OUTLINED_FUNCTION_18_74();
  v24 = [v22 v23];

  *(v14 + 48) = v24;
  v25 = OUTLINED_FUNCTION_27_66();
  OUTLINED_FUNCTION_18_74();
  v28 = [v26 v27];

  *(v14 + 56) = v28;
  v29 = OUTLINED_FUNCTION_27_66();
  OUTLINED_FUNCTION_18_74();
  v32 = [v30 v31];

  *(v14 + 64) = v32;
  if (a1 == 1)
  {

    v33 = OUTLINED_FUNCTION_26_11();
    *(v33 + 16) = xmmword_1E42A76D0;
    v34 = OUTLINED_FUNCTION_27_66();
    v35 = OUTLINED_FUNCTION_30_65(v34);

    *(v33 + 32) = v35;
    v36 = OUTLINED_FUNCTION_27_66();
    v37 = OUTLINED_FUNCTION_30_65(v36);

    *(v33 + 40) = v37;
    v38 = OUTLINED_FUNCTION_27_66();
    v39 = [v38 colorWithAlphaComponent_];

    *(v33 + 48) = v39;
    v40 = OUTLINED_FUNCTION_27_66();
    v41 = [v40 colorWithAlphaComponent_];

    *(v33 + 56) = v41;
    v42 = OUTLINED_FUNCTION_27_66();
    v43 = [v42 colorWithAlphaComponent_];

    *(v33 + 64) = v43;
  }

LABEL_15:
  type metadata accessor for ViewGradientLayout();
  return sub_1E40C2E40();
}