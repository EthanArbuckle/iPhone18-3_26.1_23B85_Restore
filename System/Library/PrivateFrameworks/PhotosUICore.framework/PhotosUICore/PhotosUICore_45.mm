void sub_1A41DDDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LemonadeMemoriesCreationAvailabilityUtils.navigationPermission(for:)(a1, &v16);
  if (!v16)
  {
    sub_1A41DE148();
  }

  if (v16 == 1)
  {
    type metadata accessor for LemonadeMemoriesCreationButton();
    sub_1A3FF29A0(v10);
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
    {
      sub_1A5245C94();
    }

    sub_1A41DED4C(v10, sub_1A3D63A58);
    v12 = *a2;
    if (*(a2 + 8) == 1)
    {
      v13 = v12;
    }

    else
    {

      sub_1A524D254();
      v14 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v12, 0);
      (*(v5 + 8))(v7, v4);
      v13 = v15;
      v12 = v15;
    }

    static LemonadeMemoriesCreationUnavailableAlert.show(state:viewController:photoLibrary:)(a1, 0, v12);
  }
}

void sub_1A41DE07C()
{
  v1 = *(sub_1A52453A4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for LemonadeMemoriesCreationButton() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1A41DDDA0(v0 + v2, v5);
}

void sub_1A41DE148()
{
  v1 = v0;
  sub_1A41DDA30(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A5244854();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5249234();
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126860);
  v19 = [swift_getObjCClassFromMetadata() sharedInstance];
  v20 = [v19 preferInternalEvaluationUI];

  if (v20)
  {
    v30 = v13;
    type metadata accessor for LemonadeMemoriesCreationButton();
    v31 = v1;
    sub_1A3FF29A0(v18);
    sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    if ((*(*(v21 - 8) + 48))(v18, 1, v21) != 1)
    {
      sub_1A5245C94();
    }

    sub_1A41DED4C(v18, sub_1A3D63A58);
    v13 = v30;
    v1 = v31;
  }

  v22 = *(*(*(v1 + *(type metadata accessor for LemonadeMemoriesCreationButton() + 24)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  (*(v8 + 104))(v10, *MEMORY[0x1E69C1008], v35);
  v23 = v22;
  v24 = sub_1A3C5A374();
  v25 = sub_1A3C6E9EC();
  LemonadeGenerativeMemoriesConfiguration.init(photoLibrary:memoryCreationAttributedText:startCreation:suggestionViewModel:transitionType:generationEntryPoint:)(v23, 0, v24 & 1, 0, v25, v10, v13);
  sub_1A41DEE84(v13, v7, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  swift_storeEnumTagMultiPayload();
  v26 = sub_1A52434D4();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  v27 = sub_1A3C30368();
  v28 = sub_1A4657324(v7, 0, v27 & 1, 0, 0, v4, 0, 0);
  sub_1A3E00630(v28);
  sub_1A3C690A8(v4, &qword_1EB1290B0, MEMORY[0x1E69C24E0]);
  sub_1A41DED4C(v7, type metadata accessor for LemonadeNavigationDestination);
  objc_opt_self();
  sub_1A40365BC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41DE804@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXMemoryCreationLocalizedString(v2);

  sub_1A524C674();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1A41DE8A8()
{
  v0 = sub_1A5243474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  sub_1A3D93850();
  sub_1A41DD9E8(&qword_1EB127490, sub_1A3D93850);
  sub_1A41DD9E8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A41DEA14()
{
  sub_1A52453A4();

  return sub_1A41DDC00();
}

uint64_t sub_1A41DEA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v6 = type metadata accessor for LemonadeMemoriesCreationButton();
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A41DDA30(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v6[6]) = a1;
  *(a3 + v6[7]) = a2;
  return result;
}

void sub_1A41DEB80()
{
  sub_1A3FF2CA0();
  if (v0 <= 0x3F)
  {
    sub_1A41DDA30(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeNavigationContext(319);
      if (v2 <= 0x3F)
      {
        sub_1A41DDA30(319, &qword_1EB125038, type metadata accessor for LemonadeMemoriesCreationAvailabilityManager, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A41DEC94()
{
  result = qword_1EB134CC8;
  if (!qword_1EB134CC8)
  {
    sub_1A41DD738(255, &qword_1EB134CD0, sub_1A41DD6FC, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A41DDA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134CC8);
  }

  return result;
}

uint64_t sub_1A41DED4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A41DEDAC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A41DDA30(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A41DEE1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41DEE84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1A41DEEEC()
{
  result = [objc_opt_self() changeDetailsWithNoChanges];
  qword_1EB1EB0C0 = result;
  return result;
}

uint64_t *sub_1A41DEF28()
{
  if (qword_1EB175FC0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB0C0;
}

id LemonadeOneUpConfiguration.container.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1A3E041E4(v2, v3);
}

void LemonadeOneUpConfiguration.container.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1A3E041F8(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

uint64_t LemonadeOneUpConfiguration.Container.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  sub_1A524DC04();
  return sub_1A524ECE4();
}

void LemonadeOneUpConfiguration.hash(into:)()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1A524DC04();
  sub_1A524ECB4();
  if (v1 != 255)
  {
    MEMORY[0x1A590A010]((v1 & 1) != 0);
    sub_1A524DC04();
  }

  sub_1A524ECB4();
  sub_1A524ECB4();
  sub_1A524ECB4();
  if (!v3)
  {
    sub_1A524ECB4();
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_1A524ECB4();
    return;
  }

  sub_1A524ECB4();
  v4 = v3;
  sub_1A524DC04();

  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_1A524ECB4();
  v5 = v2;
  sub_1A524DC04();
}

uint64_t LemonadeOneUpConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  LemonadeOneUpConfiguration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A41DF298@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  *a8 = result;
  *(a8 + 8) = v8;
  *(a8 + 16) = v9;
  *(a8 + 17) = a3;
  *(a8 + 18) = a4;
  *(a8 + 19) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t sub_1A41DF2BC()
{
  sub_1A524EC94();
  LemonadeOneUpConfiguration.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A41DF300()
{
  sub_1A524EC94();
  LemonadeOneUpConfiguration.hash(into:)();
  return sub_1A524ECE4();
}

id sub_1A41DF340()
{
  v1 = *(v0 + 16);
  if (v1 == 255)
  {
    v5 = [objc_opt_self() dataSourceManagerWithAsset_];
  }

  else
  {
    v2 = *(v0 + 19);
    v3 = *(v0 + 8);
    v4 = objc_opt_self();
    if (v1)
    {
      v5 = [v4 dataSourceManagerWithAssets_];
    }

    else
    {
      LOBYTE(v7) = v2;
      v5 = [v4 dataSourceManagerForAssetCollection:v3 existingAssetsFetchResult:0 existingKeyAssetsFetchResult:0 fetchPropertySets:0 basePredicate:0 options:0 ignoreSharedLibraryFilters:v7];
    }
  }

  return v5;
}

int *sub_1A41DF3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_1A3C79630(a1, a6);
  result = type metadata accessor for LemonadeOneUpPresentationContext(0);
  v12 = (a6 + result[5]);
  *v12 = a2;
  v12[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

id sub_1A41DF468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a3;
  v8 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = v9;
  v70 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v61[-v12];
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v71 = *(a1 + 17);
  v17 = *(a1 + 18);
  v62 = *(a1 + 19);
  v18 = *(a1 + 32);
  v73 = *(a1 + 24);
  if (v18)
  {
    v19 = v18;
    if ([v19 canPresentIntervention])
    {
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v22 = v72;
      v21[2] = v72;
      v21[3] = a4;
      v21[4] = v20;
      v78 = sub_1A41E360C;
      v79 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v75 = 1107296256;
      v76 = sub_1A3E01E70;
      v77 = &block_descriptor_21_3;
      v23 = _Block_copy(&aBlock);
      sub_1A3C66EE8(v22);

      [v19 presentFromViewController:v4 completionHandler:v23];

      _Block_release(v23);
      return 0;
    }
  }

  if (v17)
  {
    [v4 px:1 setOneUpPresentationStyle:v11];
  }

  v67 = a4;
  [v4 px_enableOneUpPresentation];
  v65 = [v4 px_oneUpPresentation];
  v66 = a2;
  sub_1A41E2CB0(a2, v13);
  v63 = type metadata accessor for LemonadeOneUpPresentationDelegate(0);
  v25 = objc_allocWithZone(v63);
  *&v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_hiddenAssetReferences] = MEMORY[0x1E69E7CD0];
  v26 = OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_initialAsset;
  *&v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_initialAsset] = v14;
  v27 = v14;
  v28 = v73;
  *&v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_sourceImageViewSpec] = v73;
  v64 = v27;
  if (v16 == 255)
  {
    v36 = objc_opt_self();
    v37 = v27;
    sub_1A3E041E4(v15, 255);
    v38 = v18;
    v39 = v4;
    v40 = v37;
    v41 = v28;
    v35 = [v36 dataSourceManagerWithAsset_];
  }

  else
  {
    v29 = objc_opt_self();
    v30 = v27;
    sub_1A3E041E4(v15, v16);
    v31 = v18;
    v32 = v4;
    v33 = v30;
    v34 = v28;
    if (v16)
    {
      v35 = [v29 dataSourceManagerWithAssets_];
    }

    else
    {
      LOBYTE(v60) = v62;
      v35 = [v29 dataSourceManagerForAssetCollection:v15 existingAssetsFetchResult:0 existingKeyAssetsFetchResult:0 fetchPropertySets:0 basePredicate:0 options:0 ignoreSharedLibraryFilters:v60];
    }
  }

  v42 = v35;
  *&v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_assetsDataSourceManager] = v42;
  v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_wantsShowInLibraryButton] = v71;
  result = [*&v25[v26] photoLibrary];
  if (result)
  {
    v44 = result;

    sub_1A3E041F8(v15, v16);
    v45 = [objc_opt_self() mediaProviderWithLibrary_];

    *&v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_mediaProvider] = v45;
    swift_unknownObjectUnownedInit();
    sub_1A41E2CB0(v13, &v25[OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_context]);
    v80.receiver = v25;
    v80.super_class = v63;
    v46 = objc_msgSendSuper2(&v80, sel_init);

    sub_1A41E2D34(v13);
    v47 = v65;
    [v65 setStrongDelegate_];

    v48 = [v4 px_oneUpPresentation];
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    v51 = v72;
    v52 = v67;
    v50[2] = v72;
    v50[3] = v52;
    v50[4] = v49;
    v78 = sub_1A41E2D90;
    v79 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1A3E01E70;
    v77 = &block_descriptor_119;
    v53 = _Block_copy(&aBlock);
    sub_1A3C66EE8(v51);

    [v48 waitForTransitionToFinishWithTimeout:v53 completionHandler:1.0];
    _Block_release(v53);

    v54 = [v4 px_oneUpPresentation];
    v55 = v70;
    sub_1A41E2CB0(v66, v70);
    v56 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v57 = swift_allocObject();
    sub_1A41E2D94(v55, v57 + v56);
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1A41E2DF8;
    *(v58 + 24) = v57;
    v78 = sub_1A3D78DD0;
    v79 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1A3D77CC4;
    v77 = &block_descriptor_14_1;
    v59 = _Block_copy(&aBlock);

    v24 = [v54 startWithConfigurationHandler_];
    _Block_release(v59);

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41DFB44(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1A524E2B4();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1A41E134C(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1A524E2B4() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1A524E2B4();
  v2 = sub_1A41E156C(v5, v6);
LABEL_10:

  return sub_1A41E174C(a1, v2);
}

void sub_1A41DFC38(uint64_t a1, int a2)
{
  v34 = a2;
  sub_1A3C36260(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v33 = sub_1A52434D4();
  v6 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_unknownObjectRetain();
  sub_1A524E274();
  sub_1A3C52C70(0, &qword_1EB126B50);
  sub_1A41E3384();
  sub_1A524CF84();
  v8 = v38[4];
  v9 = v38[5];
  v10 = v40;
  v11 = v41;
  v28 = v39;
  v12 = (v39 + 64) >> 6;
  v13 = (v6 + 48);
  v29 = (v6 + 8);
  v30 = (v6 + 32);
  v31 = (v6 + 48);
  while (v8 < 0)
  {
    v20 = sub_1A524E304();
    if (!v20 || (v37 = v20, sub_1A3C52C70(0, &qword_1EB126B50), swift_dynamicCast(), v19 = v38[0], v17 = v10, v18 = v11, !v38[0]))
    {
LABEL_17:
      sub_1A3C42540();
      return;
    }

LABEL_15:
    v36 = v18;
    sub_1A41E2BFC(v35 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_context, v5);
    v21 = v33;
    if ((*v13)(v5, 1, v33) == 1)
    {
      sub_1A41E325C(v5, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720], sub_1A3C36260);
      v14 = 0;
    }

    else
    {
      v22 = v8;
      v23 = v5;
      v24 = v32;
      (*v30)(v32, v23, v21);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v38[3] = sub_1A3C52C70(0, &qword_1EB126B50);
      v38[0] = v19;
      v26 = v19;
      v14 = sub_1A524D364();

      v27 = v24;
      v5 = v23;
      v8 = v22;
      v13 = v31;
      (*v29)(v27, v21);
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    [v14 setHidden_];

    v10 = v17;
    v11 = v36;
  }

  v15 = v10;
  v16 = v11;
  v17 = v10;
  if (v11)
  {
LABEL_11:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v8 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      goto LABEL_17;
    }

    v16 = *(v9 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1A41E0100(void *a1, void *a2)
{
  v3 = v2;
  v58 = a1;
  v5 = sub_1A52423C4();
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v55 - v9;
  v10 = sub_1A524BEE4();
  isa = v10[-1].isa;
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A524BF64();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1A524BFC4();
  v57 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v55 - v16;
  sub_1A3F1B558();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A52423D4();
  v68 = *(v20 - 8);
  v69 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1A3C52C70(0, &qword_1EB126B50);
  aBlock[0] = a2;
  v23 = a2;
  sub_1A52423A4();
  v24 = v3 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_context;
  v25 = *(v24 + *(type metadata accessor for LemonadeOneUpPresentationContext(0) + 20));
  if (v25)
  {
    v25(v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v67;
      v27 = v65;
      (*(v67 + 32))(v65, v19, v5);
      v28 = sub_1A524D244();
      if (qword_1EB1754F0 != -1)
      {
        swift_once();
      }

      v29 = qword_1EB1754F8;
      v30 = *(v26 + 16);
      v30(v7, v27, v5);
      if (os_log_type_enabled(v29, v28))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        LODWORD(v66) = v28;
        v33 = v32;
        *v31 = 138412546;
        *(v31 + 4) = v23;
        *v32 = v23;
        *(v31 + 12) = 2112;
        sub_1A41E333C(&qword_1EB1292B8, MEMORY[0x1E69C1E00]);
        swift_allocError();
        v64 = v29;
        v30(v34, v7, v5);
        v35 = v23;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = *(v67 + 8);
        v37(v7, v5);
        *(v31 + 14) = v36;
        v33[1] = v36;
        _os_log_impl(&dword_1A3C1C000, v64, v66, "failed to scroll %@ to visible. Error: %@", v31, 0x16u);
        sub_1A3C4B7E8(0, &qword_1EB12B150, &qword_1EB12B160);
        swift_arrayDestroy();
        MEMORY[0x1A590EEC0](v33, -1, -1);
        MEMORY[0x1A590EEC0](v31, -1, -1);
        v37(v27, v5);
      }

      else
      {
        v53 = *(v26 + 8);
        v53(v7, v5);
        v53(v27, v5);
      }
    }

    else if (*v19 == 1)
    {
      sub_1A3C52C70(0, &qword_1EB12B180);
      v65 = sub_1A524D474();
      sub_1A524BFA4();
      v43 = v56;
      sub_1A524C014();
      v67 = *(v57 + 8);
      (v67)(v14, v66);
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      v46 = v58;
      *(v45 + 16) = v58;
      *(v45 + 24) = v44;
      v72 = sub_1A41E32BC;
      v73 = v45;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      v71 = &block_descriptor_58_2;
      v47 = _Block_copy(aBlock);
      v48 = v46;

      v49 = v59;
      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A41E333C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      sub_1A3C36260(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v50 = v61;
      v51 = v64;
      sub_1A524E224();
      v52 = v65;
      MEMORY[0x1A5908790](v43, v49, v50, v47);
      _Block_release(v47);

      (*(isa + 1))(v50, v51);
      (*(v60 + 8))(v49, v62);
      (v67)(v43, v66);
    }
  }

  else
  {
    v38 = sub_1A524D244();
    if (qword_1EB1754F0 != -1)
    {
      swift_once();
    }

    v39 = qword_1EB1754F8;
    if (os_log_type_enabled(qword_1EB1754F8, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v23;
      *v41 = v23;
      v42 = v23;
      _os_log_impl(&dword_1A3C1C000, v39, v38, "failed to scroll %@ to visible. No request handler found.", v40, 0xCu);
      sub_1A41E325C(v41, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C4B7E8);
      MEMORY[0x1A590EEC0](v41, -1, -1);
      MEMORY[0x1A590EEC0](v40, -1, -1);
    }
  }

  return (*(v68 + 8))(v22, v69);
}

id sub_1A41E0CD8(void *a1)
{
  v2 = v1;
  sub_1A3C36260(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = sub_1A52434D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = v2 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_context;
  sub_1A41E2BFC(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_context, v8);
  v17 = v10[6];
  if (v17(v8, 1, v9) == 1)
  {
    sub_1A41E325C(v8, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720], sub_1A3C36260);
LABEL_6:
    v27 = *(v16 + *(type metadata accessor for LemonadeOneUpPresentationContext(0) + 24));
    v34 = v27;
    return v27;
  }

  v18 = v10[4];
  v40 = v10 + 4;
  v41 = v12;
  v39 = v18;
  v18(v15, v8, v9);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v42 = sub_1A3C52C70(0, &qword_1EB126B50);
  v47 = *&v42;
  *&v46[0] = a1;
  v43 = a1;
  v20 = sub_1A524D364();

  v21 = v10[1];
  v21(v15, v9);
  __swift_destroy_boxed_opaque_existential_0(v46);
  if (!v20)
  {
    goto LABEL_6;
  }

  v38 = v21;
  sub_1A3C52C70(0, &unk_1EB120990);
  v22 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_sourceImageViewSpec);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = v20;
  v25 = v22;
  v26 = objc_allocWithZone(ObjCClassFromMetadata);
  [v24 bounds];
  v27 = [v26 initWithRect:v24 inCoordinateSpace:?];
  [v27 setImageViewSpec_];
  v28 = sub_1A3C52C70(0, &unk_1EB134DD8);
  UIView.ancestors<A>(ofType:maxCount:)(v28, 0, 1);
  v29 = sub_1A524CA14();

  [v27 setContainingScrollViews_];

  v30 = v43;
  v45[3] = v42;
  v45[0] = v43;
  v31 = v16;
  v32 = v44;
  sub_1A41E2BFC(v31, v44);
  if (v17(v32, 1, v9) == 1)
  {
    v33 = v30;

    sub_1A41E325C(v32, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720], sub_1A3C36260);
  }

  else
  {
    v35 = v41;
    v39(v41, v32, v9);
    v36 = v30;
    [v24 bounds];
    sub_1A52434A4();
    if (v48)
    {
      v38(v35, v9);
    }

    else
    {
      [v27 setImageContentsRect_];

      v38(v35, v9);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v45);
  return v27;
}

id sub_1A41E120C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeOneUpPresentationDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A41E12E0()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1754F8 = result;
  return result;
}

void sub_1A41E134C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_1A524E2B4())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_unknownObjectRetain();
  sub_1A524E274();
  sub_1A3C52C70(0, &qword_1EB126B50);
  sub_1A41E3384();
  sub_1A524CF84();
  v3 = v15;
  v4 = v16;
  if (v12 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v5 = v3;
    v6 = v4;
    v7 = v3;
    if (!v4)
    {
      break;
    }

LABEL_13:
    v8 = (v6 - 1) & v6;
    v9 = *(*(v12 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v6)))));
    if (!v9)
    {
LABEL_19:
      sub_1A3C42540();
      return;
    }

    while (1)
    {
      v10 = sub_1A41E1DCC();

      v3 = v7;
      v4 = v8;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_1A524E304())
      {
        sub_1A3C52C70(0, &qword_1EB126B50);
        swift_dynamicCast();
        v9 = v11;
        v7 = v3;
        v8 = v4;
        if (v11)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v7 >= ((v14 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v6 = *(v13 + 8 * v7);
    ++v5;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1A41E156C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A41E3588();
    v2 = sub_1A524E3C4();
    v14 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &qword_1EB126B50);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A41E1F64();
        }

        v2 = v14;
        result = sub_1A524DBE4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A41E174C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v79 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_unknownObjectRetain();
  sub_1A524E274();
  sub_1A3C52C70(0, &qword_1EB126B50);
  sub_1A41E3384();
  sub_1A524CF84();
  v5 = v74;
  v6 = v75;
  v7 = v77;
  v8 = v78;
  v69 = v74;
  v70 = v75;
  v71 = v76;
  v72 = v77;
  v60 = v76;
  v9 = (v76 + 64) >> 6;
  v66 = (v3 + 56);
  v73 = v78;
  v63 = v75;
  v64 = v74;
  for (i = v9; ; v9 = i)
  {
    if (v5 < 0)
    {
      v17 = sub_1A524E304();
      if (!v17)
      {
        goto LABEL_58;
      }

      v67 = v17;
      sub_1A3C52C70(0, &qword_1EB126B50);
      swift_dynamicCast();
      v15 = v68;
      v13 = v7;
      v2 = v8;
      if (!v68)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v10 = v8;
      v11 = v7;
      if (v8)
      {
LABEL_16:
        v2 = (v10 - 1) & v10;
        v15 = *(*(v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
        v16 = v15;
        v13 = v11;
      }

      else
      {
        v12 = v9 <= (v7 + 1) ? v7 + 1 : v9;
        v13 = v12 - 1;
        v14 = v7;
        while (1)
        {
          v11 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_62;
          }

          if (v11 >= v9)
          {
            break;
          }

          v10 = *(v6 + 8 * v11);
          ++v14;
          if (v10)
          {
            goto LABEL_16;
          }
        }

        v15 = 0;
        v2 = 0;
      }

      v69 = v5;
      v70 = v6;
      v71 = v60;
      v72 = v13;
      v73 = v2;
      if (!v15)
      {
        goto LABEL_58;
      }
    }

    v18 = v15;
    v19 = sub_1A524DBE4();
    v20 = -1 << *(v3 + 32);
    v7 = v19 & ~v20;
    v5 = v7 >> 6;
    v11 = 1 << v7;
    if (((1 << v7) & v66[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v7 = v13;
    v8 = v2;
    v6 = v63;
    v5 = v64;
  }

  v21 = ~v20;
  v22 = sub_1A3C52C70(0, &qword_1EB126B50);
  v23 = *(*(v3 + 48) + 8 * v7);
  v65 = v22;
  while (1)
  {
    v24 = sub_1A524DBF4();

    if (v24)
    {
      break;
    }

    v7 = (v7 + 1) & v21;
    v5 = v7 >> 6;
    v11 = 1 << v7;
    if (((1 << v7) & v66[v7 >> 6]) == 0)
    {
      goto LABEL_6;
    }

    v23 = *(*(v3 + 48) + 8 * v7);
  }

  v26 = *(v3 + 32);
  v57 = ((1 << v26) + 63) >> 6;
  v4 = 8 * v57;
  if ((v26 & 0x3Fu) > 0xD)
  {
    goto LABEL_63;
  }

  while (2)
  {
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v56 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v28, v66, v27);
    v29 = *&v28[8 * v5] & ~v11;
    v30 = *(v3 + 16);
    v59 = v28;
    *&v28[8 * v5] = v29;
    v5 = v30 - 1;
    v32 = v63;
    v31 = v64;
    v33 = i;
LABEL_29:
    v61 = v5;
    while (v31 < 0)
    {
      v34 = sub_1A524E304();
      if (!v34)
      {
        goto LABEL_57;
      }

      v67 = v34;
      swift_dynamicCast();
      v35 = v68;
      if (!v68)
      {
        goto LABEL_57;
      }

LABEL_46:
      v40 = sub_1A524DBE4();
      v41 = v3;
      v42 = -1 << *(v3 + 32);
      v43 = v40 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & v66[v43 >> 6]) != 0)
      {
        v46 = ~v42;
        while (1)
        {
          v7 = *(*(v41 + 48) + 8 * v43);
          v47 = sub_1A524DBF4();

          if (v47)
          {
            break;
          }

          v43 = (v43 + 1) & v46;
          v44 = v43 >> 6;
          v45 = 1 << v43;
          if (((1 << v43) & v66[v43 >> 6]) == 0)
          {
            goto LABEL_30;
          }
        }

        v48 = v59[v44];
        v59[v44] = v48 & ~v45;
        v49 = (v48 & v45) == 0;
        v3 = v41;
        v32 = v63;
        v31 = v64;
        v5 = v61;
        v33 = i;
        if (!v49)
        {
          v5 = v61 - 1;
          if (__OFSUB__(v61, 1))
          {
            __break(1u);
          }

          if (v61 == 1)
          {

            v3 = MEMORY[0x1E69E7CD0];
            goto LABEL_58;
          }

          goto LABEL_29;
        }
      }

      else
      {
LABEL_30:

        v3 = v41;
        v32 = v63;
        v31 = v64;
        v5 = v61;
        v33 = i;
      }
    }

    if (v2)
    {
      v11 = v13;
LABEL_44:
      v38 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v35 = *(*(v31 + 48) + ((v11 << 9) | (8 * v38)));
      v39 = v35;
      v37 = v11;
LABEL_45:
      v69 = v31;
      v70 = v32;
      v71 = v60;
      v72 = v37;
      v13 = v37;
      v73 = v2;
      if (!v35)
      {
LABEL_57:
        v3 = sub_1A41E2424(v59, v57, v5, v3);
        goto LABEL_58;
      }

      goto LABEL_46;
    }

    if (v33 <= v13 + 1)
    {
      v36 = v13 + 1;
    }

    else
    {
      v36 = v33;
    }

    v37 = v36 - 1;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v33)
      {
        v35 = 0;
        v2 = 0;
        goto LABEL_45;
      }

      v2 = *(v32 + 8 * v11);
      ++v13;
      if (v2)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v51 = v4;

    v52 = v51;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v66, v52);
  sub_1A41E2180(v53, v57, v3, v7, &v69);
  v55 = v54;

  MEMORY[0x1A590EEC0](v53, -1, -1);
  v3 = v55;
LABEL_58:
  sub_1A3C42540();
  return v3;
}

uint64_t sub_1A41E1DCC()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = v0;
  sub_1A3C52C70(0, &qword_1EB126B50);
  v3 = sub_1A524DBE4();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = *(*(v1 + 48) + 8 * v5);
    v8 = sub_1A524DBF4();

    if (v8)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v13 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A41E2774();
    v11 = v13;
  }

  v12 = *(*(v11 + 48) + 8 * v5);
  sub_1A3E2B988(v5);
  result = v12;
  *v2 = v13;
  return result;
}

uint64_t sub_1A41E1F64()
{
  v1 = v0;
  v2 = *v0;
  sub_1A41E3588();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1A524DBE4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_1A41E2180(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1A524E304())
          {
            goto LABEL_29;
          }

          sub_1A3C52C70(0, &qword_1EB126B50);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1A41E2424(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_1A524DBE4();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1A3C52C70(0, &qword_1EB126B50);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_1A524DBF4();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_1A524DBF4();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1A41E2424(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1A41E3588();
  result = sub_1A524E3D4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1A524DBE4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A41E260C()
{
  v1 = v0;

  v2 = sub_1A524E2B4();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1A41E156C(v3, v2);
  v13 = v4;

  v5 = sub_1A524DBE4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1A3C52C70(0, &qword_1EB126B50);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_1A524DBF4();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_1A3E2B988(v7);
  result = sub_1A524DBF4();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A41E2774()
{
  v1 = v0;
  sub_1A41E3588();
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t _s12PhotosUICore26LemonadeOneUpConfigurationV9ContainerO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB12B160);
  v5 = v3;
  v6 = v2;
  v7 = sub_1A524DBF4();

  return v7 & 1;
}

uint64_t _s12PhotosUICore26LemonadeOneUpConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v24 = *(a1 + 19);
  v25 = *(a1 + 18);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *(a2 + 18);
  v23 = *(a2 + 19);
  v21 = *(a2 + 24);
  v22 = *(a1 + 24);
  v19 = *(a2 + 32);
  v20 = *(a1 + 32);
  sub_1A3C52C70(0, &qword_1EB12B160);
  if ((sub_1A524DBF4() & 1) == 0)
  {
    return 0;
  }

  if (v3 != 255)
  {
    if (v6 != 255)
    {
      if (v3)
      {
        if (v6)
        {
          goto LABEL_6;
        }
      }

      else if ((v6 & 1) == 0)
      {
LABEL_6:
        sub_1A3E041E4(v2, v3);
        sub_1A3E041E4(v2, v3);
        sub_1A3E041E4(v2, v3);
        sub_1A3E041E4(v5, v6);
        sub_1A3E041E4(v5, v6);
        v9 = sub_1A524DBF4();

        sub_1A3E041F8(v5, v6);
        sub_1A3E041F8(v2, v3);
        if (v9)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }

      sub_1A3E041E4(v2, v3);
      sub_1A3E041E4(v2, v3);
      sub_1A3E041E4(v5, v6);

LABEL_12:
      v10 = v2;
      v11 = v3;
      goto LABEL_13;
    }

LABEL_9:
    sub_1A3E041E4(v2, v3);
    sub_1A3E041E4(v5, v6);
    sub_1A3E041F8(v2, v3);
    v10 = v5;
    v11 = v6;
LABEL_13:
    sub_1A3E041F8(v10, v11);
    return 0;
  }

  if (v6 != 255)
  {
    goto LABEL_9;
  }

  LOBYTE(v3) = -1;
  sub_1A3E041E4(v2, 255);
  sub_1A3E041E4(v5, 255);
LABEL_17:
  sub_1A3E041F8(v2, v3);
  result = 0;
  if (v4 == v7 && ((v25 ^ v8) & 1) == 0 && ((v24 ^ v23) & 1) == 0)
  {
    if (v22)
    {
      if (v21)
      {
        sub_1A3C52C70(0, &qword_1EB134DE8);
        v13 = v21;
        v14 = v22;
        v15 = sub_1A524DBF4();

        if (v15)
        {
LABEL_25:
          if (v20)
          {
            if (v19)
            {
              type metadata accessor for PXSensitivityInterventionManager(0);
              v16 = v19;
              v17 = v20;
              v18 = sub_1A524DBF4();

              if (v18)
              {
                return 1;
              }
            }
          }

          else if (!v19)
          {
            return 1;
          }
        }
      }
    }

    else if (!v21)
    {
      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A41E2BFC(uint64_t a1, uint64_t a2)
{
  sub_1A3C36260(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41E2CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41E2D34(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A41E2D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A41E2DF8(void *a1)
{
  v3 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  v4 = *(v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + *(v3 + 28));

  return [a1 setAnimated_];
}

uint64_t objectdestroy_4Tm_2()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

void sub_1A41E2EC0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong presentedViewController];
    }

    else
    {
      v4 = 0;
    }

    v1(v4);
  }
}

unint64_t sub_1A41E2F54()
{
  result = qword_1EB134D60;
  if (!qword_1EB134D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134D60);
  }

  return result;
}

unint64_t sub_1A41E2FAC()
{
  result = qword_1EB134D68;
  if (!qword_1EB134D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134D68);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore26LemonadeOneUpConfigurationV9ContainerOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1A41E3068()
{
  sub_1A3C36260(319, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A3C36260(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A3C4B7E8(319, &qword_1EB120988, &unk_1EB120990);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A41E318C()
{
  result = type metadata accessor for LemonadeOneUpPresentationContext(319);
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

uint64_t sub_1A41E325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A41E32BC()
{
  [*(v0 + 16) invalidatePresentingGeometry];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A41E333C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A41E3384()
{
  result = qword_1EB126B48;
  if (!qword_1EB126B48)
  {
    sub_1A3C52C70(255, &qword_1EB126B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126B48);
  }

  return result;
}

void sub_1A41E33EC(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_7168310A7BB869661DCEBE4E2645382233LemonadeOneUpPresentationDelegate_hiddenAssetReferences) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A41E349C(void *a1)
{
  result = sub_1A41E0CD8(a1);
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result containingScrollViews];

  if (!v3)
  {
    return 0;
  }

  sub_1A3C52C70(0, &unk_1EB134DD8);
  v4 = sub_1A524CA34();

  if (v4 >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](0, v4);
    goto LABEL_8;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
LABEL_8:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

void sub_1A41E3588()
{
  if (!qword_1EB120530)
  {
    sub_1A3C52C70(255, &qword_1EB126B50);
    sub_1A41E3384();
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120530);
    }
  }
}

uint64_t sub_1A41E3610()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1AF6E8);
  __swift_project_value_buffer(v0, qword_1EB1AF6E8);
  return sub_1A5246F14();
}

uint64_t type metadata accessor for VisualPairingAppClipCode()
{
  result = qword_1EB1AF880;
  if (!qword_1EB1AF880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A41E36DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  if (qword_1EB1AF6E0 != -1)
  {
    swift_once();
  }

  v56 = sub_1A5246F24();
  v54 = __swift_project_value_buffer(v56, qword_1EB1AF6E8);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D224();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v11;
    v15 = a1;
    v16 = a2;
    v17 = v6;
    v18 = v7;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, v13, "[ACC Generator] Generating App Clip Code.", v19, 2u);
    v20 = v19;
    v7 = v18;
    v6 = v17;
    a2 = v16;
    a1 = v15;
    v11 = v14;
    MEMORY[0x1A590EEC0](v20, -1, -1);
  }

  result = sub_1A41E3D50(a1, a2, v11);
  if (!v3)
  {
    v52 = sub_1A41E4000(v11);
    v53 = v22;
    v23 = sub_1A5240E84();
    v24 = CGSVGDocumentCreateFromData();

    if (v24)
    {
      goto LABEL_7;
    }

    if (qword_1EB1AF6E0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v56, qword_1EB1AF6E8);
    v31 = sub_1A5246F04();
    v32 = sub_1A524D244();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = a2;
      v34 = v6;
      v35 = v7;
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1A3C1C000, v31, v32, "[ACC Generator] Failed to create CGSVGDocument from Data.", v36, 2u);
      v37 = v36;
      v7 = v35;
      v6 = v34;
      a2 = v33;
      MEMORY[0x1A590EEC0](v37, -1, -1);
    }

    sub_1A41E4410();
    v38 = swift_allocError();
    *v39 = 3;
    swift_willThrow();
    if (!v38)
    {
LABEL_7:
      v25 = [objc_opt_self() _imageWithCGSVGDocument_scale_orientation_];
      v26 = v57;
      v50 = v25;
      v51 = v24;
      if (v25)
      {
        goto LABEL_8;
      }

      if (qword_1EB1AF6E0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v56, qword_1EB1AF6E8);
      v42 = sub_1A5246F04();
      v43 = sub_1A524D244();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v6;
        v45 = v7;
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1A3C1C000, v42, v43, "[ACC Generator] Failed to create UIImage from CGSVGDocument.", v46, 2u);
        v47 = v46;
        v7 = v45;
        v6 = v44;
        v26 = v57;
        MEMORY[0x1A590EEC0](v47, -1, -1);
      }

      sub_1A41E4410();
      v48 = swift_allocError();
      *v49 = 4;
      swift_willThrow();
      if (!v48)
      {
LABEL_8:
        (*(v7 + 16))(v26, v11, v6);
        v27 = sub_1A5246F04();
        v28 = sub_1A524D224();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v57 = a1;
          v30 = v29;
          v56 = swift_slowAlloc();
          v58 = v56;
          *v30 = 136315138;
          sub_1A3F6D3EC();
          v54 = v27;
          sub_1A524EA44();
          (*(v7 + 8))(v26, v6);
          sub_1A3C2EF94();
        }

        sub_1A3C59280(v52, v53);
        (*(v7 + 8))(v26, v6);
        v40 = type metadata accessor for VisualPairingAppClipCode();
        v41 = v55;
        (*(v7 + 32))(v55 + *(v40 + 24), v11, v6);
        *v41 = v50;
        v41[1] = a1;
        v41[2] = a2;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*(v7 + 8))(v11, v6);
    }

    else
    {
      (*(v7 + 8))(v11, v6);
    }

    return sub_1A3C59280(v52, v53);
  }

  return result;
}

uint64_t sub_1A41E3D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1A524E404();

  v13 = 0xD000000000000021;
  v14 = 0x80000001A53CC560;
  MEMORY[0x1A5907B60](a1, a2);
  sub_1A5240E34();

  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A3D75F5C(v8);
    if (qword_1EB1AF6E0 != -1)
    {
      swift_once();
    }

    v11 = sub_1A5246F24();
    __swift_project_value_buffer(v11, qword_1EB1AF6E8);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return (*(v10 + 32))(a3, v8, v9);
}

uint64_t sub_1A41E4000(uint64_t a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_1A5240D44();
  v8 = [v6 generateSVGDataFromURL_];

  v9 = v6;
  if (v8)
  {
    v10 = v8;
    v11 = sub_1A5240EA4();

    return v11;
  }

  else
  {
    if (qword_1EB1AF6E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1A5246F24();
    __swift_project_value_buffer(v13, qword_1EB1AF6E8);
    (*(v3 + 16))(v5, a1, v2);
    v14 = sub_1A5246F04();
    v15 = sub_1A524D244();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v18[1] = swift_slowAlloc();
      *v16 = 136315138;
      sub_1A3F6D3EC();
      sub_1A524EA44();
      (*(v3 + 8))(v5, v2);
      sub_1A3C2EF94();
    }

    (*(v3 + 8))(v5, v2);
    sub_1A41E4410();
    swift_allocError();
    *v17 = 2;
    return swift_willThrow();
  }
}

unint64_t sub_1A41E42E8()
{
  result = qword_1EB134DF0;
  if (!qword_1EB134DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134DF0);
  }

  return result;
}

unint64_t sub_1A41E4364()
{
  result = sub_1A3DEFC9C();
  if (v1 <= 0x3F)
  {
    result = sub_1A5240E64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A41E4410()
{
  result = qword_1EB134DF8;
  if (!qword_1EB134DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134DF8);
  }

  return result;
}

uint64_t sub_1A41E4464()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1AF898);
  v1 = __swift_project_value_buffer(v0, qword_1EB1AF898);
  v2 = sub_1A45318CC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A41E44F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *(a4 - 8);
  (*(v15 + 16))(a5, a1, a4);
  v10 = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell();
  *(a5 + v10[9]) = a2;
  sub_1A41EE034(a3, a5 + v10[10], sub_1A3DF0038);
  sub_1A3C52C70(0, &qword_1EB126910);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v12 = [ObjCClassFromMetadata sharedInstance];
  *(a5 + v10[13]) = [v12 activityEntryFeedDrawDebugBackgrounds];
  *(a5 + v10[11]) = [v12 activityEntryFeedCompactCellDisplayStyle];
  sub_1A52434D4();
  sub_1A5247C74();

  sub_1A41EE09C(a3, sub_1A3DF0038);
  v13 = *(v15 + 8);

  return v13(a1, a4);
}

uint64_t sub_1A41E46EC()
{
  sub_1A41E52B0(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1A5243CC4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1A52434C4();
}

uint64_t sub_1A41E47E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v3 = sub_1A52434D4();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v63 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524B9A4();
  type metadata accessor for LemonadeSharedAlbumsAvatarView();
  v5 = *(a1 + 16);
  v60 = *(a1 + 24);
  v61 = v5;
  type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView();
  sub_1A5249754();
  v6 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  WitnessTable = swift_getWitnessTable();
  v73 = v6;
  v74 = WitnessTable;
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A41E51C0(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  v8 = sub_1A5248804();
  v9 = sub_1A5242C04();
  v71 = swift_getWitnessTable();
  v72 = MEMORY[0x1E697E5D8];
  v10 = swift_getWitnessTable();
  v11 = sub_1A41EDFEC(&qword_1EB129158, MEMORY[0x1E69C2160]);
  v76 = v8;
  v77 = v9;
  v78 = v10;
  v79 = v11;
  swift_getOpaqueTypeMetadata2();
  v76 = v8;
  v77 = v9;
  v78 = v10;
  v79 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = type metadata accessor for LemonadeDetailsNavigationButton();
  v13 = swift_getWitnessTable();
  v76 = v12;
  v77 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = v12;
  v77 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = OpaqueTypeMetadata2;
  v77 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v16 = sub_1A524B894();
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v48 - v17;
  sub_1A3DF1F90();
  v50 = v16;
  v19 = sub_1A5248804();
  v55 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v52 = v48 - v20;
  sub_1A41E5584(255);
  v56 = v19;
  v21 = sub_1A5248804();
  v57 = *(v21 - 8);
  v58 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v53 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v54 = v48 - v24;
  v62 = a1;
  v25 = v59;
  v26 = *(v59 + *(a1 + 36));
  if (v26)
  {
    v27 = *(*(v26 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
    v28 = v27;
  }

  else
  {
    v27 = 0;
  }

  v30 = v60;
  v29 = v61;
  (*(v60 + 104))(&v76, v61, v60);
  v75[6] = v86;
  v75[7] = v87;
  v75[8] = v88;
  v75[2] = v82;
  v75[3] = v83;
  v75[4] = v84;
  v75[5] = v85;
  v75[0] = v80;
  v75[1] = v81;
  v31 = sub_1A5249584();
  MEMORY[0x1EEE9AC00](v31);
  v48[-6] = v29;
  v48[-5] = v30;
  v48[-4] = v25;
  v48[-3] = v75;
  v48[-2] = &v76;
  v48[-1] = v27;
  v49 = v27;
  v32 = sub_1A524B884();
  v48[1] = v48;
  MEMORY[0x1EEE9AC00](v32);
  v48[-4] = v29;
  v48[-3] = v30;
  v48[-2] = v25;
  sub_1A524BC74();
  sub_1A41EDDFC(0, &qword_1EB12CAB0, MEMORY[0x1E697E3F0], MEMORY[0x1E69E6720]);
  v33 = v50;
  v34 = swift_getWitnessTable();
  sub_1A3DF2018();
  v35 = v52;
  sub_1A524A8C4();
  (*(v51 + 8))(v18, v33);
  swift_getKeyPath();
  sub_1A41E52B0(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  v36 = v63;
  sub_1A5247C84();
  v37 = sub_1A41EDFEC(&qword_1EB12CAD8, sub_1A3DF1F90);
  v69 = v34;
  v70 = v37;
  v38 = v56;
  v39 = swift_getWitnessTable();
  v40 = v53;
  sub_1A524A964();

  sub_1A3DF76B0(&v76);
  (*(v64 + 8))(v36, v65);
  (*(v55 + 8))(v35, v38);
  v41 = sub_1A41EDFEC(&qword_1EB1279F8, sub_1A41E5584);
  v67 = v39;
  v68 = v41;
  v42 = v58;
  swift_getWitnessTable();
  v43 = v57;
  v44 = *(v57 + 16);
  v45 = v54;
  v44(v54, v40, v42);
  v46 = *(v43 + 8);
  v46(v40, v42);
  v44(v66, v45, v42);
  return (v46)(v45, v42);
}

void sub_1A41E51E8()
{
  if (!qword_1EB134E10)
  {
    sub_1A41E527C(255);
    sub_1A41EDFEC(&qword_1EB134E40, sub_1A41E527C);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134E10);
    }
  }
}

void sub_1A41E52B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A41E5314()
{
  if (!qword_1EB134E20)
  {
    sub_1A41E539C(255);
    sub_1A3DF1428();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB134E20);
    }
  }
}

void sub_1A41E53D0()
{
  if (!qword_1EB134E30)
  {
    sub_1A41E5450();
    sub_1A41E54E4(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134E30);
    }
  }
}

void sub_1A41E5450()
{
  if (!qword_1EB134E38)
  {
    sub_1A3EC4330();
    sub_1A41ECA68(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134E38);
    }
  }
}

void sub_1A41E54E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A41EDDFC(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A41E55B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v97 = a4;
  v91 = a3;
  v90 = a2;
  v98 = a7;
  v96 = sub_1A5241FC4();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v92 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell();
  v75 = *(v88 - 8);
  v89 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v16 = &v70 - v15;
  type metadata accessor for LemonadeSharedAlbumsAvatarView();
  type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView();
  sub_1A5249754();
  v17 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  WitnessTable = swift_getWitnessTable();
  v115 = v17;
  v116 = WitnessTable;
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A41E51C0(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  v19 = sub_1A5248804();
  v20 = sub_1A5242C04();
  v113 = swift_getWitnessTable();
  v114 = MEMORY[0x1E697E5D8];
  v21 = swift_getWitnessTable();
  v22 = sub_1A41EDFEC(&qword_1EB129158, MEMORY[0x1E69C2160]);
  *&v107 = v19;
  *(&v107 + 1) = v20;
  *&v108 = v21;
  *(&v108 + 1) = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v107 = v19;
  *(&v107 + 1) = v20;
  *&v108 = v21;
  *(&v108 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = type metadata accessor for LemonadeDetailsNavigationButton();
  v76 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v71 = (&v70 - v24);
  v25 = swift_getWitnessTable();
  *&v107 = v23;
  *(&v107 + 1) = v25;
  v26 = v25;
  v73 = v25;
  v27 = swift_getOpaqueTypeMetadata2();
  v80 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v70 - v28;
  *&v107 = v23;
  *(&v107 + 1) = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v83 = v27;
  *&v107 = v27;
  *(&v107 + 1) = v30;
  v79 = v30;
  v81 = swift_getOpaqueTypeMetadata2();
  v87 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v86 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v77 = &v70 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v82 = &v70 - v35;
  v85 = sub_1A524B9A4();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v78 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v99 = &v70 - v38;
  sub_1A524B994();
  v39 = v88;
  v100 = a5;
  v101 = a6;
  v102 = v90;
  v103 = a1;
  v104 = v91;
  v40 = v75;
  v41 = *(v75 + 16);
  v91 = a1;
  v41(v16, a1, v88);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = a5;
  *(v43 + 24) = a6;
  v44 = v16;
  v45 = v29;
  (*(v40 + 32))(v43 + v42, v44, v39);

  v47 = v71;
  sub_1A472916C(v46, sub_1A41EDD00, 0, 0, sub_1A41EDD10, v43, v71);
  v48 = sub_1A5243A44();
  v49 = v92;
  (*(*(v48 - 8) + 56))(v92, 1, 1, v48);
  v50 = sub_1A5243B34();
  v51 = v93;
  (*(*(v50 - 8) + 56))(v93, 1, 1, v50);
  v52 = v94;
  sub_1A5241FB4();
  sub_1A524A6A4();
  (*(v95 + 8))(v52, v96);
  sub_1A41EE09C(v51, sub_1A3E75D1C);
  sub_1A41EE09C(v49, sub_1A3E75D50);
  (*(v76 + 8))(v47, v23);
  if (!v97)
  {
    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    goto LABEL_5;
  }

  sub_1A41E8CE0(v97, v39, &v107);
  if (!v107)
  {
LABEL_5:
    sub_1A41EDC80(&v107, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_6;
  }

  *(&v112 + 1) = &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer;
  v53 = swift_allocObject();
  *&v111 = v53;
  v54 = v108;
  *(v53 + 16) = v107;
  *(v53 + 32) = v54;
  *(v53 + 48) = v109;
  *(v53 + 64) = v110;
LABEL_6:
  v55 = v77;
  v56 = v83;
  v57 = v79;
  sub_1A524A534();
  (*(v80 + 8))(v45, v56);
  sub_1A41EDC80(&v111, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  *&v107 = v56;
  *(&v107 + 1) = v57;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v87;
  v60 = *(v87 + 16);
  v61 = v82;
  v62 = v81;
  v60(v82, v55, v81);
  v97 = *(v59 + 8);
  v97(v55, v62);
  v63 = v84;
  v64 = v78;
  v65 = v85;
  (*(v84 + 16))(v78, v99, v85);
  *&v107 = v64;
  v66 = v86;
  v60(v86, v61, v62);
  *(&v107 + 1) = v66;
  *&v111 = v65;
  *(&v111 + 1) = v62;
  v105 = sub_1A41EDFEC(&qword_1EB1214B8, MEMORY[0x1E697D6D0]);
  v106 = v58;
  sub_1A3DF4988(&v107, 2uLL, &v111);
  v67 = v97;
  v97(v61, v62);
  v68 = *(v63 + 8);
  v68(v99, v65);
  v67(v66, v62);
  return (v68)(v64, v65);
}

uint64_t sub_1A41E6288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v34 = a5;
  v33 = a4;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v40 = a6;
  v6 = sub_1A5242C04();
  v30[0] = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v38 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSharedAlbumsAvatarView();
  type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView();
  sub_1A5249754();
  v8 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  WitnessTable = swift_getWitnessTable();
  v52 = v8;
  v53 = WitnessTable;
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A41E51C0(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  v30[3] = sub_1A524BE24();
  v30[2] = swift_getWitnessTable();
  v10 = sub_1A524B784();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = sub_1A5248804();
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  v50 = swift_getWitnessTable();
  v51 = MEMORY[0x1E697E5D8];
  v16 = swift_getWitnessTable();
  v30[1] = v16;
  v17 = sub_1A41EDFEC(&qword_1EB129158, MEMORY[0x1E69C2160]);
  v46 = v13;
  v47 = v6;
  v48 = v16;
  v49 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v30 - v23;
  sub_1A52492F4();
  v41 = v33;
  v42 = v34;
  v43 = v36;
  v44 = v35;
  v45 = v37;
  sub_1A524B774();
  sub_1A524B0C4();
  (*(v31 + 8))(v12, v10);
  v25 = v38;
  sub_1A5247DE4();
  v26 = v30[0];
  sub_1A524A944();
  (*(v39 + 8))(v25, v26);
  (*(v32 + 8))(v15, v13);
  v27 = *(v19 + 16);
  v27(v24, v21, OpaqueTypeMetadata2);
  v28 = *(v19 + 8);
  v28(v21, OpaqueTypeMetadata2);
  v27(v40, v24, OpaqueTypeMetadata2);
  return (v28)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_1A41E68AC@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a5;
  v95 = a3;
  v107 = a1;
  v108 = a2;
  v106 = a6;
  v7 = type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView();
  swift_getTupleTypeMetadata2();
  v8 = sub_1A524BE24();
  v101 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v79 - v9;
  v87 = a4;
  v81 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v79 - v15;
  v105 = v16;
  v104 = sub_1A524DF24();
  v99 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v79 - v19;
  sub_1A41E51E8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v89 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41E51C0(0);
  v110 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v102 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v79 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v111 = &v79 - v27;
  type metadata accessor for LemonadeSharedAlbumsAvatarView();
  sub_1A5249754();
  v28 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  v86 = v7;
  WitnessTable = swift_getWitnessTable();
  v130 = v28;
  v131 = WitnessTable;
  v79 = WitnessTable;
  swift_getWitnessTable();
  v30 = sub_1A524B784();
  v98 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v79 - v31;
  v33 = sub_1A5248804();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v112 = &v79 - v38;
  sub_1A5249314();
  v39 = v90;
  v113 = a4;
  v114 = v90;
  v115 = v107;
  sub_1A524B774();
  v88 = *(v108 + 96);
  sub_1A524BC74();
  v40 = swift_getWitnessTable();
  v41 = v89;
  sub_1A524AFE4();
  (*(v98 + 8))(v32, v30);
  v128 = v40;
  v129 = MEMORY[0x1E697EBF8];
  v94 = swift_getWitnessTable();
  v91 = *(v34 + 16);
  v92 = v34 + 16;
  v91(v112, v36, v33);
  v42 = *(v34 + 8);
  v109 = v36;
  v43 = v36;
  v44 = v107;
  v97 = v34 + 8;
  v98 = v33;
  v96 = v42;
  v42(v43, v33);
  v45 = v87;
  v46 = sub_1A5249584();
  v47 = v108;
  v48 = *(v108 + 40);
  *v41 = v46;
  *(v41 + 8) = v48;
  *(v41 + 16) = 0;
  sub_1A41EDE68(0, &qword_1EB134F58, sub_1A41E527C);
  sub_1A41E7B28(v44, v47, v95, v45, v39, (v41 + *(v49 + 44)));
  sub_1A524BC74();
  sub_1A5248AD4();
  v50 = v93;
  sub_1A41EDED4(v41, v93, sub_1A41E51E8);
  v51 = v111;
  v52 = (v50 + *(v110 + 36));
  v53 = v137;
  v52[4] = v136;
  v52[5] = v53;
  v52[6] = v138;
  v54 = v133;
  *v52 = v132;
  v52[1] = v54;
  v55 = v135;
  v52[2] = v134;
  v52[3] = v55;
  sub_1A41EDED4(v50, v51, sub_1A41E51C0);
  if (*(v44 + *(type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell() + 44)) == 1)
  {
    v56 = v80;
    (*(v81 + 16))(v80, v44, v45);
    v57 = v83;
    v58 = sub_1A41E7990(v56, v45, v39, v83);
    v59 = v84;
    v60 = *(v84 + 16);
    v61 = v82;
    v62 = v86;
    v60(v82, v57, v86, v58);
    v63 = *(v59 + 8);
    v63(v57, v62);
    v116 = 0;
    v117 = 1;
    v125 = &v116;
    (v60)(v57, v61, v62);
    v126 = v57;
    v122 = MEMORY[0x1E6981840];
    v123 = v62;
    v119 = MEMORY[0x1E6981838];
    v120 = v79;
    v64 = v85;
    sub_1A3DF4988(&v125, 2uLL, &v122);
    v63(v61, v62);
    v63(v57, v62);
    v65 = v101;
    v66 = v103;
    v67 = v105;
    (*(v101 + 32))(v103, v64, v105);
    (*(v65 + 56))(v66, 0, 1, v67);
  }

  else
  {
    v66 = v103;
    (*(v101 + 56))(v103, 1, 1, v105);
  }

  swift_getWitnessTable();
  v68 = v99;
  v69 = v100;
  v70 = v104;
  v107 = *(v99 + 16);
  v107(v100, v66, v104);
  v108 = *(v68 + 8);
  (v108)(v66, v70);
  v71 = v109;
  v72 = v98;
  v91(v109, v112, v98);
  v125 = v71;
  v73 = v111;
  v74 = v102;
  sub_1A41EE034(v111, v102, sub_1A41E51C0);
  v126 = v74;
  v107(v66, v69, v70);
  v127 = v66;
  v122 = v72;
  v123 = v110;
  v124 = v70;
  v119 = v94;
  v120 = sub_1A41EDF3C();
  v118 = swift_getWitnessTable();
  v121 = swift_getWitnessTable();
  sub_1A3DF4988(&v125, 3uLL, &v122);
  v75 = v69;
  v76 = v108;
  (v108)(v75, v70);
  sub_1A41EE09C(v73, sub_1A41E51C0);
  v77 = v96;
  v96(v112, v72);
  v76(v66, v70);
  sub_1A41EE09C(v74, sub_1A41E51C0);
  return v77(v109, v72);
}

uint64_t sub_1A41E7478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v19;
  v20 = sub_1A5249754();
  v35 = *(v20 - 8);
  v36 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v34 = &v32 - v21;
  if (*(a1 + *(type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell() + 44)) == 1)
  {
    (*(a3 + 104))(v39, a2, a3);
    sub_1A3DF76B0(v39);
    v22 = *v39;
    v23 = (*(a3 + 80))(a2, a3);
    sub_1A493BE2C(v38);
    sub_1A493BE50(v23, v38, v18, v22);
    sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    swift_getWitnessTable();
    v24 = v34;
    sub_1A3DF4798(v18, v33);
    sub_1A41EE09C(v18, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  }

  else
  {
    (*(v32 + 16))(v8, a1, a2);
    sub_1A41E7990(v8, a2, a3, v12);
    swift_getWitnessTable();
    v25 = *(v10 + 16);
    v25(v15, v12, v9);
    v26 = *(v10 + 8);
    v26(v12, v9);
    v25(v12, v15, v9);
    sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    v24 = v34;
    sub_1A3DF4890(v12, v33, v9);
    v26(v12, v9);
    v26(v15, v9);
  }

  v27 = sub_1A41EDFEC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  WitnessTable = swift_getWitnessTable();
  v39[33] = v27;
  v39[34] = WitnessTable;
  v29 = v36;
  swift_getWitnessTable();
  v30 = v35;
  (*(v35 + 16))(v37, v24, v29);
  return (*(v30 + 8))(v24, v29);
}

double sub_1A41E7990@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v9);
  sub_1A41E8FB8(v11, a2);
  (*(a3 + 104))(v20, a2, a3);
  (*(v8 + 8))(a1, a2);
  v12 = type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView();
  memcpy((a4 + *(v12 + 36)), v20, 0x108uLL);
  v13 = (a4 + *(v12 + 40));
  v14 = *&v20[25];
  v15 = *&v20[29];
  v13[6] = *&v20[27];
  v13[7] = v15;
  v13[8] = *&v20[31];
  v16 = *&v20[17];
  v17 = *&v20[21];
  v13[2] = *&v20[19];
  v13[3] = v17;
  v13[4] = *&v20[23];
  v13[5] = v14;
  result = *&v20[15];
  *v13 = *&v20[15];
  v13[1] = v16;
  return result;
}

uint64_t sub_1A41E7B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v92 = a1;
  v93 = a4;
  v107 = a3;
  v108 = a6;
  v99 = a2;
  v8 = sub_1A524A204();
  v101 = *(v8 - 8);
  v102 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DF1428();
  v105 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v76 - v13;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524A274();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v21 - 8);
  sub_1A41E539C(0);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v76 - v27;
  v91 = a5;
  (*(a5 + 48))(a4, a5, v26);
  v84 = sub_1A524A454();
  v83 = v29;
  LOBYTE(a5) = v30;
  v82 = v31;
  KeyPath = swift_getKeyPath();
  v32 = *MEMORY[0x1E6980EF0];
  v94 = *(v18 + 104);
  v80 = v17;
  v94(v20, v32, v17);
  v89 = sub_1A524A154();
  v33 = *(v89 - 8);
  v88 = *(v33 + 56);
  v90 = v33 + 56;
  v88(v16, 1, 1, v89);
  sub_1A524A194();
  v79 = sub_1A524A1C4();
  v87 = sub_1A3E75D84;
  sub_1A41EE09C(v16, sub_1A3E75D84);
  v34 = *(v18 + 8);
  v85 = v18 + 8;
  v86 = v34;
  v34(v20, v17);
  v78 = swift_getKeyPath();
  LOBYTE(v18) = a5 & 1;
  LOBYTE(v109) = a5 & 1;
  v76 = sub_1A524B4A4();
  v77 = *(v99 + 48);
  v35 = *(v99 + 56);
  v36 = swift_getKeyPath();
  LOBYTE(v109) = v35;
  v37 = &v28[*(v23 + 44)];
  sub_1A41E5550(0);
  v99 = v38;
  v39 = *(v38 + 28);
  v97 = *MEMORY[0x1E6980FA8];
  v40 = v97;
  v96 = sub_1A524A354();
  v41 = *(v96 - 8);
  v95 = *(v41 + 104);
  v98 = v41 + 104;
  v95(v37 + v39, v40, v96);
  *v37 = swift_getKeyPath();
  v42 = v83;
  *v28 = v84;
  *(v28 + 1) = v42;
  v28[16] = v18;
  v43 = KeyPath;
  *(v28 + 3) = v82;
  *(v28 + 4) = v43;
  v28[40] = 0;
  v44 = v79;
  *(v28 + 6) = v78;
  *(v28 + 7) = v44;
  *(v28 + 8) = v76;
  *(v28 + 9) = v36;
  *(v28 + 10) = v77;
  v28[88] = v35;
  v109 = (*(v91 + 56))(v93);
  v110 = v45;
  sub_1A3D5F9DC();
  v46 = sub_1A524A464();
  v48 = v47;
  LOBYTE(v36) = v49;
  v50 = v80;
  v94(v20, *MEMORY[0x1E6980F30], v80);
  v88(v16, 1, 1, v89);
  sub_1A524A194();
  sub_1A524A1C4();
  sub_1A41EE09C(v16, v87);
  v86(v20, v50);
  v52 = v100;
  v51 = v101;
  v53 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x1E6980EA8], v102);
  sub_1A524A234();

  (*(v51 + 8))(v52, v53);
  v54 = sub_1A524A3C4();
  v56 = v55;
  LOBYTE(v52) = v57;

  sub_1A3E04DF4(v46, v48, v36 & 1);

  v109 = sub_1A524B4A4();
  v58 = sub_1A524A374();
  v60 = v59;
  LOBYTE(v48) = v61;
  v63 = v62;
  sub_1A3E04DF4(v54, v56, v52 & 1);

  v64 = *(v107 + 16);
  LOBYTE(v51) = *(v107 + 24);
  v65 = swift_getKeyPath();
  v66 = v104;
  v67 = &v104[*(v105 + 44)];
  v95(v67 + *(v99 + 28), v97, v96);
  *v67 = swift_getKeyPath();
  *v66 = v58;
  *(v66 + 8) = v60;
  *(v66 + 16) = v48 & 1;
  *(v66 + 24) = v63;
  *(v66 + 32) = v65;
  *(v66 + 40) = v64;
  *(v66 + 48) = v51;
  v68 = v103;
  sub_1A41EE034(v28, v103, sub_1A41E539C);
  v69 = v106;
  sub_1A41EE034(v66, v106, sub_1A3DF1428);
  v70 = v108;
  *v108 = 0;
  *(v70 + 8) = 0;
  v71 = v70;
  sub_1A41E5314();
  v73 = v72;
  sub_1A41EE034(v68, v71 + *(v72 + 48), sub_1A41E539C);
  sub_1A41EE034(v69, v71 + *(v73 + 64), sub_1A3DF1428);
  v74 = v71 + *(v73 + 80);
  *v74 = 0;
  *(v74 + 8) = 0;
  sub_1A41EE09C(v66, sub_1A3DF1428);
  sub_1A41EE09C(v28, sub_1A41E539C);
  sub_1A41EE09C(v69, sub_1A3DF1428);
  return sub_1A41EE09C(v68, sub_1A41E539C);
}

uint64_t sub_1A41E83DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v50 - v10;
  sub_1A3EC2BA0(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(v8 + 36));
  if (v15)
  {
    v53 = v9;
    v54 = a4;
    v16 = *(a3 + 24);

    v17 = v16(a2, a3);
    if (v17 <= 7u && ((1 << v17) & 0xD9) != 0)
    {
      (*(a3 + 128))(v15, a2, a3);

      v19 = type metadata accessor for LemonadeNavigationDestination();
      v20 = *(v19 - 8);
      v21 = *(v20 + 48);
      if (v21(v14, 1, v19) == 1)
      {
        v22 = v54;
        swift_storeEnumTagMultiPayload();
        if (v21(v14, 1, v19) != 1)
        {
          sub_1A41EE09C(v14, sub_1A3EC2BA0);
        }
      }

      else
      {
        v22 = v54;
        sub_1A41EDED4(v14, v54, type metadata accessor for LemonadeNavigationDestination);
      }

      return (*(v20 + 56))(v22, 0, 1, v19);
    }

    v52 = *(a3 + 40);
    v59[0] = v52(a2, a3);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1A524CB74();
    swift_getWitnessTable();
    sub_1A524D074();

    if (*&v57[0])
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        sub_1A3C52C70(0, &qword_1EB126910);
        v28 = [swift_getObjCClassFromMetadata() sharedInstance];
        v29 = [v28 activityEntryFeedCompactCellsOpen1upLimitedToEntryAssets];

        if (v29)
        {
          v30 = v52(a2, a3);
          v53 = v50;
          v59[0] = v30;
          MEMORY[0x1EEE9AC00](v30);
          v50[-2] = a2;
          v50[-1] = a3;
          sub_1A3C52C70(0, &qword_1EB126660);
          swift_getWitnessTable();
          sub_1A524C944();

          v31 = objc_opt_self();
          v32 = sub_1A524CA14();

          v33 = [v31 transientAssetCollectionWithAssets:v32 title:0];

          v34 = 0;
        }

        else
        {
          sub_1A41EE034(a1 + *(v8 + 40), v59, sub_1A3DF0038);
          v33 = v60;
          if (v60)
          {
            v43 = v61;
            __swift_project_boxed_opaque_existential_1(v59, v60);
            v33 = (*(v43 + 8))(v33, v43);
            __swift_destroy_boxed_opaque_existential_0(v59);
            if (v33)
            {
              v34 = 0;
            }

            else
            {
              v34 = -1;
            }
          }

          else
          {
            sub_1A41EE09C(v59, sub_1A3DF0038);
            v34 = -1;
          }
        }

        v41 = v54;
        sub_1A41EE034(a1 + *(v8 + 40), v59, sub_1A3DF0038);
        v44 = v60;
        if (v60)
        {
          v45 = v61;
          __swift_project_boxed_opaque_existential_1(v59, v60);
          v46 = (*(v45 + 16))(v27, v44, v45);
          __swift_destroy_boxed_opaque_existential_0(v59);
        }

        else
        {
          sub_1A41EE09C(v59, sub_1A3DF0038);
          v46 = 0;
        }

        v55 = v33;
        v56 = v34;
        sub_1A3E041E4(v33, v34);
        v47 = sub_1A3C5A374();
        v48 = sub_1A3C5A374();
        sub_1A41DF298(v27, &v55, v47 & 1, 1, v48 & 1, 0, v46, v57);
        sub_1A3E041F8(v33, v34);

        v49 = v57[1];
        *v41 = v57[0];
        *(v41 + 16) = v49;
        *(v41 + 32) = v58;
        v42 = type metadata accessor for LemonadeNavigationDestination();
LABEL_33:
        swift_storeEnumTagMultiPayload();
        return (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
      }

      swift_unknownObjectRelease();
    }

    v50[1] = a3 + 40;
    if (qword_1EB1AF890 != -1)
    {
      swift_once();
    }

    v35 = sub_1A5246F24();
    __swift_project_value_buffer(v35, qword_1EB1AF898);
    v36 = v53;
    (v53[2])(v11, a1, v8);
    v37 = sub_1A5246F04();
    v38 = sub_1A524D244();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      v59[0] = v50[0];
      *v39 = 136315138;
      v40 = v52(a2, a3);
      (v36[1])(v11, v8);
      MEMORY[0x1A5907DB0](v40, AssociatedTypeWitness);

      sub_1A3C2EF94();
    }

    (v36[1])(v11, v8);

    v41 = v54;
    v42 = type metadata accessor for LemonadeNavigationDestination();
    goto LABEL_33;
  }

  v23 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v24 = *(*(v23 - 8) + 56);

  return v24(a4, 0, 1, v23);
}

double sub_1A41E8CE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1A41E52B0(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (*(*(a2 + 24) + 120))(a1, *(a2 + 16), v7);
  if (v8)
  {
    v9 = [v8 localizedTitle];
    if (v9)
    {
      v10 = v9;
      sub_1A524C674();
    }

    sub_1A5245FB4();
  }

  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1A41E8EA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  result = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell();
  if (*(v3 + *(result + 52)) == 1)
  {
    sub_1A41EDDFC(0, &qword_1EB1202A0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1A52FC9F0;
    *(v5 + 32) = sub_1A524B3B4();
    *(v5 + 40) = sub_1A524B3C4();
    sub_1A524BE74();
    sub_1A524BE84();
    MEMORY[0x1A5906EC0](v5);
    result = sub_1A5248434();
    v6 = v9;
    v7 = v10;
    v8 = v11;
  }

  else
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1A41E8FB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_1A524B694();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_1A41E90A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A5249584();
  v6 = sub_1A52492F4();
  *a2 = v5;
  a2[1] = v6;
  sub_1A41EDE68(0, &qword_1EB134E48, sub_1A41EC49C);
  return sub_1A41E912C(v2, *(a1 + 16), *(a1 + 24), a2 + *(v7 + 44));
}

uint64_t sub_1A41E912C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v107 = a1;
  v105 = a4;
  v99 = sub_1A5241FC4();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v95 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1A5243834();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41E52B0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v80 - v13;
  v89 = sub_1A5243EC4();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v83 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC744(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC71C(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC674(0);
  v82 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC5F0();
  v94 = v25;
  v93 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v87 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC534();
  v102 = v27;
  v101 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v80 - v30;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1A524B6D4();
  sub_1A524B6A4();
  v35 = (*(a3 + 40))(a2, a3);
  v36 = *(v31 + 8);
  v92 = v31 + 8;
  v90 = v36;
  v36(v34, a2);
  *&v111 = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getWitnessTable();
  sub_1A524D074();

  v37 = v114;
  v114 = 0u;
  v115 = 0u;
  v116 = 1;
  v38 = sub_1A52429A4();
  (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
  (*(v103 + 104))(v86, *MEMORY[0x1E69C2678], v104);
  swift_unknownObjectRetain();
  v39 = v83;
  sub_1A5243ED4();
  v104 = a2;
  v103 = a3;
  v40 = v107 + *(type metadata accessor for SharedAlbumsActivityCompactCellKeyAssetView() + 40);
  sub_1A524BC74();
  sub_1A52481F4();
  (*(v88 + 32))(v19, v39, v89);
  v41 = *(v17 + 44);
  v42 = v82;
  v43 = &v19[v41];
  v44 = v112;
  *v43 = v111;
  *(v43 + 1) = v44;
  *(v43 + 2) = v113;
  v45 = v85;
  sub_1A41EDED4(v19, v85, sub_1A41EC744);
  v46 = v45 + *(v21 + 44);
  *v46 = 0x3FF0000000000000;
  *(v46 + 8) = 256;
  v89 = v40;
  v47 = *(v40 + 104);
  v48 = v84;
  v49 = &v84[*(v42 + 36)];
  v50 = *(sub_1A5248A14() + 20);
  v51 = *MEMORY[0x1E697F468];
  v52 = sub_1A52494A4();
  (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
  *v49 = v47;
  *(v49 + 1) = v47;
  sub_1A3E42C88();
  *&v49[*(v53 + 36)] = 256;
  v54 = v87;
  sub_1A41EDED4(v45, v48, sub_1A41EC71C);
  v55 = sub_1A5243A44();
  v56 = v95;
  (*(*(v55 - 8) + 56))(v95, 1, 1, v55);
  v57 = sub_1A5243B34();
  v58 = v96;
  (*(*(v57 - 8) + 56))(v96, 1, 1, v57);
  v59 = v97;
  sub_1A5241FB4();
  v60 = sub_1A41EC7D0();
  sub_1A524A6A4();
  (*(v98 + 8))(v59, v99);
  sub_1A41EE09C(v58, sub_1A3E75D1C);
  sub_1A41EE09C(v56, sub_1A3E75D50);
  sub_1A41EE09C(v48, sub_1A41EC674);
  if (v37)
  {
    v61 = v37;
    v62 = AssociatedTypeWitness;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v110[1] = 0;
    v110[2] = 0;
  }

  v110[0] = v61;
  v110[3] = v62;
  v99 = v37;
  swift_unknownObjectRetain();
  v108 = v42;
  v109 = v60;
  v63 = 1;
  swift_getOpaqueTypeConformance2();
  v64 = v94;
  sub_1A524A534();
  (*(v93 + 8))(v54, v64);
  sub_1A41EDC80(v110, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  sub_1A524B6A4();
  v65 = v104;
  v66 = (*(v103 + 24))(v104);
  v90(v34, v65);
  if (!sub_1A40B1BE4(v66, 1))
  {
    v68 = 0;
LABEL_9:
    v69 = 0;
    goto LABEL_10;
  }

  v67 = [objc_opt_self() tintColor];
  v68 = sub_1A40E8C64(v67);

  if (!v68)
  {
    v63 = 0;
    goto LABEL_9;
  }

  v63 = sub_1A524B524();
  v68 = *(v89 + 128);
  v69 = *(v89 + 136);

LABEL_10:
  v70 = v101;
  v71 = *(v101 + 16);
  v72 = v100;
  v73 = v106;
  v74 = v102;
  v71(v100, v106, v102);
  v75 = v105;
  v71(v105, v72, v74);
  sub_1A41ECC28(0, &qword_1EB134E58, sub_1A41EC534, sub_1A41EC9B0);
  v77 = &v75[*(v76 + 48)];
  sub_1A41EDCF0(v63);
  sub_1A41B617C(v63);
  swift_unknownObjectRelease();
  *v77 = v63;
  v77[1] = v68;
  v77[2] = v69;
  v78 = *(v70 + 8);
  v78(v73, v74);
  sub_1A41B617C(v63);
  return (v78)(v72, v74);
}

void sub_1A41E9DF0()
{
  sub_1A41ECB58();
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - v2;
  *v3 = sub_1A5249574();
  *(v3 + 1) = 0;
  v3[16] = 0;
  sub_1A41EDE68(0, &qword_1EB134F48, sub_1A41ECBEC);
  sub_1A41E9F48(&v3[*(v4 + 44)]);
}

void sub_1A41E9F48(uint64_t a1@<X8>)
{
  v9 = a1;
  v8 = sub_1A524B9A4();
  MEMORY[0x1EEE9AC00](v8);
  v7[3] = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A41ECCA4();
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  if (qword_1EB1AF8B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_1EB1EBC20;
  sub_1A41ECD6C(0);
  v7[2] = v5;
  sub_1A41ECDA0();
  v7[1] = v6;
  sub_1A41EDFEC(&qword_1EB134EF0, sub_1A41ECD6C);
  sub_1A41EDFEC(&qword_1EB134F50, sub_1A41ECDA0);
  sub_1A41EDFEC(&unk_1EB129840, type metadata accessor for SharedAlbumsActivityEntryItem);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41EA364@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  *a2 = v3;
  a2[1] = 0;
  sub_1A41EE034(v9, (a2 + 2), sub_1A3DF0038);
  sub_1A3C52C70(0, &qword_1EB126910);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = [ObjCClassFromMetadata sharedInstance];
  LOBYTE(v3) = [v6 activityEntryFeedDrawDebugBackgrounds];
  sub_1A41ECDA0();
  *(a2 + *(v7 + 52)) = v3;
  a2[7] = [v6 activityEntryFeedCompactCellDisplayStyle];
  sub_1A52434D4();
  sub_1A5247C74();

  return sub_1A41EE09C(v9, sub_1A3DF0038);
}

id sub_1A41EA490()
{
  result = sub_1A41EA4B0();
  qword_1EB1EBC20 = result;
  return result;
}

id sub_1A41EA4B0()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  v291 = v0;
  v292 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v277 = &v257 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v278 = &v257 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v279 = &v257 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v275 = &v257 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v276 = &v257 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v280 = &v257 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v257 - v14;
  v16 = sub_1A52411C4();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v260 = &v257 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v263 = &v257 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v274 = &v257 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v266 = &v257 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v271 = &v257 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v283 = &v257 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v257 - v30;
  v285 = [objc_opt_self() sharedPhotoLibrary];
  v32 = [objc_allocWithZone(PXSharedAlbumsActivityEntryAvatarConfiguration) init];
  v33 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v34 = sub_1A524C634();
  v35 = [v33 initWithDisplayName:v34 email:0];

  v36 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v37 = sub_1A524C634();
  v270 = [v36 initWithDisplayName:v37 email:0];

  v38 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v39 = sub_1A524C634();
  v265 = [v38 initWithDisplayName:v39 email:0];

  v40 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v41 = sub_1A524C634();
  v261 = [v40 initWithDisplayName:v41 email:0];

  v42 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v43 = sub_1A524C634();
  v262 = [v42 initWithDisplayName:v43 email:0];

  sub_1A52411B4();
  v284 = sub_1A5241164();
  v44 = *(v17 + 8);
  v288 = (v17 + 8);
  v289 = v16;
  v287 = v44;
  v44(v31, v16);
  v286 = v15;
  sub_1A5241104();
  v45 = MEMORY[0x1E69E6F90];
  sub_1A41EDDFC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v47 = v46;
  v48 = swift_allocObject();
  v293 = xmmword_1A52F9790;
  *(v48 + 16) = xmmword_1A52F9790;
  *(v48 + 32) = v35;
  v49 = swift_allocObject();
  *(v49 + 16) = v293;
  *(v49 + 32) = v32;
  sub_1A41EDDFC(0, &qword_1EB12B260, MEMORY[0x1E69E6158], v45);
  v51 = v50;
  v52 = swift_allocObject();
  v281 = xmmword_1A52F8E10;
  *(v52 + 16) = xmmword_1A52F8E10;
  v53 = qword_1EB1AF8B8;
  v273 = v35;
  v272 = v32;
  if (v53 != -1)
  {
    swift_once();
  }

  v282 = v51;
  v290 = v47;
  swift_beginAccess();
  result = [qword_1EB1EBC28 uuid];
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v55 = result;
  v56 = sub_1A524C674();
  v58 = v57;

  *(v52 + 32) = v56;
  *(v52 + 40) = v58;
  v269 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v59 = v285;
  v268 = sub_1A524C634();

  v267 = sub_1A5241074();
  v285 = sub_1A3C52C70(0, &qword_1EB12CD78);
  v60 = sub_1A524CA14();

  v284 = sub_1A3C52C70(0, &unk_1EB12CD80);
  v61 = sub_1A524CA14();

  v62 = sub_1A524C634();
  v63 = sub_1A524C634();
  v64 = sub_1A524C634();
  v65 = sub_1A524CA14();

  v66 = sub_1A524CA14();
  LOBYTE(v249) = 1;
  v67 = v268;
  v68 = v267;
  v269 = [v269 initWithPhotoLibrary:v59 uuid:v268 date:v267 type:2 isFromMe:0 contributors:v60 avatarConfigurations:v61 albumGUID:v62 albumName:v63 cloudOwnerIsAllowlisted:v249 message:v64 keyAssetUUIDs:v65 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v66 underlyingObject:0];
  v264 = v59;

  v69 = v292 + 8;
  v70 = *(v292 + 8);
  v70(v286, v291);
  v71 = type metadata accessor for SharedAlbumsActivityEntryItem();
  v72 = swift_allocObject();
  *(v72 + 16) = v293;
  v73 = qword_1EB1EBC28;
  *(v72 + 32) = qword_1EB1EBC28;
  v74 = v269;
  v75 = v73;
  LOBYTE(v73) = sub_1A3C5A374();
  v76 = sub_1A3C5A374();
  v267 = v74;
  v259 = sub_1A4705FE8(v74, v73, v72, v76 & 1);
  v77 = v283;
  sub_1A52411B4();
  v269 = sub_1A5241164();
  v287(v77, v289);
  sub_1A5241104();
  v78 = swift_allocObject();
  *(v78 + 16) = v293;
  v79 = v273;
  *(v78 + 32) = v273;
  v80 = swift_allocObject();
  *(v80 + 16) = v293;
  v81 = v272;
  *(v80 + 32) = v272;
  v82 = swift_allocObject();
  *(v82 + 16) = v281;
  v83 = qword_1EB1AF8C8;
  v258 = v79;
  v273 = v81;
  if (v83 != -1)
  {
    swift_once();
  }

  v283 = v70;
  v286 = v71;
  v292 = v69;
  swift_beginAccess();
  result = [qword_1EB1EBC38 uuid];
  if (!result)
  {
    goto LABEL_15;
  }

  v84 = result;
  v85 = sub_1A524C674();
  v87 = v86;

  *(v82 + 32) = v85;
  *(v82 + 40) = v87;
  v272 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v88 = v264;
  v269 = sub_1A524C634();

  v89 = sub_1A5241074();
  v90 = sub_1A524CA14();

  v91 = sub_1A524CA14();

  v92 = sub_1A524C634();
  v93 = sub_1A524C634();
  v94 = sub_1A524C634();
  v95 = sub_1A524CA14();

  v96 = sub_1A524CA14();
  LOBYTE(v250) = 1;
  v97 = v269;
  v272 = [v272 initWithPhotoLibrary:v88 uuid:v269 date:v89 type:2 isFromMe:0 contributors:v90 avatarConfigurations:v91 albumGUID:v92 albumName:v93 cloudOwnerIsAllowlisted:v250 message:v94 keyAssetUUIDs:v95 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v96 underlyingObject:0];
  v268 = v88;

  (v283)(v280, v291);
  v98 = swift_allocObject();
  *(v98 + 16) = v293;
  v99 = qword_1EB1EBC38;
  *(v98 + 32) = qword_1EB1EBC38;
  v100 = v272;
  v101 = v99;
  LOBYTE(v99) = sub_1A3C5A374();
  v102 = sub_1A3C5A374();
  v269 = v100;
  v264 = sub_1A4705FE8(v100, v99, v98, v102 & 1);
  v103 = v271;
  sub_1A52411B4();
  sub_1A5241164();
  v287(v103, v289);
  sub_1A5241104();
  v104 = swift_allocObject();
  *(v104 + 16) = v293;
  v105 = v270;
  *(v104 + 32) = v270;
  v106 = swift_allocObject();
  *(v106 + 16) = v293;
  v107 = v273;
  *(v106 + 32) = v273;
  v108 = swift_allocObject();
  *(v108 + 16) = v281;
  v109 = qword_1EB1EBC28;
  v280 = v107;
  v271 = v105;
  result = [v109 uuid];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v110 = result;
  v111 = sub_1A524C674();
  v113 = v112;

  *(v108 + 32) = v111;
  *(v108 + 40) = v113;
  v273 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v114 = v268;
  v115 = sub_1A524C634();

  v116 = sub_1A5241074();
  v117 = sub_1A524CA14();

  v118 = sub_1A524CA14();

  v119 = sub_1A524C634();
  v120 = sub_1A524C634();
  v121 = sub_1A524CA14();

  v122 = sub_1A524CA14();
  LOBYTE(v251) = 1;
  v273 = [v273 initWithPhotoLibrary:v114 uuid:v115 date:v116 type:1 isFromMe:0 contributors:v117 avatarConfigurations:v118 albumGUID:v119 albumName:v120 cloudOwnerIsAllowlisted:v251 message:0 keyAssetUUIDs:v121 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v122 underlyingObject:0];
  v272 = v114;

  (v283)(v276, v291);
  v123 = swift_allocObject();
  *(v123 + 16) = v293;
  v124 = qword_1EB1EBC28;
  *(v123 + 32) = qword_1EB1EBC28;
  v125 = v273;
  v126 = v124;
  LOBYTE(v124) = sub_1A3C5A374();
  v127 = sub_1A3C5A374();
  v270 = v125;
  v268 = sub_1A4705FE8(v125, v124, v123, v127 & 1);
  v128 = v266;
  sub_1A52411B4();
  sub_1A5241164();
  v287(v128, v289);
  sub_1A5241104();
  v129 = swift_allocObject();
  *(v129 + 16) = v293;
  v130 = v265;
  *(v129 + 32) = v265;
  v131 = swift_allocObject();
  *(v131 + 16) = v293;
  v132 = v280;
  *(v131 + 32) = v280;
  v133 = swift_allocObject();
  *(v133 + 16) = v281;
  v134 = qword_1EB1EBC28;
  v276 = v132;
  v273 = v130;
  result = [v134 uuid];
  if (!result)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v135 = result;
  v136 = sub_1A524C674();
  v138 = v137;

  *(v133 + 32) = v136;
  *(v133 + 40) = v138;
  v280 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v139 = v272;
  v140 = sub_1A524C634();

  v141 = sub_1A5241074();
  v142 = sub_1A524CA14();

  v143 = sub_1A524CA14();

  v144 = sub_1A524C634();
  v145 = sub_1A524C634();
  v146 = sub_1A524CA14();

  v147 = sub_1A524CA14();
  LOBYTE(v252) = 1;
  v148 = [v280 initWithPhotoLibrary:v139 uuid:v140 date:v141 type:0 isFromMe:0 contributors:v142 avatarConfigurations:v143 albumGUID:v144 albumName:v145 cloudOwnerIsAllowlisted:v252 message:0 keyAssetUUIDs:v146 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v147 underlyingObject:0];

  (v283)(v275, v291);
  v149 = swift_allocObject();
  *(v149 + 16) = v293;
  v150 = qword_1EB1EBC28;
  *(v149 + 32) = qword_1EB1EBC28;
  v151 = v148;
  v152 = v150;
  LOBYTE(v150) = sub_1A3C5A374();
  v153 = sub_1A3C5A374();
  v272 = v151;
  v266 = sub_1A4705FE8(v151, v150, v149, v153 & 1);
  v280 = v139;
  v154 = v274;
  sub_1A52411B4();
  sub_1A5241164();
  v287(v154, v289);
  sub_1A5241104();
  v155 = swift_allocObject();
  *(v155 + 16) = v293;
  v156 = v273;
  *(v155 + 32) = v273;
  v157 = swift_allocObject();
  *(v157 + 16) = v293;
  v158 = v276;
  *(v157 + 32) = v276;
  v275 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v276 = v158;
  v265 = v156;
  v159 = sub_1A524C634();

  v273 = sub_1A5241074();
  v160 = sub_1A524CA14();

  v161 = sub_1A524CA14();

  v162 = sub_1A524C634();
  v163 = sub_1A524C634();
  v164 = sub_1A524CA14();
  v165 = sub_1A524CA14();
  LOBYTE(v253) = 1;
  v166 = v280;
  v167 = v159;
  v168 = v159;
  v169 = v273;
  v170 = [v275 initWithPhotoLibrary:v280 uuid:v168 date:v273 type:6 isFromMe:0 contributors:v160 avatarConfigurations:v161 albumGUID:v162 albumName:v163 cloudOwnerIsAllowlisted:v253 message:0 keyAssetUUIDs:v164 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v165 underlyingObject:0];

  (v283)(v279, v291);
  v171 = v170;
  LOBYTE(v166) = sub_1A3C5A374();
  v172 = sub_1A3C5A374();
  v275 = v171;
  v273 = sub_1A4705FE8(v171, v166, MEMORY[0x1E69E7CC0], v172 & 1);
  v280 = v280;
  v173 = v274;
  sub_1A52411B4();
  sub_1A5241164();
  v287(v173, v289);
  sub_1A5241104();
  v174 = swift_allocObject();
  *(v174 + 16) = v293;
  v175 = v261;
  *(v174 + 32) = v261;
  v176 = swift_allocObject();
  *(v176 + 16) = v293;
  v177 = v276;
  *(v176 + 32) = v276;
  v178 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v276 = v177;
  v274 = v175;
  v179 = sub_1A524C634();

  v180 = sub_1A5241074();
  v181 = sub_1A524CA14();

  v182 = sub_1A524CA14();

  v183 = sub_1A524C634();
  v184 = sub_1A524C634();
  v185 = sub_1A524CA14();
  v186 = sub_1A524CA14();
  LOBYTE(v254) = 1;
  v187 = v280;
  v188 = [v178 initWithPhotoLibrary:v280 uuid:v179 date:v180 type:7 isFromMe:0 contributors:v181 avatarConfigurations:v182 albumGUID:v183 albumName:v184 cloudOwnerIsAllowlisted:v254 message:0 keyAssetUUIDs:v185 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v186 underlyingObject:0];

  (v283)(v279, v291);
  v189 = v188;
  LOBYTE(v179) = sub_1A3C5A374();
  v190 = sub_1A3C5A374();
  v261 = v189;
  v257 = sub_1A4705FE8(v189, v179, MEMORY[0x1E69E7CC0], v190 & 1);
  v191 = v263;
  sub_1A52411B4();
  sub_1A5241164();
  v287(v191, v289);
  sub_1A5241104();
  v192 = swift_allocObject();
  *(v192 + 16) = v293;
  v193 = v262;
  *(v192 + 32) = v262;
  v194 = swift_allocObject();
  *(v194 + 16) = v293;
  v195 = v276;
  *(v194 + 32) = v276;
  v196 = swift_allocObject();
  *(v196 + 16) = v281;
  v197 = qword_1EB1AF8C0;
  v279 = v195;
  v276 = v193;
  if (v197 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = [qword_1EB1EBC30 uuid];
  if (!result)
  {
    goto LABEL_18;
  }

  v198 = result;
  v199 = sub_1A524C674();
  v201 = v200;

  *(v196 + 32) = v199;
  *(v196 + 40) = v201;
  v263 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v202 = v280;
  v203 = sub_1A524C634();

  v204 = sub_1A5241074();
  v205 = sub_1A524CA14();

  v206 = sub_1A524CA14();

  v207 = sub_1A524C634();
  v208 = sub_1A524C634();
  v209 = sub_1A524CA14();

  v210 = v202;
  v211 = sub_1A524CA14();
  LOBYTE(v255) = 1;
  v212 = [v263 initWithPhotoLibrary:v202 uuid:v203 date:v204 type:4 isFromMe:1 contributors:v205 avatarConfigurations:v206 albumGUID:v207 albumName:v208 cloudOwnerIsAllowlisted:v255 message:0 keyAssetUUIDs:v209 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v211 underlyingObject:0];

  (v283)(v278, v291);
  v213 = swift_allocObject();
  *(v213 + 16) = v293;
  v214 = qword_1EB1EBC30;
  *(v213 + 32) = qword_1EB1EBC30;
  v215 = v212;
  v216 = v214;
  LOBYTE(v214) = sub_1A3C5A374();
  v217 = sub_1A3C5A374();
  v280 = v215;
  v278 = sub_1A4705FE8(v215, v214, v213, v217 & 1);
  v218 = v260;
  sub_1A52411B4();
  sub_1A5241164();
  v287(v218, v289);
  sub_1A5241104();
  v219 = swift_allocObject();
  *(v219 + 16) = v293;
  v220 = v276;
  *(v219 + 32) = v276;
  v221 = swift_allocObject();
  *(v221 + 16) = v293;
  v222 = v279;
  *(v221 + 32) = v279;
  v223 = swift_allocObject();
  *(v223 + 16) = v281;
  v224 = qword_1EB1EBC38;
  v288 = v222;
  v289 = v220;
  result = [v224 uuid];
  if (result)
  {
    v225 = result;
    v226 = sub_1A524C674();
    v228 = v227;

    *(v223 + 32) = v226;
    *(v223 + 40) = v228;
    v287 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
    v229 = v210;
    v230 = sub_1A524C634();

    v231 = sub_1A5241074();
    v232 = sub_1A524CA14();

    v233 = sub_1A524CA14();

    v234 = sub_1A524C634();
    v235 = sub_1A524C634();
    v236 = sub_1A524CA14();

    v237 = sub_1A524CA14();
    LOBYTE(v256) = 1;
    v238 = [v287 initWithPhotoLibrary:v229 uuid:v230 date:v231 type:3 isFromMe:1 contributors:v232 avatarConfigurations:v233 albumGUID:v234 albumName:v235 cloudOwnerIsAllowlisted:v256 message:0 keyAssetUUIDs:v236 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v237 underlyingObject:0];

    (v283)(v277, v291);
    v239 = swift_allocObject();
    *(v239 + 16) = v293;
    v240 = qword_1EB1EBC38;
    *(v239 + 32) = qword_1EB1EBC38;
    v241 = v238;
    v242 = v240;
    LOBYTE(v240) = sub_1A3C5A374();
    v243 = sub_1A3C5A374();
    v244 = sub_1A4705FE8(v241, v240, v239, v243 & 1);
    v245 = swift_allocObject();
    *(v245 + 16) = xmmword_1A5324BC0;
    v246 = v264;
    *(v245 + 32) = v259;
    *(v245 + 40) = v246;
    v247 = v266;
    *(v245 + 48) = v268;
    *(v245 + 56) = v247;
    v248 = v257;
    *(v245 + 64) = v273;
    *(v245 + 72) = v248;
    *(v245 + 80) = v278;
    *(v245 + 88) = v244;

    return v245;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1A41EC340()
{
  sub_1A524A044();
  sub_1A41ECABC(0);
  sub_1A41EDFEC(&qword_1EB134F00, sub_1A41ECABC);

  return sub_1A5247D14();
}

uint64_t sub_1A41EC3EC(uint64_t a1)
{
  v2 = sub_1A41EDC2C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A41EC438(uint64_t a1)
{
  v2 = sub_1A41EDC2C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A41EC4D8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A41ECC28(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41EC534()
{
  if (!qword_1EB134E60)
  {
    sub_1A41EC5F0();
    sub_1A41EC674(255);
    sub_1A41EC7D0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB134E60);
    }
  }
}

void sub_1A41EC5F0()
{
  if (!qword_1EB134E68)
  {
    sub_1A41EC674(255);
    sub_1A41EC7D0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB134E68);
    }
  }
}

void sub_1A41EC6A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41EC76C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A41EC7D0()
{
  result = qword_1EB134E80;
  if (!qword_1EB134E80)
  {
    sub_1A41EC674(255);
    sub_1A41EC880();
    sub_1A41EDFEC(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134E80);
  }

  return result;
}

unint64_t sub_1A41EC880()
{
  result = qword_1EB134E88;
  if (!qword_1EB134E88)
  {
    sub_1A41EC71C(255);
    sub_1A41EC900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134E88);
  }

  return result;
}

unint64_t sub_1A41EC900()
{
  result = qword_1EB134E90;
  if (!qword_1EB134E90)
  {
    sub_1A41EC744(255);
    sub_1A41EDFEC(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134E90);
  }

  return result;
}

void sub_1A41EC9E4()
{
  if (!qword_1EB134EA0)
  {
    sub_1A41ECA68(255, &qword_1EB134EA8, MEMORY[0x1E6981748], MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134EA0);
    }
  }
}

void sub_1A41ECA68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41ECAF0()
{
  if (!qword_1EB134EB8)
  {
    sub_1A41ECB58();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB134EB8);
    }
  }
}

void sub_1A41ECB58()
{
  if (!qword_1EB134EC0)
  {
    sub_1A41ECBEC(255);
    sub_1A41EDFEC(&qword_1EB134EF8, sub_1A41ECBEC);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134EC0);
    }
  }
}

void sub_1A41ECC28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A41ECCA4()
{
  if (!qword_1EB134ED8)
  {
    sub_1A41ECD6C(255);
    sub_1A41ECDA0();
    sub_1A41EDFEC(&qword_1EB134EF0, sub_1A41ECD6C);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134ED8);
    }
  }
}

void sub_1A41ECDA0()
{
  if (!qword_1EB134EE8)
  {
    type metadata accessor for SharedAlbumsActivityEntryItem();
    sub_1A41EDFEC(&unk_1EB129830, type metadata accessor for SharedAlbumsActivityEntryItem);
    v0 = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134EE8);
    }
  }
}

unint64_t sub_1A41ECEC0()
{
  result = qword_1EB134F08;
  if (!qword_1EB134F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134F08);
  }

  return result;
}

void sub_1A41ECF30()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A41E52B0(319, &qword_1EB129D40, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A3DF0038();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PXSharedAlbumsSettingsLemonadeActivityFeedCompactCellDisplayStyle(319);
        if (v3 <= 0x3F)
        {
          sub_1A41E52B0(319, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A41ED068(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  sub_1A41E52B0(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  if (*(v9 + 84) <= 0x7FFFFFFEu)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v9 + 80) & 0xF8;
  v14 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v15 = v13 + 15;
  if (a2 <= v12)
  {
    goto LABEL_23;
  }

  v16 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v15 + ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v14) + 9;
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = (a2 - v12 + ~(-1 << v17)) >> v17;
  if (v20 > 0xFFFE)
  {
    v18 = *&a1[v16];
    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v20 > 0xFE)
  {
    v18 = *&a1[v16];
    if (!*&a1[v16])
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v20)
  {
LABEL_10:
    v18 = a1[v16];
    if (!a1[v16])
    {
      goto LABEL_23;
    }

LABEL_18:
    v21 = (v18 - 1) << v17;
    if (v16 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

LABEL_23:
  if (v7 >= v11)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }

  else
  {
    v23 = (&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v12 > 0x7FFFFFFE)
    {
      v26 = *(v9 + 48);

      return v26((v15 + ((((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v14);
    }

    else
    {
      v24 = *v23;
      if (*v23 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      if ((v24 + 1) >= 2)
      {
        return v24;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1A41ED334(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  sub_1A41E52B0(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  v11 = *(v10 - 8);
  v12 = *(v8 + 64);
  if (*(v11 + 84) <= 0x7FFFFFFEu)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  v15 = *(v11 + 80) & 0xF8;
  v16 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + 15;
  v18 = ((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v17 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v16) + 9;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = (a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18);
    if (v22 > 0xFFFE)
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0xFF)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      *&a1[v18] = 0;
    }

    else if (v19)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v9 >= v13)
      {
        v25 = *(v28 + 56);

        v25(a1, a2, v9, v7);
      }

      else
      {
        v24 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (v14 > 0x7FFFFFFE)
        {
          v27 = *(v11 + 56);

          v27((v17 + ((((v24 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v16, a2);
        }

        else
        {
          *v24 = a2;
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v20 = ~v14 + a2;
  if (v18 < 4)
  {
    v21 = (v20 >> (8 * v18)) + 1;
    bzero(a1, v18);
    if (v18 == 1)
    {
      *a1 = v20;
      if (v19 <= 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v26 = v20 & ~(-1 << (8 * v18));
      *a1 = v26;
      a1[2] = BYTE2(v26);
      if (v19 <= 1)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    bzero(a1, v18);
    *a1 = v20;
    v21 = 1;
    if (v19 <= 1)
    {
LABEL_41:
      if (v19)
      {
        a1[v18] = v21;
      }

      return;
    }
  }

  if (v19 == 2)
  {
    *&a1[v18] = v21;
  }

  else
  {
    *&a1[v18] = v21;
  }
}

uint64_t sub_1A41ED6D0()
{
  result = sub_1A524B6D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A41ED758(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 271) & 0xFFFFFFFFFFFFFFF8) + 144;
  v9 = a2 - v6;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v16) + 1;
}

double sub_1A41ED8A4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 271) & 0xFFFFFFFFFFFFFFF8) + 144;
  if (v8 >= a3)
  {
    v14 = 0;
    v15 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 15) & 0xFFFFFFF8) + 271) & 0xFFFFFFF8) == 0xFFFFFF70)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return result;
      }

LABEL_36:
      v20 = v9 + 8;
      if (v6 < 0x7FFFFFFF)
      {
        v23 = &a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v23 + 232) = 0u;
          *(v23 + 216) = 0u;
          *(v23 + 200) = 0u;
          *(v23 + 184) = 0u;
          *(v23 + 168) = 0u;
          *(v23 + 152) = 0u;
          *(v23 + 136) = 0u;
          *(v23 + 120) = 0u;
          *(v23 + 104) = 0u;
          *(v23 + 88) = 0u;
          *(v23 + 72) = 0u;
          *(v23 + 56) = 0u;
          *(v23 + 40) = 0u;
          *(v23 + 24) = 0u;
          *(v23 + 8) = 0u;
          *(v23 + 248) = 0u;
          *v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v23 + 32) = a2 - 1;
        }
      }

      else if (v7 >= a2)
      {
        v24 = *(v5 + 56);

        v24();
      }

      else if (v9 != -8)
      {
        v21 = ~v7 + a2;
        v22 = a1;
        bzero(a1, v20);
        *v22 = v21;
      }

      return result;
    }
  }

  if (((((v9 + 15) & 0xFFFFFFF8) + 271) & 0xFFFFFFF8) == 0xFFFFFF70)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 15) & 0xFFFFFFF8) + 271) & 0xFFFFFFF8) != 0xFFFFFF70)
  {
    v17 = ~v8 + a2;
    v18 = a1;
    bzero(a1, ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 271) & 0xFFFFFFFFFFFFFFF8) + 144);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v10] = v16;
    }

    else
    {
      *&a1[v10] = v16;
    }
  }

  else if (v14)
  {
    a1[v10] = v16;
  }

  return result;
}

void sub_1A41EDB04()
{
  if (!qword_1EB134F18)
  {
    sub_1A41EC49C(255);
    sub_1A41EDFEC(&qword_1EB134F20, sub_1A41EC49C);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134F18);
    }
  }
}

void sub_1A41EDB98()
{
  if (!qword_1EB134F30)
  {
    sub_1A41ECABC(255);
    sub_1A41EDFEC(&qword_1EB134F00, sub_1A41ECABC);
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134F30);
    }
  }
}

unint64_t sub_1A41EDC2C()
{
  result = qword_1EB134F40;
  if (!qword_1EB134F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134F40);
  }

  return result;
}

uint64_t sub_1A41EDC80(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A41EDDFC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A41EDCF0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A41EDD10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1A41E83DC(v6, v3, v4, a1);
}

uint64_t sub_1A41EDD9C@<X0>(uint64_t *a1@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v3 = result;
  if (result)
  {
    result = swift_unknownObjectRetain();
  }

  *a1 = v3;
  return result;
}

void sub_1A41EDDFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A41EDE68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A41EDED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A41EDF3C()
{
  result = qword_1EB134F60;
  if (!qword_1EB134F60)
  {
    sub_1A41E51C0(255);
    sub_1A41EDFEC(&qword_1EB134F68, sub_1A41E51E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134F60);
  }

  return result;
}

uint64_t sub_1A41EDFEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A41EE034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41EE09C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A41EE10C()
{
  sub_1A41EE630(0, &qword_1EB134F70, type metadata accessor for TimelineEngineSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

void sub_1A41EE180(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C34400(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A41EE1E8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v31 = sub_1A5249CA4();
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EE5FC(255);
  *&v38 = v6;
  v7 = a1[4];
  v34 = a1[2];
  v35 = v7;
  v45 = v34;
  v46 = v7;
  swift_getOpaqueTypeMetadata2();
  *(&v38 + 1) = sub_1A524DF24();
  v8 = a1[5];
  v32 = a1[3];
  v33 = v8;
  v45 = v32;
  v46 = v8;
  swift_getOpaqueTypeMetadata2();
  *&v39 = sub_1A524DF24();
  sub_1A41EF3AC();
  *(&v39 + 1) = v9;
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  swift_getWitnessTable();
  v10 = sub_1A524B8B4();
  v11 = sub_1A41EF1A0(&qword_1EB1221E0, MEMORY[0x1E697C998]);
  v12 = sub_1A5248154();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  (*(**v2 + 168))(v17);
  sub_1A5249C94();
  (*(*(a1 - 1) + 16))(&v38, v2, a1);
  v20 = swift_allocObject();
  *&v21 = v34;
  *&v22 = v35;
  *(&v21 + 1) = v32;
  *(&v22 + 1) = v33;
  *(v20 + 16) = v21;
  *(v20 + 32) = v22;
  v23 = v43;
  *(v20 + 112) = v42;
  *(v20 + 128) = v23;
  *(v20 + 144) = v44;
  v24 = v39;
  *(v20 + 48) = v38;
  *(v20 + 64) = v24;
  v25 = v41;
  *(v20 + 80) = v40;
  *(v20 + 96) = v25;
  WitnessTable = swift_getWitnessTable();
  sub_1A41F18A4(v5, sub_1A41EFB6C, v20, v31, v10, v11, WitnessTable);
  v37 = WitnessTable;
  swift_getWitnessTable();
  v27 = *(v13 + 16);
  v27(v19, v15, v12);
  v28 = *(v13 + 8);
  v28(v15, v12);
  v27(v36, v19, v12);
  return (v28)(v19, v12);
}

void sub_1A41EE630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A41EE70C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A41EE778()
{
  if (!qword_1EB134FA0)
  {
    sub_1A41F44D8(255, &qword_1EB134FA8, sub_1A41EE81C, sub_1A41EF370, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134FA0);
    }
  }
}

void sub_1A41EE81C()
{
  if (!qword_1EB134FB0)
  {
    sub_1A41EE630(255, &qword_1EB134FB8, sub_1A41EE8D0, MEMORY[0x1E6981F40]);
    sub_1A41EF30C(&qword_1EB1350A0, &qword_1EB134FB8, sub_1A41EE8D0);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134FB0);
    }
  }
}

void sub_1A41EE8D0()
{
  if (!qword_1EB134FC0)
  {
    sub_1A41EE938();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB134FC0);
    }
  }
}

void sub_1A41EE938()
{
  if (!qword_1EB134FC8)
  {
    sub_1A41EE630(255, &qword_1EB134FD0, sub_1A41EE9EC, MEMORY[0x1E6981F40]);
    sub_1A41EF30C(&qword_1EB135098, &qword_1EB134FD0, sub_1A41EE9EC);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134FC8);
    }
  }
}

void sub_1A41EE9EC()
{
  if (!qword_1EB134FD8)
  {
    sub_1A41F46B8(255, &qword_1EB134FE0, sub_1A41EEA80);
    sub_1A41EEF10();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB134FD8);
    }
  }
}

void sub_1A41EEA80()
{
  if (!qword_1EB134FE8)
  {
    sub_1A41EEB00();
    sub_1A405D430(255, &qword_1EB127820, &qword_1EB1276A0);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134FE8);
    }
  }
}

void sub_1A41EEB00()
{
  if (!qword_1EB134FF0)
  {
    sub_1A41EE630(255, &qword_1EB134FF8, sub_1A41EEBB4, MEMORY[0x1E6981F40]);
    sub_1A41EF30C(&qword_1EB135050, &qword_1EB134FF8, sub_1A41EEBB4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134FF0);
    }
  }
}

void sub_1A41EEBB4()
{
  if (!qword_1EB135000)
  {
    sub_1A41EEC5C();
    sub_1A41F47E8(255, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB135000);
    }
  }
}

void sub_1A41EEC5C()
{
  if (!qword_1EB135008)
  {
    sub_1A41EE630(255, &qword_1EB135010, sub_1A41EED10, MEMORY[0x1E6981F40]);
    sub_1A41EF30C(&qword_1EB135048, &qword_1EB135010, sub_1A41EED10);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135008);
    }
  }
}

void sub_1A41EED10()
{
  if (!qword_1EB135018)
  {
    sub_1A41EED78(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB135018);
    }
  }
}

void sub_1A41EEDF0()
{
  if (!qword_1EB135030)
  {
    sub_1A41EEEB4();
    sub_1A41EF1A0(&qword_1EB135040, sub_1A41EEEB4);
    v0 = sub_1A52488F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135030);
    }
  }
}

void sub_1A41EEEB4()
{
  if (!qword_1EB135038)
  {
    sub_1A3FA9580();
    v0 = sub_1A52483A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135038);
    }
  }
}

void sub_1A41EEF10()
{
  if (!qword_1EB135058)
  {
    sub_1A41EE630(255, &qword_1EB135060, sub_1A41EEFC4, MEMORY[0x1E6981F40]);
    sub_1A41EF30C(&qword_1EB135090, &qword_1EB135060, sub_1A41EEFC4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135058);
    }
  }
}

void sub_1A41EEFC4()
{
  if (!qword_1EB135068)
  {
    sub_1A41EF038();
    sub_1A41EF1E8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB135068);
    }
  }
}

void sub_1A41EF038()
{
  if (!qword_1EB135070)
  {
    sub_1A41EF13C();
    sub_1A52439C4();
    sub_1A41EF1A0(&qword_1EB135080, sub_1A41EF13C);
    sub_1A41EF1A0(&qword_1EB1439B0, MEMORY[0x1E69C2760]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135070);
    }
  }
}

void sub_1A41EF13C()
{
  if (!qword_1EB135078)
  {
    sub_1A3F98058();
    sub_1A3F99568();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135078);
    }
  }
}

uint64_t sub_1A41EF1A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A41EF1E8()
{
  if (!qword_1EB135088)
  {
    sub_1A41EF038();
    sub_1A41EF13C();
    sub_1A52439C4();
    sub_1A41EF1A0(&qword_1EB135080, sub_1A41EF13C);
    sub_1A41EF1A0(&qword_1EB1439B0, MEMORY[0x1E69C2760]);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135088);
    }
  }
}

uint64_t sub_1A41EF30C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A41EE630(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A41EF3AC()
{
  if (!qword_1EB1350A8)
  {
    sub_1A41EE630(255, &qword_1EB1350B0, type metadata accessor for TimelineEngineCell, MEMORY[0x1E69E62F8]);
    sub_1A52411C4();
    sub_1A41EE630(255, &qword_1EB1350B8, sub_1A41EF4E0, MEMORY[0x1E69E6720]);
    sub_1A41EF714();
    sub_1A41EF1A0(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1350A8);
    }
  }
}

void sub_1A41EF4E0()
{
  if (!qword_1EB1350C0)
  {
    sub_1A41EF564();
    sub_1A41EF610();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1350C0);
    }
  }
}

void sub_1A41EF564()
{
  if (!qword_1EB1350C8)
  {
    type metadata accessor for TimelineEngineCellDebugViewModifier();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1350C8);
    }
  }
}

uint64_t type metadata accessor for TimelineEngineCellDebugViewModifier()
{
  result = qword_1EB160250;
  if (!qword_1EB160250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A41EF610()
{
  result = qword_1EB1350D0;
  if (!qword_1EB1350D0)
  {
    sub_1A41EF564();
    sub_1A41EF6C0();
    sub_1A41EF1A0(&qword_1EB1350E0, type metadata accessor for TimelineEngineCellDebugViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1350D0);
  }

  return result;
}

unint64_t sub_1A41EF6C0()
{
  result = qword_1EB1350D8;
  if (!qword_1EB1350D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1350D8);
  }

  return result;
}

unint64_t sub_1A41EF714()
{
  result = qword_1EB1350E8;
  if (!qword_1EB1350E8)
  {
    sub_1A41EE630(255, &qword_1EB1350B0, type metadata accessor for TimelineEngineCell, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1350E8);
  }

  return result;
}

uint64_t sub_1A41EF79C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v42 = a2;
  v43 = a1;
  v44 = a7;
  sub_1A41EE5FC(255);
  v54 = v11;
  v12 = a3;
  v37 = a5;
  swift_getOpaqueTypeMetadata2();
  v55 = sub_1A524DF24();
  v52 = a4;
  v53 = a6;
  v36 = a6;
  swift_getOpaqueTypeMetadata2();
  v56 = sub_1A524DF24();
  sub_1A41EF3AC();
  v57 = v13;
  swift_getTupleTypeMetadata();
  v41 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1A524B8B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v35 - v18;
  v19 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TimelineEngineFrame(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v12;
  v55 = a4;
  v25 = v12;
  v56 = a5;
  v57 = a6;
  type metadata accessor for TimelineEngine();
  v26 = v42;
  v27 = sub_1A41EE10C();
  v28 = *v26;
  sub_1A3DD108C();

  v29 = v43;
  sub_1A5248124();
  sub_1A3F46C44(v27, v28, v21, v24);
  v45 = v25;
  v46 = a4;
  v47 = v37;
  v48 = v36;
  v49 = v26;
  v50 = v24;
  v51 = v29;
  sub_1A524BC74();
  v30 = v38;
  sub_1A524B8A4();
  swift_getWitnessTable();
  v31 = *(v15 + 16);
  v32 = v39;
  v31(v39, v30, v14);
  v33 = *(v15 + 8);
  v33(v30, v14);
  v31(v44, v32, v14);
  v33(v32, v14);
  return sub_1A41F4B24(v24, type metadata accessor for TimelineEngineFrame);
}

uint64_t sub_1A41EFB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v81 = a3;
  v91 = a2;
  v90 = a8;
  v13 = type metadata accessor for TimelineEngineFrame(0);
  v83 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v84 = v14;
  v85 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EF3AC();
  v89 = v15;
  v88 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v98 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = v74 - v18;
  v79 = sub_1A5241144();
  v78 = *(v79 - 1);
  MEMORY[0x1EEE9AC00](v79);
  v77 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v108 = a5;
  *(&v108 + 1) = a7;
  swift_getOpaqueTypeMetadata2();
  v97 = sub_1A524DF24();
  v102 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = (v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v96 = v74 - v22;
  *&v108 = a4;
  *(&v108 + 1) = a6;
  swift_getOpaqueTypeMetadata2();
  v94 = sub_1A524DF24();
  v101 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v99 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v100 = v74 - v25;
  sub_1A41EE694(0);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EE5FC(0);
  v82 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v93 = v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v74 - v34;
  v36 = a4;
  *&v108 = a4;
  *(&v108 + 1) = a5;
  *&v86 = a5;
  v37 = a6;
  *&v109 = a6;
  *(&v109 + 1) = a7;
  *(&v86 + 1) = a7;
  v38 = type metadata accessor for TimelineEngine();
  v39 = *sub_1A41EE10C();
  LOBYTE(a5) = (*(v39 + 336))();

  if (a5)
  {
    sub_1A41F0808(v91, v38, v30);
  }

  v40 = v91;
  v41 = a1;
  v92 = v35;
  (*(v28 + 56))(v35, 1, 1, v27);
  v42 = v99;
  sub_1A41F09A0(v40, v38, v99);
  v43 = v41;
  *&v108 = v36;
  *(&v108 + 1) = v37;
  v74[0] = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74[1] = MEMORY[0x1E6982090];
  v44 = v94;
  WitnessTable = swift_getWitnessTable();
  v45 = v101;
  v46 = *(v101 + 16);
  v74[2] = v101 + 16;
  v75 = v46;
  v46(v100, v42, v44);
  v47 = *(v45 + 8);
  v101 = v45 + 8;
  v80 = v47;
  v47(v42, v44);
  sub_1A3DD108C();
  v48 = v77;
  sub_1A5248124();
  v49 = v95;
  sub_1A41F0DCC(v48, v38, v95);
  (*(v78 + 8))(v48, v79);
  v50 = v86;
  v108 = v86;
  v115 = swift_getOpaqueTypeConformance2();
  v51 = v97;
  v81 = swift_getWitnessTable();
  v52 = v102;
  v79 = *(v102 + 16);
  v79(v96, v49, v51);
  v53 = *(v52 + 8);
  v102 = v52 + 8;
  v53(v49, v51);
  v54 = *sub_1A41EE10C();
  v55 = (*(v54 + 384))();

  v107[0] = v55;
  (*(*(v38 - 1) + 16))(&v108, v43, v38);
  v56 = v85;
  sub_1A41F4000(v91, v85, type metadata accessor for TimelineEngineFrame);
  v57 = (*(v83 + 80) + 152) & ~*(v83 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v36;
  *(v58 + 24) = v50;
  *(v58 + 32) = v74[0];
  *(v58 + 40) = *(&v50 + 1);
  v59 = v113;
  *(v58 + 112) = v112;
  *(v58 + 128) = v59;
  *(v58 + 144) = v114;
  v60 = v109;
  *(v58 + 48) = v108;
  *(v58 + 64) = v60;
  v61 = v111;
  *(v58 + 80) = v110;
  *(v58 + 96) = v61;
  sub_1A41F5314(v56, v58 + v57, type metadata accessor for TimelineEngineFrame);
  sub_1A41EE630(0, &qword_1EB1350B0, type metadata accessor for TimelineEngineCell, MEMORY[0x1E69E62F8]);
  sub_1A52411C4();
  sub_1A41EE630(0, &qword_1EB1350B8, sub_1A41EF4E0, MEMORY[0x1E69E6720]);
  sub_1A41EF714();
  sub_1A41F5428();
  sub_1A41EF1A0(&qword_1EB1351B8, type metadata accessor for TimelineEngineCell);
  v62 = v87;
  sub_1A524B9C4();
  v63 = v93;
  sub_1A41F5500(v92, v93, sub_1A41EE5FC);
  *&v108 = v63;
  v64 = v99;
  v65 = v94;
  v75(v99, v100, v94);
  *(&v108 + 1) = v64;
  v66 = v96;
  v67 = v97;
  v79(v49, v96, v97);
  *&v109 = v49;
  v68 = v88;
  v69 = v98;
  v70 = v89;
  (*(v88 + 16))(v98, v62, v89);
  *(&v109 + 1) = v69;
  v107[0] = v82;
  v107[1] = v65;
  v107[2] = v67;
  v107[3] = v70;
  v103 = sub_1A41F5568(&qword_1EB1351C0, sub_1A41EE5FC, sub_1A41F4CE4);
  v104 = WitnessTable;
  v105 = v81;
  v106 = sub_1A41F5568(&qword_1EB1351C8, sub_1A41EF3AC, sub_1A41F5428);
  sub_1A3DF4988(&v108, 4uLL, v107);
  v71 = *(v68 + 8);
  v71(v62, v70);
  v53(v66, v67);
  v72 = v80;
  v80(v100, v65);
  sub_1A41F55D8(v92, sub_1A41EE5FC);
  v71(v98, v70);
  v53(v95, v67);
  v72(v99, v65);
  return sub_1A41F55D8(v93, sub_1A41EE5FC);
}

void sub_1A41F0808(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1A5249574();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  sub_1A41F1B80();
  sub_1A41F1A00(v3, a1, a2[2], a2[3], a2[4], a2[5]);
}

uint64_t sub_1A41F09A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a3;
  v39 = *(*(a2 + 16) - 8);
  v40 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v44 = v8;
  v46 = v8;
  v47 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v36 - v14;
  v15 = sub_1A524DF24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v36 - v19;
  v20 = *(v3 + 72);
  if (v20)
  {
    v43 = v10;
    v36 = v18;

    v37 = v15;
    v22 = v39;
    v20(v21);
    v23 = sub_1A41EE10C();
    v24 = v40;
    v40 = v16;
    v25 = v44;
    sub_1A42EFB50(v23, v24, v44, v7);
    sub_1A3C33378(v20);

    v26 = v25;
    v16 = v40;
    (*(v22 + 8))(v5, v26);
    v15 = v37;
    v27 = v38;
    v28 = *(v43 + 16);
    v28(v38, v12, OpaqueTypeMetadata2);
    v29 = *(v43 + 8);
    v29(v12, OpaqueTypeMetadata2);
    v28(v12, v27, OpaqueTypeMetadata2);
    v10 = v43;
    v29(v27, OpaqueTypeMetadata2);
    v30 = v36;
    (*(v10 + 32))(v36, v12, OpaqueTypeMetadata2);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v18;
  }

  (*(v10 + 56))(v30, v31, 1, OpaqueTypeMetadata2);
  v32 = *(v16 + 16);
  v33 = v41;
  v32(v41, v30, v15);
  v34 = *(v16 + 8);
  v34(v30, v15);
  v46 = v44;
  v47 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v32(v42, v33, v15);
  return (v34)(v33, v15);
}

uint64_t sub_1A41F0DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X8>)
{
  v46 = a1;
  v5 = *(a2 + 24);
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v48 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 40);
  v54 = v5;
  v55 = v8;
  v51 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v45 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v43 - v12;
  v13 = sub_1A524DF24();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (v43 - v19);
  v21 = (*(**v3 + 288))(v18);
  v52 = v5;
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v44 = a3;
    v24 = v3[11];
    if (v24)
    {
      v25 = *&v21;
      v43[1] = v3[12];
      v26 = v24;

      sub_1A5240ED4();
      v28 = v27 - v25;
      if (v28 > 0.0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0.0;
      }

      v30 = *sub_1A41EE10C();
      v31 = (*(v30 + 720))();

      v33 = v48;
      v26(v32);
      v34 = sub_1A41EE10C();
      v35 = v45;
      sub_1A42EFC4C(v34, v52, v51, v29 / v31);
      sub_1A3C33378(v26);

      v49[1](v33, v52);
      v49 = v20;
      v36 = v50;
      v48 = *(v50 + 16);
      v37 = v47;
      (v48)(v47, v35, OpaqueTypeMetadata2);
      v38 = *(v36 + 8);
      v38(v35, OpaqueTypeMetadata2);
      (v48)(v35, v37, OpaqueTypeMetadata2);
      v38(v37, OpaqueTypeMetadata2);
      v39 = v36;
      v20 = v49;
      (*(v39 + 32))(v16, v35, OpaqueTypeMetadata2);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    a3 = v44;
  }

  (*(v50 + 56))(v16, v23, 1, OpaqueTypeMetadata2);
  v40 = *(v14 + 16);
  v40(v20, v16, v13);
  v41 = *(v14 + 8);
  v41(v16, v13);
  v54 = v52;
  v55 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v40(a3, v20, v13);
  return (v41)(v20, v13);
}

uint64_t sub_1A41F12C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v55 = a7;
  sub_1A41EF564();
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EF4E0();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TimelineEngine3DGeometry();
  MEMORY[0x1EEE9AC00](v49);
  v50 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for TimelineEngineCell();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TimelineEngineFrame(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TimelineEngineCellFrame(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = (&v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61[0] = a3;
  v61[1] = a4;
  v61[2] = a5;
  v61[3] = a6;
  type metadata accessor for TimelineEngine();
  v27 = sub_1A41EE10C();
  sub_1A41F4000(a2, v23, type metadata accessor for TimelineEngineFrame);
  sub_1A41F4000(a1, v20, type metadata accessor for TimelineEngineCell);
  sub_1A3F47594(v27, v23, v20, v26);
  sub_1A41EE180(0, &qword_1EB134F80, &qword_1EB134F78, &protocol descriptor for TimelineEngineDataSource, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v28 = v59;
  v29 = v60;
  __swift_project_boxed_opaque_existential_1(&v58, v59);
  (v29[2])(&v56, v26, v28, v29);
  if (v57)
  {
    sub_1A3C34460(&v56, v61);
    __swift_destroy_boxed_opaque_existential_0(&v58);
    v30 = sub_1A41EE10C();
    sub_1A41F4000(a1, v20, type metadata accessor for TimelineEngineCell);
    sub_1A3F4678C();
    v32 = v31;
    sub_1A3F471F8();
    v33 = v50;
    sub_1A3EF9390(v30, v20, v50, v32, v34);
    sub_1A3C341C8(v61, &v58);
    v35 = sub_1A41EE10C();
    v36 = v48;
    sub_1A470FEC0(&v58, v35, v48);
    v37 = v51;
    v38 = v36 + *(v51 + 36);
    sub_1A41F4000(a1, v38, type metadata accessor for TimelineEngineCell);
    v39 = type metadata accessor for TimelineEngineCellDebugViewModifier();
    sub_1A41F4000(v26, v38 + *(v39 + 20), type metadata accessor for TimelineEngineCellFrame);
    v40 = sub_1A41EE10C();
    v59 = v49;
    v60 = &off_1F16E75F8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v58);
    sub_1A41F4000(v33, boxed_opaque_existential_1, type metadata accessor for TimelineEngine3DGeometry);
    v42 = sub_1A41EF610();
    v43 = v52;
    sub_1A42EDE20(v40, a1, &v58, v26, v37, v42);

    sub_1A41F4B24(v36, sub_1A41EF564);
    sub_1A41F4B24(v33, type metadata accessor for TimelineEngine3DGeometry);
    __swift_destroy_boxed_opaque_existential_0(v61);
    sub_1A41F4B24(v26, type metadata accessor for TimelineEngineCellFrame);
    __swift_destroy_boxed_opaque_existential_0(&v58);
    v45 = v53;
    v44 = v54;
    v46 = v55;
    (*(v53 + 32))(v55, v43, v54);
    return (*(v45 + 56))(v46, 0, 1, v44);
  }

  else
  {
    sub_1A41F4B24(v26, type metadata accessor for TimelineEngineCellFrame);
    sub_1A41F5638(&v56, &qword_1EB1351D0, &qword_1EB1351D8, &protocol descriptor for TimelineEngineData, MEMORY[0x1E69E6720]);
    __swift_destroy_boxed_opaque_existential_0(&v58);
    return (*(v53 + 56))(v55, 1, 1, v54);
  }
}

uint64_t sub_1A41F18A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_1A5248144();
  return (*(v14 + 8))(a1, a4);
}

void sub_1A41F1A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A41EE938();
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v16 - v14;
  *v15 = sub_1A5249304();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_1A41F42D8(0, &qword_1EB1351A8, &qword_1EB134FD0, sub_1A41EE9EC);
  sub_1A41F1C18(a1, a2, a3, a4, a5, a6);
}

void sub_1A41F1B80()
{
  if (!qword_1EB1350F0)
  {
    sub_1A41EE630(255, &qword_1EB134FB8, sub_1A41EE8D0, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1350F0);
    }
  }
}

void sub_1A41F1C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A41EEF10();
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v13[96] = a3;
  v13[97] = a4;
  v13[98] = a5;
  v13[99] = a6;
  type metadata accessor for TimelineEngine();
  sub_1A41F1DE8(a2, v13);
}

void sub_1A41F1DE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[9] = a2;
  sub_1A41EE630(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v19[7] = v19 - v4;
  v19[8] = sub_1A5249584();
  v37 = 1;
  v21 = sub_1A5249314();
  v46 = 1;
  v19[3] = a1;
  *v5.i64 = sub_1A3F466C0();
  *v6.i64 = *v5.i64 - trunc(*v5.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v20 = vnegq_f64(v7);
  v22 = vbslq_s8(v20, v6, v5);
  v8 = sub_1A524B434();
  sub_1A5247EE4();
  v9 = sub_1A524BC74();
  v11 = v10;
  v12 = sub_1A524B434();
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A3F466C0();
  v45[0] = sub_1A524CEE4();
  v45[1] = v13;
  sub_1A3D5F9DC();
  v14 = sub_1A524A464();
  v16 = v15;
  *&v38[0] = 0;
  *(&v38[0] + 1) = v22.i64[0];
  v38[1] = v47;
  v38[2] = v48;
  *&v39 = v49;
  *(&v39 + 1) = v8;
  LOWORD(v40) = 256;
  *(&v40 + 1) = v9;
  *&v41 = v11;
  *(&v41 + 1) = v12;
  v42 = 0x4024000000000000;
  *&v44[0] = 0;
  v43 = 0;
  *(&v44[2] + 8) = v36;
  *(&v44[1] + 8) = v35;
  *(v44 + 8) = v34;
  v18 = v17 & 1;
  v50 = v17 & 1;
  v27 = v40;
  v28 = v41;
  v25 = v48;
  v26 = v39;
  v23 = v38[0];
  v24 = v47;
  v33 = *(&v36 + 1);
  v31 = v44[1];
  v32 = v44[2];
  v29 = 0x4024000000000000uLL;
  v30 = v44[0];
  sub_1A41F4000(v38, v45, sub_1A41EED78);
  sub_1A3E75E68(v14, v16, v18);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41F2B0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v41 = a2;
  v44 = a5;
  sub_1A41EF1E8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  sub_1A41EF038();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - v24;
  v45 = a1;
  v46 = v41;
  v47 = a3;
  v48 = a4;
  v26 = type metadata accessor for TimelineEngine();
  v27 = v25;
  v40 = v25;
  sub_1A41F2E54(v26);
  v38 = v12;
  sub_1A41F3128(v26, sub_1A41F43A0, sub_1A41F34C0, v12);
  sub_1A41F319C(v26);
  v28 = *(v15 + 16);
  v29 = v19;
  v39 = v19;
  v28(v19, v27, v14);
  v30 = v43;
  sub_1A41F5500(v12, v43, sub_1A41EF1E8);
  v31 = v42;
  v28(v42, v22, v14);
  v32 = v44;
  v28(v44, v29, v14);
  sub_1A41EEFC4();
  v34 = v33;
  sub_1A41F5500(v30, &v32[*(v33 + 48)], sub_1A41EF1E8);
  v28(&v32[*(v34 + 64)], v31, v14);
  v35 = *(v15 + 8);
  v35(v22, v14);
  sub_1A41F55D8(v38, sub_1A41EF1E8);
  v35(v40, v14);
  v35(v31, v14);
  sub_1A41F55D8(v30, sub_1A41EF1E8);
  return (v35)(v39, v14);
}

uint64_t sub_1A41F2E54(uint64_t a1)
{
  v3 = sub_1A52439C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EF13C();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a1 - 8) + 16))(v20, v1, a1, v10);
  v13 = swift_allocObject();
  v14 = *(a1 + 32);
  *(v13 + 16) = *(a1 + 16);
  *(v13 + 32) = v14;
  v15 = v20[5];
  *(v13 + 112) = v20[4];
  *(v13 + 128) = v15;
  *(v13 + 144) = v21;
  v16 = v20[1];
  *(v13 + 48) = v20[0];
  *(v13 + 64) = v16;
  v17 = v20[3];
  *(v13 + 80) = v20[2];
  *(v13 + 96) = v17;
  sub_1A3F98058();
  sub_1A3F99568();
  sub_1A524B704();
  sub_1A5247DB4();
  sub_1A41EF1A0(&qword_1EB135080, sub_1A41EF13C);
  sub_1A41EF1A0(&qword_1EB1439B0, MEMORY[0x1E69C2760]);
  sub_1A524A944();
  (*(v4 + 8))(v6, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1A41F3128@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void)@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1A5249304();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  a2(0);
  return a3(v4, a1[2], a1[3], a1[4], a1[5]);
}

uint64_t sub_1A41F319C(void *a1)
{
  v3 = sub_1A52439C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A41EF13C();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(*(a1 - 1) + 16))(v28, v1, a1, v10);
  v13 = swift_allocObject();
  v14 = a1[2];
  v15 = a1[3];
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  v16 = a1[4];
  v17 = a1[5];
  *(v13 + 32) = v16;
  *(v13 + 40) = v17;
  v18 = v28[5];
  *(v13 + 112) = v28[4];
  *(v13 + 128) = v18;
  *(v13 + 144) = v29;
  v19 = v28[1];
  *(v13 + 48) = v28[0];
  *(v13 + 64) = v19;
  v20 = v28[3];
  *(v13 + 80) = v28[2];
  *(v13 + 96) = v20;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v1;
  sub_1A3F98058();
  sub_1A3F99568();
  sub_1A524B704();
  sub_1A5247DB4();
  sub_1A41EF1A0(&qword_1EB135080, sub_1A41EF13C);
  sub_1A41EF1A0(&qword_1EB1439B0, MEMORY[0x1E69C2760]);
  sub_1A524A944();
  (*(v4 + 8))(v6, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1A41F3478@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B544();
  result = sub_1A524B434();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1A41F34C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v11 = sub_1A52439C4();
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EF13C();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = a2;
  *(&v28 + 1) = a3;
  *&v29 = a4;
  *(&v29 + 1) = a5;
  v19 = type metadata accessor for TimelineEngine();
  (*(*(v19 - 8) + 16))(&v28, a1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  v21 = v33;
  *(v20 + 112) = v32;
  *(v20 + 128) = v21;
  *(v20 + 144) = v34;
  v22 = v29;
  *(v20 + 48) = v28;
  *(v20 + 64) = v22;
  v23 = v31;
  *(v20 + 80) = v30;
  *(v20 + 96) = v23;
  sub_1A3F98058();
  sub_1A3F99568();
  sub_1A524B704();
  sub_1A5247DB4();
  sub_1A41EF1A0(&qword_1EB135080, sub_1A41EF13C);
  sub_1A41EF1A0(&qword_1EB1439B0, MEMORY[0x1E69C2760]);
  sub_1A524A944();
  (*(v26 + 8))(v13, v11);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1A41F37BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimelineEngineFrame(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  type metadata accessor for TimelineEngine();
  v16 = sub_1A41EE10C();
  v17 = *a1;

  sub_1A5241134();
  sub_1A3F46C44(v16, v17, v12, v15);
  sub_1A5240ED4();
  (*(*v17 + 296))(v18, 0);
  v19 = sub_1A3F468A4();
  (*(*v17 + 320))(COERCE_DOUBLE(*&v19), 0);
  return sub_1A41F4B24(v15, type metadata accessor for TimelineEngineFrame);
}

uint64_t sub_1A41F3998@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B544();
  result = sub_1A524B434();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1A41F39E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A41F44D8(0, &qword_1EB135108, sub_1A41F455C, sub_1A41F45A4, MEMORY[0x1E697F948]);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - v7;
  sub_1A41F455C(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = **(v2 + *(type metadata accessor for TimelineEngineCellDebugViewModifier() + 20));
  if ((*(v13 + 336))())
  {
    v24[1] = a2;
    v14 = sub_1A524BC74();
    v24[0] = v6;
    v16 = v15;
    sub_1A41F3DC8(&v26);
    v34 = v28;
    v35 = v29;
    v36 = v30;
    v32 = v26;
    v33 = v27;
    *&v37 = v31;
    *(&v37 + 1) = v14;
    v38 = v16;
    sub_1A41F45A4();
    (*(*(v17 - 8) + 16))(v12, a1, v17);
    v18 = &v12[*(v10 + 36)];
    v19 = v37;
    *(v18 + 4) = v36;
    *(v18 + 5) = v19;
    *(v18 + 12) = v38;
    v20 = v33;
    *v18 = v32;
    *(v18 + 1) = v20;
    v21 = v35;
    *(v18 + 2) = v34;
    *(v18 + 3) = v21;
    v39[0] = v26;
    v39[1] = v27;
    v39[3] = v29;
    v39[4] = v30;
    v39[2] = v28;
    v40 = v31;
    v41 = v14;
    v42 = v16;
    sub_1A41F4000(&v32, &v25, sub_1A41F4638);
    sub_1A41F4B24(v39, sub_1A41F4638);
    sub_1A41F4000(v12, v8, sub_1A41F455C);
    swift_storeEnumTagMultiPayload();
    sub_1A41F4A44();
    sub_1A41EF1A0(&qword_1EB135160, sub_1A41F45A4);
    sub_1A5249744();
    return sub_1A41F4B24(v12, sub_1A41F455C);
  }

  else
  {
    sub_1A41F45A4();
    (*(*(v23 - 8) + 16))(v8, a1, v23);
    swift_storeEnumTagMultiPayload();
    sub_1A41F4A44();
    sub_1A41EF1A0(&qword_1EB135160, sub_1A41F45A4);
    return sub_1A5249744();
  }
}

uint64_t sub_1A41F3DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E6980E30];
  v3 = MEMORY[0x1E69E6720];
  sub_1A41EE630(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v25 = sub_1A5249574();
  type metadata accessor for TimelineEngineCellDebugViewModifier();
  sub_1A3F471A0();
  v26 = sub_1A524CEE4();
  v27 = v7;
  sub_1A3D5F9DC();
  v8 = sub_1A524A464();
  v23 = v9;
  v24 = v8;
  v11 = v10;
  v13 = v12;
  sub_1A524A184();
  v14 = *MEMORY[0x1E6980E08];
  v15 = sub_1A524A154();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v6, v14, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17 = sub_1A524A1B4();
  sub_1A41F5124(v6, &unk_1EB1276B0, v2, v3);
  KeyPath = swift_getKeyPath();
  LOBYTE(v26) = 1;
  v28 = v11 & 1;
  v19 = sub_1A524B434();
  result = swift_getKeyPath();
  v21 = v24;
  *a1 = v25;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v22 = v23;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
  *(a1 + 40) = v11 & 1;
  *(a1 + 48) = v13;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v17;
  *(a1 + 72) = result;
  *(a1 + 80) = v19;
  return result;
}

uint64_t sub_1A41F4000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41F406C@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v22[1] = a3;
  v23 = a2;
  v22[0] = a1;
  v24 = a5;
  sub_1A3DD108C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v17 = sub_1A5248134();
  v19 = *(v17 - 8);
  result = v17 - 8;
  if (*(v19 + 64) == v9)
  {
    (*(v8 + 16))(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22[0], v7);
    v23(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 8))(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v20 = *(v10 + 16);
    v20(v16, v13, a4);
    v21 = *(v10 + 8);
    v21(v13, a4);
    v20(v24, v16, a4);
    return (v21)(v16, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A41F42D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A41EE630(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A41F43A0()
{
  if (!qword_1EB135100)
  {
    sub_1A41EF038();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135100);
    }
  }
}

uint64_t sub_1A41F4454@<X0>(uint64_t *a1@<X8>)
{
  (*(***(v1 + 48) + 168))();
  v3 = sub_1A524B544();
  result = sub_1A524B434();
  *a1 = v3;
  a1[1] = result;
  return result;
}

void sub_1A41F44D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A41F45A4()
{
  if (!qword_1EB135118)
  {
    type metadata accessor for TimelineEngineCellDebugViewModifier();
    sub_1A41EF1A0(&qword_1EB1350E0, type metadata accessor for TimelineEngineCellDebugViewModifier);
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135118);
    }
  }
}

void sub_1A41F4638()
{
  if (!qword_1EB135120)
  {
    sub_1A41F46B8(255, &qword_1EB135128, sub_1A41F473C);
    sub_1A41F483C();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135120);
    }
  }
}

void sub_1A41F46B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A405D430(255, &qword_1EB1277F0, &qword_1EB127560);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A41F473C()
{
  if (!qword_1EB135130)
  {
    sub_1A41F47E8(255, &qword_1EB135138, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E6981860]);
    sub_1A405D430(255, &qword_1EB127820, &qword_1EB1276A0);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135130);
    }
  }
}

void sub_1A41F47E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A41F483C()
{
  result = qword_1EB135140;
  if (!qword_1EB135140)
  {
    sub_1A41F46B8(255, &qword_1EB135128, sub_1A41F473C);
    sub_1A41F491C(&qword_1EB135148, sub_1A41F473C, sub_1A41F49C0);
    sub_1A405D6B4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135140);
  }

  return result;
}

uint64_t sub_1A41F491C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A405D6B4(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41F49C0()
{
  result = qword_1EB135150;
  if (!qword_1EB135150)
  {
    sub_1A41F47E8(255, &qword_1EB135138, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E6981860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135150);
  }

  return result;
}

unint64_t sub_1A41F4A44()
{
  result = qword_1EB135158;
  if (!qword_1EB135158)
  {
    sub_1A41F455C(255);
    sub_1A41EF1A0(&qword_1EB135160, sub_1A41F45A4);
    sub_1A41EF1A0(&qword_1EB135168, sub_1A41F4638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135158);
  }

  return result;
}

uint64_t sub_1A41F4B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A41F4BE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A41F4C60()
{
  result = type metadata accessor for TimelineEngineCell();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimelineEngineCellFrame(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A41F4D4C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41F4E04()
{
  result = qword_1EB135188;
  if (!qword_1EB135188)
  {
    sub_1A41F44D8(255, &qword_1EB134FA8, sub_1A41EE81C, sub_1A41EF370, MEMORY[0x1E697E830]);
    sub_1A41EF1A0(&qword_1EB135190, sub_1A41EE81C);
    sub_1A41EF1A0(&unk_1EB127C50, sub_1A41EF370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135188);
  }

  return result;
}

unint64_t sub_1A41F4F28()
{
  result = qword_1EB135198;
  if (!qword_1EB135198)
  {
    sub_1A41F44D8(255, &qword_1EB1351A0, sub_1A41F455C, sub_1A41F45A4, MEMORY[0x1E697F960]);
    sub_1A41F4A44();
    sub_1A41EF1A0(&qword_1EB135160, sub_1A41F45A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135198);
  }

  return result;
}

uint64_t objectdestroyTm_33()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 72);

  if (*(v0 + 120))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A41F50A4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A41EE630(0, a3, a4, MEMORY[0x1E6981F40]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A41F5124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A41EE630(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A41F5180(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A3E75E68(a1, a2, a3 & 1);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41F51BC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A3E04DF4(a1, a2, a3 & 1);
}

uint64_t sub_1A41F51F8(uint64_t a1, uint64_t a2)
{
  sub_1A41F46B8(0, &qword_1EB134FE0, sub_1A41EEA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41F5278(uint64_t a1)
{
  sub_1A41F46B8(0, &qword_1EB134FE0, sub_1A41EEA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A41F5314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41F537C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for TimelineEngineFrame(0) - 8);
  v10 = v2 + ((*(v9 + 80) + 152) & ~*(v9 + 80));

  return sub_1A41F12C0(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_1A41F5428()
{
  result = qword_1EB1351B0;
  if (!qword_1EB1351B0)
  {
    sub_1A41EE630(255, &qword_1EB1350B8, sub_1A41EF4E0, MEMORY[0x1E69E6720]);
    sub_1A41EF564();
    sub_1A41EF610();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1351B0);
  }

  return result;
}

uint64_t sub_1A41F5500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41F5568(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A41F55D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A41F5638(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A41EE180(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A41F569C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, uint64_t), uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1A41F769C(a1, a2, a3, a4, a5);

  return v10;
}

double sub_1A41F5728()
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  [v1 inlinePlayerPlaceholderKenBurnsScale];
  v3 = v2;

  v4 = [ObjCClassFromMetadata sharedInstance];
  [v4 inlinePlayerFirstSegmentPlaceholderDuration];

  v5 = [ObjCClassFromMetadata sharedInstance];
  [v5 inlinePlayerPlaceholderKenBurnsExtraDuration];

  return v3;
}

BOOL sub_1A41F5810(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1A41F584C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1A41F5890()
{
  v81 = *v0;
  sub_1A3C56534(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v67 = &v65 - v2;
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v75 = v3;
  v66 = *(v3 - 1);
  v4 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - v6;
  v8 = sub_1A524BEE4();
  v74 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1A524BF64();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1A524BFC4();
  v69 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v65 - v13;
  v14 = sub_1A52425F4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v65 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v65 - v26;
  if (v0[3])
  {
    v75 = v0[3];
    v67 = v8;
    v28 = v0[4];
    v29 = *(v81 + 216);
    v30 = v0;

    v29(v31);
    (*(v15 + 104))(v23, *MEMORY[0x1E69C1EE8], v14);
    sub_1A41F7B04(&qword_1EB129250, MEMORY[0x1E69C1F00]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    v32 = *(v15 + 8);
    v32(v23, v14);
    v32(v27, v14);
    if (aBlock[0] == v83)
    {
      v33 = v0[3];
      v34 = v0[4];
      v0[3] = 0;
      v0[4] = 0;
      v35 = sub_1A3C784D4(v33, v34);
      v81 = v28;
      v36 = v75(v35);
      v37 = *(v0 + 56);
      *(v0 + 56) = 1;
      if ((v37 & 1) == 0)
      {
        sub_1A41F5890(v36);
      }

      sub_1A3C52C70(0, &qword_1EB12B180);
      v66 = sub_1A524D474();
      v38 = v68;
      sub_1A524BFA4();
      sub_1A3C52C70(0, &qword_1EB126A10);
      v39 = [swift_getObjCClassFromMetadata() sharedInstance];
      [v39 inlinePlayerFirstSegmentPlaceholderDuration];

      sub_1A524C014();
      v69 = *(v69 + 8);
      (v69)(v38, v77);
      v40 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1A41F7CBC;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_121;
      v41 = _Block_copy(aBlock);

      v42 = v70;
      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A41F7B04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      sub_1A3C56534(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v43 = v72;
      v44 = v67;
      sub_1A524E224();
      v45 = v76;
      v46 = v66;
      MEMORY[0x1A5908790](v76, v42, v43, v41);
      sub_1A3C784D4(v75, v81);
      _Block_release(v41);

      (*(v74 + 8))(v43, v44);
      (*(v71 + 8))(v42, v73);
      (v69)(v45, v77);
    }

    else
    {
      sub_1A3C784D4(v75, v28);
    }

    v47 = MEMORY[0x1E69C1EE0];
  }

  else
  {
    v76 = v4;
    v65 = v7;
    v77 = v15;
    if (v0[7])
    {
      v47 = MEMORY[0x1E69C1EE0];
      v15 = v77;
      v30 = v0;
    }

    else
    {
      v30 = v0;
      v74 = *(v81 + 216);
      (v74)(v25);
      v48 = v77;
      (*(v77 + 104))(v23, *MEMORY[0x1E69C1EE8], v14);
      sub_1A41F7B04(&qword_1EB129250, MEMORY[0x1E69C1F00]);
      sub_1A524C9C4();
      sub_1A524C9C4();
      v49 = *(v48 + 8);
      v49(v23, v14);
      v50 = (v49)(v27, v14);
      if (aBlock[0] == v83)
      {
        aBlock[0] = v0[2];
        type metadata accessor for PhotosCollectionPreviewPlayer(0);

        sub_1A5245A64();
      }

      (v74)(v50);
      v51 = sub_1A52425C4();
      v49(v27, v14);
      if ((v51 & 1) == 0)
      {
        v52 = v30[5];
        sub_1A3C52C70(0, &qword_1EB126A10);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v54 = [ObjCClassFromMetadata sharedInstance];
        v55 = [v54 collectionPreviewTransition];

        v52(1, 0, (v55 == 1) | ((v55 != 1) << 8));
      }

      v47 = MEMORY[0x1E69C1EE8];
      v15 = v77;
    }
  }

  v56 = v30[2];
  v57 = v78;
  (*(*v30 + 216))(v25);
  v58 = *v47;
  v59 = v79;
  (*(v15 + 104))(v79, v58, v14);
  sub_1A41F7B04(&qword_1EB129260, MEMORY[0x1E69C1F00]);
  v60 = sub_1A524C534();
  v61 = (v60 & 1) == 0;
  if (v60)
  {
    v62 = v57;
  }

  else
  {
    v62 = v59;
  }

  if (v61)
  {
    v59 = v57;
  }

  (*(v15 + 8))(v62, v14);
  v63 = v80;
  (*(v15 + 32))(v80, v59, v14);
  return (*(*v56 + 256))(v63);
}

uint64_t sub_1A41F658C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v8[10] = *(v10 + 64);
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41F668C, 0, 0);
}

uint64_t sub_1A41F668C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v16 = v0[5];
  v18 = v0[7];
  v6 = v0[3];
  (*(v4 + 16))(v1, v0[4], v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[12] = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  v10 = (v9 + v8);
  *v10 = v16;
  v10[1] = v5;
  *(v9 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v11 = *(*v6 + 216);

  v17 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_1A41F6890;
  v13 = v0[2];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return v17(v13, sub_1A41F7D20, v9, v14);
}

uint64_t sub_1A41F6890()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A41F69BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v33 = sub_1A524BEE4();
  v36 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  v42 = sub_1A41F6E4C;
  v43 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1A3D59380;
  v41 = &block_descriptor_45_0;
  v17 = _Block_copy(&aBlock);
  [a1 performChanges_];
  _Block_release(v17);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v18 = sub_1A524D474();
  (*(v13 + 16))(v16, a2, v12);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v19, v16, v12);
  v22 = (v21 + v20);
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v42 = sub_1A41F7ED4;
  v43 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1A3C2E0D0;
  v41 = &block_descriptor_51_0;
  v24 = _Block_copy(&aBlock);

  sub_1A524BF14();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1A41F7B04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C56534(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v26 = v32;
  v25 = v33;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v10, v26, v24);
  _Block_release(v24);

  (*(v36 + 8))(v26, v25);
  (*(v34 + 8))(v10, v35);
}

uint64_t sub_1A41F6E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_desiredInlinePlayState;
  swift_beginAccess();
  v4 = sub_1A52425F4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A41F6EE4(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_1A52425F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_desiredInlinePlayState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1A41F7B04(&qword_1EB129258, MEMORY[0x1E69C1F00]);
  LOBYTE(v11) = sub_1A524C594();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_1A41F5890();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void (*sub_1A41F70F4(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1A52425F4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_desiredInlinePlayState;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1A41F724C;
}

void sub_1A41F724C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1A41F6EE4(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1A41F6EE4(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1A41F72F8()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_onPlaybackFinished);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3D607F0(*v1);
  return v2;
}

uint64_t sub_1A41F7354(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_onPlaybackFinished);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C784D4(v6, v7);
}

uint64_t sub_1A41F7414()
{

  sub_1A3C784D4(*(v0 + 24), *(v0 + 32));

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_desiredInlinePlayState;
  v2 = sub_1A52425F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_onPlaybackFinished), *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_onPlaybackFinished + 8));

  return swift_deallocClassInstance();
}

void (*sub_1A41F7524(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 232))();
  return sub_1A3E62A10;
}

void (*sub_1A41F75FC(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 256))();
  return sub_1A3E658B0;
}

uint64_t sub_1A41F769C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, uint64_t), uint64_t a5)
{
  v6 = v5;
  v28 = a2;
  v29 = a3;
  v10 = sub_1A52425F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 24) = 0;
  *(v6 + 56) = 0;
  *(v6 + 32) = 0;
  v14 = (v6 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_onPlaybackFinished);
  *v14 = 0;
  v14[1] = 0;
  *(v6 + 16) = a1;
  v30 = a4;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  v15 = *(*a1 + 224);

  if ((v15(v16) & 1) != 0 && (sub_1A3C52C70(0, &qword_1EB126A10), v17 = [swift_getObjCClassFromMetadata() sharedInstance], v18 = objc_msgSend(v17, sel_hideInlinePlayerOnFirstSegment), v17, v18))
  {
    v19 = *(v6 + 24);
    v20 = *(v6 + 32);
    v21 = v29;
    *(v6 + 24) = v28;
    *(v6 + 32) = v21;

    v22 = v19;
    v23 = v20;
  }

  else
  {
    (*(*a1 + 248))();
    v24 = sub_1A52425C4();
    (*(v11 + 8))(v13, v10);
    if (v24)
    {
      v30(0, 0, 256);
    }

    v22 = *(v6 + 24);
    v23 = *(v6 + 32);
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
  }

  sub_1A3C784D4(v22, v23);
  (*(v11 + 104))(v6 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_desiredInlinePlayState, *MEMORY[0x1E69C1EF0], v10);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *(*a1 + 280);

  v26(sub_1A41F80CC, v25);

  return v6;
}

uint64_t type metadata accessor for LemonadeInlineStoryPlayer()
{
  result = qword_1EB183200;
  if (!qword_1EB183200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A41F79C8()
{
  result = sub_1A52425F4();
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

uint64_t getEnumTagSinglePayload for LemonadeInlineStoryPlayer.KenBurnsEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LemonadeInlineStoryPlayer.KenBurnsEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1A41F7B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A41F7B4C(uint64_t a1)
{
  v3 = v2;
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v6 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 32);
  v10 = (v1 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1A3D60150;

  return sub_1A41F658C(a1, v14, v15, v9, v1 + v6, v11, v12, v13);
}

uint64_t sub_1A41F7CBC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 56);
    *(result + 56) = 0;
    if (v1 == 1)
    {
      sub_1A41F5890();
    }
  }

  return result;
}

uint64_t sub_1A41F7D20(void *a1)
{
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *(v1 + v7);
  v10 = *v8;
  v11 = v8[1];

  return sub_1A41F69BC(a1, v1 + v5, v10, v11, v9);
}

uint64_t objectdestroy_40Tm()
{
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A41F8034()
{
  v1 = *(v0 + 16);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 collectionPreviewTransition];

  return v1(0, 0, (v3 == 1) | ((v3 != 1) << 8));
}

uint64_t sub_1A41F80CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 240))(result);
    v3 = v2;

    if (v1)
    {
      v1(result);
      return sub_1A3C784D4(v1, v3);
    }
  }

  return result;
}

void sub_1A41F81AC()
{
  if (!qword_1EB129E78)
  {
    sub_1A3C6B678(255, &qword_1EB126620, sub_1A3DEFC9C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB129E78);
    }
  }
}

uint64_t sub_1A41F8248@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeWallpaperCell();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  v6 = MEMORY[0x1E697DCB8];
  sub_1A3C6B678(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = v4[6];
  *(a2 + v7) = swift_getKeyPath();
  sub_1A3C6B678(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v6);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v4[7]);
  sub_1A41F8178(0);
  sub_1A524B694();
  *v8 = v11;
  v8[1] = v12;
  v9 = a2 + v4[8];
  result = swift_getKeyPath();
  *v9 = result;
  v9[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for LemonadeWallpaperCell()
{
  result = qword_1EB187180;
  if (!qword_1EB187180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A41F83D8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneOrientation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A41F842C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for LemonadeWallpaperCell();
  v47 = *(v2 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5244084();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41F8850();
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = (*(**v1 + 120))(v9);
  sub_1A41F99E0();
  PXDisplayCollectionDetailedCountsMake(v13);
  v42 = v15;
  v43 = v14;
  sub_1A41F8C44(v1, &v50);
  v16 = v50;
  LOBYTE(v13) = v52;
  v17 = v51;
  sub_1A41F8F70();
  v50 = v16;
  v51 = v17;
  v52 = v13;
  v53 = v18;
  LOWORD(v54) = 0;
  sub_1A41F9DF4(&qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E69C2948], v6);
  sub_1A41F88D4();
  v20 = v19;
  v21 = sub_1A41F8A1C();
  sub_1A524A784();
  (*(v38 + 8))(v6, v39);
  j__swift_release(v16, v17);
  v54 = type metadata accessor for LemonadeWallpaperModel();
  v55 = sub_1A41FA69C(&qword_1EB125898, type metadata accessor for LemonadeWallpaperModel);
  v50 = v12;

  v48 = v20;
  v49 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v45;
  v23 = v40;
  sub_1A524A554();
  (*(v41 + 8))(v11, v23);
  __swift_destroy_boxed_opaque_existential_0(&v50);
  v24 = v44;
  sub_1A41FA00C(v1, v44);
  v25 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v26 = (v46 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_1A41FA070(v24, v27 + v25);
  v28 = (v27 + v26);
  v30 = v42;
  v29 = v43;
  *v28 = v43;
  v28[1] = v30;
  sub_1A41FA1E0();
  v32 = (v22 + *(v31 + 36));
  sub_1A41FA304();
  v34 = v33;
  swift_unknownObjectRetain();
  result = sub_1A524CC74();
  v36 = (v32 + *(v34 + 40));
  *v36 = v29;
  v36[1] = v30;
  *v32 = &unk_1A5325350;
  v32[1] = v27;
  return result;
}

void sub_1A41F8850()
{
  if (!qword_1EB127660)
  {
    sub_1A41F88D4();
    sub_1A41F8A1C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127660);
    }
  }
}

void sub_1A41F88D4()
{
  if (!qword_1EB1285E0)
  {
    sub_1A3C6B678(255, &qword_1EB127538, sub_1A41F8964, MEMORY[0x1E69815F8]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1285E0);
    }
  }
}

void sub_1A41F8964()
{
  if (!qword_1EB127D60)
  {
    sub_1A41F89C4();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127D60);
    }
  }
}

void sub_1A41F89C4()
{
  if (!qword_1EB128518)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128518);
    }
  }
}

unint64_t sub_1A41F8A1C()
{
  result = qword_1EB1285E8;
  if (!qword_1EB1285E8)
  {
    sub_1A41F88D4();
    sub_1A41F8A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1285E8);
  }

  return result;
}

unint64_t sub_1A41F8A9C()
{
  result = qword_1EB127540;
  if (!qword_1EB127540)
  {
    sub_1A3C6B678(255, &qword_1EB127538, sub_1A41F8964, MEMORY[0x1E69815F8]);
    sub_1A41F8B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127540);
  }

  return result;
}

unint64_t sub_1A41F8B44()
{
  result = qword_1EB127D68;
  if (!qword_1EB127D68)
  {
    sub_1A41F8964();
    sub_1A41F8BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D68);
  }

  return result;
}

unint64_t sub_1A41F8BC4()
{
  result = qword_1EB128520;
  if (!qword_1EB128520)
  {
    sub_1A41F89C4();
    sub_1A3D41ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128520);
  }

  return result;
}

void sub_1A41F8C44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5243454();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 + *(type metadata accessor for LemonadeWallpaperCell() + 28));
  v13 = v12[1];
  v30 = *v12;
  v31 = v13;
  sub_1A3C6B678(0, &unk_1EB1274C0, sub_1A41F8178, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v14 = v27;
  if (v27 && (v15 = v4, v16 = v5, v17 = v28, v18 = v29, v26 = v29, v19 = v14, v20 = v16, v21 = v15, sub_1A41FA6E4(v19, v17, v18), v18))
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E69C24B0], v8);
    v22 = v26;
    sub_1A524B534();
    (*(v20 + 104))(v7, *MEMORY[0x1E6981630], v21);
    v23 = sub_1A524B5C4();

    (*(v20 + 8))(v7, v21);
    v27 = v23;
    LOWORD(v28) = 1;
    sub_1A41F89C4();
    sub_1A41F8BC4();

    sub_1A5249744();
  }

  else
  {
    v27 = sub_1A43F253C();
    LOWORD(v28) = 256;
    sub_1A41F89C4();
    sub_1A41F8BC4();
    sub_1A5249744();
  }

  v24 = BYTE8(v30);
  v25 = BYTE9(v30);
  *a2 = v30;
  *(a2 + 8) = v24;
  *(a2 + 9) = v25;
}

void sub_1A41F8F70()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5242D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeWallpaperCell();
  sub_1A41F9DF4(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v8);
  v10 = (*(v6 + 88))(v8, v5);
  if (v10 == *MEMORY[0x1E69C2200])
  {
LABEL_2:
    v11 = MobileGestalt_get_current_device();
    if (v11)
    {
      v12 = v11;
      MobileGestalt_get_mainScreenWidth();

      v13 = MobileGestalt_get_current_device();
      if (v13)
      {
        v14 = v13;
        MobileGestalt_get_mainScreenHeight();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v10 != *MEMORY[0x1E69C21F8])
  {
    if (v10 != *MEMORY[0x1E69C21F0] && v10 != *MEMORY[0x1E69C21E8] && v10 != *MEMORY[0x1E69C2208] && v10 != *MEMORY[0x1E69C2210] && v10 != *MEMORY[0x1E69C21E0])
    {
      v26 = MobileGestalt_get_current_device();
      if (v26)
      {
        v27 = v26;
        MobileGestalt_get_mainScreenWidth();

        v28 = MobileGestalt_get_current_device();
        if (v28)
        {
          v29 = v28;
          MobileGestalt_get_mainScreenHeight();

          (*(v6 + 8))(v8, v5);
          return;
        }

        goto LABEL_37;
      }

      goto LABEL_34;
    }

    goto LABEL_2;
  }

  v15 = v0 + *(v9 + 32);
  v16 = *v15;
  if ((*(v15 + 8) & 1) == 0)
  {

    sub_1A524D254();
    v17 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v16, 0);
    (*(v2 + 8))(v4, v1);
    v16 = v30[1];
  }

  v18 = MobileGestalt_get_current_device();
  v19 = v18;
  if (v16 == 2)
  {
    if (!v18)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    MobileGestalt_get_mainScreenWidth();

    v20 = MobileGestalt_get_current_device();
    if (!v20)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_11:
    v21 = v20;
    MobileGestalt_get_mainScreenHeight();

    return;
  }

  if (!v18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  MobileGestalt_get_mainScreenWidth();

  v20 = MobileGestalt_get_current_device();
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_1A41F93D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  sub_1A524CC54();
  v3[30] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[31] = v5;
  v3[32] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A41F946C, v5, v4);
}

uint64_t sub_1A41F946C()
{
  v1 = *(v0 + 216);
  v2 = (v1 + *(type metadata accessor for LemonadeWallpaperCell() + 28));
  v3 = *v2;
  *(v0 + 264) = *v2;
  v4 = v2[1];
  *(v0 + 272) = v4;
  v5 = v2[2];
  *(v0 + 280) = v5;
  v6 = v2[3];
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v26 = v7;
  *(v0 + 16) = v7;
  *(v0 + 288) = v6;
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v24 = v7;
  *(v0 + 32) = v7;
  sub_1A3C6B678(0, &unk_1EB1274C0, sub_1A41F8178, MEMORY[0x1E6981790]);
  *(v0 + 296) = v8;
  sub_1A524B6A4();
  v9 = *(v0 + 112);
  if (v9 && (sub_1A41FA6E4(v9, *(v0 + 120), *(v0 + 128)), *(v0 + 80) = v26, *(v0 + 96) = v24, sub_1A524B6A4(), (v10 = *(v0 + 160)) != 0) && (v12 = *(v0 + 168), v11 = *(v0 + 176), v14 = *(v0 + 224), v13 = *(v0 + 232), v15 = swift_unknownObjectRetain(), sub_1A41FA6E4(v15, v12, v11), *(v0 + 184) = v10, *(v0 + 192) = v12, *(v0 + 200) = v14, *(v0 + 208) = v13, sub_1A41FA360(), LOBYTE(v11) = sub_1A524C594(), swift_unknownObjectRelease(), (v11 & 1) != 0))
  {

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = sub_1A3C5C9EC();
    v19 = *v18;
    *(v0 + 304) = *v18;
    v20 = *((*MEMORY[0x1E69E7D40] & *v19) + 0xD8);
    v19;
    v25 = (v20 + *v20);
    v21 = swift_task_alloc();
    *(v0 + 312) = v21;
    *v21 = v0;
    v21[1] = sub_1A41F9730;
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);

    return v25(v23, v22);
  }
}

uint64_t sub_1A41F9730(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = v4[38];
  if (v1)
  {

    v7 = v5[31];
    v8 = v5[32];
    v9 = sub_1A41F9934;
  }

  else
  {

    v5[40] = a1;
    v7 = v5[31];
    v8 = v5[32];
    v9 = sub_1A41F987C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1A41F987C()
{
  v1 = *(v0 + 320);

  if (sub_1A524CDC4())
  {
  }

  else
  {
    *(v0 + 136) = *(v0 + 224);
    v2 = *(v0 + 232);
    v3 = *(v0 + 280);
    *(v0 + 48) = *(v0 + 264);
    *(v0 + 64) = v3;
    *(v0 + 144) = v2;
    *(v0 + 152) = v1;
    swift_unknownObjectRetain();
    sub_1A524B6B4();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A41F9934()
{

  if ((sub_1A524CDC4() & 1) == 0)
  {
    *(v0 + 136) = *(v0 + 224);
    v1 = *(v0 + 232);
    v2 = *(v0 + 280);
    *(v0 + 48) = *(v0 + 264);
    *(v0 + 64) = v2;
    *(v0 + 144) = v1;
    *(v0 + 152) = 0;
    swift_unknownObjectRetain();
    sub_1A524B6B4();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A41F99E0()
{
  v1 = sub_1A5249234();
  v23 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69C2218];
  sub_1A3C6B678(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = sub_1A5242D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LemonadeWallpaperCell();
  v22 = v0;
  sub_1A41FA724(v0 + *(v21 + 24), v7, &qword_1EB128AA0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    v12 = v23;
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    v12 = v23;
    (*(v23 + 8))(v3, v1);
  }

  v14 = v3;
  v15 = (*(v9 + 88))(v11, v8);
  if (v15 == *MEMORY[0x1E69C2200])
  {
    return 1;
  }

  v17 = v15;
  if (v15 == *MEMORY[0x1E69C21F8])
  {
    v18 = v22 + *(v21 + 32);
    result = *v18;
    if ((*(v18 + 8) & 1) == 0)
    {
      v19 = *v18;

      sub_1A524D254();
      v20 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v19, 0);
      (*(v12 + 8))(v14, v1);
      return v24;
    }
  }

  else
  {
    result = 1;
    if (v17 != *MEMORY[0x1E69C21F0] && v17 != *MEMORY[0x1E69C21E8] && v17 != *MEMORY[0x1E69C2208] && v17 != *MEMORY[0x1E69C2210] && v17 != *MEMORY[0x1E69C21E0])
    {
      (*(v9 + 8))(v11, v8);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1A41F9DF4@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B678(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A41FA724(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1A41FA00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeWallpaperCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41FA070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeWallpaperCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41FA0D4()
{
  v2 = *(type metadata accessor for LemonadeWallpaperCell() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A41F93D0(v0 + v3, v5, v6);
}

void sub_1A41FA1E0()
{
  if (!qword_1EB123FE8)
  {
    sub_1A41FA248();
    sub_1A41FA304();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123FE8);
    }
  }
}

void sub_1A41FA248()
{
  if (!qword_1EB121FF8)
  {
    sub_1A41F8850();
    sub_1A41F88D4();
    sub_1A41F8A1C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FF8);
    }
  }
}

void sub_1A41FA304()
{
  if (!qword_1EB127FF8)
  {
    sub_1A41FA360();
    v0 = sub_1A52494D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127FF8);
    }
  }
}

unint64_t sub_1A41FA360()
{
  result = qword_1EB129E68;
  if (!qword_1EB129E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129E68);
  }

  return result;
}

void sub_1A41FA3F8()
{
  type metadata accessor for LemonadeWallpaperModel();
  if (v0 <= 0x3F)
  {
    sub_1A3C6B678(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3C6B678(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C6B678(319, &unk_1EB1274C0, sub_1A41F8178, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A3C6B678(319, &qword_1EB124698, type metadata accessor for PXUserInterfaceOrientation, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A41FA584()
{
  result = qword_1EB123FF0;
  if (!qword_1EB123FF0)
  {
    sub_1A41FA1E0();
    sub_1A41F8850();
    sub_1A41F88D4();
    sub_1A41F8A1C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A41FA69C(&qword_1EB128000, sub_1A41FA304);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123FF0);
  }

  return result;
}

uint64_t sub_1A41FA69C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A41FA6E4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A41FA724(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C6B678(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A41FA7E8()
{
  *(v0 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_dataSource) = 0;
  *(v0 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_isInSelectMode) = 0;
  *(v0 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_selectionSnapshot) = 0;
  v1 = (v0 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_viewModelObservation);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_updateFlags;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v3 = v0 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_postUpdateFlags;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v0 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_contentMediaVersion) = 0;
  type metadata accessor for ConcretePhotosDynamicHeaderInsets(0);
  sub_1A40224C4();
}

void *sub_1A41FAD04()
{
  v1 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1A41FAD5C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_1A41FADE4;
}

uint64_t sub_1A41FADEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

id sub_1A41FAEAC()
{
  v1 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_spec;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A41FAF00(void *a1)
{
  v3 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_spec;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  swift_beginAccess();
  sub_1A41FCE40();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

void (*sub_1A41FAFB4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_1A41FB03C;
}

uint64_t sub_1A41FB044@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41FB0FC()
{
  v1 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_isInSelectMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41FB140(char a1)
{
  v3 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_isInSelectMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_beginAccess();
  sub_1A41FCE40();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

void (*sub_1A41FB1D8(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_1A41FFBD8;
}

uint64_t sub_1A41FB260@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41FB2C4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x110);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41FB334()
{
  v1 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_selectionSnapshot;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41FB38C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  swift_beginAccess();
  sub_1A41FCE40();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

void (*sub_1A41FB434(uint64_t *a1))(void **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_1A41FFBD8;
}

void sub_1A41FB4BC(void **a1, char a2, uint64_t a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5[3] = a3;
    swift_beginAccess();
    sub_1A41FCE40();
    PXGLayout.invalidate<A>(updateFlags:with:)();
  }

  free(v5);
}

void *sub_1A41FB55C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1A41FB85C(void *a1, uint64_t a2, const char **a3, void (*a4)(char *))
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for PhotosDynamicHeaderLayout();
  v6 = *a3;
  v7 = v10.receiver;
  objc_msgSendSuper2(&v10, v6);
  v8 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_updateFlags;
  swift_beginAccess();
  a4(&v7[v8]);
  swift_endAccess();
  v9 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_postUpdateFlags;
  swift_beginAccess();
  a4(&v7[v9]);
  swift_endAccess();
}